void sub_2599F2DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (*(v11 - 161) < 0)
  {
    operator delete(*(v11 - 184));
  }

  v13 = *(v11 - 144);
  if (v13)
  {
    *(v11 - 136) = v13;
    operator delete(v13);
  }

  v14 = *(v11 - 208);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

void MilTranslator::Passes::FuseConvScale::~FuseConvScale(void **this)
{
  MilTranslator::Passes::Pass::~Pass(this);

  JUMPOUT(0x259CA9760);
}

void **std::vector<MIL::Fp16>::__assign_with_size[abi:ne200100]<MIL::Fp16 const*,MIL::Fp16 const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MIL::Fp16>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
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
        v13 += 2;
        *v15++ = v16;
        v14 += 2;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void MilTranslator::Passes::Pass::~Pass(void **this)
{
  *this = &unk_286AB1EB8;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 4);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void **std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::Builder::OperationBuilder> const*,std::shared_ptr<MIL::Builder::OperationBuilder> const*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2599F34EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRParameter>>>(a1, a2);
  }

  std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::shared_ptr<MIL::Builder::OperationBuilder> const*,std::shared_ptr<MIL::Builder::OperationBuilder> const*,std::shared_ptr<MIL::Builder::OperationBuilder>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::shared_ptr<MIL::Builder::OperationBuilder>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::shared_ptr<MIL::Builder::OperationBuilder>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::shared_ptr<MIL::Builder::OperationBuilder>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::shared_ptr<MIL::Builder::OperationBuilder>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 16;
  }
}

void ANEMachineIR::H2022::Opsets::aneflowh2022Opset::Register(ANEMachineIR::H2022::Opsets::aneflowh2022Opset *this, MIL::MILContext *a2)
{
  v3 = 12;
  strcpy(__p, "aneflowh2022");
  operator new();
}

void sub_2599F3740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, MIL::IROpset *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v18 = a11;
  a11 = 0;
  if (v18)
  {
    ANEMachineIR::H2021::Opsets::aneflowh2021Opset::Register();
  }

  std::unique_ptr<ANEMachineIR::H2021::Opsets::aneflowh2021Opset>::~unique_ptr[abi:ne200100](&a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2599F3818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::Opsets::aneflowh2022Opset::GetOps(uint64_t *__return_ptr a1@<X8>, ANEMachineIR::H2022::Opsets::aneflowh2022Opset *this@<X0>)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(v3, "base_ne_matmul");
  ANEMachineIR::H2022::BaseNeMatmul::Make(this, v3);
}

void sub_2599F4BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v17 = *(v15 - 40);
  *(v15 - 40) = 0;
  if (v17)
  {
    ANEMachineIR::H2021::Opsets::aneflowh2021Opset::GetOps();
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::~__hash_table(v14);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::Opsets::aneflowh2022Opset::~aneflowh2022Opset(ANEMachineIR::H2022::Opsets::aneflowh2022Opset *this)
{
  MIL::IROpset::~IROpset(this);

  JUMPOUT(0x259CA9760);
}

uint64_t ANEMachineIR::Validators::BinaryPointFormatOffsets(ANEMachineIR::Validators *this, int a2)
{
  if (this)
  {
    v2 = 10;
  }

  else
  {
    v2 = 0;
  }

  if (this)
  {
    v3 = 0;
  }

  else
  {
    v3 = 10;
  }

  if (a2)
  {
    v4 = v2 + 10;
  }

  else
  {
    v4 = v2;
  }

  if (!a2)
  {
    v3 += 10;
  }

  return v4 & 0xFFFFE1FF | (((v3 >> 1) & 0xF) << 9);
}

BOOL ANEMachineIR::Validators::NeuralEngineAccumulatorInitLegal(__int16 a1, char a2, char a3, char a4)
{
  v10 = a1;
  v4 = (1 << (a3 + a2 + a4));
  MIL::Fp16::GetFloat(&v10);
  v6 = v5 * v4;
  v7 = floor(v6 + 0.5);
  if (v6 >= 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  return (v8 + 0x7FFFFFFF) < 0xFFFFFFFF;
}

BOOL ANEMachineIR::Validators::NeuralEngineBiasShifterExponentLegal(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = -14;
  if (((a1 >> 10) & 0x1F) != 0)
  {
    v4 = ((a1 >> 10) & 0x1F) - 15;
  }

  return (a3 + a2 - a4 + 0x80000000 + v4) < 0x8000000C;
}

void MilTranslator::OpTranslator::TranslateElementWiseBinary(MilTranslator::OpTranslator *this@<X0>, const MIL::IROperation *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(*a2 + 56))(a2);
  if (*(v6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v94, *v6, *(v6 + 8));
  }

  else
  {
    v7 = *v6;
    v94.__r_.__value_.__r.__words[2] = *(v6 + 16);
    *&v94.__r_.__value_.__l.__data_ = v7;
  }

  {
    *a3 = 4;
    std::operator+<char>();
    v9 = std::string::append(&v65, "' not implemented");
    v10 = *&v9->__r_.__value_.__l.__data_;
    *(a3 + 24) = *(&v9->__r_.__value_.__l + 2);
    *(a3 + 8) = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_122;
    }

    v11 = v65.__r_.__value_.__r.__words[0];
    goto LABEL_121;
  }

  v65.__r_.__value_.__r.__words[0] = &v94;
  if (*(v8 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v93, v8[5], v8[6]);
  }

  else
  {
    v93 = *(v8 + 5);
  }

  std::string::basic_string[abi:ne200100]<0>(&v65, "x");
  v12 = (*(*a2 + 120))(a2, &v65, 0);
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v65, "y");
  v13 = (*(*a2 + 120))(a2, &v65, 0);
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v65, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v15 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v65, "y");
  v16 = MIL::IROperation::GetParameterType();
  v17 = MIL::IRValueType::AsTensorType(v16);
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
    if (!v12)
    {
      goto LABEL_26;
    }
  }

  else if (!v12)
  {
    goto LABEL_26;
  }

  if (v13)
  {
    MilTranslator::OpTranslator::GetChannelLastTensorNameMayInsertTranspose(this, v12, v15, &v92);
    MilTranslator::OpTranslator::GetChannelLastTensorNameMayInsertTranspose(this, v13, v17, &v91);
    v18 = (*(*a2 + 176))(a2);
    v19 = *v18;
    if (v18[1] == *v18)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v21 = *v19;
    v20 = *(v19 + 8);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    Type = MIL::IRNamedValueType::GetType(v21);
    v23 = MIL::IRValueType::AsTensorType(Type);
    ANEMachineIR::Utils::GetStaticTensorShape(v90, v15, v24);
    ANEMachineIR::Utils::GetStaticTensorShape(v89, v17, v25);
    ANEMachineIR::Utils::GetStaticTensorShape(&v87, v23, v26);
    v27 = (*(*v15 + 96))(v15);
    MilTranslator::OpTranslator::InferChannelLastTransposeInfo(this, v12, (v27[1] - *v27) >> 3, &__s);
    MilTranslator::OpTranslator::GetTransposeOpParamPerm(&__s, (v88 - v87) >> 3, v83);
    MilTranslator::OpTranslator::InferTransposedShape(v90, v83, v82);
    MilTranslator::OpTranslator::InferTransposedShape(v89, v83, v81);
    MilTranslator::OpTranslator::InferTransposedShape(&v87, v83, v80);
    (*(*v15 + 88))(v15);
    v28 = MIL::IRTensorValueType::Make();
    (*(*v17 + 88))(v17);
    v29 = MIL::IRTensorValueType::Make();
    (*(*v23 + 88))(v23);
    v30 = MIL::IRTensorValueType::Make();
    Name = MIL::IRNamedValueType::GetName(v21);
    if (*(Name + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *Name, *(Name + 8));
    }

    else
    {
      v32 = *Name;
      __str.__r_.__value_.__r.__words[2] = *(Name + 16);
      *&__str.__r_.__value_.__l.__data_ = v32;
    }

    IsTransposeRequired = MilTranslator::OpTranslator::IsTransposeRequired(v83);
    if (IsTransposeRequired)
    {
      std::string::append(&__str, "_channel_last");
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v62, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
      }

      else
      {
        v62 = __s;
      }

      v63 = v85;
      v64 = v86;
      std::string::operator=(&v62, &__str);
      v38 = MIL::IRNamedValueType::GetName(v21);
      std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>::pair[abi:ne200100]<std::string const&,std::pair<std::string,std::array<unsigned char,5ul>>&,0>(&v65, v38, &v62);
      IsTransposeRequired = std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>>(this + 37, &v65, &v65);
      if (v67 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }
    }

    LODWORD(v65.__r_.__value_.__l.__data_) = 1065353216;
    v65.__r_.__value_.__s.__data_[4] = 1;
    LODWORD(v65.__r_.__value_.__r.__words[1]) = 1065353216;
    v65.__r_.__value_.__s.__data_[12] = 1;
    LOWORD(v65.__r_.__value_.__r.__words[2]) = MIL::Fp16::FromFloat(IsTransposeRequired, 1.0);
    v65.__r_.__value_.__s.__data_[18] = 1;
    LOBYTE(__p) = 0;
    v68 = 0;
    LOBYTE(v69) = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    LOBYTE(v76) = 0;
    v78 = 0;
    LocationPtr = MIL::IRObject::GetLocationPtr(a2);
    ANEMachineIR::Validators::ValidatePeElementWiseBinary(LocationPtr, &v93, v28, v29, v30, &v62);
    if (MIL::ValidationResult::IsGood(&v62))
    {
      MEMORY[0x259CA8F00](&v62);
      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v57, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_);
      }

      else
      {
        v57 = v93;
      }

      MilTranslator::OpTranslator::AddOperation(this);
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v54, "x");
      if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v53, v92.__r_.__value_.__l.__data_, v92.__r_.__value_.__l.__size_);
      }

      else
      {
        v53 = v92;
      }

      MIL::Builder::OperationBuilder::AddInput();
      if (v56)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v56);
      }

      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if (v55 < 0)
      {
        operator delete(v54);
      }

      std::string::basic_string[abi:ne200100]<0>(&v50, "y");
      if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v49, v91.__r_.__value_.__l.__data_, v91.__r_.__value_.__l.__size_);
      }

      else
      {
        v49 = v91;
      }

      MIL::Builder::OperationBuilder::AddInput();
      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v52);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      if (v51 < 0)
      {
        operator delete(v50);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v47, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
      }

      else
      {
        v47 = __str;
      }

      MIL::Builder::OperationBuilder::AddOutput();
      if (v48)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v48);
      }

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      *a3 = 0;
      std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
      if (v62.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v62.__r_.__value_.__l.__size_);
      }
    }

    else
    {
      *a3 = 6;
      v40 = a3 + 8;
      (*(*a2 + 56))(a2);
      std::operator+<char>();
      v41 = std::string::append(&v60, "', violations: ");
      v42 = *&v41->__r_.__value_.__l.__data_;
      v61.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
      *&v61.__r_.__value_.__l.__data_ = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      MIL::MILResult::GetMessageWithLocation(v58, &v62);
      if ((v59 & 0x80u) == 0)
      {
        v43 = v58;
      }

      else
      {
        v43 = v58[0];
      }

      if ((v59 & 0x80u) == 0)
      {
        v44 = v59;
      }

      else
      {
        v44 = v58[1];
      }

      v45 = std::string::append(&v61, v43, v44);
      v46 = *&v45->__r_.__value_.__l.__data_;
      *(v40 + 16) = *(&v45->__r_.__value_.__l + 2);
      *v40 = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      if (v59 < 0)
      {
        operator delete(v58[0]);
      }

      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      MEMORY[0x259CA8F00](&v62);
    }

    if (v78 == 1 && v77 < 0)
    {
      operator delete(v76);
    }

    if (v71 == 1 && v69)
    {
      v70 = v69;
      operator delete(v69);
    }

    if (v68 == 1 && v67 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v80[0])
    {
      v80[1] = v80[0];
      operator delete(v80[0]);
    }

    if (v81[0])
    {
      v81[1] = v81[0];
      operator delete(v81[0]);
    }

    if (v82[0])
    {
      v82[1] = v82[0];
      operator delete(v82[0]);
    }

    if (v83[0])
    {
      v83[1] = v83[0];
      operator delete(v83[0]);
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v87)
    {
      v88 = v87;
      operator delete(v87);
    }

    if (v89[0])
    {
      v89[1] = v89[0];
      operator delete(v89[0]);
    }

    if (v90[0])
    {
      v90[1] = v90[0];
      operator delete(v90[0]);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v91.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_119;
    }

    v36 = v92.__r_.__value_.__r.__words[0];
    goto LABEL_118;
  }

LABEL_26:
  *a3 = 4;
  v33 = a3 + 8;
  (*(*a2 + 56))(a2);
  std::operator+<char>();
  v34 = std::string::append(&v65, "' does not handle immediate values");
  v35 = *&v34->__r_.__value_.__l.__data_;
  *(v33 + 16) = *(&v34->__r_.__value_.__l + 2);
  *v33 = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    v36 = v65.__r_.__value_.__r.__words[0];
LABEL_118:
    operator delete(v36);
  }

LABEL_119:
  if ((SHIBYTE(v93.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_122;
  }

  v11 = v93.__r_.__value_.__r.__words[0];
LABEL_121:
  operator delete(v11);
LABEL_122:
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }
}

void sub_2599F5FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, std::__shared_weak_count *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a49);
  }

  ANEMachineIR::Validators::PeElementWiseBinaryParamValues::~PeElementWiseBinaryParamValues(&a55);
  if (a66 < 0)
  {
    operator delete(a65);
  }

  v70 = a67;
  if (a67)
  {
    STACK[0x200] = a67;
    operator delete(v70);
  }

  v71 = STACK[0x210];
  if (STACK[0x210])
  {
    STACK[0x218] = v71;
    operator delete(v71);
  }

  v72 = STACK[0x228];
  if (STACK[0x228])
  {
    STACK[0x230] = v72;
    operator delete(v72);
  }

  v73 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v73;
    operator delete(v73);
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(STACK[0x258]);
  }

  v74 = STACK[0x278];
  if (STACK[0x278])
  {
    STACK[0x280] = v74;
    operator delete(v74);
  }

  v75 = *(v68 - 240);
  if (v75)
  {
    *(v68 - 232) = v75;
    operator delete(v75);
  }

  v76 = *(v68 - 216);
  if (v76)
  {
    *(v68 - 208) = v76;
    operator delete(v76);
  }

  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  if (*(v68 - 169) < 0)
  {
    operator delete(*(v68 - 192));
  }

  if (*(v68 - 145) < 0)
  {
    operator delete(*(v68 - 168));
  }

  if (*(v68 - 121) < 0)
  {
    operator delete(*(v68 - 144));
  }

  if (*(v68 - 89) < 0)
  {
    operator delete(*(v68 - 112));
  }

  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(void *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 3, a3);
  return a1;
}

void sub_2599F62EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[11],0>(void *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 3, a3);
  return a1;
}

void sub_2599F6340(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<std::string,std::string>::unordered_map(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 48 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(a1, a2, a2);
      a2 += 6;
      v5 -= 48;
    }

    while (v5);
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

void sub_2599F6620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
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

void sub_2599F6728(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_2599F69A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t _GLOBAL__sub_I_TranslateElementWiseBinary_cpp()
{
  v5[6] = *MEMORY[0x277D85DE8];
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v3, "add", "pe_add");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v4, "mul", "pe_mul");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[11],0>(v5, "maximum", "pe_maximum");
  for (i = 0; i != -18; i -= 6)
  {
    v1 = &v3[i];
    if (SHIBYTE(v5[i + 5]) < 0)
    {
      operator delete(v1[15]);
    }

    if (*(v1 + 119) < 0)
    {
      operator delete(v1[12]);
    }
  }
}

void sub_2599F6B8C(_Unwind_Exception *a1)
{
  v3 = v1 + 96;
  v4 = -144;
  do
  {
    v3 = std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>::~pair(v3) - 48;
    v4 += 48;
  }

  while (v4);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::Reshape::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2599F76CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60)
{
  v63 = *(v61 - 80);
  *(v61 - 80) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63, a2, a3, a4, a5, a6, a7, a8);
  }

  v64 = *v60;
  *v60 = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v61 - 88), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v61 - 192), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::Transpose::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2599F8864(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 88), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 240), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::Validators::ValidateConst(MIL::IRObject *a1@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v59, "val");
  Attribute = MIL::IRObject::TryGetAttribute();
  v5 = Attribute;
  if ((v60 & 0x80000000) == 0)
  {
    if (Attribute)
    {
      goto LABEL_3;
    }

LABEL_13:
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v16 = LocationPtr[1];
    v57 = *LocationPtr;
    v58 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v55, "Attribute val is undefined for const op");
    MEMORY[0x259CA8EE0](a2, &v57, 315, v55);
    if (v56 < 0)
    {
      operator delete(v55[0]);
    }

    v14 = v58;
    if (v58)
    {
      goto LABEL_45;
    }

    return;
  }

  operator delete(v59);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  v6 = (*(*v5 + 32))(v5);
  if (ANEMachineIR::Utils::IsStaticTensorType(v6, v7))
  {
    OutputType = MIL::IROperation::GetOutputType(a1);
    if (ANEMachineIR::Utils::IsStaticTensorType(OutputType, v9))
    {
      v10 = MIL::IROperation::GetOutputType(a1);
      v11 = MIL::IRValueType::AsTensorType(v10);
      if (*((*(*v11 + 80))(v11) + 24))
      {
        v12 = MIL::IRObject::GetLocationPtr(a1);
        v13 = v12[1];
        v45 = *v12;
        v46 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "Aneflow dialect's const output does not support type attributes.");
        MEMORY[0x259CA8EE0](a2, &v45, 315, __p);
        if (v44 < 0)
        {
          operator delete(__p[0]);
        }

        v14 = v46;
        if (!v46)
        {
          return;
        }

LABEL_45:
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        return;
      }

      v21 = (*(*a1 + 176))(a1);
      if (*(v21 + 8) == *v21)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      Type = MIL::IRNamedValueType::GetType(**v21);
      v23 = MIL::IRValueType::AsTensorType(Type);
      v24 = (*(*v5 + 32))(v5);
      v25 = MIL::IRValueType::AsTensorType(v24);
      v26 = (*(*v23 + 88))(v23);
      if (v26 == (*(*v25 + 88))(v25))
      {
        v27 = (*(*v23 + 96))(v23);
        v28 = (*(*v25 + 96))(v25);
        v29 = *v27;
        v30 = v27[1];
        if (v30 - *v27 == v28[1] - *v28)
        {
          if (v30 == v29)
          {
LABEL_39:
            MIL::ValidationResult::ValidationResult(a2);
            return;
          }

          v31 = v28;
          v32 = 0;
          while (1)
          {
            v33 = MIL::IRDimension::AsConstant(*(v29 + 8 * v32));
            v34 = (*(*v33 + 48))(v33);
            if (v32 >= (v31[1] - *v31) >> 3)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            v35 = v34;
            v36 = MIL::IRDimension::AsConstant(*(*v31 + 8 * v32));
            if (v35 != (*(*v36 + 48))(v36))
            {
              break;
            }

            ++v32;
            v29 = *v27;
            if (v32 >= (v27[1] - *v27) >> 3)
            {
              goto LABEL_39;
            }
          }
        }
      }

      v37 = MIL::IRObject::GetLocationPtr(a1);
      v38 = v37[1];
      v41 = *v37;
      v42 = v38;
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v39, "Attribute val has incompatible type with operation output");
      MEMORY[0x259CA8EE0](a2, &v41, 306, v39);
      if (v40 < 0)
      {
        operator delete(v39[0]);
      }

      v14 = v42;
      if (v42)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v19 = MIL::IRObject::GetLocationPtr(a1);
      v20 = v19[1];
      v49 = *v19;
      v50 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v47, "Output must be tensor with static shape");
      MEMORY[0x259CA8EE0](a2, &v49, 315, v47);
      if (v48 < 0)
      {
        operator delete(v47[0]);
      }

      v14 = v50;
      if (v50)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    v17 = MIL::IRObject::GetLocationPtr(a1);
    v18 = v17[1];
    v53 = *v17;
    v54 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v51, "Attribute val must be tensor with static shape");
    MEMORY[0x259CA8EE0](a2, &v53, 315, v51);
    if (v52 < 0)
    {
      operator delete(v51[0]);
    }

    v14 = v54;
    if (v54)
    {
      goto LABEL_45;
    }
  }
}

void sub_2599F91BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::H2021::Reshape::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2599F9D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60)
{
  v63 = *(v61 - 80);
  *(v61 - 80) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63, a2, a3, a4, a5, a6, a7, a8);
  }

  v64 = *v60;
  *v60 = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v61 - 88), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v61 - 192), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::Transpose::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2599FAF30(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 88), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 240), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::BaseNePool::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_2599FCB3C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 104);
  *(v2 - 104) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2E0], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x308], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::NeAvgPool::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2599FEDB4(_Unwind_Exception *a1)
{
  v4 = *(v2 - 88);
  *(v2 - 88) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x330], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x358], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::NeMaxPool::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2020::Validators::ValidateNeMaxPool;
  v3[3] = v3;
  ANEMachineIR::H2020::BaseNePool::Make();
}

