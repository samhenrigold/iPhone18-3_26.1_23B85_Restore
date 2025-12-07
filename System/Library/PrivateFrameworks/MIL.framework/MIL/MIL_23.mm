void sub_21811E398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  if (*(v38 - 89) < 0)
  {
    operator delete(*(v38 - 112));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a38)
  {
    operator delete(a38);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::Shared::ValidateConvolution(MIL::IROperation const&,BOOL,BOOL)::$_0::operator()(uint64_t *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, MIL::ValidationResult *a4@<X8>)
{
  v5 = a2;
  if (!MIL::IROperation::IsParameterSet(*a1, a2))
  {
LABEL_4:

    MIL::ValidationResult::ValidationResult(a4);
    return;
  }

  ParameterType = MIL::IROperation::GetParameterType(*a1, v5);
  v9 = MIL::IRValueType::AsTensorType(ParameterType);
  if (MIL::IRTensorValueType::Rank(v9) == 1)
  {
    if ((*(*v9 + 16))(v9) == a3)
    {
      goto LABEL_4;
    }

    std::operator+<char>();
    v12 = std::string::append(&v30, " must be ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = *(v5 + 23);
    if (v14 < 0)
    {
      if (v5[1] != 3)
      {
LABEL_24:
        v19 = "";
LABEL_25:
        v20 = std::string::append(&v31, v19);
        v21 = *&v20->__r_.__value_.__l.__data_;
        v32.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
        *&v32.__r_.__value_.__l.__data_ = v21;
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        v22 = std::string::append(&v32, "# of spatial input dims");
        v23 = v22->__r_.__value_.__r.__words[0];
        size = v22->__r_.__value_.__l.__size_;
        v33[0] = v22->__r_.__value_.__r.__words[2];
        *(v33 + 3) = *(&v22->__r_.__value_.__r.__words[2] + 3);
        v25 = SHIBYTE(v22->__r_.__value_.__r.__words[2]);
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        LocationPtr = MIL::IRObject::GetLocationPtr(*a1);
        v27 = LocationPtr[1];
        *&v29 = *LocationPtr;
        *(&v29 + 1) = v27;
        if (v27)
        {
          atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
        }

        if (v25 < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v23, size);
        }

        else
        {
          __p.__r_.__value_.__r.__words[0] = v23;
          __p.__r_.__value_.__l.__size_ = size;
          LODWORD(__p.__r_.__value_.__r.__words[2]) = v33[0];
          *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v33 + 3);
          *(&__p.__r_.__value_.__s + 23) = v25;
        }

        MIL::ValidationResult::ValidationResult(a4, &v29, 315, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (*(&v29 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
        }

        if (v25 < 0)
        {
          operator delete(v23);
        }

        return;
      }

      v5 = *v5;
    }

    else if (v14 != 3)
    {
      goto LABEL_24;
    }

    v15 = bswap32(*v5 | (*(v5 + 2) << 16));
    v16 = v15 >= 0x70616400;
    v17 = v15 > 0x70616400;
    v18 = !v16;
    if (v17 == v18)
    {
      v19 = "2 * ";
    }

    else
    {
      v19 = "";
    }

    goto LABEL_25;
  }

  v10 = MIL::IRObject::GetLocationPtr(*a1);
  v11 = v10[1];
  *&v36 = *v10;
  *(&v36 + 1) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v34, "Input dialations should be rank 1");
  MIL::ValidationResult::ValidationResult(a4, &v36, 315, v34);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (*(&v36 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v36 + 1));
  }
}

void sub_21811E954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ValidateBaseGatherWithAxis(MIL::Operators::Common::Shared *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "axis");
  IsParameterSet = MIL::IROperation::IsParameterSet(this, __p);
  v5 = IsParameterSet;
  if (v14 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_12:
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  if (!IsParameterSet)
  {
    goto LABEL_12;
  }

LABEL_3:
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this, __p);
  v7 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "axis");
  ParameterValue = MIL::IROperation::GetParameterValue(this, __p);
  v9 = MIL::IRValue::GetScalar<int>(ParameterValue);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v11 = LocationPtr[1];
  v12[0] = *LocationPtr;
  v12[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_21811EB30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::anonymous namespace::ValidateBaseGatherWithAxisInputs(MIL::IRTensorValueType *a1@<X0>, MIL::Validation *a2@<X1>, void *a3@<X2>, MIL::ValidationResult *a4@<X8>)
{
  v8 = MIL::IRTensorValueType::Rank(a1);
  if ((*(*a1 + 104))(a1) && !MIL::Validation::IsAxisValidForRank(a2, v8))
  {
    v9 = a3[1];
    *&v12 = *a3;
    *(&v12 + 1) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "'axis' must be within range (-x_rank - 1, x_rank) (exclusive)");
    MIL::ValidationResult::ValidationResult(a4, &v12, 315, __p);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    if (*(&v12 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
    }
  }

  else
  {

    MIL::ValidationResult::ValidationResult(a4);
  }
}

void sub_21811EC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ValueTypeInferenceGather(MIL::IRUnknownDimension **a1, uint64_t *a2, void *a3)
{
  v52[1] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v49, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, v49);
  v8 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  v9 = (*(*v8 + 88))(v8);
  v10 = (*(*v8 + 96))(v8);
  std::string::basic_string[abi:ne200100]<0>(v49, "indices");
  v11 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, v49);
  v12 = MIL::IRValueType::AsTensorType(v11);
  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v49, "batch_dims");
  v13 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v49);
  v14 = v13;
  if (v50 < 0)
  {
    operator delete(v49[0]);
    if (!v14)
    {
      goto LABEL_11;
    }
  }

  else if (!v13)
  {
    goto LABEL_11;
  }

  std::string::basic_string[abi:ne200100]<0>(v49, "batch_dims");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, v49);
  v16 = MIL::IRValue::AsTensor(SingleValue);
  v14 = MIL::IRValue::GetScalar<int>(v16);
  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

LABEL_11:
  std::string::basic_string[abi:ne200100]<0>(v49, "axis");
  v17 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, v49);
  v18 = MIL::IRValue::AsTensor(v17);
  v19 = MIL::IRValue::GetScalar<int>(v18);
  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  v20 = a2[1];
  v48[0] = *a2;
  v48[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (!MIL::ValidationResult::IsGood(v49))
  {
    exception = __cxa_allocate_exception(0x48uLL);
    MIL::MILResult::MILResult(v46, v49);
    v46[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
    v47 = v51;
    MIL::ValidationError::ValidationError(exception, v46);
  }

  v21 = (*(*v12 + 96))(v12);
  if (MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(v10))
  {
    if (MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(v21))
    {
      v38 = __cxa_allocate_exception(0x48uLL);
      v39 = a2[1];
      *&v44 = *a2;
      *(&v44 + 1) = v39;
      if (v39)
      {
        atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v43, "'input_shape' and 'indices_shape' cannot both have variadic dimensions.");
      MIL::ValidationResult::ValidationResult(v45, &v44, 315, v43);
      MIL::ValidationError::ValidationError(v38, v45);
    }

    VariadicUnknownDimIndex = MIL::ValueTypeInferenceUtils::FindVariadicUnknownDimIndex(v10);
    v23 = VariadicUnknownDimIndex;
    if ((v19 & 0x80000000) == 0 && VariadicUnknownDimIndex <= v19)
    {
      __p = 0;
      v41 = 0;
      v42 = 0;
      std::vector<std::string const*>::reserve(&__p, VariadicUnknownDimIndex + 1);
      if (v23)
      {
        v24 = 0;
        do
        {
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, (*v10 + v24));
          v24 += 8;
          --v23;
        }

        while (v23);
      }

      v52[0] = MIL::IRUnknownDimension::Make(*a1, 1);
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, v52);
      MIL::IRTensorValueType::MakeWithShape(*a1, v9, &__p);
    }

    if ((v19 & 0x80000000) == 0)
    {
LABEL_30:
      v41 = 0;
      v42 = 0;
      __p = 0;
      std::vector<std::string const*>::reserve(&__p, ((v10[1] - *v10) >> 3) + ((v21[1] - *v21) >> 3) - 1);
      v26 = v19;
      if (v19)
      {
        v27 = 0;
        v28 = v26;
        do
        {
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, (*v10 + v27));
          v27 += 8;
          --v28;
        }

        while (v28);
      }

      v29 = v14;
      v30 = *v21;
      if (v14 < ((v21[1] - *v21) >> 3))
      {
        v31 = 8 * v14;
        do
        {
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, (v30 + v31));
          ++v29;
          v30 = *v21;
          v31 += 8;
        }

        while (v29 < (v21[1] - *v21) >> 3);
      }

      for (i = 8 * v26 + 8; ++v26 < ((v10[1] - *v10) >> 3); i = v33)
      {
        v33 = i + 8;
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, (*v10 + i));
      }

      MIL::IRTensorValueType::MakeWithShape(*a1, v9, &__p);
    }

    v25 = v10[1] - *v10;
    v34 = (v25 >> 3) - VariadicUnknownDimIndex;
    if (v34 <= -v19)
    {
      __p = 0;
      v41 = 0;
      v42 = 0;
      std::vector<std::string const*>::reserve(&__p, v34);
      v52[0] = MIL::IRUnknownDimension::Make(*a1, 1);
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, v52);
      for (j = 8 * v23 + 8; ++v23 < (v10[1] - *v10) >> 3; j = v36)
      {
        v36 = j + 8;
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, (*v10 + j));
      }

      MIL::IRTensorValueType::MakeWithShape(*a1, v9, &__p);
    }
  }

  else
  {
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    v25 = v10[1] - *v10;
  }

  LODWORD(v19) = v19 + (v25 >> 3);
  goto LABEL_30;
}

void sub_21811F2B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  MIL::ValidationResult::~ValidationResult((v27 - 160));
  _Unwind_Resume(a1);
}

uint64_t MIL::Operators::Common::Shared::anonymous namespace::ValidateBatchDimMatch(uint64_t result, void *a2, void *a3, void *a4, uint64_t *a5)
{
  if (result)
  {
    v9 = 0;
    v10 = result;
    do
    {
      result = (*(**(*a2 + 8 * v9) + 32))(*(*a2 + 8 * v9));
      if (result)
      {
        break;
      }

      result = (*(**(*a3 + 8 * v9) + 32))(*(*a3 + 8 * v9));
      if (result)
      {
        break;
      }

      if ((*(**(*a2 + 8 * v9) + 24))(*(*a2 + 8 * v9)) || (result = (*(**(*a3 + 8 * v9) + 24))(*(*a3 + 8 * v9))) != 0)
      {
        result = (*(**(*a2 + 8 * v9) + 24))(*(*a2 + 8 * v9));
        v11 = result ? a3 : a2;
        *(*a4 + 8 * v9) = *(*v11 + 8 * v9);
      }

      else if (*(*a2 + 8 * v9) != *(*a3 + 8 * v9))
      {
        exception = __cxa_allocate_exception(0x48uLL);
        v13 = a5;
        v14 = exception;
        v16 = *v13;
        v15 = v13[1];
        *&v18 = v16;
        *(&v18 + 1) = v15;
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v17, "value and index shape must match for first n=batch_dims dimensions.");
        MIL::ValidationResult::ValidationResult(v19, &v18, 315, v17);
        MIL::ValidationError::ValidationError(v14, v19);
      }

      ++v9;
    }

    while (v10 != v9);
  }

  return result;
}

void sub_21811F5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17)
{
  MIL::ValidationResult::~ValidationResult(&a17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v18)
  {
    __cxa_free_exception(v17);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::Shared::ValueTypeInferenceGatherAlongAxis(uint64_t *a1, uint64_t *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v8 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "axis");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v10 = MIL::IRValue::AsTensor(SingleValue);
  v11 = MIL::IRValue::GetScalar<int>(v10);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = *a2;
  v13 = a2[1];
  v23[0] = v12;
  v23[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (MIL::ValidationResult::IsGood(__p))
  {
    v14 = (*(*v8 + 88))(v8);
    std::string::basic_string[abi:ne200100]<0>(v19, "indices");
    v15 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, v19);
    v16 = MIL::IRValueType::AsTensorType(v15);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }

    v17 = (*(*v16 + 96))(v16);
    v19[0] = 0;
    v19[1] = 0;
    v20 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v19, *v17, *(v17 + 8), (*(v17 + 8) - *v17) >> 3);
    MIL::IRTensorValueType::MakeWithShape(*a1, v14, v19);
  }

  exception = __cxa_allocate_exception(0x48uLL);
  MIL::MILResult::MILResult(v21, __p);
  v21[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
  v22 = v26;
  MIL::ValidationError::ValidationError(exception, v21);
}

void sub_21811F8A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  MIL::ValidationResult::~ValidationResult(&a16);
  MIL::ValidationResult::~ValidationResult(&a25);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::Shared::ValueTypeInferenceGatherNd(MIL::IRUnknownDimension **a1, uint64_t *a2, void *a3)
{
  v37[1] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v34, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &v34);
  v8 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(v34);
  }

  v9 = (*(*v8 + 88))(v8);
  v10 = (*(*v8 + 96))(v8);
  std::string::basic_string[abi:ne200100]<0>(&v34, "indices");
  v11 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &v34);
  v12 = MIL::IRValueType::AsTensorType(v11);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(v34);
  }

  v13 = (*(*v12 + 96))(v12);
  std::string::basic_string[abi:ne200100]<0>(&v34, "batch_dims");
  v14 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &v34);
  v15 = v14;
  if (SHIBYTE(v36) < 0)
  {
    operator delete(v34);
    if (v15)
    {
LABEL_7:
      std::string::basic_string[abi:ne200100]<0>(&v34, "batch_dims");
      SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v34);
      v17 = MIL::IRValue::AsTensor(SingleValue);
      v18 = MIL::IRValue::GetScalar<int>(v17);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(v34);
      }

LABEL_11:
      if (!MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(v10) || !MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(v13))
      {
        v19 = *v13;
        v20 = v13[1] - 1;
        v21 = v20 - *v13;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const* const*>,std::__wrap_iter<MIL::IRDimension const* const*>>(&v34, v19, v20, v21);
        v22 = (*(**(v13[1] - 1) + 16))(*(v13[1] - 1));
        if (v22)
        {
          v23 = (*(*v22 + 48))(v22);
          if (MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(v10) && v23 > MIL::ValueTypeInferenceUtils::FindVariadicUnknownDimIndex(v10))
          {
            v37[0] = MIL::IRUnknownDimension::Make(*a1, 1);
            std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v34, v37);
            MIL::IRTensorValueType::MakeWithShape(*a1, v9, &v34);
          }

          v24 = v10[1];
          if (v23 > &v24[-*v10] >> 3)
          {
            exception = __cxa_allocate_exception(0x48uLL);
            v28 = a2[1];
            *&v30 = *a2;
            *(&v30 + 1) = v28;
            if (v28)
            {
              atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(v29, "The last dimension of indices cannot be larger than the input shape size.");
            MIL::ValidationError::ValidationError(exception, &v30, v29, 315);
          }

          std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const* const*>,std::__wrap_iter<MIL::IRDimension const* const*>>(&v34, v35, (*v10 + 8 * (v23 + v18)), v24, &v24[-*v10 + -8 * v23 + -8 * v18] >> 3);
        }

        else
        {
          v37[0] = MIL::IRUnknownDimension::Make(*a1, 1);
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v34, v37);
        }

        MIL::IRTensorValueType::MakeWithShape(*a1, v9, &v34);
      }

      v25 = __cxa_allocate_exception(0x48uLL);
      v26 = a2[1];
      *&v32 = *a2;
      *(&v32 + 1) = v26;
      if (v26)
      {
        atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v31, "'input_shape' and 'indices_shape' cannot both have variadic dimensions.");
      MIL::ValidationResult::ValidationResult(v33, &v32, 315, v31);
      MIL::ValidationError::ValidationError(v25, v33);
    }
  }

  else if (v14)
  {
    goto LABEL_7;
  }

  v18 = 0;
  goto LABEL_11;
}

