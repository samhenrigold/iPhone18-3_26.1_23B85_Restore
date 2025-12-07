void sub_217FCA968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::IRValueStorageData<MIL::Fp8E4M3FN>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = *(a1 + 88);
  v2 = *(a1 + 72);

  return MIL::Blob::StorageReader::GetDataView<MIL::Fp8E4M3FN>(v2, v1);
}

uint64_t MIL::IRValueStorageData<MIL::Fp8E5M2>::~IRValueStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1D10;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E0960;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueStorageData<MIL::Fp8E5M2>::~IRValueStorageData(uint64_t a1)
{
  MIL::IRValueStorageData<MIL::Fp8E5M2>::~IRValueStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueStorageData<MIL::Fp8E5M2>::IRValueStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_2829E0960;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1D10;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v9;
  *(a1 + 96) = a5;
  Filename = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(v24, "path");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v24);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v11[5], &__p);
  v12 = *(Filename + 23);
  if (v12 >= 0)
  {
    v13 = *(Filename + 23);
  }

  else
  {
    v13 = *(Filename + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v13 != size)
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v16 = Filename;
  }

  else
  {
    v16 = *Filename;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = memcmp(v16, p_p, v13) == 0;
  if (v15 < 0)
  {
LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v23 = MEMORY[0x277D82750];
    goto LABEL_30;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v23 = MEMORY[0x277D82760];
LABEL_30:
    __cxa_throw(exception, v23, v22);
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  }

  return a1;
}

void sub_217FCAD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::IRValueStorageData<MIL::Fp8E5M2>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = *(a1 + 88);
  v2 = *(a1 + 72);

  return MIL::Blob::StorageReader::GetDataView<MIL::Fp8E5M2>(v2, v1);
}

uint64_t MIL::IRValueStorageData<MIL::Bf16>::~IRValueStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1D60;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E08C0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueStorageData<MIL::Bf16>::~IRValueStorageData(uint64_t a1)
{
  MIL::IRValueStorageData<MIL::Bf16>::~IRValueStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueStorageData<MIL::Bf16>::IRValueStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_2829E08C0;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1D60;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v9;
  *(a1 + 96) = a5;
  Filename = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(v24, "path");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v24);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v11[5], &__p);
  v12 = *(Filename + 23);
  if (v12 >= 0)
  {
    v13 = *(Filename + 23);
  }

  else
  {
    v13 = *(Filename + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v13 != size)
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v16 = Filename;
  }

  else
  {
    v16 = *Filename;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = memcmp(v16, p_p, v13) == 0;
  if (v15 < 0)
  {
LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v23 = MEMORY[0x277D82750];
    goto LABEL_30;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v23 = MEMORY[0x277D82760];
LABEL_30:
    __cxa_throw(exception, v23, v22);
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  }

  return a1;
}

void sub_217FCB180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::IRValueStorageData<MIL::Bf16>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = *(a1 + 88);
  v2 = *(a1 + 72);

  return MIL::Blob::StorageReader::GetDataView<MIL::Bf16>(v2, v1);
}

uint64_t MIL::IRValueStorageData<short>::~IRValueStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1DB0;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E0B40;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueStorageData<short>::~IRValueStorageData(uint64_t a1)
{
  MIL::IRValueStorageData<short>::~IRValueStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueStorageData<short>::IRValueStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_2829E0B40;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1DB0;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v9;
  *(a1 + 96) = a5;
  Filename = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(v24, "path");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v24);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v11[5], &__p);
  v12 = *(Filename + 23);
  if (v12 >= 0)
  {
    v13 = *(Filename + 23);
  }

  else
  {
    v13 = *(Filename + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v13 != size)
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v16 = Filename;
  }

  else
  {
    v16 = *Filename;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = memcmp(v16, p_p, v13) == 0;
  if (v15 < 0)
  {
LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v23 = MEMORY[0x277D82750];
    goto LABEL_30;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v23 = MEMORY[0x277D82760];
LABEL_30:
    __cxa_throw(exception, v23, v22);
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  }

  return a1;
}

void sub_217FCB58C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::IRValueStorageData<short>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = *(a1 + 88);
  v2 = *(a1 + 72);

  return MIL::Blob::StorageReader::GetDataView<short>(v2, v1);
}

uint64_t MIL::IRValueStorageData<MIL::UInt1>::~IRValueStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1E00;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E0C30;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueStorageData<MIL::UInt1>::~IRValueStorageData(uint64_t a1)
{
  MIL::IRValueStorageData<MIL::UInt1>::~IRValueStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueStorageData<MIL::UInt1>::IRValueStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_2829E0C30;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1E00;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v9;
  *(a1 + 96) = a5;
  Filename = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(v24, "path");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v24);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v11[5], &__p);
  v12 = *(Filename + 23);
  if (v12 >= 0)
  {
    v13 = *(Filename + 23);
  }

  else
  {
    v13 = *(Filename + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v13 != size)
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v16 = Filename;
  }

  else
  {
    v16 = *Filename;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = memcmp(v16, p_p, v13) == 0;
  if (v15 < 0)
  {
LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v23 = MEMORY[0x277D82750];
    goto LABEL_30;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v23 = MEMORY[0x277D82760];
LABEL_30:
    __cxa_throw(exception, v23, v22);
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  }

  return a1;
}

void sub_217FCB998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

void MIL::IRValueStorageData<MIL::UInt1>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = *(a1 + 88);
  v2 = *(a1 + 72);

  MIL::Blob::StorageReader::GetDataView<MIL::UInt1>(v2, v1);
}

uint64_t MIL::IRValueStorageData<MIL::UInt2>::~IRValueStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1E50;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E0C80;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueStorageData<MIL::UInt2>::~IRValueStorageData(uint64_t a1)
{
  MIL::IRValueStorageData<MIL::UInt2>::~IRValueStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueStorageData<MIL::UInt2>::IRValueStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_2829E0C80;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1E50;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v9;
  *(a1 + 96) = a5;
  Filename = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(v24, "path");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v24);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v11[5], &__p);
  v12 = *(Filename + 23);
  if (v12 >= 0)
  {
    v13 = *(Filename + 23);
  }

  else
  {
    v13 = *(Filename + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v13 != size)
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v16 = Filename;
  }

  else
  {
    v16 = *Filename;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = memcmp(v16, p_p, v13) == 0;
  if (v15 < 0)
  {
LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v23 = MEMORY[0x277D82750];
    goto LABEL_30;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v23 = MEMORY[0x277D82760];
LABEL_30:
    __cxa_throw(exception, v23, v22);
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  }

  return a1;
}

void sub_217FCBDA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

void MIL::IRValueStorageData<MIL::UInt2>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = *(a1 + 88);
  v2 = *(a1 + 72);

  MIL::Blob::StorageReader::GetDataView<MIL::UInt2>(v2, v1);
}

uint64_t MIL::IRValueStorageData<MIL::UInt4>::~IRValueStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1EA0;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E0D20;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueStorageData<MIL::UInt4>::~IRValueStorageData(uint64_t a1)
{
  MIL::IRValueStorageData<MIL::UInt4>::~IRValueStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueStorageData<MIL::UInt4>::IRValueStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_2829E0D20;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1EA0;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v9;
  *(a1 + 96) = a5;
  Filename = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(v24, "path");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v24);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v11[5], &__p);
  v12 = *(Filename + 23);
  if (v12 >= 0)
  {
    v13 = *(Filename + 23);
  }

  else
  {
    v13 = *(Filename + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v13 != size)
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v16 = Filename;
  }

  else
  {
    v16 = *Filename;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = memcmp(v16, p_p, v13) == 0;
  if (v15 < 0)
  {
LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v23 = MEMORY[0x277D82750];
    goto LABEL_30;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v23 = MEMORY[0x277D82760];
LABEL_30:
    __cxa_throw(exception, v23, v22);
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  }

  return a1;
}

void sub_217FCC1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

void MIL::IRValueStorageData<MIL::UInt4>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = *(a1 + 88);
  v2 = *(a1 + 72);

  MIL::Blob::StorageReader::GetDataView<MIL::UInt4>(v2, v1);
}

uint64_t MIL::IRValueStorageData<unsigned short>::~IRValueStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1EF0;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E0E10;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueStorageData<unsigned short>::~IRValueStorageData(uint64_t a1)
{
  MIL::IRValueStorageData<unsigned short>::~IRValueStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueStorageData<unsigned short>::IRValueStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_2829E0E10;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1EF0;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v9;
  *(a1 + 96) = a5;
  Filename = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(v24, "path");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v24);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v11[5], &__p);
  v12 = *(Filename + 23);
  if (v12 >= 0)
  {
    v13 = *(Filename + 23);
  }

  else
  {
    v13 = *(Filename + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v13 != size)
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v16 = Filename;
  }

  else
  {
    v16 = *Filename;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = memcmp(v16, p_p, v13) == 0;
  if (v15 < 0)
  {
LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v23 = MEMORY[0x277D82750];
    goto LABEL_30;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v23 = MEMORY[0x277D82760];
LABEL_30:
    __cxa_throw(exception, v23, v22);
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  }

  return a1;
}

void sub_217FCC5BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::IRValueStorageData<unsigned short>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = *(a1 + 88);
  v2 = *(a1 + 72);

  return MIL::Blob::StorageReader::GetDataView<unsigned short>(v2, v1);
}

uint64_t MIL::IRValueStorageData<int>::~IRValueStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1F40;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E0B90;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueStorageData<int>::~IRValueStorageData(uint64_t a1)
{
  MIL::IRValueStorageData<int>::~IRValueStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueStorageData<int>::IRValueStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_2829E0B90;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1F40;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v9;
  *(a1 + 96) = a5;
  Filename = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(v24, "path");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v24);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v11[5], &__p);
  v12 = *(Filename + 23);
  if (v12 >= 0)
  {
    v13 = *(Filename + 23);
  }

  else
  {
    v13 = *(Filename + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v13 != size)
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v16 = Filename;
  }

  else
  {
    v16 = *Filename;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = memcmp(v16, p_p, v13) == 0;
  if (v15 < 0)
  {
LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v23 = MEMORY[0x277D82750];
    goto LABEL_30;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v23 = MEMORY[0x277D82760];
LABEL_30:
    __cxa_throw(exception, v23, v22);
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  }

  return a1;
}

void sub_217FCC9C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::IRValueStorageData<int>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = *(a1 + 88);
  v2 = *(a1 + 72);

  return MIL::Blob::StorageReader::GetDataView<int>(v2, v1);
}

uint64_t MIL::IRValueStorageData<unsigned int>::~IRValueStorageData(uint64_t a1)
{
  *a1 = &unk_2829E1F90;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_2829E0E60;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueStorageData<unsigned int>::~IRValueStorageData(uint64_t a1)
{
  MIL::IRValueStorageData<unsigned int>::~IRValueStorageData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueStorageData<unsigned int>::IRValueStorageData(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  *a1 = &unk_2829E0E60;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 8, a3);
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1F90;
  *(a1 + 72) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 88) = v9;
  *(a1 + 96) = a5;
  Filename = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(v24, "path");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v24);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v11[5], &__p);
  v12 = *(Filename + 23);
  if (v12 >= 0)
  {
    v13 = *(Filename + 23);
  }

  else
  {
    v13 = *(Filename + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v13 != size)
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v12 >= 0)
  {
    v16 = Filename;
  }

  else
  {
    v16 = *Filename;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v18 = memcmp(v16, p_p, v13) == 0;
  if (v15 < 0)
  {
LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (!v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D825D8];
    std::logic_error::logic_error(exception, "Storage and properties have different filenames.");
    v23 = MEMORY[0x277D82750];
    goto LABEL_30;
  }

  if (*(a1 + 32) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = MEMORY[0x277D82600];
    std::runtime_error::runtime_error(exception, "Too many file properties provided.");
    v23 = MEMORY[0x277D82760];
LABEL_30:
    __cxa_throw(exception, v23, v22);
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = MIL::Blob::StorageReader::GetFilename(*(a1 + 72));
  }

  return a1;
}

void sub_217FCCDD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v22);
  v24 = *(v20 + 80);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *v20 = v21;
  if (*(v20 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v20 + 8);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::IRValueStorageData<unsigned int>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = *(a1 + 88);
  v2 = *(a1 + 72);

  return MIL::Blob::StorageReader::GetDataView<unsigned int>(v2, v1);
}

uint64_t MIL::IRValueConstExprOutputData<signed char>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E1FE0;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0AF0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<signed char>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<signed char>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<signed char>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E1FE0;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCD070(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(uint64_t a1)
{
  (*(**(a1 + 72) + 32))(&v4);
  v2 = v4;
  v4 = 0uLL;
  v3 = *(a1 + 128);
  *(a1 + 120) = v2;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (*(&v4 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
    }
  }
}

uint64_t MIL::IRValueConstExprOutputData<signed char>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<signed char>(v2);
}

void MIL::IRValueConstExprOutputData<signed char>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *a2 = *(a1 + 96);
  }
}

uint64_t MIL::IRValueConstExprOutputData<unsigned char>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E2030;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0DC0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<unsigned char>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<unsigned char>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<unsigned char>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E2030;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCD324(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<unsigned char>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<unsigned char>(v2);
}

void MIL::IRValueConstExprOutputData<unsigned char>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *a2 = *(a1 + 96);
  }
}

uint64_t MIL::IRValueConstExprOutputData<float>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E2080;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0A00;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<float>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<float>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<float>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E2080;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCD55C(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<float>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<float>(v2);
}

void MIL::IRValueConstExprOutputData<float>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *a2 = *(a1 + 96);
  }
}

uint64_t MIL::IRValueConstExprOutputData<double>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E20D0;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0A50;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<double>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<double>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<double>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E20D0;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCD794(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<double>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<double>(v2);
}

void MIL::IRValueConstExprOutputData<double>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *a2 = *(a1 + 96);
  }
}