void sub_2599FF714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::NeMinPool::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2020::Validators::ValidateNeMinPool;
  v3[3] = v3;
  ANEMachineIR::H2020::BaseNePool::Make();
}

void sub_2599FF7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::BasePePool::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_259A00DF0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 104);
  *(v2 - 104) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2D0], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2F8], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::PeAvgPool::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_259A02CD8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 88);
  *(v2 - 88) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2F0], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x318], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::PeMaxPool::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2020::Validators::ValidatePeMaxPool;
  v3[3] = v3;
  ANEMachineIR::H2020::BasePePool::Make();
}

void sub_259A03578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::PeMinPool::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2020::Validators::ValidatePeMinPool;
  v3[3] = v3;
  ANEMachineIR::H2020::BasePePool::Make();
}

void sub_259A03658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::BaseNeMatmul::Make(MIL::IRUnknownDimension *a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = 0;
  operator new();
}

void sub_259A03B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int16 a30, char a31, char a32)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a19, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a29, 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::NeBatchMatmul::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_259A05B6C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x3D0], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x450], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::NeMatmul::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_259A07FE0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 200);
  *(v2 - 200) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2F0], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x380], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::Validators::ValidateNeAdd(MIL::IRObject *a1@<X0>, MIL::ValidationResult *a2@<X8>)
{
  v4 = 0;
  v62 = *MEMORY[0x277D85DE8];
  v60[0] = "x";
  v60[1] = "y";
  do
  {
    std::string::basic_string[abi:ne200100]<0>(v58, v60[v4]);
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v6 = LocationPtr[1];
    v56 = *LocationPtr;
    v57 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ParameterType = MIL::IROperation::GetParameterType();
    v8 = MIL::IRValueType::AsTensorType(ParameterType);
    v9 = (*(*a1 + 56))(a1);
    ANEMachineIR::Validators::ValidateLiveTensorSize(&v56, v8, v58, v9, a2);
    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    }

    if (!MIL::ValidationResult::IsGood(a2))
    {
      if (v59 < 0)
      {
        operator delete(v58[0]);
      }

      return;
    }

    MEMORY[0x259CA8F00](a2);
    if (v59 < 0)
    {
      operator delete(v58[0]);
    }

    ++v4;
  }

  while (v4 != 2);
  std::string::basic_string[abi:ne200100]<0>(v58, "x");
  v10 = MIL::IROperation::GetParameterType();
  v11 = MIL::IRValueType::AsTensorType(v10);
  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v58, "y");
  v12 = MIL::IROperation::GetParameterType();
  v13 = MIL::IRValueType::AsTensorType(v12);
  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  v14 = (*(*a1 + 176))(a1);
  if (*(v14 + 8) == *v14)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  Type = MIL::IRNamedValueType::GetType(**v14);
  v16 = MIL::IRValueType::AsTensorType(Type);
  v17 = MIL::IRObject::GetLocationPtr(a1);
  v18 = (*(*a1 + 56))(a1);
  std::string::basic_string[abi:ne200100]<0>(v58, "x");
  std::string::basic_string[abi:ne200100]<0>(v60, "y");
  if (v61 < 0)
  {
    operator delete(v60[0]);
  }

  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  if (MIL::ValidationResult::IsGood(a2))
  {
    MEMORY[0x259CA8F00](a2);
    v55 = 0;
    std::string::basic_string[abi:ne200100]<0>(v58, "post_right_shift");
    MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<signed char>(a1, &v55, &v55 + 1, a2);
    if (v59 < 0)
    {
      operator delete(v58[0]);
    }

    if (MIL::ValidationResult::IsGood(a2))
    {
      v19 = MEMORY[0x259CA8F00](a2);
      if (v55 != 1)
      {
        goto LABEL_30;
      }

      v20 = MIL::IRObject::GetLocationPtr(a1);
      v21 = v20[1];
      *&v53[3] = *v20;
      v54 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      ANEMachineIR::Validators::ValidatePostRightShiftRange(a2);
      if (v54)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v54);
      }

      if (MIL::ValidationResult::IsGood(a2))
      {
        v19 = MEMORY[0x259CA8F00](a2);
LABEL_30:
        LOWORD(v60[0]) = MIL::Fp16::FromFloat(v19, 1.0);
        HIBYTE(v53[2]) = 0;
        std::string::basic_string[abi:ne200100]<0>(v58, "post_scale");
        MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<MIL::Fp16>(a1, &v53[2] + 1, v60, a2);
        if (v59 < 0)
        {
          operator delete(v58[0]);
        }

        if (MIL::ValidationResult::IsGood(a2))
        {
          v22 = MEMORY[0x259CA8F00](a2);
          v53[1] = MIL::Fp16::FromFloat(v22, 0.0);
          HIBYTE(v53[0]) = 0;
          std::string::basic_string[abi:ne200100]<0>(v58, "bias");
          MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<MIL::Fp16>(a1, v53 + 1, &v53[1], a2);
          if (v59 < 0)
          {
            operator delete(v58[0]);
          }

          if (MIL::ValidationResult::IsGood(a2))
          {
            MEMORY[0x259CA8F00](a2);
            LOBYTE(v53[0]) = 0;
            v52 = 0;
            std::string::basic_string[abi:ne200100]<0>(v58, "acc_left_shift");
            MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<signed char>(a1, &v52, v53, a2);
            if (v59 < 0)
            {
              operator delete(v58[0]);
            }

            if (MIL::ValidationResult::IsGood(a2))
            {
              MEMORY[0x259CA8F00](a2);
              v51 = 0;
              v50 = 0;
              std::string::basic_string[abi:ne200100]<0>(v58, "acc_bias_shift");
              MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<signed char>(a1, &v50, &v51, a2);
              if (v59 < 0)
              {
                operator delete(v58[0]);
              }

              if (MIL::ValidationResult::IsGood(a2))
              {
                v23 = MEMORY[0x259CA8F00](a2);
                v49 = MIL::Fp16::FromFloat(v23, 1.0);
                v48 = 0;
                std::string::basic_string[abi:ne200100]<0>(v58, "x_scale");
                MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<MIL::Fp16>(a1, &v48, &v49, a2);
                if (v59 < 0)
                {
                  operator delete(v58[0]);
                }

                if (MIL::ValidationResult::IsGood(a2))
                {
                  v24 = MEMORY[0x259CA8F00](a2);
                  v47 = MIL::Fp16::FromFloat(v24, 1.0);
                  v46 = 0;
                  std::string::basic_string[abi:ne200100]<0>(v58, "y_scale");
                  MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<MIL::Fp16>(a1, &v46, &v47, a2);
                  if (v59 < 0)
                  {
                    operator delete(v58[0]);
                  }

                  if (MIL::ValidationResult::IsGood(a2))
                  {
                    MEMORY[0x259CA8F00](a2);
                    v25 = (*(*v11 + 88))(v11) == 4;
                    v26 = ANEMachineIR::Validators::BinaryPointFormatOffsets(1, v25);
                    if (ANEMachineIR::Validators::NeuralEngineComputedBinaryPointAndShiftLegal(SLOBYTE(v53[0]), SHIBYTE(v55), v26))
                    {
                      if (ANEMachineIR::Validators::NeuralEngineBiasShifterExponentLegal(v53[1], v51, SLOBYTE(v53[0]), SHIBYTE(v26)))
                      {
                        if (ANEMachineIR::Validators::NeuralEngineAccumulatorInitLegal(v53[1], v51, v53[0], v26))
                        {
                          MIL::ValidationResult::ValidationResult(a2);
                          return;
                        }

                        v32 = MIL::IRObject::GetLocationPtr(a1);
                        v33 = v32[1];
                        v36 = *v32;
                        v37 = v33;
                        if (v33)
                        {
                          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
                        }

                        std::string::basic_string[abi:ne200100]<0>(v34, "Initialized bias out of bounds of hardware constraints.");
                        MEMORY[0x259CA8EE0](a2, &v36, 309, v34);
                        if (v35 < 0)
                        {
                          operator delete(v34[0]);
                        }

                        v29 = v37;
                        if (v37)
                        {
                          goto LABEL_72;
                        }

                        return;
                      }

                      v30 = MIL::IRObject::GetLocationPtr(a1);
                      v31 = v30[1];
                      v40 = *v30;
                      v41 = v31;
                      if (v31)
                      {
                        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      std::string::basic_string[abi:ne200100]<0>(v38, "Bias shift exponent outside of hardware capabilities. Computed shift must 32 bit and be <= 11.");
                      MEMORY[0x259CA8EE0](a2, &v40, 309, v38);
                      if (v39 < 0)
                      {
                        operator delete(v38[0]);
                      }

                      v29 = v41;
                      if (!v41)
                      {
                        return;
                      }
                    }

                    else
                    {
                      v27 = MIL::IRObject::GetLocationPtr(a1);
                      v28 = v27[1];
                      v44 = *v27;
                      v45 = v28;
                      if (v28)
                      {
                        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      std::string::basic_string[abi:ne200100]<0>(__p, "Computed binary point plus post-right shift bounded by accumulator dest size. See op definition.");
                      MEMORY[0x259CA8EE0](a2, &v44, 309, __p);
                      if (v43 < 0)
                      {
                        operator delete(__p[0]);
                      }

                      v29 = v45;
                      if (!v45)
                      {
                        return;
                      }
                    }

LABEL_72:
                    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_259A08F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::ValidateCompatibleNeInterleavableShapes(std::string::size_type *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, MIL::ValidationResult *a8@<X8>)
{
  v16 = (*(*a4 + 88))(a4);
  if (v16 == (*(*a6 + 88))(a6))
  {
    if (a4 == a6)
    {
      v46 = (*(*a7 + 96))(a7);
      v47 = (*(*a4 + 96))(a4);
      v48 = *(v46 + 8) - *v46;
      if (v48 == *(v47 + 8) - *v47 && !memcmp(*v46, *v47, v48))
      {
        v59 = (*(*a4 + 96))(a4);
        v60 = (*(*a6 + 96))(a6);
        v61 = v59[1];
        if (v61 == *v59 || (v62 = v60, v63 = ((v60[1] - *v60) >> 3) - 1, v64 = MIL::IRDimension::AsConstant(*(v61 - 8)), v65 = (*(*v64 + 48))(v64), v63 >= (v62[1] - *v62) >> 3))
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v66 = v65;
        v67 = MIL::IRDimension::AsConstant(*(*v62 + 8 * v63));
        if (((*(*v67 + 48))(v67) + v66) <= 0x10000)
        {
          MIL::ValidationResult::ValidationResult(a8);
        }

        else
        {
          v68 = a1[1];
          v102 = *a1;
          v103 = v68;
          if (v68)
          {
            atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::operator+<char>();
          v69 = std::string::append(&v93, " and ");
          v70 = *&v69->__r_.__value_.__l.__data_;
          v94.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
          *&v94.__r_.__value_.__l.__data_ = v70;
          v69->__r_.__value_.__l.__size_ = 0;
          v69->__r_.__value_.__r.__words[2] = 0;
          v69->__r_.__value_.__r.__words[0] = 0;
          v71 = *(a5 + 23);
          if (v71 >= 0)
          {
            v72 = a5;
          }

          else
          {
            v72 = *a5;
          }

          if (v71 >= 0)
          {
            v73 = *(a5 + 23);
          }

          else
          {
            v73 = *(a5 + 8);
          }

          v74 = std::string::append(&v94, v72, v73);
          v75 = *&v74->__r_.__value_.__l.__data_;
          v95.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
          *&v95.__r_.__value_.__l.__data_ = v75;
          v74->__r_.__value_.__l.__size_ = 0;
          v74->__r_.__value_.__r.__words[2] = 0;
          v74->__r_.__value_.__r.__words[0] = 0;
          v76 = std::string::append(&v95, " must be less than ");
          v77 = *&v76->__r_.__value_.__l.__data_;
          v96.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
          *&v96.__r_.__value_.__l.__data_ = v77;
          v76->__r_.__value_.__l.__size_ = 0;
          v76->__r_.__value_.__r.__words[2] = 0;
          v76->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&__p, 0x10000uLL);
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

          v80 = std::string::append(&v96, p_p, size);
          v81 = *&v80->__r_.__value_.__l.__data_;
          v97.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
          *&v97.__r_.__value_.__l.__data_ = v81;
          v80->__r_.__value_.__l.__size_ = 0;
          v80->__r_.__value_.__r.__words[2] = 0;
          v80->__r_.__value_.__r.__words[0] = 0;
          v82 = std::string::append(&v97, " in operation ");
          v83 = *&v82->__r_.__value_.__l.__data_;
          v98.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
          *&v98.__r_.__value_.__l.__data_ = v83;
          v82->__r_.__value_.__l.__size_ = 0;
          v82->__r_.__value_.__r.__words[2] = 0;
          v82->__r_.__value_.__r.__words[0] = 0;
          v84 = *(a2 + 23);
          if (v84 >= 0)
          {
            v85 = a2;
          }

          else
          {
            v85 = *a2;
          }

          if (v84 >= 0)
          {
            v86 = *(a2 + 23);
          }

          else
          {
            v86 = *(a2 + 8);
          }

          v87 = std::string::append(&v98, v85, v86);
          v88 = *&v87->__r_.__value_.__l.__data_;
          v99.__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
          *&v99.__r_.__value_.__l.__data_ = v88;
          v87->__r_.__value_.__l.__size_ = 0;
          v87->__r_.__value_.__r.__words[2] = 0;
          v87->__r_.__value_.__r.__words[0] = 0;
          v89 = std::string::append(&v99, ".");
          v90 = *&v89->__r_.__value_.__l.__data_;
          v101 = v89->__r_.__value_.__r.__words[2];
          v100 = v90;
          v89->__r_.__value_.__l.__size_ = 0;
          v89->__r_.__value_.__r.__words[2] = 0;
          v89->__r_.__value_.__r.__words[0] = 0;
          MEMORY[0x259CA8EE0](a8, &v102, 309, &v100);
          if (SHIBYTE(v101) < 0)
          {
            operator delete(v100);
          }

          if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v99.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v98.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v97.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v95.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v94.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v93.__r_.__value_.__l.__data_);
          }

          if (v103)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v103);
          }
        }

        if (MIL::ValidationResult::IsGood(a8))
        {
          v91 = MEMORY[0x259CA8F00](a8);
          MIL::ValidationResult::ValidationResult(v91);
        }
      }

      else
      {
        v49 = a1[1];
        v96.__r_.__value_.__r.__words[0] = *a1;
        v96.__r_.__value_.__l.__size_ = v49;
        if (v49)
        {
          atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
        }

        std::operator+<char>();
        v50 = std::string::append(&v97, " operation requires identical shape for ");
        v51 = *&v50->__r_.__value_.__l.__data_;
        v98.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
        *&v98.__r_.__value_.__l.__data_ = v51;
        v50->__r_.__value_.__l.__size_ = 0;
        v50->__r_.__value_.__r.__words[2] = 0;
        v50->__r_.__value_.__r.__words[0] = 0;
        v52 = *(a3 + 23);
        if (v52 >= 0)
        {
          v53 = a3;
        }

        else
        {
          v53 = *a3;
        }

        if (v52 >= 0)
        {
          v54 = *(a3 + 23);
        }

        else
        {
          v54 = *(a3 + 8);
        }

        v55 = std::string::append(&v98, v53, v54);
        v56 = *&v55->__r_.__value_.__l.__data_;
        v99.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
        *&v99.__r_.__value_.__l.__data_ = v56;
        v55->__r_.__value_.__l.__size_ = 0;
        v55->__r_.__value_.__r.__words[2] = 0;
        v55->__r_.__value_.__r.__words[0] = 0;
        v57 = std::string::append(&v99, " and output.");
        v58 = *&v57->__r_.__value_.__l.__data_;
        v101 = v57->__r_.__value_.__r.__words[2];
        v100 = v58;
        v57->__r_.__value_.__l.__size_ = 0;
        v57->__r_.__value_.__r.__words[2] = 0;
        v57->__r_.__value_.__r.__words[0] = 0;
        MEMORY[0x259CA8EE0](a8, &v96, 313, &v100);
        if (SHIBYTE(v101) < 0)
        {
          operator delete(v100);
        }

        if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v99.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v98.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        v45 = v96.__r_.__value_.__l.__size_;
        if (v96.__r_.__value_.__l.__size_)
        {
          goto LABEL_44;
        }
      }

      return;
    }

    v17 = a1[1];
    v94.__r_.__value_.__r.__words[0] = *a1;
    v94.__r_.__value_.__l.__size_ = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    v18 = std::string::append(&v95, " operation requires identical shapes for ");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v96.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v96.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = *(a3 + 23);
    if (v20 >= 0)
    {
      v21 = a3;
    }

    else
    {
      v21 = *a3;
    }

    if (v20 >= 0)
    {
      v22 = *(a3 + 23);
    }

    else
    {
      v22 = *(a3 + 8);
    }

    v23 = std::string::append(&v96, v21, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v97.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v97.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(&v97, " and ");
    v26 = *&v25->__r_.__value_.__l.__data_;
    v98.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v98.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = *(a5 + 23);
    if (v27 >= 0)
    {
      v28 = a5;
    }

    else
    {
      v28 = *a5;
    }

    if (v27 >= 0)
    {
      v29 = *(a5 + 23);
    }

    else
    {
      v29 = *(a5 + 8);
    }
  }

  else
  {
    v30 = a1[1];
    v94.__r_.__value_.__r.__words[0] = *a1;
    v94.__r_.__value_.__l.__size_ = v30;
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    v31 = std::string::append(&v95, " operation requires identical data types for ");
    v32 = *&v31->__r_.__value_.__l.__data_;
    v96.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
    *&v96.__r_.__value_.__l.__data_ = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    v33 = *(a3 + 23);
    if (v33 >= 0)
    {
      v34 = a3;
    }

    else
    {
      v34 = *a3;
    }

    if (v33 >= 0)
    {
      v35 = *(a3 + 23);
    }

    else
    {
      v35 = *(a3 + 8);
    }

    v36 = std::string::append(&v96, v34, v35);
    v37 = *&v36->__r_.__value_.__l.__data_;
    v97.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v97.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&v97, " and ");
    v39 = *&v38->__r_.__value_.__l.__data_;
    v98.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
    *&v98.__r_.__value_.__l.__data_ = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    v40 = *(a5 + 23);
    if (v40 >= 0)
    {
      v28 = a5;
    }

    else
    {
      v28 = *a5;
    }

    if (v40 >= 0)
    {
      v29 = *(a5 + 23);
    }

    else
    {
      v29 = *(a5 + 8);
    }
  }

  v41 = std::string::append(&v98, v28, v29);
  v42 = *&v41->__r_.__value_.__l.__data_;
  v99.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
  *&v99.__r_.__value_.__l.__data_ = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  v43 = std::string::append(&v99, ".");
  v44 = *&v43->__r_.__value_.__l.__data_;
  v101 = v43->__r_.__value_.__r.__words[2];
  v100 = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x259CA8EE0](a8, &v94, 304, &v100);
  if (SHIBYTE(v101) < 0)
  {
    operator delete(v100);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  v45 = v94.__r_.__value_.__l.__size_;
  if (v94.__r_.__value_.__l.__size_)
  {
LABEL_44:
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }
}

void sub_259A09934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 105) < 0)
  {
    operator delete(*(v54 - 128));
  }

  if (*(v54 - 137) < 0)
  {
    operator delete(*(v54 - 160));
  }

  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  v56 = *(v54 - 88);
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::ValidateNeMaximum(MIL::IRObject *a1@<X0>, MIL::ValidationResult *a2@<X8>)
{
  v4 = 0;
  v38 = *MEMORY[0x277D85DE8];
  v36[0] = "x";
  v36[1] = "y";
  do
  {
    std::string::basic_string[abi:ne200100]<0>(__p, v36[v4]);
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v6 = LocationPtr[1];
    *&v32[1] = *LocationPtr;
    v33 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ParameterType = MIL::IROperation::GetParameterType();
    v8 = MIL::IRValueType::AsTensorType(ParameterType);
    v9 = (*(*a1 + 56))(a1);
    ANEMachineIR::Validators::ValidateLiveTensorSize(&v32[1], v8, __p, v9, a2);
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    if (!MIL::ValidationResult::IsGood(a2))
    {
      if (v35 < 0)
      {
        operator delete(__p[0]);
      }

      return;
    }

    MEMORY[0x259CA8F00](a2);
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }

    ++v4;
  }

  while (v4 != 2);
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  v10 = MIL::IROperation::GetParameterType();
  v11 = MIL::IRValueType::AsTensorType(v10);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "y");
  v12 = MIL::IROperation::GetParameterType();
  v13 = MIL::IRValueType::AsTensorType(v12);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = (*(*a1 + 176))(a1);
  if (*(v14 + 8) == *v14)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  Type = MIL::IRNamedValueType::GetType(**v14);
  v16 = MIL::IRValueType::AsTensorType(Type);
  v17 = MIL::IRObject::GetLocationPtr(a1);
  v18 = (*(*a1 + 56))(a1);
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  std::string::basic_string[abi:ne200100]<0>(v36, "y");
  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (MIL::ValidationResult::IsGood(a2))
  {
    MEMORY[0x259CA8F00](a2);
    v32[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(__p, "post_right_shift");
    MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<signed char>(a1, v32, v32 + 1, a2);
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }

    if (MIL::ValidationResult::IsGood(a2))
    {
      MEMORY[0x259CA8F00](a2);
      if (LOBYTE(v32[0]) != 1)
      {
LABEL_30:
        LOWORD(v36[0]) = 0;
        v29 = 0;
        std::string::basic_string[abi:ne200100]<0>(__p, "post_scale");
        MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<MIL::Fp16>(a1, &v29, v36, a2);
        if (v35 < 0)
        {
          operator delete(__p[0]);
        }

        if (MIL::ValidationResult::IsGood(a2))
        {
          MEMORY[0x259CA8F00](a2);
          v21 = (*(*v11 + 88))(v11) == 4;
          v22 = ANEMachineIR::Validators::BinaryPointFormatOffsets(1, v21);
          if (ANEMachineIR::Validators::NeuralEngineComputedBinaryPointAndShiftLegal(0, SHIBYTE(v32[0]), v22))
          {
            MIL::ValidationResult::ValidationResult(a2);
          }

          else
          {
            v23 = MIL::IRObject::GetLocationPtr(a1);
            v24 = v23[1];
            v27 = *v23;
            v28 = v24;
            if (v24)
            {
              atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(v25, "Computed binary point plus post-right shift bounded by accumulator dest size. See op definition.");
            MEMORY[0x259CA8EE0](a2, &v27, 309, v25);
            if (v26 < 0)
            {
              operator delete(v25[0]);
            }

            if (v28)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v28);
            }
          }
        }

        return;
      }

      v19 = MIL::IRObject::GetLocationPtr(a1);
      v20 = v19[1];
      v30 = *v19;
      v31 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      ANEMachineIR::Validators::ValidatePostRightShiftRange(a2);
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      if (MIL::ValidationResult::IsGood(a2))
      {
        MEMORY[0x259CA8F00](a2);
        goto LABEL_30;
      }
    }
  }
}