void sub_21811FDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24, void *a25)
{
  MIL::ValidationResult::~ValidationResult(&a25);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::Shared::ValidatePropertyVec(uint64_t *a1@<X0>, void *a2@<X1>, void *a4@<X3>, MIL::ValidationResult *a5@<X8>)
{
  v6 = *a1;
  if (a1[1] == *a1)
  {
LABEL_26:

    MIL::ValidationResult::ValidationResult(a5);
    return;
  }

  v10 = 0;
  while (1)
  {
    if (v10 >= (a2[1] - *a2) >> 3)
    {
      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    v11 = *(v6 + 8 * v10);
    v12 = *(*a2 + 8 * v10);
    v13 = MIL::IRProperty::TryAsConstant(v11);
    v14 = MIL::IRProperty::TryAsConstant(v12);
    v15 = v14;
    if (!v13 || v14 == 0)
    {
      break;
    }

    ScalarDataType = MIL::IRConstantProperty::GetScalarDataType(v13);
    if (ScalarDataType == 14)
    {
      UInt8ScalarValue = MIL::IRConstantProperty::GetUInt8ScalarValue(v13);
      if (UInt8ScalarValue == MIL::IRConstantProperty::GetUInt8ScalarValue(v15))
      {
        goto LABEL_25;
      }

      v61 = a4[1];
      *&v82 = *a4;
      *(&v82 + 1) = v61;
      if (v61)
      {
        atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
      }

      std::operator+<char>();
      v62 = std::string::append(&v84, " at index: ");
      v63 = *&v62->__r_.__value_.__l.__data_;
      v85.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
      *&v85.__r_.__value_.__l.__data_ = v63;
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v83, v10);
      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v64 = &v83;
      }

      else
      {
        v64 = v83.__r_.__value_.__r.__words[0];
      }

      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v83.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v83.__r_.__value_.__l.__size_;
      }

      v66 = std::string::append(&v85, v64, size);
      v67 = *&v66->__r_.__value_.__l.__data_;
      v81 = v66->__r_.__value_.__r.__words[2];
      *v80 = v67;
      v66->__r_.__value_.__l.__size_ = 0;
      v66->__r_.__value_.__r.__words[2] = 0;
      v66->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a5, &v82, 313, v80);
      if (SHIBYTE(v81) < 0)
      {
        operator delete(v80[0]);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      v32 = *(&v82 + 1);
      if (!*(&v82 + 1))
      {
        return;
      }

LABEL_46:
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      return;
    }

    if (ScalarDataType != 12)
    {
      v47 = a4[1];
      *&v79 = *a4;
      *(&v79 + 1) = v47;
      if (v47)
      {
        atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
      }

      std::operator+<char>();
      v48 = std::string::append(&v84, " at index: ");
      v49 = *&v48->__r_.__value_.__l.__data_;
      v85.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
      *&v85.__r_.__value_.__l.__data_ = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v83, v10);
      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = &v83;
      }

      else
      {
        v50 = v83.__r_.__value_.__r.__words[0];
      }

      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v51 = v83.__r_.__value_.__l.__size_;
      }

      v52 = std::string::append(&v85, v50, v51);
      v53 = *&v52->__r_.__value_.__l.__data_;
      v78 = v52->__r_.__value_.__r.__words[2];
      *v77 = v53;
      v52->__r_.__value_.__l.__size_ = 0;
      v52->__r_.__value_.__r.__words[2] = 0;
      v52->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a5, &v79, 313, v77);
      if (SHIBYTE(v78) < 0)
      {
        operator delete(v77[0]);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      v32 = *(&v79 + 1);
      if (!*(&v79 + 1))
      {
        return;
      }

      goto LABEL_46;
    }

    Int64ScalarValue = MIL::IRConstantProperty::GetInt64ScalarValue(v13);
    if (Int64ScalarValue != MIL::IRConstantProperty::GetInt64ScalarValue(v15))
    {
      v54 = a4[1];
      *&v88 = *a4;
      *(&v88 + 1) = v54;
      if (v54)
      {
        atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
      }

      std::operator+<char>();
      v55 = std::string::append(&v84, " at index: ");
      v56 = *&v55->__r_.__value_.__l.__data_;
      v85.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
      *&v85.__r_.__value_.__l.__data_ = v56;
      v55->__r_.__value_.__l.__size_ = 0;
      v55->__r_.__value_.__r.__words[2] = 0;
      v55->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v83, v10);
      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v57 = &v83;
      }

      else
      {
        v57 = v83.__r_.__value_.__r.__words[0];
      }

      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v58 = v83.__r_.__value_.__l.__size_;
      }

      v59 = std::string::append(&v85, v57, v58);
      v60 = *&v59->__r_.__value_.__l.__data_;
      v87 = v59->__r_.__value_.__r.__words[2];
      v86 = v60;
      v59->__r_.__value_.__l.__size_ = 0;
      v59->__r_.__value_.__r.__words[2] = 0;
      v59->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a5, &v88, 313, &v86);
      if (SHIBYTE(v87) < 0)
      {
        operator delete(v86);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      v32 = *(&v88 + 1);
      if (!*(&v88 + 1))
      {
        return;
      }

      goto LABEL_46;
    }

LABEL_25:
    ++v10;
    v6 = *a1;
    if (v10 >= (a1[1] - *a1) >> 3)
    {
      goto LABEL_26;
    }
  }

  if (v13)
  {
    v17 = 1;
  }

  else
  {
    v17 = v14 == 0;
  }

  if (v17)
  {
    if (v13)
    {
      v18 = v14 == 0;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      v33 = a4[1];
      *&v73 = *a4;
      *(&v73 + 1) = v33;
      if (v33)
      {
        atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
      }

      std::operator+<char>();
      v34 = std::string::append(&v84, " must not be constant at index: ");
      v35 = *&v34->__r_.__value_.__l.__data_;
      v85.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
      *&v85.__r_.__value_.__l.__data_ = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v83, v10);
      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = &v83;
      }

      else
      {
        v36 = v83.__r_.__value_.__r.__words[0];
      }

      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v37 = v83.__r_.__value_.__l.__size_;
      }

      v38 = std::string::append(&v85, v36, v37);
      v39 = *&v38->__r_.__value_.__l.__data_;
      v72 = v38->__r_.__value_.__r.__words[2];
      *v71 = v39;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a5, &v73, 313, v71);
      if (SHIBYTE(v72) < 0)
      {
        operator delete(v71[0]);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      v32 = *(&v73 + 1);
      if (*(&v73 + 1))
      {
        goto LABEL_46;
      }

      return;
    }

    v19 = MIL::IRProperty::AsUnknown(v11);
    IsVariadic = MIL::IRUnknownProperty::IsVariadic(v19);
    v21 = MIL::IRProperty::AsUnknown(v12);
    if (IsVariadic != MIL::IRUnknownProperty::IsVariadic(v21))
    {
      v40 = a4[1];
      *&v70 = *a4;
      *(&v70 + 1) = v40;
      if (v40)
      {
        atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
      }

      std::operator+<char>();
      v41 = std::string::append(&v84, " in terms of being unknown variadic at index: ");
      v42 = *&v41->__r_.__value_.__l.__data_;
      v85.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
      *&v85.__r_.__value_.__l.__data_ = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v83, v10);
      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = &v83;
      }

      else
      {
        v43 = v83.__r_.__value_.__r.__words[0];
      }

      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v44 = v83.__r_.__value_.__l.__size_;
      }

      v45 = std::string::append(&v85, v43, v44);
      v46 = *&v45->__r_.__value_.__l.__data_;
      v69 = v45->__r_.__value_.__r.__words[2];
      *v68 = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a5, &v70, 313, v68);
      if (SHIBYTE(v69) < 0)
      {
        operator delete(v68[0]);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      v32 = *(&v70 + 1);
      if (*(&v70 + 1))
      {
        goto LABEL_46;
      }

      return;
    }

    goto LABEL_25;
  }

  v25 = a4[1];
  *&v76 = *a4;
  *(&v76 + 1) = v25;
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
  }

  std::operator+<char>();
  v26 = std::string::append(&v84, " must be constant at index: ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v85.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v85.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v83, v10);
  if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &v83;
  }

  else
  {
    v28 = v83.__r_.__value_.__r.__words[0];
  }

  if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v29 = v83.__r_.__value_.__l.__size_;
  }

  v30 = std::string::append(&v85, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v75 = v30->__r_.__value_.__r.__words[2];
  *__p = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  MIL::ValidationResult::ValidationResult(a5, &v76, 313, __p);
  if (SHIBYTE(v75) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  v32 = *(&v76 + 1);
  if (*(&v76 + 1))
  {
    goto LABEL_46;
  }
}

void sub_218120634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, std::__shared_weak_count *a53)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  if (*(v53 - 185) < 0)
  {
    operator delete(*(v53 - 208));
  }

  if (*(v53 - 137) < 0)
  {
    operator delete(*(v53 - 160));
  }

  if (*(v53 - 161) < 0)
  {
    operator delete(*(v53 - 184));
  }

  if (a53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a53);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Operators::Common::Shared::ValidateStridesAndInterleaveFactors@<X0>(uint64_t a1@<X0>, MIL::IRTensorValueType *a2@<X1>, MIL::IRTensorValueType *a3@<X2>, uint64_t a4@<X3>, MIL::ValidationResult *a5@<X8>)
{
  v12[1] = a4;
  v13 = a1;
  v12[0] = &v13;
  std::string::basic_string[abi:ne200100]<0>(__p, "strides");
  MIL::Operators::Common::Shared::ValidateStridesAndInterleaveFactors(MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,std::shared_ptr<MIL::Location const>)::$_0::operator()(a2, v12, __p, a5);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  result = MIL::ValidationResult::IsGood(a5);
  if (result)
  {
    MIL::ValidationResult::~ValidationResult(a5);
    std::string::basic_string[abi:ne200100]<0>(__p, "interleaveFactors");
    MIL::Operators::Common::Shared::ValidateStridesAndInterleaveFactors(MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,std::shared_ptr<MIL::Location const>)::$_0::operator()(a3, v12, __p, a5);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    result = MIL::ValidationResult::IsGood(a5);
    if (result)
    {
      MIL::ValidationResult::~ValidationResult(a5);
      return MIL::ValidationResult::ValidationResult(v9);
    }
  }

  return result;
}

void MIL::Operators::Common::Shared::ValidateStridesAndInterleaveFactors(MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,std::shared_ptr<MIL::Location const>)::$_0::operator()(MIL::IRTensorValueType *this@<X1>, uint64_t a2@<X0>, const void **a3@<X2>, MIL::ValidationResult *a4@<X8>)
{
  if (MIL::IRTensorValueType::Rank(this) != 1)
  {
    v11 = *(a2 + 8);
    v13 = *v11;
    v12 = v11[1];
    *&v29 = v13;
    *(&v29 + 1) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    if (*(a3 + 23) >= 0)
    {
      v14 = *(a3 + 23);
    }

    else
    {
      v14 = a3[1];
    }

    v15 = __p;
    std::string::basic_string[abi:ne200100](__p, v14 + 18);
    if (v28 < 0)
    {
      v15 = __p[0];
    }

    if (v14)
    {
      if (*(a3 + 23) >= 0)
      {
        v16 = a3;
      }

      else
      {
        v16 = *a3;
      }

      memmove(v15, v16, v14);
    }

    strcpy(v15 + v14, " must have rank 1.");
    MIL::ValidationResult::ValidationResult(a4, &v29, 304, __p);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }

    v17 = *(&v29 + 1);
    if (!*(&v29 + 1))
    {
      return;
    }

LABEL_22:
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    return;
  }

  v8 = (*(*this + 96))(this);
  if (*(v8 + 8) == *v8)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  v9 = MIL::IRDimension::AsConstant(**v8);
  v10 = (*(*v9 + 48))(v9);
  if (v10 == MIL::IRTensorValueType::Rank(**a2))
  {

    MIL::ValidationResult::ValidationResult(a4);
    return;
  }

  v18 = *(a2 + 8);
  v20 = *v18;
  v19 = v18[1];
  *&v26 = v20;
  *(&v26 + 1) = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  std::operator+<char>();
  v21 = std::string::append(&v23, " must match the rank of input.");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v25 = v21->__r_.__value_.__r.__words[2];
  *v24 = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  MIL::ValidationResult::ValidationResult(a4, &v26, 304, v24);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v17 = *(&v26 + 1);
  if (*(&v26 + 1))
  {
    goto LABEL_22;
  }
}

void sub_218120C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::CustomValidators::ValidatePixelBufferToTensor(MIL::Operators::Common::Shared::CustomValidators *this)
{
  v8[7] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v8, "input");
  ParameterType = MIL::IROperation::GetParameterType(this, v8);
  v4 = MIL::IRValueType::AsMemoryLayoutType(ParameterType);
  MIL::IRMemoryLayoutValueType::AsPixelBufferType(v4);
  if (SHIBYTE(v8[2]) < 0)
  {
    operator delete(v8[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "plane_index");
  MIL::IROperation::TryGetParameterValueSharedPtr(this, v8, 0, &v6);
  if (SHIBYTE(v8[2]) < 0)
  {
    operator delete(v8[0]);
  }

  OutputType = MIL::IROperation::GetOutputType(this, 0);
  MIL::IRValueType::AsTensorType(OutputType);
  std::string::basic_string[abi:ne200100]<0>(&v7, "input");
  MIL::IRTypedArgument::Make();
}

void sub_2181213D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, char a43)
{
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  v47 = *(v45 - 152);
  if (v47)
  {
    *(v45 - 144) = v47;
    operator delete(v47);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a43);
  v48 = *(v45 - 184);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::Shared::CustomValueTypeInference::ValueTypeInferencePixelBufferToTensor(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v47[2] = *MEMORY[0x277D85DE8];
  if (!a3[3])
  {
    exception = __cxa_allocate_exception(0x48uLL);
    v28 = a2[1];
    *&v45 = *a2;
    *(&v45 + 1) = v28;
    if (v28)
    {
      atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v44, "At least one input is expected.");
    MIL::ValidationResult::ValidationResult(v46, &v45, 300, v44);
    MIL::ValidationError::ValidationError(exception, v46);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "input");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  v8 = MIL::IRValueType::AsMemoryLayoutType(SingleValueType);
  v9 = MIL::IRMemoryLayoutValueType::AsPixelBufferType(v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "plane_index");
  v10 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &__p);
  v11 = v10;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v11)
    {
LABEL_6:
      std::string::basic_string[abi:ne200100]<0>(&__p, "plane_index");
      SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &__p);
      v13 = MIL::IRValue::AsTensor(SingleValue);
      v47[0] = MIL::IRTensorValue::GetDataView<unsigned char>(v13);
      v47[1] = v14;
      v15 = *MIL::Util::Span<unsigned char const,18446744073709551615ul>::At(v47, 0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_10:
      Shape = MIL::IRPixelBufferValueType::GetShape(v9);
      if (Shape[1] - *Shape == 16)
      {
        PixelFormatType = MIL::IRPixelBufferValueType::GetPixelFormatType(v9);
        if (MIL::GetNumPlanesForFormat(PixelFormatType) > v15)
        {
          v18 = MIL::IRPixelBufferValueType::GetPixelFormatType(v9);
          if (MIL::SupportsMultiSlice(v18))
          {
            NumSlices = MIL::IRPixelBufferValueType::GetNumSlices(v9);
            v20 = MIL::IRProperty::AsConstant(*(*NumSlices + 8 * v15));
            Int64ScalarValue = MIL::IRConstantProperty::GetInt64ScalarValue(v20);
          }

          else
          {
            Int64ScalarValue = 0;
          }

          v22 = *a1;
          v23 = MIL::IRPixelBufferValueType::GetPixelFormatType(v9);
          v24 = MIL::IRPixelBufferValueType::GetShape(v9);
          MIL::GetShapeForPlane(v22, Int64ScalarValue, v23, v24, v15, &__p);
          v25 = MIL::IRPixelBufferValueType::GetPixelFormatType(v9);
          DTypeForPixelFormat = MIL::GetDTypeForPixelFormat(v25);
          MIL::IRTensorValueType::MakeWithShape(*a1, DTypeForPixelFormat, &__p);
        }

        v31 = __cxa_allocate_exception(0x48uLL);
        v32 = a2[1];
        *&v38 = *a2;
        *(&v38 + 1) = v32;
        if (v32)
        {
          atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
        }

        v33 = MIL::IRPixelBufferValueType::GetPixelFormatType(v9);
        MIL::IRPixelFormatTypeToString(v33, &__p);
        v34 = std::string::insert(&__p, 0, "Plane index exceeds the number of planes for the given format type: ");
        v35 = *&v34->__r_.__value_.__l.__data_;
        v37 = v34->__r_.__value_.__r.__words[2];
        v36 = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        MIL::ValidationResult::ValidationResult(v39, &v38, 305, &v36);
        MIL::ValidationError::ValidationError(v31, v39);
      }

      v29 = __cxa_allocate_exception(0x48uLL);
      v30 = a2[1];
      *&v41 = *a2;
      *(&v41 + 1) = v30;
      if (v30)
      {
        atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v40, "Input rank must be 2.");
      MIL::ValidationResult::ValidationResult(v42, &v41, 305, v40);
      MIL::ValidationError::ValidationError(v29, v42);
    }
  }

  else if (v10)
  {
    goto LABEL_6;
  }

  v15 = 0;
  goto LABEL_10;
}

void sub_218121A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  MIL::ValidationResult::~ValidationResult(&a17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v45)
  {
    __cxa_free_exception(v44);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::Shared::anonymous namespace::ValidateShapes(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, MIL::ValidationResult *a4@<X8>)
{
  v5 = *a1;
  if (a1[1] == *a1)
  {
LABEL_22:

    MIL::ValidationResult::ValidationResult(a4);
    return;
  }

  v9 = 0;
  while (1)
  {
    if (v9 >= (a2[1] - *a2) >> 3)
    {
      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    v10 = *(v5 + 8 * v9);
    v11 = *(*a2 + 8 * v9);
    v12 = (*(*v10 + 16))(v10);
    v13 = (*(*v11 + 16))(v11);
    v14 = v13;
    if (v12 && v13 != 0)
    {
      break;
    }

    if (v12)
    {
      v16 = 1;
    }

    else
    {
      v16 = v13 == 0;
    }

    if (!v16)
    {
      v22 = a3[1];
      *&v43 = *a3;
      *(&v43 + 1) = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      std::to_string(&v44, v9);
      v23 = std::string::insert(&v44, 0, "Output dim must be constant at index: ");
      v24 = *&v23->__r_.__value_.__l.__data_;
      v42 = v23->__r_.__value_.__r.__words[2];
      *__p = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a4, &v43, 313, __p);
      if (SHIBYTE(v42) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      v25 = *(&v43 + 1);
      if (*(&v43 + 1))
      {
        goto LABEL_32;
      }

      return;
    }

    if (v12)
    {
      v17 = v13 == 0;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      v29 = a3[1];
      *&v40 = *a3;
      *(&v40 + 1) = v29;
      if (v29)
      {
        atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
      }

      std::to_string(&v44, v9);
      v30 = std::string::insert(&v44, 0, "Output dim must not be constant at index: ");
      v31 = *&v30->__r_.__value_.__l.__data_;
      v39 = v30->__r_.__value_.__r.__words[2];
      *v38 = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a4, &v40, 313, v38);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(v38[0]);
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      v25 = *(&v40 + 1);
      if (*(&v40 + 1))
      {
        goto LABEL_32;
      }

      return;
    }

    v18 = MIL::IRDimension::AsUnknown(v10);
    v19 = (*(*v18 + 32))(v18);
    v20 = MIL::IRDimension::AsUnknown(v11);
    if (v19 != (*(*v20 + 32))(v20))
    {
      v32 = a3[1];
      *&v37 = *a3;
      *(&v37 + 1) = v32;
      if (v32)
      {
        atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
      }

      std::to_string(&v44, v9);
      v33 = std::string::insert(&v44, 0, "Unexpected unknown dim in terms of being variadic at index: ");
      v34 = *&v33->__r_.__value_.__l.__data_;
      v36 = v33->__r_.__value_.__r.__words[2];
      *v35 = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a4, &v37, 313, v35);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(v35[0]);
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      v25 = *(&v37 + 1);
      if (*(&v37 + 1))
      {
        goto LABEL_32;
      }

      return;
    }

LABEL_21:
    ++v9;
    v5 = *a1;
    if (v9 >= (a1[1] - *a1) >> 3)
    {
      goto LABEL_22;
    }
  }

  v21 = (*(*v12 + 48))(v12);
  if (v21 == (*(*v14 + 48))(v14))
  {
    goto LABEL_21;
  }

  v26 = a3[1];
  *&v47 = *a3;
  *(&v47 + 1) = v26;
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  std::to_string(&v44, v9);
  v27 = std::string::insert(&v44, 0, "Unexpected output constant dim at index: ");
  v28 = *&v27->__r_.__value_.__l.__data_;
  v46 = v27->__r_.__value_.__r.__words[2];
  v45 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  MIL::ValidationResult::ValidationResult(a4, &v47, 313, &v45);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  v25 = *(&v47 + 1);
  if (*(&v47 + 1))
  {
LABEL_32:
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }
}