uint64_t MIL::IRValueConstExprOutputData<MIL::Fp16>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E2120;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0910;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<MIL::Fp16>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<MIL::Fp16>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<MIL::Fp16>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E2120;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCD9CC(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<MIL::Fp16>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<MIL::Fp16>(v2);
}

void MIL::IRValueConstExprOutputData<MIL::Fp16>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *a2 = *(a1 + 96);
  }
}

uint64_t MIL::IRValueConstExprOutputData<MIL::Fp8E4M3FN>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E2170;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E09B0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<MIL::Fp8E4M3FN>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<MIL::Fp8E4M3FN>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<MIL::Fp8E4M3FN>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E2170;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCDC04(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<MIL::Fp8E4M3FN>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v2);
}

void MIL::IRValueConstExprOutputData<MIL::Fp8E4M3FN>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *a2 = *(a1 + 96);
  }
}

uint64_t MIL::IRValueConstExprOutputData<MIL::Fp8E5M2>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E21C0;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0960;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<MIL::Fp8E5M2>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<MIL::Fp8E5M2>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<MIL::Fp8E5M2>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E21C0;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCDE3C(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<MIL::Fp8E5M2>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v2);
}

void MIL::IRValueConstExprOutputData<MIL::Fp8E5M2>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *a2 = *(a1 + 96);
  }
}

uint64_t MIL::IRValueConstExprOutputData<MIL::Bf16>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E2210;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E08C0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<MIL::Bf16>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<MIL::Bf16>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<MIL::Bf16>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E2210;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCE074(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<MIL::Bf16>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<MIL::Bf16>(v2);
}

void MIL::IRValueConstExprOutputData<MIL::Bf16>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *a2 = *(a1 + 96);
  }
}

uint64_t MIL::IRValueConstExprOutputData<short>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E2260;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0B40;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<short>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<short>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<short>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E2260;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCE2AC(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<short>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<short>(v2);
}

void MIL::IRValueConstExprOutputData<short>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *a2 = *(a1 + 96);
  }
}

uint64_t MIL::IRValueConstExprOutputData<unsigned short>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E22B0;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0E10;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<unsigned short>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<unsigned short>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<unsigned short>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E22B0;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCE4E4(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<unsigned short>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<unsigned short>(v2);
}

void MIL::IRValueConstExprOutputData<unsigned short>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *a2 = *(a1 + 96);
  }
}

uint64_t MIL::IRValueConstExprOutputData<int>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E2300;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0B90;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<int>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<int>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<int>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E2300;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCE71C(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<int>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<int>(v2);
}

void MIL::IRValueConstExprOutputData<int>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *a2 = *(a1 + 96);
  }
}

uint64_t MIL::IRValueConstExprOutputData<unsigned int>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E2350;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0E60;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<unsigned int>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<unsigned int>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<unsigned int>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E2350;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCE954(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<unsigned int>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<unsigned int>(v2);
}

void MIL::IRValueConstExprOutputData<unsigned int>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *a2 = *(a1 + 96);
  }
}

uint64_t MIL::IRValueConstExprOutputData<long long>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E23A0;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0BE0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<long long>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<long long>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<long long>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E23A0;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCEB8C(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<long long>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<long long>(v2);
}

void MIL::IRValueConstExprOutputData<long long>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *a2 = *(a1 + 96);
  }
}

uint64_t MIL::IRValueConstExprOutputData<unsigned long long>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E23F0;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0EB0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<unsigned long long>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<unsigned long long>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<unsigned long long>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E23F0;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCEDC4(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<unsigned long long>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<unsigned long long>(v2);
}

void MIL::IRValueConstExprOutputData<unsigned long long>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *a2 = *(a1 + 96);
  }
}