void sub_259A09FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ANEMachineIR::Validators::ParsePeElementWiseUnaryParamValues@<X0>(ANEMachineIR::Validators *this@<X0>, const MIL::IROperation *a2@<X1>, MIL::ValidationResult *a3@<X8>)
{
  v12 = 0;
  v11 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "post_scale");
  MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<MIL::Fp16>(this, &v11, &v12, a3);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  result = MIL::ValidationResult::IsGood(a3);
  if (result)
  {
    v7 = MEMORY[0x259CA8F00](a3);
    if (v11 == 1)
    {
      v8 = v12;
    }

    else
    {
      v8 = MIL::Fp16::FromFloat(v7, 1.0);
    }

    if ((*(a2 + 2) & 1) == 0)
    {
      *(a2 + 2) = 1;
    }

    *a2 = v8;
    return MIL::ValidationResult::ValidationResult(a3);
  }

  return result;
}

uint64_t *ANEMachineIR::Validators::ParsePeElementWiseBinaryParamValues@<X0>(MIL::ValidationResult *__return_ptr a1@<X8>, ANEMachineIR::Validators *this@<X0>, const MIL::IROperation *a3@<X1>)
{
  v20 = 0;
  v19 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "post_scale");
  MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<MIL::Fp16>(this, &v19, &v20, a1);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  result = MIL::ValidationResult::IsGood(a1);
  if (result)
  {
    v7 = MEMORY[0x259CA8F00](a1);
    if (v19 == 1)
    {
      v8 = v20;
    }

    else
    {
      v8 = MIL::Fp16::FromFloat(v7, 1.0);
    }

    if ((*(a3 + 18) & 1) == 0)
    {
      *(a3 + 18) = 1;
    }

    *(a3 + 8) = v8;
    v16 = 0.0;
    v15 = 0;
    std::string::basic_string[abi:ne200100]<0>(__p, "x_scale");
    MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<float>(this, &v15, &v16, a1);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    result = MIL::ValidationResult::IsGood(a1);
    if (result)
    {
      MEMORY[0x259CA8F00](a1);
      v9 = v15;
      v10 = v16;
      if ((*(a3 + 4) & 1) == 0)
      {
        *(a3 + 4) = 1;
      }

      if (!v9)
      {
        v10 = 1.0;
      }

      *a3 = v10;
      v14 = 0.0;
      v13 = 0;
      std::string::basic_string[abi:ne200100]<0>(__p, "y_scale");
      MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<float>(this, &v13, &v14, a1);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      result = MIL::ValidationResult::IsGood(a1);
      if (result)
      {
        MEMORY[0x259CA8F00](a1);
        v11 = v13;
        v12 = v14;
        if ((*(a3 + 12) & 1) == 0)
        {
          *(a3 + 12) = 1;
        }

        if (!v11)
        {
          v12 = 1.0;
        }

        *(a3 + 2) = v12;
        return MIL::ValidationResult::ValidationResult(a1);
      }
    }
  }

  return result;
}

uint64_t ANEMachineIR::Validators::ValidatePeElementWiseUnary@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, MIL::ValidationResult *a5@<X8>)
{
  v10 = a1[1];
  v18 = *a1;
  v19 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ANEMachineIR::Validators::ValidateLiveTensorSize(&v18, a3, __p, a2, a5);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  result = MIL::ValidationResult::IsGood(a5);
  if (result)
  {
    MEMORY[0x259CA8F00](a5);
    v12 = a1[1];
    v14 = *a1;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "output");
    ANEMachineIR::Validators::ValidateLiveTensorSize(&v14, a4, __p, a2, a5);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    result = MIL::ValidationResult::IsGood(a5);
    if (result)
    {
      v13 = MEMORY[0x259CA8F00](a5);
      return MIL::ValidationResult::ValidationResult(v13);
    }
  }

  return result;
}

uint64_t ANEMachineIR::Validators::ValidatePeElementWiseBinary@<X0>(std::string::size_type *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, MIL::ValidationResult *a6@<X8>)
{
  v12 = a1[1];
  v62 = *a1;
  v63 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  ANEMachineIR::Validators::ValidateLiveTensorSize(&v62, a3, &__p, a2, a6);
  if (SHIBYTE(v69) < 0)
  {
    operator delete(__p);
  }

  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  result = MIL::ValidationResult::IsGood(a6);
  if (result)
  {
    MEMORY[0x259CA8F00](a6);
    v14 = a1[1];
    v60 = *a1;
    v61 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "y");
    ANEMachineIR::Validators::ValidateLiveTensorSize(&v60, a4, &__p, a2, a6);
    if (SHIBYTE(v69) < 0)
    {
      operator delete(__p);
    }

    if (v61)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v61);
    }

    result = MIL::ValidationResult::IsGood(a6);
    if (result)
    {
      MEMORY[0x259CA8F00](a6);
      v15 = a1[1];
      v58 = *a1;
      v59 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "output");
      ANEMachineIR::Validators::ValidateLiveTensorSize(&v58, a5, &__p, a2, a6);
      if (SHIBYTE(v69) < 0)
      {
        operator delete(__p);
      }

      if (v59)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v59);
      }

      result = MIL::ValidationResult::IsGood(a6);
      if (result)
      {
        MEMORY[0x259CA8F00](a6);
        std::string::basic_string[abi:ne200100]<0>(&v55, "x");
        std::string::basic_string[abi:ne200100]<0>(&v52, "y");
        v16 = (*(*a3 + 88))(a3);
        if (v16 == (*(*a4 + 88))(a4))
        {
          memset(&v72, 0, sizeof(v72));
          memset(&v71, 0, sizeof(v71));
          if ((ANEMachineIR::Utils::TryGetStaticTensorShape(a3, &v72.__r_.__value_.__l.__data_) & 1) != 0 && ANEMachineIR::Utils::TryGetStaticTensorShape(a4, &v71.__r_.__value_.__l.__data_))
          {
            memset(&v70, 0, sizeof(v70));
            v17 = a1[1];
            v64.__r_.__value_.__r.__words[0] = *a1;
            v64.__r_.__value_.__l.__size_ = v17;
            if (v17)
            {
              atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
            }

            ANEMachineIR::Utils::BroadcastShapes(&v64, &v72, &v71, &v70, &__p);
            if (v64.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v64.__r_.__value_.__l.__size_);
            }

            if (MIL::ValidationResult::IsGood(&__p))
            {
              memset(&__s1, 0, sizeof(__s1));
              StaticTensorShape = ANEMachineIR::Utils::TryGetStaticTensorShape(a5, &__s1.__r_.__value_.__l.__data_);
              v19 = __s1.__r_.__value_.__r.__words[0];
              v20 = (StaticTensorShape & 1) != 0 && __s1.__r_.__value_.__l.__size_ - __s1.__r_.__value_.__r.__words[0] == v70.__r_.__value_.__l.__size_ - v70.__r_.__value_.__r.__words[0] && memcmp(__s1.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__data_, __s1.__r_.__value_.__l.__size_ - __s1.__r_.__value_.__r.__words[0]) == 0;
              if (v19)
              {
                __s1.__r_.__value_.__l.__size_ = v19;
                operator delete(v19);
              }
            }

            else
            {
              v20 = 0;
            }

            MEMORY[0x259CA8F00](&__p);
            if (v70.__r_.__value_.__r.__words[0])
            {
              v70.__r_.__value_.__l.__size_ = v70.__r_.__value_.__r.__words[0];
              operator delete(v70.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v20 = 0;
          }

          if (v71.__r_.__value_.__r.__words[0])
          {
            v71.__r_.__value_.__l.__size_ = v71.__r_.__value_.__r.__words[0];
            operator delete(v71.__r_.__value_.__l.__data_);
          }

          if (v72.__r_.__value_.__r.__words[0])
          {
            v72.__r_.__value_.__l.__size_ = v72.__r_.__value_.__r.__words[0];
            operator delete(v72.__r_.__value_.__l.__data_);
          }

          if (v20)
          {
            MIL::ValidationResult::ValidationResult(a6);
LABEL_84:
            if (v54 < 0)
            {
              operator delete(v52);
            }

            if (v57 < 0)
            {
              operator delete(v55);
            }

            result = MIL::ValidationResult::IsGood(a6);
            if (result)
            {
              v51 = MEMORY[0x259CA8F00](a6);
              return MIL::ValidationResult::ValidationResult(v51);
            }

            return result;
          }

          v36 = a1[1];
          v65 = *a1;
          v66 = v36;
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::operator+<char>();
          v37 = std::string::append(&v64, " operation requires broadcastable shape for ");
          v38 = *&v37->__r_.__value_.__l.__data_;
          __s1.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
          *&__s1.__r_.__value_.__l.__data_ = v38;
          v37->__r_.__value_.__l.__size_ = 0;
          v37->__r_.__value_.__r.__words[2] = 0;
          v37->__r_.__value_.__r.__words[0] = 0;
          if ((v57 & 0x80u) == 0)
          {
            v39 = &v55;
          }

          else
          {
            v39 = v55;
          }

          if ((v57 & 0x80u) == 0)
          {
            v40 = v57;
          }

          else
          {
            v40 = v56;
          }

          v41 = std::string::append(&__s1, v39, v40);
          v42 = *&v41->__r_.__value_.__l.__data_;
          v70.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
          *&v70.__r_.__value_.__l.__data_ = v42;
          v41->__r_.__value_.__l.__size_ = 0;
          v41->__r_.__value_.__r.__words[2] = 0;
          v41->__r_.__value_.__r.__words[0] = 0;
          v43 = std::string::append(&v70, ", ");
          v44 = *&v43->__r_.__value_.__l.__data_;
          v71.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
          *&v71.__r_.__value_.__l.__data_ = v44;
          v43->__r_.__value_.__l.__size_ = 0;
          v43->__r_.__value_.__r.__words[2] = 0;
          v43->__r_.__value_.__r.__words[0] = 0;
          if ((v54 & 0x80u) == 0)
          {
            v45 = &v52;
          }

          else
          {
            v45 = v52;
          }

          if ((v54 & 0x80u) == 0)
          {
            v46 = v54;
          }

          else
          {
            v46 = v53;
          }

          v47 = std::string::append(&v71, v45, v46);
          v48 = *&v47->__r_.__value_.__l.__data_;
          v72.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
          *&v72.__r_.__value_.__l.__data_ = v48;
          v47->__r_.__value_.__l.__size_ = 0;
          v47->__r_.__value_.__r.__words[2] = 0;
          v47->__r_.__value_.__r.__words[0] = 0;
          v49 = std::string::append(&v72, ", and output.");
          v50 = *&v49->__r_.__value_.__l.__data_;
          v69 = v49->__r_.__value_.__r.__words[2];
          __p = v50;
          v49->__r_.__value_.__l.__size_ = 0;
          v49->__r_.__value_.__r.__words[2] = 0;
          v49->__r_.__value_.__r.__words[0] = 0;
          MEMORY[0x259CA8EE0](a6, &v65, 313, &__p);
        }

        else
        {
          v21 = a1[1];
          v65 = *a1;
          v66 = v21;
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::operator+<char>();
          v22 = std::string::append(&v64, " operation requires identical data types for ");
          v23 = *&v22->__r_.__value_.__l.__data_;
          __s1.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
          *&__s1.__r_.__value_.__l.__data_ = v23;
          v22->__r_.__value_.__l.__size_ = 0;
          v22->__r_.__value_.__r.__words[2] = 0;
          v22->__r_.__value_.__r.__words[0] = 0;
          if ((v57 & 0x80u) == 0)
          {
            v24 = &v55;
          }

          else
          {
            v24 = v55;
          }

          if ((v57 & 0x80u) == 0)
          {
            v25 = v57;
          }

          else
          {
            v25 = v56;
          }

          v26 = std::string::append(&__s1, v24, v25);
          v27 = *&v26->__r_.__value_.__l.__data_;
          v70.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
          *&v70.__r_.__value_.__l.__data_ = v27;
          v26->__r_.__value_.__l.__size_ = 0;
          v26->__r_.__value_.__r.__words[2] = 0;
          v26->__r_.__value_.__r.__words[0] = 0;
          v28 = std::string::append(&v70, " and ");
          v29 = *&v28->__r_.__value_.__l.__data_;
          v71.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
          *&v71.__r_.__value_.__l.__data_ = v29;
          v28->__r_.__value_.__l.__size_ = 0;
          v28->__r_.__value_.__r.__words[2] = 0;
          v28->__r_.__value_.__r.__words[0] = 0;
          if ((v54 & 0x80u) == 0)
          {
            v30 = &v52;
          }

          else
          {
            v30 = v52;
          }

          if ((v54 & 0x80u) == 0)
          {
            v31 = v54;
          }

          else
          {
            v31 = v53;
          }

          v32 = std::string::append(&v71, v30, v31);
          v33 = *&v32->__r_.__value_.__l.__data_;
          v72.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
          *&v72.__r_.__value_.__l.__data_ = v33;
          v32->__r_.__value_.__l.__size_ = 0;
          v32->__r_.__value_.__r.__words[2] = 0;
          v32->__r_.__value_.__r.__words[0] = 0;
          v34 = std::string::append(&v72, ".");
          v35 = *&v34->__r_.__value_.__l.__data_;
          v69 = v34->__r_.__value_.__r.__words[2];
          __p = v35;
          v34->__r_.__value_.__l.__size_ = 0;
          v34->__r_.__value_.__r.__words[2] = 0;
          v34->__r_.__value_.__r.__words[0] = 0;
          MEMORY[0x259CA8EE0](a6, &v65, 304, &__p);
        }

        if (SHIBYTE(v69) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v72.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v71.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v70.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s1.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__r_.__value_.__l.__data_);
        }

        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        goto LABEL_84;
      }
    }
  }

  return result;
}

void sub_259A0AB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x259CA8F00](&a43, a2, a3, a4, a5, a6, a7, a8);
  v50 = *(v48 - 176);
  if (v50)
  {
    *(v48 - 168) = v50;
    operator delete(v50);
  }

  v51 = *(v48 - 144);
  if (v51)
  {
    *(v48 - 136) = v51;
    operator delete(v51);
  }

  v52 = *(v48 - 112);
  if (v52)
  {
    *(v48 - 104) = v52;
    operator delete(v52);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::Validators::ValidatePeElementWiseUnary(ANEMachineIR::Validators *a1@<X0>, MIL::ValidationResult *a2@<X8>)
{
  v13[0] = 0;
  v13[2] = 0;
  LOBYTE(v14) = 0;
  v16 = 0;
  LOBYTE(v17) = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  LOBYTE(v23) = 0;
  v25 = 0;
  ANEMachineIR::Validators::ParsePeElementWiseUnaryParamValues(a1, v13, a2);
  if (MIL::ValidationResult::IsGood(a2))
  {
    MEMORY[0x259CA8F00](a2);
    std::string::basic_string[abi:ne200100]<0>(&__p, "x");
    ParameterType = MIL::IROperation::GetParameterType();
    v5 = MIL::IRValueType::AsTensorType(ParameterType);
    if (v12 < 0)
    {
      operator delete(__p);
    }

    v6 = (*(*a1 + 176))(a1);
    if (*(v6 + 8) == *v6)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    Type = MIL::IRNamedValueType::GetType(**v6);
    v8 = MIL::IRValueType::AsTensorType(Type);
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v10 = (*(*a1 + 56))(a1);
    ANEMachineIR::Validators::ValidatePeElementWiseUnary(LocationPtr, v10, v5, v8, a2);
  }

  if (v25 == 1 && v24 < 0)
  {
    operator delete(v23);
  }

  if (v18 == 1 && v17)
  {
    operator delete(v17);
  }

  if (v16 == 1 && v15 < 0)
  {
    operator delete(v14);
  }
}

void ANEMachineIR::Validators::ValidatePeElementWiseBinary(ANEMachineIR::Validators *a1@<X0>, MIL::ValidationResult *a2@<X8>)
{
  v15[0] = 0;
  v15[4] = 0;
  v15[8] = 0;
  v15[12] = 0;
  v15[16] = 0;
  v15[18] = 0;
  LOBYTE(v16) = 0;
  v18 = 0;
  LOBYTE(v19) = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  LOBYTE(v25) = 0;
  v27 = 0;
  ANEMachineIR::Validators::ParsePeElementWiseBinaryParamValues(a2, a1, v15);
  if (MIL::ValidationResult::IsGood(a2))
  {
    MEMORY[0x259CA8F00](a2);
    std::string::basic_string[abi:ne200100]<0>(__p, "x");
    ParameterType = MIL::IROperation::GetParameterType();
    v5 = MIL::IRValueType::AsTensorType(ParameterType);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "y");
    v6 = MIL::IROperation::GetParameterType();
    v7 = MIL::IRValueType::AsTensorType(v6);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = (*(*a1 + 176))(a1);
    if (*(v8 + 8) == *v8)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    Type = MIL::IRNamedValueType::GetType(**v8);
    v10 = MIL::IRValueType::AsTensorType(Type);
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v12 = (*(*a1 + 56))(a1);
    ANEMachineIR::Validators::ValidatePeElementWiseBinary(LocationPtr, v12, v5, v7, v10, a2);
  }

  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25);
  }

  if (v20 == 1 && v19)
  {
    operator delete(v19);
  }

  if (v18 == 1 && v17 < 0)
  {
    operator delete(v16);
  }
}