void sub_218121FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

unint64_t MIL::Util::Span<unsigned char const,18446744073709551615ul>::At(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  return *a1 + a2;
}

void MIL::Operators::Common::Shared::CustomValidators::ValidateTensorToPixelBuffer(MIL::Operators::Common::Shared::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v19, "pixel_format_type");
  MIL::IROperation::TryGetParameterValueSharedPtr(this, v19, 0, &v17);
  if ((v19[23] & 0x80000000) != 0)
  {
    operator delete(*v19);
  }

  std::string::basic_string[abi:ne200100]<0>(v19, "bytes_per_row");
  MIL::IROperation::TryGetParameterType(this, v19, 0);
  if ((v19[23] & 0x80000000) != 0)
  {
    operator delete(*v19);
  }

  std::string::basic_string[abi:ne200100]<0>(v19, "num_slices");
  MIL::IROperation::TryGetParameterType(this, v19, 0);
  if ((v19[23] & 0x80000000) != 0)
  {
    operator delete(*v19);
  }

  OutputType = MIL::IROperation::GetOutputType(this, 0);
  v5 = MIL::IRValueType::AsMemoryLayoutType(OutputType);
  MIL::IRMemoryLayoutValueType::AsPixelBufferType(v5);
  MIL::IRValue::GetScalar<std::string>(v17, v19);
  v6 = MIL::StringToIRPixelFormatType(v19);
  NumPlanesForFormat = MIL::GetNumPlanesForFormat(v6);
  if ((v19[23] & 0x80000000) != 0)
  {
    operator delete(*v19);
  }

  std::string::basic_string[abi:ne200100]<0>(v19, "input");
  v8 = (*(*this + 152))(this, v19);
  if ((v19[23] & 0x80000000) != 0)
  {
    operator delete(*v19);
  }

  if (v8 == NumPlanesForFormat)
  {
    std::vector<std::shared_ptr<MIL::IRTypedArgument>>::vector[abi:ne200100](&v13, NumPlanesForFormat);
    if (NumPlanesForFormat)
    {
      std::string::basic_string[abi:ne200100]<0>(v19, "input");
      ParameterType = MIL::IROperation::GetParameterType(this, v19);
      MIL::IRValueType::AsTensorType(ParameterType);
      MIL::IRTypedArgument::Make();
    }

    std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>::pair[abi:ne200100]<char const(&)[6],std::vector<std::shared_ptr<MIL::IRTypedArgument>>&,0>(v19, "input", &v13);
    std::string::basic_string[abi:ne200100]<0>(&v12, "pixel_format_type");
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::IRTypedArgument::Make();
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v11 = LocationPtr[1];
  *&v16 = *LocationPtr;
  *(&v16 + 1) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Mismatch between expected number of planes and pixel format.");
  MIL::ValidationResult::ValidationResult(a2, &v16, 315, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(&v16 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void sub_21812363C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, void *a60, uint64_t a61, uint64_t a62, char *a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v65 - 169) < 0)
  {
    operator delete(*(v65 - 192));
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a60)
  {
    operator delete(a60);
  }

  v67 = *(v65 - 200);
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a63);
  a63 = &a65;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a63);
  v68 = *(v65 - 240);
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::Shared::CustomValueTypeInference::ValueTypeInferenceTensorToPixelBuffer(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v102[2] = *MEMORY[0x277D85DE8];
  if ((a3[3] - 2) >= 3)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    v69 = a2[1];
    *&v100 = *a2;
    *(&v100 + 1) = v69;
    if (v69)
    {
      atomic_fetch_add_explicit((v69 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v99, "Two or three inputs are expected.");
    MIL::ValidationResult::ValidationResult(v101, &v100, 300, v99);
    MIL::ValidationError::ValidationError(exception, v101);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "input");
  MIL::ValueTypeInferenceUtils::GetVariadicValueTypes(a3, __p, v98);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&v95, "pixel_format_type");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v95);
  MIL::IRValue::GetScalar<std::string>(SingleValue, __p);
  v8 = MIL::StringToIRPixelFormatType(__p);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v97) < 0)
  {
    operator delete(v95);
  }

  v10 = v98[0];
  v9 = v98[1];
  if (MIL::GetNumPlanesForFormat(v8) != (v9 - v10) >> 3)
  {
    v70 = __cxa_allocate_exception(0x48uLL);
    v71 = a2[1];
    *&v93 = *a2;
    *(&v93 + 1) = v71;
    if (v71)
    {
      atomic_fetch_add_explicit((v71 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v92, "Mismatch between expected number of planes and pixel format.");
    MIL::ValidationResult::ValidationResult(v94, &v93, 315, v92);
    MIL::ValidationError::ValidationError(v70, v94);
  }

  v11 = MIL::IRValueType::AsTensorType(*v98[0]);
  v12 = (*(*v11 + 96))(v11);
  v95 = 0;
  v96 = 0;
  v97 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v95, *v12, *(v12 + 8), (*(v12 + 8) - *v12) >> 3);
  v13 = v95;
  v14 = v96 - (v95 + 1);
  if (v96 != v95 + 1)
  {
    memmove(v95, v95 + 1, v96 - (v95 + 1));
  }

  v96 = (v13 + v14);
  v15 = MIL::IRValueType::AsTensorType(*v98[0]);
  v16 = (*(*v15 + 88))(v15);
  if (v16 != MIL::GetDTypeForPixelFormat(v8))
  {
    v72 = __cxa_allocate_exception(0x48uLL);
    v73 = a2[1];
    *&v90 = *a2;
    *(&v90 + 1) = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v89, "Unexpected pixel format type for the given tensor dtype.");
    MIL::ValidationResult::ValidationResult(v91, &v90, 313, v89);
    MIL::ValidationError::ValidationError(v72, v91);
  }

  for (i = 1; MIL::GetNumPlanesForFormat(v8) > i; ++i)
  {
    v18 = MIL::IRValueType::AsTensorType(*(v98[0] + 8 * i));
    v19 = (*(*v18 + 96))(v18);
    memset(__p, 0, 24);
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, *v19, *(v19 + 8), (*(v19 + 8) - *v19) >> 3);
    MIL::GetShapeForPlane(*a1, 0, v8, &v95, i, v88);
    if ((MIL::Validation::IsEqualConstShape(__p, v88) & 1) == 0)
    {
      v56 = __cxa_allocate_exception(0x48uLL);
      v57 = a2[1];
      *&v86 = *a2;
      *(&v86 + 1) = v57;
      if (v57)
      {
        atomic_fetch_add_explicit((v57 + 8), 1uLL, memory_order_relaxed);
      }

      std::to_string(&v82, i);
      v58 = std::string::insert(&v82, 0, "Plane index ");
      v59 = *&v58->__r_.__value_.__l.__data_;
      v83.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
      *&v83.__r_.__value_.__l.__data_ = v59;
      v58->__r_.__value_.__l.__size_ = 0;
      v58->__r_.__value_.__r.__words[2] = 0;
      v58->__r_.__value_.__r.__words[0] = 0;
      v60 = std::string::append(&v83, " has unexpected shape.");
      v61 = *&v60->__r_.__value_.__l.__data_;
      v85 = v60->__r_.__value_.__r.__words[2];
      v84 = v61;
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(v87, &v86, 315, &v84);
      MIL::ValidationError::ValidationError(v56, v87);
    }

    v20 = MIL::IRValueType::AsTensorType(*(v98[0] + 8 * i));
    if ((*(*v20 + 88))(v20) != v16)
    {
      v62 = __cxa_allocate_exception(0x48uLL);
      v63 = a2[1];
      *&v80 = *a2;
      *(&v80 + 1) = v63;
      if (v63)
      {
        atomic_fetch_add_explicit((v63 + 8), 1uLL, memory_order_relaxed);
      }

      std::to_string(&v82, i);
      v64 = std::string::insert(&v82, 0, "Plane index ");
      v65 = *&v64->__r_.__value_.__l.__data_;
      v83.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
      *&v83.__r_.__value_.__l.__data_ = v65;
      v64->__r_.__value_.__l.__size_ = 0;
      v64->__r_.__value_.__r.__words[2] = 0;
      v64->__r_.__value_.__r.__words[0] = 0;
      v66 = std::string::append(&v83, " has unexpected dtype.");
      v67 = *&v66->__r_.__value_.__l.__data_;
      v79 = v66->__r_.__value_.__r.__words[2];
      v78 = v67;
      v66->__r_.__value_.__l.__size_ = 0;
      v66->__r_.__value_.__r.__words[2] = 0;
      v66->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(v81, &v80, 315, &v78);
      MIL::ValidationError::ValidationError(v62, v81);
    }

    if (v88[0])
    {
      v88[1] = v88[0];
      operator delete(v88[0]);
    }

    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }
  }

  memset(v88, 0, sizeof(v88));
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v88, v95, v96, v96 - v95);
  memset(&v83, 0, sizeof(v83));
  std::string::basic_string[abi:ne200100]<0>(__p, "bytes_per_row");
  v21 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  v22 = v21;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if (!v22)
    {
      goto LABEL_40;
    }
  }

  else if (!v21)
  {
    goto LABEL_40;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "bytes_per_row");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v24 = MIL::IRValueType::AsTensorType(SingleValueType);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v25 = (*(*v24 + 96))(v24);
  if (*(v25 + 8) == *v25)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  v26 = MIL::IRDimension::AsConstant(**v25);
  v27 = (*(*v26 + 48))(v26);
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](__p, v27);
  v28 = *__p;
  v83 = *__p;
  v74 = *&__p[8];
  std::string::basic_string[abi:ne200100]<0>(__p, "bytes_per_row");
  v29 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, __p);
  v30 = v29;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if (v30)
    {
      goto LABEL_30;
    }
  }

  else if (v29)
  {
LABEL_30:
    std::string::basic_string[abi:ne200100]<0>(__p, "bytes_per_row");
    v31 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
    v32 = MIL::IRValue::AsTensor(v31);
    v82.__r_.__value_.__r.__words[0] = MIL::IRTensorValue::GetDataView<long long>(v32);
    v82.__r_.__value_.__l.__size_ = v33;
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (v74 != v28)
    {
      v34 = 0;
      do
      {
        v35 = *a1;
        v36 = MIL::Util::Span<long long const,18446744073709551615ul>::At(&v82, v34);
        *(v28 + 8 * v34++) = MIL::IRConstantProperty::MakeInt64Scalar(v35, *v36);
        v28 = v83.__r_.__value_.__r.__words[0];
      }

      while (v34 < (v83.__r_.__value_.__l.__size_ - v83.__r_.__value_.__r.__words[0]) >> 3);
    }

    goto LABEL_40;
  }

  if (v74 != v28)
  {
    v37 = 0;
    do
    {
      *(v28 + 8 * v37++) = MIL::IRUnknownProperty::Make(*a1, 0);
      v28 = v83.__r_.__value_.__r.__words[0];
    }

    while (v37 < (v83.__r_.__value_.__l.__size_ - v83.__r_.__value_.__r.__words[0]) >> 3);
  }

LABEL_40:
  memset(&v82, 0, sizeof(v82));
  std::string::basic_string[abi:ne200100]<0>(__p, "num_slices");
  v38 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  v39 = v38;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if (!v39)
    {
      goto LABEL_59;
    }
  }

  else if (!v38)
  {
    goto LABEL_59;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "num_slices");
  v40 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v41 = MIL::IRValueType::AsTensorType(v40);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v42 = (*(*v41 + 96))(v41);
  if (*(v42 + 8) == *v42)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  v43 = MIL::IRDimension::AsConstant(**v42);
  v44 = (*(*v43 + 48))(v43);
  std::vector<MIL::IRProperty const*>::vector[abi:ne200100](__p, v44);
  v45 = *__p;
  v82 = *__p;
  v75 = *&__p[8];
  std::string::basic_string[abi:ne200100]<0>(__p, "num_slices");
  v46 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, __p);
  v47 = v46;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if (v47)
    {
      goto LABEL_49;
    }
  }

  else if (v46)
  {
LABEL_49:
    std::string::basic_string[abi:ne200100]<0>(__p, "num_slices");
    v48 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
    v49 = MIL::IRValue::AsTensor(v48);
    v102[0] = MIL::IRTensorValue::GetDataView<long long>(v49);
    v102[1] = v50;
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (v75 != v45)
    {
      v51 = 0;
      do
      {
        v52 = *a1;
        v53 = MIL::Util::Span<long long const,18446744073709551615ul>::At(v102, v51);
        *(v45 + 8 * v51++) = MIL::IRConstantProperty::MakeInt64Scalar(v52, *v53);
        v45 = v82.__r_.__value_.__r.__words[0];
      }

      while (v51 < (v82.__r_.__value_.__l.__size_ - v82.__r_.__value_.__r.__words[0]) >> 3);
    }

    goto LABEL_59;
  }

  if (v75 != v45)
  {
    v54 = 0;
    do
    {
      *(v45 + 8 * v54++) = MIL::IRUnknownProperty::Make(*a1, 0);
      v45 = v82.__r_.__value_.__r.__words[0];
    }

    while (v54 < (v82.__r_.__value_.__l.__size_ - v82.__r_.__value_.__r.__words[0]) >> 3);
  }

LABEL_59:
  v55 = *a1;
  memset(__p, 0, sizeof(__p));
  v77 = 1065353216;
  MIL::IRPixelBufferValueType::MakeWithShapeBytesPerRowNumSlices(v55, v8, v88, &v83, &v82, __p);
}

void sub_21812479C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, std::__shared_weak_count *a59, void *a60)
{
  MIL::ValidationResult::~ValidationResult(&a60);
  if (a57 < 0)
  {
    operator delete(__p);
  }

  if (a59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a59);
  }

  if (v61)
  {
    __cxa_free_exception(v60);
  }

  v64 = *(v62 - 248);
  if (v64)
  {
    *(v62 - 240) = v64;
    operator delete(v64);
  }

  v65 = *(v62 - 224);
  if (v65)
  {
    *(v62 - 216) = v65;
    operator delete(v65);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::Shared::anonymous namespace::ValidatePropertyVecPtr(uint64_t *a1@<X0>, void *a2@<X1>, void *a4@<X3>, uint64_t a5@<X8>)
{
  if (!a1 && a2)
  {
    v6 = a4[1];
    *&v18 = *a4;
    *(&v18 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    MIL::ValidationResult::ValidationResult(a5, &v18, 313, &v16);
    if (v17 < 0)
    {
      operator delete(v16);
    }

    v7 = *(&v18 + 1);
    if (!*(&v18 + 1))
    {
      return;
    }

LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    return;
  }

  if (!a1 || a2)
  {
    if (a1 && a2)
    {
      v9 = a4[1];
      v10[0] = *a4;
      v10[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::Operators::Common::Shared::ValidatePropertyVec(a1, a2, v10, v11);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      if (!(*(v11[0] + 2))(v11))
      {
        MIL::MILResult::MILResult(a5, v11);
        *a5 = &unk_2829E9B70;
        *(a5 + 48) = v12;
        MIL::ValidationResult::~ValidationResult(v11);
        return;
      }

      MIL::ValidationResult::~ValidationResult(v11);
    }

    MIL::ValidationResult::ValidationResult(a5);
    return;
  }

  v8 = a4[1];
  *&v15 = *a4;
  *(&v15 + 1) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  std::operator+<char>();
  MIL::ValidationResult::ValidationResult(a5, &v15, 313, &__p);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  v7 = *(&v15 + 1);
  if (*(&v15 + 1))
  {
    goto LABEL_16;
  }
}

void sub_218124CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

unint64_t MIL::Util::Span<long long const,18446744073709551615ul>::At(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  return *a1 + 8 * a2;
}

void MIL::Operators::Common::Shared::CustomValidators::ValidateTensorBufferToTensor(MIL::Operators::Common::Shared::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v24, "input");
  ParameterType = MIL::IROperation::GetParameterType(this, v24);
  v5 = MIL::IRValueType::AsMemoryLayoutType(ParameterType);
  v6 = MIL::IRMemoryLayoutValueType::AsTensorBufferType(v5);
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  OutputType = MIL::IROperation::GetOutputType(this, 0);
  v8 = MIL::IRValueType::AsTensorType(OutputType);
  Shape = MIL::IRTensorBufferValueType::GetShape(v6);
  v10 = (*(*v8 + 96))(v8);
  v11 = *(Shape + 8) - *Shape;
  if (v11 == *(v10 + 8) - *v10 && !memcmp(*Shape, *v10, v11))
  {
    RowAlignmentInBytes = MIL::IRTensorBufferValueType::TryGetRowAlignmentInBytes(v6);
    if (!MIL::IRProperty::TryAsUnknown(RowAlignmentInBytes))
    {
      MIL::ValidationResult::ValidationResult(a2);
      return;
    }

    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v17 = LocationPtr[1];
    *&v20 = *LocationPtr;
    *(&v20 + 1) = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v18, "Row_alignment_in_bytes in input cannot be unknown.");
    MIL::ValidationResult::ValidationResult(a2, &v20, 313, v18);
    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    v14 = *(&v20 + 1);
    if (*(&v20 + 1))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = MIL::IRObject::GetLocationPtr(this);
    v13 = v12[1];
    *&v23 = *v12;
    *(&v23 + 1) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Output shape must match the input shape.");
    MIL::ValidationResult::ValidationResult(a2, &v23, 313, __p);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    v14 = *(&v23 + 1);
    if (*(&v23 + 1))
    {
LABEL_10:
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }
}

void sub_218124F9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::CustomValueTypeInference::ValueTypeInferenceTensorBufferToTensor(uint64_t *a1, void x1_0, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "input");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, __p);
  v6 = MIL::IRValueType::AsMemoryLayoutType(SingleValueType);
  v7 = MIL::IRMemoryLayoutValueType::AsTensorBufferType(v6);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  Shape = MIL::IRTensorBufferValueType::GetShape(v7);
  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, *Shape, *(Shape + 8), (*(Shape + 8) - *Shape) >> 3);
  v9 = *a1;
  DataType = MIL::IRTensorBufferValueType::GetDataType(v7);
  MIL::IRTensorValueType::MakeWithShape(v9, DataType, __p);
}

