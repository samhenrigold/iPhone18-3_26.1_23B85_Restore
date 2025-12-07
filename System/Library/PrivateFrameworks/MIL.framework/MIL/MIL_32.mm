void MIL::Operators::Common::ios18::SliceUpdate::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21843FD18(_Unwind_Exception *a1)
{
  v4 = *(v2 - 128);
  *(v2 - 128) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x408], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x4F0], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::SlidingWindows::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218441ACC(_Unwind_Exception *a1)
{
  v4 = *(v2 - 136);
  *(v2 - 136) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 192), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x218], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Squeeze::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184431C0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 136);
  *(v2 - 136) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 192), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x220], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Transpose::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184448B8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 136);
  *(v2 - 136) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 192), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x220], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::CustomValidators::ValidateScaledDotProductAttention(MIL::Operators::Common::ios18::CustomValidators *this@<X0>, MIL::ValidationResult *x8_0@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "query");
  ParameterType = MIL::IROperation::GetParameterType(this, __p);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "key");
  v7 = MIL::IROperation::GetParameterType(this, __p);
  v8 = MIL::IRValueType::AsTensorType(v7);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "value");
  v9 = MIL::IROperation::GetParameterType(this, __p);
  v10 = MIL::IRValueType::AsTensorType(v9);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  OutputType = MIL::IROperation::GetOutputType(this, 0);
  v12 = MIL::IRValueType::AsTensorType(OutputType);
  std::string::basic_string[abi:ne200100]<0>(__p, "attn_mask");
  if (MIL::IROperation::TryGetParameterType(this, __p, 0))
  {
    std::string::basic_string[abi:ne200100]<0>(v18, "attn_mask");
    v13 = MIL::IROperation::TryGetParameterType(this, v18, 0);
    v14 = MIL::IRValueType::AsTensorType(v13);
    if (v19 < 0)
    {
      operator delete(v18[0]);
    }
  }

  else
  {
    v14 = 0;
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v16 = LocationPtr[1];
  v17[0] = *LocationPtr;
  v17[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_218445058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::ValidateScaledDotProductAttentionInputs(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, MIL::ValidationResult *a7@<X8>)
{
  v84 = *MEMORY[0x277D85DE8];
  if (!(*(*a1 + 104))(a1) || !(*(*a3 + 104))(a3) || !(*(*a2 + 104))(a2) || a4 && ((*(*a4 + 104))(a4) & 1) == 0)
  {
    v45 = a6[1];
    *&v79 = *a6;
    *(&v79 + 1) = v45;
    if (v45)
    {
      atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v77, "Scaled Dot Product Attention currently doesn't support variadic shapes.");
    MIL::ValidationResult::ValidationResult(a7, &v79, 318, v77);
    if (v78 < 0)
    {
      operator delete(v77[0]);
    }

    v46 = *(&v79 + 1);
    if (!*(&v79 + 1))
    {
      return;
    }

LABEL_47:
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
    return;
  }

  v14 = (*(*a1 + 96))(a1);
  v15 = (*(*a2 + 96))(a2);
  v16 = (*(*a3 + 96))(a3);
  v17 = v14[1] - *v14;
  if (v17 != v15[1] - *v15 || (v18 = v16, v16[1] - *v16 != v17))
  {
    v47 = a6[1];
    *&v76 = *a6;
    *(&v76 + 1) = v47;
    if (v47)
    {
      atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v74, "Query, key, and value should have the same rank.");
    MIL::ValidationResult::ValidationResult(a7, &v76, 304, v74);
    if (v75 < 0)
    {
      operator delete(v74[0]);
    }

    v46 = *(&v76 + 1);
    if (!*(&v76 + 1))
    {
      return;
    }

    goto LABEL_47;
  }

  if (a5)
  {
    v19 = (*(*a5 + 96))(a5);
    if (v19[1] - *v19 != v17)
    {
      v48 = a6[1];
      *&v73 = *a6;
      *(&v73 + 1) = v48;
      if (v48)
      {
        atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v71, "Output should have the same rank as query, key, and value.");
      MIL::ValidationResult::ValidationResult(a7, &v73, 304, v71);
      if (v72 < 0)
      {
        operator delete(v71[0]);
      }

      v46 = *(&v73 + 1);
      if (!*(&v73 + 1))
      {
        return;
      }

      goto LABEL_47;
    }
  }

  v54 = v17 >> 3;
  v53 = (v17 >> 3) - 2;
  if (v53 < 2)
  {
LABEL_30:
    if (a4)
    {
      __p = 0;
      v60 = 0;
      v61 = 0;
      std::vector<std::string const*>::reserve(&__p, v54);
      v39 = v54 - 1;
      if (v54 != 1)
      {
        v40 = 0;
        do
        {
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, (*v14 + v40));
          v40 += 8;
          --v39;
        }

        while (v39);
      }

      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, (*v15 + 8 * v53));
      v41 = (*(*a4 + 96))(a4);
      memset(v81, 0, sizeof(v81));
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v81, *v41, *(v41 + 8), (*(v41 + 8) - *v41) >> 3);
      v82 = 0;
      v83[0] = 0;
      v83[1] = 0;
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v82, __p, v60, (v60 - __p) >> 3);
      memset(v58, 0, sizeof(v58));
      std::vector<std::vector<MIL::IRDimension const*>>::__init_with_size[abi:ne200100]<std::vector<MIL::IRDimension const*> const*,std::vector<MIL::IRDimension const*> const*>(v58, v81, &v84, 2uLL);
      CanBroadcastShapes = MIL::Validation::CanBroadcastShapes(v58);
      v80 = v58;
      std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v80);
      for (i = 0; i != -6; i -= 3)
      {
        v44 = v81[i + 3];
        if (v44)
        {
          v83[i] = v44;
          operator delete(v44);
        }
      }

      if (!CanBroadcastShapes)
      {
        v49 = a6[1];
        *&v57 = *a6;
        *(&v57 + 1) = v49;
        if (v49)
        {
          atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v55, "Attention mask is not broadcastable with query/value/key.");
        MIL::ValidationResult::ValidationResult(a7, &v57, 304, v55);
        if (v56 < 0)
        {
          operator delete(v55[0]);
        }

        if (*(&v57 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v57 + 1));
        }

        if (__p)
        {
          v60 = __p;
          operator delete(__p);
        }

        return;
      }

      if (__p)
      {
        v60 = __p;
        operator delete(__p);
      }
    }

    MIL::ValidationResult::ValidationResult(a7);
    return;
  }

  v20 = 0;
  while (1)
  {
    v21 = *(*v15 + 8 * v20 + 8);
    if ((*(*v21 + 16))(v21))
    {
      v22 = *(*v15 + 8 * v20 + 8);
      v23 = (*(*v22 + 16))(v22);
      v24 = (*(*v23 + 48))(v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = *(*v14 + 8 * v20 + 8);
    if ((*(*v25 + 16))(v25))
    {
      break;
    }

LABEL_19:
    v30 = *(*v18 + 8 * v20 + 8);
    if ((*(*v30 + 16))(v30))
    {
      if ((v24 & 0x8000000000000000) == 0)
      {
        v31 = *(*v18 + 8 * v20 + 8);
        v32 = (*(*v31 + 16))(v31);
        if ((*(*v32 + 48))(v32) != v24)
        {
          v51 = a6[1];
          *&v67 = *a6;
          *(&v67 + 1) = v51;
          if (v51)
          {
            atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v65, "Inner dimensions of Query, Key, and Value must match.");
          MIL::ValidationResult::ValidationResult(a7, &v67, 304, v65);
          if (v66 < 0)
          {
            operator delete(v65[0]);
          }

          v46 = *(&v67 + 1);
          if (*(&v67 + 1))
          {
            goto LABEL_47;
          }

          return;
        }
      }

      v33 = *(*v18 + 8 * v20 + 8);
      v34 = (*(*v33 + 16))(v33);
      v24 = (*(*v34 + 48))(v34);
    }

    if (a5)
    {
      v35 = *(*(*(*a5 + 96))(a5) + 8 * v20 + 8);
      if ((*(*v35 + 16))(v35) && v24 >= 1)
      {
        v37 = *(*(*(*a5 + 96))(a5) + 8 * v20 + 8);
        v38 = (*(*v37 + 16))(v37);
        if ((*(*v38 + 48))(v38) != v24)
        {
          v52 = a6[1];
          *&v64 = *a6;
          *(&v64 + 1) = v52;
          if (v52)
          {
            atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v62, "Inner dimensions of Output must match Query, Key, and Value.");
          MIL::ValidationResult::ValidationResult(a7, &v64, 304, v62);
          if (v63 < 0)
          {
            operator delete(v62[0]);
          }

          v46 = *(&v64 + 1);
          if (*(&v64 + 1))
          {
            goto LABEL_47;
          }

          return;
        }
      }
    }

    if (v54 - 3 == ++v20)
    {
      goto LABEL_30;
    }
  }

  if (v24 < 0 || (v26 = *(*v14 + 8 * v20 + 8), v27 = (*(*v26 + 16))(v26), (*(*v27 + 48))(v27) == v24))
  {
    v28 = *(*v14 + 8 * v20 + 8);
    v29 = (*(*v28 + 16))(v28);
    v24 = (*(*v29 + 48))(v29);
    goto LABEL_19;
  }

  v50 = a6[1];
  *&v70 = *a6;
  *(&v70 + 1) = v50;
  if (v50)
  {
    atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v68, "Inner dimensions of Query, Key, and Value must match.");
  MIL::ValidationResult::ValidationResult(a7, &v70, 304, v68);
  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

  v46 = *(&v70 + 1);
  if (*(&v70 + 1))
  {
    goto LABEL_47;
  }
}

void sub_218445A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, std::__shared_weak_count *a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceScaledDotProductAttention(MIL::IRUnknownDimension **a1, uint64_t *a2, void *a3)
{
  v45[1] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "query");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v8 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "key");
  v9 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v10 = MIL::IRValueType::AsTensorType(v9);
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "value");
  v11 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v12 = MIL::IRValueType::AsTensorType(v11);
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "attn_mask");
  if (std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p))
  {
    std::string::basic_string[abi:ne200100]<0>(v43, "attn_mask");
    v13 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, v43);
    v14 = MIL::IRValueType::AsTensorType(v13);
    if (SHIBYTE(v44) < 0)
    {
      operator delete(v43[0]);
    }
  }

  else
  {
    v14 = 0;
  }

  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = *a2;
  v16 = a2[1];
  v39[0] = v15;
  v39[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (!MIL::ValidationResult::IsGood(__p))
  {
    exception = __cxa_allocate_exception(0x48uLL);
    MIL::MILResult::MILResult(v37, __p);
    v37[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
    v38 = v42;
    MIL::ValidationError::ValidationError(exception, v37);
  }

  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  v17 = (*(*v8 + 96))(v8);
  v18 = (*(*v10 + 96))(v10);
  v19 = (*(*v12 + 96))(v12);
  v20 = v17[1] - *v17;
  if (!v20)
  {
LABEL_35:
    v34 = *a1;
    v35 = (*(*v8 + 88))(v8);
    MIL::IRTensorValueType::MakeWithShape(v34, v35, v43);
  }

  v21 = v19;
  v22 = 0;
  v23 = v20 >> 3;
  v24 = v23 - 2;
  v25 = v23 - 1;
  if (v23 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v23;
  }

  while (1)
  {
    if (v24 == v22)
    {
      v27 = (*(**(*v17 + 8 * v24) + 16))(*(*v17 + 8 * v24));
      v28 = v17;
      v29 = v24;
      if (v27)
      {
        goto LABEL_31;
      }
    }

    else if (v25 == v22)
    {
      v30 = (*(**(*v21 + 8 * v25) + 16))(*(*v21 + 8 * v25));
      v28 = v21;
      v29 = v25;
      if (v30)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v31 = (*(**(*v17 + 8 * v22) + 16))(*(*v17 + 8 * v22));
      v28 = v17;
      v29 = v22;
      if (v31 || (v32 = (*(**(*v18 + 8 * v22) + 16))(*(*v18 + 8 * v22)), v28 = v18, v29 = v22, v32) || (v33 = (*(**(*v21 + 8 * v22) + 16))(*(*v21 + 8 * v22)), v28 = v21, v29 = v22, v33))
      {
LABEL_31:
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v43, (*v28 + 8 * v29));
        goto LABEL_32;
      }
    }

    v45[0] = MIL::IRUnknownDimension::Make(*a1, 0);
    std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v43, v45);
LABEL_32:
    if (v26 == ++v22)
    {
      goto LABEL_35;
    }
  }
}

void sub_2184460D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  MIL::ValidationResult::~ValidationResult(&a9);
  MIL::ValidationResult::~ValidationResult(&a18);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ScaledDotProductAttention::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218448468(_Unwind_Exception *a1)
{
  v4 = *(v2 - 112);
  *(v2 - 112) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x578], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x4D8], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceConstexprBlockwiseShiftScale(uint64_t *a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceConstexprBlockwiseShiftScale(a1, v5, a3);
}

void sub_218449008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceConstexprLutToDense(uint64_t *a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceConstexprLutToDense(a1, v5, a3);
}

void sub_218449070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceConstexprSparseToDense(uint64_t *a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceConstexprSparseToDense(a1, v5, a3);
}

void sub_2184490D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceConstexprCast(uint64_t *a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceConstexprCast(a1, v5, a3);
}

void sub_218449140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::ConstexprBlockwiseShiftScale::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21844A8E8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 128);
  *(v2 - 128) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 184), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x278], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::ConstexprCast::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21844BB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (a43)
  {
    (*(*a43 + 8))(a43, a2, a3, a4, a5, a6, a7, a8);
  }

  v53 = *v51;
  *v51 = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a46, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::ConstexprLutToDense::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21844D760(_Unwind_Exception *a1)
{
  v4 = *(v2 - 216);
  *(v2 - 216) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x398], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x288], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::ConstexprSparseToDense::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21844F19C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 128);
  *(v2 - 128) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 136), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x230], 0);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Operators::Common::ios19::ConstexprBlockwiseShiftScale::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios19::ConstexprBlockwiseShiftScale::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EC6F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Operators::Common::ios19::ConstexprBlockwiseShiftScale::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios19::ConstexprBlockwiseShiftScale::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Operators::Common::ios19::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios19::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EC778;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Operators::Common::ios19::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios19::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Operators::Common::ios19::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios19::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EC7F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Operators::Common::ios19::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios19::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Operators::Common::ios19::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios19::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EC878;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Operators::Common::ios19::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios19::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceElementwiseBinaryBoolOutput(MIL::IRUnknownDimension **a1, uint64_t *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceElementwiseBinaryBoolOutput(a1, v5, a3);
}