void ANEMachineIR::Validators::PeElementWiseUnaryParamValues::~PeElementWiseUnaryParamValues(void **this)
{
  if (*(this + 112) == 1 && *(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 64) == 1)
  {
    v2 = this[5];
    if (v2)
    {
      this[6] = v2;
      operator delete(v2);
    }
  }

  if (*(this + 32) == 1 && *(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void MilTranslator::Passes::FuseConvActivation::Match(MIL::Builder::BlockBuilder **a1@<X1>, uint64_t *a2@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  MIL::Builder::BlockBuilder::GetOperations(&v34, *a1);
  v3 = v34;
  v4 = v35;
  if (v34 == v35)
  {
LABEL_12:
    v39 = &v34;
    std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&v39);
    v9 = 0;
LABEL_13:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    if (!v9)
    {
      return;
    }

    goto LABEL_14;
  }

  while (1)
  {
    Operator = MIL::Builder::OperationBuilder::GetOperator(*v3);
    v6 = (*(*Operator + 16))(Operator);
    v7 = *(v6 + 23);
    if (v7 < 0)
    {
      break;
    }

    if (v7 == 7)
    {
      goto LABEL_7;
    }

LABEL_11:
    v3 += 16;
    if (v3 == v4)
    {
      goto LABEL_12;
    }
  }

  if (*(v6 + 8) != 7)
  {
    goto LABEL_11;
  }

  v6 = *v6;
LABEL_7:
  if (*v6 != 1667196270 || *(v6 + 3) != 1986948963)
  {
    goto LABEL_11;
  }

  v10 = *v3;
  v9 = *(v3 + 1);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v39 = &v34;
  std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&v39);
  if (!v10)
  {
    goto LABEL_13;
  }

  MIL::Builder::OperationBuilder::GetChildOperations(&v34, v10);
  if (v37 != 1 || (MIL::Builder::OperationBuilder::GetBlocks(&v39, v10), v11 = v39, v12 = &v40->__vftable, v38 = &v39, std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&v38), v11 != v12))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_22;
  }

  v14 = *(v36 + 16);
  v13 = *(v36 + 24);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = MIL::Builder::OperationBuilder::GetOperator(v14);
  v16 = (*(*v15 + 16))(v15);
  v17 = *(v16 + 23);
  if (v17 < 0)
  {
    if (*(v16 + 8) != 13)
    {
      goto LABEL_53;
    }

    v16 = *v16;
  }

  else if (v17 != 13)
  {
    goto LABEL_53;
  }

  v18 = *v16 == 0x76697463615F656ELL && *(v16 + 5) == 0x6E6F697461766974;
  if (v18 && (MIL::Builder::OperationBuilder::GetBlocks(&v39, v14), v19 = v40 - v39, v38 = &v39, std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&v38), v19 == 16))
  {
    MIL::Builder::OperationBuilder::GetBlocks(&v39, v14);
    v21 = *v39;
    v20 = v39[1];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v38 = &v39;
    std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&v38);
    MIL::Builder::BlockBuilder::GetOperations(&v39, v21);
    v22 = v40 - v39;
    v38 = &v39;
    std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&v38);
    if (v22 == 16 && (Output = MIL::Builder::OperationBuilder::GetOutput(v10), Type = MIL::Builder::Variable::TryGetType(Output), v25 = MIL::Builder::OperationBuilder::GetOutput(v14), v26 = MIL::Builder::Variable::TryGetType(v25), Type) && (v27 = v26) != 0 && (v28 = MIL::IRValueType::AsTensorType(Type), v29 = (*(*v28 + 88))(v28), v30 = MIL::IRValueType::AsTensorType(v27), v29 == (*(*v30 + 88))(v30)) && (v31 = MIL::IRValueType::AsTensorType(v27), (*(*v31 + 88))(v31) == 4))
    {
      v39 = v10;
      v40 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v41 = v14;
      v42 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::Builder::OperationBuilder> const*,std::shared_ptr<MIL::Builder::OperationBuilder> const*>(a2, &v39, &v43, 2uLL);
      for (i = 3; i != -1; i -= 2)
      {
        v33 = (&v39)[i];
        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }
  }

  else
  {
LABEL_53:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

LABEL_22:
  std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(&v34);
  if (v9)
  {
LABEL_14:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_259A0B670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v8 = 24;
  while (1)
  {
    v9 = *(v5 + v8);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    v8 -= 16;
    if (v8 == -8)
    {
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(va);
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      _Unwind_Resume(a1);
    }
  }
}

void MilTranslator::Passes::FuseConvActivation::Replace(MIL::Builder::BlockBuilder **a2@<X1>, char **a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  if (a3[1] - *a3 == 32)
  {
    v9 = *v5;
    v8 = *(v5 + 1);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = *a3;
      if ((a3[1] - *a3) <= 0x10)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }
    }

    v11 = *(v5 + 2);
    v10 = *(v5 + 3);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(&v152, "ne_conv");
    v148 = v11;
    v149 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::Builder::BlockBuilder::AddOperation();
    if (v149)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v149);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v145, "x");
    std::string::basic_string[abi:ne200100]<0>(&v152, "x");
    ArgumentForParameter = MIL::Builder::OperationBuilder::GetArgumentForParameter();
    Name = MIL::Builder::Variable::GetName(ArgumentForParameter);
    if (*(Name + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v144, *Name, *(Name + 8));
    }

    else
    {
      v14 = *Name;
      v144.__r_.__value_.__r.__words[2] = *(Name + 16);
      *&v144.__r_.__value_.__l.__data_ = v14;
    }

    MIL::Builder::OperationBuilder::AddInput();
    if (v147)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v147);
    }

    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    if (v146 < 0)
    {
      operator delete(v145);
    }

    v17 = std::string::basic_string[abi:ne200100]<0>(&v152, "dense_kernel");
    v142 = v9;
    v143 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v140 = v150;
    v141 = v151;
    if (v151)
    {
      atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v17, &v142, &v140);
    if (v141)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v141);
    }

    if (v143)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v143);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    v18 = std::string::basic_string[abi:ne200100]<0>(&v152, "strides");
    v138 = v9;
    v139 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v136 = v150;
    v137 = v151;
    if (v151)
    {
      atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v18, &v138, &v136);
    if (v137)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v137);
    }

    if (v139)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v139);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    v19 = std::string::basic_string[abi:ne200100]<0>(&v152, "pad_mode");
    v134 = v9;
    v135 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v132 = v150;
    v133 = v151;
    if (v151)
    {
      atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v19, &v134, &v132);
    if (v133)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v133);
    }

    if (v135)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v135);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    v20 = std::string::basic_string[abi:ne200100]<0>(&v152, "pad");
    v130 = v9;
    v131 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v128 = v150;
    v129 = v151;
    if (v151)
    {
      atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v20, &v130, &v128);
    if (v129)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v129);
    }

    if (v131)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v131);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    v21 = std::string::basic_string[abi:ne200100]<0>(&v152, "dilations");
    v126 = v9;
    v127 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v124 = v150;
    v125 = v151;
    if (v151)
    {
      atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v21, &v126, &v124);
    if (v125)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v125);
    }

    if (v127)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v127);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    v22 = std::string::basic_string[abi:ne200100]<0>(&v152, "num_groups");
    v122 = v9;
    v123 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v120 = v150;
    v121 = v151;
    if (v151)
    {
      atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v22, &v122, &v120);
    if (v121)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v121);
    }

    if (v123)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v123);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    v23 = std::string::basic_string[abi:ne200100]<0>(&v152, "group_kernel_reuse");
    v118 = v9;
    v119 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v116 = v150;
    v117 = v151;
    if (v151)
    {
      atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v23, &v118, &v116);
    if (v117)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v117);
    }

    if (v119)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v119);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    v24 = std::string::basic_string[abi:ne200100]<0>(&v152, "bias");
    v114 = v9;
    v115 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v112 = v150;
    v113 = v151;
    if (v151)
    {
      atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v24, &v114, &v112);
    if (v113)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v113);
    }

    if (v115)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v115);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    v25 = std::string::basic_string[abi:ne200100]<0>(&v152, "acc_left_shift");
    v110 = v9;
    v111 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v108 = v150;
    v109 = v151;
    if (v151)
    {
      atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v25, &v110, &v108);
    if (v109)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v109);
    }

    if (v111)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v111);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    v26 = std::string::basic_string[abi:ne200100]<0>(&v152, "acc_bias_shift");
    v106 = v9;
    v107 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v104 = v150;
    v105 = v151;
    if (v151)
    {
      atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v26, &v106, &v104);
    if (v105)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v105);
    }

    if (v107)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v107);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    v27 = std::string::basic_string[abi:ne200100]<0>(&v152, "post_right_shift");
    v102 = v9;
    v103 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v100 = v150;
    v101 = v151;
    if (v151)
    {
      atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v27, &v102, &v100);
    if (v101)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v101);
    }

    if (v103)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v103);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    v28 = std::string::basic_string[abi:ne200100]<0>(&v152, "transposed");
    v98 = v9;
    v99 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v96 = v150;
    v97 = v151;
    if (v151)
    {
      atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v28, &v98, &v96);
    if (v97)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v97);
    }

    if (v99)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v99);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    v29 = std::string::basic_string[abi:ne200100]<0>(&v152, "pre_relu");
    v94 = v9;
    v95 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v92 = v150;
    v93 = v151;
    if (v151)
    {
      atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v29, &v94, &v92);
    if (v93)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v93);
    }

    if (v95)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v95);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    v30 = std::string::basic_string[abi:ne200100]<0>(&v152, "alternative_format_kernel_coefficients");
    v90 = v9;
    v91 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v88 = v150;
    v89 = v151;
    if (v151)
    {
      atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v30, &v90, &v88);
    if (v89)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v89);
    }

    if (v91)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v91);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    v31 = std::string::basic_string[abi:ne200100]<0>(&v152, "sparse_mask");
    v86 = v9;
    v87 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v84 = v150;
    v85 = v151;
    if (v151)
    {
      atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v31, &v86, &v84);
    if (v85)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v85);
    }

    if (v87)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v87);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    v32 = std::string::basic_string[abi:ne200100]<0>(&v152, "sparse_num_nonzero");
    v82 = v9;
    v83 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v80 = v150;
    v81 = v151;
    if (v151)
    {
      atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v32, &v82, &v80);
    if (v81)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v81);
    }

    if (v83)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v83);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    v33 = std::string::basic_string[abi:ne200100]<0>(&v152, "sparse_num_nonzero_per_filter");
    v78 = v9;
    v79 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v76 = v150;
    v77 = v151;
    if (v151)
    {
      atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v33, &v78, &v76);
    if (v77)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v77);
    }

    if (v79)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v79);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    v34 = std::string::basic_string[abi:ne200100]<0>(&v152, "palette_table");
    v74 = v9;
    v75 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v72 = v150;
    v73 = v151;
    if (v151)
    {
      atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v34, &v74, &v72);
    if (v73)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v73);
    }

    if (v75)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v75);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    MIL::Builder::BlockBuilder::GetOpsetName(*a2);
    MIL::Builder::OperationBuilder::AddBlock();
    MIL::Builder::OperationBuilder::GetBlocks(&__p, v11);
    MIL::Builder::BlockBuilder::GetOperations(&v152, *__p.__r_.__value_.__l.__data_);
    v36 = *v152.__r_.__value_.__l.__data_;
    v35 = *(v152.__r_.__value_.__r.__words[0] + 8);
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    p_p = &v152;
    std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&p_p);
    p_p = &__p;
    std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&p_p);
    std::string::basic_string[abi:ne200100]<0>(&v152, "x");
    v37 = MIL::Builder::OperationBuilder::GetArgumentForParameter();
    v38 = MIL::Builder::Variable::GetName(v37);
    if (*(v38 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v69, *v38, *(v38 + 8));
    }

    else
    {
      v39 = *v38;
      v69.__r_.__value_.__r.__words[2] = *(v38 + 16);
      *&v69.__r_.__value_.__l.__data_ = v39;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "x");
    v40 = MIL::Builder::OperationBuilder::GetArgumentForParameter();
    MIL::Builder::Variable::TryGetType(v40);
    MIL::Builder::BlockBuilder::AddInput();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    Operator = MIL::Builder::OperationBuilder::GetOperator(v36);
    (*(*Operator + 16))(Operator);
    v65 = 0;
    v66 = 0;
    MIL::Builder::BlockBuilder::AddOperation();
    v42 = std::string::basic_string[abi:ne200100]<0>(&v152, "x");
    v63 = v36;
    v64 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v61 = p_p;
    v62 = v68;
    if (v68)
    {
      atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v42, &v63, &v61);
    if (v62)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v62);
    }

    if (v64)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v64);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    MIL::Builder::OperationBuilder::GetOutputs(&v152, v36);
    v43 = MIL::Builder::Variable::GetName(*v152.__r_.__value_.__l.__data_);
    if (*(v43 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v59, *v43, *(v43 + 8));
    }

    else
    {
      v44 = *v43;
      v59.__r_.__value_.__r.__words[2] = *(v43 + 16);
      *&v59.__r_.__value_.__l.__data_ = v44;
    }

    MIL::Builder::OperationBuilder::GetOutputs(&__p, v36);
    MIL::Builder::Variable::TryGetType(*__p.__r_.__value_.__l.__data_);
    MIL::Builder::OperationBuilder::AddOutput();
    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v60);
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (v152.__r_.__value_.__r.__words[0])
    {
      v152.__r_.__value_.__l.__size_ = v152.__r_.__value_.__r.__words[0];
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    MIL::Builder::OperationBuilder::GetOutputs(&v152, p_p);
    MIL::Builder::Variable::GetName(*v152.__r_.__value_.__l.__data_);
    MIL::Builder::BlockBuilder::AddOutput();
    if (v152.__r_.__value_.__r.__words[0])
    {
      v152.__r_.__value_.__l.__size_ = v152.__r_.__value_.__r.__words[0];
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    Output = MIL::Builder::OperationBuilder::GetOutput(v11);
    v46 = MIL::Builder::Variable::GetName(Output);
    if (*(v46 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v152, *v46, *(v46 + 8));
    }

    else
    {
      v47 = *v46;
      v152.__r_.__value_.__r.__words[2] = *(v46 + 16);
      *&v152.__r_.__value_.__l.__data_ = v47;
    }

    if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v152.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v152.__r_.__value_.__l.__size_;
    }

    v49 = &__p;
    std::string::basic_string[abi:ne200100](&__p, size + 6);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v49 = __p.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = &v152;
      }

      else
      {
        v50 = v152.__r_.__value_.__r.__words[0];
      }

      memmove(v49, v50, size);
    }

    strcpy(v49 + size, "_fused");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v57, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v57 = __p;
    }

    v51 = MIL::Builder::OperationBuilder::GetOutput(v11);
    MIL::Builder::Variable::TryGetType(v51);
    MIL::Builder::OperationBuilder::AddOutput();
    if (v58)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v56, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v56 = __p;
    }

    MIL::Builder::BlockBuilder::ReplaceUsesOfInputVariable();
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    v52 = *a3;
    v53 = a3[1];
    if (*a3 != v53)
    {
      do
      {
        v54 = *(v52 + 1);
        if (v54)
        {
          atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
          v55 = v54;
          atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v55 = 0;
        }

        MIL::Builder::BlockBuilder::RemoveOperation();
        if (v55)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v55);
        }

        if (v54)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v54);
        }

        v52 += 16;
      }

      while (v52 != v53);
    }

    *a4 = 0;
    std::string::basic_string[abi:ne200100]<0>((a4 + 8), &unk_259A4D977);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    if (v68)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v68);
    }

    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    if (v71)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v71);
    }

    if (v151)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v151);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
  {
    *a4 = 14;
    std::operator+<char>();
    v15 = std::string::append(&v152, "'s pattern");
    v16 = *&v15->__r_.__value_.__l.__data_;
    *(a4 + 24) = *(&v15->__r_.__value_.__l + 2);
    *(a4 + 8) = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }
  }
}

void MilTranslator::Passes::FuseConvActivation::~FuseConvActivation(void **this)
{
  MilTranslator::Passes::Pass::~Pass(this);

  JUMPOUT(0x259CA9760);
}

void *MIL::ANEMachineIR::Interpreter::ConstCpu::Run@<X0>(_DWORD *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "val");
  Attribute = MIL::IRObject::TryGetAttribute();
  v4 = Attribute;
  if (v9 < 0)
  {
    operator delete(__p);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    *a2 = 2;
    v5 = "No value.";
    v6 = a2 + 2;
    return std::string::basic_string[abi:ne200100]<0>(v6, v5);
  }

  if (!Attribute)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(*v4 + 40))(v4))
  {
    *a2 = 0;
    v5 = &unk_259A4D977;
  }

  else
  {
    *a2 = 3;
    v5 = "Value is not a tensor.";
  }

  v6 = a2 + 2;
  return std::string::basic_string[abi:ne200100]<0>(v6, v5);
}

void sub_259A0CC58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::H2020::Const::Make(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6[0] = &unk_286AADC48;
  v6[1] = ANEMachineIR::H2020::Validators::ValidateConst;
  v6[3] = v6;
  v4 = HIBYTE(v2);
  v5[0] = &unk_286AB29C0;
  v5[3] = v5;
  MIL::IROperator::Make();
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v5);
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v6);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_259A0CDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](va2);
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v9 - 56);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  ANEMachineIR::H2022::Const::Make(va, va1);
  _Unwind_Resume(a1);
}

void sub_259A0CEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ANEMachineIR::H2020::Const::Make(MIL::MILContext &,std::string)::$_0,std::allocator<ANEMachineIR::H2020::Const::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ANEMachineIR::Validators::ValidateReshape(MIL::IROperation *a1@<X0>, uint64_t a2@<X8>)
{
  OutputType = MIL::IROperation::GetOutputType(a1);
  if ((ANEMachineIR::Utils::IsStaticTensorType(OutputType, v5) & 1) == 0)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v30 = LocationPtr[1];
    v68 = *LocationPtr;
    v69 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v66, "Output must be tensor with static shape");
    MEMORY[0x259CA8EE0](a2, &v68, 315, v66);
    if (v67 < 0)
    {
      operator delete(v66[0]);
    }

    v31 = v69;
    if (!v69)
    {
      return;
    }

LABEL_50:
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if ((ANEMachineIR::Utils::IsStaticTensorType(ParameterType, v6) & 1) == 0)
  {
    v32 = MIL::IRObject::GetLocationPtr(a1);
    v33 = v32[1];
    v64 = *v32;
    v65 = v33;
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v62, "'x' must be tensor with static shape");
    MEMORY[0x259CA8EE0](a2, &v64, 315, v62);
    if (v63 < 0)
    {
      operator delete(v62[0]);
    }

    v31 = v65;
    if (!v65)
    {
      return;
    }

    goto LABEL_50;
  }

  v8 = MIL::IRValueType::AsTensorType(ParameterType);
  v9 = (*(*v8 + 96))(v8);
  if (v9[1] == *v9)
  {
    v34 = MIL::IRObject::GetLocationPtr(a1);
    v35 = v34[1];
    v60 = *v34;
    v61 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v58, "'x' cannot be scalar");
    MEMORY[0x259CA8EE0](a2, &v60, 315, v58);
    if (v59 < 0)
    {
      operator delete(v58[0]);
    }

    v31 = v61;
    if (!v61)
    {
      return;
    }

    goto LABEL_50;
  }

  v10 = MIL::IROperation::GetOutputType(a1);
  v11 = MIL::IRValueType::AsTensorType(v10);
  v12 = (*(*v11 + 96))(v11);
  if (v12[1] == *v12)
  {
    v36 = MIL::IRObject::GetLocationPtr(a1);
    v37 = v36[1];
    v56 = *v36;
    v57 = v37;
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v54, "Output cannot be scalar");
    MEMORY[0x259CA8EE0](a2, &v56, 315, v54);
    if (v55 < 0)
    {
      operator delete(v54[0]);
    }

    v31 = v57;
    if (!v57)
    {
      return;
    }

    goto LABEL_50;
  }

  v13 = MIL::IROperation::GetOutputType(a1);
  v14 = MIL::IRValueType::AsTensorType(v13);
  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(v14, v15);
  v17 = MIL::IRValueType::AsTensorType(ParameterType);
  if (NumberOfElementsFromStaticTensorShape == ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(v17, v18))
  {
    v19 = MIL::IRObject::GetLocationPtr(a1);
    v20 = v19[1];
    v46 = *v19;
    v47 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = MIL::IRValueType::AsTensorType(ParameterType);
    std::string::basic_string[abi:ne200100]<0>(v44, "x");
    v22 = (*(*a1 + 56))(a1);
    ANEMachineIR::Validators::ValidateLiveTensorSize(&v46, v21, v44, v22, __p);
    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    }

    v23 = MIL::IRObject::GetLocationPtr(a1);
    v24 = v23[1];
    v42 = *v23;
    v43 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = MIL::IROperation::GetOutputType(a1);
    v26 = MIL::IRValueType::AsTensorType(v25);
    (*(*a1 + 200))(v41, a1);
    v27 = v41[0];
    v28 = (*(*a1 + 56))(a1);
    ANEMachineIR::Validators::ValidateLiveTensorSize(&v42, v26, v27, v28, v44);
    v70 = v41;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v70);
    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    if (MIL::ValidationResult::IsGood(__p))
    {
      if (MIL::ValidationResult::IsGood(v44))
      {
        MIL::ValidationResult::ValidationResult(a2);
LABEL_55:
        MEMORY[0x259CA8F00](v44);
        MEMORY[0x259CA8F00](__p);
        return;
      }

      v40 = v44;
    }

    else
    {
      v40 = __p;
    }

    *(a2 + 8) = *(v40 + 1);
    v40[1] = 0;
    v40[2] = 0;
    *(a2 + 24) = *(v40 + 3);
    *(a2 + 40) = v40[5];
    v40[3] = 0;
    v40[4] = 0;
    v40[5] = 0;
    *a2 = MEMORY[0x277D24E58] + 16;
    *(a2 + 48) = *(v40 + 12);
    goto LABEL_55;
  }

  v38 = MIL::IRObject::GetLocationPtr(a1);
  v39 = v38[1];
  v52 = *v38;
  v53 = v39;
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "'x' and output must have equal number of elements.");
  MEMORY[0x259CA8EE0](a2, &v52, 315, v50);
  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  v31 = v53;
  if (v53)
  {
    goto LABEL_50;
  }
}

void sub_259A0D448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  MEMORY[0x259CA8F00](&a27, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_259A0D598(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x259A0D590);
}

void ANEMachineIR::Validators::ValidateTranspose(MIL::IROperation *a1@<X0>, MIL::ValidationResult *a2@<X8>)
{
  OutputType = MIL::IROperation::GetOutputType(a1);
  if ((ANEMachineIR::Utils::IsStaticTensorType(OutputType, v5) & 1) == 0)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v34 = LocationPtr[1];
    v168 = *LocationPtr;
    v169 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v166, "Output must be tensor with static shape");
    MEMORY[0x259CA8EE0](a2, &v168, 315, v166);
    if (v167 < 0)
    {
      operator delete(v166[0]);
    }

    v35 = v169;
    if (!v169)
    {
      return;
    }

