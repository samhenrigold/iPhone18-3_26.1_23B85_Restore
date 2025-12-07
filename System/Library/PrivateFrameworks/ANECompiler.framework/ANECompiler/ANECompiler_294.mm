uint64_t std::__function::__value_func<void ()(std::optional<ZinIrBatchToSpaceUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void MILOpConverter::Crop(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v42 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(v31);
  if (*(v31[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, *v31[0], v31[0][1]);
  }

  else
  {
    v5 = *v31[0];
    v29.__r_.__value_.__r.__words[2] = v31[0][2];
    *&v29.__r_.__value_.__l.__data_ = v5;
  }

  *&v25[0] = v31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v25);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  v26 = vdupq_n_s64(1uLL);
  v27 = v26;
  v28 = 1;
  std::string::basic_string[abi:ne200100]<0>(v31, "x");
  ParameterType = MIL::IROperation::TryGetParameterType();
  v10 = MIL::IRValueType::AsTensorType(ParameterType);
  v11 = (*(*v10 + 96))(v10);
  *(&v25[0] + 1) = 0;
  *&v25[1] = 0;
  *&v25[0] = v25 + 8;
  ToZinTensorDimensions(a3, v11, &v26, v25);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(v25, *(&v25[0] + 1));
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  memset(v25, 0, sizeof(v25));
  std::string::basic_string[abi:ne200100]<0>(&v41, "x");
  v31[0] = 0;
  v31[1] = 0;
  v32 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v31, &v41, &v42, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v25, a1, v31, a3, v24);
  __p.__begin_ = v31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (SHIBYTE(v41.__end_cap_.__value_) < 0)
  {
    operator delete(v41.__begin_);
  }

  memset(&v41, 0, sizeof(v41));
  memset(&__p, 0, sizeof(__p));
  std::string::basic_string[abi:ne200100]<0>(v31, "crop_width");
  RetrieveRequiredValue<int>(a1, v31, &v41, 0);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v31, "crop_height");
  RetrieveRequiredValue<int>(a1, v31, &__p, 0);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  v12 = v24[0];
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v29.__r_.__value_.__l.__size_;
  }

  v14 = v31;
  std::string::basic_string[abi:ne200100](v31, size + 9);
  if (v32 < 0)
  {
    v14 = v31[0];
  }

  if (size)
  {
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v29;
    }

    else
    {
      v15 = v29.__r_.__value_.__r.__words[0];
    }

    memmove(v14, v15, size);
  }

  strcpy(v14 + size, "__@view_x");
  v33 = *v41.__begin_;
  v34 = v27.i32[2] - (v33 + v41.__begin_[1]);
  v35 = 0x400000001;
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v29.__r_.__value_.__l.__size_;
  }

  v17 = std::string::basic_string[abi:ne200100](v36, v16 + 9);
  if (v37 >= 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = v36[0];
  }

  if (v16)
  {
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v29;
    }

    else
    {
      v19 = v29.__r_.__value_.__r.__words[0];
    }

    memmove(v18, v19, v16);
  }

  strcpy(v18 + v16, "__@view_y");
  v38 = *__p.__begin_;
  v39 = v27.i32[0] - (v38 + __p.__begin_[1]);
  v40 = 0x300000001;
  memset(v21, 0, sizeof(v21));
  std::vector<ZinMILUnitBuilder::Crop1DInfo>::__init_with_size[abi:ne200100]<ZinMILUnitBuilder::Crop1DInfo const*,ZinMILUnitBuilder::Crop1DInfo const*>(v21, v31, &v41, 2uLL);
  ZinMILUnitBuilder::InsertCropND(v12, v21, v22);
  v30 = v21;
  std::vector<ZinMILUnitBuilder::Crop1DInfo>::__destroy_vector::operator()[abi:ne200100](&v30);
  for (i = 0; i != -10; i -= 5)
  {
    if (*(&v37 + i * 8) < 0)
    {
      operator delete(v36[i]);
    }
  }

  ZinMILUnitBuilder::Finalize(v25, a3, a1, &v29.__r_.__value_.__l.__data_, v8, 1, 1);
  v31[0] = v22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v31);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v41.__begin_)
  {
    v41.__end_ = v41.__begin_;
    operator delete(v41.__begin_);
  }

  v31[0] = v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v31);
  v31[0] = &v25[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v31);
  v31[0] = v25;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v31);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }
}

void sub_1A7473AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  a21 = v38 - 176;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void MILOpConverter::Fill(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  memset(&v10, 0, sizeof(v10));
  std::string::basic_string[abi:ne200100]<0>(__p, "shape");
  RetrieveRequiredValue<int>(a1, __p, &v10, 0);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = 0;
  v7 = 0;
  v5 = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v5, v10.__begin_, v10.__end_, v10.__end_ - v10.__begin_);
  MILOpConverter::FillImpl(a1, &v5, a3);
  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  if (v10.__begin_)
  {
    v10.__end_ = v10.__begin_;
    operator delete(v10.__begin_);
  }
}

void sub_1A7473CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  v20 = *(v18 - 40);
  if (v20)
  {
    *(v18 - 32) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

void MILOpConverter::FillImpl(MIL::IROperation *a1, uint64_t *a2, uint64_t **a3)
{
  v49 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(__p);
  if (*(__p[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v45, *__p[0], *(__p[0] + 1));
  }

  else
  {
    v6 = *__p[0];
    v45.__r_.__value_.__r.__words[2] = *(__p[0] + 2);
    *&v45.__r_.__value_.__l.__data_ = v6;
  }

  *&v15[0] = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v15);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v8 = MIL::IRValueType::AsTensorType(OutputType);
  v9 = (*(*v8 + 88))(v8);
  v43[0] = vdupq_n_s64(1uLL);
  v43[1] = v43[0];
  v44 = 1;
  __p[1] = 0;
  v19[0] = 0;
  __p[0] = &__p[1];
  ToZinTensorDimensions(a3, a2, v43, __p);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(__p, __p[1]);
  v42 = 0.0;
  std::string::basic_string[abi:ne200100]<0>(__p, "value");
  RetrieveRequiredValue<float>(a1, __p, &v42, 0);
  if (SHIBYTE(v19[0]) < 0)
  {
    operator delete(__p[0]);
  }

  v41 = 0;
  ToZinTensorFormat(v9, &v41);
  LOWORD(__p[0]) = MIL::Fp16::FromFloat(v10, v42);
  std::vector<MIL::Fp16>::vector[abi:ne200100](v40, 1, __p);
  v21 = 0;
  *v19 = 0u;
  v20 = 0u;
  *__p = 0u;
  *&v11 = -1;
  *(&v11 + 1) = -1;
  v22 = v11;
  v23 = v11;
  v24 = -1;
  v25 = 0;
  v26 = 0;
  v29 = -1;
  v27 = v11;
  v28[0] = v11;
  *(v28 + 12) = v11;
  v30 = 0;
  memset(v31, 0, 28);
  v31[7] = 5;
  v32 = -1;
  LOBYTE(v33) = 0;
  v39 = 0;
  v16[0] = vdupq_n_s64(1uLL);
  v16[1] = v16[0];
  v17 = 1;
  MILOpConverter::CreateConstInfo<MIL::Fp16>(a1, a3, v40, &v41, v16, __p);
  MILOpConverter::AddConstInfo(a3, __p, v12);
  memset(v15, 0, sizeof(v15));
  if (SHIBYTE(v19[0]) < 0)
  {
    std::string::__init_copy_ctor_external(&v48, __p[0], __p[1]);
  }

  else
  {
    *&v48.__r_.__value_.__l.__data_ = *__p;
    v48.__r_.__value_.__r.__words[2] = v19[0];
  }

  memset(v13, 0, sizeof(v13));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v13, &v48, &v49, 1uLL);
  v47[0] = &unk_1F1A3C578;
  v47[1] = v43;
  v47[3] = v47;
  ZinMILUnitBuilder::CreateUnit<ZinIrBroadcastUnitInfo>(v13, v47, v14);
  v46 = v14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v46);
  std::__function::__value_func<void ()(std::optional<ZinIrBroadcastUnitInfo> &)>::~__value_func[abi:ne200100](v47);
  v46 = v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v46);
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  ZinMILUnitBuilder::Finalize(v15, a3, a1, &v45.__r_.__value_.__l.__data_, v9, 1, 1);
  v13[0] = &v15[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v13);
  v13[0] = v15;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v13);
  if (v39 == 1)
  {
    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }
  }

  if (*&v31[1])
  {
    *&v31[3] = *&v31[1];
    operator delete(*&v31[1]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[1]);
  }

  if (SHIBYTE(v19[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (v40[0])
  {
    v40[1] = v40[0];
    operator delete(v40[0]);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }
}

void sub_1A74740FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  ZinMILUnitBuilder::~ZinMILUnitBuilder(&a15);
  ZinIrIOInfo::~ZinIrIOInfo(&a27);
  v29 = *(v27 - 224);
  if (v29)
  {
    *(v27 - 216) = v29;
    operator delete(v29);
  }

  if (*(v27 - 121) < 0)
  {
    operator delete(*(v27 - 144));
  }

  _Unwind_Resume(a1);
}

void MILOpConverter::FillLike(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "ref_tensor");
  ParameterType = MIL::IROperation::GetParameterType();
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  v7 = (*(*v6 + 96))(v6);
  GetMILShapeAsVector(v7, &v13);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  v9 = 0;
  v10 = 0;
  v8 = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v8, v13, v14, (v14 - v13) >> 2);
  MILOpConverter::FillImpl(a1, &v8, a3);
  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }
}

void sub_1A74742B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  v20 = *(v18 - 40);
  if (v20)
  {
    *(v18 - 32) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

void ZinMILUnitBuilder::CreateUnit<ZinIrBroadcastUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  LOBYTE(v10[0]) = 0;
  v12 = 0;
  v8 = *(a5 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, v10);
  if (v12)
  {
    operator new();
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a7, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (v12 == 1)
  {
    v10[0] = &unk_1F1A33DF0;
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v11);
    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A74745B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    (*(*v16 + 8))(v16, a2, a3, a4, a5, a6, a7, a8);
  }

  std::optional<ZinIrBroadcastUnitInfo>::~optional(&a16);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<MIL::Fp16>::vector[abi:ne200100](uint64_t *a1, uint64_t a2, __int16 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1A7474844(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrBroadcastUnitInfo::ZinIrBroadcastUnitInfo(ZinIrBroadcastUnitInfo *this, const ZinIrBroadcastUnitInfo *a2)
{
  *this = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  v5 = *(a2 + 8);
  *(this + 5) = 0;
  *(this + 8) = v5;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 5, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 4) = *(a2 + 4);
  *this = &unk_1F1A33DF0;
  std::unordered_map<ZinIrDimension,unsigned long>::unordered_map(this + 80, a2 + 80);
}

uint64_t std::__shared_ptr_pointer<ZinIrBroadcastUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrBroadcastUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<ZinIrBroadcastUnitInfo>::~optional(uint64_t a1)
{
  if (*(a1 + 120) == 1)
  {
    *a1 = &unk_1F1A33DF0;
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(a1 + 80);
    ZinIrUnitInfo::~ZinIrUnitInfo(a1);
  }

  return a1;
}

uint64_t std::__function::__func<MILOpConverter::FillImpl(MIL::IROperation const&,std::string const&,std::vector<int>,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::FillImpl(MIL::IROperation const&,std::string const&,std::vector<int>,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrBroadcastUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3C578;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MILOpConverter::FillImpl(MIL::IROperation const&,std::string const&,std::vector<int>,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::FillImpl(MIL::IROperation const&,std::string const&,std::vector<int>,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrBroadcastUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  memset(&v11[1], 0, 24);
  v12 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = -1;
  v11[0] = &unk_1F1A33DF0;
  memset(v16, 0, sizeof(v16));
  v17 = 1065353216;
  std::optional<ZinIrBroadcastUnitInfo>::operator=[abi:ne200100]<ZinIrBroadcastUnitInfo,void>(a2, v11);
  v11[0] = &unk_1F1A33DF0;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v16);
  ZinIrUnitInfo::~ZinIrUnitInfo(v11);
  *(a2 + 32) = 19;
  v4 = **(a1 + 8);
  v10 = 0;
  v11[0] = &v10;
  *(std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension&&>,std::tuple<>>((a2 + 80), &v10, &std::piecewise_construct, v11) + 24) = v4;
  v5 = *(*(a1 + 8) + 32);
  v10 = 1;
  v11[0] = &v10;
  *(std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension&&>,std::tuple<>>((a2 + 80), &v10, &std::piecewise_construct, v11) + 24) = v5;
  v6 = *(*(a1 + 8) + 8);
  v10 = 2;
  v11[0] = &v10;
  *(std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension&&>,std::tuple<>>((a2 + 80), &v10, &std::piecewise_construct, v11) + 24) = v6;
  v7 = *(*(a1 + 8) + 16);
  v10 = 3;
  v11[0] = &v10;
  *(std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension&&>,std::tuple<>>((a2 + 80), &v10, &std::piecewise_construct, v11) + 24) = v7;
  v8 = *(*(a1 + 8) + 24);
  v10 = 4;
  v11[0] = &v10;
  result = std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension&&>,std::tuple<>>((a2 + 80), &v10, &std::piecewise_construct, v11);
  *(result + 24) = v8;
  return result;
}

void sub_1A7474C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ZinIrBroadcastUnitInfo::~ZinIrBroadcastUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::FillImpl(MIL::IROperation const&,std::string const&,std::vector<int>,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::FillImpl(MIL::IROperation const&,std::string const&,std::vector<int>,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrBroadcastUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<ZinIrBroadcastUnitInfo>::operator=[abi:ne200100]<ZinIrBroadcastUnitInfo,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120) == 1)
  {
    std::string::operator=((a1 + 8), (a2 + 8));
    *(a1 + 32) = *(a2 + 32);
    if (a1 != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    }

    *(a1 + 64) = *(a2 + 64);
    std::__hash_table<std::__hash_value_type<ZinDependencyOffsetDim,long>,std::__unordered_map_hasher<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::hash<ZinDependencyOffsetDim>,std::equal_to<ZinDependencyOffsetDim>,true>,std::__unordered_map_equal<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::equal_to<ZinDependencyOffsetDim>,std::hash<ZinDependencyOffsetDim>,true>,std::allocator<std::__hash_value_type<ZinDependencyOffsetDim,long>>>::__move_assign(a1 + 80, (a2 + 80));
  }

  else
  {
    *a1 = &unk_1F1A2EA30;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v4 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v4;
    }

    v5 = *(a2 + 32);
    *(a1 + 40) = 0;
    *(a1 + 32) = v5;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    *(a1 + 64) = *(a2 + 64);
    *a1 = &unk_1F1A33DF0;
    std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::__hash_table(a1 + 80, (a2 + 80));
    *(a1 + 120) = 1;
  }

  return a1;
}

void sub_1A7474E18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrBroadcastUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void MILOpConverter::Cond(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v53[4] = *MEMORY[0x1E69E9840];
  v4 = a3[100];
  if ((*(v4 + 465) & 1) == 0 && *(v4 + 652) == 1)
  {
    ZinAssertImpl("Nested call and cond_if/while_loop is not supported", a2);
  }

  memset(v45, 0, sizeof(v45));
  std::string::basic_string[abi:ne200100]<0>(&v51, "pred");
  memset(v49, 0, 24);
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v49, &v51, v52, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v45, a1, v49, a3, &v44);
  v42 = v49;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v42);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 200))(&v42);
  v5 = v42;
  if (*(v42 + 23) >= 0)
  {
    v6 = *(v42 + 23);
  }

  else
  {
    v6 = v42[1];
  }

  v7 = &v41;
  std::string::basic_string[abi:ne200100](&v41, v6 + 8);
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v41.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(v5 + 23) >= 0)
    {
      v8 = v5;
    }

    else
    {
      v8 = *v5;
    }

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, "__@cond_");
  std::to_string(&v40, a3[2]);
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v40;
  }

  else
  {
    v9 = v40.__r_.__value_.__r.__words[0];
  }

  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v40.__r_.__value_.__l.__size_;
  }

  v11 = std::string::append(&v41, v9, size);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v53[0] = &unk_1F1A3C6F8;
  v53[3] = v53;
  ZinMILUnitBuilder::CreateUnit<ZinIrUnitInfo>(&v44, v53, v49);
  std::vector<std::string>::__vdeallocate(&v44);
  v44 = *v49;
  memset(v49, 0, 24);
  v39.__begin_ = v49;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v39);
  std::__function::__value_func<void ()(std::optional<ZinIrUnitInfo> &)>::~__value_func[abi:ne200100](v53);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  v13 = (*(*a1 + 208))(a1);
  v14 = a3[41];
  if (*(v14 - 49) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, *(v14 - 72), *(v14 - 64));
  }

  else
  {
    v15 = *(v14 - 72);
    v41.__r_.__value_.__r.__words[2] = *(v14 - 56);
    *&v41.__r_.__value_.__l.__data_ = v15;
  }

  memset(&v40, 0, sizeof(v40));
  v16 = **v13;
  if ((*v13)[1] - v16 != 32)
  {
  }

  v17 = *v16;
  v18 = (*(**v16 + 56))(*v16);
  if (**v18 == *(*v18 + 8))
  {
    ZinAssertImpl("MIL syntax error: Condition true block should have at least one operation.");
  }

  *v49 = 0;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v49[8], v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v49[8] = v41;
  }

  memset(&v39, 0, sizeof(v39));
  std::vector<std::pair<MILBasicBlock::EdgeType,std::string>>::__init_with_size[abi:ne200100]<std::pair<MILBasicBlock::EdgeType,std::string> const*,std::pair<MILBasicBlock::EdgeType,std::string> const*>(&v39, v49, &v50, 1uLL);
  MILFunctionInfo::AddBasicBlock(a3, &v39, &v51);
  v37[0] = &v39;
  std::vector<std::pair<BOOL,std::string>>::__destroy_vector::operator()[abi:ne200100](v37);
  if ((v49[31] & 0x80000000) != 0)
  {
    operator delete(*&v49[8]);
  }

  v39.__end_ = 0;
  v39.__end_cap_.__value_ = 0;
  v39.__begin_ = &v39.__end_;
  v19 = (*(*v17 + 56))(v17);
  v20 = ValidateOpList(v19, a3, &v39);
  v21 = a3[41];
  *v49 = 2;
  if (*(v21 - 49) < 0)
  {
    std::string::__init_copy_ctor_external(&v49[8], *(v21 - 72), *(v21 - 64));
  }

  else
  {
    v22 = *(v21 - 72);
    *&v49[24] = *(v21 - 56);
    *&v49[8] = v22;
  }

  std::vector<std::pair<MILBasicBlock::EdgeType,std::string>>::push_back[abi:ne200100](&v40.__r_.__value_.__l.__data_, v49);
  if ((v49[31] & 0x80000000) != 0)
  {
    operator delete(*&v49[8]);
  }

  if ((v20 & 1) == 0)
  {
    ZinAssertImpl("ANE internal validation error: Cannot convert true block in condition.");
  }

  std::__tree<std::__value_type<unsigned long long,ValidateEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ValidateEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ValidateEntry>>>::destroy(&v39, v39.__end_->__r_.__value_.__r.__words);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  v23 = *(**v13 + 16);
  v24 = (*(*v23 + 56))(v23);
  if (**v24 == *(*v24 + 8))
  {
    *v49 = 1;
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v49[8], v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
    }

    else
    {
      *&v49[8] = v41;
    }

    std::vector<std::pair<MILBasicBlock::EdgeType,std::string>>::push_back[abi:ne200100](&v40.__r_.__value_.__l.__data_, v49);
    if ((v49[31] & 0x80000000) != 0)
    {
      v29 = *&v49[8];
      goto LABEL_64;
    }
  }

  else
  {
    *v49 = 1;
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v49[8], v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
    }

    else
    {
      *&v49[8] = v41;
    }

    memset(&v39, 0, sizeof(v39));
    std::vector<std::pair<MILBasicBlock::EdgeType,std::string>>::__init_with_size[abi:ne200100]<std::pair<MILBasicBlock::EdgeType,std::string> const*,std::pair<MILBasicBlock::EdgeType,std::string> const*>(&v39, v49, &v50, 1uLL);
    MILFunctionInfo::AddBasicBlock(a3, &v39, &v51);
    v37[0] = &v39;
    std::vector<std::pair<BOOL,std::string>>::__destroy_vector::operator()[abi:ne200100](v37);
    if ((v49[31] & 0x80000000) != 0)
    {
      operator delete(*&v49[8]);
    }

    v39.__end_ = 0;
    v39.__end_cap_.__value_ = 0;
    v39.__begin_ = &v39.__end_;
    v25 = (*(*v23 + 56))(v23);
    v26 = ValidateOpList(v25, a3, &v39);
    v27 = a3[41];
    *v49 = 2;
    if (*(v27 - 49) < 0)
    {
      std::string::__init_copy_ctor_external(&v49[8], *(v27 - 72), *(v27 - 64));
    }

    else
    {
      v28 = *(v27 - 72);
      *&v49[24] = *(v27 - 56);
      *&v49[8] = v28;
    }

    std::vector<std::pair<MILBasicBlock::EdgeType,std::string>>::push_back[abi:ne200100](&v40.__r_.__value_.__l.__data_, v49);
    if ((v49[31] & 0x80000000) != 0)
    {
      operator delete(*&v49[8]);
    }

    if ((v26 & 1) == 0)
    {
      ZinAssertImpl("ANE internal validation error: Cannot convert false block in condition.");
    }

    std::__tree<std::__value_type<unsigned long long,ValidateEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ValidateEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ValidateEntry>>>::destroy(&v39, v39.__end_->__r_.__value_.__r.__words);
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      v29 = v51.__r_.__value_.__r.__words[0];
LABEL_64:
      operator delete(v29);
    }
  }

  v30 = (*(*v17 + 88))(v17);
  v31 = (*(*v23 + 88))(v23);
  v32 = v30[1] - *v30;
  if (v32 != v31[1] - *v31)
  {
    ZinAssertImpl("MIL Syntax error: True and False blocks must have the same number of outputs.");
  }

  if (v32 != v43 - v42)
  {
    ZinAssertImpl("MIL Syntax error: Condition must have the same number of outputs as True/False blocks.");
  }

  MILFunctionInfo::AddBasicBlock(a3, &v40, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v51.__r_.__value_.__r.__words[0] = a1;
  v51.__r_.__value_.__l.__size_ = a3;
  v51.__r_.__value_.__r.__words[2] = v30;
  v52[0] = v31;
  v52[1] = &v42;
  MILOpConverter::Cond(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1::operator()(&v51, v45, 0);
  if (0xAAAAAAAAAAAAAAABLL * ((v43 - v42) >> 3) >= 2)
  {
    v33 = 2;
    v34 = 1;
    do
    {
      v50 = 0u;
      memset(v49, 0, sizeof(v49));
      std::string::basic_string[abi:ne200100]<0>(v47, "pred");
      memset(v37, 0, sizeof(v37));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v37, v47, v49, 1uLL);
      ZinMILUnitBuilder::DeclareOperationInputs(v49, a1, v37, a3, &v39);
      std::vector<std::string>::__vdeallocate(&v44);
      v44 = v39;
      memset(&v39, 0, sizeof(v39));
      v46 = &v39;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v46);
      v46 = v37;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v46);
      if (v48 < 0)
      {
        operator delete(v47[0]);
      }

      MILOpConverter::Cond(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1::operator()(&v51, v49, v34);
      v39.__begin_ = &v49[24];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v39);
      v39.__begin_ = v49;
      std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v39);
      v34 = v33;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v43 - v42) >> 3) > v33++);
  }

  *v49 = &v40;
  std::vector<std::pair<BOOL,std::string>>::__destroy_vector::operator()[abi:ne200100](v49);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  *v49 = &v42;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v49);
  *v49 = &v44;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v49);
  *v49 = &v45[1] + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v49);
  *v49 = v45;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v49);
}

void sub_1A74757BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  *(v51 - 224) = &a20;
  std::vector<std::pair<BOOL,std::string>>::__destroy_vector::operator()[abi:ne200100]((v51 - 224));
  if (a31 < 0)
  {
    operator delete(__p);
  }

  *(v51 - 224) = &a32;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v51 - 224));
  *(v51 - 224) = &a35;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v51 - 224));
  ZinMILUnitBuilder::~ZinMILUnitBuilder(&a39);
  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::CreateUnit<ZinIrUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  LOBYTE(v10[0]) = 0;
  v11 = 0;
  v8 = *(a5 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, v10);
  if (v11)
  {
    operator new();
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a7, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (v11 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A7475C10(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v25)
  {
    (*(*v25 + 8))(v25, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a25 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(&a15);
  }

  _Unwind_Resume(exception_object);
}

const void **std::vector<std::pair<MILBasicBlock::EdgeType,std::string>>::push_back[abi:ne200100](const void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<MILBasicBlock::EdgeType,std::string>>>(result, v11);
    }

    v12 = 32 * v8;
    *v12 = *a2;
    v13 = *(a2 + 8);
    *(v12 + 24) = *(a2 + 24);
    *(v12 + 8) = v13;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v7 = 32 * v8 + 32;
    v14 = result[1] - *result;
    v15 = (v12 - v14);
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::pair<MILBasicBlock::EdgeType,std::string>>::~__split_buffer(v18);
  }

  else
  {
    *v4 = *a2;
    v6 = *(a2 + 8);
    *(v4 + 3) = *(a2 + 24);
    *(v4 + 8) = v6;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v7 = (v4 + 32);
  }

  v3[1] = v7;
  return result;
}