uint64_t MIL::IRValueConstExprOutputData<std::string>::~IRValueConstExprOutputData(uint64_t a1)
{
  *a1 = &unk_2829E2440;
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_2829E0870;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void MIL::IRValueConstExprOutputData<std::string>::~IRValueConstExprOutputData(uint64_t a1)
{
  MIL::IRValueConstExprOutputData<std::string>::~IRValueConstExprOutputData(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::IRValueConstExprOutputData<std::string>::IRValueConstExprOutputData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *a1 = &unk_2829E2440;
  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 88) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v6 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v6;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_217FCEFFC(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = v3;
  if (*(v1 + 48) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRValueConstExprOutputData<std::string>::GetViewImpl(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    MIL::IRValueConstExprOutputData<signed char>::EvaluateConstExpr(a1);
    v2 = *(a1 + 120);
  }

  return MIL::IRTensorValue::GetDataView<std::string>(v2);
}

void MIL::IRValueConstExprOutputData<std::string>::GetConstExprOutputName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *a2 = *(a1 + 96);
  }
}

void MIL::IRValueStorageData<unsigned char>::GetViewImpl(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This program was parsed specifying ignoreWeightFile, cannot fetch the data value.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  DataType = MIL::Blob::StorageReader::GetDataType(*(a1 + 72), *(a1 + 88));
  v3 = *(a1 + 72);
  v4 = *(a1 + 88);
  if (DataType > 10)
  {
    switch(DataType)
    {
      case 11:
        MIL::Blob::StorageReader::GetDataView<MIL::UInt4>(v3, v4);
        return;
      case 12:
        MIL::Blob::StorageReader::GetDataView<MIL::UInt3>(v3, v4);
        return;
      case 13:
        MIL::Blob::StorageReader::GetDataView<MIL::UInt6>(v3, v4);
        return;
    }
  }

  else
  {
    switch(DataType)
    {
      case 8:
        MIL::Blob::StorageReader::GetDataView<MIL::Int4>(v3, v4);
        return;
      case 9:
        MIL::Blob::StorageReader::GetDataView<MIL::UInt1>(v3, v4);
        return;
      case 10:
        MIL::Blob::StorageReader::GetDataView<MIL::UInt2>(v3, v4);
        return;
    }
  }

  MIL::Blob::StorageReader::GetDataView<unsigned char>(v3, v4);
}

uint64_t MIL::IRDimension::AsConstant(MIL::IRDimension *this)
{
  result = (*(*this + 16))(this);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

uint64_t MIL::IRDimension::AsUnknown(MIL::IRDimension *this)
{
  result = (*(*this + 24))(this);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

void sub_217FCF400(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRUnknownDimension::IRUnknownDimension(void *this)
{
  *this = &unk_2829E2D58;
  return this;
}

{
  *this = &unk_2829E2D58;
  return this;
}

void sub_217FCF658(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRProperty::IRProperty(void *this)
{
  *this = &unk_2829E2D98;
  return this;
}

{
  *this = &unk_2829E2D98;
  return this;
}

void *MIL::IRProperty::AsConstant(MIL::IRProperty *this)
{
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

void *MIL::IRProperty::TryAsConstant(void *this)
{
  if (this)
  {
  }

  return this;
}

void *MIL::IRProperty::AsUnknown(MIL::IRProperty *this)
{
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

void *MIL::IRProperty::TryAsUnknown(void *this)
{
  if (this)
  {
  }

  return this;
}

void MIL::IRProperty::ToString(MIL::IRProperty *this)
{
  if (this)
  {
    if (v2)
    {

      MIL::IRConstantProperty::ToString(v2);
    }

    if (v3)
    {

      MIL::IRUnknownProperty::ToString(v3);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Property type is not supported.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_217FCFB20(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_217FCFC54(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRConstantPropertyImpl::GetScalarDataType(MIL::IRConstantPropertyImpl *this)
{
  v1 = *(this + 2);
  if (v1 >= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Found no property storage for this property.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return dword_218585310[v1];
}

uint64_t MIL::IRConstantPropertyImpl::GetValue<long long>(_DWORD *a1)
{
  if (!a1 || a1[2])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Requested datatype int64_t is unexpected here.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  return *a1;
}

uint64_t MIL::IRConstantPropertyImpl::GetValue<unsigned char>(_DWORD *a1)
{
  if (!a1 || a1[2] != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Requested datatype uint8_t is unexpected here.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  return *a1;
}

uint64_t MIL::IRConstantPropertyImpl::GetValue<unsigned long long>(_DWORD *a1)
{
  if (!a1 || a1[2] != 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Requested datatype uint64_t is unexpected here.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  return *a1;
}

void *MIL::IRConstantProperty::IRConstantProperty(void *this)
{
  *this = &unk_2829E2DC8;
  this[1] = 0;
  return this;
}

{
  *this = &unk_2829E2DC8;
  this[1] = 0;
  return this;
}

void MIL::IRConstantProperty::~IRConstantProperty(MIL::IRConstantPropertyImpl **this)
{
  *this = &unk_2829E2DC8;
  std::unique_ptr<MIL::IRConstantPropertyImpl>::~unique_ptr[abi:ne200100](this + 1);
}

{
  *this = &unk_2829E2DC8;
  std::unique_ptr<MIL::IRConstantPropertyImpl>::~unique_ptr[abi:ne200100](this + 1);
}

{
  *this = &unk_2829E2DC8;
  std::unique_ptr<MIL::IRConstantPropertyImpl>::~unique_ptr[abi:ne200100](this + 1);

  JUMPOUT(0x21CEAFEA0);
}

void *MIL::IRConstantProperty::IRConstantProperty(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829E2DC8;
  result[1] = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829E2DC8;
  result[1] = v2;
  return result;
}

void MIL::IRConstantProperty::Make<long long>()
{
  operator new();
}

{
    ;
  }
}

void sub_217FD00DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<MIL::IRConstantPropertyImpl>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

MIL::IRConstantPropertyImpl **std::unique_ptr<MIL::IRConstantPropertyImpl>::~unique_ptr[abi:ne200100](MIL::IRConstantPropertyImpl **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::IRConstantPropertyImpl::~IRConstantPropertyImpl(v2);
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void MIL::IRConstantProperty::Make<unsigned char>()
{
  operator new();
}

{
    ;
  }
}

void sub_217FD0224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<MIL::IRConstantPropertyImpl>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void MIL::IRConstantProperty::Make<unsigned long long>()
{
  operator new();
}

{
    ;
  }
}

void sub_217FD031C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<MIL::IRConstantPropertyImpl>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *MIL::IRUnknownProperty::IRUnknownProperty(void *this)
{
  *this = &unk_2829E2DE8;
  this[1] = 0;
  return this;
}

{
  *this = &unk_2829E2DE8;
  this[1] = 0;
  return this;
}

void MIL::IRUnknownProperty::~IRUnknownProperty(MIL::IRUnknownProperty *this)
{
  v2 = *(this + 1);
  *this = &unk_2829E2DE8;
  *(this + 1) = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0](v2, 0x1000C4077774924);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_2829E2DE8;
  *(this + 1) = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0](v2, 0x1000C4077774924);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_2829E2DE8;
  *(this + 1) = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0](v2, 0x1000C4077774924);
  }

  JUMPOUT(0x21CEAFEA0);
}

void *MIL::IRUnknownProperty::IRUnknownProperty(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829E2DE8;
  result[1] = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829E2DE8;
  result[1] = v2;
  return result;
}

uint64_t MIL::IRValueType::AsTensorType(MIL::IRValueType *this)
{
  result = (*(*this + 24))(this);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

uint64_t MIL::IRValueType::AsListType(MIL::IRValueType *this)
{
  result = (*(*this + 32))(this);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

uint64_t MIL::IRValueType::AsTupleType(MIL::IRValueType *this)
{
  result = (*(*this + 40))(this);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

uint64_t MIL::IRValueType::AsDictionaryType(MIL::IRValueType *this)
{
  result = (*(*this + 48))(this);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

void *MIL::IRValueType::TryCastAsMemoryLayoutType(void *this)
{
  if (this)
  {
  }

  return this;
}

void *MIL::IRValueType::AsMemoryLayoutType(MIL::IRValueType *this)
{
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

void *MIL::IRValueType::TryCastAsStateType(void *this)
{
  if (this)
  {
  }

  return this;
}

void *MIL::IRValueType::AsStateType(MIL::IRValueType *this)
{
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

void sub_217FD0A80(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_217FD0B74(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2 + 32);
  v4 = *(v2 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  MEMORY[0x21CEAFEA0](v2, v1);
  _Unwind_Resume(a1);
}

void MIL::IRTensorValueType::MakeWithShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v3, 0, sizeof(v3));
  v4 = 1065353216;
  MIL::IRTensorValueType::MakeWithShape(a1, a2, a3, v3);
}

void sub_217FD0CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::Make(MIL::IRConstantDimension *a1, uint64_t a2, MIL::MILContext ***a3)
{
  __p = 0;
  v18 = 0;
  v19 = 0;
  std::vector<std::string const*>::reserve(&__p, a3[1] - *a3);
  v6 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    do
    {
      v8 = MIL::IRConstantDimension::Make(a1, *v6);
      v9 = v18;
      if (v18 >= v19)
      {
        v11 = (v18 - __p) >> 3;
        if ((v11 + 1) >> 61)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v12 = (v19 - __p) >> 2;
        if (v12 <= v11 + 1)
        {
          v12 = v11 + 1;
        }

        if (v19 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(&__p, v13);
        }

        v14 = (8 * v11);
        *v14 = v8;
        v10 = 8 * v11 + 8;
        v15 = v14 - (v18 - __p);
        memcpy(v15, __p, v18 - __p);
        v16 = __p;
        __p = v15;
        v18 = v10;
        v19 = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v18 = v8;
        v10 = (v9 + 8);
      }

      v18 = v10;
      ++v6;
    }

    while (v6 != v7);
  }

  MIL::IRTensorValueType::MakeWithShape(a1, a2, &__p);
}

void sub_217FD0E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_217FD0E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<MIL::Bf16>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<MIL::Bf16>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

void MIL::IRTensorValueType::MakeBFloat16Value(uint64_t a1, float **a2)
{
  v4 = std::vector<MIL::Bf16>::vector[abi:ne200100](&__p, a2[1] - *a2);
  v6 = *a2;
  v5 = a2[1];
  if (v6 != v5)
  {
    v7 = __p;
    do
    {
      v4 = MIL::Bf16::FromFloat(v4, *v6);
      *v7++ = v4;
      ++v6;
    }

    while (v6 != v5);
  }

  MIL::IRTensorValueType::MakeBFloat16Value();
}

void sub_217FD1014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeFloat8E5M2Value(uint64_t a1, float **a2)
{
  v3 = std::vector<MIL::Fp8E5M2>::vector[abi:ne200100](&__p, a2[1] - *a2);
  v5 = *a2;
  v4 = a2[1];
  if (v5 != v4)
  {
    v6 = __p;
    do
    {
      v3 = MIL::Fp8E5M2::FromFloat(v3, *v5);
      *v6++ = v3;
      ++v5;
    }

    while (v5 != v4);
  }

  MIL::IRTensorValueType::MakeFloat8E5M2Value();
}

void sub_217FD10D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<MIL::Fp8E5M2>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<MIL::Fp8E5M2>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

void MIL::IRTensorValueType::MakeFloat8E4M3FNValue(uint64_t a1, float **a2)
{
  v3 = std::vector<MIL::Fp8E4M3FN>::vector[abi:ne200100](&__p, a2[1] - *a2);
  v5 = *a2;
  v4 = a2[1];
  if (v5 != v4)
  {
    v6 = __p;
    do
    {
      v3 = MIL::Fp8E4M3FN::FromFloat(v3, *v5);
      *v6++ = v3;
      ++v5;
    }

    while (v5 != v4);
  }

  MIL::IRTensorValueType::MakeFloat8E4M3FNValue();
}

void sub_217FD1268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<MIL::Fp8E4M3FN>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<MIL::Fp16>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<MIL::Fp16>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

void MIL::IRTensorValueType::MakeFloat16Value(uint64_t a1, float **a2)
{
  v4 = std::vector<MIL::Fp16>::vector[abi:ne200100](&__p, a2[1] - *a2);
  v6 = *a2;
  v5 = a2[1];
  if (v6 != v5)
  {
    v7 = __p;
    do
    {
      v4 = MIL::Fp16::FromFloat(v4, *v6);
      *v7++ = v4;
      ++v6;
    }

    while (v6 != v5);
  }

  MIL::IRTensorValueType::MakeFloat16Value();
}

void sub_217FD14DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<float>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<float>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<double>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<double>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<BOOL>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<BOOL>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

void MIL::IRTensorValueType::MakeBoolValue(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>>(__p, v4, 0, v4 + 8 * (v3 >> 6), v3 & 0x3F, v3);
  operator new();
}

void sub_217FD1834(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  MEMORY[0x21CEAFEA0](v11, 0xE1C40243CB742, a3, a4, a5, a6, a7, a8);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<MIL::Int4>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<MIL::Int4>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<MIL::UInt6>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<MIL::UInt6>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<MIL::UInt4>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<MIL::UInt4>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<MIL::UInt3>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<MIL::UInt3>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<MIL::UInt2>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<MIL::UInt2>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<MIL::UInt1>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<MIL::UInt1>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<unsigned char>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<unsigned char>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<unsigned short>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<unsigned short>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<unsigned int>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<unsigned int>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<unsigned long long>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<unsigned long long>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<signed char>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<signed char>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<short>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<short>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<int>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<int>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<long long>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<long long>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

uint64_t *std::unique_ptr<MIL::IRTypedTensorValue<std::string>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MIL::IRTypedTensorValue<std::string>::~IRTypedTensorValue(v2);
    MEMORY[0x21CEAFEA0](v3, 0xE1C40243CB742);
  }

  return a1;
}

void MIL::IRTensorValueType::MakeInt4ValueWithUnownedMemory(uint64_t a1)
{
  if ((*(*a1 + 88))(a1) == 13)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::IRTensorValueType::MakeUInt6ValueWithUnownedMemory(uint64_t a1)
{
  if ((*(*a1 + 88))(a1) == 23)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::IRTensorValueType::MakeUInt4ValueWithUnownedMemory(uint64_t a1)
{
  if ((*(*a1 + 88))(a1) == 20)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::IRTensorValueType::MakeUInt3ValueWithUnownedMemory(uint64_t a1)
{
  if ((*(*a1 + 88))(a1) == 22)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::IRTensorValueType::MakeUInt2ValueWithUnownedMemory(uint64_t a1)
{
  if ((*(*a1 + 88))(a1) == 19)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::IRTensorValueType::MakeUInt1ValueWithUnownedMemory(uint64_t a1)
{
  if ((*(*a1 + 88))(a1) == 21)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot initialize tensor value from value with wrong type.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::IRTensorValueType::MakeValueFromFileProperties(std::string::size_type a1, const void *a2, uint64_t *a3, char a4)
{
  v101 = a4;
  std::string::basic_string[abi:ne200100]<0>(&v104, "type");
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a3, &v104);
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "File type property missing");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  MIL::IRValue::GetScalar<std::string>(v8[5], &v100);
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v100.__r_.__value_.__l.__size_ == 14 && *v100.__r_.__value_.__l.__data_ == 0x4C4259434147454CLL && *(v100.__r_.__value_.__r.__words[0] + 6) == 0x454C4946424F4C42)
    {
LABEL_12:
      switch((*(*a1 + 88))(a1))
      {
        case 3u:
          MIL::IRDataTypeToString(3, &v104);
          v84 = __cxa_allocate_exception(0x10uLL);
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v104.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v104.__r_.__value_.__l.__size_;
          }

          p_p = &__p;
          std::string::basic_string[abi:ne200100](&__p, size + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if (size)
          {
            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v87 = &v104;
            }

            else
            {
              v87 = v104.__r_.__value_.__r.__words[0];
            }

            memmove(p_p, v87, size);
          }

          strcpy(p_p + size, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v84, &__p);
          __cxa_throw(v84, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 4u:
          std::string::basic_string[abi:ne200100]<0>(&__p, "path");
          v10 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a3, &__p);
          if (v10)
          {
            MIL::IRValue::GetScalar<std::string>(v10[5], &v104);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v11)
            {
              MIL::MILContextImpl::GetOrCreateLegacyStorageReader(v11, &v104, &v102);
              operator new();
            }

            __cxa_bad_cast();
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        case 5u:
          std::string::basic_string[abi:ne200100]<0>(&__p, "path");
          v15 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a3, &__p);
          if (v15)
          {
            MIL::IRValue::GetScalar<std::string>(v15[5], &v104);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v16)
            {
              MIL::MILContextImpl::GetOrCreateLegacyStorageReader(v16, &v104, &v102);
              operator new();
            }

            __cxa_bad_cast();
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        case 6u:
          MIL::IRDataTypeToString(6, &v104);
          v96 = __cxa_allocate_exception(0x10uLL);
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v97 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v97 = v104.__r_.__value_.__l.__size_;
          }

          v98 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v97 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v98 = __p.__r_.__value_.__r.__words[0];
          }

          if (v97)
          {
            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v99 = &v104;
            }

            else
            {
              v99 = v104.__r_.__value_.__r.__words[0];
            }

            memmove(v98, v99, v97);
          }

          strcpy(v98 + v97, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v96, &__p);
          __cxa_throw(v96, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 7u:
          MIL::IRDataTypeToString(7, &v104);
          v92 = __cxa_allocate_exception(0x10uLL);
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v93 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v93 = v104.__r_.__value_.__l.__size_;
          }

          v94 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v93 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v94 = __p.__r_.__value_.__r.__words[0];
          }

          if (v93)
          {
            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v95 = &v104;
            }

            else
            {
              v95 = v104.__r_.__value_.__r.__words[0];
            }

            memmove(v94, v95, v93);
          }

          strcpy(v94 + v93, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v92, &__p);
          __cxa_throw(v92, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 8u:
          __break(1u);
          break;
        case 9u:
          MIL::IRDataTypeToString(9, &v104);
          v80 = __cxa_allocate_exception(0x10uLL);
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v81 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v81 = v104.__r_.__value_.__l.__size_;
          }

          v82 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v81 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v82 = __p.__r_.__value_.__r.__words[0];
          }

          if (v81)
          {
            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v83 = &v104;
            }

            else
            {
              v83 = v104.__r_.__value_.__r.__words[0];
            }

            memmove(v82, v83, v81);
          }

          strcpy(v82 + v81, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v80, &__p);
          __cxa_throw(v80, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0xAu:
          MIL::IRDataTypeToString(10, &v104);
          v76 = __cxa_allocate_exception(0x10uLL);
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v77 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v77 = v104.__r_.__value_.__l.__size_;
          }

          v78 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v77 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v78 = __p.__r_.__value_.__r.__words[0];
          }

          if (v77)
          {
            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v79 = &v104;
            }

            else
            {
              v79 = v104.__r_.__value_.__r.__words[0];
            }

            memmove(v78, v79, v77);
          }

          strcpy(v78 + v77, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v76, &__p);
          __cxa_throw(v76, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0xBu:
          MIL::IRDataTypeToString(11, &v104);
          v72 = __cxa_allocate_exception(0x10uLL);
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v73 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v73 = v104.__r_.__value_.__l.__size_;
          }

          v74 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v73 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v74 = __p.__r_.__value_.__r.__words[0];
          }

          if (v73)
          {
            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v75 = &v104;
            }

            else
            {
              v75 = v104.__r_.__value_.__r.__words[0];
            }

            memmove(v74, v75, v73);
          }

          strcpy(v74 + v73, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v72, &__p);
          __cxa_throw(v72, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0xCu:
          MIL::IRDataTypeToString(12, &v104);
          v68 = __cxa_allocate_exception(0x10uLL);
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v69 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v69 = v104.__r_.__value_.__l.__size_;
          }

          v70 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v69 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v70 = __p.__r_.__value_.__r.__words[0];
          }

          if (v69)
          {
            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v71 = &v104;
            }

            else
            {
              v71 = v104.__r_.__value_.__r.__words[0];
            }

            memmove(v70, v71, v69);
          }

          strcpy(v70 + v69, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v68, &__p);
          __cxa_throw(v68, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0xDu:
          MIL::IRDataTypeToString(13, &v104);
          v64 = __cxa_allocate_exception(0x10uLL);
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v65 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v65 = v104.__r_.__value_.__l.__size_;
          }

          v66 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v65 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v66 = __p.__r_.__value_.__r.__words[0];
          }

          if (v65)
          {
            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v67 = &v104;
            }

            else
            {
              v67 = v104.__r_.__value_.__r.__words[0];
            }

            memmove(v66, v67, v65);
          }

          strcpy(v66 + v65, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v64, &__p);
          __cxa_throw(v64, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0xEu:
          MIL::IRDataTypeToString(14, &v104);
          v60 = __cxa_allocate_exception(0x10uLL);
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v61 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v61 = v104.__r_.__value_.__l.__size_;
          }

          v62 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v61 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v62 = __p.__r_.__value_.__r.__words[0];
          }

          if (v61)
          {
            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v63 = &v104;
            }

            else
            {
              v63 = v104.__r_.__value_.__r.__words[0];
            }

            memmove(v62, v63, v61);
          }

          strcpy(v62 + v61, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v60, &__p);
          __cxa_throw(v60, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0xFu:
          MIL::IRDataTypeToString(15, &v104);
          v56 = __cxa_allocate_exception(0x10uLL);
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v57 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v57 = v104.__r_.__value_.__l.__size_;
          }

          v58 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v57 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v58 = __p.__r_.__value_.__r.__words[0];
          }

          if (v57)
          {
            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v59 = &v104;
            }

            else
            {
              v59 = v104.__r_.__value_.__r.__words[0];
            }

            memmove(v58, v59, v57);
          }

          strcpy(v58 + v57, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v56, &__p);
          __cxa_throw(v56, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0x10u:
          MIL::IRDataTypeToString(16, &v104);
          v52 = __cxa_allocate_exception(0x10uLL);
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v53 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v53 = v104.__r_.__value_.__l.__size_;
          }

          v54 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v53 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v54 = __p.__r_.__value_.__r.__words[0];
          }

          if (v53)
          {
            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v55 = &v104;
            }

            else
            {
              v55 = v104.__r_.__value_.__r.__words[0];
            }

            memmove(v54, v55, v53);
          }

          strcpy(v54 + v53, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v52, &__p);
          __cxa_throw(v52, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0x11u:
          MIL::IRDataTypeToString(17, &v104);
          v48 = __cxa_allocate_exception(0x10uLL);
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v49 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v49 = v104.__r_.__value_.__l.__size_;
          }

          v50 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v49 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v50 = __p.__r_.__value_.__r.__words[0];
          }

          if (v49)
          {
            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v51 = &v104;
            }

            else
            {
              v51 = v104.__r_.__value_.__r.__words[0];
            }

            memmove(v50, v51, v49);
          }

          strcpy(v50 + v49, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v48, &__p);
          __cxa_throw(v48, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0x12u:
          v47 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v47, "cannot dispatch on type");
          __cxa_throw(v47, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0x13u:
          MIL::IRDataTypeToString(19, &v104);
          v43 = __cxa_allocate_exception(0x10uLL);
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v44 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v44 = v104.__r_.__value_.__l.__size_;
          }

          v45 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v44 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v45 = __p.__r_.__value_.__r.__words[0];
          }

          if (v44)
          {
            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v46 = &v104;
            }

            else
            {
              v46 = v104.__r_.__value_.__r.__words[0];
            }

            memmove(v45, v46, v44);
          }

          strcpy(v45 + v44, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v43, &__p);
          __cxa_throw(v43, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0x14u:
          MIL::IRDataTypeToString(20, &v104);
          v39 = __cxa_allocate_exception(0x10uLL);
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v40 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v40 = v104.__r_.__value_.__l.__size_;
          }

          v41 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v40 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v41 = __p.__r_.__value_.__r.__words[0];
          }

          if (v40)
          {
            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v42 = &v104;
            }

            else
            {
              v42 = v104.__r_.__value_.__r.__words[0];
            }

            memmove(v41, v42, v40);
          }

          strcpy(v41 + v40, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v39, &__p);
          __cxa_throw(v39, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0x15u:
          MIL::IRDataTypeToString(21, &v104);
          v35 = __cxa_allocate_exception(0x10uLL);
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v36 = v104.__r_.__value_.__l.__size_;
          }

          v37 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v36 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v37 = __p.__r_.__value_.__r.__words[0];
          }

          if (v36)
          {
            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &v104;
            }

            else
            {
              v38 = v104.__r_.__value_.__r.__words[0];
            }

            memmove(v37, v38, v36);
          }

          strcpy(v37 + v36, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v35, &__p);
          __cxa_throw(v35, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0x16u:
          MIL::IRDataTypeToString(22, &v104);
          v31 = __cxa_allocate_exception(0x10uLL);
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v32 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v32 = v104.__r_.__value_.__l.__size_;
          }

          v33 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v32 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v33 = __p.__r_.__value_.__r.__words[0];
          }

          if (v32)
          {
            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v34 = &v104;
            }

            else
            {
              v34 = v104.__r_.__value_.__r.__words[0];
            }

            memmove(v33, v34, v32);
          }

          strcpy(v33 + v32, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v31, &__p);
          __cxa_throw(v31, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0x17u:
          MIL::IRDataTypeToString(23, &v104);
          v27 = __cxa_allocate_exception(0x10uLL);
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v28 = v104.__r_.__value_.__l.__size_;
          }

          v29 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v28 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v29 = __p.__r_.__value_.__r.__words[0];
          }

          if (v28)
          {
            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v30 = &v104;
            }

            else
            {
              v30 = v104.__r_.__value_.__r.__words[0];
            }

            memmove(v29, v30, v28);
          }

          strcpy(v29 + v28, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v27, &__p);
          __cxa_throw(v27, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0x18u:
          MIL::IRDataTypeToString(24, &v104);
          v23 = __cxa_allocate_exception(0x10uLL);
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v24 = v104.__r_.__value_.__l.__size_;
          }

          v25 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v24 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v25 = __p.__r_.__value_.__r.__words[0];
          }

          if (v24)
          {
            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v26 = &v104;
            }

            else
            {
              v26 = v104.__r_.__value_.__r.__words[0];
            }

            memmove(v25, v26, v24);
          }

          strcpy(v25 + v24, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v23, &__p);
          __cxa_throw(v23, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        case 0x19u:
          MIL::IRDataTypeToString(25, &v104);
          v19 = __cxa_allocate_exception(0x10uLL);
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v20 = v104.__r_.__value_.__l.__size_;
          }

          v21 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v20 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v21 = __p.__r_.__value_.__r.__words[0];
          }

          if (v20)
          {
            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v22 = &v104;
            }

            else
            {
              v22 = v104.__r_.__value_.__r.__words[0];
            }

            memmove(v21, v22, v20);
          }

          strcpy(v21 + v20, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v19, &__p);
          __cxa_throw(v19, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        default:
          MIL::IRDataTypeToString(2, &v104);
          v88 = __cxa_allocate_exception(0x10uLL);
          if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v89 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v89 = v104.__r_.__value_.__l.__size_;
          }

          v90 = &__p;
          std::string::basic_string[abi:ne200100](&__p, v89 + 58);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v90 = __p.__r_.__value_.__r.__words[0];
          }

          if (v89)
          {
            if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v91 = &v104;
            }

            else
            {
              v91 = v104.__r_.__value_.__r.__words[0];
            }

            memmove(v90, v91, v89);
          }

          strcpy(v90 + v89, " is not a supported data type for legacy blob file values.");
          std::runtime_error::runtime_error(v88, &__p);
          __cxa_throw(v88, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      return;
    }

    if (v100.__r_.__value_.__l.__size_ != 8)
    {
      goto LABEL_36;
    }

    v13 = v100.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (HIBYTE(v100.__r_.__value_.__r.__words[2]) != 8)
    {
      if (HIBYTE(v100.__r_.__value_.__r.__words[2]) != 14 || (v100.__r_.__value_.__r.__words[0] == 0x4C4259434147454CLL ? (v9 = *(v100.__r_.__value_.__r.__words + 6) == 0x454C4946424F4C42) : (v9 = 0), !v9))
      {
LABEL_36:
        v17 = __cxa_allocate_exception(0x10uLL);
        std::operator+<char>();
        std::runtime_error::runtime_error(v17, &v104);
        __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      goto LABEL_12;
    }

    v13 = &v100;
  }

  if (v13->__r_.__value_.__r.__words[0] != 0x454C4946424F4C42)
  {
    goto LABEL_36;
  }

  v14 = (*(*a1 + 88))(a1);
  v104.__r_.__value_.__r.__words[0] = a1;
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }
}