void sub_21844FBB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::ElementwiseBinary::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_218450D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  v69 = a65;
  a65 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  v70 = *v66;
  *v66 = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v67 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a66, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Add::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184525B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  v69 = a65;
  a65 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  v70 = *v66;
  *v66 = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v67 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a66, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::ElementwiseBinaryBoolOutput::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_218453AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = *(v61 - 120);
  *(v61 - 120) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  v64 = *v60;
  *v60 = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::ElementwiseBinaryLogical::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_218454C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v56 = *(v54 - 96);
  *(v54 - 96) = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v54 - 88), 0);
  v57 = *v53;
  *v53 = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v54 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a53, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::LogicalAnd::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218455D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v56 = *(v54 - 80);
  *(v54 - 80) = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v54 - 72), 0);
  v57 = *v53;
  *v53 = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v54 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a53, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::LogicalOr::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218456E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v56 = *(v54 - 80);
  *(v54 - 80) = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v54 - 72), 0);
  v57 = *v53;
  *v53 = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v54 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a53, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::LogicalXor::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218457FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v56 = *(v54 - 80);
  *(v54 - 80) = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v54 - 72), 0);
  v57 = *v53;
  *v53 = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v54 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a53, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Equal::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21845938C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = *(v61 - 104);
  *(v61 - 104) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  v64 = *v60;
  *v60 = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Greater::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21845A7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = *(v61 - 104);
  *(v61 - 104) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  v64 = *v60;
  *v60 = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::GreaterEqual::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21845BC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = *(v61 - 104);
  *(v61 - 104) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  v64 = *v60;
  *v60 = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Less::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21845D0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = *(v61 - 104);
  *(v61 - 104) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  v64 = *v60;
  *v60 = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::LessEqual::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21845E51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = *(v61 - 104);
  *(v61 - 104) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  v64 = *v60;
  *v60 = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::NotEqual::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21845F980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = *(v61 - 104);
  *(v61 - 104) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  v64 = *v60;
  *v60 = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::FloorDiv::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21846109C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  v69 = a65;
  a65 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  v70 = *v66;
  *v66 = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v67 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a66, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Maximum::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184628F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  v69 = a65;
  a65 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  v70 = *v66;
  *v66 = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v67 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a66, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Minimum::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218464154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  v69 = a65;
  a65 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  v70 = *v66;
  *v66 = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v67 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a66, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Mod::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184659B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  v69 = a65;
  a65 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  v70 = *v66;
  *v66 = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v67 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a66, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Mul::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21846720C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  v69 = a65;
  a65 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  v70 = *v66;
  *v66 = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v67 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a66, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Pow::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218468A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  v69 = a65;
  a65 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  v70 = *v66;
  *v66 = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v67 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a66, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::RealDiv::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21846A2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  v69 = a65;
  a65 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  v70 = *v66;
  *v66 = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v67 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a66, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Sub::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21846BB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  v69 = a65;
  a65 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  v70 = *v66;
  *v66 = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v67 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a66, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Select::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21846D2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *(v66 - 136);
  *(v66 - 136) = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68, a2, a3, a4, a5, a6, a7, a8);
  }

  v69 = *v65;
  *v65 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v66 - 144), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a65, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::CustomValidators::ValidateQuantize(MIL::Operators::Common::ios19::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  OutputType = MIL::IROperation::GetOutputType(this, 0);
  v5 = MIL::IRValueType::AsTensorType(OutputType);
  v6 = (*(*v5 + 88))(v5);
  std::string::basic_string[abi:ne200100]<0>(__p, "zero_point");
  IsParameterSet = MIL::IROperation::IsParameterSet(this, __p);
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v9 = LocationPtr[1];
  v11[0] = *LocationPtr;
  v11[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (MIL::ValidationResult::IsGood(&v14))
  {
    MIL::Operators::Common::ios17::CustomValidators::ValidateQuantize(this, a2);
  }

  else
  {
    v10 = v16;
    *(a2 + 8) = v15;
    v15 = 0uLL;
    *(a2 + 24) = v10;
    *(a2 + 40) = v17;
    v16 = 0uLL;
    v17 = 0;
    *a2 = &unk_2829E9B70;
    *(a2 + 48) = v18;
  }

  MIL::ValidationResult::~ValidationResult(&v14);
}

void sub_21846D964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::ValidateZeroPointForFP8(int a1@<W0>, int a2@<W1>, void *a3@<X2>, MIL::ValidationResult *a4@<X8>)
{
  if ((a1 & 0xFFFFFFFE) != 0x18 || a2 == 0)
  {

    MIL::ValidationResult::ValidationResult(a4);
  }

  else
  {
    v6 = a3[1];
    *&v9 = *a3;
    *(&v9 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Zero_point cannot be set when quantizing to an FP8 datattype.");
    MIL::ValidationResult::ValidationResult(a4, &v9, 315, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    if (*(&v9 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
    }
  }
}

void sub_21846DA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
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

void MIL::Operators::Common::ios19::CustomValidators::ValidateDequantize(MIL::Operators::Common::ios19::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "input");
  ParameterType = MIL::IROperation::GetParameterType(this, &__p);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  v6 = (*(*v5 + 88))(v5);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "zero_point");
  IsParameterSet = MIL::IROperation::IsParameterSet(this, v12);
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v9 = LocationPtr[1];
  v11[0] = *LocationPtr;
  v11[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (MIL::ValidationResult::IsGood(&__p))
  {
    MIL::Operators::Common::ios17::CustomValidators::ValidateDequantize(this, a2);
  }

  else
  {
    v10 = v16;
    *(a2 + 8) = v15;
    v15 = 0uLL;
    *(a2 + 24) = v10;
    *(a2 + 40) = v17;
    v16 = 0uLL;
    v17 = 0;
    *a2 = &unk_2829E9B70;
    *(a2 + 48) = v18;
  }

  MIL::ValidationResult::~ValidationResult(&__p);
}

void sub_21846DBF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValidators::ValidateDynamicQuantize(MIL::Operators::Common::ios19::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  OutputType = MIL::IROperation::GetOutputType(this, 0);
  v5 = MIL::IRValueType::AsTensorType(OutputType);
  v6 = (*(*v5 + 88))(v5);
  std::string::basic_string[abi:ne200100]<0>(__p, "has_zero_point");
  ParameterValue = MIL::IROperation::GetParameterValue(this, __p);
  v8 = MIL::IRValue::AsTensor(ParameterValue);
  v9 = MIL::IRValue::GetScalar<BOOL>(v8);
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v11 = LocationPtr[1];
  v13[0] = *LocationPtr;
  v13[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (MIL::ValidationResult::IsGood(&v16))
  {
    MIL::Operators::Common::ios17::CustomValidators::ValidateDynamicQuantize(this, a2);
  }

  else
  {
    v12 = v18;
    *(a2 + 8) = v17;
    v17 = 0uLL;
    *(a2 + 24) = v12;
    *(a2 + 40) = v19;
    v18 = 0uLL;
    v19 = 0;
    *a2 = &unk_2829E9B70;
    *(a2 + 48) = v20;
  }

  MIL::ValidationResult::~ValidationResult(&v16);
}

void sub_21846DDA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValidators::ValidateDynamicDequantize(MIL::Operators::Common::ios19::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "input");
  ParameterType = MIL::IROperation::GetParameterType(this, &__p);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  v6 = (*(*v5 + 88))(v5);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "zero_point");
  IsParameterSet = MIL::IROperation::IsParameterSet(this, v12);
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v9 = LocationPtr[1];
  v11[0] = *LocationPtr;
  v11[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (MIL::ValidationResult::IsGood(&__p))
  {
    MIL::Operators::Common::ios17::CustomValidators::ValidateDynamicDequantize(this, a2);
  }

  else
  {
    v10 = v16;
    *(a2 + 8) = v15;
    v15 = 0uLL;
    *(a2 + 24) = v10;
    *(a2 + 40) = v17;
    v16 = 0uLL;
    v17 = 0;
    *a2 = &unk_2829E9B70;
    *(a2 + 48) = v18;
  }

  MIL::ValidationResult::~ValidationResult(&__p);
}

void sub_21846DF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceDequantize(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceDequantize(a1, v5, a3);
}

void sub_21846DFF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceDynamicDequantize(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceDynamicDequantize(a1, v5, a3);
}

void sub_21846E05C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceDynamicQuantize(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceDynamicQuantize(a1, v5, a3);
}

void sub_21846E0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceQuantize(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceQuantize(a1, v5, a3);
}

void sub_21846E12C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::Dequantize::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21846F650(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 184), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x268], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::DynamicDequantize::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184710F4(_Unwind_Exception *a1)
{
  v4 = *(v2 - 96);
  *(v2 - 96) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::DynamicQuantize::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218472364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  if (a48)
  {
    (*(*a48 + 8))(a48, a2, a3, a4, a5, a6, a7, a8);
  }

  v59 = *v57;
  *v57 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a57, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Quantize::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218473F04(_Unwind_Exception *a1)
{
  v4 = STACK[0x290];
  STACK[0x290] = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2B8], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceExpandDims(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceExpandDims(a1, v5, a3);
}

void sub_218474730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceSliceByIndex(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSliceByIndex(a1, v5, a3);
}

void sub_218474798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceSliceBySize(MIL::IRUnknownDimension **a1, uint64_t *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSliceBySize(a1, v5, a3);
}

void sub_218474800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceSlidingWindows(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSlidingWindows(a1, v5, a3);
}

void sub_218474868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceSplit(MIL::IRConstantDimension **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSplit(a1, &v5, a3, a4);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_2184748D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceSqueeze(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSqueeze(a1, v5, a3);
}

void sub_218474938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceTranspose(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceTranspose(a1, v5, a3);
}

void sub_2184749A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceStack(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceStack(a1, v5, a3);
}

void sub_218474A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceReshapeLike(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceReshapeLike();
}

void sub_218474A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceConcat(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceConcat(a1, &v5, a3);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_218474AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::CustomValueTypeInference::ValueTypeInferenceReshape(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceReshape(a1, v5, a3);
}

void sub_218474B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios19::Concat::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184758D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63, ...)
{
  va_start(va, a63);
  v66 = *(v64 - 120);
  *(v64 - 120) = 0;
  if (v66)
  {
    (*(*v66 + 8))(v66, a2, a3, a4, a5, a6, a7, a8);
  }

  v67 = *v63;
  *v63 = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v64 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::ExpandDims::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218476E40(_Unwind_Exception *a1)
{
  v4 = *(v2 - 144);
  *(v2 - 144) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x220], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Reshape::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21847867C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 144);
  *(v2 - 144) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x248], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::ReshapeLike::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21847A2E0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 144);
  *(v2 - 144) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 176), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x258], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Reverse::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21847BDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void **a58)
{
  v61 = *(v59 - 144);
  *(v59 - 144) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x288], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::ReverseSequence::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21847DC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *(v66 - 144);
  *(v66 - 144) = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68, a2, a3, a4, a5, a6, a7, a8);
  }

  v69 = *v65;
  *v65 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a65, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2B8], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::SliceByIndex::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218480890(_Unwind_Exception *a1)
{
  v4 = *(v2 - 152);
  *(v2 - 152) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 208), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x440], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::SliceBySize::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218482E4C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 152);
  *(v2 - 152) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 184), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2F0], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::SliceUpdate::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218486140(_Unwind_Exception *a1)
{
  v4 = *(v2 - 144);
  *(v2 - 144) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x408], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x520], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::SlidingWindows::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184880F4(_Unwind_Exception *a1)
{
  v4 = *(v2 - 152);
  *(v2 - 152) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 208), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x248], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Split::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218489058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, __int16 a56, char a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  v65 = *(v63 - 128);
  *(v63 - 128) = 0;
  if (v65)
  {
    (*(*v65 + 8))(v65, a2, a3, a4, a5, a6, a7, a8);
  }

  v66 = *v62;
  *v62 = 0;
  if (v66)
  {
    (*(*v66 + 8))(v66, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v63 - 104), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a55, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Squeeze::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21848A62C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 152);
  *(v2 - 152) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 208), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x250], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Stack::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21848B89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 112);
  *(v59 - 112) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 144), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios19::Transpose::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21848CF80(_Unwind_Exception *a1)
{
  v4 = *(v2 - 152);
  *(v2 - 152) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 208), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x250], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceConstexprBlockwiseShiftScale(uint64_t *a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceConstexprBlockwiseShiftScale(a1, v5, a3);
}

void sub_21848D628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceConstexprLutToDense(uint64_t *a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceConstexprLutToDense(a1, v5, a3);
}

void sub_21848D690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceConstexprSparseToDense(uint64_t *a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceConstexprSparseToDense(a1, v5, a3);
}

void sub_21848D6F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceConstexprCast(uint64_t *a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceConstexprCast(a1, v5, a3);
}

void sub_21848D760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::ConstexprBlockwiseShiftScale::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21848EEF8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 128);
  *(v2 - 128) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 184), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x278], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::ConstexprCast::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184900FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (a43)
  {
    (*(*a43 + 8))(a43, a2, a3, a4, a5, a6, a7, a8);
  }

  v53 = *v51;
  *v51 = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a46, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::ConstexprLutToDense::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218491D04(_Unwind_Exception *a1)
{
  v4 = *(v2 - 216);
  *(v2 - 216) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x398], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x288], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::ConstexprSparseToDense::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218493698(_Unwind_Exception *a1)
{
  v4 = *(v2 - 120);
  *(v2 - 120) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 128), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x220], 0);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Operators::Prototype::prototype::ConstexprBlockwiseShiftScale::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Prototype::prototype::ConstexprBlockwiseShiftScale::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EC8F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Operators::Prototype::prototype::ConstexprBlockwiseShiftScale::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Prototype::prototype::ConstexprBlockwiseShiftScale::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Operators::Prototype::prototype::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Prototype::prototype::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EC978;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Operators::Prototype::prototype::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Prototype::prototype::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Operators::Prototype::prototype::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Prototype::prototype::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EC9F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Operators::Prototype::prototype::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Prototype::prototype::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Operators::Prototype::prototype::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Prototype::prototype::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ECA78;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Operators::Prototype::prototype::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Prototype::prototype::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceDequantize(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceDequantize(a1, v5, a3);
}

void sub_218494088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceDynamicDequantize(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceDynamicDequantize(a1, v5, a3);
}

void sub_2184940F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceDynamicQuantize(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceDynamicQuantize(a1, v5, a3);
}

void sub_218494158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceQuantize(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceQuantize(a1, v5, a3);
}

void sub_2184941C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::Dequantize::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218495564(_Unwind_Exception *a1)
{
  v4 = *(v2 - 96);
  *(v2 - 96) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x218], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::DynamicDequantize::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218496F00(_Unwind_Exception *a1)
{
  v4 = *(v2 - 96);
  *(v2 - 96) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x218], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::DynamicQuantize::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21849811C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  if (a51)
  {
    (*(*a51 + 8))(a51, a2, a3, a4, a5, a6, a7, a8);
  }

  v55 = *v52;
  *v52 = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v53 - 72), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a52, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::Quantize::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218499BE8(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x288], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceExpandDims(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceExpandDims(a1, v5, a3);
}

void sub_21849A428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceSliceByIndex(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSliceByIndex(a1, v5, a3);
}

void sub_21849A490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceSliceBySize(MIL::IRUnknownDimension **a1, uint64_t *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSliceBySize(a1, v5, a3);
}

void sub_21849A4F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceSlidingWindows(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSlidingWindows(a1, v5, a3);
}