void MILOpConverter::Cond(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1::operator()(void *a1, __int128 **a2, uint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = (*(**a1 + 176))(*a1);
  Type = MIL::IRNamedValueType::GetType(*(*v6 + 16 * a3));
  v8 = MIL::IRValueType::AsTensorType(Type);
  v9 = (*(*v8 + 88))(v8);
  MILFunctionInfo::GetTensorName(a1[1], (*a1[2] + 24 * a3), 0, &v36);
  MILFunctionInfo::GetTensorName(a1[1], (*a1[3] + 24 * a3), 0, &v35);
  *&__str = &v36;
  *(&__str + 1) = &v35;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer * const*,ZinIrOpLayer * const*>(&v32, &__str, __str_16, 2uLL);
  v10 = v32;
  v11 = v33;
  if (v32 != v33)
  {
    do
    {
      if (std::__tree<std::__value_type<std::string,ZinIOBarInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIOBarInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIOBarInfo>>>::__count_unique<std::string>(a1[1], *v10))
      {
        v12 = *std::map<std::string,std::string>::at(a1[1], *v10);
        GetMILOperationInfo(&v29, v12);
        if (v31 < 0)
        {
          if (__p[1] != 5)
          {
            goto LABEL_13;
          }

          v13 = __p[0];
        }

        else
        {
          v13 = __p;
          if (v31 != 5)
          {
            goto LABEL_14;
          }
        }

        v14 = *v13;
        v15 = *(v13 + 4);
        if (v14 == 1936617315 && v15 == 116)
        {
          v40 = 0;
          memset(__str_16, 0, sizeof(__str_16));
          __str = 0u;
          *&v17 = -1;
          *(&v17 + 1) = -1;
          v41 = v17;
          v42 = v17;
          v43 = -1;
          v44 = 0;
          v45 = 0;
          v48 = -1;
          v46 = v17;
          v47[0] = v17;
          *(v47 + 12) = v17;
          v49 = 0;
          memset(v50, 0, 28);
          v50[7] = 5;
          v51 = -1;
          LOBYTE(v52) = 0;
          v58 = 0;
          v18 = a1[1];
          std::string::basic_string[abi:ne200100]<0>(v27, "val");
          LOBYTE(v24) = 0;
          v26 = 0;
          v20 = MILOpConverter::CreateConstInfo(v12, v18, v27, 0, &__str, &v24);
          if (v28 < 0)
          {
            operator delete(v27[0]);
          }

          if ((v20 & 1) == 0)
          {
            v22 = &v36;
            if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v22 = v36.__r_.__value_.__r.__words[0];
            }

            ZinAssertImpl("ANEC internal error: Could not create constant %s", v22);
          }

          MILOpConverter::AddConstInfo(a1[1], &__str, v19);
          std::string::operator=(*v10, &__str);
          if (v58 == 1)
          {
            if (v56)
            {
              v57 = v56;
              operator delete(v56);
            }

            if (v54)
            {
              v55 = v54;
              operator delete(v54);
            }

            if (v52)
            {
              v53 = v52;
              operator delete(v52);
            }
          }

          if (*&v50[1])
          {
            *&v50[3] = *&v50[1];
            operator delete(*&v50[1]);
          }

          if (SHIBYTE(__str_16[3]) < 0)
          {
            operator delete(__str_16[1]);
          }

          if (SHIBYTE(__str_16[0]) < 0)
          {
            operator delete(__str);
          }

          if ((v31 & 0x80) == 0)
          {
            goto LABEL_14;
          }

LABEL_13:
          operator delete(__p[0]);
          goto LABEL_14;
        }

        if (v31 < 0)
        {
          goto LABEL_13;
        }
      }

LABEL_14:
      ++v10;
    }

    while (v10 != v11);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = *&v36.__r_.__value_.__l.__data_;
    __str_16[0] = v36.__r_.__value_.__r.__words[2];
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str_16[1], v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
  }

  else
  {
    *&__str_16[1] = v35;
  }

  v24 = 0uLL;
  v25 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v24, &__str, &v40, 2uLL);
  v37[0] = &unk_1F1A3C608;
  v37[3] = v37;
  ZinMILUnitBuilder::CreateUnit<ZinIrUnitInfo>(&v24, v37, v23);
  v29 = v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v29);
  std::__function::__value_func<void ()(std::optional<ZinIrUnitInfo> &)>::~__value_func[abi:ne200100](v37);
  v29 = &v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v29);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(__str_16[i + 3]) < 0)
    {
      operator delete(__str_16[i + 1]);
    }
  }

  ZinMILUnitBuilder::Finalize(a2, a1[1], *a1, (*a1[4] + 24 * a3), v9, 1, 1);
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }
}

void sub_1A747633C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::pair<MILBasicBlock::EdgeType,std::string>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<MILBasicBlock::EdgeType,std::string>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<MILBasicBlock::EdgeType,std::string>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::__function::__func<MILOpConverter::Cond(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1::operator() const(ZinMILUnitBuilder &,unsigned long)::{lambda(std::optional<ZinIrUnitInfo> &)#1},std::allocator<MILOpConverter::Cond(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1::operator() const(ZinMILUnitBuilder &,unsigned long)::{lambda(std::optional<ZinIrUnitInfo> &)#1}>,void ()(std::optional<ZinIrUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3[0] = &unk_1F1A2EA30;
  memset(&v3[1], 0, 32);
  v4 = 0u;
  v5 = 0u;
  v6 = -1;
  std::optional<ZinIrUnitInfo>::operator=[abi:ne200100]<ZinIrUnitInfo,void>(a2, v3);
  ZinIrUnitInfo::~ZinIrUnitInfo(v3);
  *(a2 + 32) = 64;
}

uint64_t std::__function::__func<MILOpConverter::Cond(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1::operator() const(ZinMILUnitBuilder &,unsigned long)::{lambda(std::optional<ZinIrUnitInfo> &)#1},std::allocator<MILOpConverter::Cond(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1::operator() const(ZinMILUnitBuilder &,unsigned long)::{lambda(std::optional<ZinIrUnitInfo> &)#1}>,void ()(std::optional<ZinIrUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<ZinIrUnitInfo>::operator=[abi:ne200100]<ZinIrUnitInfo,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) == 1)
  {
    std::string::operator=((a1 + 8), (a2 + 8));
    *(a1 + 32) = *(a2 + 32);
    if (a1 != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    }

    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    *a1 = &unk_1F1A2EA30;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v4 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v4;
    }

    v5 = *(a2 + 32);
    *(a1 + 40) = 0;
    *(a1 + 32) = v5;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = 1;
  }

  return a1;
}

void sub_1A7476750(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ZinIrUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MILOpConverter::Cond(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Cond(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3[0] = &unk_1F1A2EA30;
  memset(&v3[1], 0, 32);
  v4 = 0u;
  v5 = 0u;
  v6 = -1;
  std::optional<ZinIrUnitInfo>::operator=[abi:ne200100]<ZinIrUnitInfo,void>(a2, v3);
  ZinIrUnitInfo::~ZinIrUnitInfo(v3);
  *(a2 + 32) = 65;
}

uint64_t std::__function::__func<MILOpConverter::Cond(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Cond(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void MILOpConverter::ConstOps(MIL::IROperation *a1, uint64_t a2, ZinIrCompilerParameters **a3)
{
  memset(v11, 0, sizeof(v11));
  (*(*a1 + 200))(v9);
  if (*(v9[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *v9[0], *(v9[0] + 8));
  }

  else
  {
    v5 = *v9[0];
    v10.__r_.__value_.__r.__words[2] = *(v9[0] + 16);
    *&v10.__r_.__value_.__l.__data_ = v5;
  }

  v12 = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  ZinMILUnitBuilder::Finalize(v11, a3, a1, &v10.__r_.__value_.__l.__data_, v8, 0, 1);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v10.__r_.__value_.__r.__words[0] = &v11[1] + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10.__r_.__value_.__r.__words[0] = v11;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v10);
}

void sub_1A7476AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20)
{
  *(v20 - 24) = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v20 - 24));
  ZinMILUnitBuilder::~ZinMILUnitBuilder(&a20);
  _Unwind_Resume(a1);
}

void MILOpConverter::PixelBufferToTensor(MIL::IROperation *a1, uint64_t a2, MILOpConverter *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((*(*(a3 + 100) + 666) & 1) != 0 || *(a3 + 43))
  {
    v14 = (*(*a1 + 56))(a1, a2);
    if (*(v14 + 23) >= 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = *v14;
    }

    ZinAssertImpl("Dynamic Shapes: memory layout operation %s is not supported for dynamic shape", v15);
  }

  memset(v21, 0, sizeof(v21));
  std::string::basic_string[abi:ne200100]<0>(v24, "input");
  memset(&__p, 0, sizeof(__p));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__p, v24, &v26, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v21, a1, &__p, a3, v20);
  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "input");
  ParameterType = MIL::IROperation::GetParameterType();
  v6 = MIL::IRValueType::AsMemoryLayoutType(ParameterType);
  v7 = MIL::IRMemoryLayoutValueType::AsPixelBufferType(v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  PixelFormatType = MIL::IRPixelBufferValueType::GetPixelFormatType(v7);
  v18 = MILToZinPixelFormatType(PixelFormatType);
  if (!v18)
  {
    ZinAssertImpl("Unsupported pixel_format_type.");
  }

  v17 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "plane_index");
  if (MIL::IROperation::TryGetParameterValue())
  {
    v9 = MEMORY[0x1AC559690]();
    if (v9)
    {
      v17 = *v9;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 200))(v24, a1);
  if (*(v24[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v24[0], v24[0][1]);
  }

  else
  {
    v10 = *v24[0];
    __p.__r_.__value_.__r.__words[2] = v24[0][2];
    *&__p.__r_.__value_.__l.__data_ = v10;
  }

  p_p = v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  v23[0] = &unk_1F1A3C7D8;
  v23[1] = &v18;
  v23[2] = &v17;
  v23[3] = v23;
  ZinMILUnitBuilder::CreateUnit<ZinIrPlaneReaderUnitInfo>(v20, v23, v16);
  v24[0] = v16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v24);
  std::__function::__value_func<void ()(std::optional<ZinIrPlaneReaderUnitInfo> &)>::~__value_func[abi:ne200100](v23);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v12 = MIL::IRValueType::AsTensorType(OutputType);
  v13 = (*(*v12 + 88))(v12);
  ZinMILUnitBuilder::Finalize(v21, a3, a1, &__p.__r_.__value_.__l.__data_, v13, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = v20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  v20[0] = &v21[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v20);
  v20[0] = v21;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v20);
}

void sub_1A7476E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24)
{
  *(v24 - 104) = v24 - 64;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v24 - 104));
  __p = &a21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  ZinMILUnitBuilder::~ZinMILUnitBuilder(&a24);
  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::CreateUnit<ZinIrPlaneReaderUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  LOBYTE(v10[0]) = 0;
  v11 = 0;
  v8 = *(a5 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, v10);
  if (v11)
  {
    operator new();
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a7, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (v11 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A7477198(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v27)
  {
    (*(*v27 + 8))(v27, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a27 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(&a16);
  }

  _Unwind_Resume(exception_object);
}

void MILOpConverter::TensorToPixelBuffer(MIL::IROperation *a1, uint64_t a2, uint64_t a3)
{
  v66 = *MEMORY[0x1E69E9840];
  if ((*(*(a3 + 800) + 666) & 1) != 0 || *(a3 + 344))
  {
    v30 = (*(*a1 + 56))(a1, a2);
    if (*(v30 + 23) >= 0)
    {
      v31 = v30;
    }

    else
    {
      v31 = *v30;
    }

    ZinAssertImpl("Dynamic Shapes: memory layout operation %s is not supported for dynamic shape", v31);
  }

  (*(*a1 + 200))(&v50, a1, a2);
  if (*(v50.__r_.__value_.__r.__words[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *v50.__r_.__value_.__l.__data_, *(v50.__r_.__value_.__r.__words[0] + 8));
  }

  else
  {
    v5 = *v50.__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = *(v50.__r_.__value_.__r.__words[0] + 16);
    *&__str.__r_.__value_.__l.__data_ = v5;
  }

  __p.__r_.__value_.__r.__words[0] = &v50;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsMemoryLayoutType(OutputType);
  v8 = MIL::IRMemoryLayoutValueType::AsPixelBufferType(v7);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, size + 7);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    memmove(p_p, p_str, size);
  }

  strcpy(p_p + size, "@output");
  CreateIOInfoForPixelBuffer(&v50, &__p, v8, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::operator=(&v51, &__str);
  __p.__r_.__value_.__r.__words[0] = &v50;
  v12 = std::__tree<std::__value_type<std::string,ZinIrIOInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrIOInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrIOInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a3 + 72), &v50, &std::piecewise_construct, &__p, v49);
  std::string::operator=((v12 + 7), &v50);
  std::string::operator=((v12 + 10), &v51);
  v13 = v52[7];
  v15 = v52[8];
  v14 = v52[9];
  *(v12 + 25) = v52[6];
  *(v12 + 27) = v13;
  *(v12 + 29) = v15;
  *(v12 + 31) = v14;
  v16 = v52[3];
  v18 = v52[4];
  v17 = v52[5];
  *(v12 + 17) = v52[2];
  *(v12 + 19) = v16;
  *(v12 + 21) = v18;
  *(v12 + 23) = v17;
  v19 = v52[1];
  *(v12 + 13) = v52[0];
  *(v12 + 15) = v19;
  if (v12 + 7 != &v50)
  {
    std::vector<ZinIrIOFourccPlaneInfo>::__assign_with_size[abi:ne200100]<ZinIrIOFourccPlaneInfo*,ZinIrIOFourccPlaneInfo*>(v12 + 33, v53, v54, (v54 - v53) >> 4);
  }

  *(v12 + 18) = v55;
  std::__optional_storage_base<ZinIrShardingMap,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ZinIrShardingMap,false> const&>((v12 + 38), v56);
  memset(v49, 0, sizeof(v49));
  std::string::basic_string[abi:ne200100]<0>(&v65, "input");
  memset(&__p, 0, sizeof(__p));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__p, &v65, &v66, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v49, a1, &__p, a3, &v48);
  v40[0] = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v40);
  if (SHIBYTE(v65.__end_cap_.__value_) < 0)
  {
    operator delete(v65.__begin_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v65, "input");
  MILOpConverter::RetrieveProducer(a1, &v65, a3, 0, &__p);
  if (SHIBYTE(v65.__end_cap_.__value_) < 0)
  {
    operator delete(v65.__begin_);
  }

  if (v44 < 0)
  {
    if (v43 != 5)
    {
      goto LABEL_33;
    }

    v20 = __p.__r_.__value_.__r.__words[2];
  }

  else
  {
    if (v44 != 5)
    {
      goto LABEL_33;
    }

    v20 = &__p.__r_.__value_.__s.__data_[16];
  }

  v21 = *v20;
  v22 = v20[4];
  if (v21 != 1936617315 || v22 != 116)
  {
LABEL_33:
    if ((v45 & 0xFFFFFFFE) != 2)
    {
      goto LABEL_50;
    }
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = __str.__r_.__value_.__l.__size_;
  }

  v25 = v40;
  std::string::basic_string[abi:ne200100](v40, v24 + 7);
  if (v41 < 0)
  {
    v25 = v40[0];
  }

  if (v24)
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &__str;
    }

    else
    {
      v26 = __str.__r_.__value_.__r.__words[0];
    }

    memmove(v25, v26, v24);
  }

  strcpy(v25 + v24, "__@copy");
  begin = v48.__begin_;
  v36 = 1065353216;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v37, &v36, &v37, 1uLL);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  ZinMILUnitBuilder::InsertAxPlusB(v40, begin, &v37, &v33, a3, &v65);
  std::vector<std::string>::__vdeallocate(&v48);
  v48 = v65;
  memset(&v65, 0, sizeof(v65));
  v63 = &v65;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v63);
  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

LABEL_50:
  LODWORD(v37) = 0;
  std::string::basic_string[abi:ne200100]<0>(v40, "pixel_format_type");
  MIL::IROperation::GetParameterValue();
  MIL::IRValue::GetScalar<std::string>();
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v28 = MIL::StringToIRPixelFormatType();
  LODWORD(v37) = MILToZinPixelFormatType(v28);
  if (!v37)
  {
    ZinAssertImpl("Unsupported pixel_format_type.");
  }

  v64[0] = &unk_1F1A3C8C8;
  v64[1] = &v37;
  v64[3] = v64;
  ZinMILUnitBuilder::CreateUnit<ZinIrPlaneWriterUnitInfo>(&v48, v64, v32);
  v40[0] = v32;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v40);
  std::__function::__value_func<void ()(std::optional<ZinIrPlaneWriterUnitInfo> &)>::~__value_func[abi:ne200100](v64);
  v29 = TensorFormatToMILDataType(v52);
  ZinMILUnitBuilder::Finalize(v49, a3, a1, &__str.__r_.__value_.__l.__data_, v29, 1, 1);
  if (SHIBYTE(v65.__end_cap_.__value_) < 0)
  {
    operator delete(v65.__begin_);
  }

  if (v47 < 0)
  {
    operator delete(v46);
  }

  if (v44 < 0)
  {
    operator delete(__p.__r_.__value_.__r.__words[2]);
  }

  __p.__r_.__value_.__r.__words[0] = &v48;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p.__r_.__value_.__r.__words[0] = &v49[1] + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p.__r_.__value_.__r.__words[0] = v49;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v61 == 1)
  {
    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }

    if (v57)
    {
      v58 = v57;
      operator delete(v57);
    }

    if (v56[0])
    {
      v56[1] = v56[0];
      operator delete(v56[0]);
    }
  }

  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1A7477968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  a24 = &a44;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a24);
  _Unwind_Resume(a1);
}

void sub_1A7477980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  MILOpConverter::MILProducerInfo::~MILProducerInfo(&a27);
  a27 = &a36;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a27);
  ZinMILUnitBuilder::~ZinMILUnitBuilder(&a40);
  ZinIrIOInfo::~ZinIrIOInfo(&a47);
  if (*(v47 - 137) < 0)
  {
    operator delete(*(v47 - 160));
  }

  _Unwind_Resume(a1);
}

void sub_1A74779CC()
{
  if (*(v0 - 73) < 0)
  {
    operator delete(*(v0 - 96));
  }

  JUMPOUT(0x1A7477ACCLL);
}

void sub_1A74779EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v20 - 73) < 0)
  {
    operator delete(*(v20 - 96));
  }

  JUMPOUT(0x1A7477ADCLL);
}

void sub_1A7477A20(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1A7477AFCLL);
}

void sub_1A7477AA0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::CreateUnit<ZinIrPlaneWriterUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  LOBYTE(v10[0]) = 0;
  v11 = 0;
  v8 = *(a5 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, v10);
  if (v11)
  {
    operator new();
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a7, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (v11 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A7477D9C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v27)
  {
    (*(*v27 + 8))(v27, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a27 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(&a16);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrPlaneReaderUnitInfo::ZinIrPlaneReaderUnitInfo(ZinIrPlaneReaderUnitInfo *this, const ZinIrPlaneReaderUnitInfo *a2)
{
  *this = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  v5 = *(a2 + 8);
  *(this + 5) = 0;
  *(this + 8) = v5;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 5, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 4) = *(a2 + 4);
  *this = &unk_1F19CA950;
  *(this + 10) = *(a2 + 10);
}

void sub_1A7477F90(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ZinIrPlaneReaderUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrPlaneReaderUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<MILOpConverter::PixelBufferToTensor(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::PixelBufferToTensor(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrPlaneReaderUnitInfo> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A3C7D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<MILOpConverter::PixelBufferToTensor(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::PixelBufferToTensor(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrPlaneReaderUnitInfo> &)>::operator()(uint64_t a1, _DWORD *a2)
{
  memset(&v5[1], 0, 24);
  v6 = 0;
  v7 = 0u;
  v8 = 0u;
  v9 = -1;
  v5[0] = &unk_1F19CA950;
  v10 = -1;
  std::optional<ZinIrPlaneReaderUnitInfo>::operator=[abi:ne200100]<ZinIrPlaneReaderUnitInfo,void>(a2, v5);
  ZinIrUnitInfo::~ZinIrUnitInfo(v5);
  a2[8] = 48;
  v4 = *(a1 + 16);
  a2[20] = **(a1 + 8);
  a2[21] = *v4;
}

void sub_1A7478160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrUnitInfo::~ZinIrUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::PixelBufferToTensor(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::PixelBufferToTensor(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrPlaneReaderUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<ZinIrPlaneReaderUnitInfo>::operator=[abi:ne200100]<ZinIrPlaneReaderUnitInfo,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == 1)
  {
    std::string::operator=((a1 + 8), (a2 + 8));
    *(a1 + 32) = *(a2 + 32);
    if (a1 != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    }

    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
  }

  else
  {
    *a1 = &unk_1F1A2EA30;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v4 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v4;
    }

    v5 = *(a2 + 32);
    *(a1 + 40) = 0;
    *(a1 + 32) = v5;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    *(a1 + 64) = *(a2 + 64);
    *a1 = &unk_1F19CA950;
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = 1;
  }

  return a1;
}

void sub_1A74782F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrPlaneReaderUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void ZinIrPlaneWriterUnitInfo::ZinIrPlaneWriterUnitInfo(ZinIrPlaneWriterUnitInfo *this, const ZinIrPlaneWriterUnitInfo *a2)
{
  *this = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  v5 = *(a2 + 8);
  *(this + 5) = 0;
  *(this + 8) = v5;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 5, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 4) = *(a2 + 4);
  *this = &unk_1F19DCC70;
  *(this + 20) = *(a2 + 20);
}

void sub_1A7478468(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ZinIrPlaneWriterUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrPlaneWriterUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MILOpConverter::TensorToPixelBuffer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::TensorToPixelBuffer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrPlaneWriterUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3C8C8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MILOpConverter::TensorToPixelBuffer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::TensorToPixelBuffer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrPlaneWriterUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  memset(&v4[1], 0, 24);
  v5 = 0;
  v6 = 0u;
  v7 = 0u;
  v8 = -1;
  v4[0] = &unk_1F19DCC70;
  std::optional<ZinIrPlaneWriterUnitInfo>::operator=[abi:ne200100]<ZinIrPlaneWriterUnitInfo,void>(a2, v4);
  ZinIrUnitInfo::~ZinIrUnitInfo(v4);
  *(a2 + 32) = 49;
  *(a2 + 80) = **(a1 + 8);
}

void sub_1A7478620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrUnitInfo::~ZinIrUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::TensorToPixelBuffer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::TensorToPixelBuffer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrPlaneWriterUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<ZinIrPlaneWriterUnitInfo>::operator=[abi:ne200100]<ZinIrPlaneWriterUnitInfo,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == 1)
  {
    std::string::operator=((a1 + 8), (a2 + 8));
    *(a1 + 32) = *(a2 + 32);
    if (a1 != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    }

    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
  }

  else
  {
    *a1 = &unk_1F1A2EA30;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v4 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v4;
    }

    v5 = *(a2 + 32);
    *(a1 + 40) = 0;
    *(a1 + 32) = v5;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    *(a1 + 64) = *(a2 + 64);
    *a1 = &unk_1F19DCC70;
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = 1;
  }

  return a1;
}

void sub_1A74787B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrPlaneWriterUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void MILOpConverter::Einsum(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v48 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(&__p);
  if (*(__p + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, *__p, *(__p + 1));
  }

  else
  {
    v5 = *__p;
    v35.__r_.__value_.__r.__words[2] = *(__p + 2);
    *&v35.__r_.__value_.__l.__data_ = v5;
  }

  *&v34[0] = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v34);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  memset(v34, 0, sizeof(v34));
  std::string::basic_string[abi:ne200100]<0>(&v45, "values");
  __p = 0;
  v38 = 0;
  v39 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__p, &v45, &v48, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v34, a1, &__p, a3, v33);
  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(v45);
  }

  v45 = 0;
  v46 = 0;
  v47 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "equation");
  RetrieveRequiredValue<std::string>(a1, &__p, &v45, 0);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p);
  }

  {
    p_p = "bkhc,bchq->bkhq";
    v29 = 15;
    MILOpConverter::EinsumEquation::EinsumEquation(&__p, &p_p);
    v32[0] = "chk,khq->chq";
    v32[1] = 12;
    MILOpConverter::EinsumEquation::EinsumEquation(&v44, v32);
    std::forward_list<MILOpConverter::EinsumEquation>::forward_list(&MILOpConverter::Einsum(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::supported_equations, &__p, 2);
    for (i = 72; i != -72; i -= 72)
    {
      ZinIrShardingMap::~ZinIrShardingMap((&__p + i));
    }

    __cxa_atexit(std::forward_list<MILOpConverter::EinsumEquation>::~forward_list, &MILOpConverter::Einsum(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::supported_equations, &dword_1A617D000);
  }

  v9 = HIBYTE(v47);
  v10 = &v45;
  if (v47 < 0)
  {
    v10 = v45;
    v9 = v46;
  }

  p_p = v10;
  v29 = v9;
  MILOpConverter::EinsumEquation::EinsumEquation(&__p, &p_p);
  v11 = MILOpConverter::Einsum(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::supported_equations;
  if (!MILOpConverter::Einsum(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::supported_equations)
  {
LABEL_14:
    v12 = &v45;
    if (v47 < 0)
    {
      v12 = v45;
    }

    ZinAssertImpl("Unsupported einsum equation: %s", v12);
  }

  while (!MILOpConverter::EinsumEquation::operator==((v11 + 1), &__p))
  {
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_14;
    }
  }

  v13 = v43;
  v14 = v42;
  std::string::basic_string[abi:ne200100]<0>(&p_p, "values");
  ParameterType = MIL::IROperation::GetParameterType();
  if (v30 < 0)
  {
    operator delete(p_p);
  }

  v31 = ParameterType;
  std::string::basic_string[abi:ne200100]<0>(&p_p, "values");
  v16 = MIL::IROperation::GetParameterType();
  v17 = MIL::IRValueType::AsTensorType(v16);
  MILTensorRank = GetMILTensorRank(v17);
  if (v30 < 0)
  {
    operator delete(p_p);
  }

  std::string::basic_string[abi:ne200100]<0>(&p_p, "values");
  v19 = MIL::IROperation::GetParameterType();
  v20 = MIL::IRValueType::AsTensorType(v19);
  v21 = GetMILTensorRank(v20);
  v22 = v13 - v14;
  if (v30 < 0)
  {
    operator delete(p_p);
  }

  if (MILTensorRank != v22 || v21 != v22)
  {
    ZinAssertImpl("Equation expects input ranks of %d, but got (%d, %d).", v22, MILTensorRank, v21);
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v35.__r_.__value_.__l.__size_;
  }

  p_p_p = &p_p;
  std::string::basic_string[abi:ne200100](&p_p, size + 5);
  if (v30 < 0)
  {
    p_p_p = p_p;
  }

  if (size)
  {
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v35;
    }

    else
    {
      v25 = v35.__r_.__value_.__r.__words[0];
    }

    memmove(p_p_p, v25, size);
  }

  strcpy(p_p_p + size, "__@mm");
  v36[0] = &unk_1F1A3C9B8;
  v36[1] = a3;
  v36[2] = &v31;
  v36[3] = v36;
  ZinMILUnitBuilder::CreateUnit<ZinIrMatrixMultUnitInfo>(v33, v36, v27);
  v32[0] = v27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v32);
  std::__function::__value_func<void ()(std::optional<ZinIrMatrixMultUnitInfo> &)>::~__value_func[abi:ne200100](v36);
  if (v30 < 0)
  {
    operator delete(p_p);
  }

  ZinMILUnitBuilder::Finalize(v34, a3, a1, &v35.__r_.__value_.__l.__data_, v8, 1, 1);
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v45);
  }

  __p = v33;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &v34[1] + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = v34;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }
}