void sub_21812511C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::CustomValidators::ValidateTensorToTensorBuffer(MIL::Operators::Common::Shared::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  v27[9] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v27, "input");
  ParameterType = MIL::IROperation::GetParameterType(this, v27);
  MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v27[2]) < 0)
  {
    operator delete(v27[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v27, "strides");
  MIL::IROperation::TryGetParameterValueSharedPtr(this, v27, 0, &v25);
  if (SHIBYTE(v27[2]) < 0)
  {
    operator delete(v27[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v27, "strides");
  v5 = MIL::IROperation::TryGetParameterType(this, v27, 0);
  if (SHIBYTE(v27[2]) < 0)
  {
    operator delete(v27[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v27, "row_alignment_in_bytes");
  MIL::IROperation::TryGetParameterValueSharedPtr(this, v27, 0, &v23);
  if (SHIBYTE(v27[2]) < 0)
  {
    operator delete(v27[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v27, "interleave_factors");
  MIL::IROperation::TryGetParameterValueSharedPtr(this, v27, 0, &v21);
  if (SHIBYTE(v27[2]) < 0)
  {
    operator delete(v27[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v27, "interleave_factors");
  v6 = MIL::IROperation::GetParameterType(this, v27);
  MIL::IRValueType::AsTensorType(v6);
  if (SHIBYTE(v27[2]) < 0)
  {
    operator delete(v27[0]);
  }

  OutputType = MIL::IROperation::GetOutputType(this, 0);
  v8 = MIL::IRValueType::AsMemoryLayoutType(OutputType);
  MIL::IRMemoryLayoutValueType::AsTensorBufferType(v8);
  if (v5)
  {
    if (v23)
    {
      LocationPtr = MIL::IRObject::GetLocationPtr(this);
      v10 = LocationPtr[1];
      *&v17 = *LocationPtr;
      *(&v17 + 1) = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Both strides and row_alignment_in_bytes cannot be specified as an input parameter simultaneously in ios18 and above opsets.");
      MIL::ValidationResult::ValidationResult(a2, &v17, 315, __p);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      v11 = *(&v17 + 1);
      if (!*(&v17 + 1))
      {
        goto LABEL_29;
      }

LABEL_28:
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      goto LABEL_29;
    }

LABEL_22:
    std::string::basic_string[abi:ne200100]<0>(&v14, "input");
    MIL::IRTypedArgument::Make();
  }

  if (v23)
  {
    goto LABEL_22;
  }

  v12 = MIL::IRObject::GetLocationPtr(this);
  v13 = v12[1];
  *&v20 = *v12;
  *(&v20 + 1) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v18, "One of strides or row_alignment_in_bytes is a required input parameter in ios18 and above opsets.");
  MIL::ValidationResult::ValidationResult(a2, &v20, 316, v18);
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  v11 = *(&v20 + 1);
  if (*(&v20 + 1))
  {
    goto LABEL_28;
  }

LABEL_29:
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }
}

void sub_218126264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a61)
  {
    operator delete(a61);
  }

  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a64);
  v67 = *(v65 - 208);
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  v68 = *(v65 - 192);
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  v69 = *(v65 - 176);
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::Shared::CustomValueTypeInference::ValueTypeInferenceTensorToTensorBuffer(MIL::IRUnknownProperty **a1, void *a2, void *a3)
{
  v103 = *MEMORY[0x277D85DE8];
  if (a3[3] != 3)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    v59 = a2[1];
    *&v101 = *a2;
    *(&v101 + 1) = v59;
    if (v59)
    {
      atomic_fetch_add_explicit((v59 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v100, "Three inputs are expected.");
    MIL::ValidationResult::ValidationResult(v102, &v101, 300, v100);
    MIL::ValidationError::ValidationError(exception, v102);
  }

  std::string::basic_string[abi:ne200100]<0>(v97, "input");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, v97);
  v8 = MIL::IRValueType::AsTensorType(SingleValueType);
  if ((v97[23] & 0x80000000) != 0)
  {
    operator delete(*v97);
  }

  std::string::basic_string[abi:ne200100]<0>(v97, "interleave_factors");
  v9 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, v97);
  v10 = MIL::IRValueType::AsTensorType(v9);
  if ((v97[23] & 0x80000000) != 0)
  {
    operator delete(*v97);
  }

  std::string::basic_string[abi:ne200100]<0>(v97, "strides");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v97);
  if ((v97[23] & 0x80000000) != 0)
  {
    operator delete(*v97);
  }

  if (!v11)
  {
    v90 = 0;
    v91 = 0;
    v92 = 0;
    std::string::basic_string[abi:ne200100]<0>(v97, "row_alignment_in_bytes");
    SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, v97);
    v29 = MIL::IRValue::AsTensor(SingleValue);
    v30 = MIL::IRValue::GetScalar<unsigned long long>(v29);
    if ((v97[23] & 0x80000000) != 0)
    {
      operator delete(*v97);
    }

    v31 = (*(*v8 + 88))(v8);
    v33 = v31 == 15 || v31 == 10 || v31 == 4;
    if (v33 && v30 <= 1)
    {
      v61 = __cxa_allocate_exception(0x48uLL);
      v62 = a2[1];
      *&v89 = *a2;
      *(&v89 + 1) = v62;
      if (v62)
      {
        atomic_fetch_add_explicit((v62 + 8), 1uLL, memory_order_relaxed);
      }

      std::to_string(&v86, v30);
      v63 = std::string::insert(&v86, 0, "Row_alignment_in_bytes is ");
      v64 = *&v63->__r_.__value_.__l.__data_;
      *&v97[16] = *(&v63->__r_.__value_.__l + 2);
      *v97 = v64;
      v63->__r_.__value_.__l.__size_ = 0;
      v63->__r_.__value_.__r.__words[2] = 0;
      v63->__r_.__value_.__r.__words[0] = 0;
      v65 = std::string::append(v97, ", it needs to have a minimum value equal to the natural alignment 2 of the input datatype");
      v66 = *&v65->__r_.__value_.__l.__data_;
      v88 = v65->__r_.__value_.__r.__words[2];
      v87 = v66;
      v65->__r_.__value_.__l.__size_ = 0;
      v65->__r_.__value_.__r.__words[2] = 0;
      v65->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationError::ValidationError(v61, &v89, &v87, 315);
    }

    v35 = v31 == 16 || v31 == 11 || v31 == 5;
    if (v35 && v30 <= 3)
    {
      v67 = __cxa_allocate_exception(0x48uLL);
      v68 = a2[1];
      *&v85 = *a2;
      *(&v85 + 1) = v68;
      if (v68)
      {
        atomic_fetch_add_explicit((v68 + 8), 1uLL, memory_order_relaxed);
      }

      std::to_string(&v86, v30);
      v69 = std::string::insert(&v86, 0, "Row_alignment_in_bytes is ");
      v70 = *&v69->__r_.__value_.__l.__data_;
      *&v97[16] = *(&v69->__r_.__value_.__l + 2);
      *v97 = v70;
      v69->__r_.__value_.__l.__size_ = 0;
      v69->__r_.__value_.__r.__words[2] = 0;
      v69->__r_.__value_.__r.__words[0] = 0;
      v71 = std::string::append(v97, ", it needs to have a minimum value equal to the natural alignment 4 of the input datatype");
      v72 = *&v71->__r_.__value_.__l.__data_;
      v84 = v71->__r_.__value_.__r.__words[2];
      v83 = v72;
      v71->__r_.__value_.__l.__size_ = 0;
      v71->__r_.__value_.__r.__words[2] = 0;
      v71->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationError::ValidationError(v67, &v85, &v83, 315);
    }

    if ((v30 ^ (v30 - 1)) <= v30 - 1)
    {
      v73 = __cxa_allocate_exception(0x48uLL);
      v74 = a2[1];
      *&v82 = *a2;
      *(&v82 + 1) = v74;
      if (v74)
      {
        atomic_fetch_add_explicit((v74 + 8), 1uLL, memory_order_relaxed);
      }

      std::to_string(&v86, v30);
      v75 = std::string::insert(&v86, 0, "Row_alignment_in_bytes is ");
      v76 = *&v75->__r_.__value_.__l.__data_;
      *&v97[16] = *(&v75->__r_.__value_.__l + 2);
      *v97 = v76;
      v75->__r_.__value_.__l.__size_ = 0;
      v75->__r_.__value_.__r.__words[2] = 0;
      v75->__r_.__value_.__r.__words[0] = 0;
      v77 = std::string::append(v97, ", it needs to be a power-of-2.");
      v78 = *&v77->__r_.__value_.__l.__data_;
      v81 = v77->__r_.__value_.__r.__words[2];
      v80 = v78;
      v77->__r_.__value_.__l.__size_ = 0;
      v77->__r_.__value_.__r.__words[2] = 0;
      v77->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationError::ValidationError(v73, &v82, &v80, 315);
    }

    UInt64Scalar = MIL::IRConstantProperty::MakeUInt64Scalar(*a1, v30);
LABEL_55:
    v39 = (*(*v10 + 96))(v10);
    if (*(v39 + 8) == *v39)
    {
      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    v40 = MIL::IRDimension::AsConstant(**v39);
    v41 = (*(*v40 + 48))(v40);
    std::vector<MIL::IRProperty const*>::vector[abi:ne200100](&v86, v41);
    std::string::basic_string[abi:ne200100]<0>(v97, "interleave_factors");
    v42 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, v97);
    v43 = v42;
    if ((v97[23] & 0x80000000) != 0)
    {
      operator delete(*v97);
      if (v43)
      {
        goto LABEL_58;
      }
    }

    else if (v42)
    {
LABEL_58:
      std::string::basic_string[abi:ne200100]<0>(v97, "interleave_factors");
      v44 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, v97);
      v45 = MIL::IRValue::AsTensor(v44);
      __p[0] = MIL::IRTensorValue::GetDataView<unsigned char>(v45);
      __p[1] = v46;
      if ((v97[23] & 0x80000000) != 0)
      {
        operator delete(*v97);
      }

      if (v86.__r_.__value_.__l.__size_ != v86.__r_.__value_.__r.__words[0])
      {
        v47 = 0;
        do
        {
          v48 = *a1;
          v49 = MIL::Util::Span<unsigned char const,18446744073709551615ul>::At(__p, v47);
          UInt8Scalar = MIL::IRConstantProperty::MakeUInt8Scalar(v48, *v49);
          *(v86.__r_.__value_.__r.__words[0] + 8 * v47++) = UInt8Scalar;
        }

        while (v47 < (v86.__r_.__value_.__l.__size_ - v86.__r_.__value_.__r.__words[0]) >> 3);
      }

      goto LABEL_68;
    }

    if (v86.__r_.__value_.__l.__size_ != v86.__r_.__value_.__r.__words[0])
    {
      v51 = 0;
      do
      {
        v52 = MIL::IRUnknownProperty::Make(*a1, 0);
        *(v86.__r_.__value_.__r.__words[0] + 8 * v51++) = v52;
      }

      while (v51 < (v86.__r_.__value_.__l.__size_ - v86.__r_.__value_.__r.__words[0]) >> 3);
    }

LABEL_68:
    v53 = (*(*v8 + 96))(v8);
    memset(__p, 0, sizeof(__p));
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, *v53, *(v53 + 8), (*(v53 + 8) - *v53) >> 3);
    if (v11)
    {
      v54 = *a1;
      v55 = (*(*v8 + 88))(v8);
      memset(v97, 0, sizeof(v97));
      v98 = 1065353216;
      MIL::IRTensorBufferValueType::MakeWithShape(v54, v55, __p, &v90, &v86, v97);
    }

    v56 = *a1;
    v57 = (*(*v8 + 88))(v8);
    memset(v97, 0, sizeof(v97));
    v98 = 1065353216;
    MIL::IRTensorBufferValueType::MakeWithShapeAndRowAlignment(v56, v57, __p, UInt64Scalar, &v86, v97);
  }

  std::string::basic_string[abi:ne200100]<0>(v97, "strides");
  v12 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, v97);
  v13 = MIL::IRValueType::AsTensorType(v12);
  if ((v97[23] & 0x80000000) != 0)
  {
    operator delete(*v97);
  }

  v14 = a2[1];
  v95 = *a2;
  v96 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::Shared::ValidateStridesAndInterleaveFactors(v8, v13, v10, &v95, v97);
  if (v96)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v96);
  }

  if (!MIL::ValidationResult::IsGood(v97))
  {
    v60 = __cxa_allocate_exception(0x48uLL);
    MIL::MILResult::MILResult(v93, v97);
    v93[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
    v94 = v99;
    MIL::ValidationError::ValidationError(v60, v93);
  }

  MIL::ValidationResult::~ValidationResult(v97);
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v15 = (*(*v13 + 96))(v13);
  if (*(v15 + 8) == *v15)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  v16 = MIL::IRDimension::AsConstant(**v15);
  v17 = (*(*v16 + 48))(v16);
  std::vector<MIL::IRProperty const*>::resize(&v90, v17);
  std::string::basic_string[abi:ne200100]<0>(v97, "strides");
  v18 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, v97);
  v19 = v18;
  if ((v97[23] & 0x80000000) != 0)
  {
    operator delete(*v97);
    if (v19)
    {
      goto LABEL_19;
    }
  }

  else if (v18)
  {
LABEL_19:
    std::string::basic_string[abi:ne200100]<0>(v97, "strides");
    v20 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, v97);
    v21 = MIL::IRValue::AsTensor(v20);
    v86.__r_.__value_.__r.__words[0] = MIL::IRTensorValue::GetDataView<long long>(v21);
    v86.__r_.__value_.__l.__size_ = v22;
    if ((v97[23] & 0x80000000) != 0)
    {
      operator delete(*v97);
    }

    if (v91 != v90)
    {
      v23 = 0;
      do
      {
        v24 = MIL::Util::Span<long long const,18446744073709551615ul>::At(&v86, v23);
        v25 = *a1;
        if (*v24 == -1)
        {
          Int64Scalar = MIL::IRUnknownProperty::Make(*a1, 0);
        }

        else
        {
          v26 = MIL::Util::Span<long long const,18446744073709551615ul>::At(&v86, v23);
          Int64Scalar = MIL::IRConstantProperty::MakeInt64Scalar(v25, *v26);
        }

        *(v90 + v23++) = Int64Scalar;
      }

      while (v23 < (v91 - v90) >> 3);
    }

LABEL_54:
    UInt64Scalar = 0;
    goto LABEL_55;
  }

  if (v91 != v90)
  {
    v37 = 0;
    do
    {
      v38 = MIL::IRUnknownProperty::Make(*a1, 0);
      *(v90 + v37++) = v38;
    }

    while (v37 < (v91 - v90) >> 3);
  }

  goto LABEL_54;
}

void sub_218127294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v58 - 233) < 0)
  {
    operator delete(*(v58 - 256));
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (v57)
  {
    __cxa_free_exception(v56);
  }

  if (a45)
  {
    operator delete(a45);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MIL::IRProperty const*>::resize(void *result, unint64_t a2)
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
    std::vector<MIL::IRProperty const*>::__append(result, a2 - v2);
  }
}

std::string *std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, uint64_t *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRTypedArgument>*,std::shared_ptr<MIL::IRTypedArgument>*>(&this[1], *a3, a3[1], (a3[1] - *a3) >> 4);
  return this;
}