void sub_21849A560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceSplit(MIL::IRConstantDimension **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSplit(a1, &v5, a3, a4);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_21849A5C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceSqueeze(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSqueeze(a1, v5, a3);
}

void sub_21849A630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceTranspose(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceTranspose(a1, v5, a3);
}

void sub_21849A698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceStack(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceStack(a1, v5, a3);
}

void sub_21849A700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceReshapeLike(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios16::CustomValueTypeInference::ValueTypeInferenceReshapeLike();
}

void sub_21849A768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceConcat(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceConcat(a1, &v5, a3);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_21849A7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::CustomValueTypeInference::ValueTypeInferenceReshape(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceReshape(a1, v5, a3);
}

void sub_21849A838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Prototype::prototype::Concat::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21849B474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 104);
  *(v59 - 104) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 136), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::ExpandDims::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21849C8CC(_Unwind_Exception *a1)
{
  v4 = *(v2 - 136);
  *(v2 - 136) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 144), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x210], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::Reshape::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21849E014(_Unwind_Exception *a1)
{
  v4 = *(v2 - 136);
  *(v2 - 136) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 144), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x238], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::ReshapeLike::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21849FB38(_Unwind_Exception *a1)
{
  v4 = *(v2 - 136);
  *(v2 - 136) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 168), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x248], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::Reverse::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184A1530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void **a58)
{
  v61 = *(v59 - 136);
  *(v59 - 136) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x270], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::ReverseSequence::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184A3250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *(v66 - 136);
  *(v66 - 136) = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68, a2, a3, a4, a5, a6, a7, a8);
  }

  v69 = *v65;
  *v65 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a65, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2A0], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::SliceByIndex::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184A5AC0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 144);
  *(v2 - 144) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 200), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x440], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::SliceBySize::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184A7D10(_Unwind_Exception *a1)
{
  v4 = *(v2 - 144);
  *(v2 - 144) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 176), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2F0], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::SliceUpdate::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184AAE64(_Unwind_Exception *a1)
{
  v4 = *(v2 - 136);
  *(v2 - 136) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x408], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x508], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::SlidingWindows::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184ACD18(_Unwind_Exception *a1)
{
  v4 = *(v2 - 144);
  *(v2 - 144) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 200), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x230], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::Split::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184ADB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, __int16 a50, char a51, char a52)
{
  v55 = *(v53 - 112);
  *(v53 - 112) = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55, a2, a3, a4, a5, a6, a7, a8);
  }

  v56 = *v52;
  *v52 = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v53 - 88), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a49, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::Squeeze::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184AF074(_Unwind_Exception *a1)
{
  v4 = *(v2 - 144);
  *(v2 - 144) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 200), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x238], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::Stack::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184B00B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v65 = *(v63 - 88);
  *(v63 - 88) = 0;
  if (v65)
  {
    (*(*v65 + 8))(v65, a2, a3, a4, a5, a6, a7, a8);
  }

  v66 = *v62;
  *v62 = 0;
  if (v66)
  {
    (*(*v66 + 8))(v66, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v63 - 120), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::Transpose::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184B162C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 144);
  *(v2 - 144) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 200), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x238], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Prototype::prototype::Foo::Make(MIL::IRConstantDimension *a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = 0;
  operator new();
}

void sub_2184B2180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v32 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a26, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::CustomValidators::ValidateBaseConvGrad(MIL::Operators::Train::ios16Train::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v68, "has_input_grad");
  ParameterValue = MIL::IROperation::GetParameterValue(this, &v68);
  v5 = MIL::IRValue::GetScalar<BOOL>(ParameterValue);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v68, "has_weight_grad");
  v6 = MIL::IROperation::GetParameterValue(this, &v68);
  v7 = MIL::IRValue::GetScalar<BOOL>(v6);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v68, "has_bias_grad");
  v8 = MIL::IROperation::GetParameterValue(this, &v68);
  v9 = MIL::IRValue::GetScalar<BOOL>(v8);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  v10 = v7 + v5;
  v11 = (*(*this + 176))(this);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = (v13 - *v11) >> 4;
  if (v14 != v10 + v9)
  {
    std::to_string(&v64, v14);
    v25 = std::string::insert(&v64, 0, "The length of outputs(");
    v26 = *&v25->__r_.__value_.__l.__data_;
    v65.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v65.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = std::string::append(&v65, ") does not match the expected(");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v66.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v66.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v63, v10 + v9);
    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v63;
    }

    else
    {
      v29 = v63.__r_.__value_.__r.__words[0];
    }

    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v63.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v63.__r_.__value_.__l.__size_;
    }

    v31 = std::string::append(&v66, v29, size);
    v32 = *&v31->__r_.__value_.__l.__data_;
    v68.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
    *&v68.__r_.__value_.__l.__data_ = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    v33 = std::string::append(&v68, ")");
    v20 = v33->__r_.__value_.__r.__words[0];
    v34 = v33->__r_.__value_.__l.__size_;
    v67[0] = v33->__r_.__value_.__r.__words[2];
    *(v67 + 3) = *(&v33->__r_.__value_.__r.__words[2] + 3);
    v22 = SHIBYTE(v33->__r_.__value_.__r.__words[2]);
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v36 = LocationPtr[1];
    *&v62 = *LocationPtr;
    *(&v62 + 1) = v36;
    if (v36)
    {
      atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
    }

    if (v22 < 0)
    {
      std::string::__init_copy_ctor_external(&v61, v20, v34);
    }

    else
    {
      v61.__r_.__value_.__r.__words[0] = v20;
      v61.__r_.__value_.__l.__size_ = v34;
      LODWORD(v61.__r_.__value_.__r.__words[2]) = v67[0];
      *(&v61.__r_.__value_.__r.__words[2] + 3) = *(v67 + 3);
      *(&v61.__r_.__value_.__s + 23) = v22;
    }

    MIL::ValidationResult::ValidationResult(a2, &v62, 310, &v61);
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    v53 = *(&v62 + 1);
    if (!*(&v62 + 1))
    {
      goto LABEL_71;
    }

LABEL_70:
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
LABEL_71:
    if (v22 < 0)
    {
      operator delete(v20);
    }

    return;
  }

  if (v5)
  {
    if (v13 == v12)
    {
      goto LABEL_85;
    }

    Type = MIL::IRNamedValueType::GetType(*v12);
    std::string::basic_string[abi:ne200100]<0>(&v68, "x");
    ParameterType = MIL::IROperation::GetParameterType(this, &v68);
    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (Type != ParameterType)
    {
      std::to_string(&v66, 0);
      v17 = std::string::insert(&v66, 0, "The shape and data type of the output at index = ");
      v18 = *&v17->__r_.__value_.__l.__data_;
      v68.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v68.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      v19 = std::string::append(&v68, " must match input 'x'");
      v20 = v19->__r_.__value_.__r.__words[0];
      v21 = v19->__r_.__value_.__l.__size_;
      LODWORD(v65.__r_.__value_.__l.__data_) = v19->__r_.__value_.__r.__words[2];
      *(v65.__r_.__value_.__r.__words + 3) = *(&v19->__r_.__value_.__r.__words[2] + 3);
      v22 = SHIBYTE(v19->__r_.__value_.__r.__words[2]);
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      v23 = MIL::IRObject::GetLocationPtr(this);
      v24 = v23[1];
      *&v60 = *v23;
      *(&v60 + 1) = v24;
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      if (v22 < 0)
      {
        std::string::__init_copy_ctor_external(&v59, v20, v21);
      }

      else
      {
        v59.__r_.__value_.__r.__words[0] = v20;
        v59.__r_.__value_.__l.__size_ = v21;
        LODWORD(v59.__r_.__value_.__r.__words[2]) = v65.__r_.__value_.__l.__data_;
        *(&v59.__r_.__value_.__r.__words[2] + 3) = *(v65.__r_.__value_.__r.__words + 3);
        *(&v59.__r_.__value_.__s + 23) = v22;
      }

      MIL::ValidationResult::ValidationResult(a2, &v60, 313, &v59);
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      v53 = *(&v60 + 1);
      if (!*(&v60 + 1))
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    }
  }

  if (v7)
  {
    if (v5 >= ((*(v11 + 8) - *v11) >> 4))
    {
      goto LABEL_85;
    }

    v37 = MIL::IRNamedValueType::GetType(*(*v11 + 16 * v5));
    std::string::basic_string[abi:ne200100]<0>(&v68, "weight");
    v38 = MIL::IROperation::GetParameterType(this, &v68);
    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (v37 != v38)
    {
      std::to_string(&v66, v5);
      v39 = std::string::insert(&v66, 0, "The shape and data type of the output at index = ");
      v40 = *&v39->__r_.__value_.__l.__data_;
      v68.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
      *&v68.__r_.__value_.__l.__data_ = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      v41 = std::string::append(&v68, " must match input 'weight'");
      v20 = v41->__r_.__value_.__r.__words[0];
      v42 = v41->__r_.__value_.__l.__size_;
      LODWORD(v65.__r_.__value_.__l.__data_) = v41->__r_.__value_.__r.__words[2];
      *(v65.__r_.__value_.__r.__words + 3) = *(&v41->__r_.__value_.__r.__words[2] + 3);
      v22 = SHIBYTE(v41->__r_.__value_.__r.__words[2]);
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      v43 = MIL::IRObject::GetLocationPtr(this);
      v44 = v43[1];
      *&v58 = *v43;
      *(&v58 + 1) = v44;
      if (v44)
      {
        atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
      }

      if (v22 < 0)
      {
        std::string::__init_copy_ctor_external(&v57, v20, v42);
      }

      else
      {
        v57.__r_.__value_.__r.__words[0] = v20;
        v57.__r_.__value_.__l.__size_ = v42;
        LODWORD(v57.__r_.__value_.__r.__words[2]) = v65.__r_.__value_.__l.__data_;
        *(&v57.__r_.__value_.__r.__words[2] + 3) = *(v65.__r_.__value_.__r.__words + 3);
        *(&v57.__r_.__value_.__s + 23) = v22;
      }

      MIL::ValidationResult::ValidationResult(a2, &v58, 313, &v57);
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      v53 = *(&v58 + 1);
      if (!*(&v58 + 1))
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    }
  }

  if (!v9)
  {
LABEL_73:
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  if (v10 >= (*(v11 + 8) - *v11) >> 4)
  {
LABEL_85:
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  v45 = MIL::IRNamedValueType::GetType(*(*v11 + 16 * v10));
  std::string::basic_string[abi:ne200100]<0>(&v68, "weight");
  v46 = MIL::IROperation::GetParameterType(this, &v68);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  v47 = MIL::IRValueType::AsTensorType(v45);
  v48 = (*(*v47 + 96))(v47);
  v49 = MIL::IRValueType::AsTensorType(v46);
  v50 = (*(*v49 + 96))(v49);
  if (v48[1] - *v48 == 8 && **v48 == **v50)
  {
    goto LABEL_73;
  }

  v51 = MIL::IRObject::GetLocationPtr(this);
  v52 = v51[1];
  *&v56 = *v51;
  *(&v56 + 1) = v52;
  if (v52)
  {
    atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "The shape of output 'db'([C_out]) must match the shape with the first dimension size of input 'weight'");
  MIL::ValidationResult::ValidationResult(a2, &v56, 313, __p);
  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(&v56 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v56 + 1));
  }
}

void sub_2184B29EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (v53 < 0)
  {
    operator delete(v52);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Train::ios16Train::CustomValidators::ValidateConvGrad(MIL::Operators::Train::ios16Train::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  MIL::Operators::Train::ios16Train::CustomValidators::ValidateBaseConvGrad(this, v4);
  if ((*(v4[0] + 2))(v4))
  {
    MIL::ValidationResult::~ValidationResult(v4);
    MIL::Operators::Common::ios15::CustomValidators::ValidateConv(this, a2);
  }

  else
  {
    MIL::MILResult::MILResult(a2, v4);
    *a2 = &unk_2829E9B70;
    *(a2 + 48) = v5;
    MIL::ValidationResult::~ValidationResult(v4);
  }
}

void sub_2184B2C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MIL::ValidationResult::~ValidationResult(va);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::BaseConvGrad::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_2184B3B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55)
{
  if (a55)
  {
    (*(*a55 + 8))(a55, a2, a3, a4, a5, a6, a7, a8);
  }

  v58 = *v55;
  *v55 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 232), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::ConvGrad::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184B642C(_Unwind_Exception *a1)
{
  v5 = STACK[0x4E8];
  STACK[0x4E8] = 0;
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
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x458], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::CustomValidators::ValidateLinearGrad(MIL::Operators::Train::ios16Train::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v68, "has_input_grad");
  ParameterValue = MIL::IROperation::GetParameterValue(this, &v68);
  v5 = MIL::IRValue::GetScalar<BOOL>(ParameterValue);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v68, "has_weight_grad");
  v6 = MIL::IROperation::GetParameterValue(this, &v68);
  v7 = MIL::IRValue::GetScalar<BOOL>(v6);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v68, "has_bias_grad");
  v8 = MIL::IROperation::GetParameterValue(this, &v68);
  v9 = MIL::IRValue::GetScalar<BOOL>(v8);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  v10 = v7 + v5;
  v11 = (*(*this + 176))(this);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = (v13 - *v11) >> 4;
  if (v14 != v10 + v9)
  {
    std::to_string(&v64, v14);
    v25 = std::string::insert(&v64, 0, "The length of outputs(");
    v26 = *&v25->__r_.__value_.__l.__data_;
    v65.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v65.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = std::string::append(&v65, ") does not match the expected(");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v66.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v66.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v63, v10 + v9);
    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v63;
    }

    else
    {
      v29 = v63.__r_.__value_.__r.__words[0];
    }

    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v63.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v63.__r_.__value_.__l.__size_;
    }

    v31 = std::string::append(&v66, v29, size);
    v32 = *&v31->__r_.__value_.__l.__data_;
    v68.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
    *&v68.__r_.__value_.__l.__data_ = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    v33 = std::string::append(&v68, ")");
    v20 = v33->__r_.__value_.__r.__words[0];
    v34 = v33->__r_.__value_.__l.__size_;
    v67[0] = v33->__r_.__value_.__r.__words[2];
    *(v67 + 3) = *(&v33->__r_.__value_.__r.__words[2] + 3);
    v22 = SHIBYTE(v33->__r_.__value_.__r.__words[2]);
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v36 = LocationPtr[1];
    *&v62 = *LocationPtr;
    *(&v62 + 1) = v36;
    if (v36)
    {
      atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
    }

    if (v22 < 0)
    {
      std::string::__init_copy_ctor_external(&v61, v20, v34);
    }

    else
    {
      v61.__r_.__value_.__r.__words[0] = v20;
      v61.__r_.__value_.__l.__size_ = v34;
      LODWORD(v61.__r_.__value_.__r.__words[2]) = v67[0];
      *(&v61.__r_.__value_.__r.__words[2] + 3) = *(v67 + 3);
      *(&v61.__r_.__value_.__s + 23) = v22;
    }

    MIL::ValidationResult::ValidationResult(a2, &v62, 310, &v61);
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    v53 = *(&v62 + 1);
    if (!*(&v62 + 1))
    {
      goto LABEL_71;
    }