void sub_1A7478DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  v53 = (v50 + 72);
  v54 = -144;
  do
  {
    ZinIrShardingMap::~ZinIrShardingMap(v53);
    v53 = (v55 - 72);
    v54 += 72;
  }

  while (v54);
  if (*(v51 - 73) < 0)
  {
    operator delete(*(v51 - 96));
  }

  a45 = &a25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a45);
  ZinMILUnitBuilder::~ZinMILUnitBuilder(&a28);
  if (a39 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::CreateUnit<ZinIrMatrixMultUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  LOBYTE(v10[0]) = 0;
  v11 = 0;
  v8 = *(a5 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, v10);
  if (v11)
  {
    operator new();
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a7, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (v11 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A74791B8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v27)
  {
    (*(*v27 + 8))(v27, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a27 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(&a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MILOpConverter::EinsumEquation::EinsumEquation(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0u;
  v3 = a1 + 48;
  *(a1 + 64) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  MILOpConverter::EinsumEquation::ParseEquation(a2, v12);
  v11[0] = 0;
  v11[1] = 0;
  v10 = v11;
  MILOpConverter::EinsumEquation::ParseInput(v12, &v10, &v8);
  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = v8;
  *(a1 + 16) = v9;
  MILOpConverter::EinsumEquation::ParseInput(&v13, &v10, &v8);
  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = v8;
  *(a1 + 40) = v9;
  MILOpConverter::EinsumEquation::ParseOutput(&v14, &v10, &v8);
  v6 = *v3;
  if (*v3)
  {
    *(a1 + 56) = v6;
    operator delete(v6);
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
  }

  *(a1 + 48) = v8;
  *(a1 + 64) = v9;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v10, v11[0]);
  return a1;
}

void sub_1A74793F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a12, a13);
  v16 = *v14;
  if (*v14)
  {
    *(v13 + 56) = v16;
    operator delete(v16);
  }

  v17 = *(v13 + 24);
  if (v17)
  {
    *(v13 + 32) = v17;
    operator delete(v17);
  }

  v18 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

_BYTE *MILOpConverter::EinsumEquation::ParseEquation@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (v2 < 2)
  {
    goto LABEL_6;
  }

  v4 = *a1;
  v5 = (*a1 + v2);
  v6 = *(a1 + 8);
  v7 = *a1;
  while (1)
  {
    v8 = memchr(v7, 45, v6 - 1);
    if (!v8)
    {
      goto LABEL_6;
    }

    if (*v8 == 15917)
    {
      break;
    }

    v7 = v8 + 1;
    v6 = v5 - v7;
    if (v5 - v7 < 2)
    {
      goto LABEL_6;
    }
  }

  if (v8 == v5 || (v9 = v8 - v4, v8 - v4 == -1))
  {
LABEL_6:
    ZinAssertImpl("invalid einsum equation: missing '->'");
  }

  if (v2 >= v9)
  {
    v10 = v8 - v4;
  }

  else
  {
    v10 = v2;
  }

  if (v8 == v4 || (result = memchr(v4, 44, v10)) == 0 || (v12 = (result - v4), result - v4 == -1))
  {
    ZinAssertImpl("invalid einsum equation: missing ',' in the input");
  }

  if (v10 <= v12 || v2 < v9 + 2)
  {
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  *a2 = v4;
  a2[1] = v12;
  a2[2] = result + 1;
  a2[3] = v10 - (v12 + 1);
  a2[4] = &v4[v9 + 2];
  a2[5] = v2 - (v9 + 2);
  return result;
}

void MILOpConverter::EinsumEquation::ParseInput(char **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = a1[1];
  if (v4)
  {
    v6 = *a1;
    v7 = &v4[*a1];
    v8 = (a2 + 8);
    do
    {
      v9 = *v8;
      if (!*v8)
      {
        goto LABEL_10;
      }

      v10 = *v6;
      v11 = v8;
      do
      {
        if (v9[25] >= v10)
        {
          v11 = v9;
        }

        v9 = *&v9[8 * (v9[25] < v10)];
      }

      while (v9);
      if (v11 != v8 && v10 >= v11[25])
      {
        std::vector<unsigned char>::push_back[abi:ne200100](a3, v11 + 26);
      }

      else
      {
LABEL_10:
        v12 = *(a2 + 16);
        if (v12 >= 0x100)
        {
          ZinAssertImpl("invalid einsum equation: too many indexes");
        }

        v13 = *(a2 + 16);
        v14 = v6;
        *(std::__tree<std::__value_type<char,unsigned char>,std::__map_value_compare<char,std::__value_type<char,unsigned char>,std::less<char>,true>,std::allocator<std::__value_type<char,unsigned char>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(a2, v6, &std::piecewise_construct, &v14) + 26) = v12;
        std::vector<unsigned char>::push_back[abi:ne200100](a3, &v13);
      }

      ++v6;
    }

    while (v6 != v7);
  }
}

void sub_1A7479674(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MILOpConverter::EinsumEquation::ParseOutput(char **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = a1[1];
  if (v4)
  {
    v5 = *a1;
    v6 = &v4[*a1];
    v7 = (a2 + 8);
    do
    {
      v8 = *v7;
      if (!*v7)
      {
        goto LABEL_12;
      }

      v9 = *v5;
      v10 = v7;
      do
      {
        if (v8[25] >= v9)
        {
          v10 = v8;
        }

        v8 = *&v8[8 * (v8[25] < v9)];
      }

      while (v8);
      if (v10 == v7 || v9 < v10[25])
      {
LABEL_12:
        ZinAssertImpl("invalid einsum equation: unknown index in the output");
      }

      std::vector<unsigned char>::push_back[abi:ne200100](a3, v10 + 26);
      ++v5;
    }

    while (v5 != v6);
  }
}

void sub_1A7479740(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<char,unsigned char>,std::__map_value_compare<char,std::__value_type<char,unsigned char>,std::less<char>,true>,std::allocator<std::__value_type<char,unsigned char>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(uint64_t a1, char *a2, uint64_t a3, unsigned __int8 **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 25);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void std::__forward_list_base<MILOpConverter::EinsumEquation>::clear(void **result)
{
  for (i = *result; i; i = v3)
  {
    v3 = *i;
    std::__forward_list_base<MILOpConverter::EinsumEquation>::__delete_node[abi:ne200100](result, i);
  }

  *result = 0;
}

void std::__forward_list_base<MILOpConverter::EinsumEquation>::__delete_node[abi:ne200100](int a1, void *__p)
{
  v3 = __p[7];
  if (v3)
  {
    __p[8] = v3;
    operator delete(v3);
  }

  v4 = __p[4];
  if (v4)
  {
    __p[5] = v4;
    operator delete(v4);
  }

  v5 = __p[1];
  if (v5)
  {
    __p[2] = v5;
    operator delete(v5);
  }

  operator delete(__p);
}

BOOL MILOpConverter::EinsumEquation::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v6 = *(a1 + 8) - v4;
  v7 = *a2;
  if (v6 == *(a2 + 8) - v7 && !memcmp(v4, v7, v6) && (v9 = *(a1 + 24), v10 = *(a1 + 32) - v9, v11 = *(a2 + 24), v10 == *(a2 + 32) - v11) && !memcmp(v9, v11, v10) && (v12 = *(a1 + 48), v13 = *(a1 + 56) - v12, v14 = *(a2 + 48), v13 == *(a2 + 56) - v14))
  {
    return memcmp(v12, v14, v13) == 0;
  }

  else
  {
    return 0;
  }
}

void *std::forward_list<MILOpConverter::EinsumEquation>::forward_list(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  std::forward_list<MILOpConverter::EinsumEquation>::__insert_after_with_sentinel[abi:ne200100]<MILOpConverter::EinsumEquation const*,MILOpConverter::EinsumEquation const*>(a1, a1, a2, a2 + 72 * a3);
  return a1;
}

void *std::forward_list<MILOpConverter::EinsumEquation>::__insert_after_with_sentinel[abi:ne200100]<MILOpConverter::EinsumEquation const*,MILOpConverter::EinsumEquation const*>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    std::__forward_list_base<MILOpConverter::EinsumEquation>::__create_node[abi:ne200100]<MILOpConverter::EinsumEquation const&>(a1, 0, a3);
  }

  return a2;
}

void sub_1A7479A58(void *a1)
{
  __cxa_begin_catch(a1);
  while (v2)
  {
    v3 = *v2;
    std::__forward_list_base<MILOpConverter::EinsumEquation>::__delete_node[abi:ne200100](v1, v2);
    v2 = v3;
  }

  __cxa_rethrow();
}

void sub_1A7479B38(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    v1[5] = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    v1[2] = v6;
    operator delete(v6);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void ZinIrMatrixMultUnitInfo::ZinIrMatrixMultUnitInfo(ZinIrMatrixMultUnitInfo *this, const ZinIrMatrixMultUnitInfo *a2)
{
  *this = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  v5 = *(a2 + 8);
  *(this + 5) = 0;
  *(this + 8) = v5;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 5, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 4) = *(a2 + 4);
  *this = &unk_1F1A33FF8;
  *(this + 20) = *(a2 + 20);
}

void sub_1A7479C50(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ZinIrMatrixMultUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrMatrixMultUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<MILOpConverter::Einsum(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Einsum(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrMatrixMultUnitInfo> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A3C9B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<MILOpConverter::Einsum(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Einsum(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrMatrixMultUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  v9.i64[1] = 0;
  v10 = 0uLL;
  LODWORD(v11) = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = -1;
  v9.i64[0] = &unk_1F1A33FF8;
  v15 = 0;
  std::optional<ZinIrMatrixMultUnitInfo>::operator=[abi:ne200100]<ZinIrMatrixMultUnitInfo&,void>(a2, &v9);
  ZinIrUnitInfo::~ZinIrUnitInfo(&v9);
  *(a2 + 32) = 18;
  v9 = vdupq_n_s64(1uLL);
  v10 = v9;
  v11 = 1;
  v4 = *(a1 + 8);
  v5 = MIL::IRValueType::AsTensorType(**(a1 + 16));
  v6 = (*(*v5 + 96))(v5);
  v8[0] = 0;
  v8[1] = 0;
  v7 = v8;
  ToZinTensorDimensions(v4, v6, &v9, &v7);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v7, v8[0]);
  *(a2 + 72) = v9.i64[1];
}

uint64_t std::__function::__func<MILOpConverter::Einsum(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Einsum(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrMatrixMultUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrMatrixMultUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void MILOpConverter::NEConv(MILOpConverter *a1, uint64_t a2, const MIL::IROperation *a3)
{
  v71 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(&v19);
  if (v19[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v66, *v19, *(v19 + 1));
  }

  else
  {
    v5 = *v19;
    v66.__r_.__value_.__r.__words[2] = *(v19 + 2);
    *&v66.__r_.__value_.__l.__data_ = v5;
  }

  *&v18[0] = &v19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v18);
  v22 = 0;
  v21 = 0;
  v20 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = -1;
  LOBYTE(v26) = 0;
  v27 = 0;
  LOBYTE(v28) = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v19 = &unk_1F19ECE48;
  v32[1] = 0;
  v33 = 0u;
  v34 = 0;
  v35 = 0u;
  v36 = 0u;
  v37 = -1;
  v38 = 0;
  v39 = -1;
  v40 = -1;
  v41 = -1;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = -1;
  v46 = 0;
  v47 = 1;
  v48 = 0;
  v49 = 0;
  v50 = -1;
  v51 = -1;
  v52 = -1;
  v53 = -1;
  v54 = 0x3F80000000000006;
  v55 = 0;
  v32[0] = &unk_1F1A33E10;
  v56 = 0;
  v57 = 0;
  v58 = 1;
  v59 = vdupq_n_s64(1uLL);
  v60 = 1;
  *&v6 = 0x100000001;
  *(&v6 + 1) = 0x100000001;
  v61 = v6;
  v62 = 0x100000001;
  v64 = 0;
  v63 = 0u;
  v65 = 1;
  MILOpConverter::FillNEConvUnitInfo(a1, a3, &v19, v7);
  memset(v18, 0, sizeof(v18));
  v70 = 1;
  LOWORD(v69[0]) = 120;
  __p[1] = 0;
  v16 = 0;
  __p[0] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(__p, v69, &v71, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v18, a1, __p, a3, v17);
  v67 = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v67);
  if (v70 < 0)
  {
    operator delete(v69[0]);
  }

  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v66.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v66.__r_.__value_.__l.__size_;
  }

  v9 = __p;
  std::string::basic_string[abi:ne200100](__p, size + 9);
  if (v16 < 0)
  {
    v9 = __p[0];
  }

  if (size)
  {
    if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v66;
    }

    else
    {
      v10 = v66.__r_.__value_.__r.__words[0];
    }

    memmove(v9, v10, size);
  }

  strcpy(v9 + size, "__@neconv");
  v68[0] = &unk_1F1A3CAA8;
  v68[1] = &v19;
  v68[3] = v68;
  ZinMILUnitBuilder::CreateUnit<ZinIrNEConvUnitInfo>(v17, v68, v14);
  v69[0] = v14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v69);
  std::__function::__value_func<void ()(std::optional<ZinIrNEConvUnitInfo> &)>::~__value_func[abi:ne200100](v68);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  OutputType = MIL::IROperation::GetOutputType(a1);
  v12 = MIL::IRValueType::AsTensorType(OutputType);
  v13 = (*(*v12 + 88))(v12);
  ZinMILUnitBuilder::Finalize(v18, a3, a1, &v66.__r_.__value_.__l.__data_, v13, 1, 1);
  __p[0] = v17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  v17[0] = &v18[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v17);
  v17[0] = v18;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v17);
  v19 = &unk_1F19ECE48;
  v32[0] = &unk_1F1A2EAA0;
  if (v45)
  {
    *(&v45 + 1) = v45;
    operator delete(v45);
  }

  if (*(&v43 + 1))
  {
    *&v44 = *(&v43 + 1);
    operator delete(*(&v43 + 1));
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(v32);
  v19 = &unk_1F19D1078;
  if (v29 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(&v28);
  }

  if (v27 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(&v26);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(&v19);
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }
}

void sub_1A747A414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  a22 = &a28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::CreateUnit<ZinIrNEConvUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  LOBYTE(v10[0]) = 0;
  v20 = 0;
  v8 = *(a5 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, v10);
  if (v20)
  {
    operator new();
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a7, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (v20 == 1)
  {
    v10[0] = &unk_1F19ECE48;
    v15 = &unk_1F1A2EAA0;
    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }

    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(&v15);
    v10[0] = &unk_1F19D1078;
    if (v14 == 1)
    {
      ZinIrUnitInfo::~ZinIrUnitInfo(&v13);
    }

    if (v12 == 1)
    {
      ZinIrUnitInfo::~ZinIrUnitInfo(&v11);
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A747A804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    (*(*v15 + 8))(v15, a2, a3, a4, a5, a6, a7, a8);
  }

  std::optional<ZinIrNEConvUnitInfo>::~optional(&a15);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ZinIrNEConvUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrNEConvUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<ZinIrNEConvUnitInfo>::~optional(uint64_t a1)
{
  if (*(a1 + 704) == 1)
  {
    *a1 = &unk_1F19ECE48;
    *(a1 + 368) = &unk_1F1A2EAA0;
    v2 = *(a1 + 520);
    if (v2)
    {
      *(a1 + 528) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 496);
    if (v3)
    {
      *(a1 + 504) = v3;
      operator delete(v3);
    }

    ZinIrUnitInfo::~ZinIrUnitInfo((a1 + 368));
    *a1 = &unk_1F19D1078;
    if (*(a1 + 352) == 1)
    {
      ZinIrUnitInfo::~ZinIrUnitInfo((a1 + 240));
    }

    if (*(a1 + 232) == 1)
    {
      ZinIrUnitInfo::~ZinIrUnitInfo((a1 + 80));
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(a1);
  }

  return a1;
}

uint64_t std::__function::__func<MILOpConverter::NEConv(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::NEConv(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNEConvUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3CAA8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MILOpConverter::NEConv(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::NEConv(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNEConvUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

ZinIrNEConvUnitInfo *std::optional<ZinIrNEConvUnitInfo>::operator=[abi:ne200100]<ZinIrNEConvUnitInfo&,void>(ZinIrNEConvUnitInfo *this, ZinIrNEConvUnitInfo *a2)
{
  if (*(this + 704) == 1)
  {
    std::string::operator=((this + 8), (a2 + 8));
    *(this + 8) = *(a2 + 8);
    if (this != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((this + 40), *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
    }

    *(this + 4) = *(a2 + 4);
    std::__optional_storage_base<ZinIrGOCUnitInfo,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ZinIrGOCUnitInfo,false> const&>((this + 80), a2 + 80);
    std::__optional_storage_base<ZinIrNeuronUnitInfo,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ZinIrNeuronUnitInfo,false> const&>((this + 240), a2 + 240);
    v4 = *(a2 + 90);
    *(this + 364) = *(a2 + 364);
    *(this + 90) = v4;
    std::string::operator=((this + 376), (a2 + 376));
    *(this + 100) = *(a2 + 100);
    if (this == a2)
    {
      *(this + 27) = *(a2 + 27);
      v7 = *(a2 + 28);
      v8 = *(a2 + 30);
      *(this + 29) = *(a2 + 29);
      *(this + 30) = v8;
      *(this + 28) = v7;
    }

    else
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(this + 17, *(a2 + 51), *(a2 + 52), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 52) - *(a2 + 51)) >> 3));
      *(this + 27) = *(a2 + 27);
      v5 = *(a2 + 28);
      v6 = *(a2 + 30);
      *(this + 29) = *(a2 + 29);
      *(this + 30) = v6;
      *(this + 28) = v5;
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 62, *(a2 + 62), *(a2 + 63), (*(a2 + 63) - *(a2 + 62)) >> 2);
      std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(this + 65, *(a2 + 65), *(a2 + 66), (*(a2 + 66) - *(a2 + 65)) >> 3);
    }

    v9 = *(a2 + 34);
    v10 = *(a2 + 35);
    v11 = *(a2 + 36);
    *(this + 588) = *(a2 + 588);
    *(this + 35) = v10;
    *(this + 36) = v11;
    *(this + 34) = v9;
    v13 = *(a2 + 41);
    v12 = *(a2 + 42);
    v14 = *(a2 + 40);
    *(this + 684) = *(a2 + 684);
    *(this + 41) = v13;
    *(this + 42) = v12;
    *(this + 40) = v14;
    v15 = *(a2 + 39);
    *(this + 38) = *(a2 + 38);
    *(this + 39) = v15;
  }

  else
  {
    ZinIrNEConvUnitInfo::ZinIrNEConvUnitInfo(this, a2);
    *(this + 704) = 1;
  }

  return this;
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrNEConvUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void MILOpConverter::FillPostscaleInfo(MILOpConverter *this, const MIL::IRValue *a2, MILFunctionInfo *a3, ZinIrNEUnitInfo *a4)
{
  if (this)
  {
    v7 = MIL::IRValue::AsTensor(this);
    v8 = (*(*v7 + 32))(v7);
    v9 = (*(*v8 + 88))(v8);
    ToZinKernelFormat(v9, a3 + 42);
    if (MIL::IRTensorValueType::IsScalar(v8))
    {
      *(a3 + 160) = 1;
      v10 = (*(*v8 + 88))(v8);
      if (v10 == 5)
      {
        MIL::IRValue::GetScalar<float>();
      }

      else
      {
        if (v10 != 4)
        {
          ZinAssertImpl("postscale must be either fp32 or fp16");
        }

        LOWORD(__p[0]) = MIL::IRValue::GetScalar<MIL::Fp16>();
        MIL::Fp16::GetFloat(__p);
      }

      *(a3 + 41) = v11;
    }

    else
    {
      *(a3 + 160) = 0;
      v16 = 0;
      v17 = 0;
      LOBYTE(__p[0]) = 0;
      v15 = 0;
      ParseFileInfoFromTensorValue(this, a2, &v16, __p, 0);
      if (v15 == 1 && __p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v12 = v16;
      *(a3 + 25) = v17;
      v13 = *(a3 + 9);
      *(a3 + 47) = v12;
      *(a3 + 48) = v13;
    }
  }

  else
  {
    *(a3 + 160) = 1;
    *(a3 + 164) = 0x43F800000;
  }
}

void sub_1A747AEFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    ZinIrCreateInstructions_v17(&a9);
  }

  _Unwind_Resume(exception_object);
}

void MILOpConverter::FillNEBiasInfo(MILOpConverter *this, const MIL::IRValue *a2, MILFunctionInfo *a3, ZinIrNEUnitInfo *a4)
{
  if (this)
  {
    v7 = MIL::IRValue::AsTensor(this);
    v8 = (*(*v7 + 32))(v7);
    v9 = (*(*v8 + 88))(v8);
    ToZinKernelFormat(v9, a3 + 45);
    if (MIL::IRTensorValueType::IsScalar(v8))
    {
      *(a3 + 172) = 1;
      v10 = (*(*v8 + 88))(v8);
      if (v10 == 5)
      {
        MIL::IRValue::GetScalar<float>();
      }

      else
      {
        if (v10 != 4)
        {
          ZinAssertImpl("bias must be either fp32 or fp16");
        }

        LOWORD(__p[0]) = MIL::IRValue::GetScalar<MIL::Fp16>();
        MIL::Fp16::GetFloat(__p);
      }

      *(a3 + 44) = v11;
    }

    else
    {
      *(a3 + 172) = 0;
      v16 = 0;
      v17 = 0;
      LOBYTE(__p[0]) = 0;
      v15 = 0;
      ParseFileInfoFromTensorValue(this, a2, &v16, __p, 0);
      if (v15 == 1 && __p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v12 = v16;
      *(a3 + 28) = v17;
      v13 = *(a3 + 9);
      *(a3 + 53) = v12;
      *(a3 + 54) = v13;
    }
  }

  else
  {
    *(a3 + 172) = 1;
    *(a3 + 22) = 0x400000000;
  }
}

void sub_1A747B098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    ZinIrCreateInstructions_v17(&a9);
  }

  _Unwind_Resume(exception_object);
}

void MILOpConverter::FillActivationInfo(MILOpConverter *this, const MIL::IRValue *a2, ZinIrNEUnitInfo *a3)
{
  if (this)
  {
    MIL::IRValue::GetScalar<std::string>();
    v4 = MILOpConverter::NeuronTypeFromString(__p);
    if (!v4)
    {
      v5 = __p;
      if (v7 < 0)
      {
        v5 = __p[0];
      }

      ZinAssertImpl("Unspported activation for NE: %s", v5);
    }

    if ((*(a2 + 352) & 1) == 0)
    {
      _ZNSt3__18optionalI19ZinIrNeuronUnitInfoE7emplaceB8ne200100IJEvEERS1_DpOT_(a2 + 240);
    }

    *(a2 + 68) = 6;
    *(a2 + 80) = v4;
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1A747B150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MILOpConverter::NeuronTypeFromString(char *a1)
{
  v72 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v8, "ceil");
  v9 = 28;
  std::string::basic_string[abi:ne200100]<0>(v10, "clamped_relu");
  v11 = 3;
  std::string::basic_string[abi:ne200100]<0>(v12, "cos");
  v13 = 21;
  std::string::basic_string[abi:ne200100]<0>(v14, "degamma");
  v15 = 24;
  std::string::basic_string[abi:ne200100]<0>(v16, "dirac");
  v17 = 8;
  std::string::basic_string[abi:ne200100]<0>(v18, "elu");
  v19 = 18;
  std::string::basic_string[abi:ne200100]<0>(v20, "erf");
  v21 = 30;
  std::string::basic_string[abi:ne200100]<0>(v22, "exp");
  v23 = 17;
  std::string::basic_string[abi:ne200100]<0>(v24, "exp2");
  v25 = 16;
  std::string::basic_string[abi:ne200100]<0>(v26, "floor");
  v27 = 27;
  std::string::basic_string[abi:ne200100]<0>(v28, "gamma");
  v29 = 32;
  std::string::basic_string[abi:ne200100]<0>(v30, "gelu");
  v31 = 23;
  std::string::basic_string[abi:ne200100]<0>(v32, "inv");
  v33 = 14;
  std::string::basic_string[abi:ne200100]<0>(v34, "leaky_relu");
  v35 = 2;
  std::string::basic_string[abi:ne200100]<0>(v36, "log2");
  v37 = 15;
  std::string::basic_string[abi:ne200100]<0>(v38, "relu");
  v39 = 1;
  std::string::basic_string[abi:ne200100]<0>(v40, "relu_n");
  v41 = 4;
  std::string::basic_string[abi:ne200100]<0>(v42, "round_nearest");
  v43 = 26;
  std::string::basic_string[abi:ne200100]<0>(v44, "rsqrt");
  v45 = 13;
  std::string::basic_string[abi:ne200100]<0>(v46, "sigmoid");
  v47 = 5;
  std::string::basic_string[abi:ne200100]<0>(v48, "sigmoid_hard");
  v49 = 22;
  std::string::basic_string[abi:ne200100]<0>(v50, "sigmoid_high_precision");
  v51 = 6;
  std::string::basic_string[abi:ne200100]<0>(v52, "sign");
  v53 = 19;
  std::string::basic_string[abi:ne200100]<0>(v54, "silu");
  v55 = 9;
  std::string::basic_string[abi:ne200100]<0>(v56, "sin");
  v57 = 20;
  std::string::basic_string[abi:ne200100]<0>(v58, "sqr");
  v59 = 11;
  std::string::basic_string[abi:ne200100]<0>(v60, "sqrt");
  v61 = 12;
  std::string::basic_string[abi:ne200100]<0>(v62, "swish");
  v63 = 9;
  std::string::basic_string[abi:ne200100]<0>(v64, "swish_hard");
  v65 = 10;
  std::string::basic_string[abi:ne200100]<0>(v66, "tanh");
  v67 = 7;
  std::string::basic_string[abi:ne200100]<0>(v68, "threshold_relu");
  v69 = 31;
  std::string::basic_string[abi:ne200100]<0>(v70, "trunc");
  v71 = 25;
  std::map<std::string,ZinIrNeuronType>::map[abi:ne200100](v6, v8, 32);
  v2 = 128;
  do
  {
    if (SHIBYTE(v7[v2]) < 0)
    {
      operator delete(v8[v2 - 4]);
    }

    v2 -= 4;
  }

  while (v2 * 8);
  v3 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(v6, a1);
  if (v7 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v3 + 56);
  }

  std::__tree<std::string>::destroy(v6, v7[0]);
  return v4;
}

double _ZNSt3__18optionalI19ZinIrNeuronUnitInfoE7emplaceB8ne200100IJEvEERS1_DpOT_(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(a1);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = -1;
  *a1 = &unk_1F19CEE38;
  *(a1 + 80) = 0;
  *(a1 + 84) = xmmword_1A75A3510;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 100) = result;
  *(a1 + 108) = 0;
  *(a1 + 112) = 1;
  return result;
}

void MILOpConverter::FillNEGOCInfo(MILOpConverter *this, const MIL::IROperation *a2, MILFunctionInfo *a3, ZinIrNEUnitInfo *a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "bias");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "postscale");
  v7 = MIL::IROperation::TryGetParameterValue();
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "bias_shift");
  v8 = MIL::IROperation::TryGetParameterValue();
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "scale_shift");
  v9 = MIL::IROperation::TryGetParameterValue();
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (ParameterValue || v7 || v8 || v9)
  {
    _ZNSt3__18optionalI16ZinIrGOCUnitInfoE7emplaceB8ne200100IJEvEERS1_DpOT_(a3 + 80);
    *(a3 + 28) = 8;
    MILOpConverter::FillNEBiasInfo(ParameterValue, a2, a3, v10);
    MILOpConverter::FillPostscaleInfo(v7, a2, a3, v11);
    if (v8)
    {
      v12 = MIL::IRValue::GetScalar<signed char>();
    }

    else
    {
      v12 = 0;
    }

    *(a3 + 173) = v12;
    if (v9)
    {
      v13 = MIL::IRValue::GetScalar<signed char>();
    }

    else
    {
      v13 = 0;
    }

    *(a3 + 161) = v13;
  }
}