void sub_217FD4BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      if (*(v27 - 49) < 0)
      {
        operator delete(*(v27 - 72));
      }

      if (a15 < 0)
      {
        operator delete(a10);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void MIL::Util::DispatchToCppType<std::unique_ptr<MIL::IRTensorValue const>,anonymous namespace::MakeValueHelper_Blob,MIL::IRTensorValueType const*,MIL::MILContext &,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,BOOL &>(int a1, uint64_t *a2, const void *a3, uint64_t *a4)
{
  switch(a1)
  {
    case 3:
      MIL::IRDataTypeToString(3, &v65);
      exception = __cxa_allocate_exception(0x10uLL);
      if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v65.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v65.__r_.__value_.__l.__size_;
      }

      p_p = &__p;
      std::string::basic_string[abi:ne200100](&__p, size + 51);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v49 = &v65;
        }

        else
        {
          v49 = v65.__r_.__value_.__r.__words[0];
        }

        memmove(p_p, v49, size);
      }

      strcpy(p_p + size, " is not a supported data type for blob file values.");
      std::runtime_error::runtime_error(exception, &__p);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 4:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p);
      if (v8)
      {
        MIL::IRValue::GetScalar<std::string>(v8[5], &v65);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v9)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v9, &v65, &v63);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 5:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v18 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p);
      if (v18)
      {
        MIL::IRValue::GetScalar<std::string>(v18[5], &v65);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v19)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v19, &v65, &v63);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 6:
      MIL::IRDataTypeToString(6, &v65);
      v50 = __cxa_allocate_exception(0x10uLL);
      if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v51 = v65.__r_.__value_.__l.__size_;
      }

      v52 = &__p;
      std::string::basic_string[abi:ne200100](&__p, v51 + 51);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v52 = __p.__r_.__value_.__r.__words[0];
      }

      if (v51)
      {
        if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v53 = &v65;
        }

        else
        {
          v53 = v65.__r_.__value_.__r.__words[0];
        }

        memmove(v52, v53, v51);
      }

      strcpy(v52 + v51, " is not a supported data type for blob file values.");
      std::runtime_error::runtime_error(v50, &__p);
      __cxa_throw(v50, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 7:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v14 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p);
      if (v14)
      {
        MIL::IRValue::GetScalar<std::string>(v14[5], &v65);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v15)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v15, &v65, &v63);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 8:
      __break(1u);
      return;
    case 9:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v28 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p);
      if (v28)
      {
        MIL::IRValue::GetScalar<std::string>(v28[5], &v65);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v29)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v29, &v65, &v63);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 10:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v22 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p);
      if (v22)
      {
        MIL::IRValue::GetScalar<std::string>(v22[5], &v65);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v23)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v23, &v65, &v63);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 11:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v16 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p);
      if (v16)
      {
        MIL::IRValue::GetScalar<std::string>(v16[5], &v65);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v17)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v17, &v65, &v63);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 12:
      MIL::IRDataTypeToString(12, &v65);
      v54 = __cxa_allocate_exception(0x10uLL);
      if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v55 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v55 = v65.__r_.__value_.__l.__size_;
      }

      v56 = &__p;
      std::string::basic_string[abi:ne200100](&__p, v55 + 51);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v56 = __p.__r_.__value_.__r.__words[0];
      }

      if (v55)
      {
        if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v57 = &v65;
        }

        else
        {
          v57 = v65.__r_.__value_.__r.__words[0];
        }

        memmove(v56, v57, v55);
      }

      strcpy(v56 + v55, " is not a supported data type for blob file values.");
      std::runtime_error::runtime_error(v54, &__p);
      __cxa_throw(v54, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 13:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v36 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p);
      if (v36)
      {
        MIL::IRValue::GetScalar<std::string>(v36[5], &v65);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v37)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v37, &v65, &v63);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 14:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v32 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p);
      if (v32)
      {
        MIL::IRValue::GetScalar<std::string>(v32[5], &v65);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v33)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v33, &v65, &v63);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 15:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v38 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p);
      if (v38)
      {
        MIL::IRValue::GetScalar<std::string>(v38[5], &v65);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v39)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v39, &v65, &v63);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 16:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v26 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p);
      if (v26)
      {
        MIL::IRValue::GetScalar<std::string>(v26[5], &v65);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v27)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v27, &v65, &v63);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 17:
      MIL::IRDataTypeToString(17, &v65);
      v59 = __cxa_allocate_exception(0x10uLL);
      if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v60 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v60 = v65.__r_.__value_.__l.__size_;
      }

      v61 = &__p;
      std::string::basic_string[abi:ne200100](&__p, v60 + 51);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v61 = __p.__r_.__value_.__r.__words[0];
      }

      if (v60)
      {
        if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v62 = &v65;
        }

        else
        {
          v62 = v65.__r_.__value_.__r.__words[0];
        }

        memmove(v61, v62, v60);
      }

      strcpy(v61 + v60, " is not a supported data type for blob file values.");
      std::runtime_error::runtime_error(v59, &__p);
      __cxa_throw(v59, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 18:
      v58 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v58, "cannot dispatch on type");
      __cxa_throw(v58, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 19:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v20 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p);
      if (v20)
      {
        MIL::IRValue::GetScalar<std::string>(v20[5], &v65);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v21)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v21, &v65, &v63);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 20:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v12 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p);
      if (v12)
      {
        MIL::IRValue::GetScalar<std::string>(v12[5], &v65);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v13)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v13, &v65, &v63);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 21:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v40 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p);
      if (v40)
      {
        MIL::IRValue::GetScalar<std::string>(v40[5], &v65);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v41)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v41, &v65, &v63);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 22:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v10 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p);
      if (v10)
      {
        MIL::IRValue::GetScalar<std::string>(v10[5], &v65);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v11)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v11, &v65, &v63);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 23:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v24 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p);
      if (v24)
      {
        MIL::IRValue::GetScalar<std::string>(v24[5], &v65);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v25)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v25, &v65, &v63);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 24:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v30 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p);
      if (v30)
      {
        MIL::IRValue::GetScalar<std::string>(v30[5], &v65);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v31)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v31, &v65, &v63);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    case 25:
      std::string::basic_string[abi:ne200100]<0>(&__p, "path");
      v34 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a4, &__p);
      if (v34)
      {
        MIL::IRValue::GetScalar<std::string>(v34[5], &v65);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v35)
        {
          MIL::MILContextImpl::GetOrCreateStorageReader(v35, &v65, &v63);
          operator new();
        }

        __cxa_bad_cast();
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    default:
      MIL::IRDataTypeToString(2, &v65);
      v42 = __cxa_allocate_exception(0x10uLL);
      if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v43 = v65.__r_.__value_.__l.__size_;
      }

      v44 = &__p;
      std::string::basic_string[abi:ne200100](&__p, v43 + 51);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v44 = __p.__r_.__value_.__r.__words[0];
      }

      if (v43)
      {
        if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v65;
        }

        else
        {
          v45 = v65.__r_.__value_.__r.__words[0];
        }

        memmove(v44, v45, v43);
      }

      strcpy(v44 + v43, " is not a supported data type for blob file values.");
      std::runtime_error::runtime_error(v42, &__p);
      __cxa_throw(v42, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

void sub_217FD6BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      if (a24 < 0)
      {
        operator delete(a19);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void MIL::IRTensorValueType::MakeValueFromLegacyBlobFile(uint64_t a1, uint64_t a2)
{
  v5 = 0u;
  v6 = 0u;
  v7 = 1065353216;
  MIL::IRTensorValueType::MakeScalar(a2, 3);
}

void MIL::IRTensorValueType::MakeStringValue(_anonymous_namespace_ *a1, const MIL::IRTensorValueType *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v6 = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  memset(v4, 0, sizeof(v4));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v4, __p, &v7, 1uLL);
  MIL::IRTensorValueType::MakeStringValue();
}

void sub_217FD76A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::shared_ptr<MIL::IRValue const>::operator=[abi:ne200100]<MIL::IRTensorValue const,std::default_delete<MIL::IRTensorValue const>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<MIL::IRValue const>::shared_ptr[abi:ne200100]<MIL::IRTensorValue const,std::default_delete<MIL::IRTensorValue const>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void MIL::IRTensorValueType::MakeUInt64Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = a3;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v5, &v6, 1uLL);
  MIL::IRTensorValueType::MakeUInt64Value();
}

void sub_217FD77CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeValueFromBlobFile(uint64_t a1, uint64_t a2)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 1065353216;
  MIL::IRTensorValueType::MakeScalar(a2, 3);
}