LABEL_70:
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
LABEL_71:
    if (v22 < 0)
    {
      operator delete(v20);
    }

    return;
  }

  if (v5)
  {
    if (v13 == v12)
    {
      goto LABEL_85;
    }

    Type = MIL::IRNamedValueType::GetType(*v12);
    std::string::basic_string[abi:ne200100]<0>(&v68, "x");
    ParameterType = MIL::IROperation::GetParameterType(this, &v68);
    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (Type != ParameterType)
    {
      std::to_string(&v66, 0);
      v17 = std::string::insert(&v66, 0, "The shape and data type of the output at index = ");
      v18 = *&v17->__r_.__value_.__l.__data_;
      v68.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v68.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      v19 = std::string::append(&v68, " must match input 'x'");
      v20 = v19->__r_.__value_.__r.__words[0];
      v21 = v19->__r_.__value_.__l.__size_;
      LODWORD(v65.__r_.__value_.__l.__data_) = v19->__r_.__value_.__r.__words[2];
      *(v65.__r_.__value_.__r.__words + 3) = *(&v19->__r_.__value_.__r.__words[2] + 3);
      v22 = SHIBYTE(v19->__r_.__value_.__r.__words[2]);
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      v23 = MIL::IRObject::GetLocationPtr(this);
      v24 = v23[1];
      *&v60 = *v23;
      *(&v60 + 1) = v24;
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      if (v22 < 0)
      {
        std::string::__init_copy_ctor_external(&v59, v20, v21);
      }

      else
      {
        v59.__r_.__value_.__r.__words[0] = v20;
        v59.__r_.__value_.__l.__size_ = v21;
        LODWORD(v59.__r_.__value_.__r.__words[2]) = v65.__r_.__value_.__l.__data_;
        *(&v59.__r_.__value_.__r.__words[2] + 3) = *(v65.__r_.__value_.__r.__words + 3);
        *(&v59.__r_.__value_.__s + 23) = v22;
      }

      MIL::ValidationResult::ValidationResult(a2, &v60, 313, &v59);
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      v53 = *(&v60 + 1);
      if (!*(&v60 + 1))
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    }
  }

  if (v7)
  {
    if (v5 >= ((*(v11 + 8) - *v11) >> 4))
    {
      goto LABEL_85;
    }

    v37 = MIL::IRNamedValueType::GetType(*(*v11 + 16 * v5));
    std::string::basic_string[abi:ne200100]<0>(&v68, "weight");
    v38 = MIL::IROperation::GetParameterType(this, &v68);
    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (v37 != v38)
    {
      std::to_string(&v66, v5);
      v39 = std::string::insert(&v66, 0, "The shape and data type of the output at index = ");
      v40 = *&v39->__r_.__value_.__l.__data_;
      v68.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
      *&v68.__r_.__value_.__l.__data_ = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      v41 = std::string::append(&v68, " must match input 'weight'");
      v20 = v41->__r_.__value_.__r.__words[0];
      v42 = v41->__r_.__value_.__l.__size_;
      LODWORD(v65.__r_.__value_.__l.__data_) = v41->__r_.__value_.__r.__words[2];
      *(v65.__r_.__value_.__r.__words + 3) = *(&v41->__r_.__value_.__r.__words[2] + 3);
      v22 = SHIBYTE(v41->__r_.__value_.__r.__words[2]);
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      v43 = MIL::IRObject::GetLocationPtr(this);
      v44 = v43[1];
      *&v58 = *v43;
      *(&v58 + 1) = v44;
      if (v44)
      {
        atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
      }

      if (v22 < 0)
      {
        std::string::__init_copy_ctor_external(&v57, v20, v42);
      }

      else
      {
        v57.__r_.__value_.__r.__words[0] = v20;
        v57.__r_.__value_.__l.__size_ = v42;
        LODWORD(v57.__r_.__value_.__r.__words[2]) = v65.__r_.__value_.__l.__data_;
        *(&v57.__r_.__value_.__r.__words[2] + 3) = *(v65.__r_.__value_.__r.__words + 3);
        *(&v57.__r_.__value_.__s + 23) = v22;
      }

      MIL::ValidationResult::ValidationResult(a2, &v58, 313, &v57);
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      v53 = *(&v58 + 1);
      if (!*(&v58 + 1))
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    }
  }

  if (!v9)
  {
LABEL_73:
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  if (v10 >= (*(v11 + 8) - *v11) >> 4)
  {
LABEL_85:
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  v45 = MIL::IRNamedValueType::GetType(*(*v11 + 16 * v10));
  std::string::basic_string[abi:ne200100]<0>(&v68, "weight");
  v46 = MIL::IROperation::GetParameterType(this, &v68);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  v47 = MIL::IRValueType::AsTensorType(v45);
  v48 = (*(*v47 + 96))(v47);
  v49 = MIL::IRValueType::AsTensorType(v46);
  v50 = (*(*v49 + 96))(v49);
  if (v48[1] - *v48 == 8 && **v48 == **v50)
  {
    goto LABEL_73;
  }

  v51 = MIL::IRObject::GetLocationPtr(this);
  v52 = v51[1];
  *&v56 = *v51;
  *(&v56 + 1) = v52;
  if (v52)
  {
    atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "The shape of output 'db'([D_out]) must match the shape with the first dimension size of input 'weight'");
  MIL::ValidationResult::ValidationResult(a2, &v56, 313, __p);
  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(&v56 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v56 + 1));
  }
}

void sub_2184B7684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (v53 < 0)
  {
    operator delete(v52);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Train::ios16Train::CustomValueTypeInference::ValueTypeInferenceLinearTrain(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceLinear(a1, v5, a3);
}

void sub_2184B786C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Train::ios16Train::LinearTrain::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184B8A78(_Unwind_Exception *a1)
{
  v4 = STACK[0x290];
  STACK[0x290] = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 232), 0);
  _Unwind_Resume(a1);
}

void sub_2184B8F20()
{
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v0 - 192);
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v0 - 160);
  if (STACK[0x218])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x218]);
  }

  if (STACK[0x228])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x228]);
  }

  JUMPOUT(0x2184B8F54);
}

void sub_2184B8F64()
{
  v1 = *(v0 - 72);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  v2 = *(v0 - 64);
  *(v0 - 64) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x2184B8FACLL);
}

void sub_2184B8FCC()
{
  v1 = *(v0 - 96);
  *(v0 - 96) = 0;
  if (v1)
  {
    MIL::Operators::Common::ios15::BaseActivation::Make();
  }

  if (STACK[0x260])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x260]);
  }

  v2 = STACK[0x278];
  if (STACK[0x278])
  {
    STACK[0x280] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2184B90CCLL);
}

void sub_2184B90C8()
{
  v0 = STACK[0x290];
  if (STACK[0x290])
  {
    STACK[0x298] = v0;
    operator delete(v0);
  }

  JUMPOUT(0x2184B8EF4);
}

void MIL::Operators::Train::ios16Train::LinearGrad::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184BAC98(_Unwind_Exception *a1)
{
  v4 = STACK[0x368];
  STACK[0x368] = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 136), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::LayerNormTrain::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184BC7B4(_Unwind_Exception *a1)
{
  v4 = *(v2 - 112);
  *(v2 - 112) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x248], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::CustomValidators::ValidateBaseOptimizer(MIL::Operators::Train::ios16Train::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v37, "xs");
  v4 = (*(*this + 152))(this, &v37);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v37, "dxs");
  v5 = (*(*this + 152))(this, &v37);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (v4 != v5)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v15 = LocationPtr[1];
    *&v36 = *LocationPtr;
    *(&v36 + 1) = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "The length of inputs 'xs' and 'dxs' must be the same");
    MIL::ValidationResult::ValidationResult(a2, &v36, 315, __p);
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }

    v16 = *(&v36 + 1);
    if (!*(&v36 + 1))
    {
      return;
    }

    goto LABEL_51;
  }

  if (v4)
  {
    v6 = 0;
    while (1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v37, "xs");
      ParameterType = MIL::IROperation::GetParameterType(this, &v37);
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v37, "dxs");
      v9 = MIL::IROperation::GetParameterType(this, &v37);
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (!MIL::Validation::TypeShapeAndDataTypeMatch(ParameterType, v9, v8))
      {
        break;
      }

      if (v4 == ++v6)
      {
        goto LABEL_14;
      }
    }

    v22 = MIL::IRObject::GetLocationPtr(this);
    v23 = v22[1];
    *&v33 = *v22;
    *(&v33 + 1) = v23;
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v31, "The shape and data type of each argument of 'xs' and 'dxs' must be the same");
    MIL::ValidationResult::ValidationResult(a2, &v33, 315, v31);
    if (v32 < 0)
    {
      operator delete(v31[0]);
    }

    v16 = *(&v33 + 1);
    if (!*(&v33 + 1))
    {
      return;
    }

LABEL_51:
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    return;
  }

LABEL_14:
  v10 = (*(*this + 176))(this);
  v11 = v4;
  if (v4 > ((v10[1] - *v10) >> 4))
  {
    std::string::basic_string[abi:ne200100]<0>(&v37, "The length of outputs cannot be less than the length of input 'xs', i.e. the number of variables");
    v12 = MIL::IRObject::GetLocationPtr(this);
    v13 = v12[1];
    *&v30 = *v12;
    *(&v30 + 1) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v29, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
    }

    else
    {
      v29 = v37;
    }

    MIL::ValidationResult::ValidationResult(a2, &v30, 310, &v29);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (*(&v30 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    return;
  }

  if (!v4)
  {
LABEL_32:
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  v17 = v10;
  v18 = 0;
  while (1)
  {
    if (v18 >= (v17[1] - *v17) >> 4)
    {
      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    Type = MIL::IRNamedValueType::GetType(*(*v17 + 16 * v18));
    std::string::basic_string[abi:ne200100]<0>(&v37, "xs");
    v21 = MIL::IROperation::GetParameterType(this, &v37);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (!MIL::Validation::TypeShapeAndDataTypeMatch(Type, v21, v20))
    {
      break;
    }

    if (++v18 == v11)
    {
      goto LABEL_32;
    }
  }

  v24 = MIL::IRObject::GetLocationPtr(this);
  v25 = v24[1];
  *&v28 = *v24;
  *(&v28 + 1) = v25;
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v26, "The shape and data type of each updated xs must match each argument of input 'xs'");
  MIL::ValidationResult::ValidationResult(a2, &v28, 313, v26);
  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  v16 = *(&v28 + 1);
  if (*(&v28 + 1))
  {
    goto LABEL_51;
  }
}

void sub_2184BD1C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
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

void MIL::Operators::Train::ios16Train::CustomValidators::ValidateAdam(MIL::Operators::Train::ios16Train::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  MIL::Operators::Train::ios16Train::CustomValidators::ValidateBaseOptimizer(this, &v80);
  if (((*(v80.__r_.__value_.__r.__words[0] + 16))(&v80) & 1) == 0)
  {
    MIL::MILResult::MILResult(a2, &v80);
    *a2 = &unk_2829E9B70;
    *(a2 + 48) = v81;
    MIL::ValidationResult::~ValidationResult(&v80.__r_.__value_.__l.__data_);
    return;
  }

  MIL::ValidationResult::~ValidationResult(&v80.__r_.__value_.__l.__data_);
  std::string::basic_string[abi:ne200100]<0>(v4, "xs");
  v5 = (*(*this + 152))(this, &v80);
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v80, "mean");
  v6 = (*(*this + 152))(this, &v80);
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  if (v5 != v6)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v29 = LocationPtr[1];
    *&v79 = *LocationPtr;
    *(&v79 + 1) = v29;
    if (v29)
    {
      atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v77, "The length of input 'xs' and 'm' must be the same");
    MIL::ValidationResult::ValidationResult(a2, &v79, 315, v77);
    if (v78 < 0)
    {
      operator delete(v77[0]);
    }

    v30 = *(&v79 + 1);
    if (!*(&v79 + 1))
    {
      return;
    }

    goto LABEL_96;
  }

  if (v5)
  {
    v7 = 0;
    while (1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v80, "xs");
      ParameterType = MIL::IROperation::GetParameterType(this, &v80);
      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v80, "mean");
      v10 = MIL::IROperation::GetParameterType(this, &v80);
      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      if (!MIL::Validation::TypeShapeAndDataTypeMatch(ParameterType, v10, v9))
      {
        break;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    v33 = MIL::IRObject::GetLocationPtr(this);
    v34 = v33[1];
    *&v76 = *v33;
    *(&v76 + 1) = v34;
    if (v34)
    {
      atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v74, "The shape and data type of each argument of 'xs' and 'm' must be the same");
    MIL::ValidationResult::ValidationResult(a2, &v76, 315, v74);
    if (v75 < 0)
    {
      operator delete(v74[0]);
    }

    v30 = *(&v76 + 1);
    if (!*(&v76 + 1))
    {
      return;
    }

    goto LABEL_96;
  }

LABEL_15:
  std::string::basic_string[abi:ne200100]<0>(&v80, "variance");
  v11 = (*(*this + 152))(this, &v80);
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  if (v5 != v11)
  {
    v31 = MIL::IRObject::GetLocationPtr(this);
    v32 = v31[1];
    *&v73 = *v31;
    *(&v73 + 1) = v32;
    if (v32)
    {
      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "The length of input 'xs' and 'v' must be the same");
    MIL::ValidationResult::ValidationResult(a2, &v73, 315, __p);
    if (v72 < 0)
    {
      operator delete(__p[0]);
    }

    v30 = *(&v73 + 1);
    if (!*(&v73 + 1))
    {
      return;
    }

    goto LABEL_96;
  }

  if (!v5)
  {
LABEL_26:
    v16 = 3 * v5;
    v17 = (*(*this + 176))(this);
    v18 = (v17[1] - *v17) >> 4;
    if (v18 == v16)
    {
      if (v5)
      {
        v19 = 0;
        v20 = 16 * v5;
        do
        {
          std::string::basic_string[abi:ne200100]<0>(&v80, "mean");
          v21 = MIL::IROperation::GetParameterType(this, &v80);
          if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v80.__r_.__value_.__l.__data_);
          }

          Type = MIL::IRNamedValueType::GetType(*(*v17 + v20));
          if (!MIL::Validation::TypeShapeAndDataTypeMatch(Type, v21, v23))
          {
            v51 = MIL::IRObject::GetLocationPtr(this);
            v52 = v51[1];
            *&v60 = *v51;
            *(&v60 + 1) = v52;
            if (v52)
            {
              atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(v58, "The shape and data type of each updated 'm' must match each argument of input 'm'");
            MIL::ValidationResult::ValidationResult(a2, &v60, 313, v58);
            if (v59 < 0)
            {
              operator delete(v58[0]);
            }

            v30 = *(&v60 + 1);
            if (!*(&v60 + 1))
            {
              return;
            }

            goto LABEL_96;
          }

          ++v19;
          v20 += 16;
        }

        while (v5 != v19);
        v24 = 0;
        while (1)
        {
          std::string::basic_string[abi:ne200100]<0>(&v80, "variance");
          v25 = MIL::IROperation::GetParameterType(this, &v80);
          if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v80.__r_.__value_.__l.__data_);
          }

          v26 = MIL::IRNamedValueType::GetType(*(*v17 + v20));
          if (!MIL::Validation::TypeShapeAndDataTypeMatch(v26, v25, v27))
          {
            break;
          }

          ++v24;
          v20 += 16;
          if (v5 == v24)
          {
            goto LABEL_38;
          }
        }

        v53 = MIL::IRObject::GetLocationPtr(this);
        v54 = v53[1];
        *&v57 = *v53;
        *(&v57 + 1) = v54;
        if (v54)
        {
          atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v55, "The shape and data type of each updated 'v' must match each argument of input 'v'");
        MIL::ValidationResult::ValidationResult(a2, &v57, 313, v55);
        if (v56 < 0)
        {
          operator delete(v55[0]);
        }

        v30 = *(&v57 + 1);
        if (*(&v57 + 1))
        {
          goto LABEL_96;
        }
      }

      else
      {
LABEL_38:
        MIL::ValidationResult::ValidationResult(a2);
      }
    }

    else
    {
      std::to_string(&v64, v18);
      v35 = std::string::insert(&v64, 0, "The length of outputs(");
      v36 = *&v35->__r_.__value_.__l.__data_;
      v65.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
      *&v65.__r_.__value_.__l.__data_ = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      v37 = std::string::append(&v65, ") does not match the expected(");
      v38 = *&v37->__r_.__value_.__l.__data_;
      v66.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
      *&v66.__r_.__value_.__l.__data_ = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v63, v16);
      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = &v63;
      }

      else
      {
        v39 = v63.__r_.__value_.__r.__words[0];
      }

      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v63.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v63.__r_.__value_.__l.__size_;
      }

      v41 = std::string::append(&v66, v39, size);
      v42 = *&v41->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      v43 = std::string::append(&v80, ")");
      v44 = v43->__r_.__value_.__r.__words[0];
      v45 = v43->__r_.__value_.__l.__size_;
      v67[0] = v43->__r_.__value_.__r.__words[2];
      *(v67 + 3) = *(&v43->__r_.__value_.__r.__words[2] + 3);
      v46 = SHIBYTE(v43->__r_.__value_.__r.__words[2]);
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      v47 = MIL::IRObject::GetLocationPtr(this);
      v48 = v47[1];
      *&v62 = *v47;
      *(&v62 + 1) = v48;
      if (v48)
      {
        atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
      }

      if (v46 < 0)
      {
        std::string::__init_copy_ctor_external(&v61, v44, v45);
      }

      else
      {
        v61.__r_.__value_.__r.__words[0] = v44;
        v61.__r_.__value_.__l.__size_ = v45;
        LODWORD(v61.__r_.__value_.__r.__words[2]) = v67[0];
        *(&v61.__r_.__value_.__r.__words[2] + 3) = *(v67 + 3);
        *(&v61.__r_.__value_.__s + 23) = v46;
      }

      MIL::ValidationResult::ValidationResult(a2, &v62, 310, &v61);
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      if (*(&v62 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v62 + 1));
      }

      if (v46 < 0)
      {
        operator delete(v44);
      }
    }

    return;
  }

  v12 = 0;
  while (1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v80, "xs");
    v13 = MIL::IROperation::GetParameterType(this, &v80);
    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v80, "variance");
    v15 = MIL::IROperation::GetParameterType(this, &v80);
    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }

    if (!MIL::Validation::TypeShapeAndDataTypeMatch(v13, v15, v14))
    {
      break;
    }

    if (v5 == ++v12)
    {
      goto LABEL_26;
    }
  }

  v49 = MIL::IRObject::GetLocationPtr(this);
  v50 = v49[1];
  *&v70 = *v49;
  *(&v70 + 1) = v50;
  if (v50)
  {
    atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v68, "The shape and data type of each argument of 'xs' and 'v' must be the same");
  MIL::ValidationResult::ValidationResult(a2, &v70, 315, v68);
  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

  v30 = *(&v70 + 1);
  if (*(&v70 + 1))
  {
LABEL_96:
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }
}