void sub_1A747B8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double _ZNSt3__18optionalI16ZinIrGOCUnitInfoE7emplaceB8ne200100IJEvEERS1_DpOT_(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(a1);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = -1;
  *a1 = &unk_1F19CA4D8;
  *(a1 + 80) = 0;
  *(a1 + 84) = 1065353216;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  result = NAN;
  *(a1 + 108) = -1;
  *(a1 + 120) = -1;
  *(a1 + 128) = 0;
  *(a1 + 132) = -1;
  *(a1 + 144) = -1;
  *(a1 + 152) = 1;
  return result;
}

void MILOpConverter::FillNEUnitInfo(MILOpConverter *this, const MIL::IROperation *a2, MILFunctionInfo *a3, ZinIrNEUnitInfo *a4)
{
  MILOpConverter::FillNEGOCInfo(this, a2, a3, a4);
  std::string::basic_string[abi:ne200100]<0>(__p, "activation");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  MILOpConverter::FillActivationInfo(ParameterValue, a3, v5);
  std::string::basic_string[abi:ne200100]<0>(__p, "binary_point");
  v7 = MIL::IROperation::TryGetParameterValue();
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
    *(a3 + 90) = MIL::IRValue::GetScalar<int>();
    *(a3 + 364) = 1;
  }
}

void sub_1A747BA7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MILOpConverter::FillPEUnitInfo(MILOpConverter *this, const MIL::IROperation *a2, ZinIrPEUnitInfo *a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "first_operand_input_relu");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
  }

  __asm { FMOV            V8.2S, #1.0 }

  if (ParameterValue)
  {
    v23 = 0uLL;
    v24 = 0;
    v26 = 0u;
    v27 = 0u;
    v28 = -1;
    __p = &unk_1F19CEE38;
    *v30 = xmmword_1A75A3510;
    *&v30[16] = _D8;
    LODWORD(v31) = 0;
    v25 = 6;
    v29 = 1;
    std::optional<ZinIrNeuronUnitInfo>::operator=[abi:ne200100]<ZinIrNeuronUnitInfo&,void>(a2 + 80, &__p);
    ZinIrUnitInfo::~ZinIrUnitInfo(&__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "second_operand_input_relu");
  v10 = MIL::IROperation::TryGetParameterValue();
  v11 = v10;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
    if (!v11)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v10)
  {
LABEL_9:
    v23 = 0uLL;
    v24 = 0;
    v26 = 0u;
    v27 = 0u;
    v28 = -1;
    __p = &unk_1F19CEE38;
    *v30 = xmmword_1A75A3510;
    *&v30[16] = _D8;
    LODWORD(v31) = 0;
    v25 = 6;
    v29 = 1;
    std::optional<ZinIrNeuronUnitInfo>::operator=[abi:ne200100]<ZinIrNeuronUnitInfo&,void>(a2 + 200, &__p);
    ZinIrUnitInfo::~ZinIrUnitInfo(&__p);
  }

LABEL_10:
  std::string::basic_string[abi:ne200100]<0>(&__p, "abs_or_zero_compare");
  v12 = MIL::IROperation::TryGetParameterValue();
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
  }

  if (v12)
  {
    *&v37[4] = 0;
    v38 = 0;
    v39 = 0;
    if ((RetrieveIRValue<std::string,std::string>(v12, &v37[4]) & 1) == 0)
    {
      ZinAssertImpl("Failed to retrieve the abs_or_zero_compare parameter");
    }

    if (SHIBYTE(v39) < 0)
    {
      if (v38 != 3)
      {
        goto LABEL_24;
      }

      v13 = *&v37[4];
    }

    else
    {
      if (SHIBYTE(v39) != 3)
      {
        goto LABEL_25;
      }

      v13 = &v37[4];
    }

    v14 = *v13;
    v15 = *(v13 + 2);
    if (v14 != 25185 || v15 != 115)
    {
      if ((v39 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v23 = 0uLL;
    v24 = 0;
    v26 = 0u;
    v27 = 0u;
    v28 = -1;
    __p = &unk_1F1A2EA10;
    v25 = 4;
    v29 = 9;
    std::optional<ZinIrEWUnitInfo>::operator=[abi:ne200100]<ZinIrEWUnitInfo&,void>(a2 + 320, &__p);
    ZinIrUnitInfo::~ZinIrUnitInfo(&__p);
    if (v39 < 0)
    {
LABEL_24:
      operator delete(*&v37[4]);
    }
  }

LABEL_25:
  std::string::basic_string[abi:ne200100]<0>(&__p, "output_activation");
  v17 = MIL::IROperation::TryGetParameterValue();
  v18 = v17;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
    if (!v18)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v17)
  {
LABEL_29:
    v23 = 0uLL;
    v24 = 0;
    v26 = 0u;
    v27 = 0u;
    v28 = -1;
    __p = &unk_1F19CEE38;
    *v30 = xmmword_1A75A3510;
    *&v30[16] = _D8;
    LODWORD(v31) = 0;
    v25 = 6;
    v29 = 1;
    std::optional<ZinIrNeuronUnitInfo>::operator=[abi:ne200100]<ZinIrNeuronUnitInfo&,void>(a2 + 416, &__p);
    ZinIrUnitInfo::~ZinIrUnitInfo(&__p);
  }

LABEL_30:
  *v37 = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(&__p, "bias");
  RetrieveOptionalValue<float>(this, &__p, &v37[4]);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "postscale");
  RetrieveOptionalValue<float>(this, &__p, v37);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
  }

  if (*&v37[4] != 0.0 || *v37 != 1.0)
  {
    v23 = 0uLL;
    v24 = 0;
    v26 = 0u;
    v27 = 0u;
    v28 = -1;
    __p = &unk_1F19CA4D8;
    v30[20] = 0;
    v31 = -1;
    v32 = -1;
    LOBYTE(v33) = 0;
    v34 = -1;
    v36 = -1;
    v25 = 8;
    *&v30[12] = *&v37[4];
    *&v30[16] = 6;
    *&v30[8] = 1;
    *v30 = *v37;
    *&v30[4] = 6;
    LOWORD(v29) = 1;
    std::optional<ZinIrGOCUnitInfo>::operator=[abi:ne200100]<ZinIrGOCUnitInfo&,void>(a2 + 536, &__p);
    ZinIrUnitInfo::~ZinIrUnitInfo(&__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "post_goc_activation");
  v19 = MIL::IROperation::TryGetParameterValue();
  v20 = v19;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
    if (!v20)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (v19)
  {
LABEL_41:
    v23 = 0uLL;
    v24 = 0;
    v26 = 0u;
    v27 = 0u;
    v28 = -1;
    __p = &unk_1F19CEE38;
    *v30 = xmmword_1A75A3510;
    *&v30[16] = _D8;
    LODWORD(v31) = 0;
    v25 = 6;
    v29 = 1;
    std::optional<ZinIrNeuronUnitInfo>::operator=[abi:ne200100]<ZinIrNeuronUnitInfo&,void>(a2 + 696, &__p);
    ZinIrUnitInfo::~ZinIrUnitInfo(&__p);
  }

LABEL_42:
  v21 = 1.0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "quant_scale");
  RetrieveOptionalValue<float>(this, &__p, &v21);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
  }

  if (v21 != 1.0)
  {
    v24 = 0;
    v23 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = -1;
    __p = &unk_1F1A34230;
    LOBYTE(v29) = 0;
    *v30 = -1;
    *&v30[12] = -1;
    v30[20] = 0;
    v31 = -1;
    v32 = -1;
    v35 = 0;
    v33 = LODWORD(v21);
    v34 = 0x600000000;
    v25 = 58;
    std::optional<ZinIrQuantUnitInfo>::operator=[abi:ne200100]<ZinIrQuantUnitInfo&,void>(a2 + 816, &__p);
    ZinIrUnitInfo::~ZinIrUnitInfo(&__p);
  }
}

void sub_1A747C098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrUnitInfo::~ZinIrUnitInfo(va);
  if (*(v4 - 65) < 0)
  {
    operator delete(*(v3 + 160));
  }

  _Unwind_Resume(a1);
}

uint64_t RetrieveOptionalValue<float>(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  result = MIL::IROperation::TryGetParameterValue();
  if (result)
  {
    result = RetrieveIRValue<float,float>(result, a3);
    if ((result & 1) == 0)
    {
      if (*(a2 + 23) >= 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = *a2;
      }

      ZinAssertImpl("Failed to retrieve parameter %s", v6);
    }
  }

  return result;
}

void MILOpConverter::FillOutputFormatAndChannel(MILOpConverter *this, const MIL::IROperation *a2, const MILFunctionInfo *a3, ZinIrUnitInfo *a4)
{
  OutputType = MIL::IROperation::GetOutputType(this);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  ToZinTensorFormat(v8, a3 + 17);
  v12[0] = vdupq_n_s64(1uLL);
  v12[1] = v12[0];
  v13 = 1;
  v9 = (*(*v7 + 96))(v7);
  v11[0] = 0;
  v11[1] = 0;
  v10 = v11;
  ToZinTensorDimensions(a2, v9, v12, &v10);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v10, v11[0]);
  *(a3 + 9) = v12[0].i64[1];
}

void MILOpConverter::FillNEConvUnitInfo(MILOpConverter *this, const MIL::IROperation *a2, MILFunctionInfo *a3, ZinIrNEConvUnitInfo *a4)
{
  *(a3 + 8) = 68;
  MILOpConverter::FillOutputFormatAndChannel(this, a2, a3, a4);
  MILOpConverter::FillNEUnitInfo(this, a2, a3, v7);
  std::string::basic_string[abi:ne200100]<0>(&v42, "x");
  ParameterType = MIL::IROperation::TryGetParameterType();
  v9 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v43.i8[7] < 0)
  {
    operator delete(v42.i64[0]);
  }

  v42 = vdupq_n_s64(1uLL);
  v43 = v42;
  v44 = 1;
  v39 = v42;
  v40 = v42;
  v41 = 1;
  v10 = (*(*v9 + 96))(v9);
  *&__p[8] = 0;
  *&__p[16] = 0;
  *__p = &__p[8];
  ToZinTensorDimensions(a2, v10, &v42, __p);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(__p, *&__p[8]);
  OutputType = MIL::IROperation::GetOutputType(this);
  v12 = MIL::IRValueType::AsTensorType(OutputType);
  v13 = (*(*v12 + 96))(v12);
  *&__p[8] = 0;
  *&__p[16] = 0;
  *__p = &__p[8];
  ToZinTensorDimensions(a2, v13, &v39, __p);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(__p, *&__p[8]);
  *(a3 + 100) = 1;
  std::string::basic_string[abi:ne200100]<0>(__p, "strides");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (ParameterValue)
  {
    MILOpConverter::FillStridesInfo(ParameterValue, a3 + 660);
  }

  v38 = 1;
  std::string::basic_string[abi:ne200100]<0>(__p, "groups");
  RetrieveOptionalValue<int>(this, __p, &v38);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  *(a3 + 77) = v38;
  std::string::basic_string[abi:ne200100]<0>(__p, "mode");
  v15 = MIL::IROperation::TryGetParameterValue();
  v16 = v15;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if (!v16)
    {
LABEL_70:
      v19 = 0;
      goto LABEL_71;
    }
  }

  else if (!v15)
  {
    goto LABEL_70;
  }

  memset(__p, 0, 24);
  if ((RetrieveIRValue<std::string,std::string>(v16, __p) & 1) == 0)
  {
    ZinAssertImpl("Failed to retrieve the mode parameter");
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    if (*&__p[8] != 10 || (**__p == 0x736F70736E617274 ? (v20 = *(*__p + 8) == 25701) : (v20 = 0), !v20))
    {
      if (*&__p[8] == 11 && **__p == 0x776C656E6E616863 && *(*__p + 3) == 0x657369776C656E6ELL)
      {
        goto LABEL_53;
      }

      if (*&__p[8] != 22 || (**__p == 0x776C656E6E616863 ? (v22 = *(*__p + 8) == 0x6E6172742D657369) : (v22 = 0), v22 ? (v23 = *(*__p + 14) == 0x6465736F70736E61) : (v23 = 0), !v23))
      {
        v24 = *__p;
        if (*&__p[8] != 8 || **__p != 0x647261646E617473)
        {
          goto LABEL_86;
        }

        v16 = 0;
        v19 = 0;
LABEL_66:
        operator delete(*__p);
        goto LABEL_71;
      }

      v19 = 1;
LABEL_65:
      v16 = 1;
      if ((__p[23] & 0x80) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_66;
    }

LABEL_61:
    if ((*(a3 + 165) - 1) >= 2)
    {
      ZinAssertImpl("Invalid stride on x for transposed convolution. Expecting 1 or 2. Actual: %d");
    }

    if ((*(a3 + 166) - 1) > 1)
    {
      ZinAssertImpl("Invalid stride on y for transposed convolution. Expecting 1 or 2. Actual: %d");
    }

    if ((*(a3 + 167) - 1) >= 2)
    {
      ZinAssertImpl("Invalid stride on z for transposed convolution. Expecting 1 or 2. Actual: %d");
    }

    v19 = 0;
    goto LABEL_65;
  }

  if (__p[23] == 10)
  {
    if (*__p != 0x736F70736E617274 || *&__p[8] != 25701)
    {
      goto LABEL_85;
    }

    goto LABEL_61;
  }

  if (__p[23] != 11)
  {
    if (__p[23] == 22)
    {
      if (*__p == 0x776C656E6E616863 && *&__p[8] == 0x6E6172742D657369 && *&__p[14] == 0x6465736F70736E61)
      {
        v16 = 1;
        v19 = 1;
        goto LABEL_71;
      }

      goto LABEL_85;
    }

    v24 = __p;
    if (__p[23] == 8 && *__p == 0x647261646E617473)
    {
      v16 = 0;
      goto LABEL_70;
    }

LABEL_86:
    ZinAssertImpl("Unexpected convolution mode: %s", v24);
  }

  if (*__p != 0x776C656E6E616863 || *&__p[3] != 0x657369776C656E6ELL)
  {
LABEL_85:
    v24 = __p;
    goto LABEL_86;
  }

LABEL_53:
  if (v42.i64[1] != v39.i64[1])
  {
    ZinAssertImpl("Input and output channel numbers should be the same for channelwise convolution. Actual: input channels = %zd, output channels = %zd", v42.u64[1], v39.u64[1]);
  }

  v16 = 0;
  v19 = 1;
  if ((__p[23] & 0x80) != 0)
  {
    goto LABEL_66;
  }

LABEL_71:
  std::string::basic_string[abi:ne200100]<0>(__p, "dilations");
  v28 = MIL::IROperation::TryGetParameterValue();
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  MILOpConverter::FillDilationsInfo(v28, (a3 + 368), v27);
  MILOpConverter::FillConvWeightInfo(this, a2, (a3 + 368), v29);
  MILOpConverter::FillConvolutionType(v16, v19, a3 + 92, v30);
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "pad_type");
  RetrieveRequiredValue<std::string>(this, __p, v36, 0);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "pad");
  v31 = MIL::IROperation::TryGetParameterValue();
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v32 = MIL::IRTensorValueType::Rank(v9);
  if (!v16)
  {
    *__p = v39;
    *&__p[16] = v40;
    v35 = v41;
    MILOpConverter::FillPadInfo(v36, v31, v32, &v42, __p, a3 + 156, a3 + 165, v33, *(a3 + 81), *(a3 + 164) | 0x100000000, a3 + 84);
  }

  *__p = v39;
  *&__p[16] = v40;
  v35 = v41;
  MILOpConverter::FillDeconvPadInfo(v36, v31, v32, &v42, __p, a3 + 78, a3 + 165, a3 + 162, a3 + 168);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[0]);
  }
}

void sub_1A747C91C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RetrieveOptionalValue<int>(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  result = MIL::IROperation::TryGetParameterValue();
  if (result)
  {
    result = RetrieveIRValue<int,int>(result, a3);
    if ((result & 1) == 0)
    {
      if (*(a2 + 23) >= 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = *a2;
      }

      ZinAssertImpl("Failed to retrieve parameter %s", v6);
    }
  }

  return result;
}

void MILOpConverter::FillNEBypassUnitInfo(MILOpConverter *a1, const MIL::IROperation *a2, const MILFunctionInfo *a3, ZinIrUnitInfo *a4)
{
  *(a3 + 8) = 71;
  MILOpConverter::FillOutputFormatAndChannel(a1, a2, a3, a4);

  MILOpConverter::FillNEUnitInfo(a1, a2, a3, v7);
}

void MILOpConverter::FillNEMatMulUnitInfo(MILOpConverter *this, const MIL::IROperation *a2, MILFunctionInfo *a3, ZinIrNEMatMulUnitInfo *a4)
{
  *(a3 + 8) = 69;
  MILOpConverter::FillOutputFormatAndChannel(this, a2, a3, a4);
  MILOpConverter::FillNEUnitInfo(this, a2, a3, v7);
  *(a3 + 100) = 18;
}

void MILOpConverter::FillNEPoolUnitInfo(MILOpConverter *this, const MIL::IROperation *a2, MILFunctionInfo *a3, ZinIrNEPoolUnitInfo *a4)
{
  *(a3 + 8) = 70;
  MILOpConverter::FillOutputFormatAndChannel(this, a2, a3, a4);
  MILOpConverter::FillNEUnitInfo(this, a2, a3, v7);
  MILOpConverter::FillPoolUnitInfo(this, a2, (a3 + 368), v8);
}

void sub_1A747CC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MILOpConverter::FillPoolUnitInfo(MILOpConverter *this, const MIL::IROperation *a2, const MILFunctionInfo *a3, ZinIrPoolUnitInfo *a4)
{
  *(a3 + 8) = 2;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "pooling_type");
  RetrieveRequiredValue<std::string>(this, __p, &v36, 0);
  if (SBYTE7(v33) < 0)
  {
    operator delete(__p[0]);
  }

  *(a3 + 20) = MILOpConverter::EngineLayerStringToPoolingType(&v36);
  if (SHIBYTE(v38) < 0)
  {
    if (v37 != 3)
    {
      goto LABEL_15;
    }

    v7 = v36;
  }

  else
  {
    if (SHIBYTE(v38) != 3)
    {
      goto LABEL_15;
    }

    v7 = &v36;
  }

  v8 = *v7;
  v9 = *(v7 + 2);
  if (v8 == 30305 && v9 == 103)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "exclude_padding_from_average");
    RetrieveRequiredValue<BOOL>(this, __p, a3 + 148, 0);
    if (SBYTE7(v33) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_15:
  std::string::basic_string[abi:ne200100]<0>(__p, "prescale");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  v12 = ParameterValue;
  if (SBYTE7(v33) < 0)
  {
    operator delete(__p[0]);
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  else if (!ParameterValue)
  {
    goto LABEL_21;
  }

  LODWORD(__p[0]) = 1065353216;
  if ((RetrieveIRValue<float,float>(v12, __p) & 1) == 0)
  {
    ZinAssertImpl("Failed to retrieve the prescale parameter");
  }

  *(a3 + 39) = __p[0];
  *(a3 + 40) = 6;
LABEL_21:
  std::string::basic_string[abi:ne200100]<0>(__p, "kernel_sizes");
  v13 = MIL::IROperation::TryGetParameterValue();
  MILOpConverter::FillKernelInfo(v13, a3, v14);
  if (SBYTE7(v33) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "strides");
  v15 = MIL::IROperation::TryGetParameterValue();
  v16 = v15;
  if (SBYTE7(v33) < 0)
  {
    operator delete(__p[0]);
    if (!v16)
    {
      goto LABEL_28;
    }
  }

  else if (!v15)
  {
LABEL_28:
    memset(v35, 0, sizeof(v35));
    std::string::basic_string[abi:ne200100]<0>(__p, "pad_type");
    RetrieveRequiredValue<std::string>(this, __p, v35, 0);
    if (SBYTE7(v33) < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "pad");
    v17 = MIL::IROperation::TryGetParameterValue();
    if (SBYTE7(v33) < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "x");
    ParameterType = MIL::IROperation::TryGetParameterType();
    v19 = MIL::IRValueType::AsTensorType(ParameterType);
    if (SBYTE7(v33) < 0)
    {
      operator delete(__p[0]);
    }

    OutputType = MIL::IROperation::GetOutputType(this);
    v21 = MIL::IRValueType::AsTensorType(OutputType);
    *__p = vdupq_n_s64(1uLL);
    v33 = *__p;
    v34 = 1;
    v29 = *__p;
    v30 = *__p;
    v31 = 1;
    v22 = (*(*v19 + 96))(v19);
    v26.i64[1] = 0;
    *&v27 = 0;
    v26.i64[0] = &v26.i64[1];
    ToZinTensorDimensions(a2, v22, __p, &v26);
    std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v26, v26.i64[1]);
    v23 = (*(*v21 + 96))(v21);
    *&v27 = 0;
    v26 = &v26.u64[1];
    ToZinTensorDimensions(a2, v23, &v29, &v26);
    std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v26, v26.i64[1]);
    v24 = MIL::IRTensorValueType::Rank(v19);
    v26 = v29;
    v27 = v30;
    v28 = v31;
    MILOpConverter::FillPadInfo(v35, v17, v24, __p, &v26, a3 + 22, a3 + 28, v25, 0, 0, (a3 + 124));
  }

  MILOpConverter::FillStridesInfo(v16, a3 + 112);
  goto LABEL_28;
}

void sub_1A747D084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (*(v30 - 65) < 0)
  {
    operator delete(*(v30 - 88));
  }

  _Unwind_Resume(exception_object);
}

void MILOpConverter::FillPEPoolUnitInfo(MILOpConverter *this, const MIL::IROperation *a2, const MILFunctionInfo *a3, ZinIrPEPoolUnitInfo *a4)
{
  *(a3 + 8) = 72;
  MILOpConverter::FillOutputFormatAndChannel(this, a2, a3, a4);
  MILOpConverter::FillPEUnitInfo(this, a3, v7);

  MILOpConverter::FillPoolUnitInfo(this, a2, (a3 + 968), v8);
}

unint64_t MILOpConverter::FillPEGOCUnitInfo(MILOpConverter *this, const MIL::IROperation *a2, const MILFunctionInfo *a3, ZinIrPEGOCUnitInfo *a4)
{
  *(a3 + 8) = 74;
  MILOpConverter::FillOutputFormatAndChannel(this, a2, a3, a4);
  MILOpConverter::FillPEUnitInfo(this, a3, v6);
  *(a3 + 250) = 9;
  std::string::basic_string[abi:ne200100]<0>(__p, "prescale");
  RetrieveOptionalValue<float>(this, __p, a3 + 262);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "negate_src1");
  RetrieveOptionalValue<BOOL>(this, __p, a3 + 1052);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "negate_src2");
  RetrieveOptionalValue<BOOL>(this, __p, a3 + 1053);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "y");
  ParameterType = MIL::IROperation::GetParameterType();
  v8 = MIL::IRValueType::AsTensorType(ParameterType);
  v9 = (*(*v8 + 96))(v8);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = MIL::IRDimension::AsConstant(*(*v9 + 32));
  v11 = (*(*v10 + 48))(v10);
  v12 = MIL::IRDimension::AsConstant(*(*v9 + 16));
  result = (*(*v12 + 48))(v12);
  if (result < 2)
  {
    v14 = 1;
  }

  else
  {
    if (v11 != 1)
    {
      ZinAssertImpl("Either width or channel of the scale-bias input to PEGOC must be one");
    }

    v14 = 0;
  }

  *(a3 + 1176) = v14;
  return result;
}