uint64_t MIL::IRTensorValueType::MakeValueFromConstExprEvaluation(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v7 = v3;
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  MIL::IRTensorValueType::MakeValueFromConstExprEvaluation(a1, &v7, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_217FD7C84(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    (*(*a15 + 8))(a15, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeValueFromConstExprEvaluation(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  std::shared_ptr<MIL::AbstractConstExpr const>::shared_ptr[abi:ne200100]<MIL::AbstractConstExpr const,std::default_delete<MIL::AbstractConstExpr const>,0>(&v7, a2);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v9 = 0;
  v5 = (*(*a1 + 88))(a1);
  v8 = a1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(&v7 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
  }
}

void sub_217FD7DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeValueFromConstExprEvaluation(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v7 = (*(*a1 + 88))(a1);
  v8 = a1;
}

void MIL::Util::DispatchToCppType<std::unique_ptr<MIL::IRTensorValue const>,anonymous namespace::MakeValueHelper_ConstExpr,MIL::IRTensorValueType const*,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &>(int a1, uint64_t *a2, __int128 *a3, uint64_t *a4, uint64_t a5)
{
  switch(a1)
  {
    case 3:
      v36 = *a2;
      v52 = *a3;
      *a3 = 0uLL;
      v37 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v53 = v37;
      v54 = v36;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<std::string>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string&,0>();
    case 4:
      v32 = *a2;
      v52 = *a3;
      *a3 = 0uLL;
      v33 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v53 = v33;
      v54 = v32;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<MIL::Fp16>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 5:
      v34 = *a2;
      v52 = *a3;
      *a3 = 0uLL;
      v35 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v53 = v35;
      v54 = v34;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<float>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 6:
      v22 = *a2;
      v52 = *a3;
      *a3 = 0uLL;
      v23 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v53 = v23;
      v54 = v22;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<double>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 7:
      v38 = *a2;
      v52 = *a3;
      *a3 = 0uLL;
      v39 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v53 = v39;
      v54 = v38;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<MIL::Bf16>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 8:
      __break(1u);
      return;
    case 9:
      v26 = *a2;
      v52 = *a3;
      *a3 = 0uLL;
      v27 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v53 = v27;
      v54 = v26;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<signed char>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 10:
      v18 = *a2;
      v52 = *a3;
      *a3 = 0uLL;
      v19 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v53 = v19;
      v54 = v18;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<short>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 11:
      v30 = *a2;
      v52 = *a3;
      *a3 = 0uLL;
      v31 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v53 = v31;
      v54 = v30;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<int>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 12:
      v14 = *a2;
      v52 = *a3;
      *a3 = 0uLL;
      v15 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v53 = v15;
      v54 = v14;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<long long>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 13:
      v28 = *a2;
      v52 = *a3;
      *a3 = 0uLL;
      v29 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v53 = v29;
      v54 = v28;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<unsigned char>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 14:
      v8 = *a2;
      v52 = *a3;
      *a3 = 0uLL;
      v9 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v53 = v9;
      v54 = v8;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<unsigned char>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 15:
      v12 = *a2;
      v52 = *a3;
      *a3 = 0uLL;
      v13 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v53 = v13;
      v54 = v12;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<unsigned short>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 16:
      v24 = *a2;
      v52 = *a3;
      *a3 = 0uLL;
      v25 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v53 = v25;
      v54 = v24;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<unsigned int>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 17:
      v42 = *a2;
      v52 = *a3;
      *a3 = 0uLL;
      v43 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v53 = v43;
      v54 = v42;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<unsigned long long>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 18:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "cannot dispatch on type");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 19:
      v20 = *a2;
      v52 = *a3;
      *a3 = 0uLL;
      v21 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v53 = v21;
      v54 = v20;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<unsigned char>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 20:
      v44 = *a2;
      v52 = *a3;
      *a3 = 0uLL;
      v45 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v53 = v45;
      v54 = v44;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<unsigned char>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 21:
      v10 = *a2;
      v52 = *a3;
      *a3 = 0uLL;
      v11 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v53 = v11;
      v54 = v10;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<unsigned char>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 22:
      v46 = *a2;
      v52 = *a3;
      *a3 = 0uLL;
      v47 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v53 = v47;
      v54 = v46;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<unsigned char>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 23:
      v40 = *a2;
      v52 = *a3;
      *a3 = 0uLL;
      v41 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v53 = v41;
      v54 = v40;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<unsigned char>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 24:
      v48 = *a2;
      v52 = *a3;
      *a3 = 0uLL;
      v49 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v53 = v49;
      v54 = v48;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<MIL::Fp8E4M3FN>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    case 25:
      v16 = *a2;
      v52 = *a3;
      *a3 = 0uLL;
      v17 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v53 = v17;
      v54 = v16;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<MIL::Fp8E5M2>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
    default:
      v6 = *a2;
      v52 = *a3;
      *a3 = 0uLL;
      v7 = *a4;
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
      }

      else
      {
        __p = *a5;
      }

      v53 = v7;
      v54 = v6;
      std::make_unique[abi:ne200100]<MIL::IRValueConstExprOutputData<unsigned char>,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::AbstractConstExpr const>,unsigned long &,std::string &,0>();
  }
}

void sub_217FD93AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeFloat8E5M2Value(_anonymous_namespace_ *a1, const MIL::IRTensorValueType *a2)
{
  v3 = a2;
  v4 = v3;
  memset(__p, 0, sizeof(__p));
  std::vector<MIL::Fp8E5M2>::__init_with_size[abi:ne200100]<MIL::Fp8E5M2 const*,MIL::Fp8E5M2 const*>(__p, &v4, __p, 1);
  MIL::IRTensorValueType::MakeFloat8E5M2Value();
}

void sub_217FD9C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *anonymous namespace::ValidateScalarType(_anonymous_namespace_ *this, const MIL::IRTensorValueType *a2)
{
  result = (*(*this + 96))(this, a2);
  if (*result != result[1])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot create scalar tensor value from non-scalar type.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void MIL::IRTensorValueType::MakeFloat8E4M3FNValue(_anonymous_namespace_ *a1, const MIL::IRTensorValueType *a2)
{
  v3 = a2;
  v4 = v3;
  memset(__p, 0, sizeof(__p));
  std::vector<MIL::Fp8E4M3FN>::__init_with_size[abi:ne200100]<MIL::Fp8E4M3FN const*,MIL::Fp8E4M3FN const*>(__p, &v4, __p, 1);
  MIL::IRTensorValueType::MakeFloat8E4M3FNValue();
}

void sub_217FD9D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeBFloat16Value(_anonymous_namespace_ *a1, const MIL::IRTensorValueType *a2)
{
  v3 = a2;
  v4 = v3;
  memset(__p, 0, sizeof(__p));
  std::vector<MIL::Bf16>::__init_with_size[abi:ne200100]<MIL::Bf16 const*,MIL::Bf16 const*>(__p, &v4, __p, 1);
  MIL::IRTensorValueType::MakeBFloat16Value();
}

void sub_217FD9E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeFloat16Value(_anonymous_namespace_ *a1, const MIL::IRTensorValueType *a2)
{
  v3 = a2;
  v4 = v3;
  memset(__p, 0, sizeof(__p));
  std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<MIL::Fp16 const*,MIL::Fp16 const*>(__p, &v4, __p, 1);
  MIL::IRTensorValueType::MakeFloat16Value();
}

void sub_217FD9EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeFloat32Value(MIL::IRTensorValueType *this, float a2, const MIL::IRTensorValueType *a3)
{
  v5 = a2;
  memset(__p, 0, sizeof(__p));
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(__p, &v5, __p, 1uLL);
  MIL::IRTensorValueType::MakeFloat32Value();
}

void sub_217FD9F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeFloat64Value(MIL::IRTensorValueType *this, double a2, const MIL::IRTensorValueType *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = a2;
  memset(__p, 0, sizeof(__p));
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(__p, &v6, &v7, 1uLL);
  MIL::IRTensorValueType::MakeFloat64Value();
}

void sub_217FDA020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeBoolValue(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v3 = a2;
  v4 = v3;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, &v4, __p, 1);
  MIL::IRTensorValueType::MakeBoolValue();
}

void sub_217FDA0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeInt4Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v3 = a2;
  v4 = v3;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, &v4, __p, 1);
  MIL::IRTensorValueType::MakeInt4Value();
}

void sub_217FDA160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeUInt6Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v3 = a2;
  v4 = v3;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, &v4, __p, 1);
  MIL::IRTensorValueType::MakeUInt6Value();
}

void sub_217FDA1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeUInt4Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v3 = a2;
  v4 = v3;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, &v4, __p, 1);
  MIL::IRTensorValueType::MakeUInt4Value();
}

void sub_217FDA298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeUInt3Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v3 = a2;
  v4 = v3;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, &v4, __p, 1);
  MIL::IRTensorValueType::MakeUInt3Value();
}

void sub_217FDA334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeUInt2Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v3 = a2;
  v4 = v3;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, &v4, __p, 1);
  MIL::IRTensorValueType::MakeUInt2Value();
}

void sub_217FDA3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeUInt1Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v3 = a2;
  v4 = v3;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, &v4, __p, 1);
  MIL::IRTensorValueType::MakeUInt1Value();
}

void sub_217FDA46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeUInt8Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v3 = a2;
  v4 = v3;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, &v4, __p, 1);
  MIL::IRTensorValueType::MakeUInt8Value();
}

void sub_217FDA508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeUInt16Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v3 = a2;
  v4 = v3;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(__p, &v4, __p, 1);
  MIL::IRTensorValueType::MakeUInt16Value();
}

void sub_217FDA5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeUInt32Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v3 = a2;
  v4 = v3;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(__p, &v4, __p, 1uLL);
  MIL::IRTensorValueType::MakeUInt32Value();
}

void sub_217FDA640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeInt8Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v3 = a2;
  v4 = v3;
  memset(__p, 0, sizeof(__p));
  std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(__p, &v4, __p, 1);
  MIL::IRTensorValueType::MakeInt8Value();
}

void sub_217FDA6DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeInt16Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v3 = a2;
  v4 = v3;
  memset(__p, 0, sizeof(__p));
  std::vector<short>::__init_with_size[abi:ne200100]<short const*,short const*>(__p, &v4, __p, 1);
  MIL::IRTensorValueType::MakeInt16Value();
}

void sub_217FDA778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeInt32Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v3 = a2;
  v4 = v3;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v4, __p, 1uLL);
  MIL::IRTensorValueType::MakeInt32Value();
}

void sub_217FDA814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorValueType::MakeInt64Value(MIL::IRTensorValueType *this, const MIL::IRTensorValueType *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = a2;
  memset(__p, 0, sizeof(__p));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(__p, &v5, &v6, 1uLL);
  MIL::IRTensorValueType::MakeInt64Value();
}

void sub_217FDA8D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTensorValueType::GetAttribute(uint64_t a1)
{
  result = (*(*a1 + 64))(a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Attribute does not exist.");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  return result;
}

uint64_t MIL::IRTensorValueType::GetNumElements(MIL::IRTensorValueType *this)
{
  v1 = (*(*this + 96))(this);
  v2 = *v1;
  v3 = v1[1];
  v4 = 1;
  while (v2 != v3)
  {
    v5 = (*(**v2 + 16))();
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::range_error::range_error[abi:ne200100](exception, "Cannot determine number of elements in tensor with unknown dimension.");
      __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
    }

    v4 *= (*(*v5 + 48))(v5);
    v2 += 8;
  }

  return v4;
}

uint64_t MIL::IRTensorValueType::Rank(MIL::IRTensorValueType *this)
{
  if (!(*(*this + 104))(this))
  {
    return -1;
  }

  v2 = (*(*this + 96))(this);
  return (v2[1] - *v2) >> 3;
}

uint64_t MIL::IRListValueType::Make(MIL::IRListValueType *this, MIL::MILContext *a2, const MIL::IRValueType *a3)
{
  v5 = MIL::IRConstantDimension::Make(this, a3);

  return MIL::IRListValueType::MakeWithDimension(this, a2, v5, v6);
}