LABEL_41:
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(&v163, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  if (v165 < 0)
  {
    operator delete(v163);
  }

  IsStaticTensorType = ANEMachineIR::Utils::IsStaticTensorType(ParameterType, v6);
  v9 = MIL::IRObject::GetLocationPtr(a1);
  if ((IsStaticTensorType & 1) == 0)
  {
    v36 = v9[1];
    v161 = *v9;
    v162 = v36;
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v159, "'x' must be tensor with static shape");
    MEMORY[0x259CA8EE0](a2, &v161, 315, v159);
    if (v160 < 0)
    {
      operator delete(v159[0]);
    }

    v35 = v162;
    if (!v162)
    {
      return;
    }

    goto LABEL_41;
  }

  v10 = v9[1];
  v157 = *v9;
  v158 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = MIL::IRValueType::AsTensorType(ParameterType);
  std::string::basic_string[abi:ne200100]<0>(&v163, "x");
  v12 = (*(*a1 + 56))(a1);
  ANEMachineIR::Validators::ValidateLiveTensorSize(&v157, v11, &v163, v12, a2);
  if (v165 < 0)
  {
    operator delete(v163);
  }

  if (v158)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v158);
  }

  if (MIL::ValidationResult::IsGood(a2))
  {
    MEMORY[0x259CA8F00](a2);
    v13 = MIL::IRValueType::AsTensorType(ParameterType);
    ANEMachineIR::Utils::GetStaticTensorShape(&v163, v13, v14);
    v16 = v163;
    v15 = v164;
    std::string::basic_string[abi:ne200100]<0>(&v152, "perm");
    ParameterValue = MIL::IROperation::TryGetParameterValue();
    MIL::IRValue::AsTensor(ParameterValue);
    Data = MIL::IRTensorValue::GetDataView<int>();
    v156 = v18;
    if (SHIBYTE(v154) < 0)
    {
      operator delete(v152);
      v18 = v156;
    }

    v152 = 0;
    v153 = 0;
    v154 = 0;
    if (v18)
    {
      v19 = 0;
      do
      {
        v20 = MIL::Util::Span<int const,18446744073709551615ul>::At(&Data, v19);
        v21 = v153;
        if (v153 >= v154)
        {
          v23 = v152;
          v24 = v153 - v152;
          v25 = (v153 - v152) >> 2;
          v26 = v25 + 1;
          if ((v25 + 1) >> 62)
          {
            std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
          }

          v27 = v154 - v152;
          if ((v154 - v152) >> 1 > v26)
          {
            v26 = v27 >> 1;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v28 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v152, v28);
          }

          v29 = (4 * v25);
          v30 = &v29[-((v153 - v152) >> 2)];
          *v29 = *v20;
          v22 = (v29 + 1);
          memcpy(v30, v23, v24);
          v31 = v152;
          v152 = v30;
          v153 = v22;
          v154 = 0;
          if (v31)
          {
            operator delete(v31);
          }
        }

        else
        {
          *v153 = *v20;
          v22 = v21 + 4;
        }

        v153 = v22;
        ++v19;
      }

      while (v156 > v19);
      v32 = (v22 - v152) >> 2;
    }

    else
    {
      v32 = 0;
    }

    if (v32 == v164 - v163)
    {
      ANEMachineIR::Utils::InferPositiveAxes(&v152, &v147);
      memset(&v146, 0, sizeof(v146));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v146, v147.__r_.__value_.__l.__data_, v147.__r_.__value_.__l.__size_, (v147.__r_.__value_.__l.__size_ - v147.__r_.__value_.__r.__words[0]) >> 2);
      std::__sort<std::__less<int,int> &,int *>();
      if (v146.__r_.__value_.__l.__size_ == v146.__r_.__value_.__r.__words[0])
      {
LABEL_50:
        v39 = MIL::IROperation::GetOutputType(a1);
        v40 = MIL::IRValueType::AsTensorType(v39);
        ANEMachineIR::Utils::GetStaticTensorShape(&v145.__r_.__value_.__l.__data_, v40, v41);
        v42 = v164 - v163;
        if (v42 != (v147.__r_.__value_.__l.__size_ - v147.__r_.__value_.__r.__words[0]) >> 2)
        {
          __assert_rtn("InferTransposeOutputShape", "ShapeValidators.cpp", 97, "input_shape.size() == perm_positive.size()");
        }

        memset(&v144, 0, sizeof(v144));
        std::vector<unsigned long long>::resize(&v144, v42);
        v43 = v147.__r_.__value_.__r.__words[0];
        if (v147.__r_.__value_.__l.__size_ != v147.__r_.__value_.__r.__words[0])
        {
          v44 = (v147.__r_.__value_.__l.__size_ - v147.__r_.__value_.__r.__words[0]) >> 2;
          v45 = v163;
          v46 = v164 - v163;
          v47 = v144.__r_.__value_.__r.__words[0];
          if (v44 <= 1)
          {
            v44 = 1;
          }

          do
          {
            v49 = *v43++;
            v48 = v49;
            if (v46 <= v49)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            *v47++ = v45[v48];
            --v44;
          }

          while (v44);
        }

        if (v144.__r_.__value_.__l.__size_ - v144.__r_.__value_.__r.__words[0] == v145.__r_.__value_.__l.__size_ - v145.__r_.__value_.__r.__words[0])
        {
          if (!memcmp(v144.__r_.__value_.__l.__data_, v145.__r_.__value_.__l.__data_, v144.__r_.__value_.__l.__size_ - v144.__r_.__value_.__r.__words[0]))
          {
            v114 = MIL::IRObject::GetLocationPtr(a1);
            v115 = v114[1];
            v121 = *v114;
            v122 = v115;
            if (v115)
            {
              atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v116 = MIL::IROperation::GetOutputType(a1);
            v117 = MIL::IRValueType::AsTensorType(v116);
            (*(*a1 + 200))(&v143, a1);
            v118 = v143.__r_.__value_.__r.__words[0];
            v119 = (*(*a1 + 56))(a1);
            ANEMachineIR::Validators::ValidateLiveTensorSize(&v121, v117, v118, v119, a2);
            v142.__r_.__value_.__r.__words[0] = &v143;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v142);
            if (v122)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v122);
            }

            if (MIL::ValidationResult::IsGood(a2))
            {
              v120 = MEMORY[0x259CA8F00](a2);
              MIL::ValidationResult::ValidationResult(v120);
            }
          }

          else
          {
            ANEMachineIR::Utils::ShapeString(&v145);
            ANEMachineIR::Utils::ShapeString(&v144);
            v50 = MIL::IRObject::GetLocationPtr(a1);
            v51 = v50[1];
            v125 = *v50;
            v126 = v51;
            if (v51)
            {
              atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            std::operator+<char>();
            v52 = std::string::append(&v135, " does not match inferred shape ");
            v53 = *&v52->__r_.__value_.__l.__data_;
            v140.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
            *&v140.__r_.__value_.__l.__data_ = v53;
            v52->__r_.__value_.__l.__size_ = 0;
            v52->__r_.__value_.__r.__words[2] = 0;
            v52->__r_.__value_.__r.__words[0] = 0;
            if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v54 = &v142;
            }

            else
            {
              v54 = v142.__r_.__value_.__r.__words[0];
            }

            if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v142.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v142.__r_.__value_.__l.__size_;
            }

            v56 = std::string::append(&v140, v54, size);
            v57 = *&v56->__r_.__value_.__l.__data_;
            v141.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
            *&v141.__r_.__value_.__l.__data_ = v57;
            v56->__r_.__value_.__l.__size_ = 0;
            v56->__r_.__value_.__r.__words[2] = 0;
            v56->__r_.__value_.__r.__words[0] = 0;
            v58 = std::string::append(&v141, ".");
            v59 = *&v58->__r_.__value_.__l.__data_;
            v124 = v58->__r_.__value_.__r.__words[2];
            *__p = v59;
            v58->__r_.__value_.__l.__size_ = 0;
            v58->__r_.__value_.__r.__words[2] = 0;
            v58->__r_.__value_.__r.__words[0] = 0;
            MEMORY[0x259CA8EE0](a2, &v125, 313, __p);
            if (SHIBYTE(v124) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v141.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v140.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v135.__r_.__value_.__l.__data_);
            }

            if (v126)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v126);
            }

            if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v142.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v143.__r_.__value_.__l.__data_);
            }
          }
        }

        else
        {
          v78 = MIL::IRObject::GetLocationPtr(a1);
          v79 = v78[1];
          v129 = *v78;
          v130 = v79;
          if (v79)
          {
            atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::to_string(&v140, (v145.__r_.__value_.__l.__size_ - v145.__r_.__value_.__r.__words[0]) >> 3);
          v80 = std::string::insert(&v140, 0, "Output rank ");
          v81 = *&v80->__r_.__value_.__l.__data_;
          v141.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
          *&v141.__r_.__value_.__l.__data_ = v81;
          v80->__r_.__value_.__l.__size_ = 0;
          v80->__r_.__value_.__r.__words[2] = 0;
          v80->__r_.__value_.__r.__words[0] = 0;
          v82 = std::string::append(&v141, " does not match rank of inferred shape ");
          v83 = *&v82->__r_.__value_.__l.__data_;
          v142.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
          *&v142.__r_.__value_.__l.__data_ = v83;
          v82->__r_.__value_.__l.__size_ = 0;
          v82->__r_.__value_.__r.__words[2] = 0;
          v82->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v135, (v144.__r_.__value_.__l.__size_ - v144.__r_.__value_.__r.__words[0]) >> 3);
          if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v84 = &v135;
          }

          else
          {
            v84 = v135.__r_.__value_.__r.__words[0];
          }

          if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v85 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v85 = v135.__r_.__value_.__l.__size_;
          }

          v86 = std::string::append(&v142, v84, v85);
          v87 = *&v86->__r_.__value_.__l.__data_;
          v143.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
          *&v143.__r_.__value_.__l.__data_ = v87;
          v86->__r_.__value_.__l.__size_ = 0;
          v86->__r_.__value_.__r.__words[2] = 0;
          v86->__r_.__value_.__r.__words[0] = 0;
          v88 = std::string::append(&v143, ".");
          v89 = *&v88->__r_.__value_.__l.__data_;
          v128 = v88->__r_.__value_.__r.__words[2];
          *v127 = v89;
          v88->__r_.__value_.__l.__size_ = 0;
          v88->__r_.__value_.__r.__words[2] = 0;
          v88->__r_.__value_.__r.__words[0] = 0;
          MEMORY[0x259CA8EE0](a2, &v129, 313, v127);
          if (SHIBYTE(v128) < 0)
          {
            operator delete(v127[0]);
          }

          if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v143.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v135.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v142.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v141.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v140.__r_.__value_.__l.__data_);
          }

          if (v130)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v130);
          }
        }

        if (v144.__r_.__value_.__r.__words[0])
        {
          v144.__r_.__value_.__l.__size_ = v144.__r_.__value_.__r.__words[0];
          operator delete(v144.__r_.__value_.__l.__data_);
        }

        if (v145.__r_.__value_.__r.__words[0])
        {
          v145.__r_.__value_.__l.__size_ = v145.__r_.__value_.__r.__words[0];
          operator delete(v145.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v37 = 0;
        v38 = (v146.__r_.__value_.__l.__size_ - v146.__r_.__value_.__r.__words[0]) >> 2;
        if (v38 <= 1)
        {
          v38 = 1;
        }

        while (v37 == *(v146.__r_.__value_.__r.__words[0] + 4 * v37))
        {
          if (v38 == ++v37)
          {
            goto LABEL_50;
          }
        }

        v90 = MIL::IRObject::GetLocationPtr(a1);
        v91 = v90[1];
        v138 = *v90;
        v139 = v91;
        if (v91)
        {
          atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(&v134, "perm");
        v92 = std::string::insert(&v134, 0, "Values of '");
        v93 = *&v92->__r_.__value_.__l.__data_;
        v135.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
        *&v135.__r_.__value_.__l.__data_ = v93;
        v92->__r_.__value_.__l.__size_ = 0;
        v92->__r_.__value_.__r.__words[2] = 0;
        v92->__r_.__value_.__r.__words[0] = 0;
        v94 = std::string::append(&v135, "' ");
        v95 = *&v94->__r_.__value_.__l.__data_;
        v140.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
        *&v140.__r_.__value_.__l.__data_ = v95;
        v94->__r_.__value_.__l.__size_ = 0;
        v94->__r_.__value_.__r.__words[2] = 0;
        v94->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v133, (v153 - v152) >> 2);
        if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v96 = &v133;
        }

        else
        {
          v96 = v133.__r_.__value_.__r.__words[0];
        }

        if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v97 = HIBYTE(v133.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v97 = v133.__r_.__value_.__l.__size_;
        }

        v98 = std::string::append(&v140, v96, v97);
        v99 = *&v98->__r_.__value_.__l.__data_;
        v141.__r_.__value_.__r.__words[2] = v98->__r_.__value_.__r.__words[2];
        *&v141.__r_.__value_.__l.__data_ = v99;
        v98->__r_.__value_.__l.__size_ = 0;
        v98->__r_.__value_.__r.__words[2] = 0;
        v98->__r_.__value_.__r.__words[0] = 0;
        v100 = std::string::append(&v141, " must be in range [-");
        v101 = *&v100->__r_.__value_.__l.__data_;
        v142.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
        *&v142.__r_.__value_.__l.__data_ = v101;
        v100->__r_.__value_.__l.__size_ = 0;
        v100->__r_.__value_.__r.__words[2] = 0;
        v100->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v132, v15 - v16);
        if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v102 = &v132;
        }

        else
        {
          v102 = v132.__r_.__value_.__r.__words[0];
        }

        if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v103 = HIBYTE(v132.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v103 = v132.__r_.__value_.__l.__size_;
        }

        v104 = std::string::append(&v142, v102, v103);
        v105 = *&v104->__r_.__value_.__l.__data_;
        v143.__r_.__value_.__r.__words[2] = v104->__r_.__value_.__r.__words[2];
        *&v143.__r_.__value_.__l.__data_ = v105;
        v104->__r_.__value_.__l.__size_ = 0;
        v104->__r_.__value_.__r.__words[2] = 0;
        v104->__r_.__value_.__r.__words[0] = 0;
        v106 = std::string::append(&v143, ", ");
        v107 = *&v106->__r_.__value_.__l.__data_;
        v144.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
        *&v144.__r_.__value_.__l.__data_ = v107;
        v106->__r_.__value_.__l.__size_ = 0;
        v106->__r_.__value_.__r.__words[2] = 0;
        v106->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v131, v15 - v16);
        if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v108 = &v131;
        }

        else
        {
          v108 = v131.__r_.__value_.__r.__words[0];
        }

        if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v109 = HIBYTE(v131.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v109 = v131.__r_.__value_.__l.__size_;
        }

        v110 = std::string::append(&v144, v108, v109);
        v111 = *&v110->__r_.__value_.__l.__data_;
        v145.__r_.__value_.__r.__words[2] = v110->__r_.__value_.__r.__words[2];
        *&v145.__r_.__value_.__l.__data_ = v111;
        v110->__r_.__value_.__l.__size_ = 0;
        v110->__r_.__value_.__r.__words[2] = 0;
        v110->__r_.__value_.__r.__words[0] = 0;
        v112 = std::string::append(&v145, ")");
        v113 = *&v112->__r_.__value_.__l.__data_;
        v137 = v112->__r_.__value_.__r.__words[2];
        *v136 = v113;
        v112->__r_.__value_.__l.__size_ = 0;
        v112->__r_.__value_.__r.__words[2] = 0;
        v112->__r_.__value_.__r.__words[0] = 0;
        MEMORY[0x259CA8EE0](a2, &v138, 315, v136);
        if (SHIBYTE(v137) < 0)
        {
          operator delete(v136[0]);
        }

        if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v145.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v131.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v144.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v143.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v132.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v142.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v141.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v133.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v140.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v135.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v134.__r_.__value_.__l.__data_);
        }

        if (v139)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v139);
        }
      }

      if (v146.__r_.__value_.__r.__words[0])
      {
        v146.__r_.__value_.__l.__size_ = v146.__r_.__value_.__r.__words[0];
        operator delete(v146.__r_.__value_.__l.__data_);
      }

      if (v147.__r_.__value_.__r.__words[0])
      {
        v147.__r_.__value_.__l.__size_ = v147.__r_.__value_.__r.__words[0];
        operator delete(v147.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v60 = MIL::IRObject::GetLocationPtr(a1);
      v61 = v60[1];
      v150 = *v60;
      v151 = v61;
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&v142, "perm");
      v62 = std::string::insert(&v142, 0, "Size of '");
      v63 = *&v62->__r_.__value_.__l.__data_;
      v143.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
      *&v143.__r_.__value_.__l.__data_ = v63;
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      v64 = std::string::append(&v143, "' ");
      v65 = *&v64->__r_.__value_.__l.__data_;
      v144.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
      *&v144.__r_.__value_.__l.__data_ = v65;
      v64->__r_.__value_.__l.__size_ = 0;
      v64->__r_.__value_.__r.__words[2] = 0;
      v64->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v141, (v153 - v152) >> 2);
      if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v66 = &v141;
      }

      else
      {
        v66 = v141.__r_.__value_.__r.__words[0];
      }

      if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v67 = HIBYTE(v141.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v67 = v141.__r_.__value_.__l.__size_;
      }

      v68 = std::string::append(&v144, v66, v67);
      v69 = *&v68->__r_.__value_.__l.__data_;
      v145.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
      *&v145.__r_.__value_.__l.__data_ = v69;
      v68->__r_.__value_.__l.__size_ = 0;
      v68->__r_.__value_.__r.__words[2] = 0;
      v68->__r_.__value_.__r.__words[0] = 0;
      v70 = std::string::append(&v145, " does not match rank of x ");
      v71 = *&v70->__r_.__value_.__l.__data_;
      v146.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
      *&v146.__r_.__value_.__l.__data_ = v71;
      v70->__r_.__value_.__l.__size_ = 0;
      v70->__r_.__value_.__r.__words[2] = 0;
      v70->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v140, v15 - v16);
      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v72 = &v140;
      }

      else
      {
        v72 = v140.__r_.__value_.__r.__words[0];
      }

      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v73 = v140.__r_.__value_.__l.__size_;
      }

      v74 = std::string::append(&v146, v72, v73);
      v75 = *&v74->__r_.__value_.__l.__data_;
      v147.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
      *&v147.__r_.__value_.__l.__data_ = v75;
      v74->__r_.__value_.__l.__size_ = 0;
      v74->__r_.__value_.__r.__words[2] = 0;
      v74->__r_.__value_.__r.__words[0] = 0;
      v76 = std::string::append(&v147, ".");
      v77 = *&v76->__r_.__value_.__l.__data_;
      v149 = v76->__r_.__value_.__r.__words[2];
      *v148 = v77;
      v76->__r_.__value_.__l.__size_ = 0;
      v76->__r_.__value_.__r.__words[2] = 0;
      v76->__r_.__value_.__r.__words[0] = 0;
      MEMORY[0x259CA8EE0](a2, &v150, 315, v148);
      if (SHIBYTE(v149) < 0)
      {
        operator delete(v148[0]);
      }

      if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v147.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v140.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v146.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v145.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v141.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v144.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v143.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v142.__r_.__value_.__l.__data_);
      }

      if (v151)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v151);
      }
    }

    if (v152)
    {
      v153 = v152;
      operator delete(v152);
    }

    if (v163)
    {
      v164 = v163;
      operator delete(v163);
    }
  }
}

void std::vector<unsigned long long>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(result, a2 - v2);
  }
}

void std::vector<unsigned long long>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void ANEMachineIR::H2020::BaseNeMatmul::Make(MIL::IRUnknownDimension *a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = 0;
  operator new();
}

void sub_259A0EEA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int16 a30, char a31, char a32)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a19, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a29, 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::NeBatchMatmul::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_259A10ED0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x3D0], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x450], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::NeMatmul::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_259A13344(_Unwind_Exception *a1)
{
  v4 = *(v2 - 200);
  *(v2 - 200) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2F0], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x380], 0);
  _Unwind_Resume(a1);
}