void sub_1A747D378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *RetrieveOptionalValue<BOOL>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = MIL::IROperation::TryGetParameterValue();
  if (result)
  {
    result = MEMORY[0x1AC559670]();
    if (!result)
    {
      if (*(a2 + 23) >= 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = *a2;
      }

      ZinAssertImpl("Failed to retrieve parameter %s", v6);
    }

    *a3 = *result;
  }

  return result;
}

uint64_t MILOpConverter::EngineLayerStringToPoolingType(char *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v9, "max");
  v10 = 2;
  std::string::basic_string[abi:ne200100]<0>(v11, "min");
  v12 = 4;
  std::string::basic_string[abi:ne200100]<0>(v13, "avg");
  v14 = 1;
  std::string::basic_string[abi:ne200100]<0>(v15, "channel_max");
  v16 = 3;
  std::string::basic_string[abi:ne200100]<0>(v17, "channel_min");
  v18 = 5;
  std::string::basic_string[abi:ne200100]<0>(v19, "spatial_and_channel_max");
  v20 = 9;
  std::string::basic_string[abi:ne200100]<0>(v21, "spatial_and_channel_min");
  v22 = 10;
  std::string::basic_string[abi:ne200100]<0>(v23, "spatial_and_channel_avg");
  v24 = 8;
  std::string::basic_string[abi:ne200100]<0>(v25, "argmax");
  v26 = 11;
  std::string::basic_string[abi:ne200100]<0>(v27, "argmin");
  v28 = 13;
  std::string::basic_string[abi:ne200100]<0>(v29, "channel_argmax");
  v30 = 12;
  std::string::basic_string[abi:ne200100]<0>(v31, "channel_argmin");
  v32 = 14;
  std::map<std::string,ZinIrPoolingType>::map[abi:ne200100](v7, v9, 12);
  v2 = 48;
  do
  {
    if (SHIBYTE(v8[v2]) < 0)
    {
      operator delete(v9[v2 - 4]);
    }

    v2 -= 4;
  }

  while (v2 * 8);
  v3 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(v7, a1);
  if (v8 == v3)
  {
    if (a1[23] >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    ZinAssertImpl("Unsupported pooling type %s", v6);
  }

  v4 = *(v3 + 56);
  std::__tree<std::string>::destroy(v7, v8[0]);
  return v4;
}

void sub_1A747D660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = (v14 + 375);
  v17 = -384;
  v18 = v16;
  while (1)
  {
    v19 = *v18;
    v18 -= 32;
    if (v19 < 0)
    {
      operator delete(*(v16 - 23));
    }

    v16 = v18;
    v17 += 32;
    if (!v17)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

_BYTE *RetrieveRequiredValue<BOOL>(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (!MIL::IROperation::TryGetParameterValue() || (result = MEMORY[0x1AC559670]()) == 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    ZinAssertImpl("Failed to retrieve parameter %s", v7);
  }

  *a3 = *result;
  return result;
}

void MILOpConverter::FillPEElementWiseUnitInfo(MILOpConverter *this, const MIL::IROperation *a2, const MILFunctionInfo *a3, ZinIrPEElementWiseUnitInfo *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  *(a3 + 8) = 73;
  MILOpConverter::FillOutputFormatAndChannel(this, a2, a3, a4);
  MILOpConverter::FillPEUnitInfo(this, a3, v6);
  std::string::basic_string[abi:ne200100]<0>(__p, "op");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  v8 = ParameterValue;
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
    if (!v8)
    {
      goto LABEL_20;
    }
  }

  else if (!ParameterValue)
  {
    goto LABEL_20;
  }

  memset(&v31[1], 0, 24);
  v33 = 0u;
  v34 = 0u;
  v35 = -1;
  v31[0] = &unk_1F1A33E68;
  __asm { FMOV            V0.2S, #1.0 }

  v37 = _D0;
  v38 = 0;
  LOWORD(v39) = 0;
  v36 = 0;
  v32 = 5;
  MIL::IRValue::GetScalar<std::string>();
  *v29 = *__p;
  v30 = v41;
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "add");
    v42 = 1;
    std::string::basic_string[abi:ne200100]<0>(v43, "mul");
    v44 = 2;
    std::string::basic_string[abi:ne200100]<0>(v45, "sum_sqr");
    v46 = 3;
    std::string::basic_string[abi:ne200100]<0>(v47, "max");
    v48 = 4;
    std::string::basic_string[abi:ne200100]<0>(v49, "min");
    v50 = 5;
    std::map<std::string,ZinIrScaledEWType>::map[abi:ne200100](&ToScaledEWType(std::string const&)::mil_to_sew_type, __p, 5);
    for (i = 0; i != -20; i -= 4)
    {
      if (SHIBYTE(v49[i + 2]) < 0)
      {
        operator delete(v49[i]);
      }
    }

    __cxa_atexit(std::map<std::string,ZinIrScaledEWType>::~map[abi:ne200100], &ToScaledEWType(std::string const&)::mil_to_sew_type, &dword_1A617D000);
  }

  v14 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(&ToScaledEWType(std::string const&)::mil_to_sew_type, v29);
  if (v14 == &unk_1EB29F4F8)
  {
    v22 = v29;
    if (v30 < 0)
    {
      v22 = v29[0];
    }

    ZinAssertImpl("Unsupporting scaled element-wise op %s", v22);
  }

  v36 = *(v14 + 56);
  std::string::basic_string[abi:ne200100]<0>(__p, "prescale");
  RetrieveOptionalValue<float>(this, __p, &v37 + 1);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "negate_src1");
  RetrieveOptionalValue<BOOL>(this, __p, &v39);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "negate_src2");
  RetrieveOptionalValue<BOOL>(this, __p, &v39 + 1);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ew_scale");
  RetrieveOptionalValue<float>(this, __p, &v37);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ew_bias");
  RetrieveOptionalValue<float>(this, __p, &v38);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
  }

  std::optional<ZinIrScaledEWUnitInfo>::operator=[abi:ne200100]<ZinIrScaledEWUnitInfo&,void>(a3 + 968, v31);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(v31);
LABEL_20:
  std::string::basic_string[abi:ne200100]<0>(__p, "reduction");
  v15 = MIL::IROperation::TryGetParameterValue();
  v16 = v15;
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
    if (!v16)
    {
      return;
    }
  }

  else if (!v15)
  {
    return;
  }

  ZinIrReductionUnitInfo::ZinIrReductionUnitInfo(v31);
  v32 = 20;
  v39 |= 0x1AuLL;
  v29[0] = 0;
  v29[1] = 0;
  v30 = 0;
  RetrieveIRValue<std::string,std::string>(v16, v29);
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "sum");
    v42 = 0;
    std::string::basic_string[abi:ne200100]<0>(v43, "avg");
    v44 = 3;
    std::string::basic_string[abi:ne200100]<0>(v45, "min");
    v46 = 1;
    std::string::basic_string[abi:ne200100]<0>(v47, "max");
    v48 = 2;
    std::string::basic_string[abi:ne200100]<0>(v49, "argmin");
    v50 = 6;
    std::string::basic_string[abi:ne200100]<0>(v51, "argmax");
    v52 = 7;
    std::map<std::string,ZinIrReductionType>::map[abi:ne200100](&FillPEReductionInfo(MIL::IROperation const&,std::optional<ZinIrReductionUnitInfo> &)::mil_to_reduction_type, __p, 6);
    for (j = 0; j != -24; j -= 4)
    {
      if (SHIBYTE(v51[j + 2]) < 0)
      {
        operator delete(v51[j]);
      }
    }

    __cxa_atexit(std::map<std::string,ZinIrReductionType>::~map[abi:ne200100], &FillPEReductionInfo(MIL::IROperation const&,std::optional<ZinIrReductionUnitInfo> &)::mil_to_reduction_type, &dword_1A617D000);
  }

  v17 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(&FillPEReductionInfo(MIL::IROperation const&,std::optional<ZinIrReductionUnitInfo> &)::mil_to_reduction_type, v29);
  if (v17 == &unk_1EB29F518)
  {
    v24 = v29;
    if (v30 < 0)
    {
      v24 = v29[0];
    }

    ZinAssertImpl("Unsupported reduction type: %s", v24);
  }

  v36 = *(v17 + 56);
  std::string::basic_string[abi:ne200100]<0>(__p, "final_scale");
  RetrieveOptionalValue<float>(this, __p, &v37 + 1);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "epsilon");
  RetrieveOptionalValue<float>(this, __p, &v38);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "reduction_post_processing");
  v18 = MIL::IROperation::TryGetParameterValue();
  v19 = v18;
  if ((SHIBYTE(v41) & 0x80000000) == 0)
  {
    if (!v18)
    {
      goto LABEL_38;
    }

LABEL_34:
    v27[0] = 0;
    v27[1] = 0;
    v28 = 0;
    RetrieveIRValue<std::string,std::string>(v19, v27);
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "inv");
      v42 = 1;
      std::string::basic_string[abi:ne200100]<0>(v43, "sqrt");
      v44 = 3;
      std::string::basic_string[abi:ne200100]<0>(v45, "rsqrt");
      v46 = 2;
      std::map<std::string,ZinReductionPostOp>::map[abi:ne200100](&ToReductionPostOp(std::string const&)::mil_to_post_processing_op, __p, 3);
      for (k = 0; k != -12; k -= 4)
      {
        if (SHIBYTE(v45[k + 2]) < 0)
        {
          operator delete(v45[k]);
        }
      }

      __cxa_atexit(std::map<std::string,ZinReductionPostOp>::~map[abi:ne200100], &ToReductionPostOp(std::string const&)::mil_to_post_processing_op, &dword_1A617D000);
    }

    v20 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(&ToReductionPostOp(std::string const&)::mil_to_post_processing_op, v27);
    if (v20 == &unk_1EB29F538)
    {
      v26 = v27;
      if (v28 < 0)
      {
        v26 = v27[0];
      }

      ZinAssertImpl("Unsupported reduction post op: %s", v26);
    }

    LODWORD(v37) = *(v20 + 56);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27[0]);
    }

    goto LABEL_38;
  }

  operator delete(__p[0]);
  if (v19)
  {
    goto LABEL_34;
  }

LABEL_38:
  std::optional<ZinIrReductionUnitInfo>::operator=[abi:ne200100]<ZinIrReductionUnitInfo&,void>(a3 + 1080, v31);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(v31);
}

void sub_1A747DF68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  v43 = (v41 + 87);
  v44 = -96;
  v45 = v43;
  while (1)
  {
    v46 = *v45;
    v45 -= 32;
    if (v46 < 0)
    {
      operator delete(*(v43 - 23));
    }

    v43 = v45;
    v44 += 32;
    if (!v44)
    {
      if (a15 < 0)
      {
        operator delete(__p);
      }

      if (a21 < 0)
      {
        operator delete(a16);
      }

      ZinIrUnitInfo::~ZinIrUnitInfo(&a22);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t std::map<std::string,ZinIrScaledEWType>::map[abi:ne200100](uint64_t a1, char *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,SpatialSplitMode>,std::__map_value_compare<std::string,std::__value_type<std::string,SpatialSplitMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SpatialSplitMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,SpatialSplitMode> const&>(a1, v4, a2, a2);
      a2 += 32;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::map<std::string,ZinIrReductionType>::map[abi:ne200100](uint64_t a1, char *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,SpatialSplitMode>,std::__map_value_compare<std::string,std::__value_type<std::string,SpatialSplitMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SpatialSplitMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,SpatialSplitMode> const&>(a1, v4, a2, a2);
      a2 += 32;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::map<std::string,ZinReductionPostOp>::map[abi:ne200100](uint64_t a1, char *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,SpatialSplitMode>,std::__map_value_compare<std::string,std::__value_type<std::string,SpatialSplitMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SpatialSplitMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,SpatialSplitMode> const&>(a1, v4, a2, a2);
      a2 += 32;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::map<std::string,ZinIrNeuronType>::map[abi:ne200100](uint64_t a1, char *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,SpatialSplitMode>,std::__map_value_compare<std::string,std::__value_type<std::string,SpatialSplitMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SpatialSplitMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,SpatialSplitMode> const&>(a1, v4, a2, a2);
      a2 += 32;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::map<std::string,ZinIrPoolingType>::map[abi:ne200100](uint64_t a1, char *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,SpatialSplitMode>,std::__map_value_compare<std::string,std::__value_type<std::string,SpatialSplitMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SpatialSplitMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,SpatialSplitMode> const&>(a1, v4, a2, a2);
      a2 += 32;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void MILOpConverter::Reshape(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  v7 = (*(*v6 + 96))(v6);
  GetMILShapeAsVector(v7, &v29);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  memset(&__p, 0, sizeof(__p));
  std::string::basic_string[abi:ne200100]<0>(v26, "shape");
  RetrieveRequiredValue<int>(a1, v26, &__p, 0);
  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  v9 = v29;
  v8 = v30;
  v10 = v30 - v29;
  begin = __p.__begin_;
  end = __p.__end_;
  v13 = __p.__end_ - __p.__begin_;
  if (v13 >= 1)
  {
    v14 = ((__p.__end_ - __p.__begin_) >> 2) & 0x7FFFFFFF;
    v15 = (v10 >> 2) - v14;
    v16 = __p.__begin_;
    do
    {
      if (!*v16)
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
          v17 = 1;
        }

        else
        {
          v17 = v9[v15];
        }

        *v16 = v17;
      }

      ++v15;
      ++v16;
      --v14;
    }

    while (v14);
  }

  if (end != begin)
  {
    v18 = 0;
    v19 = v10 >> 2;
    if (v19 <= 1)
    {
      v19 = 1;
    }

    if (v13 <= 1)
    {
      v13 = 1;
    }

    do
    {
      if (begin[v18] == -1)
      {
        v20 = 1;
        if (v8 != v9)
        {
          v21 = v19;
          v22 = v9;
          do
          {
            v23 = *v22++;
            v20 *= v23;
            --v21;
          }

          while (v21);
        }

        v24 = 0;
        v25 = 1;
        do
        {
          if (v18 != v24)
          {
            v25 *= begin[v24];
          }

          ++v24;
        }

        while (v13 != v24);
        if (v20 % v25)
        {
          ZinAssertImpl("Failed to infer -1 dimension for reshape. Input shape element count %d must be divisible by non--1 shape element count %d.", v25, v20);
        }

        begin[v18] = v20 / v25;
      }

      ++v18;
    }

    while (v18 != v13);
  }

  MILOpConverter::ReshapeImpl(a1, &__p, a3);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }
}

void sub_1A747E684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  v25 = *(v23 - 40);
  if (v25)
  {
    *(v23 - 32) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

void MILOpConverter::ReshapeImpl(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v19 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(v13);
  if (*(*&v13[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, **&v13[0], *(*&v13[0] + 8));
  }

  else
  {
    v6 = **&v13[0];
    v14.__r_.__value_.__r.__words[2] = *(*&v13[0] + 16);
    *&v14.__r_.__value_.__l.__data_ = v6;
  }

  v12[0] = v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v12);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v8 = MIL::IRValueType::AsTensorType(OutputType);
  v9 = (*(*v8 + 88))(v8);
  memset(v13, 0, sizeof(v13));
  std::string::basic_string[abi:ne200100]<0>(v17, "x");
  memset(v11, 0, sizeof(v11));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v11, v17, &v19, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v13, a1, v11, a3, v12);
  v15 = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  v16[0] = &unk_1F1A3CB38;
  v16[1] = a3;
  v16[2] = a2;
  v16[3] = v16;
  ZinMILUnitBuilder::CreateUnit<ZinIrReshapeUnitInfo>(v12, v16, v10);
  v11[0] = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v11);
  std::__function::__value_func<void ()(std::optional<ZinIrReshapeUnitInfo> &)>::~__value_func[abi:ne200100](v16);
  ZinMILUnitBuilder::Finalize(v13, a3, a1, &v14.__r_.__value_.__l.__data_, v9, 1, 1);
  v11[0] = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v11);
  v12[0] = &v13[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v12);
  v12[0] = v13;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v12);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_1A747E924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  a16 = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void MILOpConverter::ReshapeLike(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  std::string::basic_string[abi:ne200100]<0>(&v34, "ref_tensors");
  v5 = (*(*a1 + 152))(a1, &v34);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(v34);
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "begins");
  VariadicScalarAs = RetrieveVariadicScalarAsVector<int>(a1, &__p, &v34);
  if (v30 < 0)
  {
    operator delete(__p);
  }

  if (!VariadicScalarAs)
  {
    ZinAssertImpl("Failed to retrieve required variadic input begins.");
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "ends");
  v7 = RetrieveVariadicScalarAsVector<int>(a1, &__p, &v31);
  if (v30 < 0)
  {
    operator delete(__p);
  }

  if (!v7)
  {
    ZinAssertImpl("Failed to retrieve required variadic input ends.");
  }

  v8 = v5;
  LOBYTE(v25) = 0;
  std::vector<BOOL>::vector(&__p, v5, &v25);
  std::string::basic_string[abi:ne200100]<0>(&v25, "endmasks");
  if (MIL::IROperation::TryGetParameterValue())
  {
    v29 = 0;
    v9 = (*(*a1 + 152))(a1, &v25);
    if (v9 >= 1)
    {
      for (i = 0; i != v9; ++i)
      {
        ParameterValue = MIL::IROperation::GetParameterValue();
        MIL::IRValue::AsTensor(ParameterValue);
        LOBYTE(v22) = *MIL::IRTensorValue::GetDataView<BOOL>();
        std::vector<BOOL>::push_back(&__p, &v22);
      }
    }
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v25);
  }

  if (v5 != (v35 - v34) >> 2 || v5 != (v32 - v31) >> 2 || v29 != v5)
  {
    ZinAssertImpl("size of begins/ends/endmasks must match size of ref_tensors.");
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  if (v5)
  {
    v12 = 0;
    do
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      std::string::basic_string[abi:ne200100]<0>(v20, "ref_tensors");
      ParameterType = MIL::IROperation::GetParameterType();
      v14 = MIL::IRValueType::AsTensorType(ParameterType);
      v15 = (*(*v14 + 96))(v14);
      GetMILShapeAsVector(v15, &v22);
      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v16 = (v23 - v22) >> 2;
      v19 = 0;
      LODWORD(v20[0]) = 0;
      RetrievePositiveAxis(v16, *(v34 + v12), v20);
      RetrievePositiveAxis(v16, *(v31 + v12), &v19);
      if ((*(__p + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12))
      {
        v19 = v16;
      }

      else
      {
        LODWORD(v16) = v19;
      }

      v17 = SLODWORD(v20[0]);
      if (SLODWORD(v20[0]) < v16)
      {
        v18 = 4 * SLODWORD(v20[0]);
        do
        {
          std::vector<unsigned int>::push_back[abi:ne200100](&v25, (v22 + v18));
          ++v17;
          v18 += 4;
        }

        while (v17 < v19);
      }

      if (v22)
      {
        v23 = v22;
        operator delete(v22);
      }

      ++v12;
    }

    while (v12 != v8);
  }

  MILOpConverter::ReshapeImpl(a1, &v25, a3);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_1A747ED70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a32)
  {
    operator delete(a32);
  }

  v36 = *(v34 - 88);
  if (v36)
  {
    *(v33 + 8) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

BOOL RetrieveVariadicScalarAsVector<int>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (ParameterValue)
  {
    *(a3 + 8) = *a3;
    v7 = (*(*a1 + 152))(a1, a2);
    if (v7 >= 1)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = MIL::IROperation::GetParameterValue();
        MIL::IRValue::AsTensor(v10);
        v12 = *MIL::IRTensorValue::GetDataView<int>();
        std::vector<unsigned int>::push_back[abi:ne200100](a3, &v12);
      }
    }
  }

  return ParameterValue != 0;
}