uint64_t MIL::IRListValueType::GetNumElements(MIL::IRListValueType *this)
{
  v1 = (*(*this + 72))(this);
  v2 = (*(*v1 + 16))(v1);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "Cannot determine number of elements in list with unknown length.");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_217FDAE60(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTupleValueType::GetNumElements(MIL::IRTupleValueType *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::range_error::range_error[abi:ne200100](exception, "Cannot determine number of elements in a tuple.");
  __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
}

void sub_217FDB0E4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRDictionaryValueType::GetNumElements(MIL::IRDictionaryValueType *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::range_error::range_error[abi:ne200100](exception, "Cannot determine number of elements in a dictionary.");
  __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
}

void sub_217FDB374(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRNamedValueType::~IRNamedValueType(void **this)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

__n128 MIL::IRNamedValueType::IRNamedValueType(__n128 *a1, __n128 *a2, unint64_t a3)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  *(a2 + 8) = 0uLL;
  a2->n128_u64[0] = 0;
  a1[1].n128_u64[1] = a3;
  return result;
}

{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  *(a2 + 8) = 0uLL;
  a2->n128_u64[0] = 0;
  a1[1].n128_u64[1] = a3;
  return result;
}

BOOL MIL::IRNamedValueType::Equals(MIL::IRNamedValueType *this, const MIL::IRNamedValueType *a2)
{
  v2 = *(this + 23);
  if (v2 >= 0)
  {
    v3 = *(this + 23);
  }

  else
  {
    v3 = *(this + 1);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = this;
  if (v2 < 0)
  {
    this = *this;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return !memcmp(this, a2, v3) && *(v7 + 3) == *(v6 + 3);
}

__n128 MIL::IRNamedValueType::SetName(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  result = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  *a1 = result;
  a2[1].n128_u8[7] = 0;
  a2->n128_u8[0] = 0;
  return result;
}

void sub_217FDB75C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRMemoryLayoutValueType::TryAsTensorBufferType(void *this)
{
  if (this)
  {
  }

  return this;
}

void *MIL::IRMemoryLayoutValueType::AsTensorBufferType(MIL::IRMemoryLayoutValueType *this)
{
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

void *MIL::IRMemoryLayoutValueType::TryAsPixelBufferType(void *this)
{
  if (this)
  {
  }

  return this;
}

void *MIL::IRMemoryLayoutValueType::AsPixelBufferType(MIL::IRMemoryLayoutValueType *this)
{
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

void *MIL::IRMemoryLayoutValueType::TryAsCircularBufferType(void *this)
{
  if (this)
  {
  }

  return this;
}

void *MIL::IRMemoryLayoutValueType::AsCircularBufferType(MIL::IRMemoryLayoutValueType *this)
{
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v3, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return result;
}

void MIL::IRTensorBufferValueType::~IRTensorBufferValueType(MIL::IRTensorBufferValueType *this)
{
  *this = &unk_2829E3068;
  std::unique_ptr<MIL::IRTensorBufferValueTypeImpl>::~unique_ptr[abi:ne200100](this + 1);
}

{
  *this = &unk_2829E3068;
  std::unique_ptr<MIL::IRTensorBufferValueTypeImpl>::~unique_ptr[abi:ne200100](this + 1);
}

{
  *this = &unk_2829E3068;
  std::unique_ptr<MIL::IRTensorBufferValueTypeImpl>::~unique_ptr[abi:ne200100](this + 1);

  JUMPOUT(0x21CEAFEA0);
}

void *MIL::IRTensorBufferValueType::IRTensorBufferValueType(void *this)
{
  *this = &unk_2829E3068;
  this[1] = 0;
  return this;
}

{
  *this = &unk_2829E3068;
  this[1] = 0;
  return this;
}

void *MIL::IRTensorBufferValueType::IRTensorBufferValueType(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829E3068;
  result[1] = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829E3068;
  result[1] = v2;
  return result;
}

void MIL::IRTensorBufferValueType::MakeUsingDefaultStrides(MIL::IRConstantDimension *a1, uint64_t a2, uint64_t *a3)
{
  v6 = (a3[1] - *a3) >> 3;
  MIL::MakeDefaultStrides(a3, &v11);
  v9 = 1;
  std::vector<unsigned char>::vector[abi:ne200100](&__p, v6, &v9);
  memset(v7, 0, sizeof(v7));
  v8 = 1065353216;
  MIL::IRTensorBufferValueType::Make(a1, a2, a3, &v11, &__p, v7);
}

void sub_217FDBC7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  v18 = *(v16 - 56);
  if (v18)
  {
    *(v16 - 48) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void MIL::IRTensorBufferValueType::Make(MIL::IRConstantDimension *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  std::vector<MIL::IRDimension const*>::vector[abi:ne200100](v23, (a3[1] - *a3) >> 3);
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&v22, (a4[1] - *a4) >> 3);
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&__p, a5[1] - *a5);
  v12 = *a3;
  if (a3[1] != *a3)
  {
    v13 = 0;
    do
    {
      v14 = MIL::IRConstantDimension::Make(a1, *(v12 + 8 * v13));
      *(v23[0] + v13++) = v14;
      v12 = *a3;
    }

    while (v13 < (a3[1] - *a3) >> 3);
  }

  v15 = *a4;
  if (a4[1] != *a4)
  {
    v16 = 0;
    do
    {
      Int64Scalar = MIL::IRConstantProperty::MakeInt64Scalar(a1, *(v15 + 8 * v16));
      *(v22 + v16++) = Int64Scalar;
      v15 = *a4;
    }

    while (v16 < (a4[1] - *a4) >> 3);
  }

  v18 = *a5;
  if (a5[1] != *a5)
  {
    v19 = 0;
    do
    {
      UInt8Scalar = MIL::IRConstantProperty::MakeUInt8Scalar(a1, *(v18 + v19));
      *(__p + v19++) = UInt8Scalar;
      v18 = *a5;
    }

    while (v19 < a5[1] - *a5);
  }

  MIL::IRTensorBufferValueType::MakeWithShape(a1, a2, v23, &v22, &__p, a6);
}

void sub_217FDBE40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
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

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorBufferValueType::MakeUsingDefaultStrides(MIL::IRConstantDimension *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  MIL::MakeDefaultStrides(a3, a4, &__p);
  memset(v8, 0, sizeof(v8));
  v9 = 1065353216;
  MIL::IRTensorBufferValueType::Make(a1, a2, a3, &__p, a4, v8);
}

void sub_217FDBF30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::IRTensorBufferValueType::Make(MIL::IRConstantDimension *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = (a3[1] - *a3) >> 3;
  v11 = 1;
  std::vector<unsigned char>::vector[abi:ne200100](&__p, v8, &v11);
  memset(v9, 0, sizeof(v9));
  v10 = 1065353216;
  MIL::IRTensorBufferValueType::Make(a1, a2, a3, a4, &__p, v9);
}

void sub_217FDBFFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_217FDC1BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorBufferValueType::MakeWithRowAlignment(MIL::IRConstantDimension *a1, uint64_t a2, uint64_t *a3, MIL::MILContext *a4)
{
  v8 = (a3[1] - *a3) >> 3;
  v11 = 1;
  std::vector<unsigned char>::vector[abi:ne200100](&__p, v8, &v11);
  memset(v9, 0, sizeof(v9));
  v10 = 1065353216;
  MIL::IRTensorBufferValueType::MakeWithRowAlignment(a1, a2, a3, a4, &__p, v9);
}

void sub_217FDC2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::IRTensorBufferValueType::MakeWithRowAlignment(MIL::IRConstantDimension *a1, uint64_t a2, uint64_t *a3, MIL::MILContext *a4, uint64_t *a5, uint64_t a6)
{
  std::vector<MIL::IRDimension const*>::vector[abi:ne200100](v20, (a3[1] - *a3) >> 3);
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&__p, a5[1] - *a5);
  v12 = *a3;
  if (a3[1] != *a3)
  {
    v13 = 0;
    do
    {
      v14 = MIL::IRConstantDimension::Make(a1, *(v12 + 8 * v13));
      *(v20[0] + v13++) = v14;
      v12 = *a3;
    }

    while (v13 < (a3[1] - *a3) >> 3);
  }

  v15 = *a5;
  if (a5[1] != *a5)
  {
    v16 = 0;
    do
    {
      UInt8Scalar = MIL::IRConstantProperty::MakeUInt8Scalar(a1, *(v15 + v16));
      *(__p + v16++) = UInt8Scalar;
      v15 = *a5;
    }

    while (v16 < a5[1] - *a5);
  }

  UInt64Scalar = MIL::IRConstantProperty::MakeUInt64Scalar(a1, a4);
  MIL::IRTensorBufferValueType::MakeWithShapeAndRowAlignment(a1, a2, v20, UInt64Scalar, &__p, a6);
}

void sub_217FDC400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_217FDC574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRTensorBufferValueType::MakeWithShapeUsingDefaultStrides(MIL::IRConstantProperty *a1, uint64_t a2, uint64_t *a3)
{
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&v11, (a3[1] - *a3) >> 3);
  if (a3[1] != *a3)
  {
    v6 = 0;
    do
    {
      UInt8Scalar = MIL::IRConstantProperty::MakeUInt8Scalar(a1, 1);
      *(v11 + 8 * v6++) = UInt8Scalar;
    }

    while (v6 < (a3[1] - *a3) >> 3);
  }

  MIL::MakeDefaultStrides(a1, a3, &__p);
  memset(v8, 0, sizeof(v8));
  v9 = 1065353216;
  MIL::IRTensorBufferValueType::MakeWithShape(a1, a2, a3, &__p, &v11, v8);
}

void sub_217FDC690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  v18 = *(v16 - 56);
  if (v18)
  {
    *(v16 - 48) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void MIL::IRTensorBufferValueType::MakeWithShapeUsingDefaultStrides(MIL::IRConstantProperty *a1, uint64_t a2, __int128 *a3, uint64_t *a4)
{
  MIL::MakeDefaultStrides(a1, a3, a4, &__p);
  memset(v8, 0, sizeof(v8));
  v9 = 1065353216;
  MIL::IRTensorBufferValueType::MakeWithShape(a1, a2, a3, &__p, a4, v8);
}

void sub_217FDC768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::IRTensorBufferValueType::MakeWithShape(MIL::IRConstantProperty *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&__p, (*(a3 + 8) - *a3) >> 3);
  if (*(a3 + 8) != *a3)
  {
    v8 = 0;
    do
    {
      UInt8Scalar = MIL::IRConstantProperty::MakeUInt8Scalar(a1, 1);
      *(__p + v8++) = UInt8Scalar;
    }

    while (v8 < (*(a3 + 8) - *a3) >> 3);
  }

  memset(v10, 0, sizeof(v10));
  v11 = 1065353216;
  MIL::IRTensorBufferValueType::MakeWithShape(a1, a2, a3, a4, &__p, v10);
}

void sub_217FDC868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::IRTensorBufferValueType::MakeWithShapeAndRowAlignment(MIL::IRConstantProperty *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&__p, (*(a3 + 8) - *a3) >> 3);
  if (*(a3 + 8) != *a3)
  {
    v8 = 0;
    do
    {
      UInt8Scalar = MIL::IRConstantProperty::MakeUInt8Scalar(a1, 1);
      *(__p + v8++) = UInt8Scalar;
    }

    while (v8 < (*(a3 + 8) - *a3) >> 3);
  }

  memset(v10, 0, sizeof(v10));
  v11 = 1065353216;
  MIL::IRTensorBufferValueType::MakeWithShapeAndRowAlignment(a1, a2, a3, a4, &__p, v10);
}

void sub_217FDC970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::IRTensorBufferValueType::MakeWithShapeUsingDefaultStrides(MIL::IRConstantProperty *a1, uint64_t a2, uint64_t **a3)
{
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&v12, ((*a3)[1] - **a3) >> 3);
  v5 = *a3;
  if ((*a3)[1] != **a3)
  {
    v6 = 0;
    do
    {
      UInt8Scalar = MIL::IRConstantProperty::MakeUInt8Scalar(a1, 1);
      *(v12 + 8 * v6++) = UInt8Scalar;
      v5 = *a3;
    }

    while (v6 < ((*a3)[1] - **a3) >> 3);
  }

  v8 = a3[1];
  v10 = v5;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    v5 = *a3;
  }

  MIL::MakeDefaultStrides(a1, v5, __p);
  operator new();
}

void sub_217FDCB84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  v24 = *(v22 - 72);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v25 = *(v22 - 64);
  if (v25)
  {
    *(v22 - 56) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void MIL::IRTensorBufferValueType::MakeWithShapeUsingDefaultStrides(MIL::IRConstantProperty *a1, uint64_t a2, uint64_t **a3, uint64_t **a4)
{
  v4 = *a3;
  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = *a3;
  }

  MIL::MakeDefaultStrides(a1, v4, *a4, __p);
  operator new();
}

void sub_217FDCD40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  v20 = *(v18 - 56);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  v21 = *(v18 - 40);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(a1);
}

void MIL::IRTensorBufferValueType::MakeWithShape(MIL::IRConstantProperty *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&v16, (*(*a3 + 8) - **a3) >> 3);
  v7 = *a3;
  if (*(*a3 + 8) != **a3)
  {
    v8 = 0;
    do
    {
      UInt8Scalar = MIL::IRConstantProperty::MakeUInt8Scalar(a1, 1);
      *(v16 + 8 * v8++) = UInt8Scalar;
      v7 = *a3;
    }

    while (v8 < (*(*a3 + 8) - **a3) >> 3);
  }

  v10 = a3[1];
  v14 = v7;
  v15 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a4[1];
  v12 = *a4;
  v13 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_217FDCF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  v22 = *(v20 - 80);
  if (v22)
  {
    *(v20 - 72) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void MIL::IRTensorBufferValueType::MakeWithShapeAndRowAlignment(MIL::IRConstantProperty *a1, uint64_t a2, void *a3, uint64_t a4)
{
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](__p, (*(*a3 + 8) - **a3) >> 3);
  v6 = *a3;
  if (*(*a3 + 8) != **a3)
  {
    v7 = 0;
    do
    {
      UInt8Scalar = MIL::IRConstantProperty::MakeUInt8Scalar(a1, 1);
      *(__p[0] + v7++) = UInt8Scalar;
      v6 = *a3;
    }

    while (v7 < (*(*a3 + 8) - **a3) >> 3);
  }

  v9 = a3[1];
  v10 = v6;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_217FDD0F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::IRTensorBufferValueType::Make(int a1)
{
  v7 = a1;
  v6 = 0;
  std::make_unique[abi:ne200100]<MIL::IRTensorBufferValueTypeImpl,MIL::IRDataType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,decltype(nullptr),std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>();
}

void sub_217FDD1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<MIL::IRTensorBufferValueTypeImpl>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_217FDD2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::make_unique[abi:ne200100]<MIL::IRTensorBufferValueTypeImpl,MIL::IRDataType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,decltype(nullptr),std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>(v12 + 8);
  MEMORY[0x21CEAFEA0](v11, v10);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<MIL::IRTensorBufferValueTypeImpl>::~unique_ptr[abi:ne200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table((v2 + 9));
    v3 = v2[8];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = v2[5];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = v2[2];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    MEMORY[0x21CEAFEA0](v2, 0x10E0C404C31E7C6);
  }

  return a1;
}

void MIL::IRTensorBufferValueType::Make(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v5 = a4;
  std::make_unique[abi:ne200100]<MIL::IRTensorBufferValueTypeImpl,MIL::IRDataType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,MIL::IRProperty const*&,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>();
}

void sub_217FDD430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<MIL::IRTensorBufferValueTypeImpl>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_217FDD55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::make_unique[abi:ne200100]<MIL::IRTensorBufferValueTypeImpl,MIL::IRDataType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,decltype(nullptr),std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>(v12 + 8);
  MEMORY[0x21CEAFEA0](v11, v10);
  _Unwind_Resume(a1);
}

void sub_217FDD5D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRTensorBufferValueTypeImpl::GetStrides(MIL::IRTensorBufferValueTypeImpl *this)
{
  result = *(this + 4);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Strides is not set for this tensor_buffer.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t MIL::IRTensorBufferValueTypeImpl::GetRowAlignmentInBytes(MIL::IRTensorBufferValueTypeImpl *this)
{
  result = *(this + 6);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Row-alignment is not set for this tensor_buffer.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

const void *MIL::IRTensorBufferValueTypeImpl::GetAttribute(uint64_t a1, uint64_t *a2)
{
  result = MIL::IRTensorBufferValueTypeImpl::TryGetAttribute(a1, a2);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Attribute does not exist.");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  return result;
}

const void *MIL::IRTensorBufferValueTypeImpl::TryGetAttribute(uint64_t a1, uint64_t *a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 72), a2);
  if (!v2)
  {
    return 0;
  }

  v4 = v2[5];
  v3 = v2[6];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v4;
}