void sub_218127600(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>::pair[abi:ne200100]<char const(&)[6],std::vector<std::shared_ptr<MIL::IRTypedArgument>>&,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5[3] = 0;
  v5[4] = 0;
  v5 += 3;
  v5[2] = 0;
  std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRTypedArgument>*,std::shared_ptr<MIL::IRTypedArgument>*>(v5, *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

void sub_218127660(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRTypedArgument> const*,std::shared_ptr<MIL::IRTypedArgument> const*>(uint64_t *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2181276E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>::unordered_map(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 48 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&>(a1, a2, a2);
      a2 += 6;
      v5 -= 48;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&>(void *a1, uint64_t *a2, uint64_t a3)
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
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::__construct_node_hash<std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&>();
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

void sub_2181279C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRTypedArgument>*,std::shared_ptr<MIL::IRTypedArgument>*>(&this[1], *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 4);
  return this;
}

void sub_218127AC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::shared_ptr<MIL::IRTypedArgument>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>(void *a1, uint64_t *a2, uint64_t a3)
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
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::__construct_node_hash<std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>();
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

void sub_218127DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<MIL::IRProperty const*>::__append(uint64_t a1, unint64_t a2)
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
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void MIL::Operators::Common::Shared::ValidateTopkInputs(MIL::IRTensorValueType *a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X3>, MIL::ValidationResult *a5@<X8>)
{
  v10 = (*(*a1 + 96))(a1);
  v72 = 0;
  v73 = 0;
  v71 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v71, *v10, *(v10 + 8), (*(v10 + 8) - *v10) >> 3);
  if (a3 <= 0 && a3 != -1)
  {
    v11 = a4[1];
    *&v70 = *a4;
    *(&v70 + 1) = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    std::to_string(&v66, a3);
    v12 = std::string::insert(&v66, 0, "Provided k (");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v67.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v67.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v67, ") is invalid for TopK.");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v69 = v14->__r_.__value_.__r.__words[2];
    v68 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationResult::ValidationResult(a5, &v70, 315, &v68);
    if (SHIBYTE(v69) < 0)
    {
      operator delete(v68);
    }

    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__r_.__value_.__l.__data_);
    }

    if (*(&v70 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v70 + 1));
    }

    goto LABEL_81;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    MIL::ValidationResult::ValidationResult(a5);
    goto LABEL_81;
  }

  v16 = (*(*a1 + 96))(a1);
  memset(&v67, 0, sizeof(v67));
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v67, *v16, *(v16 + 8), (*(v16 + 8) - *v16) >> 3);
  v17 = a2;
  if (a2 < 0)
  {
    v17 = MIL::IRTensorValueType::Rank(a1) + a2;
  }

  v18 = MIL::IRTensorValueType::Rank(a1);
  if (v17 < 0 || v18 <= v17)
  {
    v34 = a4[1];
    *&v65 = *a4;
    *(&v65 + 1) = v34;
    if (v34)
    {
      atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
    }

    std::to_string(&v58, a2);
    v35 = std::string::insert(&v58, 0, "Provided axis (");
    v36 = *&v35->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    v37 = std::string::append(&v59, ") is not within range [-");
    v38 = *&v37->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    v39 = MIL::IRTensorValueType::Rank(a1);
    std::to_string(&v57, v39);
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = &v57;
    }

    else
    {
      v40 = v57.__r_.__value_.__r.__words[0];
    }

    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v57.__r_.__value_.__l.__size_;
    }

    v42 = std::string::append(&v60, v40, size);
    v43 = *&v42->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    v44 = std::string::append(&v61, ", ");
    v45 = *&v44->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    v46 = MIL::IRTensorValueType::Rank(a1);
    std::to_string(&v56, v46 - 1);
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = &v56;
    }

    else
    {
      v47 = v56.__r_.__value_.__r.__words[0];
    }

    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v48 = v56.__r_.__value_.__l.__size_;
    }

    v49 = std::string::append(&v62, v47, v48);
    v50 = *&v49->__r_.__value_.__l.__data_;
    v66.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
    *&v66.__r_.__value_.__l.__data_ = v50;
    v49->__r_.__value_.__l.__size_ = 0;
    v49->__r_.__value_.__r.__words[2] = 0;
    v49->__r_.__value_.__r.__words[0] = 0;
    v51 = std::string::append(&v66, "] for TopK");
    v52 = *&v51->__r_.__value_.__l.__data_;
    v64 = v51->__r_.__value_.__r.__words[2];
    *v63 = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationResult::ValidationResult(a5, &v65, 315, v63);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63[0]);
    }

    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    v33 = *(&v65 + 1);
    if (!*(&v65 + 1))
    {
      goto LABEL_79;
    }

LABEL_77:
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    goto LABEL_79;
  }

  v19 = (*(**(v67.__r_.__value_.__r.__words[0] + 8 * v17) + 16))(*(v67.__r_.__value_.__r.__words[0] + 8 * v17));
  if (a3 != -1)
  {
    v20 = v19;
    if (v19)
    {
      if ((*(*v19 + 48))(v19) < a3)
      {
        v21 = a4[1];
        *&v55 = *a4;
        *(&v55 + 1) = v21;
        if (v21)
        {
          atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
        }

        std::to_string(&v60, a3);
        v22 = std::string::insert(&v60, 0, "Provided k (");
        v23 = *&v22->__r_.__value_.__l.__data_;
        v61.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
        *&v61.__r_.__value_.__l.__data_ = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        v24 = std::string::append(&v61, ") exceed maximum dimension size (");
        v25 = *&v24->__r_.__value_.__l.__data_;
        v62.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&v62.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        v26 = (*(*v20 + 48))(v20);
        std::to_string(&v59, v26);
        if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = &v59;
        }

        else
        {
          v27 = v59.__r_.__value_.__r.__words[0];
        }

        if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v28 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v28 = v59.__r_.__value_.__l.__size_;
        }

        v29 = std::string::append(&v62, v27, v28);
        v30 = *&v29->__r_.__value_.__l.__data_;
        v66.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
        *&v66.__r_.__value_.__l.__data_ = v30;
        v29->__r_.__value_.__l.__size_ = 0;
        v29->__r_.__value_.__r.__words[2] = 0;
        v29->__r_.__value_.__r.__words[0] = 0;
        v31 = std::string::append(&v66, ") for TopK");
        v32 = *&v31->__r_.__value_.__l.__data_;
        v54 = v31->__r_.__value_.__r.__words[2];
        *__p = v32;
        v31->__r_.__value_.__l.__size_ = 0;
        v31->__r_.__value_.__r.__words[2] = 0;
        v31->__r_.__value_.__r.__words[0] = 0;
        MIL::ValidationResult::ValidationResult(a5, &v55, 315, __p);
        if (SHIBYTE(v54) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v66.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        v33 = *(&v55 + 1);
        if (!*(&v55 + 1))
        {
          goto LABEL_79;
        }

        goto LABEL_77;
      }
    }
  }

  MIL::ValidationResult::ValidationResult(a5);
LABEL_79:
  if (v67.__r_.__value_.__r.__words[0])
  {
    v67.__r_.__value_.__l.__size_ = v67.__r_.__value_.__r.__words[0];
    operator delete(v67.__r_.__value_.__l.__data_);
  }

LABEL_81:
  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }
}

void sub_218128598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v52 - 169) < 0)
  {
    operator delete(*(v52 - 192));
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  v54 = *(v52 - 160);
  if (v54)
  {
    *(v52 - 152) = v54;
    operator delete(v54);
  }

  v55 = *(v52 - 88);
  if (v55)
  {
    *(v52 - 80) = v55;
    operator delete(v55);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::Shared::ValueTypeInferenceTopkCommon(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v8 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = (*(*v8 + 96))(v8);
  v31 = (*(*v8 + 88))(v8);
  std::string::basic_string[abi:ne200100]<0>(__p, "k");
  MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v10 = MIL::IRValue::TryGetScalar<int>();
  v11 = v10;
  if (v37 < 0)
  {
    operator delete(__p[0]);
    if (v11)
    {
      goto LABEL_5;
    }
  }

  else if (v10)
  {
LABEL_5:
    v12 = *v11;
    goto LABEL_13;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "k");
  MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v13 = MIL::IRValue::TryGetScalar<short>();
  v14 = v13;
  if (v37 < 0)
  {
    operator delete(__p[0]);
    if (v14)
    {
      goto LABEL_9;
    }
  }

  else if (v13)
  {
LABEL_9:
    v12 = *v14;
    goto LABEL_13;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "k");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v12 = MIL::IRValue::GetScalar<signed char>(SingleValue);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_13:
  std::string::basic_string[abi:ne200100]<0>(__p, "axis");
  v16 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v17 = MIL::IRValue::GetScalar<int>(v16);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "return_indices");
  v18 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  v19 = v18;
  if (v37 < 0)
  {
    operator delete(__p[0]);
    if (v19)
    {
LABEL_17:
      std::string::basic_string[abi:ne200100]<0>(__p, "return_indices");
      v20 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
      v21 = MIL::IRValue::GetScalar<BOOL>(v20);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_21:
      v22 = MIL::IRTensorValueType::Rank(v8);
      v23 = *a2;
      v24 = a2[1];
      v35[0] = v23;
      v35[1] = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::Operators::Common::Shared::ValidateTopkInputs(v8, v17, v12, v35, __p);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (!MIL::ValidationResult::IsGood(__p))
      {
        exception = __cxa_allocate_exception(0x48uLL);
        MIL::MILResult::MILResult(v33, __p);
        v33[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
        v34 = v38;
        MIL::ValidationError::ValidationError(exception, v33);
      }

      memset(&v32, 0, sizeof(v32));
      std::vector<std::string const*>::reserve(&v32, (*(v9 + 8) - *v9) >> 3);
      v25 = MIL::IRConstantDimension::Make(*a1, v12);
      if (v12 == -1)
      {
        v25 = *(*v9 + 8 * v17);
      }

      MIL::ValueTypeInferenceUtils::GetTopkOutShape(a1, v9, v17, v25, v22, &v41);
      if (v32.__r_.__value_.__r.__words[0])
      {
        v32.__r_.__value_.__l.__size_ = v32.__r_.__value_.__r.__words[0];
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      v32 = v41;
      if (!v21)
      {
        MIL::IRTensorValueType::MakeWithShape(*a1, v31, &v32);
      }

      std::string::basic_string[abi:ne200100]<0>(&v41, "output_indices_dtype");
      v26 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &v41);
      v27 = v26;
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
        if (!v27)
        {
          goto LABEL_39;
        }
      }

      else if (!v26)
      {
        goto LABEL_39;
      }

      std::string::basic_string[abi:ne200100]<0>(&v39, "output_indices_dtype");
      v28 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v39);
      v29 = MIL::IRValue::AsTensor(v28);
      MIL::IRValue::GetScalar<std::string>(v29, &v41);
      if (v40 < 0)
      {
        operator delete(v39);
      }

      MIL::StringToIRDataType(&v41, 0);
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }

LABEL_39:
      memset(&v41, 0, sizeof(v41));
      std::vector<MIL::IRValueType const*>::__assign_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(&v41, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_, (v32.__r_.__value_.__l.__size_ - v32.__r_.__value_.__r.__words[0]) >> 3);
      MIL::IRTensorValueType::MakeWithShape(*a1, v31, &v32);
    }
  }

  else if (v18)
  {
    goto LABEL_17;
  }

  v21 = 1;
  goto LABEL_21;
}

void sub_218128CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  MIL::ValidationResult::~ValidationResult(&a14);
  MIL::ValidationResult::~ValidationResult(&__p);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidatePReLU(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "alpha");
  v5 = MIL::IROperation::GetParameterType(this, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "x");
  std::string::basic_string[abi:ne200100]<0>(&v6, "alpha");
  MIL::Validation::VerifyDimSizeIsNumChannels(ParameterType, v5, v8, this, 1, __p);
  if (v7 < 0)
  {
    operator delete(v6);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if ((*(__p[0] + 2))(__p))
  {
    MIL::ValidationResult::~ValidationResult(__p);
    std::string::basic_string[abi:ne200100]<0>(__p, "x");
    MIL::Validation::VerifyOutputShapeMatchesInput(this, __p, a2);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    MIL::MILResult::MILResult(a2, __p);
    *a2 = &unk_2829E9B70;
    *(a2 + 12) = v12;
    MIL::ValidationResult::~ValidationResult(__p);
  }
}

void sub_218128F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateSoftplusParametric(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  v17[2] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = 0;
  v17[0] = "alpha";
  v17[1] = "beta";
  do
  {
    v6 = v17[v5];
    std::string::basic_string[abi:ne200100]<0>(v12, v6);
    v7 = MIL::IROperation::GetParameterType(this, v12);
    std::string::basic_string[abi:ne200100]<0>(v10, "x");
    std::string::basic_string[abi:ne200100]<0>(&v8, v6);
    MIL::Validation::VerifyDimSizeIsNumChannels(ParameterType, v7, v10, this, 1, __p);
    if (v9 < 0)
    {
      operator delete(v8);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }

    if (v13 < 0)
    {
      operator delete(v12[0]);
    }

    if (((*(__p[0] + 2))(__p) & 1) == 0)
    {
      MIL::MILResult::MILResult(a2, __p);
      *a2 = &unk_2829E9B70;
      *(a2 + 48) = v16;
      MIL::ValidationResult::~ValidationResult(__p);
      return;
    }

    MIL::ValidationResult::~ValidationResult(__p);
    ++v5;
  }

  while (v5 != 2);
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  MIL::Validation::VerifyOutputShapeMatchesInput(this, __p, a2);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2181291D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::BaseActivation::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_218129A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57)
{
  if (a50)
  {
    (*(*a50 + 8))(a50, a2, a3, a4, a5, a6, a7, a8);
  }

  v60 = *v57;
  *v57 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 240), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::BaseActivationWithAlpha::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_21812A704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  v52 = *(v50 - 112);
  *(v50 - 112) = 0;
  if (v52)
  {
    (*(*v52 + 8))(v52, a2, a3, a4, a5, a6, a7, a8);
  }

  v53 = *v49;
  *v49 = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v50 - 120), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::BaseActivationWithAlphaBeta::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_21812B650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, ...)
{
  va_start(va, a59);
  v62 = *(v60 - 112);
  *(v60 - 112) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62, a2, a3, a4, a5, a6, a7, a8);
  }

  v63 = *v59;
  *v59 = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v60 - 120), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ClampedReLU::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivationWithAlphaBeta::Make();
}

void sub_21812BB54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::LinearActivation::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivationWithAlphaBeta::Make();
}

void sub_21812BC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ScaledTanh::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivationWithAlphaBeta::Make();
}

void sub_21812BCBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::SigmoidHard::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivationWithAlphaBeta::Make();
}

void sub_21812BD70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ELU::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivationWithAlpha::Make();
}

void sub_21812BE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::LeakyReLU::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivationWithAlpha::Make();
}

void sub_21812BED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ThresholdedReLU::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivationWithAlpha::Make();
}

void sub_21812BF8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ERF::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivation::Make();
}

void sub_21812C040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReLU::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivation::Make();
}

void sub_21812C0F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReLU6::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivation::Make();
}

void sub_21812C1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Sigmoid::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivation::Make();
}

void sub_21812C25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::SiLU::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivation::Make();
}

void sub_21812C310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Softplus::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivation::Make();
}

void sub_21812C3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Softsign::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseActivation::Make();
}

void sub_21812C478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::GeLU::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21812CF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  v47 = *(v45 - 72);
  *(v45 - 72) = 0;
  if (v47)
  {
    (*(*v47 + 8))(v47, a2, a3, a4, a5, a6, a7, a8);
  }

  v48 = *v44;
  *v44 = 0;
  if (v48)
  {
    (*(*v48 + 8))(v48, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v45 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::PReLU::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21812DF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, ...)
{
  va_start(va, a55);
  v57 = a51;
  a51 = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57, a2, a3, a4, a5, a6, a7, a8);
  }

  v58 = *v55;
  *v55 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a48, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Softmax::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21812EDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46)
{
  if (a46)
  {
    (*(*a46 + 8))(a46, a2, a3, a4, a5, a6, a7, a8);
  }

  v49 = *v46;
  *v46 = 0;
  if (v49)
  {
    (*(*v49 + 8))(v49, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v47 - 128), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v47 - 248), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::SoftplusParametric::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218130114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = a65;
  a65 = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67, a2, a3, a4, a5, a6, a7, a8);
  }

  v68 = *v65;
  *v65 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a64, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x208], 0);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(result);

    JUMPOUT(0x21CEAFEA0);
  }

  return result;
}

void sub_218130700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[2],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_2181307E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ***std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v3);
    return MEMORY[0x21CEAFEA0](v2, 0x20C40960023A9);
  }

  return result;
}

uint64_t std::default_delete<std::vector<std::shared_ptr<MIL::IRParameter>>>::operator()[abi:ne200100](uint64_t a1, void **a2)
{
  if (a2)
  {
    v4 = a2;
    std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v4);
    return MEMORY[0x21CEAFEA0](a2, 0x20C40960023A9);
  }

  return result;
}

uint64_t *std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(uint64_t *a1, uint64_t *a2)
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