void MilTranslator::OpTranslator::TranslateActivation(MilTranslator::OpTranslator *this@<X0>, const MIL::IROperation *a2@<X1>, uint64_t a3@<X8>)
{
  v93 = *MEMORY[0x277D85DE8];
  v6 = (*(*a2 + 56))(a2);
  if (*(v6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v89, *v6, *(v6 + 8));
  }

  else
  {
    v7 = *v6;
    v89.__r_.__value_.__r.__words[2] = *(v6 + 16);
    *&v89.__r_.__value_.__l.__data_ = v7;
  }

  {
    *a3 = 4;
    std::operator+<char>();
    v9 = std::string::append(&v90, "' not implemented");
    v10 = *&v9->__r_.__value_.__l.__data_;
    *(a3 + 24) = *(&v9->__r_.__value_.__l + 2);
    *(a3 + 8) = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_150;
    }

    v11 = v90.__r_.__value_.__r.__words[0];
    goto LABEL_149;
  }

  v90.__r_.__value_.__r.__words[0] = &v89;
  if (*(v8 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v88, v8[5], v8[6]);
  }

  else
  {
    v88 = *(v8 + 5);
  }

  std::string::basic_string[abi:ne200100]<0>(&v90, "x");
  v12 = (*(*a2 + 120))(a2, &v90, 0);
  v13 = v12;
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
    if (v13)
    {
LABEL_12:
      if (*(v13 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v87, *v13, *(v13 + 8));
      }

      else
      {
        v14 = *v13;
        v87.__r_.__value_.__r.__words[2] = *(v13 + 16);
        *&v87.__r_.__value_.__l.__data_ = v14;
      }

      std::string::basic_string[abi:ne200100]<0>(&v90, "x");
      ParameterType = MIL::IROperation::GetParameterType();
      v16 = MIL::IRValueType::AsTensorType(ParameterType);
      if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v90.__r_.__value_.__l.__data_);
      }

      MilTranslator::OpTranslator::GetChannelLastTensorNameMayInsertTranspose(this, &v87, v16, &__s);
      v17 = (*(*a2 + 176))(a2);
      v18 = *v17;
      if (v17[1] == *v17)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      v20 = *v18;
      v19 = *(v18 + 8);
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      Type = MIL::IRNamedValueType::GetType(v20);
      v22 = MIL::IRValueType::AsTensorType(Type);
      ANEMachineIR::Utils::GetStaticTensorShape(&v84, v22, v23);
      v24 = (*(*v16 + 96))(v16);
      MilTranslator::OpTranslator::InferChannelLastTransposeInfo(this, &v87.__r_.__value_.__l.__data_, (v24[1] - *v24) >> 3, &__sz);
      MilTranslator::OpTranslator::GetTransposeOpParamPerm(&__sz, (v85 - v84) >> 3, v80);
      MilTranslator::OpTranslator::InferTransposedShape(&v84, v80, &v78);
      (*(*v22 + 88))(v22);
      v25 = MIL::IRTensorValueType::Make();
      Name = MIL::IRNamedValueType::GetName(v20);
      if (*(Name + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *Name, *(Name + 8));
      }

      else
      {
        v27 = *Name;
        __str.__r_.__value_.__r.__words[2] = *(Name + 16);
        *&__str.__r_.__value_.__l.__data_ = v27;
      }

      if (MilTranslator::OpTranslator::IsTransposeRequired(v80))
      {
        std::string::append(&__str, "_channel_last");
        if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v74, __sz.__r_.__value_.__l.__data_, __sz.__r_.__value_.__l.__size_);
        }

        else
        {
          v74 = __sz;
        }

        v75 = v82;
        v76 = v83;
        std::string::operator=(&v74, &__str);
        v28 = MIL::IRNamedValueType::GetName(v20);
        std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>::pair[abi:ne200100]<std::string const&,std::pair<std::string,std::array<unsigned char,5ul>>&,0>(&v90, v28, &v74);
        std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>>(this + 37, &v90, &v90);
        if (v92 < 0)
        {
          operator delete(v91);
        }

        if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v74.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v73, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
      }

      else
      {
        v73 = __str;
      }

      MIL::IRNamedValueType::Make();
      v90.__r_.__value_.__r.__words[0] = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__r.__words[0])
      {
        operator new();
      }

      *&v90.__r_.__value_.__l.__data_ = 0uLL;
      __p.__r_.__value_.__r.__words[0] = 0;
      memset(&v74, 0, sizeof(v74));
      std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRNamedValueType> const*,std::shared_ptr<MIL::IRNamedValueType> const*>(&v74, &v90, &v90.__r_.__value_.__r.__words[2], 1uLL);
      if (v90.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v90.__r_.__value_.__l.__size_);
      }

      std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](&__p);
      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      LocationPtr = MIL::IRObject::GetLocationPtr(a2);
      v30 = LocationPtr[1];
      v71 = *LocationPtr;
      v72 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "ne_activation");
      ANEMachineIR::Validators::ValidateLiveTensorSize(&v71, v25, &__str, &__p, &v90);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v72)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v72);
      }

      if ((MIL::ValidationResult::IsGood(&v90) & 1) == 0)
      {
        *a3 = 12;
        Message = MIL::MILResult::GetMessage(&v90);
        if (*(Message + 23) < 0)
        {
          std::string::__init_copy_ctor_external((a3 + 8), *Message, *(Message + 8));
        }

        else
        {
          v32 = *Message;
          *(a3 + 24) = *(Message + 16);
          *(a3 + 8) = v32;
        }

        MEMORY[0x259CA8F00](&v90);
LABEL_131:
        v90.__r_.__value_.__r.__words[0] = &v74;
        std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&v90);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (v78)
        {
          v79 = v78;
          operator delete(v78);
        }

        if (v80[0])
        {
          v80[1] = v80[0];
          operator delete(v80[0]);
        }

        if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__sz.__r_.__value_.__l.__data_);
        }

        if (v84)
        {
          v85 = v84;
          operator delete(v84);
        }

        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__data_);
        }

        goto LABEL_147;
      }

      MEMORY[0x259CA8F00](&v90);
      std::string::basic_string[abi:ne200100]<0>(&v67, "ne_activation");
      MilTranslator::OpTranslator::AddOperation(this);
      if (v68 < 0)
      {
        operator delete(v67);
      }

      std::string::basic_string[abi:ne200100]<0>(&v64, "x");
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v63, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
      }

      else
      {
        v63 = __s;
      }

      MIL::Builder::OperationBuilder::AddInput();
      if (v66)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v66);
      }

      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      if (v65 < 0)
      {
        operator delete(v64);
      }

      v33 = MIL::IRNamedValueType::GetName(v20);
      v34 = v33;
      if (*(v33 + 23) >= 0)
      {
        v35 = *(v33 + 23);
      }

      else
      {
        v35 = *(v33 + 8);
      }

      std::string::basic_string[abi:ne200100](&v90, v35 + 1);
      if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = &v90;
      }

      else
      {
        v36 = v90.__r_.__value_.__r.__words[0];
      }

      if (v35)
      {
        if (v34[23] >= 0)
        {
          v37 = v34;
        }

        else
        {
          v37 = *v34;
        }

        memmove(v36, v37, v35);
      }

      *(&v36->__r_.__value_.__l.__data_ + v35) = 95;
      v38 = std::string::append(&v90, "pre_activation");
      v39 = v38->__r_.__value_.__r.__words[0];
      size = v38->__r_.__value_.__l.__size_;
      v62[0] = v38->__r_.__value_.__r.__words[2];
      *(v62 + 3) = *(&v38->__r_.__value_.__r.__words[2] + 3);
      v41 = SHIBYTE(v38->__r_.__value_.__r.__words[2]);
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v90.__r_.__value_.__l.__data_);
      }

      v42 = MIL::IRNamedValueType::GetName(v20);
      v43 = v42;
      if (*(v42 + 23) >= 0)
      {
        v44 = *(v42 + 23);
      }

      else
      {
        v44 = *(v42 + 8);
      }

      p_p = &__p;
      std::string::basic_string[abi:ne200100](&__p, v44 + 1);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (v44)
      {
        if (v43[23] >= 0)
        {
          v46 = v43;
        }

        else
        {
          v46 = *v43;
        }

        memmove(p_p, v46, v44);
      }

      *(&p_p->__r_.__value_.__l.__data_ + v44) = 95;
      v47 = std::string::append(&__p, "post_activation");
      v48 = *&v47->__r_.__value_.__l.__data_;
      v90.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
      *&v90.__r_.__value_.__l.__data_ = v48;
      v47->__r_.__value_.__l.__size_ = 0;
      v47->__r_.__value_.__r.__words[2] = 0;
      v47->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      memset(&__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v78, v79, (v79 - v78) >> 3);
      MIL::IRTensorValueType::Make();
      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      OpsetString = ANEMachineIR::GetOpsetString(**(this + 12));
      std::string::basic_string[abi:ne200100]<0>(&__p, OpsetString);
      MIL::Builder::OperationBuilder::AddBlock();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v41 < 0)
      {
        std::string::__init_copy_ctor_external(&v60, v39, size);
      }

      else
      {
        v60.__r_.__value_.__r.__words[0] = v39;
        v60.__r_.__value_.__l.__size_ = size;
        LODWORD(v60.__r_.__value_.__r.__words[2]) = v62[0];
        *(&v60.__r_.__value_.__r.__words[2] + 3) = *(v62 + 3);
        *(&v60.__r_.__value_.__s + 23) = v41;
      }

      MIL::Builder::BlockBuilder::AddInput();
      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      v58 = 0;
      v59 = 0;
      MIL::Builder::BlockBuilder::AddOperation();
      std::string::basic_string[abi:ne200100]<0>(&v55, "x");
      if (v41 < 0)
      {
        std::string::__init_copy_ctor_external(&v54, v39, size);
      }

      else
      {
        v54.__r_.__value_.__r.__words[0] = v39;
        v54.__r_.__value_.__l.__size_ = size;
        LODWORD(v54.__r_.__value_.__r.__words[2]) = v62[0];
        *(&v54.__r_.__value_.__r.__words[2] + 3) = *(v62 + 3);
        *(&v54.__r_.__value_.__s + 23) = v41;
      }

      MIL::Builder::OperationBuilder::AddInput();
      if (v57)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v57);
      }

      if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__data_);
      }

      if (v56 < 0)
      {
        operator delete(v55);
      }

      if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v52, v90.__r_.__value_.__l.__data_, v90.__r_.__value_.__l.__size_);
      }

      else
      {
        v52 = v90;
      }

      MIL::Builder::OperationBuilder::AddOutput();
      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v53);
      }

      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }

      MIL::Builder::BlockBuilder::AddOutput();
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v50, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
      }

      else
      {
        v50 = __str;
      }

      MIL::Builder::OperationBuilder::AddOutput();
      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      }

      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      *a3 = 0;
      std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }

      if (v61)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v61);
      }

      if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v90.__r_.__value_.__l.__data_);
        if ((v41 & 0x80000000) == 0)
        {
          goto LABEL_129;
        }
      }

      else if ((v41 & 0x80000000) == 0)
      {
        goto LABEL_129;
      }

      operator delete(v39);
LABEL_129:
      if (v69)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v69);
      }

      goto LABEL_131;
    }
  }

  else if (v12)
  {
    goto LABEL_12;
  }

  *a3 = 4;
  std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Immediate value inputs not handled.");
LABEL_147:
  if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_150;
  }

  v11 = v88.__r_.__value_.__r.__words[0];
LABEL_149:
  operator delete(v11);
LABEL_150:
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }
}

void sub_259A147C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, std::__shared_weak_count *a54, void *a55, std::__shared_weak_count *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a56);
  }

  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a40);
  }

  if (*(v71 - 137) < 0)
  {
    operator delete(*(v71 - 160));
  }

  if (v70 < 0)
  {
    operator delete(v69);
  }

  if (a54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a54);
  }

  *(v71 - 160) = &a64;
  std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100]((v71 - 160));
  if (a66 < 0)
  {
    operator delete(a65);
  }

  if (a67)
  {
    a68 = a67;
    operator delete(a67);
  }

  v73 = a69;
  if (a69)
  {
    STACK[0x200] = a69;
    operator delete(v73);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  v74 = STACK[0x230];
  if (STACK[0x230])
  {
    STACK[0x238] = v74;
    operator delete(v74);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  if (*(v71 - 233) < 0)
  {
    operator delete(*(v71 - 256));
  }

  if (*(v71 - 201) < 0)
  {
    operator delete(*(v71 - 224));
  }

  if (*(v71 - 169) < 0)
  {
    operator delete(*(v71 - 192));
  }

  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[5],0>(void *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 3, a3);
  return a1;
}

void sub_259A14BD8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[8],0>(void *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 3, a3);
  return a1;
}

void sub_259A14C2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRNamedValueType> const*,std::shared_ptr<MIL::IRNamedValueType> const*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259A14CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>,std::shared_ptr<MIL::IRNamedValueType> const*,std::shared_ptr<MIL::IRNamedValueType> const*,std::shared_ptr<MIL::IRNamedValueType>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>,std::shared_ptr<MIL::IRNamedValueType>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>,std::shared_ptr<MIL::IRNamedValueType>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::shared_ptr<MIL::Builder::OperationBuilder>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t _GLOBAL__sub_I_TranslateActivation_cpp()
{
  v4[6] = *MEMORY[0x277D85DE8];
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[5],0>(v3, "relu", "relu");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[8],0>(v4, "sigmoid", "sigmoid");
  for (i = 0; i != -12; i -= 6)
  {
    v1 = &v3[i];
    if (SHIBYTE(v4[i + 5]) < 0)
    {
      operator delete(v1[9]);
    }

    if (*(v1 + 71) < 0)
    {
      operator delete(v1[6]);
    }
  }
}

void sub_259A14E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = &a16;
  v18 = -96;
  do
  {
    v17 = (std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>::~pair(v17) - 48);
    v18 += 48;
  }

  while (v18);
  _Unwind_Resume(a1);
}

void *MilTranslator::Passes::PassManager::Register(void *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[2];
  v4 = result[3];
  if (v5 >= v4)
  {
    v8 = (result + 1);
    v9 = v3[1];
    v10 = v5 - v9;
    v11 = (v5 - v9) >> 3;
    v12 = v11 + 1;
    if ((v11 + 1) >> 61)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v13 = v4 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    v14 = v13 >= 0x7FFFFFFFFFFFFFF8;
    v15 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v15 = v12;
    }

    v22[4] = v3 + 1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<MilTranslator::Passes::Pass>>>(v8, v15);
    }

    v16 = v11;
    v17 = (8 * v11);
    v18 = *a2;
    *a2 = 0;
    v19 = &v17[-v16];
    *v17 = v18;
    v7 = v17 + 1;
    memcpy(v19, v9, v10);
    v20 = v3[1];
    v3[1] = v19;
    v3[2] = v7;
    v21 = v3[3];
    v3[3] = 0;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    result = std::__split_buffer<std::unique_ptr<MilTranslator::Passes::Pass>>::~__split_buffer(v22);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 8;
  }

  v3[2] = v7;
  return result;
}

void **MilTranslator::Passes::PassManager::Run@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  memset(v30, 0, sizeof(v30));
  v31 = 1065353216;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 == v5)
  {
LABEL_18:
    *a3 = 0;
    *(a3 + 31) = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    while (1)
    {
      std::unordered_set<std::string>::unordered_set(&v29, *v4 + 32);
      v7 = v29.__r_.__value_.__r.__words[2];
      if (v29.__r_.__value_.__r.__words[2])
      {
        break;
      }

LABEL_5:
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v29.__r_.__value_.__l.__data_);
      v8 = *v4;
      v9 = a2[1];
      v23 = *a2;
      v24 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v8 + 16))(v8, &v23);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (*a3)
      {
        return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v30);
      }

      if (*(a3 + 31) < 0)
      {
        operator delete(*(a3 + 8));
      }

      v10 = *v4;
      if (*(*v4 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v29, *(v10 + 8), *(v10 + 16));
      }

      else
      {
        v11 = *(v10 + 8);
        v29.__r_.__value_.__r.__words[2] = *(v10 + 24);
        *&v29.__r_.__value_.__l.__data_ = v11;
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(v30, &v29, &v29);
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (++v4 == v5)
      {
        goto LABEL_18;
      }
    }

    while (std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::find<std::string>(v30, v7 + 2))
    {
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    *a3 = 15;
    std::operator+<char>();
    v12 = std::string::append(&v26, "' needs to be run before '");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = *v4;
    if (*(*v4 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v25, *(v14 + 8), *(v14 + 16));
    }

    else
    {
      v15 = *(v14 + 8);
      v25.__r_.__value_.__r.__words[2] = *(v14 + 24);
      *&v25.__r_.__value_.__l.__data_ = v15;
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v25;
    }

    else
    {
      v16 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    v18 = std::string::append(&v27, v16, size);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v28, "'");
    v21 = *&v20->__r_.__value_.__l.__data_;
    *(a3 + 24) = *(&v20->__r_.__value_.__l + 2);
    *(a3 + 8) = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v29.__r_.__value_.__l.__data_);
  }

  return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v30);
}

void sub_259A1525C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a37);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((v42 - 112));
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<MilTranslator::Passes::Pass>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<MilTranslator::Passes::Pass>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<MilTranslator::Passes::Pass>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<MilTranslator::Passes::Pass>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(void *a1, uint64_t *a2, uint64_t a3)
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
    operator new();
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

uint64_t ANEMachineIR::Utils::ShapeString(uint64_t **a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = 91;
    do
    {
      v6 = *v3;
      v14 = v5;
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, &v14, 1);
      MEMORY[0x259CA9640](v7, v6);
      ++v3;
      v5 = 44;
    }

    while (v3 != v4);
  }

  v14 = 93;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, &v14, 1);
  std::stringbuf::str();
  v9 = *MEMORY[0x277D82828];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x277D82828] + 24);
  v10 = MEMORY[0x277D82878] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x259CA96D0](&v13);
}

void sub_259A15820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  std::ostringstream::~ostringstream(&a9, MEMORY[0x277D82828]);
  MEMORY[0x259CA96D0](&a23);
  _Unwind_Resume(a1);
}

void ANEMachineIR::Utils::BroadcastShapes(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X3>, MIL::ValidationResult *a5@<X8>)
{
  a4[1] = *a4;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v101, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  v98 = 0;
  v99 = 0;
  v100 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v98, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  v10 = v101;
  v9 = v102;
  v11 = (v102 - v101) >> 3;
  if (v102 == v101)
  {
LABEL_7:
    v14 = (v99 - v98) >> 3;
    if (v99 != v98)
    {
      v15 = 0;
      if (v14 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = (v99 - v98) >> 3;
      }

      while (*&v98[8 * v15])
      {
        if (v16 == ++v15)
        {
          goto LABEL_13;
        }
      }

      v53 = a1[1];
      v88 = *a1;
      v89 = v53;
      if (v53)
      {
        atomic_fetch_add_explicit((v53 + 8), 1uLL, memory_order_relaxed);
      }

      std::to_string(&v91, v15);
      v54 = std::string::insert(&v91, 0, "Zero detected for 'y' at dimension ");
      v55 = *&v54->__r_.__value_.__l.__data_;
      v92.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
      *&v92.__r_.__value_.__l.__data_ = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      v56 = std::string::append(&v92, " in shape ");
      v57 = *&v56->__r_.__value_.__l.__data_;
      v93.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
      *&v93.__r_.__value_.__l.__data_ = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      ANEMachineIR::Utils::ShapeString(&v98);
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

      v60 = std::string::append(&v93, p_p, size);
      v61 = *&v60->__r_.__value_.__l.__data_;
      v87 = v60->__r_.__value_.__r.__words[2];
      *v86 = v61;
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      MEMORY[0x259CA8EE0](a5, &v88, 319, v86);
      if (SHIBYTE(v87) < 0)
      {
        operator delete(v86[0]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v93.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v92.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v91.__r_.__value_.__l.__data_);
      }

      v52 = v89;
      if (v89)
      {
        goto LABEL_80;
      }

      goto LABEL_81;
    }

LABEL_13:
    if (v14 > v11)
    {
      v92.__r_.__value_.__r.__words[0] = 1;
      std::vector<unsigned long long>::vector[abi:ne200100](&v93, v14 - v11, &v92);
      std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long *>,std::__wrap_iter<unsigned long long *>>(&v101, v101, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_, (v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]) >> 3);
      if (v93.__r_.__value_.__r.__words[0])
      {
        v93.__r_.__value_.__l.__size_ = v93.__r_.__value_.__r.__words[0];
        operator delete(v93.__r_.__value_.__l.__data_);
      }

      v10 = v101;
      v9 = v102;
      v14 = (v99 - v98) >> 3;
      v11 = (v102 - v101) >> 3;
    }

    if (v11 > v14)
    {
      v92.__r_.__value_.__r.__words[0] = 1;
      std::vector<unsigned long long>::vector[abi:ne200100](&v93, v11 - v14, &v92);
      std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long *>,std::__wrap_iter<unsigned long long *>>(&v98, v98, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_, (v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]) >> 3);
      if (v93.__r_.__value_.__r.__words[0])
      {
        v93.__r_.__value_.__l.__size_ = v93.__r_.__value_.__r.__words[0];
        operator delete(v93.__r_.__value_.__l.__data_);
      }

      v10 = v101;
      v9 = v102;
    }

    if (v9 == v10)
    {
LABEL_60:
      MIL::ValidationResult::ValidationResult(a5);
      goto LABEL_81;
    }

    v17 = 0;
    while (1)
    {
      v18 = *&v10[8 * v17];
      if (v18 == 1)
      {
        v20 = a4[1];
        v19 = a4[2];
        if (v20 >= v19)
        {
          v25 = *a4;
          v26 = v20 - *a4;
          v31 = (v26 >> 3) + 1;
          if (v31 >> 61)
          {
            goto LABEL_138;
          }

          v32 = v19 - v25;
          if (v32 >> 2 > v31)
          {
            v31 = v32 >> 2;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFF8)
          {
            v33 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v31;
          }

          if (v33)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a4, v33);
          }

          v37 = (8 * (v26 >> 3));
          v38 = 0;
          v39 = 0;
          *v37 = *&v98[8 * v17];
          v21 = v37 + 1;
          goto LABEL_57;
        }

        *v20 = *&v98[8 * v17];
        v21 = v20 + 1;
      }

      else
      {
        v22 = *&v98[8 * v17];
        if (v22 == 1)
        {
          v24 = a4[1];
          v23 = a4[2];
          if (v24 >= v23)
          {
            v25 = *a4;
            v26 = v24 - *a4;
            v27 = v26 >> 3;
            v28 = (v26 >> 3) + 1;
            if (v28 >> 61)
            {
              goto LABEL_138;
            }

            v29 = v23 - v25;
            if (v29 >> 2 > v28)
            {
              v28 = v29 >> 2;
            }

            if (v29 >= 0x7FFFFFFFFFFFFFF8)
            {
              v30 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v28;
            }

            if (v30)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a4, v30);
            }

            goto LABEL_56;
          }
        }

        else
        {
          if (v18 != v22)
          {
            v62 = a1[1];
            v84 = *a1;
            v85 = v62;
            if (v62)
            {
              atomic_fetch_add_explicit((v62 + 8), 1uLL, memory_order_relaxed);
            }

            std::to_string(&v81, v17);
            v63 = std::string::insert(&v81, 0, "Incompatible at dimension ");
            v64 = *&v63->__r_.__value_.__l.__data_;
            __p.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
            *&__p.__r_.__value_.__l.__data_ = v64;
            v63->__r_.__value_.__l.__size_ = 0;
            v63->__r_.__value_.__r.__words[2] = 0;
            v63->__r_.__value_.__r.__words[0] = 0;
            v65 = std::string::append(&__p, " in shapes ");
            v66 = *&v65->__r_.__value_.__l.__data_;
            v91.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
            *&v91.__r_.__value_.__l.__data_ = v66;
            v65->__r_.__value_.__l.__size_ = 0;
            v65->__r_.__value_.__r.__words[2] = 0;
            v65->__r_.__value_.__r.__words[0] = 0;
            ANEMachineIR::Utils::ShapeString(&v101);
            if ((v80 & 0x80u) == 0)
            {
              v67 = v79;
            }

            else
            {
              v67 = v79[0];
            }

            if ((v80 & 0x80u) == 0)
            {
              v68 = v80;
            }

            else
            {
              v68 = v79[1];
            }

            v69 = std::string::append(&v91, v67, v68);
            v70 = *&v69->__r_.__value_.__l.__data_;
            v92.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
            *&v92.__r_.__value_.__l.__data_ = v70;
            v69->__r_.__value_.__l.__size_ = 0;
            v69->__r_.__value_.__r.__words[2] = 0;
            v69->__r_.__value_.__r.__words[0] = 0;
            v71 = std::string::append(&v92, " vs. ");
            v72 = *&v71->__r_.__value_.__l.__data_;
            v93.__r_.__value_.__r.__words[2] = v71->__r_.__value_.__r.__words[2];
            *&v93.__r_.__value_.__l.__data_ = v72;
            v71->__r_.__value_.__l.__size_ = 0;
            v71->__r_.__value_.__r.__words[2] = 0;
            v71->__r_.__value_.__r.__words[0] = 0;
            ANEMachineIR::Utils::ShapeString(&v98);
            if ((v78 & 0x80u) == 0)
            {
              v73 = v77;
            }

            else
            {
              v73 = v77[0];
            }

            if ((v78 & 0x80u) == 0)
            {
              v74 = v78;
            }

            else
            {
              v74 = v77[1];
            }

            v75 = std::string::append(&v93, v73, v74);
            v76 = *&v75->__r_.__value_.__l.__data_;
            v83 = v75->__r_.__value_.__r.__words[2];
            *v82 = v76;
            v75->__r_.__value_.__l.__size_ = 0;
            v75->__r_.__value_.__r.__words[2] = 0;
            v75->__r_.__value_.__r.__words[0] = 0;
            MEMORY[0x259CA8EE0](a5, &v84, 319, v82);
            if (SHIBYTE(v83) < 0)
            {
              operator delete(v82[0]);
            }

            if (v78 < 0)
            {
              operator delete(v77[0]);
            }

            if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v93.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v92.__r_.__value_.__l.__data_);
            }

            if (v80 < 0)
            {
              operator delete(v79[0]);
            }

            if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v91.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v81.__r_.__value_.__l.__data_);
            }

            v52 = v85;
            if (!v85)
            {
              goto LABEL_81;
            }