void sub_2184BDAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::CustomValidators::ValidateSgd(MIL::Operators::Train::ios16Train::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  MIL::Operators::Train::ios16Train::CustomValidators::ValidateBaseOptimizer(this, &v64);
  if ((v64[2](&v64) & 1) == 0)
  {
    MIL::MILResult::MILResult(a2, &v64);
    *a2 = &unk_2829E9B70;
    *(a2 + 48) = v68;
    MIL::ValidationResult::~ValidationResult(&v64);
    return;
  }

  MIL::ValidationResult::~ValidationResult(&v64);
  std::string::basic_string[abi:ne200100]<0>(v4, "xs");
  v5 = (*(*this + 152))(this, &v64);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(v64);
  }

  v61 = 0;
  v62 = 0;
  v6 = v5;
  v63 = 0;
  std::vector<std::string const*>::reserve(&v61, v5);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      std::string::basic_string[abi:ne200100]<0>(&v64, "xs");
      ParameterType = MIL::IROperation::GetParameterType(this, &v64);
      if (SHIBYTE(v65) < 0)
      {
        operator delete(v64);
      }

      v59.__begin_ = ParameterType;
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v61, &v59);
    }
  }

  LOBYTE(v59.__begin_) = 0;
  v60 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v64, "momentum");
  IsParameterSet = MIL::IROperation::IsParameterSet(this, &v64);
  v10 = IsParameterSet;
  if (SHIBYTE(v65) < 0)
  {
    operator delete(v64);
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  else if (!IsParameterSet)
  {
    goto LABEL_23;
  }

  std::string::basic_string[abi:ne200100]<0>(&v64, "momentum");
  v11 = (*(*this + 152))(this, &v64);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(v64);
  }

  v64 = 0;
  v65 = 0uLL;
  std::vector<std::string const*>::reserve(&v64, v11);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      std::string::basic_string[abi:ne200100]<0>(&v58, "momentum");
      v13 = MIL::IROperation::GetParameterType(this, &v58);
      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      v54.__r_.__value_.__r.__words[0] = v13;
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v64, &v54);
    }
  }

  std::optional<std::vector<MIL::IRValueType const*>>::operator=[abi:ne200100]<std::vector<MIL::IRValueType const*>,void>(&v59, &v64);
  if (v64)
  {
    *&v65 = v64;
    operator delete(v64);
  }

LABEL_23:
  std::string::basic_string[abi:ne200100]<0>(&v64, "nesterov");
  v14 = MIL::IROperation::IsParameterSet(this, &v64);
  v15 = v14;
  if ((SHIBYTE(v65) & 0x80000000) == 0)
  {
    if (!v14)
    {
      goto LABEL_29;
    }

LABEL_27:
    std::string::basic_string[abi:ne200100]<0>(&v64, "nesterov");
    ParameterValue = MIL::IROperation::GetParameterValue(this, &v64);
    v15 = MIL::IRValue::GetScalar<BOOL>(ParameterValue);
    if (SHIBYTE(v65) < 0)
    {
      operator delete(v64);
    }

    goto LABEL_29;
  }

  operator delete(v64);
  if (v15)
  {
    goto LABEL_27;
  }

LABEL_29:
  std::__optional_copy_base<std::vector<MIL::IRValueType const*>,false>::__optional_copy_base[abi:ne200100](__p, &v59);
  std::string::basic_string[abi:ne200100]<0>(&v58, "momentum_val");
  v17 = MIL::IROperation::IsParameterSet(this, &v58.__r_.__value_.__l.__data_);
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v19 = LocationPtr[1];
  v55[0] = *LocationPtr;
  v55[1] = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (v57 == 1 && __p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (MIL::ValidationResult::IsGood(&v64))
  {
    std::string::basic_string[abi:ne200100]<0>(&v58, "momentum");
    if (MIL::IROperation::IsParameterSet(this, &v58.__r_.__value_.__l.__data_))
    {
      std::string::basic_string[abi:ne200100]<0>(&v54, "momentum_val");
      v20 = MIL::IROperation::IsParameterSet(this, &v54.__r_.__value_.__l.__data_);
      if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v20 = 0;
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    v21 = (*(*this + 176))(this);
    v22 = (v21[1] - *v21) >> 4;
    if (v22 == v5 << v20)
    {
      if (v5)
      {
        v23 = v20;
      }

      else
      {
        v23 = 0;
      }

      if (v23 == 1)
      {
        v24 = 0;
        while (1)
        {
          v25 = (v6 + v24);
          if (v25 >= (v21[1] - *v21) >> 4)
          {
            std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
          }

          Type = MIL::IRNamedValueType::GetType(*(*v21 + 16 * v25));
          std::string::basic_string[abi:ne200100]<0>(&v58, "momentum");
          v28 = MIL::IROperation::GetParameterType(this, &v58);
          if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v58.__r_.__value_.__l.__data_);
          }

          if (!MIL::Validation::TypeShapeAndDataTypeMatch(Type, v28, v27))
          {
            break;
          }

          if (v6 == ++v24)
          {
            goto LABEL_57;
          }
        }

        v43 = MIL::IRObject::GetLocationPtr(this);
        v44 = v43[1];
        *&v47 = *v43;
        *(&v47 + 1) = v44;
        if (v44)
        {
          atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v45, "The shape and data type of each updated momentum must match each argument of input 'momentum'");
        MIL::ValidationResult::ValidationResult(a2, &v47, 313, v45);
        if (v46 < 0)
        {
          operator delete(v45[0]);
        }

        if (*(&v47 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v47 + 1));
        }
      }

      else
      {
LABEL_57:
        MIL::ValidationResult::ValidationResult(a2);
      }
    }

    else
    {
      std::to_string(&v51, v22);
      v29 = std::string::insert(&v51, 0, "The length of outputs(");
      v30 = *&v29->__r_.__value_.__l.__data_;
      v52.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v52.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      v31 = std::string::append(&v52, ") does not match the expected(");
      v32 = *&v31->__r_.__value_.__l.__data_;
      v54.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
      *&v54.__r_.__value_.__l.__data_ = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v50, v5 << v20);
      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v50;
      }

      else
      {
        v33 = v50.__r_.__value_.__r.__words[0];
      }

      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v50.__r_.__value_.__l.__size_;
      }

      v35 = std::string::append(&v54, v33, size);
      v36 = *&v35->__r_.__value_.__l.__data_;
      v58.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
      *&v58.__r_.__value_.__l.__data_ = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      v37 = std::string::append(&v58, ")");
      v38 = v37->__r_.__value_.__r.__words[0];
      v39 = v37->__r_.__value_.__l.__size_;
      v53[0] = v37->__r_.__value_.__r.__words[2];
      *(v53 + 3) = *(&v37->__r_.__value_.__r.__words[2] + 3);
      v40 = SHIBYTE(v37->__r_.__value_.__r.__words[2]);
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      v41 = MIL::IRObject::GetLocationPtr(this);
      v42 = v41[1];
      *&v49 = *v41;
      *(&v49 + 1) = v42;
      if (v42)
      {
        atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
      }

      if (v40 < 0)
      {
        std::string::__init_copy_ctor_external(&v48, v38, v39);
      }

      else
      {
        v48.__r_.__value_.__r.__words[0] = v38;
        v48.__r_.__value_.__l.__size_ = v39;
        LODWORD(v48.__r_.__value_.__r.__words[2]) = v53[0];
        *(&v48.__r_.__value_.__r.__words[2] + 3) = *(v53 + 3);
        *(&v48.__r_.__value_.__s + 23) = v40;
      }

      MIL::ValidationResult::ValidationResult(a2, &v49, 310, &v48);
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if (*(&v49 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v49 + 1));
      }

      if (v40 < 0)
      {
        operator delete(v38);
      }
    }
  }

  else
  {
    *(a2 + 8) = v65;
    v65 = 0uLL;
    *(a2 + 24) = v66;
    *(a2 + 40) = v67;
    v66 = 0uLL;
    v67 = 0;
    *a2 = &unk_2829E9B70;
    *(a2 + 48) = v68;
  }

  MIL::ValidationResult::~ValidationResult(&v64);
  if (v60 == 1 && v59.__begin_)
  {
    v59.__end_ = v59.__begin_;
    operator delete(v59.__begin_);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }
}

void sub_2184BE440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  MIL::ValidationResult::~ValidationResult((v56 - 136));
  if (*(v56 - 168) == 1)
  {
    v58 = *(v56 - 192);
    if (v58)
    {
      *(v56 - 184) = v58;
      operator delete(v58);
    }
  }

  v59 = *(v56 - 160);
  if (v59)
  {
    *(v56 - 152) = v59;
    operator delete(v59);
  }

  _Unwind_Resume(a1);
}

std::vector<unsigned int> *std::optional<std::vector<MIL::IRValueType const*>>::operator=[abi:ne200100]<std::vector<MIL::IRValueType const*>,void>(std::vector<unsigned int> *this, __n128 *a2)
{
  if (LOBYTE(this[1].__begin_) == 1)
  {
    std::vector<float>::__move_assign(this, a2);
  }

  else
  {
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
    *&this->__begin_ = *a2;
    this->__end_cap_.__value_ = a2[1].n128_u64[0];
    *a2 = 0uLL;
    a2[1].n128_u64[0] = 0;
    LOBYTE(this[1].__begin_) = 1;
  }

  return this;
}

void MIL::Operators::Train::ios16Train::anonymous namespace::ValidateSgdInputs(void *a1@<X0>, uint64_t a2@<X1>, const MIL::IRValueType *a3@<X2>, int a4@<W3>, void *a5@<X4>, MIL::ValidationResult *a6@<X8>)
{
  v10 = *(a2 + 24);
  if (v10 != 1 || (a3 & 1) == 0)
  {
    if (v10 == a3)
    {
      if (!a4)
      {
        goto LABEL_3;
      }

      v19 = a5[1];
      *&v30 = *a5;
      *(&v30 + 1) = v19;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Input 'nesterov' can be true only when both input 'momentum' and 'momentum_val' are specified(momentum is used) ");
      MIL::ValidationResult::ValidationResult(a6, &v30, 315, __p);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }

      v18 = *(&v30 + 1);
      if (!*(&v30 + 1))
      {
        return;
      }
    }

    else
    {
      v17 = a5[1];
      *&v33 = *a5;
      *(&v33 + 1) = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v31, "Inputs 'momentum' and 'momentum_val' must be either both specified or not specified");
      MIL::ValidationResult::ValidationResult(a6, &v33, 315, v31);
      if (v32 < 0)
      {
        operator delete(v31[0]);
      }

      v18 = *(&v33 + 1);
      if (!*(&v33 + 1))
      {
        return;
      }
    }

LABEL_19:
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    return;
  }

LABEL_3:
  if (!*(a2 + 24))
  {
LABEL_10:

    MIL::ValidationResult::ValidationResult(a6);
    return;
  }

  v11 = a1[1];
  v12 = v11 - *a1;
  if (v12 != *(a2 + 8) - *a2)
  {
    v20 = a5[1];
    *&v27 = *a5;
    *(&v27 + 1) = v20;
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v25, "The length of inputs 'xs' and 'momentum' must be the same");
    MIL::ValidationResult::ValidationResult(a6, &v27, 315, v25);
    if (v26 < 0)
    {
      operator delete(v25[0]);
    }

    v18 = *(&v27 + 1);
    if (!*(&v27 + 1))
    {
      return;
    }

    goto LABEL_19;
  }

  if (v11 == *a1)
  {
    goto LABEL_10;
  }

  v13 = 0;
  v14 = v12 >> 3;
  v15 = 1;
  while (1)
  {
    if (v13 >= (*(a2 + 8) - *a2) >> 3)
    {
      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    if (!MIL::Validation::TypeShapeAndDataTypeMatch(*(*a1 + 8 * v13), *(*a2 + 8 * v13), a3))
    {
      break;
    }

    v13 = v15;
    if (v14 <= v15++)
    {
      goto LABEL_10;
    }
  }

  v21 = a5[1];
  *&v24 = *a5;
  *(&v24 + 1) = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v22, "The shape and data type of each argument of 'xs' and 'momentum' must be the same");
  MIL::ValidationResult::ValidationResult(a6, &v24, 315, v22);
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  v18 = *(&v24 + 1);
  if (*(&v24 + 1))
  {
    goto LABEL_19;
  }
}

void sub_2184BE970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32)
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

void MIL::Operators::Train::ios16Train::CustomValueTypeInference::ValueTypeInferenceSgd(uint64_t *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "xs");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &__p);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = v6[5];
  v7 = v6[6];
  v9 = (v7 - v8) >> 4;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  std::vector<std::string const*>::reserve(a3, (v7 - v8) >> 4);
  if (v7 != v8)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "xs");
      v12 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &__p);
      if (!v12)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      ValueType = MIL::IRTypedArgument::GetValueType(*(v12[5] + 2 * v10));
      if (SHIBYTE(v42) < 0)
      {
        operator delete(__p);
      }

      v46 = ValueType;
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a3, &v46);
      v10 = v11;
      v14 = v9 > v11++;
    }

    while (v14);
  }

  LOBYTE(v46) = 0;
  v48 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "momentum");
  v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &__p);
  v16 = v15;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p);
    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else if (!v15)
  {
    goto LABEL_25;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "momentum");
  v17 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &__p);
  if (!v17)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v19 = v17[5];
  v18 = v17[6];
  v20 = (v18 - v19) >> 4;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v41 = 0;
  v42 = 0;
  std::vector<std::string const*>::reserve(&__p, (v18 - v19) >> 4);
  if (v18 != v19)
  {
    v21 = 0;
    v22 = 1;
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v44, "momentum");
      v23 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, v44);
      if (!v23)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v24 = MIL::IRTypedArgument::GetValueType(*(v23[5] + 2 * v21));
      if (SHIBYTE(v45) < 0)
      {
        operator delete(v44[0]);
      }

      v33[0] = v24;
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, v33);
      v21 = v22;
      v14 = v20 > v22++;
    }

    while (v14);
  }

  std::optional<std::vector<MIL::IRValueType const*>>::operator=[abi:ne200100]<std::vector<MIL::IRValueType const*>&,void>(&v46, &__p);
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

LABEL_25:
  std::string::basic_string[abi:ne200100]<0>(&__p, "nesterov");
  v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &__p);
  v26 = v25;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p);
    if (!v26)
    {
      goto LABEL_31;
    }
  }

  else if (!v25)
  {
    goto LABEL_31;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "nesterov");
  SingleValue = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a2, &__p);
  LODWORD(v26) = MIL::IRValue::GetScalar<BOOL>(SingleValue);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p);
  }