void std::__shared_ptr_pointer<MIL::IRParameter  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::IRParameter  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRParameter  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>> *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>> *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(result);

    JUMPOUT(0x21CEAFEA0);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>> *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<std::vector<std::shared_ptr<MIL::IRParameter>> *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<std::vector<std::shared_ptr<MIL::IRParameter>> *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<MIL::Validation::OpOutputConstraintTarget  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::OpOutputConstraintTarget  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::OpOutputConstraintTarget  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<MIL::Validation::TensorDTypeConstraints  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::TensorDTypeConstraints  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::TensorDTypeConstraints  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_218130CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[6],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_218130DB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_218130E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[5],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_218130F18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<MIL::Validation::PossibleStringValuesConstraints  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::PossibleStringValuesConstraints  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::PossibleStringValuesConstraints  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::ValidationResult (*)(MIL::IROperation const&),std::allocator<MIL::ValidationResult (*)(MIL::IROperation const&)>,MIL::ValidationResult ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EA4C8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::ValidationResult (*)(MIL::IROperation const&),std::allocator<MIL::ValidationResult (*)(MIL::IROperation const&)>,MIL::ValidationResult ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<MIL::Validation::TensorSymbolicShapeConstraints  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::TensorSymbolicShapeConstraints  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::TensorSymbolicShapeConstraints  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceConv(MIL::IRConstantDimension **a1, void x1_0, void *a2)
{
  v38[1] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, &__p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "weight");
  v7 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, &__p);
  v8 = MIL::IRValueType::AsTensorType(v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "strides");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, &__p);
  v10 = MIL::IRValue::AsTensor(SingleValue);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "dilations");
  v11 = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, &__p);
  v12 = MIL::IRValue::AsTensor(v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "pad_type");
  v13 = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, v33);
  MIL::IRValue::GetScalar<std::string>(v13, &__p);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "pad");
  v14 = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, v33);
  v15 = MIL::IRValue::AsTensor(v14);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
  }

  v16 = (*(*v6 + 88))(v6);
  v17 = (*(*v6 + 96))(v6);
  v18 = (*(*v8 + 96))(v8);
  Data = MIL::IRTensorValue::GetDataView<int>(v10);
  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v33, Data, &Data[v20], (4 * v20) >> 2);
  v21 = MIL::IRTensorValue::GetDataView<int>(v12);
  memset(v32, 0, sizeof(v32));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v32, v21, &v21[v22], (4 * v22) >> 2);
  v23 = MIL::IRTensorValue::GetDataView<int>(v15);
  memset(v31, 0, sizeof(v31));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v31, v23, &v23[v24], (4 * v24) >> 2);
  v25 = *a1;
  MIL::ValueTypeInferenceUtils::SliceShape(v17, 2uLL, (v17[1] - *v17) >> 3, &v26);
  MIL::ValueTypeInferenceUtils::SliceShape(v18, 2uLL, (v18[1] - *v18) >> 3, &v36);
  MIL::ValueTypeInferenceUtils::GetSpatialDimensionsOutShape(v25, &v26, &v36, v33, v32, &__p, v31, 0, &v29);
  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v26)
  {
    __dst = v26;
    operator delete(v26);
  }

  if (v17[1] != *v17)
  {
    v36 = **v17;
    if (v18[1] != *v18)
    {
      v37 = **v18;
      __dst = 0;
      v28 = 0;
      v26 = 0;
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(&v26, &v36, v38, 2uLL);
      std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const* const*>,std::__wrap_iter<MIL::IRDimension const* const*>>(&v26, __dst, v29, v30, (v30 - v29) >> 3);
      MIL::IRTensorValueType::MakeWithShape(*a1, v16, &v26);
    }
  }

  std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
}

void sub_2181315C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
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

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceConvTranspose(MIL::IRConstantDimension **a1, void x1_0, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, &__p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = (*(*v6 + 88))(v6);
  std::string::basic_string[abi:ne200100]<0>(&__p, "output_shape");
  v8 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &__p);
  v9 = v8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v9)
    {
LABEL_5:
      std::string::basic_string[abi:ne200100]<0>(&__p, "output_shape");
      SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, &__p);
      v11 = MIL::IRValue::AsTensor(SingleValue);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      Data = MIL::IRTensorValue::GetDataView<int>(v11);
      v14 = v13;
      memset(&__p, 0, sizeof(__p));
      std::vector<std::string const*>::reserve(&__p, v13);
      if (v14)
      {
        v15 = 4 * v14;
        do
        {
          v50[0] = MIL::IRConstantDimension::Make(*a1, *Data);
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, v50);
          ++Data;
          v15 -= 4;
        }

        while (v15);
      }

      MIL::IRTensorValueType::MakeWithShape(*a1, v7, &__p);
    }
  }

  else if (v8)
  {
    goto LABEL_5;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "weight");
  v16 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, &__p);
  v17 = MIL::IRValueType::AsTensorType(v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "strides");
  v18 = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, &__p);
  v19 = MIL::IRValue::AsTensor(v18);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "dilations");
  v20 = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, &__p);
  v21 = MIL::IRValue::AsTensor(v20);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "pad_type");
  v22 = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, v50);
  MIL::IRValue::GetScalar<std::string>(v22, &__p);
  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "pad");
  v23 = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, v50);
  v24 = MIL::IRValue::AsTensor(v23);
  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "groups");
  v25 = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, v50);
  v26 = MIL::IRValue::GetScalar<int>(v25);
  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50[0]);
  }

  v27 = (*(*v6 + 96))(v6);
  v28 = (*(*v17 + 96))(v17);
  v29 = MIL::IRTensorValue::GetDataView<int>(v19);
  v50[0] = 0;
  v50[1] = 0;
  v51 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v50, v29, &v29[v30], (4 * v30) >> 2);
  v31 = MIL::IRTensorValue::GetDataView<int>(v21);
  memset(v45, 0, sizeof(v45));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v45, v31, &v31[v32], (4 * v32) >> 2);
  v33 = MIL::IRTensorValue::GetDataView<int>(v24);
  memset(v44, 0, sizeof(v44));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v44, v33, &v33[v34], (4 * v34) >> 2);
  if (*(v27 + 8) != *v27)
  {
    v48 = **v27;
    __dst = 0;
    v43 = 0;
    v41 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(&v41, &v48, &v49, 1uLL);
    v35 = (*(**(*v28 + 8) + 24))(*(*v28 + 8));
    if (v35)
    {
      v48 = v35;
    }

    else
    {
      v36 = *a1;
      v37 = MIL::IRDimension::AsConstant(*(*v28 + 8));
      v38 = (*(*v37 + 48))(v37);
      v48 = MIL::IRConstantDimension::Make(v36, (v38 * v26));
    }

    std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v41, &v48);
    v39 = *a1;
    MIL::ValueTypeInferenceUtils::SliceShape(v27, 2uLL, (*(v27 + 8) - *v27) >> 3, v47);
    MIL::ValueTypeInferenceUtils::SliceShape(v28, 2uLL, (v28[1] - *v28) >> 3, v40);
    MIL::ValueTypeInferenceUtils::ConvTransposeSpatialDimensionsOutShape(v39, v47, v40, v50, v45, &__p, v44, &v48);
    if (v40[0])
    {
      v40[1] = v40[0];
      operator delete(v40[0]);
    }

    if (v47[0])
    {
      v47[1] = v47[0];
      operator delete(v47[0]);
    }

    std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const* const*>,std::__wrap_iter<MIL::IRDimension const* const*>>(&v41, __dst, v48, v49, (v49 - v48) >> 3);
    MIL::IRTensorValueType::MakeWithShape(*a1, v7, &v41);
  }

  std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
}

void sub_218131CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
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

  v33 = *(v31 - 120);
  if (v33)
  {
    *(v31 - 112) = v33;
    operator delete(v33);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::Conv::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218133C30(_Unwind_Exception *a1)
{
  v5 = STACK[0x4A8];
  STACK[0x4A8] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x3F8], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ConvTranspose::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181365A4(_Unwind_Exception *a1)
{
  v5 = STACK[0x4B8];
  STACK[0x4B8] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x408], 0);
  _Unwind_Resume(a1);
}

void sub_21813704C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[7],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_218137134(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2181371AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[8],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_218137294(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_21813730C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[9],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_2181373F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_21813746C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[4],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_218137554(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2181375CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[10],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_2181376B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::vector<MIL::IRValueType const*> (*)(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&),std::allocator<std::vector<MIL::IRValueType const*> (*)(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EA5D8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<std::vector<MIL::IRValueType const*> (*)(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&),std::allocator<std::vector<MIL::IRValueType const*> (*)(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::operator()(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 8);
  v7 = *a3;
  *a3 = 0uLL;
  v6(a2, &v7, a4, a5, a6);
  if (*(&v7 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
  }
}

void sub_2181377C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::vector<MIL::IRValueType const*> (*)(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&),std::allocator<std::vector<MIL::IRValueType const*> (*)(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<MIL::Validation::TensorRankValueConstraints  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::TensorRankValueConstraints  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::TensorRankValueConstraints  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_218137934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[13],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_218137A1C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceElementwiseBinaryBoolOutput(MIL::IRUnknownDimension **a1, void x1_0, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  memset(v11, 0, sizeof(v11));
  std::vector<std::vector<float>>::reserve(v11, a2[3]);
  for (i = a2[2]; i; i = *i)
  {
    std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>::pair[abi:ne200100](&__p, i + 1);
    SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, &__p);
    v7 = MIL::IRValueType::AsTensorType(SingleValueType);
    v8 = (*(*v7 + 96))(v7);
    std::vector<std::vector<MIL::IRDimension const*>>::push_back[abi:ne200100](v11, v8);
    v12[0] = &v10;
    std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](v12);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  MIL::ValueTypeInferenceUtils::BroadcastShape(*a1, v11, &__p);
  MIL::IRTensorValueType::MakeWithShape(*a1, 2, &__p);
}

void sub_218137B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  __p = &a16;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceAdd(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "add");
}

void sub_218137CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::BinaryOpHelper(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v25[12] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v25, "x");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v25);
  if (v6)
  {
    v7 = (*(**v6[5] + 40))(*v6[5]);
    if (SHIBYTE(v25[2]) < 0)
    {
      operator delete(v25[0]);
    }

    if (v7)
    {
      std::string::basic_string[abi:ne200100]<0>(v25, "y");
      v8 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v25);
      if (v8)
      {
        v9 = (*(**v8[5] + 40))(*v8[5]);
        if (SHIBYTE(v25[2]) < 0)
        {
          operator delete(v25[0]);
        }

        if (v9)
        {
          std::string::basic_string[abi:ne200100]<0>(v25, "x");
          v10 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v25);
          if (v10)
          {
            v11 = v10[5];
            v13 = *v11;
            v12 = *(v11 + 1);
            if (v12)
            {
              atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(v25[2]) < 0)
            {
              operator delete(v25[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(v25, "y");
            v14 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v25);
            if (v14)
            {
              v15 = v14[5];
              v17 = *v15;
              v16 = v15[1];
              if (v16)
              {
                atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
              }

              if (SHIBYTE(v25[2]) < 0)
              {
                operator delete(v25[0]);
              }

              v18 = (*(*v13 + 32))(v13);
              v19 = (*(*v18 + 88))(v18);
              v20 = (*(*v17 + 32))(v17);
              if (v19 == (*(*v20 + 88))(v20))
              {
                std::string::basic_string[abi:ne200100]<0>(__p, "x");
                __p[15] = v13;
                __p[16] = v12;
                if (v12)
                {
                  atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
                }

                MIL::IRTypedArgument::Make();
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(exception, "Datatype do not match for input tensors x and Tensor y.");
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
            }

            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v22 = __cxa_allocate_exception(0x10uLL);
        std::invalid_argument::invalid_argument[abi:ne200100](v22, "Input Tensor y is not an IRTensor object.");
        __cxa_throw(v22, off_278235F80, MEMORY[0x277D82610]);
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v21 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v21, "Input Tensor x is not an IRTensor object.");
    __cxa_throw(v21, off_278235F80, MEMORY[0x277D82610]);
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218139464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  MIL::ValueInference::Tensor<int>::~Tensor(&a38);
  MIL::ValueInference::Tensor<int>::~Tensor((v58 - 192));
  std::__function::__value_func<std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::~__value_func[abi:ne200100](v58 - 240);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a56);
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  _Unwind_Resume(a1);
}

void sub_218139944()
{
  if (*(v0 - 169) < 0)
  {
    operator delete(*(v0 - 192));
  }

  JUMPOUT(0x21813993CLL);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceFloorDiv(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "floor_div");
}

void sub_218139A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceMaximum(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "maximum");
}

void sub_218139BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceMinimum(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "minimum");
}

void sub_218139D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceMul(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "mul");
}

void sub_218139E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferencePow(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "pow");
}

void sub_218139FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceRealDiv(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "real_div");
}

void sub_21813A110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceSub(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "sub");
}

void sub_21813A264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceMod(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "mod");
}

void sub_21813A3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceEqual(MIL::IRUnknownDimension **a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v10, "x");
  std::string::basic_string[abi:ne200100]<0>(v9, "x");
  v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v9);
  if (v5)
  {
    v6 = v5[5];
    v8 = *v6;
    v7 = *(v6 + 1);
    v9[3] = v8;
    v9[4] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    MIL::IRTypedArgument::Make();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21813A934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (a21)
  {
    (*(*a21 + 8))(a21, a2, a3, a4, a5, a6, a7, a8);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a40);
  _Unwind_Resume(a1);
}

void anonymous namespace::BinaryOpBoolOutputHelper(MIL::IRConstantDimension **a1, void *a2, MIL *a3, _DWORD *a4)
{
  v109 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  v9 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, __p);
  if (!v9)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v10 = (*(**v9[5] + 40))(*v9[5]);
  if (v101 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Input Tensor x is not an IRTensor object.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "y");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, __p);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v12 = (*(**v11[5] + 40))(*v11[5]);
  if (v101 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v12)
  {
    v66 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v66, "Input Tensor y is not an IRTensor object.");
    __cxa_throw(v66, off_278235F80, MEMORY[0x277D82610]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  v13 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, __p);
  if (!v13)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v14 = v13[5];
  v16 = *v14;
  v15 = v14[1];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v101 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "y");
  v17 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, __p);
  if (!v17)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v18 = v17[5];
  v20 = *v18;
  v19 = v18[1];
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v101 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = (*(*v16 + 32))(v16);
  v22 = (*(*v21 + 88))(v21);
  v23 = (*(*v20 + 32))(v20);
  if (v22 != (*(*v23 + 88))(v23))
  {
    v67 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v67, "Datatypes do not match for input tensors x and Tensor y.");
    goto LABEL_273;
  }

  if ((*(*a3 + 88))(a3) != 2)
  {
    v67 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v67, "Unsupported Datatype for the output IRTensor.");
    goto LABEL_273;
  }

  if (v22 <= 4)
  {
    if (v22 != 2)
    {
      if (v22 == 4)
      {
        v80 = v16;
        v81 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<MIL::Fp16>::FromIRTensorValue(&v80, __p);
        if (v81)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v81);
        }

        v78 = v20;
        v79 = v19;
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueInference::Tensor<MIL::Fp16>::FromIRTensorValue(&v78, v97);
        if (v79)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v79);
        }

        if (*(a4 + 23) < 0)
        {
          v42 = *(a4 + 1);
          if (v42 <= 8)
          {
            if (v42 != 4)
            {
              if (v42 != 5)
              {
                if (v42 != 7)
                {
                  goto LABEL_161;
                }

                v26 = **a4 == 1634038375 && *(*a4 + 3) == 1919251553;
LABEL_114:
                v43 = MIL::MathOps::GreaterOp<MIL::Fp16>;
                if (!v26)
                {
                  goto LABEL_161;
                }

LABEL_227:
                v106 = &unk_2829EA998;
                v107 = v43;
                v108 = &v106;
                MIL::GetTensorShapeWithDimensionsAllKnown(a3, v24, &v93);
                std::__function::__value_func<unsigned char ()(MIL::Fp16,MIL::Fp16)>::__value_func[abi:ne200100](v103, &v106);
                v75 = 0;
                v76 = 0;
                v77 = 0;
                std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v75, v93, v94, (v94 - v93) >> 3);
                MIL::ValueInference::BinaryOp<MIL::Fp16,BOOL>(__p, v97, v103, &v75, v92);
                if (v75)
                {
                  v76 = v75;
                  operator delete(v75);
                }

                std::__function::__value_func<unsigned char ()(MIL::Fp16,MIL::Fp16)>::~__value_func[abi:ne200100](v103);
                MIL::ValueInference::Tensor<BOOL>::ToIRTensorValue(v92, *a1);
              }

              v55 = **a4 == 1635086693 && *(*a4 + 4) == 108;
              goto LABEL_215;
            }

            v60 = **a4;
            goto LABEL_248;
          }

          if (v42 != 9)
          {
            if (v42 != 10)
            {
              if (v42 != 13)
              {
                goto LABEL_161;
              }

              v47 = **a4 == 0x5F72657461657267 && *(*a4 + 5) == 0x6C617571655F7265;
LABEL_160:
              v43 = MIL::MathOps::GreaterEqualOp<MIL::Fp16>;
              if (!v47)
              {
                goto LABEL_161;
              }

              goto LABEL_227;
            }

            v57 = **a4 == 0x7571655F7373656CLL && *(*a4 + 8) == 27745;
LABEL_225:
            v43 = MIL::MathOps::LessEqualOp<MIL::Fp16>;
            if (v57)
            {
              goto LABEL_227;
            }

            goto LABEL_161;
          }

          a4 = *a4;
        }

        else
        {
          v25 = *(a4 + 23);
          if (v25 <= 8)
          {
            if (v25 != 4)
            {
              if (v25 != 5)
              {
                if (v25 != 7)
                {
                  goto LABEL_161;
                }

                v26 = *a4 == 1634038375 && *(a4 + 3) == 1919251553;
                goto LABEL_114;
              }

              v55 = *a4 == 1635086693 && *(a4 + 4) == 108;
LABEL_215:
              v43 = MIL::MathOps::EqualOp<MIL::Fp16>;
              if (v55)
              {
                goto LABEL_227;
              }

              goto LABEL_161;
            }

            v60 = *a4;
LABEL_248:
            v43 = MIL::MathOps::LessOp<MIL::Fp16>;
            if (v60 == 1936942444)
            {
              goto LABEL_227;
            }

            goto LABEL_161;
          }

          if (v25 != 9)
          {
            if (v25 != 10)
            {
              if (v25 != 13)
              {
                goto LABEL_161;
              }

              v47 = *a4 == 0x5F72657461657267 && *(a4 + 5) == 0x6C617571655F7265;
              goto LABEL_160;
            }

            v57 = *a4 == 0x7571655F7373656CLL && *(a4 + 4) == 27745;
            goto LABEL_225;
          }
        }

        v63 = *a4 == 0x617571655F746F6ELL && *(a4 + 8) == 108;
        v43 = MIL::MathOps::NotEqualOp<MIL::Fp16>;
        if (v63)
        {
          goto LABEL_227;
        }