__n128 std::__function::__func<MILOpConverter::ReshapeImpl(MIL::IROperation const&,std::vector<int> const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ReshapeImpl(MIL::IROperation const&,std::vector<int> const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrReshapeUnitInfo> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A3CB38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<MILOpConverter::ReshapeImpl(MIL::IROperation const&,std::vector<int> const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ReshapeImpl(MIL::IROperation const&,std::vector<int> const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrReshapeUnitInfo> &)>::operator()(uint64_t a1, int64x2_t *a2)
{
  ZinIrReshapeUnitInfo::ZinIrReshapeUnitInfo(&v20);
  std::optional<ZinIrReshapeUnitInfo>::operator=[abi:ne200100]<ZinIrReshapeUnitInfo,void>(a2, &v20);
  v20 = &unk_1F1A34058;
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(&v20);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v21[0] = 0;
  v21[1] = 0;
  v20 = v21;
  ToZinTensorDimensions(v4, v5, a2 + 5, &v20);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v20, v21[0]);
  v6 = &a2[7].i64[1];
  a2[8].i64[0] = a2[7].i64[1];
  v7 = *(*(a1 + 8) + 600);
  v8 = *(v7 + 143);
  if (v8 < 0)
  {
    v9 = *(v7 + 120);
    v8 = *(v7 + 128);
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v9 = (v7 + 120);
    if (!*(v7 + 143))
    {
      return;
    }
  }

  do
  {
    LODWORD(v20) = 0;
    if ((ToZinIrDimension(*v9, &v20) & 1) == 0)
    {
      ZinAssertImpl("ANE internal error: Invalid dimension %c.", *v9);
    }

    v11 = a2[8].i64[0];
    v10 = a2[8].u64[1];
    if (v11 >= v10)
    {
      v13 = *v6;
      v14 = v11 - *v6;
      v15 = v14 >> 2;
      v16 = (v14 >> 2) + 1;
      if (v16 >> 62)
      {
        std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
      }

      v17 = v10 - v13;
      if (v17 >> 1 > v16)
      {
        v16 = v17 >> 1;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v18 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrPaddingMode>>(&a2[7].i64[1], v18);
      }

      *(4 * v15) = v20;
      v12 = 4 * v15 + 4;
      memcpy(0, v13, v14);
      v19 = a2[7].i64[1];
      a2[7].i64[1] = 0;
      a2[8].i64[0] = v12;
      a2[8].i64[1] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v11 = v20;
      v12 = (v11 + 4);
    }

    a2[8].i64[0] = v12;
    ++v9;
    --v8;
  }

  while (v8);
}

uint64_t std::__function::__func<MILOpConverter::ReshapeImpl(MIL::IROperation const&,std::vector<int> const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ReshapeImpl(MIL::IROperation const&,std::vector<int> const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrReshapeUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MILOpConverter::Matmul(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v153[3] = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(&__x);
  if (SHIBYTE(__x.__begin_->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v141, __x.__begin_->__r_.__value_.__l.__data_, __x.__begin_->__r_.__value_.__l.__size_);
  }

  else
  {
    v5 = *&__x.__begin_->__r_.__value_.__l.__data_;
    v141.__r_.__value_.__r.__words[2] = __x.__begin_->__r_.__value_.__r.__words[2];
    *&v141.__r_.__value_.__l.__data_ = v5;
  }

  *&v140[0] = &__x;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v140);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  memset(v140, 0, sizeof(v140));
  std::string::basic_string[abi:ne200100]<0>(&__x, "x");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (SHIBYTE(__x.__end_cap_.__value_) < 0)
  {
    operator delete(__x.__begin_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__x, "y");
  v10 = MIL::IROperation::TryGetParameterValue();
  if (SHIBYTE(__x.__end_cap_.__value_) < 0)
  {
    operator delete(__x.__begin_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__x, "transpose_x");
  if (MIL::IROperation::TryGetParameterValue() && (v11 = MEMORY[0x1AC559670]()) != 0)
  {
    v110 = *v11;
  }

  else
  {
    v110 = 0;
  }

  if (SHIBYTE(__x.__end_cap_.__value_) < 0)
  {
    operator delete(__x.__begin_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__x, "transpose_y");
  if (MIL::IROperation::TryGetParameterValue() && (v12 = MEMORY[0x1AC559670]()) != 0)
  {
    v109 = *v12;
  }

  else
  {
    v109 = 0;
  }

  if (SHIBYTE(__x.__end_cap_.__value_) < 0)
  {
    operator delete(__x.__begin_);
  }

  v137 = 0;
  v138 = 0;
  v139 = 0;
  v134 = 0;
  v135 = 0;
  v136 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__x, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v14 = MIL::IRValueType::AsTensorType(ParameterType);
  v15 = (*(*v14 + 96))(v14);
  GetMILShapeAsVector(v15, &v137);
  if (SHIBYTE(__x.__end_cap_.__value_) < 0)
  {
    operator delete(__x.__begin_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__x, "y");
  v16 = MIL::IROperation::GetParameterType();
  v17 = MIL::IRValueType::AsTensorType(v16);
  v18 = (*(*v17 + 96))(v17);
  GetMILShapeAsVector(v18, &v134);
  v108 = v8;
  v111 = a3;
  if (SHIBYTE(__x.__end_cap_.__value_) < 0)
  {
    operator delete(__x.__begin_);
  }

  v19 = v138 - v137;
  v20 = (v138 - v137) >> 2;
  if ((v20 - 1) > 3 || (v21 = v135 - v134, v22 = (v135 - v134) >> 2, (v22 - 1) >= 4))
  {
    ZinAssertImpl("ANE can only support matmul with input tensors rank between 1 and 4");
  }

  if (v20 <= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v20;
  }

  v107 = v23;
  if (ParameterValue)
  {
    if (v20 == 2)
    {
      v24 = "y";
      goto LABEL_35;
    }
  }

  else if (v10 && v22 == 2)
  {
    v24 = "x";
LABEL_35:
    std::string::basic_string[abi:ne200100]<0>(v144, v24);
    if (ParameterValue)
    {
      v25 = "x";
    }

    else
    {
      v25 = "y";
    }

    std::string::basic_string[abi:ne200100]<0>(v142, v25);
    __x.__begin_ = 1;
    std::string::basic_string[abi:ne200100]<0>(&__x.__end_, "C");
    v26 = ParameterValue == 0;
    v27 = v26 | v109;
    v28 = v26 & v110;
    if ((v26 & v110) != 0)
    {
      v29 = "CW";
    }

    else
    {
      v29 = "WC";
    }

    if (v27)
    {
      v30 = v29;
    }

    else
    {
      v30 = "CW";
    }

    v148.__r_.__value_.__l.__size_ = 2;
    std::string::basic_string[abi:ne200100]<0>(&v148.__r_.__value_.__r.__words[2], v30);
    v31 = "HWC";
    if (v28)
    {
      v31 = "HCW";
    }

    if (v27)
    {
      v32 = v31;
    }

    else
    {
      v32 = "HCW";
    }

    v150 = 3;
    std::string::basic_string[abi:ne200100]<0>(v151, v32);
    if (v28)
    {
      v33 = "NHCW";
    }

    else
    {
      v33 = "NHWC";
    }

    if (v27)
    {
      v34 = v33;
    }

    else
    {
      v34 = "NHCW";
    }

    v152 = 4;
    std::string::basic_string[abi:ne200100]<0>(v153, v34);
    std::map<long,std::string>::map[abi:ne200100](&v133, &__x, 4);
    v35 = 0;
    while (1)
    {
      if (SHIBYTE(v153[v35 + 2]) < 0)
      {
        operator delete(v153[v35]);
      }

      v35 -= 4;
      if (v35 == -16)
      {
        v36 = ParameterValue == 0;
        v37 = v36 | v110;
        if ((v36 & v109) != 0)
        {
          v38 = "KC";
        }

        else
        {
          v38 = "CK";
        }

        if (v37)
        {
          v39 = v38;
        }

        else
        {
          v39 = "KC";
        }

        __x.__begin_ = 2;
        std::string::basic_string[abi:ne200100]<0>(&__x.__end_, v39);
        std::map<long,std::string>::map[abi:ne200100](&v132, &__x, 1);
        if (v148.__r_.__value_.__s.__data_[7] < 0)
        {
          operator delete(__x.__end_);
        }

        v116[0] = 0;
        ZinMILUnitBuilder::InsertLinear(v140, a3, a1, v144, &v141.__r_.__value_.__l.__data_, &v133, &v131, v116);
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__x, "x");
  std::string::basic_string[abi:ne200100]<0>(&v148, "y");
  memset(v144, 0, 24);
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v144, &__x, v149, 2uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v140, a1, v144, a3, &v133);
  v142[0] = v144;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v142);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v148.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&__x + i * 8 + 24));
    }
  }

  v41 = v22 > 1 && v20 == 1;
  v42 = v22 == 1 && v20 > 1;
  memset(&v132, 0, sizeof(v132));
  v43 = MIL::IROperation::GetOutputType(a1);
  v44 = MIL::IRValueType::AsTensorType(v43);
  v45 = (*(*v44 + 96))(v44);
  GetMILShapeAsVector(v45, &v132.__begin_);
  if (v41)
  {
    v46.__i_ = v132.__end_ - 1;
    LODWORD(__x.__begin_) = 1;
    std::vector<int>::insert(&v132, v46, &__x);
  }

  if (v42)
  {
    v47.__i_ = v132.__end_;
    LODWORD(__x.__begin_) = 1;
    std::vector<int>::insert(&v132, v47, &__x);
  }

  memset(&v131, 0, sizeof(v131));
  memset(&v130, 0, sizeof(v130));
  memset(&__p, 0, sizeof(__p));
  v126 = 0;
  v127 = 0;
  v125 = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v125, v137, v138, (v138 - v137) >> 2);
  v122 = 0;
  v123 = 0;
  v124 = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v122, v134, v135, (v135 - v134) >> 2);
  v119 = 0;
  v120 = 0;
  v121 = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v119, v132.__begin_, v132.__end_, v132.__end_ - v132.__begin_);
  v118.__begin_ = ((v126 - v125) >> 2);
  v116[0] = ((v123 - v122) >> 2);
  v115[0] = ((v120 - v119) >> 2);
  __x.__begin_ = 1;
  std::string::basic_string[abi:ne200100]<0>(&__x.__end_, "C");
  v148.__r_.__value_.__l.__size_ = 2;
  std::string::basic_string[abi:ne200100]<0>(&v148.__r_.__value_.__r.__words[2], "CW");
  v150 = 3;
  std::string::basic_string[abi:ne200100]<0>(v151, "HCW");
  v152 = 4;
  std::string::basic_string[abi:ne200100]<0>(v153, "NHCW");
  std::unordered_map<unsigned long,std::string>::unordered_map(v144, &__x, 4);
  v48 = 0;
  v49 = v41 || v42;
  do
  {
    if (SHIBYTE(v153[v48 + 2]) < 0)
    {
      operator delete(v153[v48]);
    }

    v48 -= 4;
  }

  while (v48 != -16);
  __x.__begin_ = 1;
  std::string::basic_string[abi:ne200100]<0>(&__x.__end_, "W");
  v148.__r_.__value_.__l.__size_ = 2;
  std::string::basic_string[abi:ne200100]<0>(&v148.__r_.__value_.__r.__words[2], "CW");
  v150 = 3;
  std::string::basic_string[abi:ne200100]<0>(v151, "HCW");
  v152 = 4;
  std::string::basic_string[abi:ne200100]<0>(v153, "NHCW");
  std::unordered_map<unsigned long,std::string>::unordered_map(v142, &__x, 4);
  for (j = 0; j != -16; j -= 4)
  {
    if (SHIBYTE(v153[j + 2]) < 0)
    {
      operator delete(v153[j]);
    }
  }

  if (!std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(v142, &v118))
  {
    ZinAssertImpl("Invalid input x tensor rank %ld");
  }

  if (!std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(v144, v116))
  {
    ZinAssertImpl("Invalid input y tensor rank %ld");
  }

  if (!std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(v142, v115))
  {
    ZinAssertImpl("Invalid output tensor rank %ld");
  }

  v128.__begin_ = &v118;
  v51 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v142, &v118, &std::piecewise_construct, &v128);
  std::string::operator=(&v131, v51 + 1);
  v128.__begin_ = v116;
  v52 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v144, v116, &std::piecewise_construct, &v128);
  std::string::operator=(&v130, v52 + 1);
  v128.__begin_ = v115;
  v53 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v142, v115, &std::piecewise_construct, &v128);
  std::string::operator=(&__p, v53 + 1);
  v54 = &v118.__begin_[-1].__r_.__value_.__r.__words[2] + 7;
  if (v118.__begin_ == 1)
  {
    v59 = -1;
  }

  else
  {
    v55 = 0;
    v56 = 0;
    v57 = -1;
    do
    {
      v58 = *(v125 + v55) == 1 || &v55[v116[0] - v118.__begin_] >= v116[0];
      if (!v58 && *(v122 + v116[0] + v55 - v118.__begin_) == 1)
      {
        v57 = v55;
        ++v56;
      }

      ++v55;
    }

    while (v54 != v55);
    LOBYTE(v54) = v56 == 1;
    v59 = v57;
  }

  if (v115[0] != 1)
  {
    v60 = 0;
    v61 = 0;
    v62 = -1;
    do
    {
      if (*(v119 + v60) != 1)
      {
        v62 = v60;
        ++v61;
      }

      v60 = (v60 + 1);
    }

    while ((v115[0] - 1) != v60);
    if (v61 != 1)
    {
      LOBYTE(v54) = 0;
    }

    if (v54)
    {
      v106 = v21;
      v63 = v42;
      v64 = v49;
      if (SHIBYTE(v131.__end_cap_.__value_) >= 0)
      {
        begin = &v131;
      }

      else
      {
        begin = v131.__begin_;
      }

      if (SHIBYTE(v131.__end_cap_.__value_) >= 0)
      {
        value_high = SHIBYTE(v131.__end_cap_.__value_);
      }

      else
      {
        value_high = v131.__end_;
      }

      v67 = &begin[value_high];
      if (value_high >= 1)
      {
        v68 = begin;
        do
        {
          v69 = memchr(v68, 67, value_high);
          if (!v69)
          {
            break;
          }

          if (*v69 == 67)
          {
            goto LABEL_124;
          }

          v68 = v69 + 1;
          value_high = v67 - v68;
        }

        while (v67 - v68 > 0);
      }

      v69 = v67;
LABEL_124:
      if (v69 == v67)
      {
        v70 = -1;
      }

      else
      {
        v70 = v69 - begin;
      }

      std::string::erase(&v131, v70, 1uLL);
      std::string::insert(&v131, v59, "C", 1uLL);
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
        size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v73 = p_p + size;
      v49 = v64;
      if (size < 1)
      {
        v75 = p_p + size;
        v42 = v63;
        v21 = v106;
      }

      else
      {
        v74 = p_p;
        v42 = v63;
        v21 = v106;
        do
        {
          v75 = memchr(v74, 67, size);
          if (!v75)
          {
            break;
          }

          if (*v75 == 67)
          {
            goto LABEL_140;
          }

          v74 = (v75 + 1);
          size = v73 - v74;
        }

        while (v73 - v74 > 0);
        v75 = v73;
      }

LABEL_140:
      if (v75 == v73)
      {
        v76 = -1;
      }

      else
      {
        v76 = v75 - p_p;
      }

      std::string::erase(&__p, v76, 1uLL);
      std::string::insert(&__p, v62, "C", 1uLL);
    }
  }

  if (v110)
  {
    if (v118.__begin_ <= 1)
    {
      ZinAssertImpl("Invalid: rank x must at least be rank 2 when transpose_x specified");
    }

    v77 = &v131;
    if (SHIBYTE(v131.__end_cap_.__value_) < 0)
    {
      v77 = v131.__begin_;
    }

    v78 = &v77[v118.__begin_];
    v79 = v77[v118.__begin_ - 1];
    *(v78 - 1) = *(v78 - 2);
    *(v78 - 2) = v79;
  }

  if (v109)
  {
    if (v116[0] <= 1)
    {
      ZinAssertImpl("Invalid: rank y must at least be rank 2 when transpose_y specified");
    }

    v80 = &v130;
    if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v80 = v130.__r_.__value_.__r.__words[0];
    }

    v81 = v80 + v116[0];
    v82 = v80->__r_.__value_.__s.__data_[v116[0] - 1];
    *(v81 - 1) = *(v81 - 2);
    *(v81 - 2) = v82;
  }

  std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::~__hash_table(v142);
  std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::~__hash_table(v144);
  if (v119)
  {
    v120 = v119;
    operator delete(v119);
  }

  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  if (v125)
  {
    v126 = v125;
    operator delete(v125);
  }

  if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v83 = HIBYTE(v141.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v83 = v141.__r_.__value_.__l.__size_;
  }

  std::string::basic_string[abi:ne200100](v142, v83 + 25);
  if (v143 >= 0)
  {
    v84 = v142;
  }

  else
  {
    v84 = v142[0];
  }

  if (v83)
  {
    if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v85 = &v141;
    }

    else
    {
      v85 = v141.__r_.__value_.__r.__words[0];
    }

    memmove(v84, v85, v83);
  }

  strcpy(v84 + v83, "__@convert_input_x_layout");
  v86 = v133;
  __x.__begin_ = (v19 >> 2);
  if (SHIBYTE(v131.__end_cap_.__value_) < 0)
  {
    std::string::__init_copy_ctor_external(&__x.__end_, v131.__begin_, v131.__end_);
  }

  else
  {
    *&__x.__end_ = *&v131.__begin_;
    v148.__r_.__value_.__r.__words[0] = v131.__end_cap_.__value_;
  }

  std::map<long,std::string>::map[abi:ne200100](&v128, &__x, 1);
  ZinMILUnitBuilder::DeclareCustomOperationInputLayout(v144, v111, v20, v86, &v128, 4);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v128, v128.__end_);
  if (v148.__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(__x.__end_);
  }

  if (v143 < 0)
  {
    operator delete(v142[0]);
  }

  if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v87 = HIBYTE(v141.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v87 = v141.__r_.__value_.__l.__size_;
  }

  std::string::basic_string[abi:ne200100](&v128, v87 + 25);
  if (SHIBYTE(v128.__end_cap_.__value_) >= 0)
  {
    v88 = &v128;
  }

  else
  {
    v88 = v128.__begin_;
  }

  if (v87)
  {
    if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v89 = &v141;
    }

    else
    {
      v89 = v141.__r_.__value_.__r.__words[0];
    }

    memmove(v88, v89, v87);
  }

  strcpy(v88 + v87, "__@convert_input_y_layout");
  v90 = v133;
  __x.__begin_ = (v21 >> 2);
  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__x.__end_, v130.__r_.__value_.__l.__data_, v130.__r_.__value_.__l.__size_);
  }

  else
  {
    *&__x.__end_ = *&v130.__r_.__value_.__l.__data_;
    v148.__r_.__value_.__r.__words[0] = v130.__r_.__value_.__r.__words[2];
  }

  std::map<long,std::string>::map[abi:ne200100](&v118, &__x, 1);
  ZinMILUnitBuilder::DeclareCustomOperationInputLayout(v142, v111, v22, (v90 + 3), &v118, 4);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v118, v118.__end_);
  if (v148.__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(__x.__end_);
  }

  if (SHIBYTE(v128.__end_cap_.__value_) < 0)
  {
    operator delete(v128.__begin_);
  }

  if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v91 = HIBYTE(v141.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v91 = v141.__r_.__value_.__l.__size_;
  }

  std::string::basic_string[abi:ne200100](&v118, v91 + 5);
  if (SHIBYTE(v118.__end_cap_.__value_) >= 0)
  {
    v92 = &v118;
  }

  else
  {
    v92 = v118.__begin_;
  }

  if (v91)
  {
    if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v93 = &v141;
    }

    else
    {
      v93 = v141.__r_.__value_.__r.__words[0];
    }

    memmove(v92, v93, v91);
  }

  strcpy(v92 + v91, "__@mm");
  if (*(v144[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__x, *v144[0], *(v144[0] + 1));
  }

  else
  {
    v94 = *v144[0];
    __x.__end_cap_.__value_ = *(v144[0] + 2);
    *&__x.__begin_ = v94;
  }

  if (*(v142[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v148, *v142[0], *(v142[0] + 1));
  }

  else
  {
    v95 = *v142[0];
    v148.__r_.__value_.__r.__words[2] = *(v142[0] + 2);
    *&v148.__r_.__value_.__l.__data_ = v95;
  }

  v116[0] = 0;
  v116[1] = 0;
  v117 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v116, &__x, v149, 2uLL);
  v146[0] = &unk_1F1A3CBB8;
  v146[3] = v146;
  ZinMILUnitBuilder::CreateUnit<ZinIrMatrixMultUnitInfo>(v116, v146, &v128);
  std::__function::__value_func<void ()(std::optional<ZinIrMatrixMultUnitInfo> &)>::~__value_func[abi:ne200100](v146);
  v115[0] = v116;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v115);
  for (k = 0; k != -6; k -= 3)
  {
    if (SHIBYTE(v148.__r_.__value_.__r.__words[k + 2]) < 0)
    {
      operator delete(*(&__x + k * 8 + 24));
    }
  }

  if (SHIBYTE(v118.__end_cap_.__value_) < 0)
  {
    operator delete(v118.__begin_);
  }

  if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v97 = HIBYTE(v141.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v97 = v141.__r_.__value_.__l.__size_;
  }

  std::string::basic_string[abi:ne200100](v116, v97 + 24);
  if (v117 >= 0)
  {
    v98 = v116;
  }

  else
  {
    v98 = v116[0];
  }

  if (v97)
  {
    if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v99 = &v141;
    }

    else
    {
      v99 = v141.__r_.__value_.__r.__words[0];
    }

    memmove(v98, v99, v97);
  }

  strcpy(v98 + v97, "__@convert_output_layout");
  v100 = v128.__begin_;
  __x.__begin_ = v107;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__x.__end_, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *&__x.__end_ = *&__p.__r_.__value_.__l.__data_;
    v148.__r_.__value_.__r.__words[0] = __p.__r_.__value_.__r.__words[2];
  }

  std::map<long,std::string>::map[abi:ne200100](v115, &__x, 1);
  ZinMILUnitBuilder::ConvertToDefaultLayout(&v118, v111, v107, v100, v115, 4);
  std::vector<std::string>::__vdeallocate(&v128);
  v128 = v118;
  memset(&v118, 0, sizeof(v118));
  v145 = &v118;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v145);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(v115, v115[1]);
  if (v148.__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(__x.__end_);
  }

  if (SHIBYTE(v117) < 0)
  {
    operator delete(v116[0]);
    if (!v49)
    {
      goto LABEL_257;
    }
  }

  else if (!v49)
  {
    goto LABEL_257;
  }

  if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v101 = HIBYTE(v141.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v101 = v141.__r_.__value_.__l.__size_;
  }

  std::string::basic_string[abi:ne200100](&v118, v101 + 10);
  if (SHIBYTE(v118.__end_cap_.__value_) >= 0)
  {
    v102 = &v118;
  }

  else
  {
    v102 = v118.__begin_;
  }

  if (v101)
  {
    if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v103 = &v141;
    }

    else
    {
      v103 = v141.__r_.__value_.__r.__words[0];
    }

    memmove(v102, v103, v101);
  }

  strcpy(v102 + v101, "__@squeeze");
  v104 = v128.__begin_;
  if (v42)
  {
    v105 = -1;
  }

  else
  {
    v105 = -2;
  }

  LODWORD(v115[0]) = v105 + v107;
  v113 = 0;
  v114 = 0;
  v112 = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v112, v115, v115 + 1, 1uLL);
  ZinMILUnitBuilder::InsertSqueeze(v111, &v118, v104, v107, &v112, 4u, &__x);
  std::vector<std::string>::__vdeallocate(&v128);
  v128 = __x;
  memset(&__x, 0, sizeof(__x));
  v116[0] = &__x;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v116);
  if (v112)
  {
    v113 = v112;
    operator delete(v112);
  }

  if (SHIBYTE(v118.__end_cap_.__value_) < 0)
  {
    operator delete(v118.__begin_);
  }

LABEL_257:
  __x.__begin_ = &v128;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__x);
  __x.__begin_ = v142;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__x);
  __x.__begin_ = v144;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__x);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v130.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v131.__end_cap_.__value_) < 0)
  {
    operator delete(v131.__begin_);
  }

  if (v132.__begin_)
  {
    v132.__end_ = v132.__begin_;
    operator delete(v132.__begin_);
  }

  __x.__begin_ = &v133;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__x);
  ZinMILUnitBuilder::Finalize(v140, v111, a1, &v141.__r_.__value_.__l.__data_, v108, 1, 1);
  if (v134)
  {
    v135 = v134;
    operator delete(v134);
  }

  if (v137)
  {
    v138 = v137;
    operator delete(v137);
  }

  __x.__begin_ = (&v140[1] + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__x);
  __x.__begin_ = v140;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&__x);
  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v141.__r_.__value_.__l.__data_);
  }
}

void sub_1A748076C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, void *a63)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  *(v73 - 224) = &a40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v73 - 224));
  *(v73 - 224) = &a73;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v73 - 224));
  *(v73 - 224) = &STACK[0x220];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v73 - 224));
  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  if (a63)
  {
    a64 = a63;
    operator delete(a63);
  }

  *(v73 - 224) = &a65;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v73 - 224));
  if (a66)
  {
    a67 = a66;
    operator delete(a66);
  }

  if (a68)
  {
    a69 = a68;
    operator delete(a68);
  }

  ZinMILUnitBuilder::~ZinMILUnitBuilder(&a70);
  if (a72 < 0)
  {
    operator delete(a71);
  }

  _Unwind_Resume(a1);
}

std::vector<int>::iterator std::vector<int>::insert(std::vector<int> *this, std::vector<int>::const_iterator __position, std::vector<int>::value_type *__x)
{
  i = __position.__i_;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (end >= value)
  {
    begin = this->__begin_;
    v11 = end - this->__begin_ + 1;
    if (v11 >> 62)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
    }

    v12 = __position.__i_ - begin;
    v13 = value - begin;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v27 = this;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrPaddingMode>>(this, v14);
    }

    v24 = 0;
    v25 = 4 * v15;
    v26 = (4 * v15);
    std::__split_buffer<int>::emplace_back<int>(&v24, __x);
    v16.__i_ = v25;
    memcpy(v26, i, this->__end_ - i);
    v17 = this->__begin_;
    v18 = v25;
    *&v26 = v26 + this->__end_ - i;
    this->__end_ = i;
    v19 = i - v17;
    v20 = (v18 - (i - v17));
    memcpy(v20, v17, v19);
    v21 = this->__begin_;
    this->__begin_ = v20;
    v22 = this->__end_cap_.__value_;
    *&this->__end_ = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__position.__i_ == end)
  {
    *end = *__x;
    this->__end_ = end + 1;
  }

  else
  {
    v8 = __position.__i_ + 1;
    if (end < 4)
    {
      v9 = this->__end_;
    }

    else
    {
      *end = *(end - 1);
      v9 = end + 1;
    }

    this->__end_ = v9;
    if (end != v8)
    {
      memmove((__position.__i_ + 1), __position.__i_, end - v8);
    }

    *i = *__x;
  }

  return i;
}