const void **MIL::IRTensorBufferValueType::TryGetAttributeSharedPtr@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((*(a1 + 8) + 72), a2);
  if (result)
  {
    v5 = result[6];
    *a3 = result[5];
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t MIL::IRTensorBufferValueType::GetRank(MIL::IRTensorBufferValueType *this)
{
  v1 = *(this + 1);
  if (*(v1 + 24) == 1)
  {
    return (*(*(v1 + 8) + 8) - **(v1 + 8)) >> 3;
  }

  else
  {
    return -1;
  }
}

uint64_t MIL::IRTensorBufferValueType::GetNumElements(MIL::IRTensorBufferValueType *this)
{
  v1 = *(*(this + 1) + 8);
  v2 = *v1;
  v3 = v1[1];
  v4 = 1;
  while (v2 != v3)
  {
    v5 = (*(**v2 + 16))();
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::range_error::range_error[abi:ne200100](exception, "Cannot determine number of elements in memory layout with unknown dimension.");
      __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
    }

    v4 *= (*(*v5 + 48))(v5);
    v2 += 8;
  }

  return v4;
}

void sub_217FDDA40(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRPixelBufferValueType::~IRPixelBufferValueType(MIL::IRPixelBufferValueType *this)
{
  *this = &unk_2829E30B8;
  std::unique_ptr<MIL::IRPixelBufferValueTypeImpl>::reset[abi:ne200100](this + 1, 0);
}

{
  *this = &unk_2829E30B8;
  std::unique_ptr<MIL::IRPixelBufferValueTypeImpl>::reset[abi:ne200100](this + 1, 0);
}

{
  *this = &unk_2829E30B8;
  std::unique_ptr<MIL::IRPixelBufferValueTypeImpl>::reset[abi:ne200100](this + 1, 0);

  JUMPOUT(0x21CEAFEA0);
}

void *MIL::IRPixelBufferValueType::IRPixelBufferValueType(void *this)
{
  *this = &unk_2829E30B8;
  this[1] = 0;
  return this;
}

{
  *this = &unk_2829E30B8;
  this[1] = 0;
  return this;
}

void *MIL::IRPixelBufferValueType::IRPixelBufferValueType(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829E30B8;
  result[1] = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829E30B8;
  result[1] = v2;
  return result;
}

void MIL::IRPixelBufferValueType::Make(MIL::IRConstantDimension *a1, uint64_t a2, uint64_t *a3)
{
  std::vector<MIL::IRDimension const*>::vector[abi:ne200100](&__p, (a3[1] - *a3) >> 3);
  v6 = *a3;
  if (a3[1] != *a3)
  {
    v7 = 0;
    do
    {
      v8 = MIL::IRConstantDimension::Make(a1, *(v6 + 8 * v7));
      *(__p + v7++) = v8;
      v6 = *a3;
    }

    while (v7 < (a3[1] - *a3) >> 3);
  }

  MIL::IRPixelBufferValueType::MakeWithShape(a1, a2, &__p);
}

void sub_217FDDCC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRPixelBufferValueType::Make(MIL::IRConstantDimension *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  std::vector<MIL::IRDimension const*>::vector[abi:ne200100](v17, (a3[1] - *a3) >> 3);
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&__p, (a4[1] - *a4) >> 3);
  v10 = *a3;
  if (a3[1] != *a3)
  {
    v11 = 0;
    do
    {
      v12 = MIL::IRConstantDimension::Make(a1, *(v10 + 8 * v11));
      *(v17[0] + v11++) = v12;
      v10 = *a3;
    }

    while (v11 < (a3[1] - *a3) >> 3);
  }

  v13 = *a4;
  if (a4[1] != *a4)
  {
    v14 = 0;
    do
    {
      Int64Scalar = MIL::IRConstantProperty::MakeInt64Scalar(a1, *(v13 + 8 * v14));
      *(__p + v14++) = Int64Scalar;
      v13 = *a4;
    }

    while (v14 < (a4[1] - *a4) >> 3);
  }

  MIL::IRPixelBufferValueType::MakeWithShape(a1, a2, v17, &__p, a5);
}

void sub_217FDDECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_217FDE044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRPixelBufferValueType::MakeWithBytesPerRowNumSlices(MIL::IRConstantDimension *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  std::vector<MIL::IRDimension const*>::vector[abi:ne200100](v23, (a3[1] - *a3) >> 3);
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&v22, (a4[1] - *a4) >> 3);
  v12 = *a3;
  if (a3[1] != *a3)
  {
    v13 = 0;
    do
    {
      v14 = MIL::IRConstantDimension::Make(a1, *(v12 + 8 * v13));
      *(v23[0] + v13++) = v14;
      v12 = *a3;
    }

    while (v13 < (a3[1] - *a3) >> 3);
  }

  v15 = *a4;
  if (a4[1] != *a4)
  {
    v16 = 0;
    do
    {
      Int64Scalar = MIL::IRConstantProperty::MakeInt64Scalar(a1, *(v15 + 8 * v16));
      *(v22 + v16++) = Int64Scalar;
      v15 = *a4;
    }

    while (v16 < (a4[1] - *a4) >> 3);
  }

  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&__p, (a5[1] - *a5) >> 3);
  v18 = *a5;
  if (a5[1] != *a5)
  {
    v19 = 0;
    do
    {
      v20 = MIL::IRConstantProperty::MakeInt64Scalar(a1, *(v18 + 8 * v19));
      *(__p + v19++) = v20;
      v18 = *a5;
    }

    while (v19 < (a5[1] - *a5) >> 3);
  }

  MIL::IRPixelBufferValueType::MakeWithShapeBytesPerRowNumSlices(a1, a2, v23, &v22, &__p, a6);
}

void sub_217FDE208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
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

  _Unwind_Resume(exception_object);
}

void sub_217FDE42C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRPixelBufferValueType::MakeWithShape(const void *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  v10 = *a3;
  v11 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = 0;
  v9 = 0;
  memset(v6, 0, sizeof(v6));
  v7 = 1065353216;
  v4 = MIL::IRPixelBufferValueType::MakeWithShape(a1, a2, &v10, &v8, v6);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v6);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v4;
}

void sub_217FDE4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  v18 = *(v16 - 24);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void sub_217FDE5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_217FDE738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRPixelBufferValueType::Make(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = 0;
  v6[1] = 0;
  MIL::IRPixelBufferValueType::Make(a1, v8, v7, v6);
}

void sub_217FDE810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::make_unique[abi:ne200100]<MIL::IRTensorBufferValueTypeImpl,MIL::IRDataType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,decltype(nullptr),std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>(v10 + 8);
  _Unwind_Resume(a1);
}

void MIL::IRPixelBufferValueType::Make(int a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = a1;
  v6 = 0;
  v5 = *a4;
  if (*a3)
  {
    if (v5)
    {
      std::make_unique[abi:ne200100]<MIL::IRPixelBufferValueTypeImpl,MIL::IRPixelFormatType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>();
    }

    std::make_unique[abi:ne200100]<MIL::IRPixelBufferValueTypeImpl,MIL::IRPixelFormatType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::nullopt_t const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>();
  }

  if (v5)
  {
    std::make_unique[abi:ne200100]<MIL::IRPixelBufferValueTypeImpl,MIL::IRPixelFormatType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::nullopt_t const&,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>();
  }

  std::make_unique[abi:ne200100]<MIL::IRPixelBufferValueTypeImpl,MIL::IRPixelFormatType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::nullopt_t const&,std::nullopt_t const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>();
}

void sub_217FDE948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<MIL::IRPixelBufferValueTypeImpl>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void std::make_unique[abi:ne200100]<MIL::IRPixelBufferValueTypeImpl,MIL::IRPixelFormatType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::nullopt_t const&,std::nullopt_t const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>()
{
  operator new();
}

{
  OUTLINED_FUNCTION_1();
  if (v2)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  if (*v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*v0);
  }
}

void sub_217FDEA60(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, char a4, uint64_t a5, std::__shared_weak_count *a6, char a7, ...)
{
  if (a7 == 1)
  {
    if (a6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a6);
    }
  }

  std::make_unique[abi:ne200100]<MIL::IRPixelBufferValueTypeImpl,MIL::IRPixelFormatType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::nullopt_t const&,std::nullopt_t const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>();
  MEMORY[0x21CEAFEA0](v8, v7);
  _Unwind_Resume(a1);
}

void sub_217FDEBB4(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, char a4, uint64_t a5, std::__shared_weak_count *a6, char a7, ...)
{
  if (a7 == 1)
  {
    if (a6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a6);
    }
  }

  std::make_unique[abi:ne200100]<MIL::IRPixelBufferValueTypeImpl,MIL::IRPixelFormatType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::nullopt_t const&,std::nullopt_t const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>();
  MEMORY[0x21CEAFEA0](v8, v7);
  _Unwind_Resume(a1);
}

void std::make_unique[abi:ne200100]<MIL::IRPixelBufferValueTypeImpl,MIL::IRPixelFormatType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::nullopt_t const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>()
{
  operator new();
}

{
  OUTLINED_FUNCTION_1();
  if (v2 && *v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*v1);
  }

  if (*v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*v0);
  }
}

void sub_217FDED08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a11 == 1)
  {
    if (a10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    }
  }

  std::make_unique[abi:ne200100]<MIL::IRPixelBufferValueTypeImpl,MIL::IRPixelFormatType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::nullopt_t const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>();
  MEMORY[0x21CEAFEA0](v12, v11);
  _Unwind_Resume(a1);
}

void sub_217FDEE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a11 == 1)
  {
    if (a10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    }
  }

  std::make_unique[abi:ne200100]<MIL::IRPixelBufferValueTypeImpl,MIL::IRPixelFormatType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::nullopt_t const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>();
  MEMORY[0x21CEAFEA0](v12, v11);
  _Unwind_Resume(a1);
}

uint64_t MIL::IRPixelBufferValueType::GetRank(MIL::IRPixelBufferValueType *this)
{
  v1 = *(this + 1);
  if (*(v1 + 24) == 1)
  {
    return (*(*(v1 + 8) + 8) - **(v1 + 8)) >> 3;
  }

  else
  {
    return -1;
  }
}