LABEL_161:
        v51 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v51, "Invalid OpName specified");
        v51->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(v51, off_278235F80, MEMORY[0x277D82610]);
      }

      goto LABEL_274;
    }

    v73 = v16;
    v74 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::ValueInference::Tensor<BOOL>::FromIRTensorValue(&v73, __p);
    if (v74)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v74);
    }

    v71 = v20;
    v72 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::ValueInference::Tensor<BOOL>::FromIRTensorValue(&v71, v97);
    if (v72)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v72);
    }

    if (*(a4 + 23) < 0)
    {
      v35 = *(a4 + 1);
      if (v35 != 10)
      {
        if (v35 != 11)
        {
          goto LABEL_97;
        }

        a4 = *a4;
        goto LABEL_89;
      }

      v49 = **a4 == 0x5F6C616369676F6CLL && *(*a4 + 8) == 29295;
    }

    else
    {
      v31 = *(a4 + 23);
      if (v31 != 10)
      {
        if (v31 != 11)
        {
          goto LABEL_97;
        }

LABEL_89:
        v36 = *a4 == 0x5F6C616369676F6CLL && *(a4 + 3) == 0x646E615F6C616369;
        v37 = MIL::MathOps::LogicalAndOp;
        if (!v36)
        {
          v38 = *a4 == 0x5F6C616369676F6CLL && *(a4 + 3) == 0x726F785F6C616369;
          v37 = MIL::MathOps::LogicalXorOp;
          if (!v38)
          {
LABEL_97:
            v39 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v39, "Invalid OpName specified");
            v39->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(v39, off_278235F80, MEMORY[0x277D82610]);
          }
        }

LABEL_175:
        v106 = &unk_2829EAA48;
        v107 = v37;
        v108 = &v106;
        MIL::GetTensorShapeWithDimensionsAllKnown(a3, v30, &v93);
        std::__function::__value_func<unsigned char ()(unsigned char,unsigned char)>::__value_func[abi:ne200100](v102, &v106);
        v68 = 0;
        v69 = 0;
        v70 = 0;
        std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v68, v93, v94, (v94 - v93) >> 3);
        MIL::ValueInference::BinaryOp<BOOL,BOOL>(__p, v97, v102, &v68, v92);
        if (v68)
        {
          v69 = v68;
          operator delete(v68);
        }

        std::__function::__value_func<unsigned char ()(unsigned char,unsigned char)>::~__value_func[abi:ne200100](v102);
        MIL::ValueInference::Tensor<BOOL>::ToIRTensorValue(v92, *a1);
      }

      v49 = *a4 == 0x5F6C616369676F6CLL && *(a4 + 4) == 29295;
    }

    v37 = MIL::MathOps::LogicalOrOp;
    if (!v49)
    {
      goto LABEL_97;
    }

    goto LABEL_175;
  }

  if (v22 != 11)
  {
    if (v22 != 5)
    {
LABEL_274:
      v67 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v67, "Unsupported Datatype for the input IRTensor.");
LABEL_273:
      v67->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v67, off_278235F80, MEMORY[0x277D82610]);
    }

    v98 = v16;
    v99 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::ValueInference::Tensor<float>::FromIRTensorValue(&v98, __p);
    if (v99)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v99);
    }

    v95 = v20;
    v96 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::ValueInference::Tensor<float>::FromIRTensorValue(&v95, v97);
    if (v96)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v96);
    }

    if (*(a4 + 23) < 0)
    {
      v44 = *(a4 + 1);
      if (v44 <= 8)
      {
        if (v44 != 4)
        {
          if (v44 != 5)
          {
            if (v44 != 7)
            {
              goto LABEL_169;
            }

            v29 = **a4 == 1634038375 && *(*a4 + 3) == 1919251553;
LABEL_123:
            v45 = MIL::MathOps::GreaterOp<float>;
            if (!v29)
            {
              goto LABEL_169;
            }

LABEL_235:
            v106 = &unk_2829EA838;
            v107 = v45;
            v108 = &v106;
            MIL::GetTensorShapeWithDimensionsAllKnown(a3, v27, &v93);
            std::__function::__value_func<unsigned char ()(float,float)>::__value_func[abi:ne200100](v105, &v106);
            v89 = 0;
            v90 = 0;
            v91 = 0;
            std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v89, v93, v94, (v94 - v93) >> 3);
            MIL::ValueInference::BinaryOp<float,BOOL>(__p, v97, v105, &v89, v92);
            if (v89)
            {
              v90 = v89;
              operator delete(v89);
            }

            std::__function::__value_func<unsigned char ()(float,float)>::~__value_func[abi:ne200100](v105);
            MIL::ValueInference::Tensor<BOOL>::ToIRTensorValue(v92, *a1);
          }

          v56 = **a4 == 1635086693 && *(*a4 + 4) == 108;
          goto LABEL_220;
        }

        v61 = **a4;
        goto LABEL_251;
      }

      if (v44 != 9)
      {
        if (v44 != 10)
        {
          if (v44 != 13)
          {
            goto LABEL_169;
          }

          v48 = **a4 == 0x5F72657461657267 && *(*a4 + 5) == 0x6C617571655F7265;
LABEL_168:
          v45 = MIL::MathOps::GreaterEqualOp<float>;
          if (!v48)
          {
            goto LABEL_169;
          }

          goto LABEL_235;
        }

        v58 = **a4 == 0x7571655F7373656CLL && *(*a4 + 8) == 27745;
LABEL_233:
        v45 = MIL::MathOps::LessEqualOp<float>;
        if (v58)
        {
          goto LABEL_235;
        }

        goto LABEL_169;
      }

      a4 = *a4;
    }

    else
    {
      v28 = *(a4 + 23);
      if (v28 <= 8)
      {
        if (v28 != 4)
        {
          if (v28 != 5)
          {
            if (v28 != 7)
            {
              goto LABEL_169;
            }

            v29 = *a4 == 1634038375 && *(a4 + 3) == 1919251553;
            goto LABEL_123;
          }

          v56 = *a4 == 1635086693 && *(a4 + 4) == 108;
LABEL_220:
          v45 = MIL::MathOps::EqualOp<float>;
          if (v56)
          {
            goto LABEL_235;
          }

          goto LABEL_169;
        }

        v61 = *a4;
LABEL_251:
        v45 = MIL::MathOps::LessOp<float>;
        if (v61 == 1936942444)
        {
          goto LABEL_235;
        }

        goto LABEL_169;
      }

      if (v28 != 9)
      {
        if (v28 != 10)
        {
          if (v28 != 13)
          {
            goto LABEL_169;
          }

          v48 = *a4 == 0x5F72657461657267 && *(a4 + 5) == 0x6C617571655F7265;
          goto LABEL_168;
        }

        v58 = *a4 == 0x7571655F7373656CLL && *(a4 + 4) == 27745;
        goto LABEL_233;
      }
    }

    v64 = *a4 == 0x617571655F746F6ELL && *(a4 + 8) == 108;
    v45 = MIL::MathOps::NotEqualOp<float>;
    if (v64)
    {
      goto LABEL_235;
    }

LABEL_169:
    v52 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v52, "Invalid OpName specified");
    v52->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v52, off_278235F80, MEMORY[0x277D82610]);
  }

  v87 = v16;
  v88 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::ValueInference::Tensor<int>::FromIRTensorValue(&v87, __p);
  if (v88)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v88);
  }

  v85 = v20;
  v86 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::ValueInference::Tensor<int>::FromIRTensorValue(&v85, v97);
  if (v86)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v86);
  }

  if (*(a4 + 23) < 0)
  {
    v40 = *(a4 + 1);
    if (v40 <= 8)
    {
      if (v40 != 4)
      {
        if (v40 != 5)
        {
          if (v40 != 7)
          {
            goto LABEL_153;
          }

          v34 = **a4 == 1634038375 && *(*a4 + 3) == 1919251553;
LABEL_105:
          v41 = MIL::MathOps::GreaterOp<int>;
          if (!v34)
          {
            goto LABEL_153;
          }

LABEL_209:
          v106 = &unk_2829EA8E8;
          v107 = v41;
          v108 = &v106;
          MIL::GetTensorShapeWithDimensionsAllKnown(a3, v32, &v93);
          std::__function::__value_func<unsigned char ()(int,int)>::__value_func[abi:ne200100](v104, &v106);
          v82 = 0;
          v83 = 0;
          v84 = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v82, v93, v94, (v94 - v93) >> 3);
          MIL::ValueInference::BinaryOp<int,BOOL>(__p, v97, v104, &v82, v92);
          if (v82)
          {
            v83 = v82;
            operator delete(v82);
          }

          std::__function::__value_func<unsigned char ()(int,int)>::~__value_func[abi:ne200100](v104);
          MIL::ValueInference::Tensor<BOOL>::ToIRTensorValue(v92, *a1);
        }

        v53 = **a4 == 1635086693 && *(*a4 + 4) == 108;
        goto LABEL_202;
      }

      v59 = **a4;
      goto LABEL_239;
    }

    if (v40 != 9)
    {
      if (v40 != 10)
      {
        if (v40 != 13)
        {
          goto LABEL_153;
        }

        v46 = **a4 == 0x5F72657461657267 && *(*a4 + 5) == 0x6C617571655F7265;
LABEL_152:
        v41 = MIL::MathOps::GreaterEqualOp<int>;
        if (!v46)
        {
          goto LABEL_153;
        }

        goto LABEL_209;
      }

      v54 = **a4 == 0x7571655F7373656CLL && *(*a4 + 8) == 27745;
LABEL_207:
      v41 = MIL::MathOps::LessEqualOp<int>;
      if (v54)
      {
        goto LABEL_209;
      }

      goto LABEL_153;
    }

    a4 = *a4;
  }

  else
  {
    v33 = *(a4 + 23);
    if (v33 <= 8)
    {
      if (v33 != 4)
      {
        if (v33 != 5)
        {
          if (v33 != 7)
          {
            goto LABEL_153;
          }

          v34 = *a4 == 1634038375 && *(a4 + 3) == 1919251553;
          goto LABEL_105;
        }

        v53 = *a4 == 1635086693 && *(a4 + 4) == 108;
LABEL_202:
        v41 = MIL::MathOps::EqualOp<int>;
        if (v53)
        {
          goto LABEL_209;
        }

        goto LABEL_153;
      }

      v59 = *a4;
LABEL_239:
      v41 = MIL::MathOps::LessOp<int>;
      if (v59 == 1936942444)
      {
        goto LABEL_209;
      }

      goto LABEL_153;
    }

    if (v33 != 9)
    {
      if (v33 != 10)
      {
        if (v33 != 13)
        {
          goto LABEL_153;
        }

        v46 = *a4 == 0x5F72657461657267 && *(a4 + 5) == 0x6C617571655F7265;
        goto LABEL_152;
      }

      v54 = *a4 == 0x7571655F7373656CLL && *(a4 + 4) == 27745;
      goto LABEL_207;
    }
  }

  v62 = *a4 == 0x617571655F746F6ELL && *(a4 + 8) == 108;
  v41 = MIL::MathOps::NotEqualOp<int>;
  if (v62)
  {
    goto LABEL_209;
  }

LABEL_153:
  v50 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v50, "Invalid OpName specified");
  v50->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v50, off_278235F80, MEMORY[0x277D82610]);
}

void sub_21813BE88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  __cxa_free_exception(v63);
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceGreater(MIL::IRUnknownDimension **a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v10, "x");
  std::string::basic_string[abi:ne200100]<0>(v9, "x");
  v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v9);
  if (v5)
  {
    v6 = v5[5];
    v8 = *v6;
    v7 = *(v6 + 1);
    v9[3] = v8;
    v9[4] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    MIL::IRTypedArgument::Make();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21813C704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (a21)
  {
    (*(*a21 + 8))(a21, a2, a3, a4, a5, a6, a7, a8);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a40);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceGreaterEqual(MIL::IRUnknownDimension **a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v10, "x");
  std::string::basic_string[abi:ne200100]<0>(v9, "x");
  v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v9);
  if (v5)
  {
    v6 = v5[5];
    v8 = *v6;
    v7 = *(v6 + 1);
    v9[3] = v8;
    v9[4] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    MIL::IRTypedArgument::Make();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21813CF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (a21)
  {
    (*(*a21 + 8))(a21, a2, a3, a4, a5, a6, a7, a8);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a40);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceLess(MIL::IRUnknownDimension **a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v10, "x");
  std::string::basic_string[abi:ne200100]<0>(v9, "x");
  v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v9);
  if (v5)
  {
    v6 = v5[5];
    v8 = *v6;
    v7 = *(v6 + 1);
    v9[3] = v8;
    v9[4] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    MIL::IRTypedArgument::Make();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21813D6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (a21)
  {
    (*(*a21 + 8))(a21, a2, a3, a4, a5, a6, a7, a8);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a40);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceLessEqual(MIL::IRUnknownDimension **a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v10, "x");
  std::string::basic_string[abi:ne200100]<0>(v9, "x");
  v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v9);
  if (v5)
  {
    v6 = v5[5];
    v8 = *v6;
    v7 = *(v6 + 1);
    v9[3] = v8;
    v9[4] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    MIL::IRTypedArgument::Make();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21813DEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (a21)
  {
    (*(*a21 + 8))(a21, a2, a3, a4, a5, a6, a7, a8);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a40);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceNotEqual(MIL::IRUnknownDimension **a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v10, "x");
  std::string::basic_string[abi:ne200100]<0>(v9, "x");
  v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v9);
  if (v5)
  {
    v6 = v5[5];
    v8 = *v6;
    v7 = *(v6 + 1);
    v9[3] = v8;
    v9[4] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    MIL::IRTypedArgument::Make();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21813E6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (a21)
  {
    (*(*a21 + 8))(a21, a2, a3, a4, a5, a6, a7, a8);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a40);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceLogicalAnd(MIL::IRUnknownDimension **a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v10, "x");
  std::string::basic_string[abi:ne200100]<0>(v9, "x");
  v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v9);
  if (v5)
  {
    v6 = v5[5];
    v8 = *v6;
    v7 = *(v6 + 1);
    v9[3] = v8;
    v9[4] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    MIL::IRTypedArgument::Make();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21813EEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (a21)
  {
    (*(*a21 + 8))(a21, a2, a3, a4, a5, a6, a7, a8);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a40);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceLogicalOr(MIL::IRUnknownDimension **a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v10, "x");
  std::string::basic_string[abi:ne200100]<0>(v9, "x");
  v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v9);
  if (v5)
  {
    v6 = v5[5];
    v8 = *v6;
    v7 = *(v6 + 1);
    v9[3] = v8;
    v9[4] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    MIL::IRTypedArgument::Make();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21813F6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (a21)
  {
    (*(*a21 + 8))(a21, a2, a3, a4, a5, a6, a7, a8);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a40);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceLogicalXor(MIL::IRUnknownDimension **a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v10, "x");
  std::string::basic_string[abi:ne200100]<0>(v9, "x");
  v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v9);
  if (v5)
  {
    v6 = v5[5];
    v8 = *v6;
    v7 = *(v6 + 1);
    v9[3] = v8;
    v9[4] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    MIL::IRTypedArgument::Make();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21813FEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (a21)
  {
    (*(*a21 + 8))(a21, a2, a3, a4, a5, a6, a7, a8);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a40);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<float ()(float,float)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t MIL::MathOps::AddOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v7 = a1;
  v6 = a2;
  Float = MIL::Fp16::GetFloat(&v7);
  v3 = MIL::Fp16::GetFloat(&v6);
  return MIL::Fp16::FromFloat(v4, Float + v3);
}

uint64_t MIL::MathOps::FloorDivOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v7 = a1;
  v6 = a2;
  Float = MIL::Fp16::GetFloat(&v7);
  v3 = MIL::Fp16::GetFloat(&v6);
  return MIL::Fp16::FromFloat(v4, floorf(Float / v3));
}

uint64_t MIL::MathOps::MaximumOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v7 = a1;
  v6 = a2;
  Float = MIL::Fp16::GetFloat(&v7);
  v4 = MIL::Fp16::GetFloat(&v6);
  if (Float >= v4)
  {
    v4 = Float;
  }

  return MIL::Fp16::FromFloat(v3, v4);
}

uint64_t MIL::MathOps::MinimumOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v7 = a1;
  v6 = a2;
  Float = MIL::Fp16::GetFloat(&v7);
  v4 = MIL::Fp16::GetFloat(&v6);
  if (v4 >= Float)
  {
    v4 = Float;
  }

  return MIL::Fp16::FromFloat(v3, v4);
}

uint64_t MIL::MathOps::MulOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v7 = a1;
  v6 = a2;
  Float = MIL::Fp16::GetFloat(&v7);
  v3 = MIL::Fp16::GetFloat(&v6);
  return MIL::Fp16::FromFloat(v4, Float * v3);
}

uint64_t MIL::MathOps::PowOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v8 = a1;
  v7 = a2;
  Float = MIL::Fp16::GetFloat(&v8);
  v3 = MIL::Fp16::GetFloat(&v7);
  v4 = powf(Float, v3);
  return MIL::Fp16::FromFloat(v5, v4);
}

uint64_t MIL::MathOps::RealDivOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v7 = a1;
  v6 = a2;
  Float = MIL::Fp16::GetFloat(&v7);
  v3 = MIL::Fp16::GetFloat(&v6);
  return MIL::Fp16::FromFloat(v4, Float / v3);
}