LABEL_80:
            std::__shared_weak_count::__release_shared[abi:ne200100](v52);
            goto LABEL_81;
          }

          v24 = a4[1];
          v34 = a4[2];
          if (v24 >= v34)
          {
            v25 = *a4;
            v26 = v24 - *a4;
            v27 = v26 >> 3;
            v35 = (v26 >> 3) + 1;
            if (v35 >> 61)
            {
LABEL_138:
              std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
            }

            v36 = v34 - v25;
            if (v36 >> 2 > v35)
            {
              v35 = v36 >> 2;
            }

            if (v36 >= 0x7FFFFFFFFFFFFFF8)
            {
              v30 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v35;
            }

            if (v30)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a4, v30);
            }

LABEL_56:
            v40 = v27;
            v41 = (8 * v27);
            v38 = (8 * v30);
            v39 = &v41[-v40];
            *v41 = v18;
            v21 = v41 + 1;
LABEL_57:
            memcpy(v39, v25, v26);
            v42 = *a4;
            *a4 = v39;
            a4[1] = v21;
            a4[2] = v38;
            if (v42)
            {
              operator delete(v42);
            }

            goto LABEL_59;
          }
        }

        *v24 = v18;
        v21 = v24 + 1;
      }

LABEL_59:
      a4[1] = v21;
      ++v17;
      v10 = v101;
      if (v17 >= (v102 - v101) >> 3)
      {
        goto LABEL_60;
      }
    }
  }

  v12 = 0;
  if (v11 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = (v102 - v101) >> 3;
  }

  while (*&v101[8 * v12])
  {
    if (v13 == ++v12)
    {
      goto LABEL_7;
    }
  }

  v43 = a1[1];
  v96 = *a1;
  v97 = v43;
  if (v43)
  {
    atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
  }

  std::to_string(&v91, v12);
  v44 = std::string::insert(&v91, 0, "Zero detected for 'x' at dimension ");
  v45 = *&v44->__r_.__value_.__l.__data_;
  v92.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
  *&v92.__r_.__value_.__l.__data_ = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  v46 = std::string::append(&v92, " in shape ");
  v47 = *&v46->__r_.__value_.__l.__data_;
  v93.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
  *&v93.__r_.__value_.__l.__data_ = v47;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  ANEMachineIR::Utils::ShapeString(&v101);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v48 = &__p;
  }

  else
  {
    v48 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v49 = __p.__r_.__value_.__l.__size_;
  }

  v50 = std::string::append(&v93, v48, v49);
  v51 = *&v50->__r_.__value_.__l.__data_;
  v95 = v50->__r_.__value_.__r.__words[2];
  v94 = v51;
  v50->__r_.__value_.__l.__size_ = 0;
  v50->__r_.__value_.__r.__words[2] = 0;
  v50->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x259CA8EE0](a5, &v96, 319, &v94);
  if (SHIBYTE(v95) < 0)
  {
    operator delete(v94);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  v52 = v97;
  if (v97)
  {
    goto LABEL_80;
  }

LABEL_81:
  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  if (v101)
  {
    v102 = v101;
    operator delete(v101);
  }
}

void sub_259A16018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v62 - 201) < 0)
  {
    operator delete(*(v62 - 224));
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  v64 = *(v62 - 144);
  if (v64)
  {
    *(v62 - 136) = v64;
    operator delete(v64);
  }

  v65 = *(v62 - 120);
  if (v65)
  {
    *(v62 - 112) = v65;
    operator delete(v65);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::Utils::GetStaticTensorShape(const void **__return_ptr a1@<X8>, ANEMachineIR::Utils *this@<X0>, const MIL::IRTensorValueType *a3@<X1>)
{
  v4 = (*(*this + 96))(this, a3);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  std::vector<unsigned long long>::reserve(a1, v4[1] - *v4);
  v6 = *v4;
  v5 = v4[1];
  while (v6 != v5)
  {
    v7 = MIL::IRDimension::AsConstant(*v6);
    v8 = (*(*v7 + 48))(v7);
    std::vector<unsigned long long>::push_back[abi:ne200100](a1, &v8);
    ++v6;
  }
}

void sub_259A16320(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ANEMachineIR::Utils::TryGetStaticTensorShape(uint64_t a1, const void **a2)
{
  a2[1] = *a2;
  v3 = (*(*a1 + 96))(a1);
  std::vector<unsigned long long>::reserve(a2, (v3[1] - *v3) >> 3);
  v5 = *v3;
  v4 = v3[1];
  while (1)
  {
    if (v5 == v4)
    {
      return 1;
    }

    result = (*(**v5 + 16))();
    if (!result)
    {
      break;
    }

    v7 = (*(*result + 48))(result);
    std::vector<unsigned long long>::push_back[abi:ne200100](a2, &v7);
    v5 += 8;
  }

  a2[1] = *a2;
  return result;
}

uint64_t ANEMachineIR::Utils::IsStaticTensorType(ANEMachineIR::Utils *this, const MIL::IRValueType *a2)
{
  result = (*(*this + 24))(this, a2);
  if (result)
  {
    v4 = MIL::IRValueType::AsTensorType(this);
    v5 = (*(*v4 + 96))(v4);
    v6 = v5[1];
    if (*v5 == v6)
    {
      return 1;
    }

    else
    {
      v7 = *v5 + 8;
      do
      {
        v8 = (*(**(v7 - 8) + 16))(*(v7 - 8));
        v9 = v8 == 0;
        result = v8 != 0;
        v9 = v9 || v7 == v6;
        v7 += 8;
      }

      while (!v9);
    }
  }

  return result;
}

uint64_t ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(ANEMachineIR::Utils *this, const MIL::IRTensorValueType *a2)
{
  ANEMachineIR::Utils::GetStaticTensorShape(&v6, this, a2);
  v2 = 1;
  if (v6 != v7)
  {
    v3 = v6;
    do
    {
      v4 = *v3++;
      v2 *= v4;
    }

    while (v3 != v7);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  return v2;
}

uint64_t ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(uint64_t **a1)
{
  v1 = *a1;
  v2 = a1[1];
  result = 1;
  while (v1 != v2)
  {
    v4 = *v1++;
    result *= v4;
  }

  return result;
}

uint64_t *ANEMachineIR::Utils::InferPositiveAxes@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*a1 == v4)
  {
LABEL_5:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;

    return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2, v3, v4, (v4 - v3) >> 2);
  }

  else
  {
    v6 = *a1;
    while ((*v6 & 0x80000000) == 0)
    {
      if (++v6 == v4)
      {
        goto LABEL_5;
      }
    }

    v8 = v4 - v3;
    v9 = (v4 - v3) >> 2;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2, v3, v4, v9);
    if (v8 << 30)
    {
      v10 = (v8 >> 2);
      v11 = *a1;
      v12 = (*(a1 + 8) - *a1) >> 2;
      v13 = *a2;
      if (v10 <= 1)
      {
        v10 = 1;
      }

      do
      {
        if (!v12)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        if ((*v11 & 0x80000000) != 0)
        {
          *v13 = *v11 + v9;
        }

        --v12;
        ++v11;
        ++v13;
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

void sub_259A16674(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t *std::vector<unsigned long long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_259A16868(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long *>,std::__wrap_iter<unsigned long long *>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7;
      v7 += 8;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = a1[1];
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    a1[1] = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(a1[1], &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  a1[1] = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    a1[1] = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

uint64_t register_aneflow_opsets(ANEMachineIR::H2020::Opsets *a1, MIL::MILContext *a2)
{
  ANEMachineIR::H2020::Opsets::RegisterMilAneflowOpsets(a1, a2);
  ANEMachineIR::H2021::Opsets::RegisterMilAneflowOpsets(a1, v3);
  ANEMachineIR::H2022::Opsets::RegisterMilAneflowOpsets(a1, v4);
  return 1;
}

void make_milaneflow_context(MIL::MILContext *a1)
{
  MIL::MILContext::Make(&v5, a1);
  v1 = v5;
  ANEMachineIR::H2020::Opsets::RegisterMilAneflowOpsets(v5, v2);
  ANEMachineIR::H2021::Opsets::RegisterMilAneflowOpsets(v1, v3);
  ANEMachineIR::H2022::Opsets::RegisterMilAneflowOpsets(v1, v4);
  operator new();
}

void sub_259A16B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  MEMORY[0x259CA9760](v10, 0x20C40A4A59CD2, a3, a4, a5, a6, a7, a8);
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t milaneflow_free_context(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    }

    JUMPOUT(0x259CA9760);
  }

  return result;
}

uint64_t milaneflow_error_message_size(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 23);
    if (result < 0)
    {
      return *(v1 + 8);
    }
  }

  return result;
}

uint64_t milaneflow_copy_error_message(uint64_t __src, char *__dst)
{
  if (__src)
  {
    v2 = __src;
    v3 = *(__src + 23);
    if ((v3 & 0x8000000000000000) != 0)
    {
      v4 = *__src;
      v3 = *(__src + 8);
    }

    else
    {
      v4 = __src;
    }

    strncpy(__dst, v4, v3);
    __src = *(v2 + 23);
    if (__src < 0)
    {
      return *(v2 + 8);
    }
  }

  return __src;
}

uint64_t milaneflow_location_message_size(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 47);
    if (result < 0)
    {
      return *(v1 + 32);
    }
  }

  return result;
}

uint64_t milaneflow_copy_location_message(uint64_t result, char *__dst)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 47);
    if ((v3 & 0x8000000000000000) != 0)
    {
      v4 = *(result + 24);
      v3 = *(result + 32);
    }

    else
    {
      v4 = (result + 24);
    }

    strncpy(__dst, v4, v3);
    result = *(v2 + 47);
    if (result < 0)
    {
      return *(v2 + 32);
    }
  }

  return result;
}

void milaneflow_free_execution_result(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x259CA9760);
  }
}

uint64_t milaneflow_try_program_from_file(uint64_t *a1, char *a2, char *a3)
{
  v8 = 0;
  v3 = a1[1];
  v5 = *a1;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v7)
  {
    operator new();
  }

  return v8;
}

void sub_259A16E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  MEMORY[0x259CA9760](v13, 0x20C40A4A59CD2, a3, a4, a5, a6, a7, a8);
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::ParseProgramShared(MIL::ParserOptions *a1, char *a2, int a3, char *a4, void *a5)
{
  MIL::ParserOptions::Make(&v23, a1);
  (*(*v23 + 64))(v23, 1);
  if (a4)
  {
    v11 = v23;
    std::string::basic_string[abi:ne200100]<0>(__p, a4);
    (*(*v11 + 48))(v11, __p);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *a5 = 0;
  if (a3)
  {
    v12 = v23;
    std::string::basic_string[abi:ne200100]<0>(v19, a2);
    (*(*v12 + 32))(v12, v19, 1);
    if (v20 < 0)
    {
      operator delete(v19[0]);
    }

    v18 = *a1;
    *a1 = 0;
    *(a1 + 1) = 0;
    MIL::Text::ParseProgramFromFile();
    v13 = *(&v18 + 1);
    if (!*(&v18 + 1))
    {
      goto LABEL_13;
    }

LABEL_12:
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    goto LABEL_13;
  }

  v17 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v15, a2);
  MIL::Text::ParseProgram();
  if (v16 < 0)
  {
    operator delete(v15);
  }

  v13 = *(&v17 + 1);
  if (*(&v17 + 1))
  {
    goto LABEL_12;
  }

LABEL_13:
  result = v23;
  v23 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_259A170A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  v35 = *(v32 - 72);
  *(v32 - 72) = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  if (a2 == 2)
  {
    __cxa_begin_catch(exception_object);
    operator new();
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    operator new();
  }

  _Unwind_Resume(exception_object);
}

uint64_t milaneflow_try_program_from_string(uint64_t *a1, char *a2, char *a3)
{
  v8 = 0;
  v3 = a1[1];
  v5 = *a1;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v7)
  {
    operator new();
  }

  return v8;
}

void sub_259A17404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  MEMORY[0x259CA9760](v13, 0x20C40A4A59CD2, a3, a4, a5, a6, a7, a8);
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t milaneflow_free_program_handle(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    result = MEMORY[0x259CA9760](v3, 0x20C40A4A59CD2);
  }

  if (a2)
  {
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x259CA9760);
  }

  return result;
}

void *milaneflow_free_function_handle(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = result[8];
    if (v4)
    {
      v5 = result[9];
      v6 = result[8];
      if (v5 != v4)
      {
        do
        {
          v5 -= 88;
        }

        while (v5 != v4);
        v6 = v3[8];
      }

      v3[9] = v4;
      operator delete(v6);
    }

    v7 = v3[5];
    if (v7)
    {
      v8 = v3[6];
      v9 = v3[5];
      if (v8 != v7)
      {
        do
        {
          v8 -= 88;
        }

        while (v8 != v7);
        v9 = v3[5];
      }

      v3[6] = v7;
      operator delete(v9);
    }

    v10 = v3[1];
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    result = MEMORY[0x259CA9760](v3, 0x1060C4098404D11);
  }

  if (a2)
  {
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x259CA9760);
  }

  return result;
}

void milaneflow_try_function(uint64_t *a1, int a2, char *__s, char *a4)
{
  v5 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  v6 = (*(*v5 + 56))(v5, __p);
  v7 = v6;
  if (v14 < 0)
  {
    operator delete(__p[0]);
    if (v7)
    {
LABEL_3:
      std::string::basic_string[abi:ne200100]<0>(__p, a4);
      v8 = (*(*v7 + 64))(v7, __p);
      v9 = v8;
      if (v14 < 0)
      {
        operator delete(__p[0]);
        if (v9)
        {
LABEL_5:
          v12 = 0;
          std::string::basic_string[abi:ne200100]<0>(__p, a4);
          v10 = ANEMachineIR::LookupOpsetString(__p, &v12);
          v11 = v10;
          if (v14 < 0)
          {
            operator delete(__p[0]);
            if (v11)
            {
LABEL_7:
              operator new();
            }
          }

          else if (v10)
          {
            goto LABEL_7;
          }

          operator new();
        }
      }

      else if (v8)
      {
        goto LABEL_5;
      }

      operator new();
    }
  }

  else if (v6)
  {
    goto LABEL_3;
  }

  operator new();
}

void sub_259A1796C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x259CA9760](v15, v16, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

unint64_t milaneflow_function_name_list(void *a1)
{
  if (*((*(**a1 + 72))(*a1) + 24))
  {
    operator new[]();
  }

  return 0;
}

uint64_t milaneflow_opset_name_list(uint64_t *a1, int a2, char *__s)
{
  v3 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  v4 = (*(*v3 + 56))(v3, &__p);
  v5 = v4;
  if (v9 < 0)
  {
    operator delete(__p);
    if (!v5)
    {
      return v5;
    }
  }

  else if (!v4)
  {
    return v5;
  }

  (*(*v5 + 56))(&__p, v5);
  v5 = (v8 - __p) >> 3;
  if (v8 != __p)
  {
    operator new[]();
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v5;
}

void sub_259A17C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

unint64_t milaneflow_function_input_name_list(uint64_t a1)
{
  if (*((*(**(a1 + 16) + 128))(*(a1 + 16)) + 16))
  {
    operator new[]();
  }

  return 0;
}

unint64_t milaneflow_function_output_name_list(uint64_t a1)
{
  v1 = (*(**(a1 + 24) + 88))(*(a1 + 24));
  if (v1[1] - *v1)
  {
    operator new[]();
  }

  return 0;
}

void milaneflow_free_name_list(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259CA9740);
  }
}

uint64_t milaneflow_try_input_io_handle(uint64_t a1, int a2, char *__s)
{
  v3 = *(a1 + 16);
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  v4 = (*(*v3 + 152))(v3, __p);
  v5 = v4;
  if (v8 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      return v5;
    }

LABEL_5:
    operator new();
  }

  if (!v4)
  {
    goto LABEL_5;
  }

  return v5;
}

void sub_259A17F34(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x259CA9760](v15, v16, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t milaneflow_try_output_io_handle(uint64_t a1, int a2, char *__s)
{
  v3 = *(a1 + 24);
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  v4 = (*(*(v3 + 64) + 24))(v3 + 64, __p, 1);
  v5 = v4;
  if (v8 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      return v5;
    }

LABEL_5:
    operator new();
  }

  if (!v4)
  {
    goto LABEL_5;
  }

  return v5;
}

void sub_259A180D0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x259CA9760](v15, v16, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void milaneflow_free_io_handle(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x259CA9760);
  }
}

uint64_t milaneflow_function_io_dtype(uint64_t a1, uint64_t a2, int *a3)
{
  result = (*(*a1 + 24))(a1, a2);
  if (result)
  {
    v5 = (*(*result + 88))(result);
    switch(v5)
    {
      case 4:
        v6 = 0;
        goto LABEL_8;
      case 9:
        v6 = 2;
        goto LABEL_8;
      case 14:
        v6 = 1;
LABEL_8:
        *a3 = v6;
        return 1;
    }

    return 0;
  }

  return result;
}

BOOL milaneflow_function_io_rank(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = (*(*a1 + 24))(a1, a2);
  v5 = v4;
  if (v4)
  {
    v6 = (*(*v4 + 96))(v4);
    *a3 = (v6[1] - *v6) >> 3;
  }

  return v5 != 0;
}

uint64_t milaneflow_function_io_dim_size(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  result = (*(*a1 + 24))(a1, a2);
  if (result)
  {
    v7 = result;
    v8 = (*(*result + 96))(result);
    if (a3 >= (v8[1] - *v8) >> 3)
    {
      return 0;
    }

    else
    {
      v9 = (*(*v7 + 96))(v7);
      if (a3 >= (v9[1] - *v9) >> 3)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      result = (*(**(*v9 + 8 * a3) + 16))(*(*v9 + 8 * a3));
      if (result)
      {
        *a4 = (*(*result + 48))(result);
        return 1;
      }
    }
  }

  return result;
}