uint64_t MIL::IRPixelBufferValueTypeImpl::GetBytesPerRow(MIL::IRPixelBufferValueTypeImpl *this)
{
  if (*(this + 48) != 1 || (result = *(this + 4)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "BytesPerRow is not set for this pixel buffer.");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  return result;
}

uint64_t MIL::IRPixelBufferValueType::TryGetBytesPerRow(MIL::IRPixelBufferValueType *this)
{
  v1 = *(this + 1);
  if (*(v1 + 48) == 1)
  {
    return *(v1 + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t MIL::IRPixelBufferValueTypeImpl::GetNumSlices(MIL::IRPixelBufferValueTypeImpl *this)
{
  if (*(this + 72) != 1 || (result = *(this + 7)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "NumSlices is not set for this pixel buffer.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t MIL::IRPixelBufferValueType::TryGetNumSlices(MIL::IRPixelBufferValueType *this)
{
  v1 = *(this + 1);
  if (*(v1 + 72) == 1)
  {
    return *(v1 + 56);
  }

  else
  {
    return 0;
  }
}

const void *MIL::IRPixelBufferValueTypeImpl::GetAttribute(uint64_t a1, uint64_t *a2)
{
  result = MIL::IRPixelBufferValueTypeImpl::TryGetAttribute(a1, a2);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Attribute does not exist.");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  return result;
}

const void *MIL::IRPixelBufferValueTypeImpl::TryGetAttribute(uint64_t a1, uint64_t *a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 80), a2);
  if (!v2)
  {
    return 0;
  }

  v4 = v2[5];
  v3 = v2[6];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v4;
}

const void **MIL::IRPixelBufferValueType::TryGetAttributeSharedPtr@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((*(a1 + 8) + 80), a2);
  if (result)
  {
    v5 = result[6];
    *a3 = result[5];
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t MIL::IRPixelBufferValueType::GetNumElements(MIL::IRPixelBufferValueType *this)
{
  if (MIL::GetNumPlanesForFormat(**(this + 1)) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Number of elements cannot be computed for multi-planar images yet.");
    v9 = off_278235F80;
    v10 = MEMORY[0x277D82610];
LABEL_8:
    __cxa_throw(exception, v9, v10);
  }

  v2 = *(*(this + 1) + 8);
  v3 = *v2;
  v4 = v2[1];
  v5 = 1;
  while (v3 != v4)
  {
    v6 = (*(**v3 + 16))();
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::range_error::range_error[abi:ne200100](exception, "Cannot determine number of elements in memory layout with unknown dimension.");
      v9 = off_278235F68;
      v10 = MEMORY[0x277D825E0];
      goto LABEL_8;
    }

    v5 *= (*(*v6 + 48))(v6);
    v3 += 8;
  }

  return v5;
}

void sub_217FDF374(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRCircularBufferValueType::~IRCircularBufferValueType(MIL::IRCircularBufferValueType *this)
{
  *this = &unk_2829E3108;
  std::unique_ptr<MIL::IRCircularBufferValueTypeImpl>::~unique_ptr[abi:ne200100](this + 1);
}

{
  *this = &unk_2829E3108;
  std::unique_ptr<MIL::IRCircularBufferValueTypeImpl>::~unique_ptr[abi:ne200100](this + 1);
}

{
  *this = &unk_2829E3108;
  std::unique_ptr<MIL::IRCircularBufferValueTypeImpl>::~unique_ptr[abi:ne200100](this + 1);

  JUMPOUT(0x21CEAFEA0);
}

void *MIL::IRCircularBufferValueType::IRCircularBufferValueType(void *this)
{
  *this = &unk_2829E3108;
  this[1] = 0;
  return this;
}

{
  *this = &unk_2829E3108;
  this[1] = 0;
  return this;
}

void *MIL::IRCircularBufferValueType::IRCircularBufferValueType(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829E3108;
  result[1] = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829E3108;
  result[1] = v2;
  return result;
}

void MIL::IRCircularBufferValueType::Make(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v6 = a5;
  std::make_unique[abi:ne200100]<MIL::IRCircularBufferValueTypeImpl,MIL::IRDataType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,MIL::IRProperty const*&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>();
}

void sub_217FDF5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<MIL::IRCircularBufferValueTypeImpl>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_217FDF6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::make_unique[abi:ne200100]<MIL::IRTensorBufferValueTypeImpl,MIL::IRDataType &,std::shared_ptr<std::vector<MIL::IRDimension const*>> &,std::shared_ptr<std::vector<MIL::IRProperty const*>> &,decltype(nullptr),std::shared_ptr<std::vector<MIL::IRProperty const*>> &,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>,0>(v12 + 8);
  MEMORY[0x21CEAFEA0](v11, v10);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<MIL::IRCircularBufferValueTypeImpl>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::unique_ptr<MIL::IRTensorBufferValueTypeImpl>::~unique_ptr[abi:ne200100]((v2 + 8));
    MEMORY[0x21CEAFEA0](v2, 0x60C405C6656D0);
  }

  return a1;
}

void MIL::IRCircularBufferValueType::Make(MIL::IRConstantDimension *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unsigned int a6, uint64_t a7)
{
  std::vector<MIL::IRDimension const*>::vector[abi:ne200100](v26, (a3[1] - *a3) >> 3);
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&v25, (a4[1] - *a4) >> 3);
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&__p, a5[1] - *a5);
  v14 = *a3;
  if (a3[1] != *a3)
  {
    v15 = 0;
    do
    {
      v16 = MIL::IRConstantDimension::Make(a1, *(v14 + 8 * v15));
      *(v26[0] + v15++) = v16;
      v14 = *a3;
    }

    while (v15 < (a3[1] - *a3) >> 3);
  }

  v17 = *a4;
  if (a4[1] != *a4)
  {
    v18 = 0;
    do
    {
      Int64Scalar = MIL::IRConstantProperty::MakeInt64Scalar(a1, *(v17 + 8 * v18));
      *(v25 + v18++) = Int64Scalar;
      v17 = *a4;
    }

    while (v18 < (a4[1] - *a4) >> 3);
  }

  v20 = *a5;
  if (a5[1] != *a5)
  {
    v21 = 0;
    do
    {
      UInt8Scalar = MIL::IRConstantProperty::MakeUInt8Scalar(a1, *(v20 + v21));
      *(__p + v21++) = UInt8Scalar;
      v20 = *a5;
    }

    while (v21 < a5[1] - *a5);
  }

  v23 = MIL::IRConstantProperty::MakeInt64Scalar(a1, a6);
  MIL::IRCircularBufferValueType::MakeWithShape(a1, a2, v26, &v25, &__p, v23, a7);
}

void sub_217FDF918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_217FDFB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::IsShapeFixedRank(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = 1;
  while (v1 != v2)
  {
    v4 = (*(**v1 + 32))() ^ 1;
    if ((v4 & 1) == 0 && (v3 & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "A shape may contain only one variadic dimension.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v3 = v4 & v3;
    v1 += 8;
  }

  return v3;
}

const void *MIL::IRCircularBufferValueTypeImpl::GetAttribute(uint64_t a1, uint64_t *a2)
{
  result = MIL::IRCircularBufferValueTypeImpl::TryGetAttribute(a1, a2);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Attribute does not exist.");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  return result;
}

const void *MIL::IRCircularBufferValueTypeImpl::TryGetAttribute(uint64_t a1, uint64_t *a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((*(a1 + 8) + 72), a2);
  if (!v2)
  {
    return 0;
  }

  v4 = v2[5];
  v3 = v2[6];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v4;
}

const void **MIL::IRCircularBufferValueTypeImpl::TryGetAttributeSharedPtr@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((*(a1 + 8) + 72), a2);
  if (result)
  {
    v5 = result[6];
    *a3 = result[5];
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t MIL::IRCircularBufferValueType::GetNumElements(MIL::IRCircularBufferValueType *this)
{
  v1 = *(*(*(this + 1) + 8) + 8);
  v2 = *v1;
  v3 = v1[1];
  v4 = 1;
  while (v2 != v3)
  {
    v5 = (*(**v2 + 16))();
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::range_error::range_error[abi:ne200100](exception, "Cannot determine number of elements in memory layout with unknown dimension.");
      __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
    }

    v4 *= (*(*v5 + 48))(v5);
    v2 += 8;
  }

  return v4;
}

void sub_217FDFF64(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::IRCircularBufferValueType::GetRank(MIL::IRCircularBufferValueType *this)
{
  v1 = *(*(*(this + 1) + 8) + 8);
  v2 = (v1[1] - *v1) >> 3;
  {
    return v2;
  }

  else
  {
    return -1;
  }
}

void MIL::IRStateValueType::~IRStateValueType(MIL::IRStateValueType *this)
{
  v2 = *(this + 1);
  *this = &unk_2829E3158;
  *(this + 1) = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0](v2, 0x60C4044C4A2DFLL);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_2829E3158;
  *(this + 1) = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0](v2, 0x60C4044C4A2DFLL);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_2829E3158;
  *(this + 1) = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0](v2, 0x60C4044C4A2DFLL);
  }

  JUMPOUT(0x21CEAFEA0);
}

void *MIL::IRStateValueType::IRStateValueType(void *this)
{
  *this = &unk_2829E3158;
  this[1] = 0;
  return this;
}

{
  *this = &unk_2829E3158;
  this[1] = 0;
  return this;
}

void *MIL::IRStateValueType::IRStateValueType(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829E3158;
  result[1] = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2829E3158;
  result[1] = v2;
  return result;
}

void sub_217FE0358(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_217FE047C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::IRConstantPropertyImpl::~IRConstantPropertyImpl(MIL::IRConstantPropertyImpl *this)
{
  v2 = *(this + 2);
  if (v2 != -1)
  {
    (off_2829E3380[v2])(&v3, this);
  }

  *(this + 2) = -1;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_10unique_ptrIN12_GLOBAL__N_115PropertyStorageIxEENS_14default_deleteISB_EEEENS8_INSA_IhEENSC_ISF_EEEENS8_INSA_IyEENSC_ISI_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSM_1EJSE_SH_SK_EEEEEEDcSO_DpT0_(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    JUMPOUT(0x21CEAFEA0);
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_10unique_ptrIN12_GLOBAL__N_115PropertyStorageIxEENS_14default_deleteISB_EEEENS8_INSA_IhEENSC_ISF_EEEENS8_INSA_IyEENSC_ISI_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSM_1EJSE_SH_SK_EEEEEEDcSO_DpT0_(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    JUMPOUT(0x21CEAFEA0);
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_10unique_ptrIN12_GLOBAL__N_115PropertyStorageIxEENS_14default_deleteISB_EEEENS8_INSA_IhEENSC_ISF_EEEENS8_INSA_IyEENSC_ISI_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSM_1EJSE_SH_SK_EEEEEEDcSO_DpT0_(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    JUMPOUT(0x21CEAFEA0);
  }

  return result;
}

void anonymous namespace::IRTensorValueTypeImpl::~IRTensorValueTypeImpl(_anonymous_namespace_::IRTensorValueTypeImpl *this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(this + 32);
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(this + 32);
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x21CEAFEA0);
}

const void *anonymous namespace::IRTensorValueTypeImpl::TryGetAttribute(uint64_t a1, uint64_t *a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 32), a2);
  if (!v2)
  {
    return 0;
  }

  v4 = v2[5];
  v3 = v2[6];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v4;
}

const void **anonymous namespace::IRTensorValueTypeImpl::TryGetAttributeSharedPtr@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 32), a2);
  if (result)
  {
    v5 = result[6];
    *a3 = result[5];
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void sub_217FE0748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<std::vector<MIL::IRDimension const*>>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<std::vector<MIL::IRDimension const*> *,std::shared_ptr<std::vector<MIL::IRDimension const*>>::__shared_ptr_default_delete<std::vector<MIL::IRDimension const*>,std::vector<MIL::IRDimension const*>>,std::allocator<std::vector<MIL::IRDimension const*>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<std::vector<MIL::IRDimension const*> *,std::shared_ptr<std::vector<MIL::IRDimension const*>>::__shared_ptr_default_delete<std::vector<MIL::IRDimension const*>,std::vector<MIL::IRDimension const*>>,std::allocator<std::vector<MIL::IRDimension const*>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<std::vector<MIL::IRDimension const*>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x21CEAFEA0);
  }
}

uint64_t *std::vector<MIL::Bf16>::vector[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_217FE08A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<MIL::Fp8E5M2>::vector[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_217FE0918(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<MIL::Fp8E4M3FN>::vector[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_217FE098C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<MIL::Fp16>::vector[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_217FE0A04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a6);
  }

  return result;
}

void sub_217FE0A8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned char>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>>(uint64_t result, void *a2, int a3, void *a4, int a5)
{
  v5 = *(result + 8);
  while (a2 != a4 || a3 != a5)
  {
    *v5++ = (*a2 >> a3) & 1;
    a2 += a3 == 63;
    if (a3 == 63)
    {
      a3 = 0;
    }

    else
    {
      ++a3;
    }
  }

  *(result + 8) = v5;
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
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

void sub_217FE0D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::shared_ptr<MIL::AbstractConstExpr const>::shared_ptr[abi:ne200100]<MIL::AbstractConstExpr const,std::default_delete<MIL::AbstractConstExpr const>,0>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if (v2)
  {
    operator new();
  }

  a1[1] = 0;
  *a2 = 0;
  return a1;
}

void std::__shared_ptr_pointer<MIL::AbstractConstExpr const *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::AbstractConstExpr const *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::AbstractConstExpr const *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_217FE0F90(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_217FE10B0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_217FE11D0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_217FE12F0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_217FE1410(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_217FE1530(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_217FE1650(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_217FE1770(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_217FE1890(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_217FE19B0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_217FE1AD0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_217FE1BF0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_217FE1D10(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_217FE1E30(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_217FE1F50(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<MIL::Fp8E5M2>::__init_with_size[abi:ne200100]<MIL::Fp8E5M2 const*,MIL::Fp8E5M2 const*>(uint64_t *result, char *a2, char *a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217FE1FE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<MIL::Fp8E4M3FN>::__init_with_size[abi:ne200100]<MIL::Fp8E4M3FN const*,MIL::Fp8E4M3FN const*>(uint64_t *result, char *a2, char *a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217FE2058(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217FE20CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(uint64_t *result, __int16 *a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217FE2140(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217FE21B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<short>::__init_with_size[abi:ne200100]<short const*,short const*>(uint64_t *result, __int16 *a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217FE2228(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217FE229C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_217FE2320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void anonymous namespace::IRTupleValueTypeImpl::~IRTupleValueTypeImpl(_anonymous_namespace_::IRTupleValueTypeImpl *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t *std::vector<unsigned char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_217FE253C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<MIL::IRDimension const*>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_217FE25B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<std::vector<MIL::IRDimension const*>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E3678;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void std::__shared_ptr_emplace<std::vector<MIL::IRDimension const*>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<std::vector<MIL::IRProperty const*>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E36C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void std::__shared_ptr_emplace<std::vector<MIL::IRProperty const*>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

uint64_t MIL::IRTensorBufferValueTypeImpl::IRTensorBufferValueTypeImpl(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 32) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a1 + 48) = a5;
  *(a1 + 56) = *a6;
  *a6 = 0;
  *(a6 + 8) = 0;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a1 + 72, a7);
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  if (v12)
  {
    if (v13)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Strides and row-alignment cannot be specified simulataneously for tensor_buffers.");
    }

    else
    {
      if (*(*(a1 + 8) + 8) - **(a1 + 8) == v12[1] - *v12)
      {
        goto LABEL_4;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Length of shape and strides must be equal.");
    }

LABEL_33:
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Row-alignment-in-bytes cannot be a variadic unknown property for tensor_buffers.");
    goto LABEL_33;
  }

LABEL_4:
  v14 = *(*(a1 + 8) + 8) - **(a1 + 8);
  v15 = *(a1 + 56);
  v16 = *v15;
  v17 = v15[1];
  v18 = v17 - *v15;
  if (v14 != v18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Length of shape and interleaveFactors must be equal.");
    goto LABEL_33;
  }

  {
    v20 = v18 >> 3;
    if (v17 == v16)
    {
      v29 = 1;
    }

    else
    {
      v21 = 0;
      if (v20 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = v18 >> 3;
      }

      do
      {
        v23 = v16[v21];
        {
          v32 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v32, "Interleave factors should be scalars.");
          v32->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v32, off_278235F80, MEMORY[0x277D82610]);
        }

        ++v21;
      }

      while (v22 != v21);
      v24 = 0;
      v25 = 0;
      do
      {
        v26 = MIL::IRProperty::AsConstant(v16[v24]);
        if (*MIL::IRConstantPropertyImpl::GetValue<unsigned char>(v26[1]) == 1)
        {
          ++v25;
        }

        ++v24;
        v27 = *(a1 + 56);
        v16 = *v27;
        v28 = *(v27 + 8) - *v27;
      }

      while (v24 < v28 >> 3);
      v20 = v28 >> 3;
      v29 = v25 + 1;
    }

    if (v29 < v20)
    {
      v33 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v33, "Found multiple interleave factors that are not 1.");
      v33->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v33, off_278235F80, MEMORY[0x277D82610]);
    }
  }

  return a1;
}