void sub_1A7480ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__split_buffer<int>::emplace_back<int>(unint64_t *a1, _DWORD *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrPaddingMode>>(a1[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  a1[2] = (v4 + 4);
}

uint64_t std::unordered_map<unsigned long,std::string>::unordered_map(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,std::string> const&>(a1, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,std::string> const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__construct_node_hash<std::pair<unsigned long const,std::string> const&>();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1A748128C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A7481354(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__function::__func<MILOpConverter::Matmul(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Matmul(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrMatrixMultUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  memset(&v3[1], 0, 24);
  v4 = 0;
  v5 = 0u;
  v6 = 0u;
  v7 = -1;
  v3[0] = &unk_1F1A33FF8;
  v8 = 0;
  std::optional<ZinIrMatrixMultUnitInfo>::operator=[abi:ne200100]<ZinIrMatrixMultUnitInfo&,void>(a2, v3);
  ZinIrUnitInfo::~ZinIrUnitInfo(v3);
  *(a2 + 32) = 18;
}

void sub_1A748147C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrUnitInfo::~ZinIrUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::Matmul(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Matmul(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrMatrixMultUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MILOpConverter::ElementWise(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v135 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&__p, "add");
  v58 = &unk_1F1A3CDA8;
  v59 = MILOpConverter::ElementwiseOpSimpleElementwise;
  *(&v60 + 1) = &v58;
  std::string::basic_string[abi:ne200100]<0>(&v61, "equal");
  *&v63 = &unk_1F1A3CDA8;
  *(&v63 + 1) = MILOpConverter::ElementwiseOpSimpleElementwise;
  *v65 = &v63;
  std::string::basic_string[abi:ne200100]<0>(&v65[8], "floor_div");
  *&v68[4] = &unk_1F1A3CDA8;
  v69 = MILOpConverter::ElementwiseOpCustomLowering;
  v70 = &v68[4];
  std::string::basic_string[abi:ne200100]<0>(v71, "greater");
  v72[0] = &unk_1F1A3CDA8;
  v72[1] = MILOpConverter::ElementwiseOpSimpleElementwise;
  v72[3] = v72;
  std::string::basic_string[abi:ne200100]<0>(v73, "greater_equal");
  v74[0] = &unk_1F1A3CDA8;
  v74[1] = MILOpConverter::ElementwiseOpSimpleElementwise;
  v74[3] = v74;
  std::string::basic_string[abi:ne200100]<0>(v75, "less");
  v76[0] = &unk_1F1A3CDA8;
  v76[1] = MILOpConverter::ElementwiseOpSimpleElementwise;
  v76[3] = v76;
  std::string::basic_string[abi:ne200100]<0>(v77, "less_equal");
  v78[0] = &unk_1F1A3CDA8;
  v78[1] = MILOpConverter::ElementwiseOpSimpleElementwise;
  v78[3] = v78;
  std::string::basic_string[abi:ne200100]<0>(v79, "maximum");
  v80[0] = &unk_1F1A3CDA8;
  v80[1] = MILOpConverter::ElementwiseOpSimpleElementwise;
  v80[3] = v80;
  std::string::basic_string[abi:ne200100]<0>(v81, "minimum");
  v82[0] = &unk_1F1A3CDA8;
  v82[1] = MILOpConverter::ElementwiseOpSimpleElementwise;
  v82[3] = v82;
  std::string::basic_string[abi:ne200100]<0>(v83, "mul");
  v84[0] = &unk_1F1A3CDA8;
  v84[1] = MILOpConverter::ElementwiseOpSimpleElementwise;
  v84[3] = v84;
  std::string::basic_string[abi:ne200100]<0>(v85, "not_equal");
  v86[0] = &unk_1F1A3CDA8;
  v86[1] = MILOpConverter::ElementwiseOpSimpleElementwise;
  v86[3] = v86;
  std::string::basic_string[abi:ne200100]<0>(v87, "pow");
  v88[0] = &unk_1F1A3CDA8;
  v88[1] = MILOpConverter::ElementwiseOpSimpleElementwise;
  v88[3] = v88;
  std::string::basic_string[abi:ne200100]<0>(v89, "real_div");
  v90[0] = &unk_1F1A3CDA8;
  v90[1] = MILOpConverter::ElementwiseOpSimpleElementwise;
  v90[3] = v90;
  std::string::basic_string[abi:ne200100]<0>(v91, "sub");
  v92[0] = &unk_1F1A3CDA8;
  v92[1] = MILOpConverter::ElementwiseOpSimpleElementwise;
  v92[3] = v92;
  std::string::basic_string[abi:ne200100]<0>(v93, "abs");
  v94[0] = &unk_1F1A3CDA8;
  v94[1] = MILOpConverter::ElementwiseOpSimpleElementwise;
  v94[3] = v94;
  std::string::basic_string[abi:ne200100]<0>(v95, "atan");
  v96[0] = &unk_1F1A3CDA8;
  v96[1] = MILOpConverter::ElementwiseOpSimpleNeuron;
  v96[3] = v96;
  std::string::basic_string[abi:ne200100]<0>(v97, "ceil");
  v98[0] = &unk_1F1A3CDA8;
  v98[1] = MILOpConverter::ElementwiseOpSimpleNeuron;
  v98[3] = v98;
  std::string::basic_string[abi:ne200100]<0>(v99, "cos");
  v100[0] = &unk_1F1A3CDA8;
  v100[1] = MILOpConverter::ElementwiseOpSimpleNeuron;
  v100[3] = v100;
  std::string::basic_string[abi:ne200100]<0>(v101, "clip");
  v102[0] = &unk_1F1A3CDA8;
  v102[1] = MILOpConverter::ElementwiseOpCustomLowering;
  v102[3] = v102;
  std::string::basic_string[abi:ne200100]<0>(v103, "exp");
  v104[0] = &unk_1F1A3CDA8;
  v104[1] = MILOpConverter::ElementwiseOpSimpleNeuron;
  v104[3] = v104;
  std::string::basic_string[abi:ne200100]<0>(v105, "exp2");
  v106[0] = &unk_1F1A3CDA8;
  v106[1] = MILOpConverter::ElementwiseOpSimpleNeuron;
  v106[3] = v106;
  std::string::basic_string[abi:ne200100]<0>(v107, "floor");
  v108[0] = &unk_1F1A3CDA8;
  v108[1] = MILOpConverter::ElementwiseOpSimpleNeuron;
  v108[3] = v108;
  std::string::basic_string[abi:ne200100]<0>(v109, "inverse");
  v110[0] = &unk_1F1A3CDA8;
  v110[1] = MILOpConverter::ElementwiseOpSimpleNeuron;
  v110[3] = v110;
  std::string::basic_string[abi:ne200100]<0>(v111, "log");
  v112[0] = &unk_1F1A3CDA8;
  v112[1] = MILOpConverter::ElementwiseOpCustomLowering;
  v112[3] = v112;
  std::string::basic_string[abi:ne200100]<0>(v113, "logical_not");
  v114[0] = &unk_1F1A3CDA8;
  v114[1] = MILOpConverter::ElementwiseOpSimpleElementwise;
  v114[3] = v114;
  std::string::basic_string[abi:ne200100]<0>(v115, "round");
  v116[0] = &unk_1F1A3CDA8;
  v116[1] = MILOpConverter::ElementwiseOpSimpleNeuron;
  v116[3] = v116;
  std::string::basic_string[abi:ne200100]<0>(v117, "rsqrt");
  v118[0] = &unk_1F1A3CDA8;
  v118[1] = MILOpConverter::ElementwiseOpSimpleNeuron;
  v118[3] = v118;
  std::string::basic_string[abi:ne200100]<0>(v119, "sign");
  v120[0] = &unk_1F1A3CDA8;
  v120[1] = MILOpConverter::ElementwiseOpSimpleNeuron;
  v120[3] = v120;
  std::string::basic_string[abi:ne200100]<0>(v121, "sin");
  v122[0] = &unk_1F1A3CDA8;
  v122[1] = MILOpConverter::ElementwiseOpSimpleNeuron;
  v122[3] = v122;
  std::string::basic_string[abi:ne200100]<0>(v123, "sqrt");
  v124[0] = &unk_1F1A3CDA8;
  v124[1] = MILOpConverter::ElementwiseOpSimpleNeuron;
  v124[3] = v124;
  std::string::basic_string[abi:ne200100]<0>(v125, "square");
  v126[0] = &unk_1F1A3CDA8;
  v126[1] = MILOpConverter::ElementwiseOpSimpleElementwise;
  v126[3] = v126;
  std::string::basic_string[abi:ne200100]<0>(v127, "tanh");
  v128[0] = &unk_1F1A3CDA8;
  v128[1] = MILOpConverter::ElementwiseOpSimpleNeuron;
  v128[3] = v128;
  std::string::basic_string[abi:ne200100]<0>(v129, "threshold");
  v130[0] = &unk_1F1A3CDA8;
  v130[1] = MILOpConverter::ElementwiseOpCustomLowering;
  v130[3] = v130;
  std::map<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>::map[abi:ne200100](&v30, &__p, 33);
  v6 = 231;
  do
  {
    std::__function::__value_func<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>::~__value_func[abi:ne200100](&v52.__r_.__value_.__r.__words[v6 + 2]);
    if (SHIBYTE(v52.__r_.__value_.__r.__words[v6 + 1]) < 0)
    {
      operator delete(*&v51[v6 * 8]);
    }

    v6 -= 7;
  }

  while (v6 * 8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "add");
  std::string::basic_string[abi:ne200100]<0>(&v58, "mul");
  std::set<std::string>::set[abi:ne200100](v53, &__p, 2);
  for (i = 0; i != -48; i -= 24)
  {
    if (*(&v60 + i + 7) < 0)
    {
      operator delete(*(&v58 + i));
    }
  }

  if (&v54 == std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(v53, (a2 + 8)))
  {
    std::__tree<std::string>::destroy(v53, v54);
LABEL_52:
    v24 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(&v30, (a2 + 8));
    if (&v31 == v24)
    {
      if (*(a2 + 31) >= 0)
      {
        v29 = (a2 + 8);
      }

      else
      {
        v29 = *(a2 + 8);
      }

      ZinAssertImpl("Unsupported elementwise type %s", v29);
    }

    v25 = *(v24 + 80);
    if (!v25)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v25 + 48))(v25, a1, a2 + 8, a3);
    goto LABEL_55;
  }

  (*(*a1 + 200))(&__p, a1);
  if (*(__p + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v52, *__p, *(__p + 1));
  }

  else
  {
    v8 = *__p;
    v52.__r_.__value_.__r.__words[2] = *(__p + 2);
    *&v52.__r_.__value_.__l.__data_ = v8;
  }

  v48[0] = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v48);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v10 = MIL::IRValueType::AsTensorType(OutputType);
  v11 = (*(*v10 + 88))(v10);
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  MILOpConverter::RetrieveProducer(a1, &__p, a3, 0, v48);
  if (SHIBYTE(v57) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "y");
  MILOpConverter::RetrieveProducer(a1, &__p, a3, 0, v43);
  if (SHIBYTE(v57) < 0)
  {
    operator delete(__p);
  }

  IsConst = MILOpConverter::MILProducerInfo::IsConst(v48);
  if (IsConst == MILOpConverter::MILProducerInfo::IsConst(v43))
  {
    v23 = 0;
    goto LABEL_41;
  }

  v41 = 0;
  v42 = 0x100000000000000;
  v40 = 0;
  if (IsConst)
  {
    v13 = 120;
  }

  else
  {
    v13 = 121;
  }

  if (IsConst)
  {
    v14 = 121;
  }

  else
  {
    v14 = 120;
  }

  LOWORD(v40) = v13;
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  v16 = ParameterValue;
  if (!ParameterValue || (v17 = (*(*ParameterValue + 40))(ParameterValue)) == 0 || (v38[0] = vdupq_n_s64(1uLL), v38[1] = v38[0], v39 = 1, ParameterType = MIL::IROperation::GetParameterType(), v19 = MIL::IRValueType::AsTensorType(ParameterType), v20 = (*(*v19 + 96))(v19), v56 = 0, v57 = 0, __p = &v56, ToZinTensorDimensions(a3, v20, v38, &__p), std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&__p, v56), !ZinElementWiseLayerUtils::IsChannelVector(v38)) || !IsMILMutableWeight(v17, a3))
  {
    v23 = 0;
    goto LABEL_39;
  }

  memset(v37, 0, sizeof(v37));
  v132[0] = v14;
  memset(&v132[1], 0, 22);
  v133 = 1;
  v56 = 0;
  v57 = 0;
  __p = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__p, v132, &v134, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v37, a1, &__p, a3, v36);
  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  if (v133 < 0)
  {
    operator delete(*v132);
  }

  v56 = 0;
  v57 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0;
  v62 = -1;
  __p = &unk_1F19CA4D8;
  LOWORD(v63) = 0;
  *(&v63 + 4) = 1065353216;
  WORD6(v63) = 0;
  v64 = 0;
  v65[0] = 0;
  *&v65[4] = -1;
  v66 = -1;
  v67 = 0;
  *v68 = -1;
  v69 = -1;
  LODWORD(v59) = 8;
  v35 = 0;
  ToZinKernelFormat(v11, &v35);
  HIDWORD(v64) = v35;
  DWORD2(v63) = v35;
  p_p = 0;
  v34 = 0;
  v132[0] = 0;
  v134 = 0;
  ParseFileInfoFromTensorValue(v16, a3, &p_p, v132, 1);
  if (v134 == 1 && *v132)
  {
    *&v132[8] = *v132;
    operator delete(*v132);
  }

  v21 = *(a2 + 31);
  if (v21 < 0)
  {
    if (*(a2 + 16) != 3)
    {
      goto LABEL_62;
    }

    v22 = *(a2 + 8);
  }

  else
  {
    v22 = (a2 + 8);
    if (v21 != 3)
    {
      goto LABEL_62;
    }
  }

  v26 = *v22;
  v27 = *(v22 + 2);
  if (v26 == 25697 && v27 == 100)
  {
    v67 = 1;
    v69 = v34;
    *v68 = p_p;
    *&v68[4] = v38[0].i32[2];
    LOBYTE(v63) = 1;
    goto LABEL_63;
  }

LABEL_62:
  v65[0] = 1;
  v66 = v34;
  *&v65[4] = p_p;
  *&v65[8] = v38[0].i32[2];
  BYTE12(v63) = 1;
LABEL_63:
  v131[0] = &unk_1F1A3D0D8;
  v131[1] = &__p;
  v131[3] = v131;
  ZinMILUnitBuilder::CreateUnit<ZinIrGOCUnitInfo>(v36, v131, v32);
  *v132 = v32;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v132);
  std::__function::__value_func<void ()(std::optional<ZinIrGOCUnitInfo> &)>::~__value_func[abi:ne200100](v131);
  ZinMILUnitBuilder::Finalize(v37, a3, a1, &v52.__r_.__value_.__l.__data_, v11, 1, 1);
  ZinIrUnitInfo::~ZinIrUnitInfo(&__p);
  __p = v36;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &v37[1] + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = v37;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v23 = 1;
LABEL_39:
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v40);
  }

LABEL_41:
  if (v47 < 0)
  {
    operator delete(v46);
  }

  if (v45 < 0)
  {
    operator delete(v44);
  }

  if ((v51[7] & 0x80000000) != 0)
  {
    operator delete(v50);
  }

  if (v49 < 0)
  {
    operator delete(v48[2]);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  std::__tree<std::string>::destroy(v53, v54);
  if ((v23 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_55:
  std::__tree<std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>>>::destroy(&v30, v31);
}

void sub_1A7482584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  ZinIrUnitInfo::~ZinIrUnitInfo(&a66);
  a66 = &a20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a66);
  ZinMILUnitBuilder::~ZinMILUnitBuilder(&a23);
  if (a39 < 0)
  {
    operator delete(__p);
  }

  MILOpConverter::MILProducerInfo::~MILProducerInfo(&a40);
  MILOpConverter::MILProducerInfo::~MILProducerInfo(&a49);
  if (a63 < 0)
  {
    operator delete(a58);
  }

  std::__tree<std::string>::destroy(&a64, a65);
  std::__tree<std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>>>::destroy(&a11, a12);
  _Unwind_Resume(a1);
}

void MILOpConverter::ElementwiseOpSimpleElementwise(MIL::IROperation *a1, char *a2, uint64_t **a3)
{
  v174[17] = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(&v153);
  if (*(v153.__r_.__value_.__r.__words[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v135, *v153.__r_.__value_.__l.__data_, *(v153.__r_.__value_.__r.__words[0] + 8));
  }

  else
  {
    v6 = *v153.__r_.__value_.__l.__data_;
    v135.__r_.__value_.__r.__words[2] = *(v153.__r_.__value_.__r.__words[0] + 16);
    *&v135.__r_.__value_.__l.__data_ = v6;
  }

  v126[0] = &v153;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v126);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v8 = MIL::IRValueType::AsTensorType(OutputType);
  v73 = (*(*v8 + 88))(v8);
  memset(&v126[1], 0, 24);
  v128 = 0u;
  v129 = 0u;
  v130 = -1;
  v126[0] = &unk_1F1A33E68;
  __asm { FMOV            V1.2S, #1.0 }

  v132 = _D1;
  v133 = 0;
  v134 = 0;
  v127 = 5;
  v131 = 1;
  memset(&v117[1], 0, 24);
  v119 = 0u;
  v120 = 0u;
  v121 = -1;
  v117[0] = &unk_1F1A33E68;
  v123 = _D1;
  v124 = 0;
  v125 = 0;
  v118 = 5;
  v122 = 2;
  memset(&v108[1], 0, 24);
  v110 = 0u;
  v111 = 0u;
  v112 = -1;
  v108[0] = &unk_1F1A33E68;
  v114 = _D1;
  v115 = 0;
  v116 = 0;
  v109 = 5;
  v113 = 4;
  memset(&v99[1], 0, 24);
  v101 = 0u;
  v102 = 0u;
  v103 = -1;
  v99[0] = &unk_1F1A33E68;
  v105 = _D1;
  v106 = 0;
  v107 = 0;
  v100 = 5;
  v104 = 5;
  memset(&v90[1], 0, 24);
  v92 = 0u;
  v93 = 0u;
  v94 = -1;
  v90[0] = &unk_1F1A33E68;
  v96 = _D1;
  v97 = 0;
  v98 = 256;
  v91 = 5;
  v95 = 1;
  std::pair<std::string const,ZinIrScaledEWUnitInfo>::pair[abi:ne200100]<char const(&)[4],ZinIrScaledEWUnitInfo&,0>(&v153, "add", v126);
  std::pair<std::string const,ZinIrScaledEWUnitInfo>::pair[abi:ne200100]<char const(&)[4],ZinIrScaledEWUnitInfo&,0>(v159, "mul", v117);
  std::pair<std::string const,ZinIrScaledEWUnitInfo>::pair[abi:ne200100]<char const(&)[4],ZinIrScaledEWUnitInfo&,0>(v167, "maximum", v108);
  std::pair<std::string const,ZinIrScaledEWUnitInfo>::pair[abi:ne200100]<char const(&)[4],ZinIrScaledEWUnitInfo&,0>(&v173, "minimum", v99);
  std::pair<std::string const,ZinIrScaledEWUnitInfo>::pair[abi:ne200100]<char const(&)[4],ZinIrScaledEWUnitInfo&,0>(v174, "sub", v90);
  std::map<std::string const,ZinIrScaledEWUnitInfo>::map[abi:ne200100](v88, &v153, 5);
  v13 = 640;
  do
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(&v147[v13 + 16]);
    if (v147[v13 + 15] < 0)
    {
      operator delete(*&v147[v13 - 8]);
    }

    v13 -= 128;
  }

  while (v13);
  std::string::basic_string[abi:ne200100]<0>(&v153, "equal");
  LODWORD(v154.__r_.__value_.__l.__data_) = 16;
  std::string::basic_string[abi:ne200100]<0>(&v154.__r_.__value_.__l.__size_, "greater");
  LODWORD(v155.__r_.__value_.__r.__words[1]) = 21;
  std::string::basic_string[abi:ne200100]<0>(&v155.__r_.__value_.__r.__words[2], "greater_equal");
  v156 = 20;
  std::string::basic_string[abi:ne200100]<0>(v157, "less");
  v158 = 18;
  std::string::basic_string[abi:ne200100]<0>(v159, "less_equal");
  v160 = 19;
  std::string::basic_string[abi:ne200100]<0>(v161, "not_equal");
  v162 = 17;
  std::string::basic_string[abi:ne200100]<0>(v163, "pow");
  v164 = 5;
  std::string::basic_string[abi:ne200100]<0>(v165, "real_div");
  v166 = 6;
  std::string::basic_string[abi:ne200100]<0>(v167, "abs");
  v168 = 9;
  std::string::basic_string[abi:ne200100]<0>(v169, "logical_not");
  v170 = 10;
  std::string::basic_string[abi:ne200100]<0>(v171, "square");
  v172 = 3;
  std::map<std::string const,ZinIrEWType>::map[abi:ne200100](v86, &v153, 11);
  v14 = 44;
  do
  {
    if (SHIBYTE(v152[v14 + 6]) < 0)
    {
      operator delete(v152[v14 + 4]);
    }

    v14 -= 4;
  }

  while (v14 * 8);
  memset(v85, 0, 48);
  std::string::basic_string[abi:ne200100]<0>(&v84, "x");
  v15 = (*(*a1 + 64))(a1);
  if (*((*(*v15 + 64))(v15) + 24) == 1)
  {
    v83 = 1;
LABEL_14:
    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v153, v84.__r_.__value_.__l.__data_, v84.__r_.__value_.__l.__size_);
    }

    else
    {
      v153 = v84;
    }

    v145 = 0;
    v146 = 0;
    *v147 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v145, &v153, &v154, 1uLL);
    if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v153.__r_.__value_.__l.__data_);
    }

    v23 = 1;
    goto LABEL_59;
  }

  v16 = MIL::IROperation::GetOutputType(a1);
  v17 = MIL::IRValueType::AsTensorType(v16);
  if ((*(*v17 + 88))(v17) != 11)
  {
    v83 = 0;
    goto LABEL_54;
  }

  std::string::basic_string[abi:ne200100]<0>(&v145, "x");
  MILOpConverter::RetrieveProducer(a1, &v145, a3, 0, &v153);
  if ((v147[7] & 0x80000000) != 0)
  {
    operator delete(v145);
  }

  std::string::basic_string[abi:ne200100]<0>(&v140, "y");
  MILOpConverter::RetrieveProducer(a1, &v140, a3, 0, &v145);
  v18 = a2;
  if (v142.__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(v140);
  }

  IsConst = MILOpConverter::MILProducerInfo::IsConst(&v153);
  if (IsConst == MILOpConverter::MILProducerInfo::IsConst(&v145))
  {
    goto LABEL_44;
  }

  v20 = v18[23];
  if ((v20 & 0x80000000) == 0)
  {
    if (v20 != 3)
    {
LABEL_44:
      v28 = 0;
      a2 = v18;
      goto LABEL_45;
    }

    _ZF = *v18 == 25697 && v18[2] == 100;
    v22 = v18;
    if (_ZF)
    {
      goto LABEL_128;
    }

    goto LABEL_40;
  }

  if (*(v18 + 1) != 3)
  {
    v28 = 0;
    a2 = v18;
    goto LABEL_45;
  }

  v22 = *v18;
  if (**v18 != 25697 || *(*v18 + 2) != 100)
  {
LABEL_40:
    v25 = *v22;
    v26 = v22[2];
    if (v25 != 30061 || v26 != 108)
    {
      goto LABEL_44;
    }
  }

LABEL_128:
  v49 = &v145;
  if (IsConst)
  {
    v50 = &v153;
  }

  else
  {
    v50 = &v145;
  }

  v140 = v50->__r_.__value_.__r.__words[0];
  p_size = &v153.__r_.__value_.__l.__size_;
  if (!IsConst)
  {
    p_size = &v146;
  }

  LODWORD(v141) = *p_size;
  if (IsConst)
  {
    v52 = &v153.__r_.__value_.__r.__words[2];
  }

  else
  {
    v52 = v147;
  }

  v53 = &v154.__r_.__value_.__s.__data_[15];
  if (!IsConst)
  {
    v53 = &v148;
  }

  if (*v53 < 0)
  {
    if (IsConst)
    {
      v49 = &v153;
    }

    std::string::__init_copy_ctor_external(&v142, v50->__r_.__value_.__r.__words[2], v49[1].__r_.__value_.__r.__words[0]);
  }

  else
  {
    v142 = *v52;
  }

  v54 = &v153;
  v55 = &v154.__r_.__value_.__r.__words[2];
  if (!IsConst)
  {
    v55 = &v149;
  }

  v143 = *v55;
  if (IsConst)
  {
    v56 = &v153;
  }

  else
  {
    v56 = &v145;
  }

  if (IsConst)
  {
    v57 = &v155;
  }

  else
  {
    v57 = v150;
  }

  v58 = &v155.__r_.__value_.__r.__words[2] + 7;
  if (!IsConst)
  {
    v58 = &v151;
  }

  if (*v58 < 0)
  {
    if (!IsConst)
    {
      v54 = &v145;
    }

    std::string::__init_copy_ctor_external(&v144, v56[2].__r_.__value_.__l.__data_, v54[2].__r_.__value_.__l.__size_);
  }

  else
  {
    v144 = *v57;
  }

  v59 = &v153;
  if (IsConst)
  {
    v60 = &v145;
  }

  else
  {
    v60 = &v153;
  }

  *&v136 = v60->__r_.__value_.__r.__words[0];
  v61 = &v146;
  if (!IsConst)
  {
    v61 = &v153.__r_.__value_.__l.__size_;
  }

  DWORD2(v136) = *v61;
  if (IsConst)
  {
    v62 = v147;
  }

  else
  {
    v62 = &v153.__r_.__value_.__r.__words[2];
  }

  v63 = &v148;
  if (!IsConst)
  {
    v63 = &v154.__r_.__value_.__s.__data_[15];
  }

  if (*v63 < 0)
  {
    if (IsConst)
    {
      v59 = &v145;
    }

    std::string::__init_copy_ctor_external(&v137, v60->__r_.__value_.__r.__words[2], v59[1].__r_.__value_.__r.__words[0]);
  }

  else
  {
    v137 = *v62;
  }

  v64 = &v149;
  if (!IsConst)
  {
    v64 = &v154.__r_.__value_.__r.__words[2];
  }

  v65 = *v64;
  v138 = v65;
  if (IsConst)
  {
    v66 = &v145;
  }

  else
  {
    v66 = &v153;
  }

  if (IsConst)
  {
    v67 = v150;
  }

  else
  {
    v67 = &v155;
  }

  v68 = &v151;
  if (!IsConst)
  {
    v68 = &v155.__r_.__value_.__r.__words[2] + 7;
  }

  if (*v68 < 0)
  {
    if (IsConst)
    {
      v69 = &v145;
    }

    else
    {
      v69 = &v153;
    }

    std::string::__init_copy_ctor_external(&v139, v66[2].__r_.__value_.__l.__data_, v69[2].__r_.__value_.__l.__size_);
    v65 = v138;
  }

  else
  {
    v139 = *v67;
  }

  v28 = v65 == 1 || v65 == 4;
  if (v65 == 1 || v65 == 4)
  {
    if (IsConst)
    {
      v70 = "y";
    }

    else
    {
      v70 = "x";
    }

    std::string::__assign_external(&v84, v70);
  }

  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v139.__r_.__value_.__l.__data_);
  }

  a2 = v18;
  if (SHIBYTE(v137.__end_cap_.__value_) < 0)
  {
    operator delete(v137.__begin_);
  }

  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v144.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v142.__r_.__value_.__l.__data_);
  }

LABEL_45:
  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  if (v148 < 0)
  {
    operator delete(*v147);
  }

  if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v155.__r_.__value_.__l.__data_);
  }

  if (v154.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v153.__r_.__value_.__r.__words[2]);
  }

  v83 = v28;
  if (v28)
  {
    goto LABEL_14;
  }

LABEL_54:
  std::string::basic_string[abi:ne200100]<0>(&v153, "x");
  std::string::basic_string[abi:ne200100]<0>(&v154, "y");
  v145 = 0;
  v146 = 0;
  *v147 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v145, &v153, &v155, 2uLL);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v154.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v153 + i * 8 + 24));
    }
  }

  v23 = 0;