LABEL_31:
  std::__optional_copy_base<std::vector<MIL::IRValueType const*>,false>::__optional_copy_base[abi:ne200100](v38, &v46);
  std::string::basic_string[abi:ne200100]<0>(v44, "momentum_val");
  v28 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, v44);
  v29 = *a1;
  v30 = a1[1];
  v37[0] = v29;
  v37[1] = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44[0]);
  }

  if (v39 == 1 && v38[0])
  {
    v38[1] = v38[0];
    operator delete(v38[0]);
  }

  if (!MIL::ValidationResult::IsGood(&__p))
  {
    exception = __cxa_allocate_exception(0x48uLL);
    MIL::MILResult::MILResult(v35, &__p);
    v35[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
    v36 = v43;
    MIL::ValidationError::ValidationError(exception, v35);
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "xs");
  v31 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, v33);
  if (!v31)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v44[0] = 0;
  v44[1] = 0;
  v45 = 0;
  std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRTypedArgument>*,std::shared_ptr<MIL::IRTypedArgument>*>(v44, v31[5], v31[6], (v31[6] - v31[5]) >> 4);
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  if (v48 == 1)
  {
    std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const**>,std::__wrap_iter<MIL::IRDimension const**>>(a3, *(a3 + 8), v46, v47, (v47 - v46) >> 3);
  }

  v33[0] = v44;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](v33);
  MIL::ValidationResult::~ValidationResult(&__p);
  if (v48 == 1)
  {
    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }
  }
}

void sub_2184BEEC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  MIL::ValidationResult::~ValidationResult(&a15);
  MIL::ValidationResult::~ValidationResult(&a28);
  if (*(v34 - 72) == 1)
  {
    v36 = *(v34 - 96);
    if (v36)
    {
      *(v34 - 88) = v36;
      operator delete(v36);
    }
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

uint64_t std::optional<std::vector<MIL::IRValueType const*>>::operator=[abi:ne200100]<std::vector<MIL::IRValueType const*>&,void>(uint64_t a1, char **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      std::vector<MIL::IRValueType const*>::__assign_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<MIL::IRValueType const*>::__init_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t *std::__optional_copy_base<std::vector<MIL::IRValueType const*>,false>::__optional_copy_base[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<std::vector<MIL::IRValueType const*>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<MIL::IRValueType const*>,false> const&>(a1, a2);
  return a1;
}

void sub_2184BF114(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::vector<MIL::IRValueType const*>,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__optional_storage_base<std::vector<MIL::IRValueType const*>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<MIL::IRValueType const*>,false> const&>(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<MIL::IRValueType const*>::__init_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    *(v2 + 24) = 1;
  }

  return result;
}

void MIL::Operators::Train::ios16Train::BaseOptimizer::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_2184BFF14(_Unwind_Exception *a1)
{
  v4 = *(v2 - 248);
  *(v2 - 248) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100]((v2 - 112));
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 200), 0);
  _Unwind_Resume(a1);
}

void ***std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = v2;
    std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x21CEAFEA0](v2, 0x20C40960023A9);
  }

  return a1;
}

void MIL::Operators::Train::ios16Train::Adam::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184C1E60(_Unwind_Exception *a1)
{
  v4 = *(v2 - 128);
  *(v2 - 128) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100]((v2 - 96));
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 208), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::Sgd::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184C3C10(_Unwind_Exception *a1)
{
  v4 = *(v2 - 128);
  *(v2 - 128) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100]((v2 - 96));
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 240), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::BasePoolGrad::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_2184C5F1C(_Unwind_Exception *a1)
{
  v5 = *(v2 - 112);
  *(v2 - 112) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x338], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x3B0], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::BaseAvgPoolGrad::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_2184C8510(_Unwind_Exception *a1)
{
  v5 = *(v2 - 112);
  *(v2 - 112) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x338], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x3C0], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::AvgPoolGrad::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Train::ios16Train::BaseAvgPoolGrad::Make();
}

void sub_2184C8F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::SliceByIndexGrad::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184CA7C0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 232);
  *(v2 - 232) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x308], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 192), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios16Train::SliceBySizeGrad::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184CC0AC(_Unwind_Exception *a1)
{
  v4 = *(v2 - 232);
  *(v2 - 232) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x208], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 192), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios17Train::CustomValidators::ValidateResizeBilinearGrad(MIL::Operators::Train::ios17Train::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "input_size_height");
  ParameterValue = MIL::IROperation::GetParameterValue(this, __p);
  v5 = MIL::IRValue::GetScalar<int>(ParameterValue);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "input_size_width");
  v6 = MIL::IROperation::GetParameterValue(this, __p);
  v7 = MIL::IRValue::GetScalar<int>(v6);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 1 || v7 <= 0)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v9 = LocationPtr[1];
    *&v12 = *LocationPtr;
    *(&v12 + 1) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v10, "Input size height or width cannot be zero or negative!");
    MIL::ValidationResult::ValidationResult(a2, &v12, 315, v10);
    if (v11 < 0)
    {
      operator delete(v10[0]);
    }

    if (*(&v12 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
    }
  }

  else
  {
    MIL::ValidationResult::ValidationResult(a2);
  }
}

void sub_2184CC78C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void MIL::Operators::Train::ios17Train::CustomValueTypeInference::ValueTypeInferenceResizeBilinearGrad(MIL::IRConstantDimension **a1, void x1_0, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "dy");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = (*(*v6 + 88))(v6);
  std::string::basic_string[abi:ne200100]<0>(__p, "input_size_height");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, __p);
  v9 = MIL::IRValue::AsTensor(SingleValue);
  v10 = MIL::IRValue::GetScalar<int>(v9);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "input_size_width");
  v11 = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, __p);
  v12 = MIL::IRValue::AsTensor(v11);
  v13 = MIL::IRValue::GetScalar<int>(v12);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = **(*(*v6 + 96))(v6);
  __p[1] = *(*(*(*v6 + 96))(v6) + 8);
  v16 = MIL::IRConstantDimension::Make(*a1, v10);
  v17 = MIL::IRConstantDimension::Make(*a1, v13);
  memset(v14, 0, sizeof(v14));
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(v14, __p, &v18, 4uLL);
  MIL::IRTensorValueType::MakeWithShape(*a1, v7, v14);
}

void sub_2184CCA04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Train::ios17Train::ResizeBilinearGrad::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184CE4D4(_Unwind_Exception *a1)
{
  v3 = STACK[0x340];
  STACK[0x340] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 160), 0);
  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x308], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x368], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios17Train::CustomValidators::ValidateBasePoolGrad(MIL::Operators::Train::ios17Train::CustomValidators *this)
{
  v15 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v13, "dy");
  ParameterType = MIL::IROperation::GetParameterType(this, v13);
  v4 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  MIL::IRTensorValueType::Rank(v4);
  std::string::basic_string[abi:ne200100]<0>(v13, "x");
  v5 = MIL::IROperation::GetParameterType(this, v13);
  MIL::IRValueType::AsTensorType(v5);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "kernel_sizes");
  ParameterValue = MIL::IROperation::GetParameterValue(this, v13);
  v7 = MIL::IRValue::AsTensor(ParameterValue);
  MIL::IRTensorValue::GetDataView<int>(v7);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "strides");
  v8 = MIL::IROperation::GetParameterValue(this, v13);
  v9 = MIL::IRValue::AsTensor(v8);
  Data = MIL::IRTensorValue::GetDataView<int>(v9);
  v12 = v11;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v13, Data, &Data[v12], (4 * v12) >> 2);
  MIL::MILContext::Make();
}

void sub_2184CFE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v67 < 0)
  {
    operator delete(v66);
  }

  if (a66 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  v70 = STACK[0x218];
  if (STACK[0x218])
  {
    STACK[0x220] = v70;
    operator delete(v70);
  }

  v71 = *(v68 - 232);
  if (v71)
  {
    *(v68 - 224) = v71;
    operator delete(v71);
  }

  if (*(v68 - 185) < 0)
  {
    operator delete(*(v68 - 208));
  }

  v72 = *(v68 - 184);
  *(v68 - 184) = 0;
  if (v72)
  {
    (*(*v72 + 8))(v72, a2, a3, a4, a5, a6, a7, a8);
  }

  v73 = *(v68 - 176);
  if (v73)
  {
    *(v68 - 168) = v73;
    operator delete(v73);
  }

  v74 = *(v68 - 152);
  if (v74)
  {
    *(v68 - 144) = v74;
    operator delete(v74);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Train::ios17Train::CustomValueInference::ValueInferenceMaxPoolGrad(MIL::IRConstantDimension **a1, void x1_0, void *a2)
{
  v173 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "dy");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, __p);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = v4[5];
  v7 = *v5;
  v6 = *(v5 + 1);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v108 = v6;
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = MIL::IRValue::AsTensor(v7);
  v9 = (*(*v8 + 32))(v8);
  v10 = (*(*v9 + 96))(v9);
  v151 = 0;
  v150 = 0;
  v152 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v150, *v10, *(v10 + 8), (*(v10 + 8) - *v10) >> 3);
  if (v108)
  {
    atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
    v147 = v108;
    atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v147 = 0;
  }

  v146 = v7;
  MIL::ValueInference::Tensor<float>::FromIRTensorValue(&v146, __p);
  if (v147)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v147);
  }

  std::string::basic_string[abi:ne200100]<0>(v141, "x");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, v141);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v12 = v11[5];
  v14 = *v12;
  v13 = *(v12 + 1);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v107 = v13;
  if (v142 < 0)
  {
    operator delete(v141[0]);
  }

  v15 = MIL::IRValue::AsTensor(v14);
  v16 = (*(*v15 + 32))(v15);
  v17 = (*(*v16 + 96))(v16);
  v143 = 0;
  v144 = 0;
  v145 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v143, *v17, *(v17 + 8), (*(v17 + 8) - *v17) >> 3);
  if (v107)
  {
    atomic_fetch_add_explicit(&v107->__shared_owners_, 1uLL, memory_order_relaxed);
    v140 = v107;
    atomic_fetch_add_explicit(&v107->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v140 = 0;
  }

  v139 = v14;
  MIL::ValueInference::Tensor<float>::FromIRTensorValue(&v139, v141);
  if (v140)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v140);
  }

  v19 = v143;
  v18 = v144;
  std::string::basic_string[abi:ne200100]<0>(v134, "kernel_sizes");
  v20 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, v134);
  if (!v20)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v21 = v20[5];
  v23 = *v21;
  v22 = v21[1];
  if (v22)
  {
    atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
  }

  if (v135 < 0)
  {
    operator delete(v134[0]);
  }

  v24 = MIL::IRValue::AsTensor(v23);
  Data = MIL::IRTensorValue::GetDataView<int>(v24);
  memset(v138, 0, sizeof(v138));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v138, Data, &Data[v26], (4 * v26) >> 2);
  std::string::basic_string[abi:ne200100]<0>(v134, "strides");
  v27 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, v134);
  if (!v27)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v28 = v27[5];
  v30 = *v28;
  v29 = v28[1];
  if (v29)
  {
    atomic_fetch_add_explicit(v29 + 1, 1uLL, memory_order_relaxed);
  }

  if (v135 < 0)
  {
    operator delete(v134[0]);
  }

  v31 = MIL::IRValue::AsTensor(v30);
  v32 = MIL::IRTensorValue::GetDataView<int>(v31);
  memset(v137, 0, sizeof(v137));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v137, v32, &v32[v33], (4 * v33) >> 2);
  std::string::basic_string[abi:ne200100]<0>(v134, "pad");
  v34 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, v134);
  if (!v34)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v35 = v34[5];
  v37 = *v35;
  v36 = v35[1];
  if (v36)
  {
    atomic_fetch_add_explicit(v36 + 1, 1uLL, memory_order_relaxed);
  }

  if (v135 < 0)
  {
    operator delete(v134[0]);
  }

  v38 = MIL::IRValue::AsTensor(v37);
  v39 = MIL::IRTensorValue::GetDataView<int>(v38);
  memset(v136, 0, sizeof(v136));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v136, v39, &v39[v40], (4 * v40) >> 2);
  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(v141);
  v132 = 0uLL;
  v133 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v132, *ProgramFirstSet, *(ProgramFirstSet + 8), (*(ProgramFirstSet + 8) - *ProgramFirstSet) >> 3);
  MIL::ValueInference::Tensor<float>::Zeros(&v132, v134);
  if (v132.n128_u64[0])
  {
    v132.n128_u64[1] = v132.n128_u64[0];
    operator delete(v132.n128_u64[0]);
  }

  memset(v131, 0, sizeof(v131));
  v42 = v150;
  if (v151 != v150)
  {
    v43 = 0;
    do
    {
      v44 = MIL::IRDimension::AsConstant(v42[v43]);
      LODWORD(v159) = (*(*v44 + 48))(v44);
      std::vector<int>::push_back[abi:ne200100](v131, &v159);
      ++v43;
      v42 = v150;
    }

    while (v43 < (v151 - v150) >> 3);
  }

  if (v18 - v19 != 40)
  {
    if ((5 - ((v18 - v19) >> 3)) <= 1)
    {
      v45 = 1;
    }

    else
    {
      v45 = 5 - ((v18 - v19) >> 3);
    }

    do
    {
      LODWORD(v159) = 1;
      std::vector<int>::push_back[abi:ne200100](v131, &v159);
      --v45;
    }

    while (v45);
  }

  v128 = 0;
  v129 = 0;
  v130 = 0;
  __src = 0;
  v126 = 0;
  v127 = 0;
  v46 = v143;
  if ((v144 - v143) >= 0x11)
  {
    v47 = 0;
    v48 = 2;
    do
    {
      v49 = MIL::IRDimension::AsConstant(v46[v48]);
      LODWORD(v159) = (*(*v49 + 48))(v49);
      std::vector<int>::push_back[abi:ne200100](&v128, &v159);
      v50 = v126;
      if (v126 >= v127)
      {
        v52 = __src;
        v53 = v126 - __src;
        v54 = (v126 - __src) >> 2;
        v55 = v54 + 1;
        if ((v54 + 1) >> 62)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v56 = v127 - __src;
        if ((v127 - __src) >> 1 > v55)
        {
          v55 = v56 >> 1;
        }

        if (v56 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v57 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v57 = v55;
        }

        if (v57)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v57);
        }

        v58 = (4 * v54);
        v59 = &v58[-((v126 - __src) >> 2)];
        *v58 = *(v136[0] + v47);
        v51 = (v58 + 1);
        memcpy(v59, v52, v53);
        v60 = __src;
        __src = v59;
        v126 = v51;
        v127 = 0;
        if (v60)
        {
          operator delete(v60);
        }
      }

      else
      {
        *v126 = *(v136[0] + v47);
        v51 = v50 + 4;
      }

      v126 = v51;
      ++v48;
      v46 = v143;
      v47 += 8;
    }

    while (v48 < (v144 - v143) >> 3);
  }

  v61 = v131[0];
  v62 = *v131[0];
  if (*v131[0] < 1)
  {
    goto LABEL_129;
  }

  v63 = 0;
  v112 = 0;
LABEL_63:
  if (v61[1] < 1)
  {
    goto LABEL_128;
  }

  v64 = 0;
  LODWORD(v109) = v63;
LABEL_65:
  if (v61[2] < 1)
  {
    goto LABEL_126;
  }

  v65 = 0;
  HIDWORD(v109) = v64;
LABEL_67:
  if (v61[3] < 1)
  {
    goto LABEL_125;
  }

  v66 = 0;
  LODWORD(v110) = v65;
LABEL_69:
  if (v61[4] < 1)
  {
    goto LABEL_124;
  }

  v67 = 0;
  HIDWORD(v110) = v66;