void milaneflow_make_strided_bind_options(unint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (a1 - 6 <= 0xFFFFFFFFFFFFFFFALL)
  {
    operator new();
  }

  if (a4)
  {
    v5 = a1;
    if (a1 - 1 < a3 && a4 != 1)
    {
      operator new();
    }

    __src[0] = 0;
    __src[1] = 0;
    v18 = 0;
    std::vector<unsigned long long>::reserve(__src, a1);
    v6 = __src[1];
    while (1)
    {
      if (v6 >= v18)
      {
        v7 = __src[0];
        v8 = v6 - __src[0];
        v9 = (v6 - __src[0]) >> 3;
        v10 = v9 + 1;
        if ((v9 + 1) >> 61)
        {
          std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
        }

        v11 = v18 - __src[0];
        if ((v18 - __src[0]) >> 2 > v10)
        {
          v10 = v11 >> 2;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(__src, v12);
        }

        v13 = (v6 - __src[0]) >> 3;
        v14 = (8 * v9);
        v15 = (8 * v9 - 8 * v13);
        *v14 = *a2;
        v6 = (v14 + 1);
        memcpy(v15, v7, v8);
        v16 = __src[0];
        __src[0] = v15;
        __src[1] = v6;
        v18 = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v6 = *a2;
        v6 += 8;
      }

      __src[1] = v6;
      ++a2;
      if (!--v5)
      {
        operator new();
      }
    }
  }

  operator new();
}

void **milaneflow_free_strided_bind_options(void **result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = *result;
    if (v4)
    {
      v3[1] = v4;
      operator delete(v4);
    }

    result = MEMORY[0x259CA9760](v3, 0x1010C401C72BCECLL);
  }

  if (a2)
  {
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x259CA9760);
  }

  return result;
}

void milaneflow_free_bind_result(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x259CA9760);
  }
}

uint64_t milaneflow_bind_function_input(uint64_t a1, int a2, char *__s, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 16);
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  v11 = (*(*v10 + 152))(v10, __p);
  v12 = v11;
  if ((SHIBYTE(v70) & 0x80000000) == 0)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_12:
    operator new();
  }

  operator delete(__p[0]);
  if (!v12)
  {
    goto LABEL_12;
  }

LABEL_3:
  v13 = (*(*v12 + 24))(v12);
  if (!v13)
  {
    operator new();
  }

  v14 = v13;
  __p[0] = 0;
  __p[1] = 0;
  v70 = 0;
  v73[0] = 0;
  v73[1] = 0;
  v74 = 0;
  MEMORY[0x259CA95C0](__p, __s);
  LOBYTE(v75) = 1;
  *&v71 = v14;
  *(&v75 + 1) = a6;
  v15 = (*(*v14 + 88))(v14);
  if (v15 == 4)
  {
    v17 = 2;
  }

  else
  {
    if (v15 != 9 && v15 != 14)
    {
      operator new();
    }

    v17 = 1;
  }

  v66 = 0;
  v67 = 0;
  v68 = 0;
  v18 = (*(*v14 + 96))(v14);
  v19 = *v18;
  v20 = v18[1];
  while (v19 != v20)
  {
    v21 = (*(**v19 + 16))();
    if (!v21)
    {
      operator new();
    }

    v76.__r_.__value_.__r.__words[0] = (*(*v21 + 48))(v21);
    std::vector<unsigned long long>::push_back[abi:ne200100](&v66, &v76);
    v19 += 8;
  }

  v63 = 0;
  v64 = 0;
  v65 = 0;
  v76.__r_.__value_.__r.__words[0] = 0;
  std::vector<unsigned long long>::assign(&v63, (v67 - v66) >> 3, &v76);
  v22 = v66;
  v23 = (v67 - v66) >> 3;
  if (v23 >= 2)
  {
    v24 = v63;
    v25 = v23 - 1;
    v26 = v17;
    do
    {
      v26 *= v22[v25];
      v24[v25] = v26;
      v27 = v25-- + 1;
    }

    while (v27 > 2);
  }

  if (a4)
  {
    v28 = v64 - v63;
    v30 = *a4;
    v29 = *(a4 + 8);
    if (&v29[-*a4] != (v64 - v63))
    {
      operator new();
    }

    v31 = v28 >> 3;
    v32 = *(a4 + 32);
    *(&v71 + 1) = v32;
    v72 = *(a4 + 24);
    v34 = !memcmp(v30, v63, v28) && v32 == 1;
    LOBYTE(v75) = v34;
    if (v73 != a4)
    {
      std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(v73, v30, v29, v31);
      v34 = v75;
    }

    if (!v34)
    {
      Location = MIL::IRObject::GetLocation(*(a1 + 24));
      (*(*Location + 24))(v61);
      v58 = 0;
      v59 = 0;
      v60 = 0;
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v58, v66, v67, (v67 - v66) >> 3);
      if (!*(&v71 + 1) || *(&v71 + 1) != 1 && v72 >= v31 - 1)
      {
        operator new();
      }

      if (v31 >= 1 && (v75 & 1) == 0)
      {
        v36 = *(v73[0] + v31 - 1);
        if (v36 < *(&v71 + 1) * v17)
        {
LABEL_46:
          operator new();
        }

        while (v31 != 1)
        {
          v37 = *(v58 + v31 - 1);
          v38 = v37 * v36;
          if (v72 + 1 == v31)
          {
            if (v37 % *(&v71 + 1))
            {
              v39 = *(&v71 + 1);
            }

            else
            {
              v39 = 0;
            }

            v38 = v39 + v38 / *(&v71 + 1);
          }

          v36 = *(v73[0] + v31-- - 2);
          if (v36 < v38)
          {
            goto LABEL_46;
          }
        }
      }

      if (v58)
      {
        v59 = v58;
        operator delete(v58);
      }

      if (v62 < 0)
      {
        operator delete(v61[0]);
      }
    }
  }

  else
  {
    LOBYTE(v75) = 1;
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(v73, v63, v64, (v64 - v63) >> 3);
  }

  v41 = *(a1 + 40);
  v40 = *(a1 + 48);
  if (v41 != v40)
  {
    operator new();
  }

  v42 = *(a1 + 56);
  if (v41 >= v42)
  {
    v46 = 0x2E8BA2E8BA2E8BA3 * ((v40 - v41) >> 3);
    v47 = v46 + 1;
    if ((v46 + 1) > 0x2E8BA2E8BA2E8BALL)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v48 = 0x2E8BA2E8BA2E8BA3 * ((v42 - v41) >> 3);
    if (2 * v48 > v47)
    {
      v47 = 2 * v48;
    }

    if (v48 >= 0x1745D1745D1745DLL)
    {
      v49 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v49 = v47;
    }

    if (v49)
    {
      if (v49 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v50 = *(a1 + 40);
    v51 = 88 * v46;
    *v51 = *__p;
    *(v51 + 16) = v70;
    __p[1] = 0;
    v70 = 0;
    __p[0] = 0;
    *(v51 + 24) = v71;
    *(v51 + 40) = v72;
    *(v51 + 48) = *v73;
    *(v51 + 64) = v74;
    v73[1] = 0;
    v74 = 0;
    v73[0] = 0;
    v52 = (v51 + v41 - v50);
    *(v51 + 72) = v75;
    if (v41 != v50)
    {
      v53 = v41;
      v54 = (v51 + v41 - v50);
      do
      {
        v55 = *v53;
        *(v54 + 2) = *(v53 + 2);
        *v54 = v55;
        *(v53 + 1) = 0;
        *(v53 + 2) = 0;
        *v53 = 0;
        v56 = *(v53 + 24);
        *(v54 + 5) = *(v53 + 5);
        *(v54 + 24) = v56;
        *(v54 + 7) = 0;
        *(v54 + 8) = 0;
        *(v54 + 3) = *(v53 + 3);
        *(v54 + 8) = *(v53 + 8);
        *(v53 + 6) = 0;
        *(v53 + 7) = 0;
        *(v53 + 8) = 0;
        *(v54 + 72) = *(v53 + 72);
        v53 += 88;
        v54 += 88;
      }

      while (v53 != v50);
      do
      {
        v41 += 88;
      }

      while (v41 != v50);
      v41 = *(a1 + 40);
    }

    v45 = v51 + 88;
    *(a1 + 40) = v52;
    *(a1 + 48) = v51 + 88;
    *(a1 + 56) = 0;
    if (v41)
    {
      operator delete(v41);
    }
  }

  else
  {
    v43 = *__p;
    *(v40 + 2) = v70;
    *v40 = v43;
    __p[1] = 0;
    v70 = 0;
    __p[0] = 0;
    v44 = v72;
    *(v40 + 24) = v71;
    *(v40 + 5) = v44;
    *(v40 + 6) = 0;
    *(v40 + 7) = 0;
    *(v40 + 8) = 0;
    *(v40 + 3) = *v73;
    *(v40 + 8) = v74;
    v73[0] = 0;
    v73[1] = 0;
    v74 = 0;
    *(v40 + 72) = v75;
    v45 = (v40 + 88);
  }

  *(a1 + 48) = v45;
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  if (v73[0])
  {
    v73[1] = v73[0];
    operator delete(v73[0]);
  }

  if (SHIBYTE(v70) < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_259A1945C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v44 + 23) < 0)
  {
    operator delete(*v44);
  }

  if (*(v45 - 89) < 0)
  {
    operator delete(*(v45 - 112));
  }

  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (*(v45 - 121) < 0)
  {
    operator delete(*(v45 - 144));
  }

  if (*(v45 - 153) < 0)
  {
    operator delete(*(v45 - 176));
  }

  if (*(v45 - 177) < 0)
  {
    operator delete(*(v45 - 200));
  }

  MEMORY[0x259CA9760](v44, 0x1012C403467C318, a3, a4, a5, a6, a7, a8);
  if (a9)
  {
    operator delete(a9);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::BindTask<unsigned char const>::~BindTask(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t milaneflow_bind_function_output(uint64_t a1, int a2, char *__s, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 24);
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  v11 = (*(*(v10 + 64) + 24))(v10 + 64, __p, 1);
  v12 = v11;
  if ((SHIBYTE(v70) & 0x80000000) == 0)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_12:
    operator new();
  }

  operator delete(__p[0]);
  if (!v12)
  {
    goto LABEL_12;
  }

LABEL_3:
  v13 = (*(*v12 + 24))(v12);
  if (!v13)
  {
    operator new();
  }

  v14 = v13;
  __p[0] = 0;
  __p[1] = 0;
  v70 = 0;
  v72[0] = 0;
  v72[1] = 0;
  v73 = 0;
  MEMORY[0x259CA95C0](__p, __s);
  LOBYTE(v74) = 1;
  *v71 = v14;
  *(&v74 + 1) = a6;
  v15 = (*(*v14 + 88))(v14);
  if (v15 == 4)
  {
    v17 = 2;
  }

  else
  {
    if (v15 != 9 && v15 != 14)
    {
      operator new();
    }

    v17 = 1;
  }

  v66 = 0;
  v67 = 0;
  v68 = 0;
  v18 = (*(*v14 + 96))(v14);
  v19 = *v18;
  v20 = v18[1];
  while (v19 != v20)
  {
    v21 = (*(**v19 + 16))();
    if (!v21)
    {
      operator new();
    }

    v75.__r_.__value_.__r.__words[0] = (*(*v21 + 48))(v21);
    std::vector<unsigned long long>::push_back[abi:ne200100](&v66, &v75);
    v19 += 8;
  }

  v63 = 0;
  v64 = 0;
  v65 = 0;
  v75.__r_.__value_.__r.__words[0] = 0;
  std::vector<unsigned long long>::assign(&v63, (v67 - v66) >> 3, &v75);
  v22 = v66;
  v23 = (v67 - v66) >> 3;
  if (v23 >= 2)
  {
    v24 = v63;
    v25 = v23 - 1;
    v26 = v17;
    do
    {
      v26 *= v22[v25];
      v24[v25] = v26;
      v27 = v25-- + 1;
    }

    while (v27 > 2);
  }

  if (a4)
  {
    v28 = v64 - v63;
    v30 = *a4;
    v29 = *(a4 + 8);
    if (&v29[-*a4] != (v64 - v63))
    {
      operator new();
    }

    v31 = v28 >> 3;
    v32 = *(a4 + 32);
    *&v71[8] = v32;
    *&v71[16] = *(a4 + 24);
    v34 = !memcmp(v30, v63, v28) && v32 == 1;
    LOBYTE(v74) = v34;
    if (v72 != a4)
    {
      std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(v72, v30, v29, v31);
      v34 = v74;
    }

    if (!v34)
    {
      Location = MIL::IRObject::GetLocation(*(a1 + 24));
      (*(*Location + 24))(v61);
      v58 = 0;
      v59 = 0;
      v60 = 0;
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v58, v66, v67, (v67 - v66) >> 3);
      if (!*&v71[8] || *&v71[8] != 1 && *&v71[16] >= (v31 - 1))
      {
        operator new();
      }

      if (v31 >= 1 && (v74 & 1) == 0)
      {
        v36 = *(v72[0] + v31 - 1);
        if (v36 < *&v71[8] * v17)
        {
LABEL_46:
          operator new();
        }

        while (v31 != 1)
        {
          v37 = *(v58 + v31 - 1);
          v38 = v37 * v36;
          if (*&v71[16] + 1 == v31)
          {
            if (v37 % *&v71[8])
            {
              v39 = *&v71[8];
            }

            else
            {
              v39 = 0;
            }

            v38 = v39 + v38 / *&v71[8];
          }

          v36 = *(v72[0] + v31-- - 2);
          if (v36 < v38)
          {
            goto LABEL_46;
          }
        }
      }

      if (v58)
      {
        v59 = v58;
        operator delete(v58);
      }

      if (v62 < 0)
      {
        operator delete(v61[0]);
      }
    }
  }

  else
  {
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(v72, v63, v64, (v64 - v63) >> 3);
    LOBYTE(v74) = 1;
    *&v71[8] = xmmword_259A4D770;
  }

  v41 = *(a1 + 64);
  v40 = *(a1 + 72);
  if (v41 != v40)
  {
    operator new();
  }

  v42 = *(a1 + 80);
  if (v41 >= v42)
  {
    v46 = 0x2E8BA2E8BA2E8BA3 * ((v40 - v41) >> 3);
    v47 = v46 + 1;
    if ((v46 + 1) > 0x2E8BA2E8BA2E8BALL)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v48 = 0x2E8BA2E8BA2E8BA3 * ((v42 - v41) >> 3);
    if (2 * v48 > v47)
    {
      v47 = 2 * v48;
    }

    if (v48 >= 0x1745D1745D1745DLL)
    {
      v49 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v49 = v47;
    }

    if (v49)
    {
      if (v49 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v50 = *(a1 + 64);
    v51 = 88 * v46;
    *v51 = *__p;
    *(v51 + 16) = v70;
    __p[1] = 0;
    v70 = 0;
    __p[0] = 0;
    *(v51 + 24) = *v71;
    *(v51 + 40) = *&v71[16];
    *(v51 + 48) = *v72;
    *(v51 + 64) = v73;
    v72[1] = 0;
    v73 = 0;
    v72[0] = 0;
    v52 = (v51 + v41 - v50);
    *(v51 + 72) = v74;
    if (v41 != v50)
    {
      v53 = v41;
      v54 = (v51 + v41 - v50);
      do
      {
        v55 = *v53;
        *(v54 + 2) = *(v53 + 2);
        *v54 = v55;
        *(v53 + 1) = 0;
        *(v53 + 2) = 0;
        *v53 = 0;
        v56 = *(v53 + 24);
        *(v54 + 5) = *(v53 + 5);
        *(v54 + 24) = v56;
        *(v54 + 7) = 0;
        *(v54 + 8) = 0;
        *(v54 + 3) = *(v53 + 3);
        *(v54 + 8) = *(v53 + 8);
        *(v53 + 6) = 0;
        *(v53 + 7) = 0;
        *(v53 + 8) = 0;
        *(v54 + 72) = *(v53 + 72);
        v53 += 88;
        v54 += 88;
      }

      while (v53 != v50);
      do
      {
        v41 += 88;
      }

      while (v41 != v50);
      v41 = *(a1 + 64);
    }

    v45 = v51 + 88;
    *(a1 + 64) = v52;
    *(a1 + 72) = v51 + 88;
    *(a1 + 80) = 0;
    if (v41)
    {
      operator delete(v41);
    }
  }

  else
  {
    v43 = *__p;
    *(v40 + 2) = v70;
    *v40 = v43;
    __p[1] = 0;
    v70 = 0;
    __p[0] = 0;
    v44 = *&v71[16];
    *(v40 + 24) = *v71;
    *(v40 + 5) = v44;
    *(v40 + 6) = 0;
    *(v40 + 7) = 0;
    *(v40 + 8) = 0;
    *(v40 + 3) = *v72;
    *(v40 + 8) = v73;
    v72[0] = 0;
    v72[1] = 0;
    v73 = 0;
    *(v40 + 72) = v74;
    v45 = (v40 + 88);
  }

  *(a1 + 72) = v45;
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  if (v72[0])
  {
    v72[1] = v72[0];
    operator delete(v72[0]);
  }

  if (SHIBYTE(v70) < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_259A1A484(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v44 + 23) < 0)
  {
    operator delete(*v44);
  }

  if (*(v45 - 89) < 0)
  {
    operator delete(*(v45 - 112));
  }

  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (*(v45 - 121) < 0)
  {
    operator delete(*(v45 - 144));
  }

  if (*(v45 - 153) < 0)
  {
    operator delete(*(v45 - 176));
  }

  if (*(v45 - 177) < 0)
  {
    operator delete(*(v45 - 200));
  }

  MEMORY[0x259CA9760](v44, 0x1012C403467C318, a3, a4, a5, a6, a7, a8);
  if (a9)
  {
    operator delete(a9);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void milaneflow_execute_function(uint64_t a1)
{
  v1 = 0u;
  v2 = 0u;
  v3 = 1065353216;
  MIL::ANEMachineIR::Interpreter::DelegateByNameOp::MakeWithDefaultTable();
}

void sub_259A1BCB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v38 = *(v36 - 112);
  if (v38)
  {
    *(v36 - 104) = v38;
    operator delete(v38);
  }

  MIL::ANEMachineIR::Interpreter::FunctionInterpretStatus::~FunctionInterpretStatus(&__p);
  a35 = a11;
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>>>::~__hash_table(&a36);
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>>>::~__hash_table(v36 - 192);
  _Unwind_Resume(a1);
}

void std::allocator_traits<std::allocator<anonymous namespace::BindTask<unsigned char>>>::destroy[abi:ne200100]<anonymous namespace::BindTask<unsigned char>,0>(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void MIL::ANEMachineIR::Interpreter::FunctionInterpretStatus::~FunctionInterpretStatus(MIL::ANEMachineIR::Interpreter::FunctionInterpretStatus *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::IRTensorValue const>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_259A1C058(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<MIL::MILContext>::shared_ptr[abi:ne200100]<MIL::MILContext,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<MIL::MILContext *,std::shared_ptr<MIL::MILContext>::__shared_ptr_default_delete<MIL::MILContext,MIL::MILContext>,std::allocator<MIL::MILContext>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::MILContext *,std::shared_ptr<MIL::MILContext>::__shared_ptr_default_delete<MIL::MILContext,MIL::MILContext>,std::allocator<MIL::MILContext>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::MILContext *,std::shared_ptr<MIL::MILContext>::__shared_ptr_default_delete<MIL::MILContext,MIL::MILContext>,std::allocator<MIL::MILContext>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_259A1C184(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<MIL::IRProgram>::shared_ptr[abi:ne200100]<MIL::IRProgram,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<MIL::IRProgram *,std::shared_ptr<MIL::IRProgram>::__shared_ptr_default_delete<MIL::IRProgram,MIL::IRProgram>,std::allocator<MIL::IRProgram>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::IRProgram *,std::shared_ptr<MIL::IRProgram>::__shared_ptr_default_delete<MIL::IRProgram,MIL::IRProgram>,std::allocator<MIL::IRProgram>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRProgram *,std::shared_ptr<MIL::IRProgram>::__shared_ptr_default_delete<MIL::IRProgram,MIL::IRProgram>,std::allocator<MIL::IRProgram>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t MIL::IROperator::Make()
{
  return MEMORY[0x282182FF8]();
}

{
  return MEMORY[0x282183008]();
}

uint64_t MIL::Builder::OperationBuilder::AddInputInt32()
{
  return MEMORY[0x282183228]();
}

{
  return MEMORY[0x282183230]();
}

uint64_t MIL::Builder::OperationBuilder::AddInputFloat16()
{
  return MEMORY[0x282183240]();
}

{
  return MEMORY[0x282183248]();
}

uint64_t MIL::Builder::OperationBuilder::AddInput()
{
  return MEMORY[0x282183260]();
}

{
  return MEMORY[0x282183268]();
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7938]();
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return MEMORY[0x2821F7F28](retstr, __val);
}

{
  return MEMORY[0x2821F7F38](retstr, __val);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}