LABEL_59:
  ZinMILUnitBuilder::DeclareOperationInputs(v85, a1, &v145, a3, &v140);
  v136 = 0uLL;
  v137.__begin_ = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v136, v140, v141, 0xAAAAAAAAAAAAAAABLL * ((v141 - v140) >> 3));
  if ((v23 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v153, "x");
    ParameterType = MIL::IROperation::TryGetParameterType();
    v31 = MIL::IRValueType::AsTensorType(ParameterType);
    MILTensorRank = GetMILTensorRank(v31);
    if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v153.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v153, "y");
    v33 = MIL::IROperation::TryGetParameterType();
    v34 = MIL::IRValueType::AsTensorType(v33);
    v35 = GetMILTensorRank(v34);
    if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v153.__r_.__value_.__l.__data_);
    }

    memset(&__str, 0, sizeof(__str));
    memset(&v82, 0, sizeof(v82));
    *&v153.__r_.__value_.__r.__words[1] = 0uLL;
    v153.__r_.__value_.__r.__words[0] = &v153.__r_.__value_.__l.__size_;
    MILFunctionInfo::GetTensorLayout(a3, MILTensorRank, &v82, &v153);
    std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v153, v153.__r_.__value_.__l.__size_);
    *&v153.__r_.__value_.__r.__words[1] = 0uLL;
    v153.__r_.__value_.__r.__words[0] = &v153.__r_.__value_.__l.__size_;
    v36 = a3;
    MILFunctionInfo::GetTensorLayout(a3, v35, &__str, &v153);
    v72 = a2;
    std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v153, v153.__r_.__value_.__l.__size_);
    std::string::basic_string(&v80, &__str, (v35 - MILTensorRank) & ~((v35 - MILTensorRank) >> 31), 0xFFFFFFFFFFFFFFFFLL, v79);
    if (MILTensorRank >= v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = MILTensorRank;
    }

    if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v135.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v135.__r_.__value_.__l.__size_;
    }

    p_p = &__p;
    std::string::basic_string[abi:ne200100](&__p, size + 25);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v135;
      }

      else
      {
        v40 = v135.__r_.__value_.__r.__words[0];
      }

      memmove(p_p, v40, size);
    }

    strcpy(p_p + size, "__@input_x_layout_convert");
    v41 = v136;
    v153.__r_.__value_.__r.__words[0] = v37;
    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v153.__r_.__value_.__r.__words[1], v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
    }

    else
    {
      *&v153.__r_.__value_.__r.__words[1] = *&v80.__r_.__value_.__l.__data_;
      v154.__r_.__value_.__r.__words[0] = v80.__r_.__value_.__r.__words[2];
    }

    std::map<long,std::string>::map[abi:ne200100](v77, &v153, 1);
    ZinMILUnitBuilder::DeclareCustomOperationInputLayout(v79, v36, MILTensorRank, v41, v77, 4);
    std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(v77, v77[1]);
    if (v154.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v153.__r_.__value_.__l.__size_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string(&__p, &v82, (MILTensorRank - v35) & ~((MILTensorRank - v35) >> 31), 0xFFFFFFFFFFFFFFFFLL, v77);
    if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = v135.__r_.__value_.__l.__size_;
    }

    std::string::basic_string[abi:ne200100](v75, v42 + 25);
    if (v76 >= 0)
    {
      v43 = v75;
    }

    else
    {
      v43 = v75[0];
    }

    if (v42)
    {
      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v135;
      }

      else
      {
        v44 = v135.__r_.__value_.__r.__words[0];
      }

      memmove(v43, v44, v42);
    }

    strcpy(v43 + v42, "__@input_y_layout_convert");
    v45 = v136;
    v153.__r_.__value_.__r.__words[0] = v37;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v153.__r_.__value_.__r.__words[1], __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      *&v153.__r_.__value_.__r.__words[1] = *&__p.__r_.__value_.__l.__data_;
      v154.__r_.__value_.__r.__words[0] = __p.__r_.__value_.__r.__words[2];
    }

    a2 = v72;
    std::map<long,std::string>::map[abi:ne200100](v74, &v153, 1);
    a3 = v36;
    ZinMILUnitBuilder::DeclareCustomOperationInputLayout(v77, v36, v35, v45 + 24, v74, 4);
    std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(v74, v74[1]);
    if (v154.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v153.__r_.__value_.__l.__size_);
    }

    if (v76 < 0)
    {
      operator delete(v75[0]);
    }

    if (*(v79[0] + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v153, *v79[0], *(v79[0] + 8));
    }

    else
    {
      v46 = *v79[0];
      v153.__r_.__value_.__r.__words[2] = *(v79[0] + 16);
      *&v153.__r_.__value_.__l.__data_ = v46;
    }

    if (*(v77[0] + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v154, *v77[0], v77[0][1]);
    }

    else
    {
      v47 = *v77[0];
      v154.__r_.__value_.__r.__words[2] = v77[0][2];
      *&v154.__r_.__value_.__l.__data_ = v47;
    }

    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>(&v136, &v153, &v155, 2uLL);
    for (j = 0; j != -6; j -= 3)
    {
      if (SHIBYTE(v154.__r_.__value_.__r.__words[j + 2]) < 0)
      {
        operator delete(*(&v153 + j * 8 + 24));
      }
    }

    v153.__r_.__value_.__r.__words[0] = v77;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v153);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v153.__r_.__value_.__r.__words[0] = v79;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v153);
    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
    }
  }

  __str.__r_.__value_.__r.__words[0] = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(v88, a2);
  if (&v89 != __str.__r_.__value_.__l.__data_)
  {
    v152[7] = 0;
    operator new();
  }

  v80.__r_.__value_.__r.__words[0] = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(v86, a2);
  if (&v87 == v80.__r_.__value_.__l.__data_)
  {
    if (a2[23] >= 0)
    {
      v71 = a2;
    }

    else
    {
      v71 = *a2;
    }

    ZinAssertImpl("Unsupported elementwise type %s", v71);
  }

  v152[0] = &unk_1F1A3CD28;
  v152[1] = &v80;
  v152[3] = v152;
  ZinMILUnitBuilder::CreateUnit<ZinIrEWUnitInfo>(&v136, v152, &v153);
  std::vector<std::string>::__vdeallocate(&v136);
  v136 = *&v153.__r_.__value_.__l.__data_;
  v137.__begin_ = v153.__r_.__value_.__r.__words[2];
  memset(&v153, 0, sizeof(v153));
  v82.__r_.__value_.__r.__words[0] = &v153;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v82);
  std::__function::__value_func<void ()(std::optional<ZinIrEWUnitInfo> &)>::~__value_func[abi:ne200100](v152);
  ZinMILUnitBuilder::Finalize(v85, a3, a1, &v135.__r_.__value_.__l.__data_, v73, 1, 1);
  v153.__r_.__value_.__r.__words[0] = &v136;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v153);
  v153.__r_.__value_.__r.__words[0] = &v140;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v153);
  v153.__r_.__value_.__r.__words[0] = &v145;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v153);
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  v153.__r_.__value_.__r.__words[0] = &v85[3];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v153);
  v153.__r_.__value_.__r.__words[0] = v85;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v153);
  std::__tree<std::string>::destroy(v86, v87);
  std::__tree<std::__value_type<std::string,ZinIrPlaneWriterUnitInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrPlaneWriterUnitInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrPlaneWriterUnitInfo>>>::destroy(v88, v89);
  ZinIrUnitInfo::~ZinIrUnitInfo(v90);
  ZinIrUnitInfo::~ZinIrUnitInfo(v99);
  ZinIrUnitInfo::~ZinIrUnitInfo(v108);
  ZinIrUnitInfo::~ZinIrUnitInfo(v117);
  ZinIrUnitInfo::~ZinIrUnitInfo(v126);
  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
  }
}

void sub_1A74838D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x3B7]) < 0)
  {
    operator delete(*(v65 + 152));
  }

  MILOpConverter::MILProducerInfo::~MILProducerInfo(&STACK[0x3E0]);
  MILOpConverter::MILProducerInfo::~MILProducerInfo(&STACK[0x428]);
  MILOpConverter::MILProducerInfo::~MILProducerInfo(&STACK[0x4B0]);
  if (a43 < 0)
  {
    operator delete(a38);
  }

  ZinMILUnitBuilder::~ZinMILUnitBuilder(&a44);
  std::__tree<std::string>::destroy(&a51, a52);
  std::__tree<std::__value_type<std::string,ZinIrPlaneWriterUnitInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrPlaneWriterUnitInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrPlaneWriterUnitInfo>>>::destroy(&a54, a55);
  ZinIrUnitInfo::~ZinIrUnitInfo(&a57);
  ZinIrUnitInfo::~ZinIrUnitInfo(&a65);
  ZinIrUnitInfo::~ZinIrUnitInfo(&STACK[0x238]);
  ZinIrUnitInfo::~ZinIrUnitInfo(&STACK[0x2A0]);
  ZinIrUnitInfo::~ZinIrUnitInfo(&STACK[0x308]);
  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(*(v65 + 104));
  }

  _Unwind_Resume(a1);
}

void sub_1A7483D2C()
{
  do
  {
    v0 -= 16;
    std::pair<std::string const,ZinIrScaledEWUnitInfo>::~pair(v0);
  }

  while (v0 != &STACK[0x4B0]);
  JUMPOUT(0x1A7483CECLL);
}

void MILOpConverter::ElementwiseOpCustomLowering(MIL::IROperation *a1, uint64_t *a2, uint64_t **a3)
{
  v62 = *MEMORY[0x1E69E9840];
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  v9 = *(a2 + 23);
  if ((v9 & 0x80) != 0)
  {
    if (a2[1] == 4 && **a2 == 1885957219)
    {
LABEL_35:
      LODWORD(v59.__r_.__value_.__l.__data_) = 0;
      LODWORD(v54.__begin_) = 0;
      std::string::basic_string[abi:ne200100]<0>(__p, "alpha");
      RetrieveRequiredValue<float>(a1, __p, &v59, 0);
      if (SBYTE7(v52) < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "beta");
      RetrieveRequiredValue<float>(a1, __p, &v54, 0);
      if (SBYTE7(v52) < 0)
      {
        operator delete(__p[0]);
      }

      MILOpConverter::ConvertANENeuronClampedRelu(a1, a3, *&v59.__r_.__value_.__l.__data_, *&v54.__begin_, v17);
      return;
    }

    if (a2[1] == 9 && **a2 == 0x6C6F687365726874 && *(*a2 + 8) == 100)
    {
LABEL_93:
      LODWORD(v59.__r_.__value_.__l.__data_) = 0;
      std::string::basic_string[abi:ne200100]<0>(__p, "alpha");
      RetrieveRequiredValue<float>(a1, __p, &v59, 0);
      if (SBYTE7(v52) < 0)
      {
        operator delete(__p[0]);
      }

      MILOpConverter::ConvertANENeuronClampedRelu(a1, a3, *&v59.__r_.__value_.__l.__data_, INFINITY, v30);
      return;
    }

    if (a2[1] == 9 && **a2 == 0x69645F726F6F6C66 && *(*a2 + 8) == 118)
    {
LABEL_96:
      (*(*a1 + 200))(__p, a1);
      if (*(__p[0] + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v54, *__p[0], *(__p[0] + 1));
      }

      else
      {
        v31 = *__p[0];
        v54.__end_cap_.__value_ = *(__p[0] + 2);
        *&v54.__begin_ = v31;
      }

      v59.__r_.__value_.__r.__words[0] = __p;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v59);
      v52 = 0u;
      v53 = 0u;
      *__p = 0u;
      std::string::basic_string[abi:ne200100]<0>(&v59, "x");
      std::string::basic_string[abi:ne200100]<0>(v60, "y");
      memset(&v61, 0, sizeof(v61));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v61, &v59, &v61, 2uLL);
      ZinMILUnitBuilder::DeclareOperationInputs(__p, a1, &v61, a3, &v50);
      v47 = &v61;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v47);
      for (i = 0; i != -6; i -= 3)
      {
        if (SHIBYTE(v60[i + 2]) < 0)
        {
          operator delete(*(&v59 + i * 8 + 24));
        }
      }

      if (SHIBYTE(v54.__end_cap_.__value_) >= 0)
      {
        value_high = HIBYTE(v54.__end_cap_.__value_);
      }

      else
      {
        value_high = v54.__end_;
      }

      v34 = &v61;
      std::string::basic_string[abi:ne200100](&v61, value_high + 6);
      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v34 = v61.__r_.__value_.__r.__words[0];
      }

      if (value_high)
      {
        if (SHIBYTE(v54.__end_cap_.__value_) >= 0)
        {
          begin = &v54;
        }

        else
        {
          begin = v54.__begin_;
        }

        memmove(v34, begin, value_high);
      }

      strcpy(v34 + value_high, "__@div");
      v58[0] = &unk_1F1A3CED8;
      v58[3] = v58;
      ZinMILUnitBuilder::CreateUnit<ZinIrEWUnitInfo>(&v50, v58, &v59);
      std::__function::__value_func<void ()(std::optional<ZinIrEWUnitInfo> &)>::~__value_func[abi:ne200100](v58);
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v54.__end_cap_.__value_) >= 0)
      {
        end = HIBYTE(v54.__end_cap_.__value_);
      }

      else
      {
        end = v54.__end_;
      }

      v37 = &v47;
      std::string::basic_string[abi:ne200100](&v47, end + 8);
      if (v49 < 0)
      {
        v37 = v47;
      }

      if (end)
      {
        if (SHIBYTE(v54.__end_cap_.__value_) >= 0)
        {
          v38 = &v54;
        }

        else
        {
          v38 = v54.__begin_;
        }

        memmove(v37, v38, end);
      }

      strcpy(v37 + end, "__@floor");
      v57[0] = &unk_1F1A3CF58;
      v57[3] = v57;
      ZinMILUnitBuilder::CreateUnit<ZinIrNeuronUnitInfo>(&v59, v57, &v61);
      std::vector<std::string>::__vdeallocate(&v59);
      v59 = v61;
      memset(&v61, 0, sizeof(v61));
      v43 = &v61;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v43);
      std::__function::__value_func<void ()(std::optional<ZinIrNeuronUnitInfo> &)>::~__value_func[abi:ne200100](v57);
      if (SHIBYTE(v49) < 0)
      {
        operator delete(v47);
      }

      ZinMILUnitBuilder::Finalize(__p, a3, a1, &v54.__begin_, v8, 1, 1);
      v61.__r_.__value_.__r.__words[0] = &v59;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v61);
      v59.__r_.__value_.__r.__words[0] = &v50;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v59);
      v59.__r_.__value_.__r.__words[0] = &v52 + 8;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v59);
      v59.__r_.__value_.__r.__words[0] = __p;
      std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v59);
      if ((SHIBYTE(v54.__end_cap_.__value_) & 0x80000000) == 0)
      {
        return;
      }

      v29 = v54.__begin_;
LABEL_92:
      operator delete(v29);
      return;
    }

    v14 = a2;
    a2 = *a2;
    if (v14[1] != 3)
    {
      goto LABEL_130;
    }
  }

  else if (v9 != 3)
  {
    if (v9 != 4)
    {
      if (v9 != 9)
      {
        goto LABEL_130;
      }

      if (*a2 != 0x6C6F687365726874 || *(a2 + 8) != 100)
      {
        if (*a2 != 0x69645F726F6F6C66 || *(a2 + 8) != 118)
        {
          goto LABEL_130;
        }

        goto LABEL_96;
      }

      goto LABEL_93;
    }

    if (*a2 != 1885957219)
    {
      goto LABEL_130;
    }

    goto LABEL_35;
  }

  if (*a2 != 28524 || *(a2 + 2) != 103)
  {
LABEL_130:
    ZinAssertImpl("Unsupported elementwise %s", a2);
  }

  (*(*a1 + 200))(__p, a1);
  if (*(__p[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v59, *__p[0], *(__p[0] + 1));
  }

  else
  {
    v16 = *__p[0];
    v59.__r_.__value_.__r.__words[2] = *(__p[0] + 2);
    *&v59.__r_.__value_.__l.__data_ = v16;
  }

  v54.__begin_ = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v54);
  v52 = 0u;
  v53 = 0u;
  *__p = 0u;
  std::string::basic_string[abi:ne200100]<0>(&v61, "x");
  memset(&v50, 0, sizeof(v50));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v50, &v61, &v62, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(__p, a1, &v50, a3, &v54);
  v47 = &v50;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v47);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  v46 = 0.0;
  std::string::basic_string[abi:ne200100]<0>(&v50, "epsilon");
  RetrieveRequiredValue<float>(a1, &v50, &v46, 0);
  if (SHIBYTE(v50.__end_cap_.__value_) < 0)
  {
    operator delete(v50.__begin_);
  }

  if (v46 != 0.0)
  {
    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v59.__r_.__value_.__l.__size_;
    }

    v19 = &v61;
    std::string::basic_string[abi:ne200100](&v61, size + 8);
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = v61.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v59;
      }

      else
      {
        v20 = v59.__r_.__value_.__r.__words[0];
      }

      memmove(v19, v20, size);
    }

    strcpy(v19 + size, "_epsilon");
    v21 = v54.__begin_;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    *&v55 = v46;
    v44 = 0;
    v45 = 0;
    v43 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v43, &v55, &v55 + 1, 1uLL);
    ZinMILUnitBuilder::InsertAxPlusB(&v61.__r_.__value_.__l.__data_, v21, &v47, &v43, a3, &v50);
    std::vector<std::string>::__vdeallocate(&v54);
    v54 = v50;
    memset(&v50, 0, sizeof(v50));
    v39 = &v50;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v39);
    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = v59.__r_.__value_.__l.__size_;
  }

  v23 = &v61;
  std::string::basic_string[abi:ne200100](&v61, v22 + 7);
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v23 = v61.__r_.__value_.__r.__words[0];
  }

  if (v22)
  {
    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v59;
    }

    else
    {
      v24 = v59.__r_.__value_.__r.__words[0];
    }

    memmove(v23, v24, v22);
  }

  strcpy(v23 + v22, "__@log2");
  v56[0] = &unk_1F1A3CFD8;
  v56[3] = v56;
  ZinMILUnitBuilder::CreateUnit<ZinIrNeuronUnitInfo>(&v54, v56, &v50);
  std::__function::__value_func<void ()(std::optional<ZinIrNeuronUnitInfo> &)>::~__value_func[abi:ne200100](v56);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v59.__r_.__value_.__l.__size_;
  }

  v26 = &v47;
  std::string::basic_string[abi:ne200100](&v47, v25 + 6);
  if (v49 < 0)
  {
    v26 = v47;
  }

  if (v25)
  {
    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v59;
    }

    else
    {
      v27 = v59.__r_.__value_.__r.__words[0];
    }

    memmove(v26, v27, v25);
  }

  strcpy(v26 + v25, "__@goc");
  v28 = v50.__begin_;
  v42 = 1060205080;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v43, &v42, &v43, 1uLL);
  v39 = 0;
  v40 = 0;
  v41 = 0;
  ZinMILUnitBuilder::InsertAxPlusB(&v47, v28, &v43, &v39, a3, &v61);
  std::vector<std::string>::__vdeallocate(&v50);
  v50 = v61;
  memset(&v61, 0, sizeof(v61));
  v55 = &v61;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v55);
  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v47);
  }

  ZinMILUnitBuilder::Finalize(__p, a3, a1, &v59.__r_.__value_.__l.__data_, v8, 1, 1);
  v61.__r_.__value_.__r.__words[0] = &v50;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v61);
  v50.__begin_ = &v54;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v50);
  v54.__begin_ = (&v52 + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v54);
  v54.__begin_ = __p;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v54);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    v29 = v59.__r_.__value_.__r.__words[0];
    goto LABEL_92;
  }
}

void sub_1A7484854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  *(v47 - 144) = &a31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v47 - 144));
  _Unwind_Resume(a1);
}

void MILOpConverter::ElementwiseOpSimpleNeuron(MIL::IROperation *a1, char *a2, uint64_t **a3)
{
  v66 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(&v40);
  if (*(v40 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, *v40, *(v40 + 8));
  }

  else
  {
    v6 = *v40;
    v30.__r_.__value_.__r.__words[2] = *(v40 + 16);
    *&v30.__r_.__value_.__l.__data_ = v6;
  }

  v28 = &v40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v28);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v8 = MIL::IRValueType::AsTensorType(OutputType);
  v9 = (*(*v8 + 88))(v8);
  std::string::basic_string[abi:ne200100]<0>(&v40, "atan");
  DWORD2(v41) = 29;
  std::string::basic_string[abi:ne200100]<0>(&v42, "ceil");
  v43 = 28;
  std::string::basic_string[abi:ne200100]<0>(v44, "cos");
  v45 = 21;
  std::string::basic_string[abi:ne200100]<0>(v46, "exp");
  v47 = 17;
  std::string::basic_string[abi:ne200100]<0>(v48, "exp2");
  v49 = 16;
  std::string::basic_string[abi:ne200100]<0>(v50, "floor");
  v51 = 27;
  std::string::basic_string[abi:ne200100]<0>(v52, "inverse");
  v53 = 14;
  std::string::basic_string[abi:ne200100]<0>(v54, "round");
  v55 = 26;
  std::string::basic_string[abi:ne200100]<0>(v56, "rsqrt");
  v57 = 13;
  std::string::basic_string[abi:ne200100]<0>(v58, "sign");
  v59 = 19;
  std::string::basic_string[abi:ne200100]<0>(v60, "sin");
  v61 = 20;
  std::string::basic_string[abi:ne200100]<0>(v62, "sqrt");
  v63 = 12;
  std::string::basic_string[abi:ne200100]<0>(v64, "tanh");
  v65 = 7;
  std::map<std::string const,ZinIrNeuronType>::map[abi:ne200100](&v28, &v40, 13);
  v10 = 52;
  do
  {
    if (SHIBYTE(__p[v10 + 1]) < 0)
    {
      operator delete(__p[v10 - 1]);
    }

    v10 -= 4;
  }

  while (v10 * 8);
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  memset(&v26, 0, sizeof(v26));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v26, __p, &v40, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(&v40, a1, &v26, a3, &v27);
  v22 = &v26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v22);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v25 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(&v28, a2);
  if (&v29 == v25)
  {
    if (a2[23] >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    ZinAssertImpl("Unsupported elementwise type %s", v17);
  }

  std::string::basic_string[abi:ne200100]<0>(&v26, "epsilon");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  v12 = ParameterValue;
  if (SHIBYTE(v26.__end_cap_.__value_) < 0)
  {
    operator delete(v26.__begin_);
    if (!v12)
    {
      goto LABEL_31;
    }
  }

  else if (!ParameterValue)
  {
    goto LABEL_31;
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v30.__r_.__value_.__l.__size_;
  }

  v14 = __p;
  std::string::basic_string[abi:ne200100](__p, size + 8);
  if (v39 < 0)
  {
    v14 = __p[0];
  }

  if (size)
  {
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v30;
    }

    else
    {
      v15 = v30.__r_.__value_.__r.__words[0];
    }

    memmove(v14, v15, size);
  }

  strcpy(v14 + size, "_epsilon");
  begin = v27.__begin_;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v37 = v12;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  std::vector<__CFNumber const*>::__init_with_size[abi:ne200100]<__CFNumber const* const*,__CFNumber const* const*>(&v19, &v37, __p, 1uLL);
  v35[0] = &unk_1F1A399E8;
  v35[3] = v35;
  v36 = 0;
  v33[0] = &unk_1F1A399E8;
  v33[3] = v33;
  v34 = 0;
  ZinMILUnitBuilder::InsertAxPlusB(__p, begin, &v22, &v19, a3, v35, &v26, v33);
  std::vector<std::string>::__vdeallocate(&v27);
  v27 = v26;
  memset(&v26, 0, sizeof(v26));
  v31 = &v26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v31);
  std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](v33);
  std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](v35);
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_31:
  v32[0] = &unk_1F1A3D058;
  v32[1] = &v25;
  v32[3] = v32;
  ZinMILUnitBuilder::CreateUnit<ZinIrNeuronUnitInfo>(&v27, v32, v18);
  v26.__begin_ = v18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v26);
  std::__function::__value_func<void ()(std::optional<ZinIrNeuronUnitInfo> &)>::~__value_func[abi:ne200100](v32);
  ZinMILUnitBuilder::Finalize(&v40, a3, a1, &v30.__r_.__value_.__l.__data_, v9, 1, 1);
  v26.__begin_ = &v27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v26);
  v27.__begin_ = (&v41 + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v27);
  v27.__begin_ = &v40;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v27);
  std::__tree<std::string>::destroy(&v28, v29);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }
}

void sub_1A74850E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, char a62)
{
  a31 = &a62;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a31);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>::~pair(uint64_t a1)
{
  std::__function::__value_func<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::pair<std::string const,ZinIrScaledEWUnitInfo>::~pair(uint64_t a1)
{
  ZinIrUnitInfo::~ZinIrUnitInfo((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void ZinMILUnitBuilder::CreateUnit<ZinIrScaledEWUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  LOBYTE(v10[0]) = 0;
  v11 = 0;
  v8 = *(a5 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, v10);
  if (v11)
  {
    operator new();
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a7, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (v11 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A748558C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v29)
  {
    (*(*v29 + 8))(v29, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a29 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(&a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,ZinIrScaledEWUnitInfo>::pair[abi:ne200100]<char const(&)[4],ZinIrScaledEWUnitInfo&,0>(uint64_t a1, char *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(a1, a2)[3] = &unk_1F1A2EA30;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v5 = *(a3 + 8);
    *(a1 + 48) = *(a3 + 24);
    *(a1 + 32) = v5;
  }

  v6 = *(a3 + 32);
  *(a1 + 64) = 0;
  *(a1 + 56) = v6;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 64), *(a3 + 40), *(a3 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 48) - *(a3 + 40)) >> 3));
  *(a1 + 88) = *(a3 + 64);
  *(a1 + 24) = &unk_1F1A33E68;
  v7 = *(a3 + 80);
  *(a1 + 120) = *(a3 + 96);
  *(a1 + 104) = v7;
  return a1;
}

void sub_1A748578C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrScaledEWUnitInfo::ZinIrScaledEWUnitInfo(ZinIrScaledEWUnitInfo *this, const ZinIrScaledEWUnitInfo *a2)
{
  *this = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  v5 = *(a2 + 8);
  *(this + 5) = 0;
  *(this + 8) = v5;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 5, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 4) = *(a2 + 4);
  *this = &unk_1F1A33E68;
  v6 = *(a2 + 5);
  *(this + 48) = *(a2 + 48);
  *(this + 5) = v6;
}

void sub_1A748589C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::map<std::string const,ZinIrScaledEWUnitInfo>::map[abi:ne200100](uint64_t **a1, char *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = a3 << 7;
    do
    {
      std::__tree<std::__value_type<std::string const,ZinIrScaledEWUnitInfo>,std::__map_value_compare<std::string const,std::__value_type<std::string const,ZinIrScaledEWUnitInfo>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,ZinIrScaledEWUnitInfo>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,ZinIrScaledEWUnitInfo> const&>(a1, v4, a2, a2);
      a2 += 128;
      v6 -= 128;
    }

    while (v6);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string const,ZinIrScaledEWUnitInfo>,std::__map_value_compare<std::string const,std::__value_type<std::string const,ZinIrScaledEWUnitInfo>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,ZinIrScaledEWUnitInfo>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,ZinIrScaledEWUnitInfo> const&>(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v4 = *std::__tree<std::string>::__find_equal<std::string>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    std::__tree<std::__value_type<std::string const,ZinIrScaledEWUnitInfo>,std::__map_value_compare<std::string const,std::__value_type<std::string const,ZinIrScaledEWUnitInfo>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,ZinIrScaledEWUnitInfo>>>::__construct_node<std::pair<std::string const,ZinIrScaledEWUnitInfo> const&>();
  }

  return v4;
}

std::string *std::pair<std::string const,ZinIrScaledEWUnitInfo>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  this[1].__r_.__value_.__r.__words[0] = &unk_1F1A2EA30;
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = a2[2];
    this[2].__r_.__value_.__r.__words[0] = *(a2 + 6);
    *&this[1].__r_.__value_.__r.__words[1] = v5;
  }

  v6 = *(a2 + 14);
  this[2].__r_.__value_.__r.__words[2] = 0;
  LODWORD(this[2].__r_.__value_.__r.__words[1]) = v6;
  this[3].__r_.__value_.__r.__words[0] = 0;
  this[3].__r_.__value_.__l.__size_ = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[2].__r_.__value_.__r.__words[2], *(a2 + 8), *(a2 + 9), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 9) - *(a2 + 8)) >> 3));
  *&this[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
  this[1].__r_.__value_.__r.__words[0] = &unk_1F1A33E68;
  v7 = *(a2 + 104);
  LOWORD(this[5].__r_.__value_.__l.__data_) = *(a2 + 60);
  *&this[4].__r_.__value_.__r.__words[1] = v7;
  return this;
}

void sub_1A7485B48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::map<std::string const,ZinIrEWType>::map[abi:ne200100](uint64_t a1, char *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,SpatialSplitMode>,std::__map_value_compare<std::string,std::__value_type<std::string,SpatialSplitMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SpatialSplitMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,SpatialSplitMode> const&>(a1, v4, a2, a2);
      a2 += 32;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t MILOpConverter::MILProducerInfo::IsConst(MILOpConverter::MILProducerInfo *this)
{
  v1 = this + 16;
  v2 = *(this + 39);
  if (v2 < 0)
  {
    if (*(this + 3) != 5)
    {
      return *(this + 10) == 2;
    }

    v1 = *v1;
  }

  else if (v2 != 5)
  {
    return *(this + 10) == 2;
  }

  v3 = *v1;
  v4 = v1[4];
  if (v3 != 1936617315 || v4 != 116)
  {
    return *(this + 10) == 2;
  }

  return 1;
}

uint64_t std::__shared_ptr_pointer<ZinIrScaledEWUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrScaledEWUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}