LABEL_71:
  v158[0] = v63;
  v158[1] = v64;
  v158[2] = v65;
  v158[3] = v66;
  v158[4] = v67;
  v120 = 0;
  v121 = 0;
  v119 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v119, v158, &v159, 5uLL);
  LODWORD(v159) = 0;
  std::vector<int>::vector[abi:ne200100](v156, 3uLL, &v159);
  LODWORD(v159) = 0;
  std::vector<int>::vector[abi:ne200100](&v169, 3uLL, &v159);
  v68 = *v119;
  v69 = *(v119 + 1);
  v70 = v128;
  v71 = v156[0];
  v72 = (v129 - v128) >> 2;
  if (v129 != v128)
  {
    v73 = (v119 + 8);
    v74 = v137[0];
    v75 = __src;
    v76 = v138[0];
    v77 = v169;
    if (v72 <= 1)
    {
      v78 = 1;
    }

    else
    {
      v78 = (v129 - v128) >> 2;
    }

    v79 = v156[0];
    do
    {
      v81 = *v74++;
      v80 = v81;
      v83 = *v73++;
      v82 = v83;
      v84 = *v75++;
      v85 = v82 * v80 - v84;
      *v79 = v85;
      v86 = *v70++;
      v87 = v86 - 1;
      v88 = *v76++;
      v89 = v85 + v88 - 1;
      if (v89 >= v87)
      {
        v89 = v87;
      }

      *v77++ = v89;
      *v79 &= ~(*v79 >> 31);
      ++v79;
      --v78;
    }

    while (v78);
  }

  v167 = 0;
  v168 = 0;
  v166 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(&v166, v71, v156[1], (v156[1] - v71) >> 2);
  v155 = 0;
  v153 = 0;
  v154 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(&v153, v169, v170, v170 - v169);
  v111 = v67;
  v90 = *v166;
  v91 = v153;
  v92 = *v153;
  if (*v166 > *v153)
  {
    v93 = -1;
    v94 = -1;
    v95 = -1;
    goto LABEL_100;
  }

  v95 = -1;
  v96 = -2147500000.0;
  v94 = -1;
  v93 = -1;
LABEL_82:
  v97 = *(v166 + 1);
  if (v97 > v91[1])
  {
    goto LABEL_99;
  }

LABEL_83:
  for (i = *(v166 + 2); ; ++i)
  {
    if (i > v91[2])
    {
      if (++v97 > v91[1])
      {
        v92 = *v91;
LABEL_99:
        if (++v90 > v92)
        {
LABEL_100:
          *&v159 = __PAIR64__(v94, v95);
          DWORD2(v159) = v93;
          v123 = 0;
          v124 = 0;
          v122 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v122, &v159, &v159 + 3, 3uLL);
          v63 = v109;
          v64 = HIDWORD(v109);
          v65 = v110;
          v66 = HIDWORD(v110);
          if (v153)
          {
            v154 = v153;
            operator delete(v153);
          }

          if (v166)
          {
            v167 = v166;
            operator delete(v166);
          }

          if (v169)
          {
            v170 = v169;
            operator delete(v169);
          }

          if (v156[0])
          {
            v156[1] = v156[0];
            operator delete(v156[0]);
          }

          if (v112)
          {
            operator delete(v112);
          }

          v112 = v122;
          v123 = 0;
          v124 = 0;
          v122 = 0;
          if (v119)
          {
            v120 = v119;
            operator delete(v119);
          }

          v169 = v109;
          v170 = v110;
          v171 = v111;
          v117 = 0;
          v118 = 0;
          v116 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v116, &v169, &v172, 5uLL);
          v166 = v109;
          v167 = *v112;
          LODWORD(v168) = v112[2];
          v114 = 0;
          v115 = 0;
          v113 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v113, &v166, &v168 + 1, 5uLL);
          v160 = 0;
          v159 = 0uLL;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(&v159, v116, v116 + 3, 3uLL);
          v157 = 0;
          v156[0] = 0;
          v156[1] = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(v156, v113, v113 + 3, 3uLL);
          v102 = MIL::ParserContext::GetProgramFirstSet(__p);
          v103 = ((v102[1] - *v102) >> 3) - 2;
          if (v103 >= 2)
          {
            v153 = *(v116 + 3);
            std::vector<unsigned long long>::push_back[abi:ne200100](&v159, &v153);
            v153 = *(v113 + 3);
            std::vector<unsigned long long>::push_back[abi:ne200100](v156, &v153);
            if (v103 != 2)
            {
              v153 = *(v116 + 4);
              std::vector<unsigned long long>::push_back[abi:ne200100](&v159, &v153);
              v153 = *(v113 + 4);
              std::vector<unsigned long long>::push_back[abi:ne200100](v156, &v153);
            }
          }

          v104 = *MIL::ValueInference::Tensor<float>::operator[](__p, &v159);
          v105 = MIL::ValueInference::Tensor<float>::operator[](v134, v156);
          *v105 = v104 + *v105;
          if (v156[0])
          {
            v156[1] = v156[0];
            operator delete(v156[0]);
          }

          if (v159)
          {
            *(&v159 + 1) = v159;
            operator delete(v159);
          }

          if (v113)
          {
            v114 = v113;
            operator delete(v113);
          }

          if (v116)
          {
            v117 = v116;
            operator delete(v116);
          }

          v67 = v111 + 1;
          v61 = v131[0];
          if (v111 + 1 >= *(v131[0] + 4))
          {
LABEL_124:
            if (++v66 >= v61[3])
            {
LABEL_125:
              if (++v65 >= v61[2])
              {
LABEL_126:
                if (++v64 >= v61[1])
                {
                  v62 = *v61;
LABEL_128:
                  if (++v63 >= v62)
                  {
LABEL_129:
                    MIL::ValueInference::Tensor<float>::ToIRTensorValue(v134, *a1);
                  }

                  goto LABEL_63;
                }

                goto LABEL_65;
              }

              goto LABEL_67;
            }

            goto LABEL_69;
          }

          goto LABEL_71;
        }

        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (v72 == 2)
    {
      *&v159 = v68;
      *(&v159 + 1) = v69;
      v160 = v90;
      v161 = v97;
      v164 = 0;
      v165 = 0;
      v163 = 0;
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v163, &v159, &v162, 4uLL);
      v101 = MIL::ValueInference::Tensor<float>::operator[](v141, &v163);
    }

    else
    {
      if (v72 == 1)
      {
        v163 = v68;
        v164 = v69;
        v165 = v90;
        v160 = 0;
        v159 = 0uLL;
        std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v159, &v163, &v166, 3uLL);
        v99 = *MIL::ValueInference::Tensor<float>::operator[](v141, &v159);
        v100 = v159;
        if (!v159)
        {
          goto LABEL_94;
        }

        *(&v159 + 1) = v159;
        goto LABEL_93;
      }

      *&v159 = v68;
      *(&v159 + 1) = v69;
      v160 = v90;
      v161 = v97;
      v162 = i;
      v163 = 0;
      v164 = 0;
      v165 = 0;
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v163, &v159, &v163, 5uLL);
      v101 = MIL::ValueInference::Tensor<float>::operator[](v141, &v163);
    }

    v99 = *v101;
    v100 = v163;
    if (!v163)
    {
      goto LABEL_94;
    }

    v164 = v163;
LABEL_93:
    operator delete(v100);
LABEL_94:
    if (v99 > v96)
    {
      v93 = i;
      v94 = v97;
      v95 = v90;
      v96 = v99;
    }

    v91 = v153;
  }
}

void sub_2184D0FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, std::__shared_weak_count *a13, std::__shared_weak_count *a14, std::__shared_weak_count *a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = *(v65 - 216);
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  if (STACK[0x298])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x298]);
  }

  v68 = a20;
  if (__p)
  {
    operator delete(__p);
    v68 = a20;
  }

  if (a36)
  {
    v69 = v68;
    operator delete(a36);
    v68 = v69;
  }

  if (v68)
  {
    operator delete(v68);
  }

  if (a39)
  {
    operator delete(a39);
  }

  MIL::ValueInference::Tensor<float>::~Tensor(&a45);
  if (a53)
  {
    a54 = a53;
    operator delete(a53);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a56)
  {
    a57 = a56;
    operator delete(a56);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a59)
  {
    a60 = a59;
    operator delete(a59);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  MIL::ValueInference::Tensor<float>::~Tensor(&a64);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  v70 = a65;
  if (a65)
  {
    STACK[0x200] = a65;
    operator delete(v70);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  MIL::ValueInference::Tensor<float>::~Tensor(&STACK[0x220]);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  v71 = STACK[0x260];
  if (STACK[0x260])
  {
    STACK[0x268] = v71;
    operator delete(v71);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2184D13E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2184D145C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Train::ios17Train::BasePoolGrad::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_2184D3738(_Unwind_Exception *a1)
{
  v5 = *(v2 - 112);
  *(v2 - 112) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x488], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x500], 0);
  _Unwind_Resume(a1);
}

void sub_2184D42B8()
{
  v0 = STACK[0x508];
  if (STACK[0x508])
  {
    STACK[0x510] = v0;
    operator delete(v0);
  }

  JUMPOUT(0x2184D3FACLL);
}

void MIL::Operators::Train::ios17Train::MaxPoolGrad::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2184D6988(_Unwind_Exception *a1)
{
  v5 = *(v2 - 120);
  *(v2 - 120) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 96), 0);
  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x4C8], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x540], 0);
  _Unwind_Resume(a1);
}

void sub_2184D766C()
{
  v0 = STACK[0x548];
  if (STACK[0x548])
  {
    STACK[0x550] = v0;
    operator delete(v0);
  }

  JUMPOUT(0x2184D7268);
}

void sub_2184D7700(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    MIL::Opsets::Common::CreateMILContext(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Opsets::Common::RegisterIos15ToIos16Conversions(MIL::Opsets::Common *this, MIL::MILContext *a2)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "ios15");
  Opset = MIL::MILContext::GetOpset(this, __p);
  MIL::IROpset::GetReversedOperatorNamesMap(Opset, v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  for (i = v11; i; i = *i)
  {
    std::vector<std::string>::push_back[abi:ne200100](&v12, (i + 5));
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v10);
  std::string::basic_string[abi:ne200100]<0>(v10, "ios15");
  std::string::basic_string[abi:ne200100]<0>(v6, "ios16");
  memset(v5, 0, sizeof(v5));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v5, v12, v13, 0xAAAAAAAAAAAAAAABLL * ((v13 - v12) >> 3));
  __p[0] = v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  v10[0] = &v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);
}

void sub_2184D7840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  a19 = v30 - 40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::Opsets::Common *this, MIL::MILContext *a2)
{
  v13[3] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v11, "gather");
  std::string::basic_string[abi:ne200100]<0>(&__p, "ios16");
  Opset = MIL::MILContext::GetOpset(this, &__p);
  NamedOperatorMap = MIL::IROpset::GetNamedOperatorMap(Opset);
  v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(NamedOperatorMap, &v11);
  if (v5)
  {
    v6 = v5[6];
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    if (v10 < 0)
    {
      operator delete(__p);
    }

    std::operator+<char>();
    std::operator+<char>();
    std::set<std::string>::set[abi:ne200100](&v8, v13, 1);
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
    }

    else
    {
      v7 = v11;
    }

    v12 = 0;
    operator new();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2184D7F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, char *a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  *(v46 - 128) = v45;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v46 - 128));
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  *(v46 - 128) = &a31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v46 - 128));
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&a34, a35);
  _Unwind_Resume(a1);
}

void MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::Opsets::Common *this, MIL::MILContext *a2)
{
  v16[3] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v14, "constexpr_cast");
  std::string::basic_string[abi:ne200100]<0>(&__p, "ios17");
  Opset = MIL::MILContext::GetOpset(this, &__p);
  NamedOperatorMap = MIL::IROpset::GetNamedOperatorMap(Opset);
  v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(NamedOperatorMap, &v14);
  if (v5)
  {
    v7 = v5[5];
    v6 = v5[6];
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    if (v13 < 0)
    {
      operator delete(__p);
    }

    std::operator+<char>();
    std::operator+<char>();
    std::set<std::string>::set[abi:ne200100](&v11, v16, 1);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    }

    else
    {
      v8 = v14;
    }

    v9 = v7;
    v10 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    v15 = 0;
    operator new();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2184D8B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char *a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&a42, a43);
  if (*(v57 - 57) < 0)
  {
    operator delete(*(v57 - 80));
  }

  if (a50 < 0)
  {
    operator delete(__p);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::RegisterDirectlyUpgradeableOps(uint64_t a1, uint64_t a2, __int128 **a3, uint64_t a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  if (*a3 != a3[1])
  {
    if (*(a1 + 23) >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = *(a1 + 8);
    }

    std::string::basic_string[abi:ne200100](&v29, v7 + 2);
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v29;
    }

    else
    {
      v8 = v29.__r_.__value_.__r.__words[0];
    }

    if (v7)
    {
      if (*(a1 + 23) >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      memmove(v8, v9, v7);
    }

    strcpy(v8 + v7, "::");
    v10 = *(v4 + 23);
    if (v10 >= 0)
    {
      v11 = v4;
    }

    else
    {
      v11 = *v4;
    }

    if (v10 >= 0)
    {
      v12 = *(v4 + 23);
    }

    else
    {
      v12 = *(v4 + 1);
    }

    v13 = std::string::append(&v29, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v31 = v13->__r_.__value_.__r.__words[2];
    *v30 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (*(a2 + 23) >= 0)
    {
      v15 = *(a2 + 23);
    }

    else
    {
      v15 = *(a2 + 8);
    }

    std::string::basic_string[abi:ne200100](&v27, v15 + 2);
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v27;
    }

    else
    {
      v16 = v27.__r_.__value_.__r.__words[0];
    }

    if (v15)
    {
      if (*(a2 + 23) >= 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = *a2;
      }

      memmove(v16, v17, v15);
    }

    strcpy(v16 + v15, "::");
    v18 = *(v4 + 23);
    if (v18 >= 0)
    {
      v19 = v4;
    }

    else
    {
      v19 = *v4;
    }

    if (v18 >= 0)
    {
      v20 = *(v4 + 23);
    }

    else
    {
      v20 = *(v4 + 1);
    }

    v21 = std::string::append(&v27, v19, v20);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v34 = v21->__r_.__value_.__r.__words[2];
    v33 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    std::set<std::string>::set[abi:ne200100](v28, &v33, 1);
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v24, *a1, *(a1 + 8));
    }

    else
    {
      v24 = *a1;
    }

    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v25, *a2, *(a2 + 8));
    }

    else
    {
      v25 = *a2;
    }

    if (*(v4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v4, *(v4 + 1));
    }

    else
    {
      v23 = *v4;
      __p.__r_.__value_.__r.__words[2] = *(v4 + 2);
      *&__p.__r_.__value_.__l.__data_ = v23;
    }

    v32 = 0;
    operator new();
  }
}

void sub_2184D9150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char *a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&a30, a31);
  if (*(v44 - 105) < 0)
  {
    operator delete(*(v44 - 128));
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  _Unwind_Resume(a1);
}

void MIL::Opsets::Common::RegisterIos18Decompositions(MIL::Opsets::Common *this, MIL::MILContext *a2)
{
  v23[3] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v12, "scaled_dot_product_attention");
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18");
  Opset = MIL::MILContext::GetOpset(this, __p);
  NamedOperatorMap = MIL::IROpset::GetNamedOperatorMap(Opset);
  v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(NamedOperatorMap, &v12);
  if (v5)
  {
    v7 = v5[5];
    v6 = v5[6];
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    std::operator+<char>();
    std::string::basic_string[abi:ne200100]<0>(__p, "ios18::matmul");
    std::string::basic_string[abi:ne200100]<0>(v16, "ios18::transpose");
    std::string::basic_string[abi:ne200100]<0>(v17, "ios18::sqrt");
    std::string::basic_string[abi:ne200100]<0>(v18, "ios18::softmax");
    std::string::basic_string[abi:ne200100]<0>(v19, "ios18::shape");
    std::string::basic_string[abi:ne200100]<0>(v20, "ios18::add");
    std::string::basic_string[abi:ne200100]<0>(v21, "ios18::real_div");
    std::string::basic_string[abi:ne200100]<0>(v22, "ios18::cast");
    std::string::basic_string[abi:ne200100]<0>(v23, "ios18::slice_by_size");
    std::set<std::string>::set[abi:ne200100](v11, __p, 9);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
    }

    else
    {
      v8 = v12;
    }

    v9 = v7;
    v10 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    v13 = 0;
    operator new();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2184D9588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  operator delete(v66);
  std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::~pair(&a9);
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(&a16, a17);
  v68 = &a65;
  v69 = -216;
  v70 = &a65;
  while (1)
  {
    v71 = *v70;
    v70 -= 24;
    if (v71 < 0)
    {
      operator delete(*(v68 - 23));
    }

    v68 = v70;
    v69 += 24;
    if (!v69)
    {
      if (a24 < 0)
      {
        operator delete(__p);
      }

      if (v65)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v65);
      }

      if (a30 < 0)
      {
        operator delete(a25);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t std::__function::__func<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0,std::allocator<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECAF8;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0,std::allocator<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECAF8;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x21CEAFEA0);
}