uint64_t MIL::MathOps::SubOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v7 = a1;
  v6 = a2;
  Float = MIL::Fp16::GetFloat(&v7);
  v3 = MIL::Fp16::GetFloat(&v6);
  return MIL::Fp16::FromFloat(v4, Float - v3);
}

uint64_t MIL::MathOps::ModOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v8 = a1;
  v7 = a2;
  Float = MIL::Fp16::GetFloat(&v8);
  v3 = MIL::Fp16::GetFloat(&v7);
  v4 = fmodf(Float, v3);
  return MIL::Fp16::FromFloat(v5, v4);
}

uint64_t std::__function::__func<MIL::Fp16 (*)(MIL::Fp16,MIL::Fp16),std::allocator<MIL::Fp16 (*)(MIL::Fp16,MIL::Fp16)>,MIL::Fp16 ()(MIL::Fp16,MIL::Fp16)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EA6D8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Fp16 (*)(MIL::Fp16,MIL::Fp16),std::allocator<MIL::Fp16 (*)(MIL::Fp16,MIL::Fp16)>,MIL::Fp16 ()(MIL::Fp16,MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16,MIL::Fp16)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16,MIL::Fp16)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t MIL::MathOps::MaximumOp<int>(uint64_t result, int a2)
{
  if (result <= a2)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

uint64_t MIL::MathOps::MinimumOp<int>(uint64_t result, int a2)
{
  if (a2 >= result)
  {
    return result;
  }

  else
  {
    return a2;
  }
}

uint64_t std::__function::__func<int (*)(int,int),std::allocator<int (*)(int,int)>,int ()(int,int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EA788;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<int (*)(int,int),std::allocator<int (*)(int,int)>,int ()(int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<int ()(int,int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<int ()(int,int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<unsigned char (*)(float,float),std::allocator<unsigned char (*)(float,float)>,unsigned char ()(float,float)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EA838;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<unsigned char (*)(float,float),std::allocator<unsigned char (*)(float,float)>,unsigned char ()(float,float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<unsigned char ()(float,float)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<unsigned char ()(float,float)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<unsigned char (*)(int,int),std::allocator<unsigned char (*)(int,int)>,unsigned char ()(int,int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EA8E8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<unsigned char (*)(int,int),std::allocator<unsigned char (*)(int,int)>,unsigned char ()(int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<unsigned char ()(int,int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<unsigned char ()(int,int)>::~__value_func[abi:ne200100](uint64_t a1)
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

BOOL MIL::MathOps::GreaterOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v5 = a1;
  v4 = a2;
  Float = MIL::Fp16::GetFloat(&v5);
  return Float > MIL::Fp16::GetFloat(&v4);
}

BOOL MIL::MathOps::GreaterEqualOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v5 = a1;
  v4 = a2;
  Float = MIL::Fp16::GetFloat(&v5);
  return Float >= MIL::Fp16::GetFloat(&v4);
}

BOOL MIL::MathOps::LessOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v5 = a1;
  v4 = a2;
  Float = MIL::Fp16::GetFloat(&v5);
  return Float < MIL::Fp16::GetFloat(&v4);
}

BOOL MIL::MathOps::LessEqualOp<MIL::Fp16>(__int16 a1, __int16 a2)
{
  v5 = a1;
  v4 = a2;
  Float = MIL::Fp16::GetFloat(&v5);
  return Float <= MIL::Fp16::GetFloat(&v4);
}

uint64_t std::__function::__func<unsigned char (*)(MIL::Fp16,MIL::Fp16),std::allocator<unsigned char (*)(MIL::Fp16,MIL::Fp16)>,unsigned char ()(MIL::Fp16,MIL::Fp16)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EA998;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<unsigned char (*)(MIL::Fp16,MIL::Fp16),std::allocator<unsigned char (*)(MIL::Fp16,MIL::Fp16)>,unsigned char ()(MIL::Fp16,MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<unsigned char ()(MIL::Fp16,MIL::Fp16)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<unsigned char ()(MIL::Fp16,MIL::Fp16)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<unsigned char (*)(unsigned char,unsigned char),std::allocator<unsigned char (*)(unsigned char,unsigned char)>,unsigned char ()(unsigned char,unsigned char)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EAA48;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<unsigned char (*)(unsigned char,unsigned char),std::allocator<unsigned char (*)(unsigned char,unsigned char)>,unsigned char ()(unsigned char,unsigned char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<unsigned char ()(unsigned char,unsigned char)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<unsigned char ()(unsigned char,unsigned char)>::~__value_func[abi:ne200100](uint64_t a1)
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

void MIL::Operators::Common::ios15::ElementwiseBinary::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_218141F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 256);
  *(v59 - 256) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61, a2, a3, a4, a5, a6, a7, a8);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Add::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218142F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 240);
  *(v59 - 240) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61, a2, a3, a4, a5, a6, a7, a8);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ElementwiseBinaryBoolOutput::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_218143CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61)
{
  v64 = *(v62 - 104);
  *(v62 - 104) = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64, a2, a3, a4, a5, a6, a7, a8);
  }

  v65 = *v61;
  *v61 = 0;
  if (v65)
  {
    (*(*v65 + 8))(v65, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a57, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v62 - 232), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ElementwiseBinaryLogical::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_218144860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56)
{
  if (a55)
  {
    (*(*a55 + 8))(a55, a2, a3, a4, a5, a6, a7, a8);
  }

  v59 = *v56;
  *v56 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v57 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v57 - 208), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::LogicalAnd::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181453DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56)
{
  if (a55)
  {
    (*(*a55 + 8))(a55, a2, a3, a4, a5, a6, a7, a8);
  }

  v59 = *v56;
  *v56 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v57 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v57 - 224), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::LogicalOr::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218145F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56)
{
  if (a55)
  {
    (*(*a55 + 8))(a55, a2, a3, a4, a5, a6, a7, a8);
  }

  v59 = *v56;
  *v56 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v57 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v57 - 224), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::LogicalXor::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218146AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56)
{
  if (a55)
  {
    (*(*a55 + 8))(a55, a2, a3, a4, a5, a6, a7, a8);
  }

  v59 = *v56;
  *v56 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v57 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v57 - 224), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Equal::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181477CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42)
{
  v45 = *(v43 - 88);
  *(v43 - 88) = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45, a2, a3, a4, a5, a6, a7, a8);
  }

  v46 = *v42;
  *v42 = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a42, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v43 - 248), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Greater::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181484EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42)
{
  v45 = *(v43 - 88);
  *(v43 - 88) = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45, a2, a3, a4, a5, a6, a7, a8);
  }

  v46 = *v42;
  *v42 = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a42, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v43 - 248), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::GreaterEqual::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21814920C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42)
{
  v45 = *(v43 - 88);
  *(v43 - 88) = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45, a2, a3, a4, a5, a6, a7, a8);
  }

  v46 = *v42;
  *v42 = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a42, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v43 - 248), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Less::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218149F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42)
{
  v45 = *(v43 - 88);
  *(v43 - 88) = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45, a2, a3, a4, a5, a6, a7, a8);
  }

  v46 = *v42;
  *v42 = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a42, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v43 - 248), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::LessEqual::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21814AC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42)
{
  v45 = *(v43 - 88);
  *(v43 - 88) = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45, a2, a3, a4, a5, a6, a7, a8);
  }

  v46 = *v42;
  *v42 = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a42, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v43 - 248), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::NotEqual::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21814B96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42)
{
  v45 = *(v43 - 88);
  *(v43 - 88) = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45, a2, a3, a4, a5, a6, a7, a8);
  }

  v46 = *v42;
  *v42 = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a42, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v43 - 248), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::FloorDiv::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21814C884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 240);
  *(v59 - 240) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61, a2, a3, a4, a5, a6, a7, a8);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Maximum::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21814D8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 240);
  *(v59 - 240) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61, a2, a3, a4, a5, a6, a7, a8);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Minimum::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21814E8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 240);
  *(v59 - 240) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61, a2, a3, a4, a5, a6, a7, a8);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Mul::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21814F8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 240);
  *(v59 - 240) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61, a2, a3, a4, a5, a6, a7, a8);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Pow::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218150904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 240);
  *(v59 - 240) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61, a2, a3, a4, a5, a6, a7, a8);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::RealDiv::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218151924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 240);
  *(v59 - 240) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61, a2, a3, a4, a5, a6, a7, a8);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Sub::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218152944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 240);
  *(v59 - 240) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61, a2, a3, a4, a5, a6, a7, a8);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Mod::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218153964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 240);
  *(v59 - 240) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61, a2, a3, a4, a5, a6, a7, a8);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::vector<std::shared_ptr<MIL::IRValue const>> (*)(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int),std::allocator<std::vector<std::shared_ptr<MIL::IRValue const>> (*)(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>,std::vector<std::shared_ptr<MIL::IRValue const>> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EAAF8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<std::vector<std::shared_ptr<MIL::IRValue const>> (*)(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int),std::allocator<std::vector<std::shared_ptr<MIL::IRValue const>> (*)(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>,std::vector<std::shared_ptr<MIL::IRValue const>> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>::operator()(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = *(a1 + 8);
  v8 = *a3;
  *a3 = 0uLL;
  v7(a2, &v8, a4, a5, a6, *a7);
  if (*(&v8 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
  }
}

void sub_218153ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::vector<std::shared_ptr<MIL::IRValue const>> (*)(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int),std::allocator<std::vector<std::shared_ptr<MIL::IRValue const>> (*)(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>,std::vector<std::shared_ptr<MIL::IRValue const>> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateCast(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "dtype");
  ParameterValue = MIL::IROperation::GetParameterValue(this, __p);
  v5 = MIL::IRValue::AsTensor(ParameterValue);
  MIL::IRValue::GetScalar<std::string>(v5, &v17);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = MIL::StringToIRDataType(&v17, 0);
  v7 = (*(*this + 176))(this);
  if (*(v7 + 8) == *v7)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  Type = MIL::IRNamedValueType::GetType(**v7);
  v9 = MIL::IRValueType::AsTensorType(Type);
  if (v6 == (*(*v9 + 88))(v9))
  {
    MIL::ValidationResult::ValidationResult(a2);
  }

  else
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v11 = LocationPtr[1];
    *&v14 = *LocationPtr;
    *(&v14 + 1) = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v12, "Specified dtype of cast does not match that of output tensor.");
    MIL::ValidationResult::ValidationResult(a2, &v14, 313, v12);
    if (v13 < 0)
    {
      operator delete(v12[0]);
    }

    if (*(&v14 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
    }
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_2181540A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceCast(uint64_t *a1, void x1_0, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "dtype");
  v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, __p);
  if (v5)
  {
    Value = MIL::IRTypedArgument::TryGetValue(*v5[5]);
    v7 = (*(*Value + 40))(Value);
    MIL::IRValue::GetScalar<std::string>(v7, &v15);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    v8 = MIL::StringToIRDataType(&v15, 0);
    std::string::basic_string[abi:ne200100]<0>(&v16, "x");
    v9 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &v16);
    if (v9)
    {
      ValueType = MIL::IRTypedArgument::TryGetValueType(*v9[5]);
      v11 = MIL::IRValueType::AsTensorType(ValueType);
      v12 = (*(*v11 + 96))(v11);
      __p[0] = 0;
      __p[1] = 0;
      v14 = 0;
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, *v12, *(v12 + 8), (*(v12 + 8) - *v12) >> 3);
      if (v17 < 0)
      {
        operator delete(v16);
      }

      MIL::IRTensorValueType::MakeWithShape(*a1, v8, __p);
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2181542D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceAcos(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v16[7] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v16[0] = *a2;
  v16[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "x");
  v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v14);
  if (v7)
  {
    v8 = v7[5];
    v9 = v8[1];
    v15[0] = *v8;
    v15[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = 0u;
    v12 = 0u;
    v13 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "acos");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2181544C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::UnaryOpHelper(MIL::IRConstantDimension **a1, uint64_t *a2, uint64_t *a3)
{
  __p[64] = *MEMORY[0x277D85DE8];
  if ((*(**a3 + 40))())
  {
    v8 = *a3;
    v7 = a3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "x");
    __p[23] = v8;
    __p[24] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    MIL::IRTypedArgument::Make();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "IRValue x is not an IRTensor object.");
  __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
}

void sub_2181567A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  __cxa_free_exception(v57);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a23);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a43);
  MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor((v58 - 208));
  std::__function::__value_func<std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::~__value_func[abi:ne200100](v58 - 136);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a56);
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceAcosh(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v16[7] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v16[0] = *a2;
  v16[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "x");
  v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v14);
  if (v7)
  {
    v8 = v7[5];
    v9 = v8[1];
    v15[0] = *v8;
    v15[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = 0u;
    v12 = 0u;
    v13 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "acosh");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218156CCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceAsin(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v16[7] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v16[0] = *a2;
  v16[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "x");
  v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v14);
  if (v7)
  {
    v8 = v7[5];
    v9 = v8[1];
    v15[0] = *v8;
    v15[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = 0u;
    v12 = 0u;
    v13 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "asin");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218156ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceCast(uint64_t *a1, uint64_t a2, void *a3)
{
  v17[13] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v17, "x");
  v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v17);
  if (v5)
  {
    v6 = (*(**v5[5] + 40))(*v5[5]);
    if (SHIBYTE(v17[2]) < 0)
    {
      operator delete(v17[0]);
    }

    if (v6)
    {
      std::string::basic_string[abi:ne200100]<0>(v17, "x");
      v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v17);
      if (v7)
      {
        v8 = v7[5];
        v10 = *v8;
        v9 = v8[1];
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(v17[2]) < 0)
        {
          operator delete(v17[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(v17, "dtype");
        v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v17);
        if (v11)
        {
          v12 = *(v11[5] + 1);
          if (v12)
          {
            atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(v17[2]) < 0)
          {
            operator delete(v17[0]);
          }

          std::string::basic_string[abi:ne200100]<0>(&v16, "x");
          v14 = v10;
          v15 = v9;
          if (v9)
          {
            atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
          }

          MIL::IRTypedArgument::Make();
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "IRValue x is not an IRTensor object.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218157A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  __cxa_free_exception(v53);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(&a46);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceAsinh(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v16[7] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v16[0] = *a2;
  v16[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "x");
  v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v14);
  if (v7)
  {
    v8 = v7[5];
    v9 = v8[1];
    v15[0] = *v8;
    v15[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = 0u;
    v12 = 0u;
    v13 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "asinh");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218158064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceAtan(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v16[7] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v16[0] = *a2;
  v16[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "x");
  v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v14);
  if (v7)
  {
    v8 = v7[5];
    v9 = v8[1];
    v15[0] = *v8;
    v15[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = 0u;
    v12 = 0u;
    v13 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "atan");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218158270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceAtanh(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v16[7] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v16[0] = *a2;
  v16[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "x");
  v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v14);
  if (v7)
  {
    v8 = v7[5];
    v9 = v8[1];
    v15[0] = *v8;
    v15[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = 0u;
    v12 = 0u;
    v13 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "atanh");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21815847C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceCeil(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v16[7] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v16[0] = *a2;
  v16[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "x");
  v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v14);
  if (v7)
  {
    v8 = v7[5];
    v9 = v8[1];
    v15[0] = *v8;
    v15[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = 0u;
    v12 = 0u;
    v13 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "ceil");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218158688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceCos(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v16[7] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v16[0] = *a2;
  v16[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "x");
  v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v14);
  if (v7)
  {
    v8 = v7[5];
    v9 = v8[1];
    v15[0] = *v8;
    v15[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = 0u;
    v12 = 0u;
    v13 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "cos");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218158894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceCosh(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v16[7] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v16[0] = *a2;
  v16[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "x");
  v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v14);
  if (v7)
  {
    v8 = v7[5];
    v9 = v8[1];
    v15[0] = *v8;
    v15[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = 0u;
    v12 = 0u;
    v13 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "cosh");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218158AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceExp(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v16[7] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v16[0] = *a2;
  v16[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "x");
  v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v14);
  if (v7)
  {
    v8 = v7[5];
    v9 = v8[1];
    v15[0] = *v8;
    v15[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = 0u;
    v12 = 0u;
    v13 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "exp");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218158CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceFloor(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v16[7] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v16[0] = *a2;
  v16[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "x");
  v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v14);
  if (v7)
  {
    v8 = v7[5];
    v9 = v8[1];
    v15[0] = *v8;
    v15[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = 0u;
    v12 = 0u;
    v13 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "floor");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218158EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceRound(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v16[7] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v16[0] = *a2;
  v16[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "x");
  v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v14);
  if (v7)
  {
    v8 = v7[5];
    v9 = v8[1];
    v15[0] = *v8;
    v15[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = 0u;
    v12 = 0u;
    v13 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "round");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2181590C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceSin(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v16[7] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v16[0] = *a2;
  v16[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "x");
  v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v14);
  if (v7)
  {
    v8 = v7[5];
    v9 = v8[1];
    v15[0] = *v8;
    v15[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = 0u;
    v12 = 0u;
    v13 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "sin");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2181592D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceSinh(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v16[7] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v16[0] = *a2;
  v16[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "x");
  v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v14);
  if (v7)
  {
    v8 = v7[5];
    v9 = v8[1];
    v15[0] = *v8;
    v15[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = 0u;
    v12 = 0u;
    v13 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "sinh");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2181594DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceSqrt(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v16[7] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v16[0] = *a2;
  v16[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "x");
  v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v14);
  if (v7)
  {
    v8 = v7[5];
    v9 = v8[1];
    v15[0] = *v8;
    v15[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = 0u;
    v12 = 0u;
    v13 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "sqrt");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2181596E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}