void sub_2184D9870(_Unwind_Exception *a1)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0,std::allocator<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2829ECAF8;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 32), *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v6 = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
    *(a2 + 32) = v6;
  }

  if (*(a1 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 56), *(a1 + 56), *(a1 + 64));
  }

  else
  {
    v7 = *(a1 + 56);
    *(a2 + 72) = *(a1 + 72);
    *(a2 + 56) = v7;
  }
}

void sub_2184D9978(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0,std::allocator<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::destroy(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void std::__function::__func<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0,std::allocator<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::destroy_deallocate(void **__p)
{
  if (*(__p + 79) < 0)
  {
    operator delete(__p[7]);
  }

  if (*(__p + 55) < 0)
  {
    operator delete(__p[4]);
  }

  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void std::__function::__func<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0,std::allocator<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::operator()(uint64_t a1, MIL::MILContext ***a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 31) >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = &v11;
  std::string::basic_string[abi:ne200100](&v11, v3 + 2);
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v4 = v11.__r_.__value_.__r.__words[0];
  }

  if (v3)
  {
    if (*(a1 + 31) >= 0)
    {
      v5 = (a1 + 8);
    }

    else
    {
      v5 = *(a1 + 8);
    }

    memmove(v4, v5, v3);
  }

  strcpy(v4 + v3, "::");
  v6 = *(a1 + 79);
  if (v6 >= 0)
  {
    v7 = (a1 + 56);
  }

  else
  {
    v7 = *(a1 + 56);
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 79);
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = std::string::append(&v11, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  MIL::Matching::Op();
}

void sub_2184D9C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  std::__function::__value_func<void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__value_func[abi:ne200100](&a24);
  MIL::Matching::Pattern::~Pattern(&a22);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0,std::allocator<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0::operator() const(MIL::Transform::ProgramTransformer &)::{lambda(MIL::Transform::MatchContext &,MIL::Matching::MatchView)#1},std::allocator<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0::operator() const(MIL::Transform::ProgramTransformer &)::{lambda(MIL::Transform::MatchContext &,MIL::Matching::MatchView)#1}>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2829ECB78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0::operator() const(MIL::Transform::ProgramTransformer &)::{lambda(MIL::Transform::MatchContext &,MIL::Matching::MatchView)#1},std::allocator<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0::operator() const(MIL::Transform::ProgramTransformer &)::{lambda(MIL::Transform::MatchContext &,MIL::Matching::MatchView)#1}>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::operator()(uint64_t *a1, MIL::Transform::MatchContext *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  MIL::Matching::MatchView::MatchView(&v31, a3);
  MILContext = MIL::Transform::MatchContext::GetMILContext(a2);
  Opset = MIL::MILContext::GetOpset(MILContext, a1[1]);
  Operator = MIL::IROpset::GetOperator(Opset, a1[3]);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  if ((*(*Operator + 72))(Operator))
  {
    for (i = *((*(*Operator + 64))(Operator) + 16); i; i = *i)
    {
      for (j = 0; j < MIL::Matching::MatchView::GetArgumentCount(&v31, i + 2); ++j)
      {
        v10 = i + 2;
        if (*(i + 39) < 0)
        {
          v10 = i[2];
        }

        MIL::Matching::MatchView::GetVariadicArgument(&v31, i + 2, j, &v35);
        __p[0] = v10;
        MIL::Matching::ArgumentView::ArgumentView(&__p[1], &v35);
        v38.__r_.__value_.__l.__data_ = __p[0];
        MIL::Transform::ArgumentDescription::ArgumentDescription(&v38.__r_.__value_.__r.__words[1], &__p[1]);
        v11 = v33;
        if (v33 >= v34)
        {
          v12 = std::vector<std::pair<char const*,MIL::Transform::ArgumentDescription>>::__emplace_back_slow_path<std::pair<char const*,MIL::Transform::ArgumentDescription>>(&v32, &v38);
        }

        else
        {
          *v33 = v38.__r_.__value_.__r.__words[0];
          MIL::Transform::ArgumentDescription::ArgumentDescription((v11 + 1), &v38.__r_.__value_.__l.__size_);
          v12 = (v11 + 5);
        }

        v33 = v12;
        MIL::Transform::ArgumentDescription::~ArgumentDescription(&v38.__r_.__value_.__r.__words[1]);
        MIL::Matching::ArgumentView::~ArgumentView(&__p[1]);
        MIL::Matching::ArgumentView::~ArgumentView(&v35);
      }
    }
  }

  v13 = a1[2];
  if (*(v13 + 23) >= 0)
  {
    v14 = *(v13 + 23);
  }

  else
  {
    v14 = *(v13 + 8);
  }

  v15 = &v38;
  std::string::basic_string[abi:ne200100](&v38, v14 + 2);
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v15 = v38.__r_.__value_.__r.__words[0];
  }

  if (v14)
  {
    if (*(v13 + 23) >= 0)
    {
      v16 = v13;
    }

    else
    {
      v16 = *v13;
    }

    memmove(v15, v16, v14);
  }

  strcpy(v15 + v14, "::");
  v17 = a1[3];
  v18 = *(v17 + 23);
  if (v18 >= 0)
  {
    v19 = a1[3];
  }

  else
  {
    v19 = *v17;
  }

  if (v18 >= 0)
  {
    v20 = *(v17 + 23);
  }

  else
  {
    v20 = *(v17 + 8);
  }

  v21 = std::string::append(&v38, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v37 = v21->__r_.__value_.__r.__words[2];
  *__p = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  NumOutputs = MIL::Matching::MatchView::GetNumOutputs(&v31);
  v24 = SHIBYTE(v37);
  v25 = __p[0];
  v26 = v32;
  v27 = v33;
  Attributes = MIL::Matching::MatchView::GetAttributes(&v31);
  if (v27 == v26)
  {
    v29 = 0;
  }

  else
  {
    v29 = v26;
  }

  if (v24 >= 0)
  {
    v30 = __p;
  }

  else
  {
    v30 = v25;
  }

  MIL::Transform::MatchContext::AddMultiOutputOperation(a2, v30, NumOutputs, v29, 0xCCCCCCCCCCCCCCCDLL * ((v27 - v26) >> 3), Attributes);
}

void sub_2184DA078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  __p = &a10;
  std::vector<std::pair<char const*,MIL::Transform::ArgumentDescription>>::__destroy_vector::operator()[abi:ne200100](&__p);
  MIL::Matching::MatchView::~MatchView(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0::operator() const(MIL::Transform::ProgramTransformer &)::{lambda(MIL::Transform::MatchContext &,MIL::Matching::MatchView)#1},std::allocator<anonymous namespace::RegisterDirectlyUpgradeableOps(std::string const&,std::string,std::vector<std::string>,MIL::MILContext &)::$_0::operator() const(MIL::Transform::ProgramTransformer &)::{lambda(MIL::Transform::MatchContext &,MIL::Matching::MatchView)#1}>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::set<std::string>::set[abi:ne200100](uint64_t a1, const void **a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(a1, v4, a2, a2);
      a2 += 3;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECC08;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECC08;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2829ECC08;
  v2 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v3 = *(a1 + 8);
    v2->__r_.__value_.__r.__words[2] = *(a1 + 24);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::destroy(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::destroy_deallocate(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::operator()(uint64_t a1, MIL::MILContext ***a2)
{
  v2 = *MEMORY[0x277D85DE8];
  std::operator+<char>();
  MIL::Matching::Op();
}

void sub_2184DA4A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  std::__function::__value_func<void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__value_func[abi:ne200100](&a17);
  MIL::Matching::Pattern::~Pattern(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECC88;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECC88;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2829ECC88;
  v2 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v3 = *(a1 + 8);
    v2->__r_.__value_.__r.__words[2] = *(a1 + 24);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::destroy(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::destroy_deallocate(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::operator()(uint64_t a1, MIL::MILContext ***a2)
{
  v2 = *MEMORY[0x277D85DE8];
  std::operator+<char>();
  MIL::Matching::Op();
}

void sub_2184DA7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  std::__function::__value_func<void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__value_func[abi:ne200100](&a17);
  MIL::Matching::Pattern::~Pattern(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos16ToIos17Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECD08;
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECD08;
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2829ECD08;
  v4 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a1 + 40);
  a2[4] = *(a1 + 32);
  a2[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::destroy_deallocate(void *a1)
{
  std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>,0>(a1 + 8);

  operator delete(a1);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::operator()(uint64_t a1, MIL::MILContext ***a2)
{
  v2 = *MEMORY[0x277D85DE8];
  std::operator+<char>();
  MIL::Matching::Op();
}

void sub_2184DAB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  std::__function::__value_func<void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__value_func[abi:ne200100](&a17);
  MIL::Matching::Pattern::~Pattern(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECD88;
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECD88;
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2829ECD88;
  v4 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a1 + 40);
  a2[4] = *(a1 + 32);
  a2[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::destroy_deallocate(void *a1)
{
  std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>,0>(a1 + 8);

  operator delete(a1);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::operator()(uint64_t a1, MIL::MILContext ***a2)
{
  v2 = *MEMORY[0x277D85DE8];
  std::operator+<char>();
  MIL::Matching::Op();
}

void sub_2184DAEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  std::__function::__value_func<void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__value_func[abi:ne200100](&a17);
  MIL::Matching::Pattern::~Pattern(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_1>,void ()(MIL::Transform::ProgramTransformer &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_2>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECE08;
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_2>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECE08;
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_2>,void ()(MIL::Transform::ProgramTransformer &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2829ECE08;
  v4 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a1 + 40);
  a2[4] = *(a1 + 32);
  a2[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_2>,void ()(MIL::Transform::ProgramTransformer &)>::destroy_deallocate(void *a1)
{
  std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>,0>(a1 + 8);

  operator delete(a1);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_2>,void ()(MIL::Transform::ProgramTransformer &)>::operator()(uint64_t a1, MIL::MILContext ***a2)
{
  v2 = *MEMORY[0x277D85DE8];
  std::operator+<char>();
  MIL::Matching::Op();
}

void sub_2184DB270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  std::__function::__value_func<void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__value_func[abi:ne200100](&a17);
  MIL::Matching::Pattern::~Pattern(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_2>,void ()(MIL::Transform::ProgramTransformer &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_3>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECE88;
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_3>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECE88;
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_3>,void ()(MIL::Transform::ProgramTransformer &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2829ECE88;
  v4 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a1 + 40);
  a2[4] = *(a1 + 32);
  a2[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_3>,void ()(MIL::Transform::ProgramTransformer &)>::destroy_deallocate(void *a1)
{
  std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>,0>(a1 + 8);

  operator delete(a1);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_3>,void ()(MIL::Transform::ProgramTransformer &)>::operator()(uint64_t a1, MIL::MILContext ***a2)
{
  v2 = *MEMORY[0x277D85DE8];
  std::operator+<char>();
  MIL::Matching::Op();
}

void sub_2184DB5F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  std::__function::__value_func<void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__value_func[abi:ne200100](&a17);
  MIL::Matching::Pattern::~Pattern(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Common::RegisterIos17ToIos18Conversions(MIL::MILContext &)::$_3>,void ()(MIL::Transform::ProgramTransformer &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos18Decompositions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos18Decompositions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECF08;
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos18Decompositions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos18Decompositions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829ECF08;
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos18Decompositions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos18Decompositions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2829ECF08;
  v4 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a1 + 40);
  a2[4] = *(a1 + 32);
  a2[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos18Decompositions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos18Decompositions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::destroy_deallocate(void *a1)
{
  std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>,0>(a1 + 8);

  operator delete(a1);
}

void std::__function::__func<MIL::Opsets::Common::RegisterIos18Decompositions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos18Decompositions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::operator()(uint64_t a1, MIL::MILContext ***a2)
{
  v2 = *MEMORY[0x277D85DE8];
  std::operator+<char>();
  MIL::Matching::Op();
}

void sub_2184DB980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  std::__function::__value_func<void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__value_func[abi:ne200100](&a17);
  MIL::Matching::Pattern::~Pattern(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Opsets::Common::RegisterIos18Decompositions(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::RegisterIos18Decompositions(MIL::MILContext &)::$_0>,void ()(MIL::Transform::ProgramTransformer &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MIL::Opsets::Common::ios15::ios15Opset::Register(MIL::Opsets::Common::ios15::ios15Opset *this, MIL::MILContext *a2)
{
  v3 = 5;
  strcpy(__p, "ios15");
  operator new();
}

void sub_2184DBAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v18 = a11;
  a11 = 0;
  if (v18)
  {
    MIL::Opsets::Common::ios15::ios15Opset::Register();
  }

  std::unique_ptr<MIL::Opsets::Common::ios15::ios15Opset>::~unique_ptr[abi:ne200100](&a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

MIL::IROpset **std::unique_ptr<MIL::Opsets::Common::ios15::ios15Opset>::~unique_ptr[abi:ne200100](MIL::IROpset **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::IROpset::~IROpset(v2);
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void sub_2184DBC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a9);
  std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(uint64_t *__return_ptr a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  operator new();
}

void sub_2184E0F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(v3);
  _Unwind_Resume(a1);
}

void MIL::Opsets::Common::ios15::ios15Opset::GetOperatorNameToNameMap(uint64_t *__return_ptr a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_impl<char const(&)[4],char const(&)[4]>(a1);
}

void MIL::Opsets::Common::ios15::ios15Opset::GetOps(uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(&v2, "abs");
  MIL::Operators::Common::ios15::Abs::Make();
}

void sub_2184E6718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v17 = *(v15 - 40);
  *(v15 - 40) = 0;
  if (v17)
  {
    MIL::Operators::Common::ios15::ListLength::Make();
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v14);
  _Unwind_Resume(a1);
}

void MIL::Opsets::Common::ios15::ios15Opset::~ios15Opset(MIL::Opsets::Common::ios15::ios15Opset *this)
{
  MIL::IROpset::~IROpset(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ECFC8;
  a2[1] = v2;
  return result;
}

void sub_2184E84C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_1>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED058;
  a2[1] = v2;
  return result;
}

void sub_2184E8620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_1>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_2>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED0D8;
  a2[1] = v2;
  return result;
}

void sub_2184E8780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_2>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_3>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED158;
  a2[1] = v2;
  return result;
}

void sub_2184E88E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_3>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_4,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_4>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED1D8;
  a2[1] = v2;
  return result;
}

void sub_2184E8A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_4,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_4>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_5,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_5>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED258;
  a2[1] = v2;
  return result;
}

void sub_2184E8BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_5,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_5>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_6,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_6>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED2D8;
  a2[1] = v2;
  return result;
}

void sub_2184E8D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_6,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_6>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_7,std::allocator<MIL::Opsets::Common::ios15::ios15Opset::GetOperatorConstructors(MIL::MILContext &)::$_7>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829ED358;
  a2[1] = v2;
  return result;
}

void sub_2184E8E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}