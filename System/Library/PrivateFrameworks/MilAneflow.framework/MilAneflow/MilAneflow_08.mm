void sub_2599D61E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p)
{
  v45 = *(v43 - 112);
  if (v45)
  {
    operator delete(v45);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::Validators::ValidatePeReduce(MIL::IRObject *a1@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = (*(*a1 + 176))(a1);
  if (*(v6 + 8) == *v6)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  Type = MIL::IRNamedValueType::GetType(**v6);
  v8 = MIL::IRValueType::AsTensorType(Type);
  LOBYTE(__p[0]) = 0;
  v13 = 0;
  LOBYTE(v14) = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  LOBYTE(v21) = 0;
  v23 = 0;
  LocationPtr = MIL::IRObject::GetLocationPtr(a1);
  ANEMachineIR::Validators::ParsePeReduceParamValues(LocationPtr, v5, __p, a2);
  if (MIL::ValidationResult::IsGood(a2))
  {
    MEMORY[0x259CA8F00](a2);
    v10 = MIL::IRObject::GetLocationPtr(a1);
    (*(*a1 + 56))(a1);
    ANEMachineIR::Validators::ValidatePeReduce(v10, v5, v8, __p, a2);
  }

  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21);
  }

  if (v16 == 1 && v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void ANEMachineIR::Validators::ValidateNeReduce(MIL::IRObject *a1@<X0>, uint64_t a2@<X8>)
{
  LocationPtr = MIL::IRObject::GetLocationPtr(a1);
  v4 = LocationPtr[1];
  v7 = *LocationPtr;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ne_reduce is not implemented.");
  MEMORY[0x259CA8EE0](a2, &v7, 209, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_2599D6758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
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

uint64_t *std::vector<BOOL>::vector(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v2);
  }

  std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t *std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(uint64_t *result, char *a2, char *a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2599D697C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MilTranslator::OpTranslator::TranslateConst(MilTranslator::OpTranslator *this@<X0>, const MIL::IROperation *a2@<X1>, uint64_t a3@<X8>)
{
  if (!(*(*a2 + 144))(a2))
  {
    Attributes = MIL::IRObject::GetAttributes(a2);
    std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(&v50, Attributes);
    std::string::basic_string[abi:ne200100]<0>(&v49, "val");
    v10 = std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::find<std::string>(&v50, &v49);
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (v51 == 1 && v10)
    {
      v11 = (*(*v10[5] + 40))(v10[5]);
      if (v11)
      {
        v12 = (*(*v11 + 32))(v11);
        v13 = (*(*v12 + 88))(v12);
        if (v13 <= 0xE && ((1 << v13) & 0x4210) != 0)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "const");
          MilTranslator::OpTranslator::AddOperation(this);
          if (v43 < 0)
          {
            operator delete(__p);
          }

          (*(*a2 + 200))(&v49, a2);
          if (v49.__r_.__value_.__l.__size_ == v49.__r_.__value_.__r.__words[0])
          {
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          if (*(v49.__r_.__value_.__r.__words[0] + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v40, *v49.__r_.__value_.__l.__data_, *(v49.__r_.__value_.__r.__words[0] + 8));
          }

          else
          {
            v15 = *v49.__r_.__value_.__l.__data_;
            v40.__r_.__value_.__r.__words[2] = *(v49.__r_.__value_.__r.__words[0] + 16);
            *&v40.__r_.__value_.__l.__data_ = v15;
          }

          MIL::IROperation::GetOutputType(a2);
          MIL::Builder::OperationBuilder::AddOutput();
          if (v41)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v41);
          }

          if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v40.__r_.__value_.__l.__data_);
          }

          v47.__r_.__value_.__r.__words[0] = &v49;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v47);
          if (*(v10 + 39) < 0)
          {
            std::string::__init_copy_ctor_external(&v38, v10[2], v10[3]);
          }

          else
          {
            v38 = *(v10 + 2);
          }

          v32 = v10[6];
          v37 = v32;
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          MIL::Builder::OperationBuilder::SetAttribute();
          if (v39)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v39);
          }

          if (v37)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v37);
          }

          if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v38.__r_.__value_.__l.__data_);
          }

          *a3 = 0;
          std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
          if (v48.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v48.__r_.__value_.__l.__size_);
          }

          goto LABEL_58;
        }

        *a3 = 4;
        v33 = a3 + 8;
        Location = MIL::IRObject::GetLocation(a2);
        (*(*Location + 24))(&v49);
        v35 = std::string::insert(&v49, 0, "DTypes not compatible with live tensors are not implemented in ANEFlow const. Violation at ");
        v36 = *&v35->__r_.__value_.__l.__data_;
        *(v33 + 16) = *(&v35->__r_.__value_.__l + 2);
        *v33 = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_58:
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::~__hash_table(&v50);
          return;
        }

        v31 = v49.__r_.__value_.__r.__words[0];
LABEL_38:
        operator delete(v31);
        goto LABEL_58;
      }

      *a3 = 4;
      v16 = a3 + 8;
      std::string::basic_string[abi:ne200100]<0>(&v47, "val");
      v24 = std::string::insert(&v47, 0, "Only tensors are handled for const attribute ");
      v25 = *&v24->__r_.__value_.__l.__data_;
      v48.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
      *&v48.__r_.__value_.__l.__data_ = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      v26 = std::string::append(&v48, ". Violated at ");
      v27 = *&v26->__r_.__value_.__l.__data_;
      v49.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v49.__r_.__value_.__l.__data_ = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      v28 = MIL::IRObject::GetLocation(a2);
      (*(*v28 + 24))(&v44);
      if ((v46 & 0x80u) == 0)
      {
        v22 = &v44;
      }

      else
      {
        v22 = v44;
      }

      if ((v46 & 0x80u) == 0)
      {
        v23 = v46;
      }

      else
      {
        v23 = v45;
      }
    }

    else
    {
      *a3 = 4;
      v16 = a3 + 8;
      std::string::basic_string[abi:ne200100]<0>(&v47, "val");
      v17 = std::string::insert(&v47, 0, "Const expected to have exactly one bound attribute named ");
      v18 = *&v17->__r_.__value_.__l.__data_;
      v48.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v48.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      v19 = std::string::append(&v48, ". Violated at ");
      v20 = *&v19->__r_.__value_.__l.__data_;
      v49.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
      *&v49.__r_.__value_.__l.__data_ = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      v21 = MIL::IRObject::GetLocation(a2);
      (*(*v21 + 24))(&v44);
      if ((v46 & 0x80u) == 0)
      {
        v22 = &v44;
      }

      else
      {
        v22 = v44;
      }

      if ((v46 & 0x80u) == 0)
      {
        v23 = v46;
      }

      else
      {
        v23 = v45;
      }
    }

    v29 = std::string::append(&v49, v22, v23);
    v30 = *&v29->__r_.__value_.__l.__data_;
    *(v16 + 16) = *(&v29->__r_.__value_.__l + 2);
    *v16 = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    if (v46 < 0)
    {
      operator delete(v44);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    v31 = v47.__r_.__value_.__r.__words[0];
    goto LABEL_38;
  }

  *a3 = 4;
  v6 = MIL::IRObject::GetLocation(a2);
  (*(*v6 + 24))(&v50);
  v7 = std::string::insert(&v50, 0, "Const not expected to have bound parameters. Violated at ");
  v8 = *&v7->__r_.__value_.__l.__data_;
  *(a3 + 24) = *(&v7->__r_.__value_.__l + 2);
  *(a3 + 8) = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }
}

void sub_2599D6F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (*(v45 - 89) < 0)
  {
    operator delete(*(v45 - 112));
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::~__hash_table(v45 - 88);
  _Unwind_Resume(a1);
}

void sub_2599D7078()
{
  if (*(v0 - 65) < 0)
  {
    operator delete(*(v0 - 88));
  }

  JUMPOUT(0x2599D7070);
}

uint64_t std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::IRValue const>> const&>(a1, i + 2, (i + 2));
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::IRValue const>> const&>(void *a1, uint64_t *a2, uint64_t a3)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>> const&>();
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

void sub_2599D7350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  v5 = *(a2 + 4);
  this[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  this[1].__r_.__value_.__l.__size_ = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void *MIL::ANEMachineIR::Interpreter::ReshapeCpu::Run@<X0>(MIL::IROperation *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__src, "x");
  v55 = a2;
  InterpretedTensorValue = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &__src);
  v7 = InterpretedTensorValue;
  if ((SHIBYTE(v60) & 0x80000000) == 0)
  {
    if (InterpretedTensorValue)
    {
      goto LABEL_3;
    }

LABEL_24:
    v27 = "Value is not a tensor.";
    goto LABEL_26;
  }

  operator delete(__src);
  if (!v7)
  {
    goto LABEL_24;
  }

LABEL_3:
  OutputType = MIL::IROperation::GetOutputType(a1);
  v9 = (*(*OutputType + 24))(OutputType);
  if (!v9)
  {
    v27 = "Output type is not a tensor.";
    goto LABEL_26;
  }

  v11 = v9;
  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(v9, v10);
  if ((*(*v11 + 88))(v11) != 4)
  {
    if ((*(*v11 + 88))(v11) == 14)
    {
      Data = MIL::IRTensorValue::GetDataView<unsigned char>();
      v57 = v29;
      v59 = 0;
      v60 = 0;
      __src = 0;
      std::vector<unsigned char>::reserve(&__src, NumberOfElementsFromStaticTensorShape);
      if (NumberOfElementsFromStaticTensorShape)
      {
        for (i = 0; i != NumberOfElementsFromStaticTensorShape; ++i)
        {
          v31 = MIL::Util::Span<unsigned char const,18446744073709551615ul>::At(&Data, i);
          v32 = v59;
          if (v59 >= v60)
          {
            v34 = __src;
            v35 = (v59 - __src);
            v36 = v59 - __src + 1;
            if (v36 < 0)
            {
              std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
            }

            v37 = v60 - __src;
            if (2 * (v60 - __src) > v36)
            {
              v36 = 2 * v37;
            }

            if (v37 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v38 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v38 = v36;
            }

            if (v38)
            {
              operator new();
            }

            v39 = v59 - __src;
            *v35 = *v31;
            v33 = v35 + 1;
            memcpy(0, v34, v39);
            __src = 0;
            v59 = v35 + 1;
            v60 = 0;
            if (v34)
            {
              operator delete(v34);
            }
          }

          else
          {
            *v59 = *v31;
            v33 = v32 + 1;
          }

          v59 = v33;
        }
      }

      (*(*a1 + 200))(&Data, a1);
      v40 = Data;
      if (v57 == Data)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      MIL::IRTensorValueType::MakeUInt8Value();
      MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v55, v40, &p_Data);
      goto LABEL_63;
    }

    if ((*(*v11 + 88))(v11) == 9)
    {
      Data = MIL::IRTensorValue::GetDataView<signed char>();
      v57 = v41;
      v59 = 0;
      v60 = 0;
      __src = 0;
      std::vector<unsigned char>::reserve(&__src, NumberOfElementsFromStaticTensorShape);
      if (NumberOfElementsFromStaticTensorShape)
      {
        for (j = 0; j != NumberOfElementsFromStaticTensorShape; ++j)
        {
          v43 = MIL::Util::Span<signed char const,18446744073709551615ul>::At(&Data, j);
          v44 = v59;
          if (v59 >= v60)
          {
            v46 = __src;
            v47 = (v59 - __src);
            v48 = v59 - __src + 1;
            if (v48 < 0)
            {
              std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
            }

            v49 = v60 - __src;
            if (2 * (v60 - __src) > v48)
            {
              v48 = 2 * v49;
            }

            if (v49 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v50 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v50 = v48;
            }

            if (v50)
            {
              operator new();
            }

            v51 = v59 - __src;
            *v47 = *v43;
            v45 = v47 + 1;
            memcpy(0, v46, v51);
            __src = 0;
            v59 = v47 + 1;
            v60 = 0;
            if (v46)
            {
              operator delete(v46);
            }
          }

          else
          {
            *v59 = *v43;
            v45 = v44 + 1;
          }

          v59 = v45;
        }
      }

      (*(*a1 + 200))(&Data, a1);
      v52 = Data;
      if (v57 == Data)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      MIL::IRTensorValueType::MakeInt8Value();
      MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v55, v52, &p_Data);
      goto LABEL_63;
    }

    v27 = "Unsupported dtype.";
LABEL_26:
    v28 = 3;
    goto LABEL_68;
  }

  Data = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
  v57 = v13;
  v59 = 0;
  v60 = 0;
  __src = 0;
  std::vector<MIL::Fp16>::reserve(&__src, NumberOfElementsFromStaticTensorShape);
  if (NumberOfElementsFromStaticTensorShape)
  {
    for (k = 0; k != NumberOfElementsFromStaticTensorShape; ++k)
    {
      v15 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::At(&Data, k);
      v16 = v59;
      if (v59 >= v60)
      {
        v18 = __src;
        v19 = v59 - __src;
        v20 = (v59 - __src) >> 1;
        if (v20 <= -2)
        {
          std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
        }

        if (v60 - __src <= v20 + 1)
        {
          v21 = v20 + 1;
        }

        else
        {
          v21 = v60 - __src;
        }

        if (v60 - __src >= 0x7FFFFFFFFFFFFFFELL)
        {
          v22 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(&__src, v22);
        }

        v23 = (2 * v20);
        v24 = &v23[-((v59 - __src) >> 1)];
        *v23 = *v15;
        v17 = v23 + 1;
        memcpy(v24, v18, v19);
        v25 = __src;
        __src = v24;
        v59 = v17;
        v60 = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        *v59 = *v15;
        v17 = v16 + 2;
      }

      v59 = v17;
    }
  }

  (*(*a1 + 200))(&Data, a1);
  v26 = Data;
  if (v57 == Data)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  MIL::IRTensorValueType::MakeFloat16Value();
  MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v55, v26, &p_Data);
LABEL_63:
  v53 = p_Data;
  p_Data = 0;
  if (v53)
  {
    (*(*v53 + 1))(v53);
  }

  p_Data = &Data;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_Data);
  if (__src)
  {
    v59 = __src;
    operator delete(__src);
  }

  v28 = 0;
  v27 = &unk_259A4D977;
LABEL_68:
  *a3 = v28;
  return std::string::basic_string[abi:ne200100]<0>((a3 + 8), v27);
}

void sub_2599D7A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char *a19)
{
  v20 = a19;
  a19 = 0;
  if (v20)
  {
    MIL::ANEMachineIR::Interpreter::TransposeCpu::Run(v20);
  }

  a19 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t MIL::Util::Span<unsigned char const,18446744073709551615ul>::At(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_2798E3508, MEMORY[0x277D825E0]);
  }

  return *a1 + a2;
}

unint64_t MIL::Util::Span<signed char const,18446744073709551615ul>::At(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_2798E3508, MEMORY[0x277D825E0]);
  }

  return *a1 + a2;
}

void MIL::ANEMachineIR::Interpreter::PeAvgPoolCpu::Run(MIL::IROperation *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v137 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 56))(a1);
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    if (*(v6 + 8) != 11)
    {
      goto LABEL_10;
    }

    v6 = *v6;
  }

  else if (v7 != 11)
  {
    goto LABEL_10;
  }

  if (*v6 != 0x705F6776615F6570 || *(v6 + 3) != 0x6C6F6F705F677661)
  {
LABEL_10:
    *a3 = 1;
    v9 = a3 + 8;
    std::string::basic_string[abi:ne200100]<0>(&v125, "pe_avg_pool");
    v10 = std::string::insert(&v125, 0, "Expected '");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v136.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v136.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v136, "' op. Got ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v113.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v113.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = (*(*a1 + 56))(a1);
    v15 = *(v14 + 23);
    if (v15 >= 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = *v14;
    }

    if (v15 >= 0)
    {
      v17 = *(v14 + 23);
    }

    else
    {
      v17 = *(v14 + 8);
    }

    v18 = std::string::append(&v113, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    *(v9 + 16) = *(&v18->__r_.__value_.__l + 2);
    *v9 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v113.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v136.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
    {
      v20 = v125.__r_.__value_.__r.__words[0];
LABEL_22:
      operator delete(v20);
      return;
    }

    return;
  }

  std::string::basic_string[abi:ne200100]<0>(&v113, "x");
  InterpretedTensorValue = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &v113);
  v22 = InterpretedTensorValue;
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v113.__r_.__value_.__l.__data_);
    if (v22)
    {
LABEL_26:
      std::string::basic_string[abi:ne200100]<0>(&v113, "kernel_sizes");
      ParameterValue = MIL::IROperation::GetParameterValue();
      MIL::IRValue::AsTensor(ParameterValue);
      Data = MIL::IRTensorValue::GetDataView<int>();
      v124 = v24;
      if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v113.__r_.__value_.__l.__data_);
        v24 = v124;
      }

      std::vector<int>::vector[abi:ne200100](&v125, v24);
      if (v125.__r_.__value_.__l.__size_ != v125.__r_.__value_.__r.__words[0])
      {
        v25 = 0;
        do
        {
          v26 = MIL::Util::Span<int const,18446744073709551615ul>::At(&Data, v25);
          v27 = v125.__r_.__value_.__r.__words[0];
          *(v125.__r_.__value_.__r.__words[0] + 4 * v25++) = *v26;
        }

        while (v25 < (v125.__r_.__value_.__l.__size_ - v27) >> 2);
      }

      std::string::basic_string[abi:ne200100]<0>(&v113, "strides");
      v28 = MIL::IROperation::GetParameterValue();
      MIL::IRValue::AsTensor(v28);
      v121 = MIL::IRTensorValue::GetDataView<int>();
      v122 = v29;
      if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v113.__r_.__value_.__l.__data_);
        v29 = v122;
      }

      std::vector<int>::vector[abi:ne200100](&v119, v29);
      if (v120 != v119)
      {
        v30 = 0;
        do
        {
          v31 = MIL::Util::Span<int const,18446744073709551615ul>::At(&v121, v30);
          v32 = v119;
          *(v119 + v30++) = *v31;
        }

        while (v30 < (v120 - v32) >> 2);
      }

      v33 = std::string::basic_string[abi:ne200100]<0>(&v113, "post_scale");
      v109 = MIL::Fp16::FromFloat(v33, 1.0);
      v34 = MIL::IROperation::TryGetParameterValue();
      if (v34)
      {
        if ((*(*v34 + 40))(v34))
        {
          v35 = MEMORY[0x259CA93C0]();
          if (v35)
          {
            v109 = *v35;
          }
        }
      }

      if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v113.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v113, "custom_pads");
      v36 = MIL::IROperation::TryGetParameterValue();
      if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v113.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v113, "include_pads");
      v37 = MIL::IROperation::TryGetParameterValue();
      if (v37 && (*(*v37 + 40))(v37) && (v38 = MEMORY[0x259CA93F0]()) != 0)
      {
        v106 = *v38;
      }

      else
      {
        v106 = 0;
      }

      if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v113.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v113, "pre_relu");
      v39 = MIL::IROperation::TryGetParameterValue();
      if (v39 && (*(*v39 + 40))(v39) && (v40 = MEMORY[0x259CA93F0]()) != 0)
      {
        v104 = *v40;
      }

      else
      {
        v104 = 0;
      }

      if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v113.__r_.__value_.__l.__data_);
      }

      v41 = (*(*v22 + 32))(v22);
      v42 = (*(*v41 + 88))(v41);
      OutputType = MIL::IROperation::GetOutputType(a1);
      v44 = MIL::IRValueType::AsTensorType(OutputType);
      v108 = (*(*v44 + 88))(v44);
      v45 = MIL::IROperation::GetOutputType(a1);
      v46 = MIL::IRValueType::AsTensorType(v45);
      v105 = (*(*v46 + 16))(v46);
      v47 = (*(*v22 + 32))(v22);
      ANEMachineIR::Utils::GetStaticTensorShape(&v117, v47, v48);
      v107 = a2;
      v49 = MIL::IROperation::GetOutputType(a1);
      v50 = MIL::IRValueType::AsTensorType(v49);
      ANEMachineIR::Utils::GetStaticTensorShape(v116, v50, v51);
      v52 = v42;
      if (!v36)
      {
        v62 = 0;
        v63 = 0;
        v64 = 0;
        v65 = 0;
        v59 = 0;
LABEL_70:
        v115[0] = v36;
        v115[1] = v59;
        v115[2] = v65;
        v115[3] = v64;
        v115[4] = v63;
        v115[5] = v62;
        if (v36 || v59 || v65 || v64 || v63 || v62)
        {
          *a3 = 3;
          std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Unimplemented pad: rdar://84906152");
          goto LABEL_133;
        }

        *&v113.__r_.__value_.__r.__words[1] = 0uLL;
        v114 = 0;
        MIL::ANEMachineIR::Interpreter::GetCpuNeActivationFunction(a1, &v113, &v136);
        if (LODWORD(v113.__r_.__value_.__l.__data_))
        {
          *a3 = v113.__r_.__value_.__l.__data_;
          *(a3 + 8) = *&v113.__r_.__value_.__r.__words[1];
          *(a3 + 24) = v114;
          *&v113.__r_.__value_.__r.__words[1] = 0uLL;
          v114 = 0;
          goto LABEL_131;
        }

        switch(v52)
        {
          case 14:
            switch(v108)
            {
              case 14:
                v96 = MIL::IRTensorValue::GetDataView<unsigned char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v131, &v136);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v131);
                (*(*a1 + 200))(&v110, a1);
                v97 = v110;
                if (v111 == v110)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v98 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v98);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v107, v97, &v126);
                v99 = v126;
                v126 = 0;
                if (v99)
                {
                  (*(*v99 + 1))(v99);
                }

                goto LABEL_129;
              case 9:
                v88 = MIL::IRTensorValue::GetDataView<unsigned char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v130, &v136);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v130);
                (*(*a1 + 200))(&v110, a1);
                v89 = v110;
                if (v111 == v110)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v90 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v90);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v107, v89, &v126);
                v91 = v126;
                v126 = 0;
                if (v91)
                {
                  (*(*v91 + 1))(v91);
                }

                goto LABEL_129;
              case 4:
                v75 = MIL::IRTensorValue::GetDataView<unsigned char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v132, &v136);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v132);
                (*(*a1 + 200))(&v110, a1);
                v76 = v110;
                if (v111 == v110)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v77 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v77);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v107, v76, &v126);
                v78 = v126;
                v126 = 0;
                if (v78)
                {
                  (*(*v78 + 1))(v78);
                }

                goto LABEL_129;
            }

            break;
          case 9:
            switch(v108)
            {
              case 14:
                v84 = MIL::IRTensorValue::GetDataView<signed char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v128, &v136);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v128);
                (*(*a1 + 200))(&v110, a1);
                v85 = v110;
                if (v111 == v110)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v86 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v86);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v107, v85, &v126);
                v87 = v126;
                v126 = 0;
                if (v87)
                {
                  (*(*v87 + 1))(v87);
                }

                goto LABEL_129;
              case 9:
                v80 = MIL::IRTensorValue::GetDataView<signed char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v127, &v136);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v127);
                (*(*a1 + 200))(&v110, a1);
                v81 = v110;
                if (v111 == v110)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v82 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v82);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v107, v81, &v126);
                v83 = v126;
                v126 = 0;
                if (v83)
                {
                  (*(*v83 + 1))(v83);
                }

                goto LABEL_129;
              case 4:
                v71 = MIL::IRTensorValue::GetDataView<signed char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v129, &v136);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v129);
                (*(*a1 + 200))(&v110, a1);
                v72 = v110;
                if (v111 == v110)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v73 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v73);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v107, v72, &v126);
                v74 = v126;
                v126 = 0;
                if (v74)
                {
                  (*(*v74 + 1))(v74);
                }

                goto LABEL_129;
            }

            break;
          case 4:
            switch(v108)
            {
              case 14:
                v100 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v134, &v136);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v134);
                (*(*a1 + 200))(&v110, a1);
                v101 = v110;
                if (v111 == v110)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v102 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v102);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v107, v101, &v126);
                v103 = v126;
                v126 = 0;
                if (v103)
                {
                  (*(*v103 + 1))(v103);
                }

                goto LABEL_129;
              case 9:
                v92 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v133, &v136);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v133);
                (*(*a1 + 200))(&v110, a1);
                v93 = v110;
                if (v111 == v110)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v94 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v94);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v107, v93, &v126);
                v95 = v126;
                v126 = 0;
                if (v95)
                {
                  (*(*v95 + 1))(v95);
                }

                goto LABEL_129;
              case 4:
                v67 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v135, &v136);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v135);
                (*(*a1 + 200))(&v110, a1);
                v68 = v110;
                if (v111 == v110)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v69 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v69);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v107, v68, &v126);
                v70 = v126;
                v126 = 0;
                if (v70)
                {
                  (*(*v70 + 1))(v70);
                }

LABEL_129:
                v126 = &v110;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v126);
                *a3 = 0;
                std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }

                goto LABEL_131;
            }

            break;
          default:
            v79 = "Unimplemented input dtype";
LABEL_105:
            *a3 = 3;
            std::string::basic_string[abi:ne200100]<0>((a3 + 8), v79);
LABEL_131:
            std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](&v136);
            if (SHIBYTE(v114) < 0)
            {
              operator delete(v113.__r_.__value_.__l.__size_);
            }

LABEL_133:
            if (v116[0])
            {
              v116[1] = v116[0];
              operator delete(v116[0]);
            }

            if (v117)
            {
              v118 = v117;
              operator delete(v117);
            }

            if (v119)
            {
              v120 = v119;
              operator delete(v119);
            }

            v20 = v125.__r_.__value_.__r.__words[0];
            if (v125.__r_.__value_.__r.__words[0])
            {
              v125.__r_.__value_.__l.__size_ = v125.__r_.__value_.__r.__words[0];
              goto LABEL_22;
            }

            return;
        }

        v79 = "Unimplemented output dtype";
        goto LABEL_105;
      }

      v54 = v117;
      v53 = v118;
      MIL::IRValue::AsTensor(v36);
      v55 = MIL::IRTensorValue::GetDataView<int>();
      v56 = (v53 - v54) >> 3;
      v57 = v56 - 2;
      v113.__r_.__value_.__r.__words[0] = v55;
      v113.__r_.__value_.__l.__size_ = v58;
      if (v56 == 5)
      {
        v36 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&v113, 0);
        v59 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&v113, 1uLL);
      }

      else
      {
        if (v57 <= 1)
        {
          v36 = 0;
          v59 = 0;
          v64 = 0;
          v65 = 0;
          v66 = 2 * v57;
          goto LABEL_69;
        }

        v36 = 0;
        v59 = 0;
      }

      v66 = 2 * v57;
      v65 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&v113, v66 - 4);
      v64 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&v113, v66 - 3);
LABEL_69:
      v63 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&v113, v66 - 2);
      v62 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&v113, v66 - 1);
      goto LABEL_70;
    }
  }

  else if (InterpretedTensorValue)
  {
    goto LABEL_26;
  }

  *a3 = 2;
  std::string::basic_string[abi:ne200100]<0>(&v113, "x");
  v60 = std::string::insert(&v113, 0, "No value for ");
  v61 = *&v60->__r_.__value_.__l.__data_;
  *(a3 + 24) = *(&v60->__r_.__value_.__l + 2);
  *(a3 + 8) = v61;
  v60->__r_.__value_.__l.__size_ = 0;
  v60->__r_.__value_.__r.__words[2] = 0;
  v60->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    v20 = v113.__r_.__value_.__r.__words[0];
    goto LABEL_22;
  }
}

void sub_2599D8F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v46 - 128);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a33)
  {
    operator delete(a33);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (a39)
  {
    operator delete(a39);
  }

  if (a46)
  {
    operator delete(a46);
  }

  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,MIL::Fp16>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int16 a8@<W7>, void *a9@<X8>, char a10, char a11, uint64_t a12)
{
  v124 = *MEMORY[0x277D85DE8];
  v118 = a8;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<MIL::Fp16>::resize(a9, a2);
  v17 = *a3;
  v18 = *(a3 + 8);
  v19 = v18 - *a3;
  if (v19 != *(a4 + 8) - *a4)
  {
    v87 = "x_rank == o_shape.size()";
    v88 = 64;
    goto LABEL_81;
  }

  v20 = v19 >> 3;
  v21 = (v19 >> 3) - 2;
  v22 = *a5;
  if (v21 != (*(a5 + 8) - *a5) >> 2)
  {
    v87 = "kernel_sizes.size() == num_spatial_dims";
    v88 = 65;
    goto LABEL_81;
  }

  v23 = *a6;
  if (v21 != (*(a6 + 8) - *a6) >> 2)
  {
    v87 = "strides.size() == num_spatial_dims";
    v88 = 66;
LABEL_81:
    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v88, v87);
  }

  if (v21 == 3)
  {
    if (*v22 == 1)
    {
      if (*v23 == 1)
      {
        v24 = 4 * v20 - 12;
        v25 = (v23 + v24);
        v93 = v23[v20 - 4];
        v26 = (v22 + v24);
        v27 = v22[v20 - 4];
        goto LABEL_11;
      }

      v89 = "sz == 1";
      v90 = 77;
    }

    else
    {
      v89 = "kd == 1";
      v90 = 76;
    }

    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v90, v89);
  }

  v28 = 4 * v20;
  if (v21 <= 1)
  {
    v30 = v28 - 12;
    v26 = (v22 + v30);
    v25 = (v23 + v30);
    v27 = 1;
    v93 = 1;
  }

  else
  {
    v27 = v22[v20 - 4];
    v29 = v28 - 12;
    v26 = (v22 + v29);
    v93 = v23[v20 - 4];
    v25 = (v23 + v29);
  }

LABEL_11:
  v95 = *v25;
  v31 = *v26;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v115, v17, v18, v20);
  __p = 0;
  v113 = 0;
  v114 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  if (v20 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v115, v115 + 8, __src.i8, v122, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v122, 2);
  }

  else if (v20 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v115, v115 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v32 = *__p;
  v33 = *(__p + 1);
  v94 = *(__p + 2);
  v96 = *(__p + 3);
  v99 = *(__p + 4);
  v101 = *(v115 + 2);
  v105 = *(v115 + 3);
  v120[0] = &unk_286AB2120;
  v120[3] = v120;
  if (a11)
  {
    __src.i64[0] = &unk_286AB21A0;
    p_src = &__src;
    std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::swap[abi:ne200100](&__src, v120);
    std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::~__value_func[abi:ne200100](&__src);
  }

  MIL::Fp16::GetFloat(&v118);
  LODWORD(v110) = v34;
  std::vector<float>::vector[abi:ne200100](__src.i64, v99, &v110);
  if (v32)
  {
    v107 = 0;
    v102 = v31;
    v103 = v27;
    v91 = v32;
    v92 = v33;
    do
    {
      if (!v33)
      {
        goto LABEL_70;
      }

      v35 = 0;
      do
      {
        if (!v94)
        {
          goto LABEL_69;
        }

        for (i = 0; i != v94; ++i)
        {
          if (!v96)
          {
            continue;
          }

          v100 = 0;
          v36 = i * v93;
          v104 = 0;
          do
          {
            if (!v99)
            {
              goto LABEL_67;
            }

            for (j = 0; j != v99; ++j)
            {
              v111 = 0.0;
              v110 = xmmword_259A4D02C;
              if (!v27)
              {
                v39 = 0;
                v65 = 5.0;
                goto LABEL_57;
              }

              v38 = 0;
              v39 = 0;
              do
              {
                v40 = v38 + v36;
                if ((a10 & 1) == 0 && (v40 < *(a7 + 8) || v40 >= v101 - *(a7 + 12)))
                {
                  goto LABEL_53;
                }

                v109 = 0.0;
                *v108 = xmmword_259A4D02C;
                if (v31)
                {
                  v41 = v31;
                  v42 = a7;
                  v43 = v108;
                  v44 = v104;
                  v45 = v41;
                  do
                  {
                    if ((a10 & 1) != 0 || v44 >= *(v42 + 16) && v44 < v105 - *(v42 + 20))
                    {
                      LOWORD(__e) = std::function<MIL::Fp16 ()(MIL::Fp16)>::operator()(v120, *(a1 + 2 * Index));
                      MIL::Fp16::GetFloat(&__e);
                      v48 = v47 * *(__src.i64[0] + 4 * j);
                      v49 = 0.0;
                      if (v48 != 0.0)
                      {
                        __e = 0;
                        v50 = frexp(v48, &__e);
                        v51 = ldexp(v50, 11);
                        v49 = ldexp(round(v51), __e - 11);
                      }

                      *v43 = v49;
                      ++v39;
                    }

                    ++v44;
                    ++v43;
                    --v45;
                  }

                  while (v45);
                  v52 = *v108 + *&v108[1];
                  v53 = 0.0;
                  a7 = v42;
                  v31 = v102;
                  v27 = v103;
                  v36 = i * v93;
                  if ((*v108 + *&v108[1]) == 0.0)
                  {
                    goto LABEL_46;
                  }
                }

                else
                {
                  v52 = 5.0;
                }

                __e = 0;
                v54 = frexp(v52, &__e);
                v55 = ldexp(v54, 11);
                v53 = ldexp(round(v55), __e - 11);
LABEL_46:
                v56 = 0.0;
                v57 = 0.0;
                if ((v53 + *&v108[2]) != 0.0)
                {
                  __e = 0;
                  v58 = frexp((v53 + *&v108[2]), &__e);
                  v59 = ldexp(v58, 11);
                  v57 = ldexp(round(v59), __e - 11);
                }

                if ((*&v108[3] + v109) != 0.0)
                {
                  __e = 0;
                  v60 = frexp((*&v108[3] + v109), &__e);
                  v61 = ldexp(v60, 11);
                  v56 = ldexp(round(v61), __e - 11);
                }

                v62 = 0.0;
                if ((v57 + v56) != 0.0)
                {
                  __e = 0;
                  v63 = frexp((v57 + v56), &__e);
                  v64 = ldexp(v63, 11);
                  v62 = ldexp(round(v64), __e - 11);
                }

                *(&v110 + v38) = v62;
LABEL_53:
                ++v38;
              }

              while (v38 != v27);
              v65 = *&v110 + *(&v110 + 1);
              v66 = 0.0;
              if ((*&v110 + *(&v110 + 1)) != 0.0)
              {
LABEL_57:
                v108[0] = 0;
                v67 = frexp(v65, v108);
                v68 = ldexp(v67, 11);
                v66 = ldexp(round(v68), v108[0] - 11);
              }

              v69 = 0.0;
              v70 = 0.0;
              if ((v66 + *(&v110 + 2)) != 0.0)
              {
                v108[0] = 0;
                v71 = frexp((v66 + *(&v110 + 2)), v108);
                v72 = ldexp(v71, 11);
                v70 = ldexp(round(v72), v108[0] - 11);
              }

              if ((*(&v110 + 3) + v111) != 0.0)
              {
                v108[0] = 0;
                v73 = frexp((*(&v110 + 3) + v111), v108);
                v74 = ldexp(v73, 11);
                v69 = ldexp(round(v74), v108[0] - 11);
              }

              v75 = v70 + v69;
              v76 = 0.0;
              if (v75 != 0.0)
              {
                v108[0] = 0;
                v77 = frexp(v75, v108);
                v78 = ldexp(v77, 11);
                v76 = ldexp(round(v78), v108[0] - 11);
              }

              LOWORD(v108[0]) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v39];
              MIL::Fp16::GetFloat(v108);
              v80 = v76 * v79;
              v81 = 0.0;
              if (v80 != 0.0)
              {
                v108[0] = 0;
                v82 = frexp(v80, v108);
                v83 = ldexp(v82, 11);
                v81 = ldexp(round(v83), v108[0] - 11);
              }

              v84 = std::function<float ()(float)>::operator()(a12, v81);
              v86 = MIL::Fp16::FromFloat(v84, v85);
            }

LABEL_67:
            v104 += v95;
            ++v100;
          }

          while (v100 != v96);
        }

LABEL_69:
        ++v35;
        v33 = v92;
      }

      while (v35 != v92);
LABEL_70:
      ++v107;
    }

    while (v107 != v91);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::~__value_func[abi:ne200100](v120);
  if (__p)
  {
    v113 = __p;
    operator delete(__p);
  }

  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }
}

void sub_2599D9B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  v41 = *(v39 - 208);
  if (v41)
  {
    *(v39 - 200) = v41;
    operator delete(v41);
  }

  v42 = *a16;
  if (*a16)
  {
    *(a16 + 8) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,MIL::Fp16>(char **__return_ptr a1@<X8>, uint64_t a2@<X0>, size_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, __int16 a9@<W7>, char a10, char a11, uint64_t a12)
{
  v123 = *MEMORY[0x277D85DE8];
  v117 = a9;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (a3)
  {
    std::vector<unsigned char>::__append(a1, a3);
  }

  v17 = *a4;
  v18 = *(a4 + 8);
  v19 = v18 - *a4;
  if (v19 != *(a5 + 8) - *a5)
  {
    v86 = "x_rank == o_shape.size()";
    v87 = 64;
    goto LABEL_90;
  }

  v20 = v19 >> 3;
  v21 = (v19 >> 3) - 2;
  v22 = *a6;
  if (v21 != (*(a6 + 8) - *a6) >> 2)
  {
    v86 = "kernel_sizes.size() == num_spatial_dims";
    v87 = 65;
    goto LABEL_90;
  }

  v23 = *a7;
  if (v21 != (*(a7 + 8) - *a7) >> 2)
  {
    v86 = "strides.size() == num_spatial_dims";
    v87 = 66;
LABEL_90:
    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v87, v86);
  }

  if (v21 == 3)
  {
    if (*v22 == 1)
    {
      if (*v23 == 1)
      {
        v24 = 4 * v20 - 12;
        v25 = (v23 + v24);
        v92 = v23[v20 - 4];
        v26 = (v22 + v24);
        v27 = v22[v20 - 4];
        goto LABEL_13;
      }

      v88 = "sz == 1";
      v89 = 77;
    }

    else
    {
      v88 = "kd == 1";
      v89 = 76;
    }

    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v89, v88);
  }

  v28 = 4 * v20;
  if (v21 <= 1)
  {
    v30 = v28 - 12;
    v26 = (v22 + v30);
    v25 = (v23 + v30);
    v27 = 1;
    v92 = 1;
  }

  else
  {
    v27 = v22[v20 - 4];
    v29 = v28 - 12;
    v26 = (v22 + v29);
    v92 = v23[v20 - 4];
    v25 = (v23 + v29);
  }

LABEL_13:
  v94 = *v25;
  v31 = *v26;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v114, v17, v18, v20);
  __p = 0;
  v112 = 0;
  v113 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  if (v20 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v114, v114 + 8, __src.i8, v121, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v121, 2);
  }

  else if (v20 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v114, v114 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v32 = *__p;
  v33 = *(__p + 1);
  v93 = *(__p + 2);
  v95 = *(__p + 3);
  v98 = *(__p + 4);
  v100 = *(v114 + 2);
  v104 = *(v114 + 3);
  v119[0] = &unk_286AB2220;
  v119[3] = v119;
  if (a11)
  {
    __src.i64[0] = &unk_286AB22A0;
    p_src = &__src;
    std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::swap[abi:ne200100](&__src, v119);
    std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::~__value_func[abi:ne200100](&__src);
  }

  MIL::Fp16::GetFloat(&v117);
  LODWORD(v109) = v34;
  std::vector<float>::vector[abi:ne200100](__src.i64, v98, &v109);
  if (v32)
  {
    v106 = 0;
    v101 = v31;
    v102 = v27;
    v90 = v32;
    v91 = v33;
    do
    {
      if (!v33)
      {
        goto LABEL_79;
      }

      v35 = 0;
      do
      {
        if (!v93)
        {
          goto LABEL_78;
        }

        for (i = 0; i != v93; ++i)
        {
          if (!v95)
          {
            continue;
          }

          v99 = 0;
          v36 = i * v92;
          v103 = 0;
          do
          {
            if (!v98)
            {
              goto LABEL_76;
            }

            for (j = 0; j != v98; ++j)
            {
              v110 = 0.0;
              v109 = xmmword_259A4D02C;
              if (!v27)
              {
                v39 = 0;
                v64 = 5.0;
                goto LABEL_59;
              }

              v38 = 0;
              v39 = 0;
              do
              {
                v40 = v38 + v36;
                if ((a10 & 1) == 0 && (v40 < *(a8 + 8) || v40 >= v100 - *(a8 + 12)))
                {
                  goto LABEL_55;
                }

                v108 = 0.0;
                *v107 = xmmword_259A4D02C;
                if (v31)
                {
                  v41 = v31;
                  v42 = a8;
                  v43 = v107;
                  v44 = v103;
                  do
                  {
                    if ((a10 & 1) != 0 || v44 >= *(v42 + 16) && v44 < v104 - *(v42 + 20))
                    {
                      LOWORD(__e) = std::function<MIL::Fp16 ()(MIL::Fp16)>::operator()(v119, *(a2 + 2 * Index));
                      MIL::Fp16::GetFloat(&__e);
                      v47 = v46 * *(__src.i64[0] + 4 * j);
                      v48 = 0.0;
                      if (v47 != 0.0)
                      {
                        __e = 0;
                        v49 = frexp(v47, &__e);
                        v50 = ldexp(v49, 11);
                        v48 = ldexp(round(v50), __e - 11);
                      }

                      *v43 = v48;
                      ++v39;
                    }

                    ++v44;
                    ++v43;
                    --v41;
                  }

                  while (v41);
                  v51 = *v107 + *&v107[1];
                  v52 = 0.0;
                  a8 = v42;
                  v31 = v101;
                  v27 = v102;
                  v36 = i * v92;
                  if ((*v107 + *&v107[1]) == 0.0)
                  {
                    goto LABEL_48;
                  }
                }

                else
                {
                  v51 = 5.0;
                }

                __e = 0;
                v53 = frexp(v51, &__e);
                v54 = ldexp(v53, 11);
                v52 = ldexp(round(v54), __e - 11);
LABEL_48:
                v55 = 0.0;
                v56 = 0.0;
                if ((v52 + *&v107[2]) != 0.0)
                {
                  __e = 0;
                  v57 = frexp((v52 + *&v107[2]), &__e);
                  v58 = ldexp(v57, 11);
                  v56 = ldexp(round(v58), __e - 11);
                }

                if ((*&v107[3] + v108) != 0.0)
                {
                  __e = 0;
                  v59 = frexp((*&v107[3] + v108), &__e);
                  v60 = ldexp(v59, 11);
                  v55 = ldexp(round(v60), __e - 11);
                }

                v61 = 0.0;
                if ((v56 + v55) != 0.0)
                {
                  __e = 0;
                  v62 = frexp((v56 + v55), &__e);
                  v63 = ldexp(v62, 11);
                  v61 = ldexp(round(v63), __e - 11);
                }

                *(&v109 + v38) = v61;
LABEL_55:
                ++v38;
              }

              while (v38 != v27);
              v64 = *&v109 + *(&v109 + 1);
              v65 = 0.0;
              if ((*&v109 + *(&v109 + 1)) != 0.0)
              {
LABEL_59:
                v107[0] = 0;
                v66 = frexp(v64, v107);
                v67 = ldexp(v66, 11);
                v65 = ldexp(round(v67), v107[0] - 11);
              }

              v68 = 0.0;
              v69 = 0.0;
              if ((v65 + *(&v109 + 2)) != 0.0)
              {
                v107[0] = 0;
                v70 = frexp((v65 + *(&v109 + 2)), v107);
                v71 = ldexp(v70, 11);
                v69 = ldexp(round(v71), v107[0] - 11);
              }

              if ((*(&v109 + 3) + v110) != 0.0)
              {
                v107[0] = 0;
                v72 = frexp((*(&v109 + 3) + v110), v107);
                v73 = ldexp(v72, 11);
                v68 = ldexp(round(v73), v107[0] - 11);
              }

              v74 = v69 + v68;
              v75 = 0.0;
              if (v74 != 0.0)
              {
                v107[0] = 0;
                v76 = frexp(v74, v107);
                v77 = ldexp(v76, 11);
                v75 = ldexp(round(v77), v107[0] - 11);
              }

              LOWORD(v107[0]) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v39];
              MIL::Fp16::GetFloat(v107);
              v79 = v75 * v78;
              v80 = 0.0;
              if (v79 != 0.0)
              {
                v107[0] = 0;
                v81 = frexp(v79, v107);
                v82 = ldexp(v81, 11);
                v80 = ldexp(round(v82), v107[0] - 11);
              }

              std::function<float ()(float)>::operator()(a12, v80);
              if (v83 == INFINITY)
              {
                LOBYTE(v84) = -1;
              }

              else if (v83 == -INFINITY)
              {
                LOBYTE(v84) = 0;
              }

              else
              {
                v85 = llroundf(v83);
                if (v85 >= 255)
                {
                  v85 = 255;
                }

                v84 = v85 & ~(v85 >> 31);
              }
            }

LABEL_76:
            v103 += v94;
            ++v99;
          }

          while (v99 != v95);
        }

LABEL_78:
        ++v35;
        v33 = v91;
      }

      while (v35 != v91);
LABEL_79:
      ++v106;
    }

    while (v106 != v90);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::~__value_func[abi:ne200100](v119);
  if (__p)
  {
    v112 = __p;
    operator delete(__p);
  }

  if (v114)
  {
    v115 = v114;
    operator delete(v114);
  }
}

void sub_2599DA480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  v41 = *(v39 - 208);
  if (v41)
  {
    *(v39 - 200) = v41;
    operator delete(v41);
  }

  v42 = *a16;
  if (*a16)
  {
    *(a16 + 8) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,MIL::Fp16>(char **__return_ptr a1@<X8>, uint64_t a2@<X0>, size_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, __int16 a9@<W7>, char a10, char a11, uint64_t a12)
{
  v123 = *MEMORY[0x277D85DE8];
  v117 = a9;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (a3)
  {
    std::vector<unsigned char>::__append(a1, a3);
  }

  v17 = *a4;
  v18 = *(a4 + 8);
  v19 = v18 - *a4;
  if (v19 != *(a5 + 8) - *a5)
  {
    v86 = "x_rank == o_shape.size()";
    v87 = 64;
    goto LABEL_92;
  }

  v20 = v19 >> 3;
  v21 = (v19 >> 3) - 2;
  v22 = *a6;
  if (v21 != (*(a6 + 8) - *a6) >> 2)
  {
    v86 = "kernel_sizes.size() == num_spatial_dims";
    v87 = 65;
    goto LABEL_92;
  }

  v23 = *a7;
  if (v21 != (*(a7 + 8) - *a7) >> 2)
  {
    v86 = "strides.size() == num_spatial_dims";
    v87 = 66;
LABEL_92:
    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v87, v86);
  }

  if (v21 == 3)
  {
    if (*v22 == 1)
    {
      if (*v23 == 1)
      {
        v24 = 4 * v20 - 12;
        v25 = (v23 + v24);
        v92 = v23[v20 - 4];
        v26 = (v22 + v24);
        v27 = v22[v20 - 4];
        goto LABEL_13;
      }

      v88 = "sz == 1";
      v89 = 77;
    }

    else
    {
      v88 = "kd == 1";
      v89 = 76;
    }

    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v89, v88);
  }

  v28 = 4 * v20;
  if (v21 <= 1)
  {
    v30 = v28 - 12;
    v26 = (v22 + v30);
    v25 = (v23 + v30);
    v27 = 1;
    v92 = 1;
  }

  else
  {
    v27 = v22[v20 - 4];
    v29 = v28 - 12;
    v26 = (v22 + v29);
    v92 = v23[v20 - 4];
    v25 = (v23 + v29);
  }

LABEL_13:
  v94 = *v25;
  v31 = *v26;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v114, v17, v18, v20);
  __p = 0;
  v112 = 0;
  v113 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  if (v20 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v114, v114 + 8, __src.i8, v121, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v121, 2);
  }

  else if (v20 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v114, v114 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v32 = *__p;
  v33 = *(__p + 1);
  v93 = *(__p + 2);
  v95 = *(__p + 3);
  v98 = *(__p + 4);
  v100 = *(v114 + 2);
  v104 = *(v114 + 3);
  v119[0] = &unk_286AB2320;
  v119[3] = v119;
  if (a11)
  {
    __src.i64[0] = &unk_286AB23A0;
    p_src = &__src;
    std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::swap[abi:ne200100](&__src, v119);
    std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::~__value_func[abi:ne200100](&__src);
  }

  MIL::Fp16::GetFloat(&v117);
  LODWORD(v109) = v34;
  std::vector<float>::vector[abi:ne200100](__src.i64, v98, &v109);
  if (v32)
  {
    v106 = 0;
    v101 = v31;
    v102 = v27;
    v90 = v32;
    v91 = v33;
    do
    {
      if (!v33)
      {
        goto LABEL_81;
      }

      v35 = 0;
      do
      {
        if (!v93)
        {
          goto LABEL_80;
        }

        for (i = 0; i != v93; ++i)
        {
          if (!v95)
          {
            continue;
          }

          v99 = 0;
          v36 = i * v92;
          v103 = 0;
          do
          {
            if (!v98)
            {
              goto LABEL_78;
            }

            for (j = 0; j != v98; ++j)
            {
              v110 = 0.0;
              v109 = xmmword_259A4D02C;
              if (!v27)
              {
                v39 = 0;
                v64 = 5.0;
                goto LABEL_59;
              }

              v38 = 0;
              v39 = 0;
              do
              {
                v40 = v38 + v36;
                if ((a10 & 1) == 0 && (v40 < *(a8 + 8) || v40 >= v100 - *(a8 + 12)))
                {
                  goto LABEL_55;
                }

                v108 = 0.0;
                *v107 = xmmword_259A4D02C;
                if (v31)
                {
                  v41 = v31;
                  v42 = a8;
                  v43 = v107;
                  v44 = v103;
                  do
                  {
                    if ((a10 & 1) != 0 || v44 >= *(v42 + 16) && v44 < v104 - *(v42 + 20))
                    {
                      LOWORD(__e) = std::function<MIL::Fp16 ()(MIL::Fp16)>::operator()(v119, *(a2 + 2 * Index));
                      MIL::Fp16::GetFloat(&__e);
                      v47 = v46 * *(__src.i64[0] + 4 * j);
                      v48 = 0.0;
                      if (v47 != 0.0)
                      {
                        __e = 0;
                        v49 = frexp(v47, &__e);
                        v50 = ldexp(v49, 11);
                        v48 = ldexp(round(v50), __e - 11);
                      }

                      *v43 = v48;
                      ++v39;
                    }

                    ++v44;
                    ++v43;
                    --v41;
                  }

                  while (v41);
                  v51 = *v107 + *&v107[1];
                  v52 = 0.0;
                  a8 = v42;
                  v31 = v101;
                  v27 = v102;
                  v36 = i * v92;
                  if ((*v107 + *&v107[1]) == 0.0)
                  {
                    goto LABEL_48;
                  }
                }

                else
                {
                  v51 = 5.0;
                }

                __e = 0;
                v53 = frexp(v51, &__e);
                v54 = ldexp(v53, 11);
                v52 = ldexp(round(v54), __e - 11);
LABEL_48:
                v55 = 0.0;
                v56 = 0.0;
                if ((v52 + *&v107[2]) != 0.0)
                {
                  __e = 0;
                  v57 = frexp((v52 + *&v107[2]), &__e);
                  v58 = ldexp(v57, 11);
                  v56 = ldexp(round(v58), __e - 11);
                }

                if ((*&v107[3] + v108) != 0.0)
                {
                  __e = 0;
                  v59 = frexp((*&v107[3] + v108), &__e);
                  v60 = ldexp(v59, 11);
                  v55 = ldexp(round(v60), __e - 11);
                }

                v61 = 0.0;
                if ((v56 + v55) != 0.0)
                {
                  __e = 0;
                  v62 = frexp((v56 + v55), &__e);
                  v63 = ldexp(v62, 11);
                  v61 = ldexp(round(v63), __e - 11);
                }

                *(&v109 + v38) = v61;
LABEL_55:
                ++v38;
              }

              while (v38 != v27);
              v64 = *&v109 + *(&v109 + 1);
              v65 = 0.0;
              if ((*&v109 + *(&v109 + 1)) != 0.0)
              {
LABEL_59:
                v107[0] = 0;
                v66 = frexp(v64, v107);
                v67 = ldexp(v66, 11);
                v65 = ldexp(round(v67), v107[0] - 11);
              }

              v68 = 0.0;
              v69 = 0.0;
              if ((v65 + *(&v109 + 2)) != 0.0)
              {
                v107[0] = 0;
                v70 = frexp((v65 + *(&v109 + 2)), v107);
                v71 = ldexp(v70, 11);
                v69 = ldexp(round(v71), v107[0] - 11);
              }

              if ((*(&v109 + 3) + v110) != 0.0)
              {
                v107[0] = 0;
                v72 = frexp((*(&v109 + 3) + v110), v107);
                v73 = ldexp(v72, 11);
                v68 = ldexp(round(v73), v107[0] - 11);
              }

              v74 = v69 + v68;
              v75 = 0.0;
              if (v74 != 0.0)
              {
                v107[0] = 0;
                v76 = frexp(v74, v107);
                v77 = ldexp(v76, 11);
                v75 = ldexp(round(v77), v107[0] - 11);
              }

              LOWORD(v107[0]) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v39];
              MIL::Fp16::GetFloat(v107);
              v79 = v75 * v78;
              v80 = 0.0;
              if (v79 != 0.0)
              {
                v107[0] = 0;
                v81 = frexp(v79, v107);
                v82 = ldexp(v81, 11);
                v80 = ldexp(round(v82), v107[0] - 11);
              }

              std::function<float ()(float)>::operator()(a12, v80);
              if (v83 == INFINITY)
              {
                v84 = 127;
              }

              else if (v83 == -INFINITY)
              {
                v84 = 0x80;
              }

              else
              {
                v85 = llroundf(v83);
                if (v85 >= 127)
                {
                  v85 = 127;
                }

                if (v85 <= -128)
                {
                  v84 = 0x80;
                }

                else
                {
                  v84 = v85;
                }
              }
            }

LABEL_78:
            v103 += v94;
            ++v99;
          }

          while (v99 != v95);
        }

LABEL_80:
        ++v35;
        v33 = v91;
      }

      while (v35 != v91);
LABEL_81:
      ++v106;
    }

    while (v106 != v90);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::~__value_func[abi:ne200100](v119);
  if (__p)
  {
    v112 = __p;
    operator delete(__p);
  }

  if (v114)
  {
    v115 = v114;
    operator delete(v114);
  }
}

void sub_2599DADC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  v41 = *(v39 - 208);
  if (v41)
  {
    *(v39 - 200) = v41;
    operator delete(v41);
  }

  v42 = *a16;
  if (*a16)
  {
    *(a16 + 8) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,unsigned char>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int16 a8@<W7>, void *a9@<X8>, char a10, uint64_t a11)
{
  v123 = *MEMORY[0x277D85DE8];
  v118 = a8;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<MIL::Fp16>::resize(a9, a2);
  v16 = *a3;
  v17 = *(a3 + 8);
  v18 = v17 - *a3;
  if (v18 != *(a4 + 8) - *a4)
  {
    v86 = "x_rank == o_shape.size()";
    v87 = 64;
    goto LABEL_79;
  }

  v19 = v18 >> 3;
  v20 = (v18 >> 3) - 2;
  v21 = *a5;
  if (v20 != (*(a5 + 8) - *a5) >> 2)
  {
    v86 = "kernel_sizes.size() == num_spatial_dims";
    v87 = 65;
    goto LABEL_79;
  }

  v22 = *a6;
  if (v20 != (*(a6 + 8) - *a6) >> 2)
  {
    v86 = "strides.size() == num_spatial_dims";
    v87 = 66;
LABEL_79:
    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v87, v86);
  }

  if (v20 == 3)
  {
    if (*v21 == 1)
    {
      if (*v22 == 1)
      {
        v23 = 4 * v19 - 12;
        v24 = (v22 + v23);
        v92 = v22[v19 - 4];
        v25 = (v21 + v23);
        v26 = v21[v19 - 4];
        goto LABEL_11;
      }

      v88 = "sz == 1";
      v89 = 77;
    }

    else
    {
      v88 = "kd == 1";
      v89 = 76;
    }

    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v89, v88);
  }

  if (v20 <= 1)
  {
    v28 = 4 * v19 - 12;
    v25 = (v21 + v28);
    v24 = (v22 + v28);
    v26 = 1;
    v92 = 1;
  }

  else
  {
    v26 = v21[v19 - 4];
    v27 = 4 * v19 - 12;
    v25 = (v21 + v27);
    v92 = v22[v19 - 4];
    v24 = (v22 + v27);
  }

LABEL_11:
  v94 = *v24;
  v29 = *v25;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v115, v16, v17, v19);
  v112 = 0;
  v113 = 0;
  v114 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v112, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  if (v19 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v115, v115 + 8, __src.i8, v121, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v112, v112 + 8, __src.i8, v121, 2);
  }

  else if (v19 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v115, v115 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v112, v112 + 8, &__src);
  }

  v30 = *v112;
  v31 = *(v112 + 1);
  v93 = *(v112 + 2);
  v95 = *(v112 + 3);
  v32 = *(v112 + 4);
  v100 = *(v115 + 2);
  v104 = *(v115 + 3);
  __src.i64[0] = &unk_286AB2420;
  p_src = &__src;
  MIL::Fp16::GetFloat(&v118);
  LODWORD(v109) = v33;
  std::vector<float>::vector[abi:ne200100](v111, v32, &v109);
  if (v30)
  {
    v106 = 0;
    v101 = v29;
    v102 = v26;
    v90 = v30;
    v91 = v31;
    v96 = v32;
    do
    {
      if (!v31)
      {
        goto LABEL_68;
      }

      v34 = 0;
      do
      {
        if (!v93)
        {
          goto LABEL_67;
        }

        for (i = 0; i != v93; ++i)
        {
          if (!v95)
          {
            continue;
          }

          v99 = 0;
          v35 = i * v92;
          v103 = 0;
          do
          {
            if (!v32)
            {
              goto LABEL_65;
            }

            for (j = 0; j != v32; ++j)
            {
              v110 = 0.0;
              v109 = xmmword_259A4D02C;
              if (!v26)
              {
                v38 = 0;
                v64 = 5.0;
                goto LABEL_55;
              }

              v37 = 0;
              v38 = 0;
              do
              {
                v39 = v37 + v35;
                if ((a10 & 1) == 0 && (v39 < *(a7 + 8) || v39 >= v100 - *(a7 + 12)))
                {
                  goto LABEL_51;
                }

                v108 = 0.0;
                *v107 = xmmword_259A4D02C;
                if (v29)
                {
                  v40 = v29;
                  v41 = a7;
                  v42 = v107;
                  v43 = v103;
                  v44 = v40;
                  do
                  {
                    if ((a10 & 1) != 0 || v43 >= *(v41 + 16) && v43 < v104 - *(v41 + 20))
                    {
                      v46 = std::function<unsigned char ()(unsigned char)>::operator()(&__src, *(a1 + Index));
                      v47 = *(v111[0] + j) * v46;
                      v48 = 0.0;
                      if (v47 != 0.0)
                      {
                        __e = 0;
                        v49 = frexp(v47, &__e);
                        v50 = ldexp(v49, 11);
                        v48 = ldexp(round(v50), __e - 11);
                      }

                      *v42 = v48;
                      ++v38;
                    }

                    ++v43;
                    ++v42;
                    --v44;
                  }

                  while (v44);
                  v51 = *v107 + *&v107[1];
                  v52 = 0.0;
                  a7 = v41;
                  v29 = v101;
                  v26 = v102;
                  v35 = i * v92;
                  if ((*v107 + *&v107[1]) == 0.0)
                  {
                    goto LABEL_44;
                  }
                }

                else
                {
                  v51 = 5.0;
                }

                __e = 0;
                v53 = frexp(v51, &__e);
                v54 = ldexp(v53, 11);
                v52 = ldexp(round(v54), __e - 11);
LABEL_44:
                v55 = 0.0;
                v56 = 0.0;
                if ((v52 + *&v107[2]) != 0.0)
                {
                  __e = 0;
                  v57 = frexp((v52 + *&v107[2]), &__e);
                  v58 = ldexp(v57, 11);
                  v56 = ldexp(round(v58), __e - 11);
                }

                if ((*&v107[3] + v108) != 0.0)
                {
                  __e = 0;
                  v59 = frexp((*&v107[3] + v108), &__e);
                  v60 = ldexp(v59, 11);
                  v55 = ldexp(round(v60), __e - 11);
                }

                v61 = 0.0;
                if ((v56 + v55) != 0.0)
                {
                  __e = 0;
                  v62 = frexp((v56 + v55), &__e);
                  v63 = ldexp(v62, 11);
                  v61 = ldexp(round(v63), __e - 11);
                }

                *(&v109 + v37) = v61;
LABEL_51:
                ++v37;
              }

              while (v37 != v26);
              v64 = *&v109 + *(&v109 + 1);
              v65 = 0.0;
              v32 = v96;
              if ((*&v109 + *(&v109 + 1)) != 0.0)
              {
LABEL_55:
                v107[0] = 0;
                v66 = frexp(v64, v107);
                v67 = ldexp(v66, 11);
                v65 = ldexp(round(v67), v107[0] - 11);
              }

              v68 = 0.0;
              v69 = 0.0;
              if ((v65 + *(&v109 + 2)) != 0.0)
              {
                v107[0] = 0;
                v70 = frexp((v65 + *(&v109 + 2)), v107);
                v71 = ldexp(v70, 11);
                v69 = ldexp(round(v71), v107[0] - 11);
              }

              if ((*(&v109 + 3) + v110) != 0.0)
              {
                v107[0] = 0;
                v72 = frexp((*(&v109 + 3) + v110), v107);
                v73 = ldexp(v72, 11);
                v68 = ldexp(round(v73), v107[0] - 11);
              }

              v74 = v69 + v68;
              v75 = 0.0;
              if (v74 != 0.0)
              {
                v107[0] = 0;
                v76 = frexp(v74, v107);
                v77 = ldexp(v76, 11);
                v75 = ldexp(round(v77), v107[0] - 11);
              }

              LOWORD(v107[0]) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v38];
              MIL::Fp16::GetFloat(v107);
              v79 = v75 * v78;
              v80 = 0.0;
              if (v79 != 0.0)
              {
                v107[0] = 0;
                v81 = frexp(v79, v107);
                v82 = ldexp(v81, 11);
                v80 = ldexp(round(v82), v107[0] - 11);
              }

              v83 = std::function<float ()(float)>::operator()(a11, v80);
              v85 = MIL::Fp16::FromFloat(v83, v84);
            }

LABEL_65:
            v103 += v94;
            ++v99;
          }

          while (v99 != v95);
        }

LABEL_67:
        ++v34;
        v31 = v91;
      }

      while (v34 != v91);
LABEL_68:
      ++v106;
    }

    while (v106 != v90);
  }

  if (v111[0])
  {
    v111[1] = v111[0];
    operator delete(v111[0]);
  }

  std::__function::__value_func<unsigned char ()(unsigned char)>::~__value_func[abi:ne200100](&__src);
  if (v112)
  {
    v113 = v112;
    operator delete(v112);
  }

  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }
}

void sub_2599DB674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *(v17 - 200);
  if (v19)
  {
    *(v17 - 192) = v19;
    operator delete(v19);
  }

  v20 = *(v17 - 176);
  if (v20)
  {
    *(v17 - 168) = v20;
    operator delete(v20);
  }

  v21 = *a17;
  if (*a17)
  {
    *(a17 + 8) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,unsigned char>(char **__return_ptr a1@<X8>, uint64_t a2@<X0>, size_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, __int16 a9@<W7>, char a10, uint64_t a11)
{
  v123 = *MEMORY[0x277D85DE8];
  v118 = a9;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (a3)
  {
    std::vector<unsigned char>::__append(a1, a3);
  }

  v16 = *a4;
  v17 = *(a4 + 8);
  v18 = v17 - *a4;
  if (v18 != *(a5 + 8) - *a5)
  {
    v86 = "x_rank == o_shape.size()";
    v87 = 64;
    goto LABEL_88;
  }

  v19 = v18 >> 3;
  v20 = (v18 >> 3) - 2;
  v21 = *a6;
  if (v20 != (*(a6 + 8) - *a6) >> 2)
  {
    v86 = "kernel_sizes.size() == num_spatial_dims";
    v87 = 65;
    goto LABEL_88;
  }

  v22 = *a7;
  if (v20 != (*(a7 + 8) - *a7) >> 2)
  {
    v86 = "strides.size() == num_spatial_dims";
    v87 = 66;
LABEL_88:
    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v87, v86);
  }

  if (v20 == 3)
  {
    if (*v21 == 1)
    {
      if (*v22 == 1)
      {
        v23 = 4 * v19 - 12;
        v24 = (v22 + v23);
        v92 = v22[v19 - 4];
        v25 = (v21 + v23);
        v26 = v21[v19 - 4];
        goto LABEL_13;
      }

      v88 = "sz == 1";
      v89 = 77;
    }

    else
    {
      v88 = "kd == 1";
      v89 = 76;
    }

    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v89, v88);
  }

  v27 = 4 * v19;
  if (v20 <= 1)
  {
    v29 = v27 - 12;
    v25 = (v21 + v29);
    v24 = (v22 + v29);
    v26 = 1;
    v92 = 1;
  }

  else
  {
    v26 = v21[v19 - 4];
    v28 = v27 - 12;
    v25 = (v21 + v28);
    v92 = v22[v19 - 4];
    v24 = (v22 + v28);
  }

LABEL_13:
  v94 = *v24;
  v30 = *v25;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v115, v16, v17, v19);
  v112 = 0;
  v113 = 0;
  v114 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v112, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  if (v19 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v115, v115 + 8, __src.i8, v121, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v112, v112 + 8, __src.i8, v121, 2);
  }

  else if (v19 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v115, v115 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v112, v112 + 8, &__src);
  }

  v31 = *v112;
  v32 = *(v112 + 1);
  v93 = *(v112 + 2);
  v95 = *(v112 + 3);
  v33 = *(v112 + 4);
  v100 = *(v115 + 2);
  v104 = *(v115 + 3);
  __src.i64[0] = &unk_286AB24A0;
  p_src = &__src;
  MIL::Fp16::GetFloat(&v118);
  LODWORD(v109) = v34;
  std::vector<float>::vector[abi:ne200100](v111, v33, &v109);
  if (v31)
  {
    v106 = 0;
    v101 = v30;
    v102 = v26;
    v90 = v31;
    v91 = v32;
    v96 = v33;
    do
    {
      if (!v32)
      {
        goto LABEL_77;
      }

      v35 = 0;
      do
      {
        if (!v93)
        {
          goto LABEL_76;
        }

        for (i = 0; i != v93; ++i)
        {
          if (!v95)
          {
            continue;
          }

          v99 = 0;
          v36 = i * v92;
          v103 = 0;
          do
          {
            if (!v33)
            {
              goto LABEL_74;
            }

            for (j = 0; j != v33; ++j)
            {
              v110 = 0.0;
              v109 = xmmword_259A4D02C;
              if (!v26)
              {
                v39 = 0;
                v64 = 5.0;
                goto LABEL_57;
              }

              v38 = 0;
              v39 = 0;
              do
              {
                v40 = v38 + v36;
                if ((a10 & 1) == 0 && (v40 < *(a8 + 8) || v40 >= v100 - *(a8 + 12)))
                {
                  goto LABEL_53;
                }

                v108 = 0.0;
                *v107 = xmmword_259A4D02C;
                if (v30)
                {
                  v41 = v30;
                  v42 = a8;
                  v43 = v107;
                  v44 = v103;
                  do
                  {
                    if ((a10 & 1) != 0 || v44 >= *(v42 + 16) && v44 < v104 - *(v42 + 20))
                    {
                      v46 = std::function<unsigned char ()(unsigned char)>::operator()(&__src, *(a2 + Index));
                      v47 = *(v111[0] + j) * v46;
                      v48 = 0.0;
                      if (v47 != 0.0)
                      {
                        __e = 0;
                        v49 = frexp(v47, &__e);
                        v50 = ldexp(v49, 11);
                        v48 = ldexp(round(v50), __e - 11);
                      }

                      *v43 = v48;
                      ++v39;
                    }

                    ++v44;
                    ++v43;
                    --v41;
                  }

                  while (v41);
                  v51 = *v107 + *&v107[1];
                  v52 = 0.0;
                  a8 = v42;
                  v30 = v101;
                  v26 = v102;
                  v36 = i * v92;
                  if ((*v107 + *&v107[1]) == 0.0)
                  {
                    goto LABEL_46;
                  }
                }

                else
                {
                  v51 = 5.0;
                }

                __e = 0;
                v53 = frexp(v51, &__e);
                v54 = ldexp(v53, 11);
                v52 = ldexp(round(v54), __e - 11);
LABEL_46:
                v55 = 0.0;
                v56 = 0.0;
                if ((v52 + *&v107[2]) != 0.0)
                {
                  __e = 0;
                  v57 = frexp((v52 + *&v107[2]), &__e);
                  v58 = ldexp(v57, 11);
                  v56 = ldexp(round(v58), __e - 11);
                }

                if ((*&v107[3] + v108) != 0.0)
                {
                  __e = 0;
                  v59 = frexp((*&v107[3] + v108), &__e);
                  v60 = ldexp(v59, 11);
                  v55 = ldexp(round(v60), __e - 11);
                }

                v61 = 0.0;
                if ((v56 + v55) != 0.0)
                {
                  __e = 0;
                  v62 = frexp((v56 + v55), &__e);
                  v63 = ldexp(v62, 11);
                  v61 = ldexp(round(v63), __e - 11);
                }

                *(&v109 + v38) = v61;
LABEL_53:
                ++v38;
              }

              while (v38 != v26);
              v64 = *&v109 + *(&v109 + 1);
              v65 = 0.0;
              v33 = v96;
              if ((*&v109 + *(&v109 + 1)) != 0.0)
              {
LABEL_57:
                v107[0] = 0;
                v66 = frexp(v64, v107);
                v67 = ldexp(v66, 11);
                v65 = ldexp(round(v67), v107[0] - 11);
              }

              v68 = 0.0;
              v69 = 0.0;
              if ((v65 + *(&v109 + 2)) != 0.0)
              {
                v107[0] = 0;
                v70 = frexp((v65 + *(&v109 + 2)), v107);
                v71 = ldexp(v70, 11);
                v69 = ldexp(round(v71), v107[0] - 11);
              }

              if ((*(&v109 + 3) + v110) != 0.0)
              {
                v107[0] = 0;
                v72 = frexp((*(&v109 + 3) + v110), v107);
                v73 = ldexp(v72, 11);
                v68 = ldexp(round(v73), v107[0] - 11);
              }

              v74 = v69 + v68;
              v75 = 0.0;
              if (v74 != 0.0)
              {
                v107[0] = 0;
                v76 = frexp(v74, v107);
                v77 = ldexp(v76, 11);
                v75 = ldexp(round(v77), v107[0] - 11);
              }

              LOWORD(v107[0]) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v39];
              MIL::Fp16::GetFloat(v107);
              v79 = v75 * v78;
              v80 = 0.0;
              if (v79 != 0.0)
              {
                v107[0] = 0;
                v81 = frexp(v79, v107);
                v82 = ldexp(v81, 11);
                v80 = ldexp(round(v82), v107[0] - 11);
              }

              std::function<float ()(float)>::operator()(a11, v80);
              if (v83 == INFINITY)
              {
                LOBYTE(v84) = -1;
              }

              else if (v83 == -INFINITY)
              {
                LOBYTE(v84) = 0;
              }

              else
              {
                v85 = llroundf(v83);
                if (v85 >= 255)
                {
                  v85 = 255;
                }

                v84 = v85 & ~(v85 >> 31);
              }
            }

LABEL_74:
            v103 += v94;
            ++v99;
          }

          while (v99 != v95);
        }

LABEL_76:
        ++v35;
        v32 = v91;
      }

      while (v35 != v91);
LABEL_77:
      ++v106;
    }

    while (v106 != v90);
  }

  if (v111[0])
  {
    v111[1] = v111[0];
    operator delete(v111[0]);
  }

  std::__function::__value_func<unsigned char ()(unsigned char)>::~__value_func[abi:ne200100](&__src);
  if (v112)
  {
    v113 = v112;
    operator delete(v112);
  }

  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }
}

void sub_2599DBF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *(v17 - 200);
  if (v19)
  {
    *(v17 - 192) = v19;
    operator delete(v19);
  }

  v20 = *(v17 - 176);
  if (v20)
  {
    *(v17 - 168) = v20;
    operator delete(v20);
  }

  v21 = *a17;
  if (*a17)
  {
    *(a17 + 8) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,unsigned char>(char **__return_ptr a1@<X8>, uint64_t a2@<X0>, size_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, __int16 a9@<W7>, char a10, uint64_t a11)
{
  v123 = *MEMORY[0x277D85DE8];
  v118 = a9;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (a3)
  {
    std::vector<unsigned char>::__append(a1, a3);
  }

  v16 = *a4;
  v17 = *(a4 + 8);
  v18 = v17 - *a4;
  if (v18 != *(a5 + 8) - *a5)
  {
    v86 = "x_rank == o_shape.size()";
    v87 = 64;
    goto LABEL_90;
  }

  v19 = v18 >> 3;
  v20 = (v18 >> 3) - 2;
  v21 = *a6;
  if (v20 != (*(a6 + 8) - *a6) >> 2)
  {
    v86 = "kernel_sizes.size() == num_spatial_dims";
    v87 = 65;
    goto LABEL_90;
  }

  v22 = *a7;
  if (v20 != (*(a7 + 8) - *a7) >> 2)
  {
    v86 = "strides.size() == num_spatial_dims";
    v87 = 66;
LABEL_90:
    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v87, v86);
  }

  if (v20 == 3)
  {
    if (*v21 == 1)
    {
      if (*v22 == 1)
      {
        v23 = 4 * v19 - 12;
        v24 = (v22 + v23);
        v92 = v22[v19 - 4];
        v25 = (v21 + v23);
        v26 = v21[v19 - 4];
        goto LABEL_13;
      }

      v88 = "sz == 1";
      v89 = 77;
    }

    else
    {
      v88 = "kd == 1";
      v89 = 76;
    }

    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v89, v88);
  }

  v27 = 4 * v19;
  if (v20 <= 1)
  {
    v29 = v27 - 12;
    v25 = (v21 + v29);
    v24 = (v22 + v29);
    v26 = 1;
    v92 = 1;
  }

  else
  {
    v26 = v21[v19 - 4];
    v28 = v27 - 12;
    v25 = (v21 + v28);
    v92 = v22[v19 - 4];
    v24 = (v22 + v28);
  }

LABEL_13:
  v94 = *v24;
  v30 = *v25;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v115, v16, v17, v19);
  v112 = 0;
  v113 = 0;
  v114 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v112, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  if (v19 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v115, v115 + 8, __src.i8, v121, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v112, v112 + 8, __src.i8, v121, 2);
  }

  else if (v19 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v115, v115 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v112, v112 + 8, &__src);
  }

  v31 = *v112;
  v32 = *(v112 + 1);
  v93 = *(v112 + 2);
  v95 = *(v112 + 3);
  v33 = *(v112 + 4);
  v100 = *(v115 + 2);
  v104 = *(v115 + 3);
  __src.i64[0] = &unk_286AB2520;
  p_src = &__src;
  MIL::Fp16::GetFloat(&v118);
  LODWORD(v109) = v34;
  std::vector<float>::vector[abi:ne200100](v111, v33, &v109);
  if (v31)
  {
    v106 = 0;
    v101 = v30;
    v102 = v26;
    v90 = v31;
    v91 = v32;
    v96 = v33;
    do
    {
      if (!v32)
      {
        goto LABEL_79;
      }

      v35 = 0;
      do
      {
        if (!v93)
        {
          goto LABEL_78;
        }

        for (i = 0; i != v93; ++i)
        {
          if (!v95)
          {
            continue;
          }

          v99 = 0;
          v36 = i * v92;
          v103 = 0;
          do
          {
            if (!v33)
            {
              goto LABEL_76;
            }

            for (j = 0; j != v33; ++j)
            {
              v110 = 0.0;
              v109 = xmmword_259A4D02C;
              if (!v26)
              {
                v39 = 0;
                v64 = 5.0;
                goto LABEL_57;
              }

              v38 = 0;
              v39 = 0;
              do
              {
                v40 = v38 + v36;
                if ((a10 & 1) == 0 && (v40 < *(a8 + 8) || v40 >= v100 - *(a8 + 12)))
                {
                  goto LABEL_53;
                }

                v108 = 0.0;
                *v107 = xmmword_259A4D02C;
                if (v30)
                {
                  v41 = v30;
                  v42 = a8;
                  v43 = v107;
                  v44 = v103;
                  do
                  {
                    if ((a10 & 1) != 0 || v44 >= *(v42 + 16) && v44 < v104 - *(v42 + 20))
                    {
                      v46 = std::function<unsigned char ()(unsigned char)>::operator()(&__src, *(a2 + Index));
                      v47 = *(v111[0] + j) * v46;
                      v48 = 0.0;
                      if (v47 != 0.0)
                      {
                        __e = 0;
                        v49 = frexp(v47, &__e);
                        v50 = ldexp(v49, 11);
                        v48 = ldexp(round(v50), __e - 11);
                      }

                      *v43 = v48;
                      ++v39;
                    }

                    ++v44;
                    ++v43;
                    --v41;
                  }

                  while (v41);
                  v51 = *v107 + *&v107[1];
                  v52 = 0.0;
                  a8 = v42;
                  v30 = v101;
                  v26 = v102;
                  v36 = i * v92;
                  if ((*v107 + *&v107[1]) == 0.0)
                  {
                    goto LABEL_46;
                  }
                }

                else
                {
                  v51 = 5.0;
                }

                __e = 0;
                v53 = frexp(v51, &__e);
                v54 = ldexp(v53, 11);
                v52 = ldexp(round(v54), __e - 11);
LABEL_46:
                v55 = 0.0;
                v56 = 0.0;
                if ((v52 + *&v107[2]) != 0.0)
                {
                  __e = 0;
                  v57 = frexp((v52 + *&v107[2]), &__e);
                  v58 = ldexp(v57, 11);
                  v56 = ldexp(round(v58), __e - 11);
                }

                if ((*&v107[3] + v108) != 0.0)
                {
                  __e = 0;
                  v59 = frexp((*&v107[3] + v108), &__e);
                  v60 = ldexp(v59, 11);
                  v55 = ldexp(round(v60), __e - 11);
                }

                v61 = 0.0;
                if ((v56 + v55) != 0.0)
                {
                  __e = 0;
                  v62 = frexp((v56 + v55), &__e);
                  v63 = ldexp(v62, 11);
                  v61 = ldexp(round(v63), __e - 11);
                }

                *(&v109 + v38) = v61;
LABEL_53:
                ++v38;
              }

              while (v38 != v26);
              v64 = *&v109 + *(&v109 + 1);
              v65 = 0.0;
              v33 = v96;
              if ((*&v109 + *(&v109 + 1)) != 0.0)
              {
LABEL_57:
                v107[0] = 0;
                v66 = frexp(v64, v107);
                v67 = ldexp(v66, 11);
                v65 = ldexp(round(v67), v107[0] - 11);
              }

              v68 = 0.0;
              v69 = 0.0;
              if ((v65 + *(&v109 + 2)) != 0.0)
              {
                v107[0] = 0;
                v70 = frexp((v65 + *(&v109 + 2)), v107);
                v71 = ldexp(v70, 11);
                v69 = ldexp(round(v71), v107[0] - 11);
              }

              if ((*(&v109 + 3) + v110) != 0.0)
              {
                v107[0] = 0;
                v72 = frexp((*(&v109 + 3) + v110), v107);
                v73 = ldexp(v72, 11);
                v68 = ldexp(round(v73), v107[0] - 11);
              }

              v74 = v69 + v68;
              v75 = 0.0;
              if (v74 != 0.0)
              {
                v107[0] = 0;
                v76 = frexp(v74, v107);
                v77 = ldexp(v76, 11);
                v75 = ldexp(round(v77), v107[0] - 11);
              }

              LOWORD(v107[0]) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v39];
              MIL::Fp16::GetFloat(v107);
              v79 = v75 * v78;
              v80 = 0.0;
              if (v79 != 0.0)
              {
                v107[0] = 0;
                v81 = frexp(v79, v107);
                v82 = ldexp(v81, 11);
                v80 = ldexp(round(v82), v107[0] - 11);
              }

              std::function<float ()(float)>::operator()(a11, v80);
              if (v83 == INFINITY)
              {
                v84 = 127;
              }

              else if (v83 == -INFINITY)
              {
                v84 = 0x80;
              }

              else
              {
                v85 = llroundf(v83);
                if (v85 >= 127)
                {
                  v85 = 127;
                }

                if (v85 <= -128)
                {
                  v84 = 0x80;
                }

                else
                {
                  v84 = v85;
                }
              }
            }

LABEL_76:
            v103 += v94;
            ++v99;
          }

          while (v99 != v95);
        }

LABEL_78:
        ++v35;
        v32 = v91;
      }

      while (v35 != v91);
LABEL_79:
      ++v106;
    }

    while (v106 != v90);
  }

  if (v111[0])
  {
    v111[1] = v111[0];
    operator delete(v111[0]);
  }

  std::__function::__value_func<unsigned char ()(unsigned char)>::~__value_func[abi:ne200100](&__src);
  if (v112)
  {
    v113 = v112;
    operator delete(v112);
  }

  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }
}

void sub_2599DC858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *(v17 - 200);
  if (v19)
  {
    *(v17 - 192) = v19;
    operator delete(v19);
  }

  v20 = *(v17 - 176);
  if (v20)
  {
    *(v17 - 168) = v20;
    operator delete(v20);
  }

  v21 = *a17;
  if (*a17)
  {
    *(a17 + 8) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,signed char>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int16 a8@<W7>, void *a9@<X8>, char a10, char a11, uint64_t a12)
{
  v123 = *MEMORY[0x277D85DE8];
  v117 = a8;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<MIL::Fp16>::resize(a9, a2);
  v17 = *a3;
  v18 = *(a3 + 8);
  v19 = v18 - *a3;
  if (v19 != *(a4 + 8) - *a4)
  {
    v86 = "x_rank == o_shape.size()";
    v87 = 64;
    goto LABEL_81;
  }

  v20 = v19 >> 3;
  v21 = (v19 >> 3) - 2;
  v22 = *a5;
  if (v21 != (*(a5 + 8) - *a5) >> 2)
  {
    v86 = "kernel_sizes.size() == num_spatial_dims";
    v87 = 65;
    goto LABEL_81;
  }

  v23 = *a6;
  if (v21 != (*(a6 + 8) - *a6) >> 2)
  {
    v86 = "strides.size() == num_spatial_dims";
    v87 = 66;
LABEL_81:
    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v87, v86);
  }

  if (v21 == 3)
  {
    if (*v22 == 1)
    {
      if (*v23 == 1)
      {
        v24 = 4 * v20 - 12;
        v25 = (v23 + v24);
        v92 = v23[v20 - 4];
        v26 = (v22 + v24);
        v27 = v22[v20 - 4];
        goto LABEL_11;
      }

      v88 = "sz == 1";
      v89 = 77;
    }

    else
    {
      v88 = "kd == 1";
      v89 = 76;
    }

    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v89, v88);
  }

  if (v21 <= 1)
  {
    v29 = 4 * v20 - 12;
    v26 = (v22 + v29);
    v25 = (v23 + v29);
    v27 = 1;
    v92 = 1;
  }

  else
  {
    v27 = v22[v20 - 4];
    v28 = 4 * v20 - 12;
    v26 = (v22 + v28);
    v92 = v23[v20 - 4];
    v25 = (v23 + v28);
  }

LABEL_11:
  v94 = *v25;
  v30 = *v26;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v114, v17, v18, v20);
  __p = 0;
  v112 = 0;
  v113 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  if (v20 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v114, v114 + 8, __src.i8, v121, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v121, 2);
  }

  else if (v20 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v114, v114 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v31 = *__p;
  v32 = *(__p + 1);
  v93 = *(__p + 2);
  v95 = *(__p + 3);
  v98 = *(__p + 4);
  v100 = *(v114 + 2);
  v104 = *(v114 + 3);
  v119[0] = &unk_286AB25A0;
  v119[3] = v119;
  if (a11)
  {
    __src.i64[0] = &unk_286AB2620;
    p_src = &__src;
    std::__function::__value_func<signed char ()(signed char)>::swap[abi:ne200100](&__src, v119);
    std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](&__src);
  }

  MIL::Fp16::GetFloat(&v117);
  LODWORD(v109) = v33;
  std::vector<float>::vector[abi:ne200100](__src.i64, v98, &v109);
  if (v31)
  {
    v106 = 0;
    v101 = v30;
    v102 = v27;
    v90 = v31;
    v91 = v32;
    do
    {
      if (!v32)
      {
        goto LABEL_70;
      }

      v34 = 0;
      do
      {
        if (!v93)
        {
          goto LABEL_69;
        }

        for (i = 0; i != v93; ++i)
        {
          if (!v95)
          {
            continue;
          }

          v99 = 0;
          v35 = i * v92;
          v103 = 0;
          do
          {
            if (!v98)
            {
              goto LABEL_67;
            }

            for (j = 0; j != v98; ++j)
            {
              v110 = 0.0;
              v109 = xmmword_259A4D02C;
              if (!v27)
              {
                v38 = 0;
                v64 = 5.0;
                goto LABEL_57;
              }

              v37 = 0;
              v38 = 0;
              do
              {
                v39 = v37 + v35;
                if ((a10 & 1) == 0 && (v39 < *(a7 + 8) || v39 >= v100 - *(a7 + 12)))
                {
                  goto LABEL_53;
                }

                v108 = 0.0;
                *v107 = xmmword_259A4D02C;
                if (v30)
                {
                  v40 = v30;
                  v41 = a7;
                  v42 = v107;
                  v43 = v103;
                  v44 = v40;
                  do
                  {
                    if ((a10 & 1) != 0 || v43 >= *(v41 + 16) && v43 < v104 - *(v41 + 20))
                    {
                      v46 = std::function<signed char ()(signed char)>::operator()(v119, *(a1 + Index));
                      v47 = *(__src.i64[0] + 4 * j) * v46;
                      v48 = 0.0;
                      if (v47 != 0.0)
                      {
                        __e = 0;
                        v49 = frexp(v47, &__e);
                        v50 = ldexp(v49, 11);
                        v48 = ldexp(round(v50), __e - 11);
                      }

                      *v42 = v48;
                      ++v38;
                    }

                    ++v43;
                    ++v42;
                    --v44;
                  }

                  while (v44);
                  v51 = *v107 + *&v107[1];
                  v52 = 0.0;
                  a7 = v41;
                  v30 = v101;
                  v27 = v102;
                  v35 = i * v92;
                  if ((*v107 + *&v107[1]) == 0.0)
                  {
                    goto LABEL_46;
                  }
                }

                else
                {
                  v51 = 5.0;
                }

                __e = 0;
                v53 = frexp(v51, &__e);
                v54 = ldexp(v53, 11);
                v52 = ldexp(round(v54), __e - 11);
LABEL_46:
                v55 = 0.0;
                v56 = 0.0;
                if ((v52 + *&v107[2]) != 0.0)
                {
                  __e = 0;
                  v57 = frexp((v52 + *&v107[2]), &__e);
                  v58 = ldexp(v57, 11);
                  v56 = ldexp(round(v58), __e - 11);
                }

                if ((*&v107[3] + v108) != 0.0)
                {
                  __e = 0;
                  v59 = frexp((*&v107[3] + v108), &__e);
                  v60 = ldexp(v59, 11);
                  v55 = ldexp(round(v60), __e - 11);
                }

                v61 = 0.0;
                if ((v56 + v55) != 0.0)
                {
                  __e = 0;
                  v62 = frexp((v56 + v55), &__e);
                  v63 = ldexp(v62, 11);
                  v61 = ldexp(round(v63), __e - 11);
                }

                *(&v109 + v37) = v61;
LABEL_53:
                ++v37;
              }

              while (v37 != v27);
              v64 = *&v109 + *(&v109 + 1);
              v65 = 0.0;
              if ((*&v109 + *(&v109 + 1)) != 0.0)
              {
LABEL_57:
                v107[0] = 0;
                v66 = frexp(v64, v107);
                v67 = ldexp(v66, 11);
                v65 = ldexp(round(v67), v107[0] - 11);
              }

              v68 = 0.0;
              v69 = 0.0;
              if ((v65 + *(&v109 + 2)) != 0.0)
              {
                v107[0] = 0;
                v70 = frexp((v65 + *(&v109 + 2)), v107);
                v71 = ldexp(v70, 11);
                v69 = ldexp(round(v71), v107[0] - 11);
              }

              if ((*(&v109 + 3) + v110) != 0.0)
              {
                v107[0] = 0;
                v72 = frexp((*(&v109 + 3) + v110), v107);
                v73 = ldexp(v72, 11);
                v68 = ldexp(round(v73), v107[0] - 11);
              }

              v74 = v69 + v68;
              v75 = 0.0;
              if (v74 != 0.0)
              {
                v107[0] = 0;
                v76 = frexp(v74, v107);
                v77 = ldexp(v76, 11);
                v75 = ldexp(round(v77), v107[0] - 11);
              }

              LOWORD(v107[0]) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v38];
              MIL::Fp16::GetFloat(v107);
              v79 = v75 * v78;
              v80 = 0.0;
              if (v79 != 0.0)
              {
                v107[0] = 0;
                v81 = frexp(v79, v107);
                v82 = ldexp(v81, 11);
                v80 = ldexp(round(v82), v107[0] - 11);
              }

              v83 = std::function<float ()(float)>::operator()(a12, v80);
              v85 = MIL::Fp16::FromFloat(v83, v84);
            }

LABEL_67:
            v103 += v94;
            ++v99;
          }

          while (v99 != v95);
        }

LABEL_69:
        ++v34;
        v32 = v91;
      }

      while (v34 != v91);
LABEL_70:
      ++v106;
    }

    while (v106 != v90);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](v119);
  if (__p)
  {
    v112 = __p;
    operator delete(__p);
  }

  if (v114)
  {
    v115 = v114;
    operator delete(v114);
  }
}

void sub_2599DD150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  v41 = *(v39 - 208);
  if (v41)
  {
    *(v39 - 200) = v41;
    operator delete(v41);
  }

  v42 = *a16;
  if (*a16)
  {
    *(a16 + 8) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,signed char>(char **__return_ptr a1@<X8>, uint64_t a2@<X0>, size_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, __int16 a9@<W7>, char a10, char a11, uint64_t a12)
{
  v123 = *MEMORY[0x277D85DE8];
  v117 = a9;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (a3)
  {
    std::vector<unsigned char>::__append(a1, a3);
  }

  v17 = *a4;
  v18 = *(a4 + 8);
  v19 = v18 - *a4;
  if (v19 != *(a5 + 8) - *a5)
  {
    v86 = "x_rank == o_shape.size()";
    v87 = 64;
    goto LABEL_90;
  }

  v20 = v19 >> 3;
  v21 = (v19 >> 3) - 2;
  v22 = *a6;
  if (v21 != (*(a6 + 8) - *a6) >> 2)
  {
    v86 = "kernel_sizes.size() == num_spatial_dims";
    v87 = 65;
    goto LABEL_90;
  }

  v23 = *a7;
  if (v21 != (*(a7 + 8) - *a7) >> 2)
  {
    v86 = "strides.size() == num_spatial_dims";
    v87 = 66;
LABEL_90:
    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v87, v86);
  }

  if (v21 == 3)
  {
    if (*v22 == 1)
    {
      if (*v23 == 1)
      {
        v24 = 4 * v20 - 12;
        v25 = (v23 + v24);
        v92 = v23[v20 - 4];
        v26 = (v22 + v24);
        v27 = v22[v20 - 4];
        goto LABEL_13;
      }

      v88 = "sz == 1";
      v89 = 77;
    }

    else
    {
      v88 = "kd == 1";
      v89 = 76;
    }

    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v89, v88);
  }

  v28 = 4 * v20;
  if (v21 <= 1)
  {
    v30 = v28 - 12;
    v26 = (v22 + v30);
    v25 = (v23 + v30);
    v27 = 1;
    v92 = 1;
  }

  else
  {
    v27 = v22[v20 - 4];
    v29 = v28 - 12;
    v26 = (v22 + v29);
    v92 = v23[v20 - 4];
    v25 = (v23 + v29);
  }

LABEL_13:
  v94 = *v25;
  v31 = *v26;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v114, v17, v18, v20);
  __p = 0;
  v112 = 0;
  v113 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  if (v20 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v114, v114 + 8, __src.i8, v121, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v121, 2);
  }

  else if (v20 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v114, v114 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v32 = *__p;
  v33 = *(__p + 1);
  v93 = *(__p + 2);
  v95 = *(__p + 3);
  v98 = *(__p + 4);
  v100 = *(v114 + 2);
  v104 = *(v114 + 3);
  v119[0] = &unk_286AB26A0;
  v119[3] = v119;
  if (a11)
  {
    __src.i64[0] = &unk_286AB2720;
    p_src = &__src;
    std::__function::__value_func<signed char ()(signed char)>::swap[abi:ne200100](&__src, v119);
    std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](&__src);
  }

  MIL::Fp16::GetFloat(&v117);
  LODWORD(v109) = v34;
  std::vector<float>::vector[abi:ne200100](__src.i64, v98, &v109);
  if (v32)
  {
    v106 = 0;
    v101 = v31;
    v102 = v27;
    v90 = v32;
    v91 = v33;
    do
    {
      if (!v33)
      {
        goto LABEL_79;
      }

      v35 = 0;
      do
      {
        if (!v93)
        {
          goto LABEL_78;
        }

        for (i = 0; i != v93; ++i)
        {
          if (!v95)
          {
            continue;
          }

          v99 = 0;
          v36 = i * v92;
          v103 = 0;
          do
          {
            if (!v98)
            {
              goto LABEL_76;
            }

            for (j = 0; j != v98; ++j)
            {
              v110 = 0.0;
              v109 = xmmword_259A4D02C;
              if (!v27)
              {
                v39 = 0;
                v64 = 5.0;
                goto LABEL_59;
              }

              v38 = 0;
              v39 = 0;
              do
              {
                v40 = v38 + v36;
                if ((a10 & 1) == 0 && (v40 < *(a8 + 8) || v40 >= v100 - *(a8 + 12)))
                {
                  goto LABEL_55;
                }

                v108 = 0.0;
                *v107 = xmmword_259A4D02C;
                if (v31)
                {
                  v41 = v31;
                  v42 = a8;
                  v43 = v107;
                  v44 = v103;
                  do
                  {
                    if ((a10 & 1) != 0 || v44 >= *(v42 + 16) && v44 < v104 - *(v42 + 20))
                    {
                      v46 = std::function<signed char ()(signed char)>::operator()(v119, *(a2 + Index));
                      v47 = *(__src.i64[0] + 4 * j) * v46;
                      v48 = 0.0;
                      if (v47 != 0.0)
                      {
                        __e = 0;
                        v49 = frexp(v47, &__e);
                        v50 = ldexp(v49, 11);
                        v48 = ldexp(round(v50), __e - 11);
                      }

                      *v43 = v48;
                      ++v39;
                    }

                    ++v44;
                    ++v43;
                    --v41;
                  }

                  while (v41);
                  v51 = *v107 + *&v107[1];
                  v52 = 0.0;
                  a8 = v42;
                  v31 = v101;
                  v27 = v102;
                  v36 = i * v92;
                  if ((*v107 + *&v107[1]) == 0.0)
                  {
                    goto LABEL_48;
                  }
                }

                else
                {
                  v51 = 5.0;
                }

                __e = 0;
                v53 = frexp(v51, &__e);
                v54 = ldexp(v53, 11);
                v52 = ldexp(round(v54), __e - 11);
LABEL_48:
                v55 = 0.0;
                v56 = 0.0;
                if ((v52 + *&v107[2]) != 0.0)
                {
                  __e = 0;
                  v57 = frexp((v52 + *&v107[2]), &__e);
                  v58 = ldexp(v57, 11);
                  v56 = ldexp(round(v58), __e - 11);
                }

                if ((*&v107[3] + v108) != 0.0)
                {
                  __e = 0;
                  v59 = frexp((*&v107[3] + v108), &__e);
                  v60 = ldexp(v59, 11);
                  v55 = ldexp(round(v60), __e - 11);
                }

                v61 = 0.0;
                if ((v56 + v55) != 0.0)
                {
                  __e = 0;
                  v62 = frexp((v56 + v55), &__e);
                  v63 = ldexp(v62, 11);
                  v61 = ldexp(round(v63), __e - 11);
                }

                *(&v109 + v38) = v61;
LABEL_55:
                ++v38;
              }

              while (v38 != v27);
              v64 = *&v109 + *(&v109 + 1);
              v65 = 0.0;
              if ((*&v109 + *(&v109 + 1)) != 0.0)
              {
LABEL_59:
                v107[0] = 0;
                v66 = frexp(v64, v107);
                v67 = ldexp(v66, 11);
                v65 = ldexp(round(v67), v107[0] - 11);
              }

              v68 = 0.0;
              v69 = 0.0;
              if ((v65 + *(&v109 + 2)) != 0.0)
              {
                v107[0] = 0;
                v70 = frexp((v65 + *(&v109 + 2)), v107);
                v71 = ldexp(v70, 11);
                v69 = ldexp(round(v71), v107[0] - 11);
              }

              if ((*(&v109 + 3) + v110) != 0.0)
              {
                v107[0] = 0;
                v72 = frexp((*(&v109 + 3) + v110), v107);
                v73 = ldexp(v72, 11);
                v68 = ldexp(round(v73), v107[0] - 11);
              }

              v74 = v69 + v68;
              v75 = 0.0;
              if (v74 != 0.0)
              {
                v107[0] = 0;
                v76 = frexp(v74, v107);
                v77 = ldexp(v76, 11);
                v75 = ldexp(round(v77), v107[0] - 11);
              }

              LOWORD(v107[0]) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v39];
              MIL::Fp16::GetFloat(v107);
              v79 = v75 * v78;
              v80 = 0.0;
              if (v79 != 0.0)
              {
                v107[0] = 0;
                v81 = frexp(v79, v107);
                v82 = ldexp(v81, 11);
                v80 = ldexp(round(v82), v107[0] - 11);
              }

              std::function<float ()(float)>::operator()(a12, v80);
              if (v83 == INFINITY)
              {
                LOBYTE(v84) = -1;
              }

              else if (v83 == -INFINITY)
              {
                LOBYTE(v84) = 0;
              }

              else
              {
                v85 = llroundf(v83);
                if (v85 >= 255)
                {
                  v85 = 255;
                }

                v84 = v85 & ~(v85 >> 31);
              }
            }

LABEL_76:
            v103 += v94;
            ++v99;
          }

          while (v99 != v95);
        }

LABEL_78:
        ++v35;
        v33 = v91;
      }

      while (v35 != v91);
LABEL_79:
      ++v106;
    }

    while (v106 != v90);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](v119);
  if (__p)
  {
    v112 = __p;
    operator delete(__p);
  }

  if (v114)
  {
    v115 = v114;
    operator delete(v114);
  }
}

void sub_2599DDA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  v41 = *(v39 - 208);
  if (v41)
  {
    *(v39 - 200) = v41;
    operator delete(v41);
  }

  v42 = *a16;
  if (*a16)
  {
    *(a16 + 8) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,signed char>(char **__return_ptr a1@<X8>, uint64_t a2@<X0>, size_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, __int16 a9@<W7>, char a10, char a11, uint64_t a12)
{
  v123 = *MEMORY[0x277D85DE8];
  v117 = a9;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (a3)
  {
    std::vector<unsigned char>::__append(a1, a3);
  }

  v17 = *a4;
  v18 = *(a4 + 8);
  v19 = v18 - *a4;
  if (v19 != *(a5 + 8) - *a5)
  {
    v86 = "x_rank == o_shape.size()";
    v87 = 64;
    goto LABEL_92;
  }

  v20 = v19 >> 3;
  v21 = (v19 >> 3) - 2;
  v22 = *a6;
  if (v21 != (*(a6 + 8) - *a6) >> 2)
  {
    v86 = "kernel_sizes.size() == num_spatial_dims";
    v87 = 65;
    goto LABEL_92;
  }

  v23 = *a7;
  if (v21 != (*(a7 + 8) - *a7) >> 2)
  {
    v86 = "strides.size() == num_spatial_dims";
    v87 = 66;
LABEL_92:
    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v87, v86);
  }

  if (v21 == 3)
  {
    if (*v22 == 1)
    {
      if (*v23 == 1)
      {
        v24 = 4 * v20 - 12;
        v25 = (v23 + v24);
        v92 = v23[v20 - 4];
        v26 = (v22 + v24);
        v27 = v22[v20 - 4];
        goto LABEL_13;
      }

      v88 = "sz == 1";
      v89 = 77;
    }

    else
    {
      v88 = "kd == 1";
      v89 = 76;
    }

    __assert_rtn("ComputeValueAvgPool", "PePoolCpu.cpp", v89, v88);
  }

  v28 = 4 * v20;
  if (v21 <= 1)
  {
    v30 = v28 - 12;
    v26 = (v22 + v30);
    v25 = (v23 + v30);
    v27 = 1;
    v92 = 1;
  }

  else
  {
    v27 = v22[v20 - 4];
    v29 = v28 - 12;
    v26 = (v22 + v29);
    v92 = v23[v20 - 4];
    v25 = (v23 + v29);
  }

LABEL_13:
  v94 = *v25;
  v31 = *v26;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v114, v17, v18, v20);
  __p = 0;
  v112 = 0;
  v113 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  if (v20 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v114, v114 + 8, __src.i8, v121, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v121, 2);
  }

  else if (v20 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v114, v114 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v32 = *__p;
  v33 = *(__p + 1);
  v93 = *(__p + 2);
  v95 = *(__p + 3);
  v98 = *(__p + 4);
  v100 = *(v114 + 2);
  v104 = *(v114 + 3);
  v119[0] = &unk_286AB27A0;
  v119[3] = v119;
  if (a11)
  {
    __src.i64[0] = &unk_286AB2820;
    p_src = &__src;
    std::__function::__value_func<signed char ()(signed char)>::swap[abi:ne200100](&__src, v119);
    std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](&__src);
  }

  MIL::Fp16::GetFloat(&v117);
  LODWORD(v109) = v34;
  std::vector<float>::vector[abi:ne200100](__src.i64, v98, &v109);
  if (v32)
  {
    v106 = 0;
    v101 = v31;
    v102 = v27;
    v90 = v32;
    v91 = v33;
    do
    {
      if (!v33)
      {
        goto LABEL_81;
      }

      v35 = 0;
      do
      {
        if (!v93)
        {
          goto LABEL_80;
        }

        for (i = 0; i != v93; ++i)
        {
          if (!v95)
          {
            continue;
          }

          v99 = 0;
          v36 = i * v92;
          v103 = 0;
          do
          {
            if (!v98)
            {
              goto LABEL_78;
            }

            for (j = 0; j != v98; ++j)
            {
              v110 = 0.0;
              v109 = xmmword_259A4D02C;
              if (!v27)
              {
                v39 = 0;
                v64 = 5.0;
                goto LABEL_59;
              }

              v38 = 0;
              v39 = 0;
              do
              {
                v40 = v38 + v36;
                if ((a10 & 1) == 0 && (v40 < *(a8 + 8) || v40 >= v100 - *(a8 + 12)))
                {
                  goto LABEL_55;
                }

                v108 = 0.0;
                *v107 = xmmword_259A4D02C;
                if (v31)
                {
                  v41 = v31;
                  v42 = a8;
                  v43 = v107;
                  v44 = v103;
                  do
                  {
                    if ((a10 & 1) != 0 || v44 >= *(v42 + 16) && v44 < v104 - *(v42 + 20))
                    {
                      v46 = std::function<signed char ()(signed char)>::operator()(v119, *(a2 + Index));
                      v47 = *(__src.i64[0] + 4 * j) * v46;
                      v48 = 0.0;
                      if (v47 != 0.0)
                      {
                        __e = 0;
                        v49 = frexp(v47, &__e);
                        v50 = ldexp(v49, 11);
                        v48 = ldexp(round(v50), __e - 11);
                      }

                      *v43 = v48;
                      ++v39;
                    }

                    ++v44;
                    ++v43;
                    --v41;
                  }

                  while (v41);
                  v51 = *v107 + *&v107[1];
                  v52 = 0.0;
                  a8 = v42;
                  v31 = v101;
                  v27 = v102;
                  v36 = i * v92;
                  if ((*v107 + *&v107[1]) == 0.0)
                  {
                    goto LABEL_48;
                  }
                }

                else
                {
                  v51 = 5.0;
                }

                __e = 0;
                v53 = frexp(v51, &__e);
                v54 = ldexp(v53, 11);
                v52 = ldexp(round(v54), __e - 11);
LABEL_48:
                v55 = 0.0;
                v56 = 0.0;
                if ((v52 + *&v107[2]) != 0.0)
                {
                  __e = 0;
                  v57 = frexp((v52 + *&v107[2]), &__e);
                  v58 = ldexp(v57, 11);
                  v56 = ldexp(round(v58), __e - 11);
                }

                if ((*&v107[3] + v108) != 0.0)
                {
                  __e = 0;
                  v59 = frexp((*&v107[3] + v108), &__e);
                  v60 = ldexp(v59, 11);
                  v55 = ldexp(round(v60), __e - 11);
                }

                v61 = 0.0;
                if ((v56 + v55) != 0.0)
                {
                  __e = 0;
                  v62 = frexp((v56 + v55), &__e);
                  v63 = ldexp(v62, 11);
                  v61 = ldexp(round(v63), __e - 11);
                }

                *(&v109 + v38) = v61;
LABEL_55:
                ++v38;
              }

              while (v38 != v27);
              v64 = *&v109 + *(&v109 + 1);
              v65 = 0.0;
              if ((*&v109 + *(&v109 + 1)) != 0.0)
              {
LABEL_59:
                v107[0] = 0;
                v66 = frexp(v64, v107);
                v67 = ldexp(v66, 11);
                v65 = ldexp(round(v67), v107[0] - 11);
              }

              v68 = 0.0;
              v69 = 0.0;
              if ((v65 + *(&v109 + 2)) != 0.0)
              {
                v107[0] = 0;
                v70 = frexp((v65 + *(&v109 + 2)), v107);
                v71 = ldexp(v70, 11);
                v69 = ldexp(round(v71), v107[0] - 11);
              }

              if ((*(&v109 + 3) + v110) != 0.0)
              {
                v107[0] = 0;
                v72 = frexp((*(&v109 + 3) + v110), v107);
                v73 = ldexp(v72, 11);
                v68 = ldexp(round(v73), v107[0] - 11);
              }

              v74 = v69 + v68;
              v75 = 0.0;
              if (v74 != 0.0)
              {
                v107[0] = 0;
                v76 = frexp(v74, v107);
                v77 = ldexp(v76, 11);
                v75 = ldexp(round(v77), v107[0] - 11);
              }

              LOWORD(v107[0]) = MIL::ANEMachineIR::Interpreter::RecipTableRaw[v39];
              MIL::Fp16::GetFloat(v107);
              v79 = v75 * v78;
              v80 = 0.0;
              if (v79 != 0.0)
              {
                v107[0] = 0;
                v81 = frexp(v79, v107);
                v82 = ldexp(v81, 11);
                v80 = ldexp(round(v82), v107[0] - 11);
              }

              std::function<float ()(float)>::operator()(a12, v80);
              if (v83 == INFINITY)
              {
                v84 = 127;
              }

              else if (v83 == -INFINITY)
              {
                v84 = 0x80;
              }

              else
              {
                v85 = llroundf(v83);
                if (v85 >= 127)
                {
                  v85 = 127;
                }

                if (v85 <= -128)
                {
                  v84 = 0x80;
                }

                else
                {
                  v84 = v85;
                }
              }
            }

LABEL_78:
            v103 += v94;
            ++v99;
          }

          while (v99 != v95);
        }

LABEL_80:
        ++v35;
        v33 = v91;
      }

      while (v35 != v91);
LABEL_81:
      ++v106;
    }

    while (v106 != v90);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](v119);
  if (__p)
  {
    v112 = __p;
    operator delete(__p);
  }

  if (v114)
  {
    v115 = v114;
    operator delete(v114);
  }
}

void sub_2599DE3C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  v41 = *(v39 - 208);
  if (v41)
  {
    *(v39 - 200) = v41;
    operator delete(v41);
  }

  v42 = *a16;
  if (*a16)
  {
    *(a16 + 8) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::PeMaxPoolCpu::Run(MIL::IROperation *a1@<X1>, void *a2@<X2>, _DWORD *a3@<X8>)
{
  v6 = (*(*a1 + 56))(a1);
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    if (*(v6 + 8) != 11)
    {
LABEL_10:
      *a3 = 1;
      v9 = a3 + 2;
      std::string::basic_string[abi:ne200100]<0>(&v20, "pe_max_pool");
      v10 = std::string::insert(&v20, 0, "Expected '");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v21.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v21.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = std::string::append(&v21, "' op. Got ");
      v13 = *&v12->__r_.__value_.__l.__data_;
      v22.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&v22.__r_.__value_.__l.__data_ = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      v14 = (*(*a1 + 56))(a1);
      v15 = *(v14 + 23);
      if (v15 >= 0)
      {
        v16 = v14;
      }

      else
      {
        v16 = *v14;
      }

      if (v15 >= 0)
      {
        v17 = *(v14 + 23);
      }

      else
      {
        v17 = *(v14 + 8);
      }

      v18 = std::string::append(&v22, v16, v17);
      v19 = *&v18->__r_.__value_.__l.__data_;
      *(v9 + 2) = *(&v18->__r_.__value_.__l + 2);
      *v9 = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      return;
    }

    v6 = *v6;
  }

  else if (v7 != 11)
  {
    goto LABEL_10;
  }

  if (*v6 != 0x705F78616D5F6570 || *(v6 + 3) != 0x6C6F6F705F78616DLL)
  {
    goto LABEL_10;
  }
}

void sub_2599DE644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2599DF4E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, int a25, __int16 a26, char a27, char a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v60 - 120);
  if (a32 < 0)
  {
    operator delete(a24);
  }

  if (a33)
  {
    operator delete(a33);
  }

  if (a38)
  {
    operator delete(a38);
  }

  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::Interpreter::PeMinPoolCpu::Run(MIL::IROperation *a1@<X1>, void *a2@<X2>, _DWORD *a3@<X8>)
{
  v6 = (*(*a1 + 56))(a1);
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    if (*(v6 + 8) != 11)
    {
LABEL_10:
      *a3 = 1;
      v9 = a3 + 2;
      std::string::basic_string[abi:ne200100]<0>(&v20, "pe_min_pool");
      v10 = std::string::insert(&v20, 0, "Expected '");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v21.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v21.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = std::string::append(&v21, "' op. Got ");
      v13 = *&v12->__r_.__value_.__l.__data_;
      v22.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&v22.__r_.__value_.__l.__data_ = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      v14 = (*(*a1 + 56))(a1);
      v15 = *(v14 + 23);
      if (v15 >= 0)
      {
        v16 = v14;
      }

      else
      {
        v16 = *v14;
      }

      if (v15 >= 0)
      {
        v17 = *(v14 + 23);
      }

      else
      {
        v17 = *(v14 + 8);
      }

      v18 = std::string::append(&v22, v16, v17);
      v19 = *&v18->__r_.__value_.__l.__data_;
      *(v9 + 2) = *(&v18->__r_.__value_.__l + 2);
      *v9 = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      return;
    }

    v6 = *v6;
  }

  else if (v7 != 11)
  {
    goto LABEL_10;
  }

  if (*v6 != 0x705F6E696D5F6570 || *(v6 + 3) != 0x6C6F6F705F6E696DLL)
  {
    goto LABEL_10;
  }
}

void sub_2599DF9E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueMinMaxPool<MIL::Fp16,MIL::Fp16>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int16 a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, char a10)
{
  v84 = *MEMORY[0x277D85DE8];
  v80 = a7;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<MIL::Fp16>::resize(a9, a2);
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = v15 - *a3;
  if (v16 != *(a4 + 8) - *a4)
  {
    v55 = "x_rank == o_shape.size()";
    v56 = 189;
    goto LABEL_60;
  }

  v17 = v16 >> 3;
  v18 = (v16 >> 3) - 2;
  v19 = *a5;
  if (v18 != (*(a5 + 8) - *a5) >> 2)
  {
    v55 = "kernel_sizes.size() == num_spatial_dims";
    v56 = 190;
    goto LABEL_60;
  }

  v20 = *a6;
  if (v18 != (*(a6 + 8) - *a6) >> 2)
  {
    v55 = "strides.size() == num_spatial_dims";
    v56 = 191;
LABEL_60:
    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v56, v55);
  }

  if (v18 == 3)
  {
    if (*v19 == 1)
    {
      if (*v20 == 1)
      {
        v21 = 4 * v17 - 12;
        v22 = (v20 + v21);
        v61 = v20[v17 - 4];
        v23 = (v19 + v21);
        v72 = v19[v17 - 4];
        goto LABEL_11;
      }

      v57 = "sz == 1";
      v58 = 202;
    }

    else
    {
      v57 = "kd == 1";
      v58 = 201;
    }

    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v58, v57);
  }

  v24 = 4 * v17;
  if (v18 <= 1)
  {
    v26 = v24 - 12;
    v23 = (v19 + v26);
    v22 = (v20 + v26);
    v72 = 1;
    v61 = 1;
  }

  else
  {
    v72 = v19[v17 - 4];
    v25 = v24 - 12;
    v23 = (v19 + v25);
    v61 = v20[v17 - 4];
    v22 = (v20 + v25);
  }

LABEL_11:
  v63 = *v22;
  v27 = *v23;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v77, v14, v15, v17);
  __p = 0;
  v75 = 0;
  v76 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  if (v17 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v77, v77 + 8, __src.i8, v83, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v83, 2);
  }

  else if (v17 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v77, v77 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v28 = *__p;
  v29 = *(__p + 1);
  v62 = *(__p + 2);
  v64 = *(__p + 3);
  v30 = *(__p + 4);
  MIL::Fp16::GetFloat(&v80);
  __e = v31;
  std::vector<float>::vector[abi:ne200100](__src.i64, v30, &__e);
  if (v28)
  {
    v32 = v30;
    v33 = 0;
    v71 = v27;
    v59 = v28;
    v60 = v29;
    v65 = v32;
    do
    {
      if (v29)
      {
        v34 = 0;
        do
        {
          if (v62)
          {
            for (i = 0; i != v62; ++i)
            {
              if (v64)
              {
                v69 = 0;
                v70 = 0;
                do
                {
                  if (v32)
                  {
                    v35 = 0;
                    do
                    {
                      if (v72)
                      {
                        v36 = 0;
                        for (j = 0; j != v72; ++j)
                        {
                          if (v27)
                          {
                            v38 = 0;
                            v39 = v70;
                            do
                            {
                              if (v38 | j)
                              {
                                if (a10)
                                {
                                  LOWORD(__e) = v36;
                                  MIL::Fp16::GetFloat(&__e);
                                  v42 = v41;
                                  LOWORD(__e) = v40;
                                  MIL::Fp16::GetFloat(&__e);
                                  if (v42 < v43)
                                  {
                                    v40 = v40;
                                  }

                                  else
                                  {
                                    v40 = v36;
                                  }
                                }

                                else
                                {
                                  LOWORD(__e) = v36;
                                  MIL::Fp16::GetFloat(&__e);
                                  v45 = v44;
                                  LOWORD(__e) = v40;
                                  MIL::Fp16::GetFloat(&__e);
                                  if (v45 > v46)
                                  {
                                    v40 = v40;
                                  }

                                  else
                                  {
                                    v40 = v36;
                                  }
                                }
                              }

                              ++v38;
                              ++v39;
                              LODWORD(v36) = v40;
                              --v27;
                            }

                            while (v27);
                          }

                          else
                          {
                            v40 = v36;
                          }

                          v36 = v40;
                          v27 = v71;
                        }
                      }

                      else
                      {
                        LOWORD(v40) = 0;
                      }

                      LOWORD(__e) = v40;
                      MIL::Fp16::GetFloat(&__e);
                      v48 = v47 * *(__src.i64[0] + 4 * v35);
                      v49 = 0.0;
                      if (v48 != 0.0)
                      {
                        __e = 0;
                        v50 = frexp(v48, &__e);
                        v51 = ldexp(v50, 11);
                        v49 = ldexp(round(v51), __e - 11);
                      }

                      v52 = std::function<float ()(float)>::operator()(a8, v49);
                      v54 = MIL::Fp16::FromFloat(v52, v53);
                      v32 = v65;
                    }

                    while (v35 != v65);
                  }

                  ++v69;
                  v70 += v63;
                }

                while (v69 != v64);
              }
            }
          }

          ++v34;
          v29 = v60;
        }

        while (v34 != v60);
      }

      ++v33;
    }

    while (v33 != v59);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  if (__p)
  {
    v75 = __p;
    operator delete(__p);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }
}

void sub_2599DFFD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v32 = *v30;
  if (*v30)
  {
    *(v30 + 8) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueMinMaxPool<unsigned char,MIL::Fp16>(char **__return_ptr a1@<X8>, uint64_t a2@<X0>, size_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, __int16 a8@<W6>, uint64_t a9@<X7>, char a10)
{
  v85 = *MEMORY[0x277D85DE8];
  v81 = a8;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (a3)
  {
    std::vector<unsigned char>::__append(a1, a3);
  }

  v68 = a1;
  v15 = *a4;
  v16 = *(a4 + 8);
  v17 = v16 - *a4;
  if (v17 != *(a5 + 8) - *a5)
  {
    v56 = "x_rank == o_shape.size()";
    v57 = 189;
    goto LABEL_69;
  }

  v18 = v17 >> 3;
  v19 = (v17 >> 3) - 2;
  v20 = *a6;
  if (v19 != (*(a6 + 8) - *a6) >> 2)
  {
    v56 = "kernel_sizes.size() == num_spatial_dims";
    v57 = 190;
    goto LABEL_69;
  }

  v21 = *a7;
  if (v19 != (*(a7 + 8) - *a7) >> 2)
  {
    v56 = "strides.size() == num_spatial_dims";
    v57 = 191;
LABEL_69:
    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v57, v56);
  }

  if (v19 == 3)
  {
    if (*v20 == 1)
    {
      if (*v21 == 1)
      {
        v22 = 4 * v18 - 12;
        v23 = (v21 + v22);
        v62 = v21[v18 - 4];
        v24 = (v20 + v22);
        v73 = v20[v18 - 4];
        goto LABEL_13;
      }

      v58 = "sz == 1";
      v59 = 202;
    }

    else
    {
      v58 = "kd == 1";
      v59 = 201;
    }

    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v59, v58);
  }

  v25 = 4 * v18;
  if (v19 <= 1)
  {
    v27 = v25 - 12;
    v24 = (v20 + v27);
    v23 = (v21 + v27);
    v73 = 1;
    v62 = 1;
  }

  else
  {
    v73 = v20[v18 - 4];
    v26 = v25 - 12;
    v24 = (v20 + v26);
    v62 = v21[v18 - 4];
    v23 = (v21 + v26);
  }

LABEL_13:
  v64 = *v23;
  v28 = *v24;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v78, v15, v16, v18);
  __p = 0;
  v76 = 0;
  v77 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  if (v18 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v78, v78 + 8, __src.i8, v84, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v84, 2);
  }

  else if (v18 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v78, v78 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v29 = *__p;
  v30 = *(__p + 1);
  v63 = *(__p + 2);
  v65 = *(__p + 3);
  v31 = *(__p + 4);
  MIL::Fp16::GetFloat(&v81);
  __e = v32;
  std::vector<float>::vector[abi:ne200100](__src.i64, v31, &__e);
  if (v29)
  {
    v33 = v31;
    v34 = 0;
    v72 = v28;
    v60 = v29;
    v61 = v30;
    v66 = v33;
    do
    {
      if (v30)
      {
        v35 = 0;
        do
        {
          if (v63)
          {
            for (i = 0; i != v63; ++i)
            {
              if (v65)
              {
                v70 = 0;
                v71 = 0;
                do
                {
                  if (v33)
                  {
                    v36 = 0;
                    do
                    {
                      if (v73)
                      {
                        v37 = 0;
                        v38 = 0;
                        do
                        {
                          if (v28)
                          {
                            v39 = 0;
                            v40 = v71;
                            do
                            {
                              if (v39 | v37)
                              {
                                if (a10)
                                {
                                  LOWORD(__e) = v38;
                                  MIL::Fp16::GetFloat(&__e);
                                  v43 = v42;
                                  LOWORD(__e) = v41;
                                  MIL::Fp16::GetFloat(&__e);
                                  if (v43 < v44)
                                  {
                                    v41 = v41;
                                  }

                                  else
                                  {
                                    v41 = v38;
                                  }
                                }

                                else
                                {
                                  LOWORD(__e) = v38;
                                  MIL::Fp16::GetFloat(&__e);
                                  v46 = v45;
                                  LOWORD(__e) = v41;
                                  MIL::Fp16::GetFloat(&__e);
                                  if (v46 > v47)
                                  {
                                    v41 = v41;
                                  }

                                  else
                                  {
                                    v41 = v38;
                                  }
                                }
                              }

                              ++v39;
                              ++v40;
                              LODWORD(v38) = v41;
                              --v28;
                            }

                            while (v28);
                          }

                          else
                          {
                            v41 = v38;
                          }

                          ++v37;
                          v38 = v41;
                          v28 = v72;
                        }

                        while (v37 != v73);
                      }

                      else
                      {
                        LOWORD(v41) = 0;
                      }

                      LOWORD(__e) = v41;
                      MIL::Fp16::GetFloat(&__e);
                      v49 = v48 * *(__src.i64[0] + 4 * v36);
                      v50 = 0.0;
                      if (v49 != 0.0)
                      {
                        __e = 0;
                        v51 = frexp(v49, &__e);
                        v52 = ldexp(v51, 11);
                        v50 = ldexp(round(v52), __e - 11);
                      }

                      std::function<float ()(float)>::operator()(a9, v50);
                      if (v53 == INFINITY)
                      {
                        LOBYTE(v54) = -1;
                      }

                      else if (v53 == -INFINITY)
                      {
                        LOBYTE(v54) = 0;
                      }

                      else
                      {
                        v55 = llroundf(v53);
                        if (v55 >= 255)
                        {
                          v55 = 255;
                        }

                        v54 = v55 & ~(v55 >> 31);
                      }

                      v33 = v66;
                    }

                    while (v36 != v66);
                  }

                  ++v70;
                  v71 += v64;
                }

                while (v70 != v65);
              }
            }
          }

          ++v35;
          v30 = v61;
        }

        while (v35 != v61);
      }

      ++v34;
    }

    while (v34 != v60);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  if (__p)
  {
    v76 = __p;
    operator delete(__p);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }
}

void sub_2599E060C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v32 = *v30;
  if (*v30)
  {
    *(v30 + 8) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueMinMaxPool<signed char,MIL::Fp16>(char **__return_ptr a1@<X8>, uint64_t a2@<X0>, size_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, __int16 a8@<W6>, uint64_t a9@<X7>, char a10)
{
  v85 = *MEMORY[0x277D85DE8];
  v81 = a8;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (a3)
  {
    std::vector<unsigned char>::__append(a1, a3);
  }

  v68 = a1;
  v15 = *a4;
  v16 = *(a4 + 8);
  v17 = v16 - *a4;
  if (v17 != *(a5 + 8) - *a5)
  {
    v56 = "x_rank == o_shape.size()";
    v57 = 189;
    goto LABEL_71;
  }

  v18 = v17 >> 3;
  v19 = (v17 >> 3) - 2;
  v20 = *a6;
  if (v19 != (*(a6 + 8) - *a6) >> 2)
  {
    v56 = "kernel_sizes.size() == num_spatial_dims";
    v57 = 190;
    goto LABEL_71;
  }

  v21 = *a7;
  if (v19 != (*(a7 + 8) - *a7) >> 2)
  {
    v56 = "strides.size() == num_spatial_dims";
    v57 = 191;
LABEL_71:
    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v57, v56);
  }

  if (v19 == 3)
  {
    if (*v20 == 1)
    {
      if (*v21 == 1)
      {
        v22 = 4 * v18 - 12;
        v23 = (v21 + v22);
        v62 = v21[v18 - 4];
        v24 = (v20 + v22);
        v73 = v20[v18 - 4];
        goto LABEL_13;
      }

      v58 = "sz == 1";
      v59 = 202;
    }

    else
    {
      v58 = "kd == 1";
      v59 = 201;
    }

    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v59, v58);
  }

  v25 = 4 * v18;
  if (v19 <= 1)
  {
    v27 = v25 - 12;
    v24 = (v20 + v27);
    v23 = (v21 + v27);
    v73 = 1;
    v62 = 1;
  }

  else
  {
    v73 = v20[v18 - 4];
    v26 = v25 - 12;
    v24 = (v20 + v26);
    v62 = v21[v18 - 4];
    v23 = (v21 + v26);
  }

LABEL_13:
  v64 = *v23;
  v28 = *v24;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v78, v15, v16, v18);
  __p = 0;
  v76 = 0;
  v77 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  if (v18 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v78, v78 + 8, __src.i8, v84, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v84, 2);
  }

  else if (v18 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v78, v78 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v29 = *__p;
  v30 = *(__p + 1);
  v63 = *(__p + 2);
  v65 = *(__p + 3);
  v31 = *(__p + 4);
  MIL::Fp16::GetFloat(&v81);
  __e = v32;
  std::vector<float>::vector[abi:ne200100](__src.i64, v31, &__e);
  if (v29)
  {
    v33 = v31;
    v34 = 0;
    v72 = v28;
    v60 = v29;
    v61 = v30;
    v66 = v33;
    do
    {
      if (v30)
      {
        v35 = 0;
        do
        {
          if (v63)
          {
            for (i = 0; i != v63; ++i)
            {
              if (v65)
              {
                v70 = 0;
                v71 = 0;
                do
                {
                  if (v33)
                  {
                    v36 = 0;
                    do
                    {
                      if (v73)
                      {
                        v37 = 0;
                        v38 = 0;
                        do
                        {
                          if (v28)
                          {
                            v39 = 0;
                            v40 = v71;
                            do
                            {
                              if (v39 | v37)
                              {
                                if (a10)
                                {
                                  LOWORD(__e) = v38;
                                  MIL::Fp16::GetFloat(&__e);
                                  v43 = v42;
                                  LOWORD(__e) = v41;
                                  MIL::Fp16::GetFloat(&__e);
                                  if (v43 < v44)
                                  {
                                    v41 = v41;
                                  }

                                  else
                                  {
                                    v41 = v38;
                                  }
                                }

                                else
                                {
                                  LOWORD(__e) = v38;
                                  MIL::Fp16::GetFloat(&__e);
                                  v46 = v45;
                                  LOWORD(__e) = v41;
                                  MIL::Fp16::GetFloat(&__e);
                                  if (v46 > v47)
                                  {
                                    v41 = v41;
                                  }

                                  else
                                  {
                                    v41 = v38;
                                  }
                                }
                              }

                              ++v39;
                              ++v40;
                              LODWORD(v38) = v41;
                              --v28;
                            }

                            while (v28);
                          }

                          else
                          {
                            v41 = v38;
                          }

                          ++v37;
                          v38 = v41;
                          v28 = v72;
                        }

                        while (v37 != v73);
                      }

                      else
                      {
                        LOWORD(v41) = 0;
                      }

                      LOWORD(__e) = v41;
                      MIL::Fp16::GetFloat(&__e);
                      v49 = v48 * *(__src.i64[0] + 4 * v36);
                      v50 = 0.0;
                      if (v49 != 0.0)
                      {
                        __e = 0;
                        v51 = frexp(v49, &__e);
                        v52 = ldexp(v51, 11);
                        v50 = ldexp(round(v52), __e - 11);
                      }

                      std::function<float ()(float)>::operator()(a9, v50);
                      if (v53 == INFINITY)
                      {
                        v54 = 127;
                      }

                      else if (v53 == -INFINITY)
                      {
                        v54 = 0x80;
                      }

                      else
                      {
                        v55 = llroundf(v53);
                        if (v55 >= 127)
                        {
                          v55 = 127;
                        }

                        if (v55 <= -128)
                        {
                          v54 = 0x80;
                        }

                        else
                        {
                          v54 = v55;
                        }
                      }

                      v33 = v66;
                    }

                    while (v36 != v66);
                  }

                  ++v70;
                  v71 += v64;
                }

                while (v70 != v65);
              }
            }
          }

          ++v35;
          v30 = v61;
        }

        while (v35 != v61);
      }

      ++v34;
    }

    while (v34 != v60);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  if (__p)
  {
    v76 = __p;
    operator delete(__p);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }
}

void sub_2599E0C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v32 = *v30;
  if (*v30)
  {
    *(v30 + 8) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueMinMaxPool<MIL::Fp16,unsigned char>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int16 a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, char a10)
{
  v76 = *MEMORY[0x277D85DE8];
  v72 = a7;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<MIL::Fp16>::resize(a9, a2);
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = v15 - *a3;
  if (v16 != *(a4 + 8) - *a4)
  {
    v47 = "x_rank == o_shape.size()";
    v48 = 189;
    goto LABEL_55;
  }

  v17 = v16 >> 3;
  v18 = (v16 >> 3) - 2;
  v19 = *a5;
  if (v18 != (*(a5 + 8) - *a5) >> 2)
  {
    v47 = "kernel_sizes.size() == num_spatial_dims";
    v48 = 190;
    goto LABEL_55;
  }

  v20 = *a6;
  if (v18 != (*(a6 + 8) - *a6) >> 2)
  {
    v47 = "strides.size() == num_spatial_dims";
    v48 = 191;
LABEL_55:
    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v48, v47);
  }

  if (v18 == 3)
  {
    if (*v19 == 1)
    {
      if (*v20 == 1)
      {
        v21 = 4 * v17 - 12;
        v22 = (v20 + v21);
        v53 = v20[v17 - 4];
        v23 = (v19 + v21);
        v64 = v19[v17 - 4];
        goto LABEL_11;
      }

      v49 = "sz == 1";
      v50 = 202;
    }

    else
    {
      v49 = "kd == 1";
      v50 = 201;
    }

    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v50, v49);
  }

  if (v18 <= 1)
  {
    v25 = 4 * v17 - 12;
    v23 = (v19 + v25);
    v22 = (v20 + v25);
    v64 = 1;
    v53 = 1;
  }

  else
  {
    v64 = v19[v17 - 4];
    v24 = 4 * v17 - 12;
    v23 = (v19 + v24);
    v53 = v20[v17 - 4];
    v22 = (v20 + v24);
  }

LABEL_11:
  v55 = *v22;
  v26 = *v23;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v69, v14, v15, v17);
  __p = 0;
  v67 = 0;
  v68 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  if (v17 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v69, v69 + 8, __src.i8, v75, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v75, 2);
  }

  else if (v17 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v69, v69 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v27 = *__p;
  v28 = *(__p + 1);
  v54 = *(__p + 2);
  v56 = *(__p + 3);
  v29 = *(__p + 4);
  MIL::Fp16::GetFloat(&v72);
  __e = v30;
  std::vector<float>::vector[abi:ne200100](__src.i64, v29, &__e);
  if (v27)
  {
    v31 = 0;
    v63 = v26;
    v51 = v27;
    v52 = v28;
    v57 = v29;
    do
    {
      if (v28)
      {
        v32 = 0;
        do
        {
          if (v54)
          {
            for (i = 0; i != v54; ++i)
            {
              if (v56)
              {
                v62 = 0;
                for (j = 0; j != v56; ++j)
                {
                  if (v29)
                  {
                    v33 = 0;
                    do
                    {
                      v34 = a10 - 1;
                      if (v64)
                      {
                        v35 = 0;
                        v34 = a10 - 1;
                        do
                        {
                          if (v26)
                          {
                            v36 = 0;
                            v37 = v62;
                            do
                            {
                              v39 = *(a1 + Index);
                              if (v36 | v35)
                              {
                                if (a10)
                                {
                                  if (v34 <= v39)
                                  {
                                    v34 = *(a1 + Index);
                                  }
                                }

                                else if (v34 >= v39)
                                {
                                  v34 = *(a1 + Index);
                                }
                              }

                              else
                              {
                                v34 = *(a1 + Index);
                              }

                              ++v36;
                              ++v37;
                              --v26;
                            }

                            while (v26);
                          }

                          ++v35;
                          v26 = v63;
                        }

                        while (v35 != v64);
                      }

                      v40 = *(__src.i64[0] + 4 * v33) * v34;
                      v41 = 0.0;
                      if (v40 != 0.0)
                      {
                        __e = 0;
                        v42 = frexp(v40, &__e);
                        v43 = ldexp(v42, 11);
                        v41 = ldexp(round(v43), __e - 11);
                      }

                      v44 = std::function<float ()(float)>::operator()(a8, v41);
                      v29 = v57;
                      v46 = MIL::Fp16::FromFloat(v44, v45);
                    }

                    while (v33 != v57);
                  }

                  v62 += v55;
                }
              }
            }
          }

          ++v32;
          v28 = v52;
        }

        while (v32 != v52);
      }

      ++v31;
    }

    while (v31 != v51);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  if (__p)
  {
    v67 = __p;
    operator delete(__p);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }
}

void sub_2599E11FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v31 = *a18;
  if (*a18)
  {
    *(a18 + 8) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueMinMaxPool<unsigned char,unsigned char>(char **__return_ptr a1@<X8>, uint64_t a2@<X0>, size_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, __int16 a8@<W6>, uint64_t a9@<X7>, char a10)
{
  v77 = *MEMORY[0x277D85DE8];
  v73 = a8;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (a3)
  {
    std::vector<unsigned char>::__append(a1, a3);
  }

  v14 = *a4;
  v15 = *(a4 + 8);
  v16 = v15 - *a4;
  if (v16 != *(a5 + 8) - *a5)
  {
    v48 = "x_rank == o_shape.size()";
    v49 = 189;
    goto LABEL_64;
  }

  v17 = v16 >> 3;
  v18 = (v16 >> 3) - 2;
  v19 = *a6;
  if (v18 != (*(a6 + 8) - *a6) >> 2)
  {
    v48 = "kernel_sizes.size() == num_spatial_dims";
    v49 = 190;
    goto LABEL_64;
  }

  v20 = *a7;
  if (v18 != (*(a7 + 8) - *a7) >> 2)
  {
    v48 = "strides.size() == num_spatial_dims";
    v49 = 191;
LABEL_64:
    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v49, v48);
  }

  if (v18 == 3)
  {
    if (*v19 == 1)
    {
      if (*v20 == 1)
      {
        v21 = 4 * v17 - 12;
        v22 = (v20 + v21);
        v54 = v20[v17 - 4];
        v23 = (v19 + v21);
        v65 = v19[v17 - 4];
        goto LABEL_13;
      }

      v50 = "sz == 1";
      v51 = 202;
    }

    else
    {
      v50 = "kd == 1";
      v51 = 201;
    }

    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v51, v50);
  }

  v24 = 4 * v17;
  if (v18 <= 1)
  {
    v26 = v24 - 12;
    v23 = (v19 + v26);
    v22 = (v20 + v26);
    v65 = 1;
    v54 = 1;
  }

  else
  {
    v65 = v19[v17 - 4];
    v25 = v24 - 12;
    v23 = (v19 + v25);
    v54 = v20[v17 - 4];
    v22 = (v20 + v25);
  }

LABEL_13:
  v56 = *v22;
  v27 = *v23;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v70, v14, v15, v17);
  __p = 0;
  v68 = 0;
  v69 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  if (v17 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v70, v70 + 8, __src.i8, v76, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v76, 2);
  }

  else if (v17 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v70, v70 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v28 = *__p;
  v29 = *(__p + 1);
  v55 = *(__p + 2);
  v57 = *(__p + 3);
  v30 = *(__p + 4);
  MIL::Fp16::GetFloat(&v73);
  __e = v31;
  std::vector<float>::vector[abi:ne200100](__src.i64, v30, &__e);
  if (v28)
  {
    v32 = 0;
    v64 = v27;
    v52 = v28;
    v53 = v29;
    v58 = v30;
    do
    {
      if (v29)
      {
        v33 = 0;
        do
        {
          if (v55)
          {
            for (i = 0; i != v55; ++i)
            {
              if (v57)
              {
                v63 = 0;
                for (j = 0; j != v57; ++j)
                {
                  if (v30)
                  {
                    v34 = 0;
                    do
                    {
                      v35 = a10 - 1;
                      if (v65)
                      {
                        v36 = 0;
                        v35 = a10 - 1;
                        do
                        {
                          if (v27)
                          {
                            v37 = 0;
                            v38 = v63;
                            do
                            {
                              v40 = *(a2 + Index);
                              if (v37 | v36)
                              {
                                if (a10)
                                {
                                  if (v35 <= v40)
                                  {
                                    v35 = *(a2 + Index);
                                  }
                                }

                                else if (v35 >= v40)
                                {
                                  v35 = *(a2 + Index);
                                }
                              }

                              else
                              {
                                v35 = *(a2 + Index);
                              }

                              ++v37;
                              ++v38;
                              --v27;
                            }

                            while (v27);
                          }

                          ++v36;
                          v27 = v64;
                        }

                        while (v36 != v65);
                      }

                      v41 = *(__src.i64[0] + 4 * v34) * v35;
                      v42 = 0.0;
                      if (v41 != 0.0)
                      {
                        __e = 0;
                        v43 = frexp(v41, &__e);
                        v44 = ldexp(v43, 11);
                        v42 = ldexp(round(v44), __e - 11);
                      }

                      std::function<float ()(float)>::operator()(a9, v42);
                      v30 = v58;
                      if (v45 == INFINITY)
                      {
                        LOBYTE(v46) = -1;
                      }

                      else if (v45 == -INFINITY)
                      {
                        LOBYTE(v46) = 0;
                      }

                      else
                      {
                        v47 = llroundf(v45);
                        if (v47 >= 255)
                        {
                          v47 = 255;
                        }

                        v46 = v47 & ~(v47 >> 31);
                      }
                    }

                    while (v34 != v58);
                  }

                  v63 += v56;
                }
              }
            }
          }

          ++v33;
          v29 = v53;
        }

        while (v33 != v53);
      }

      ++v32;
    }

    while (v32 != v52);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  if (__p)
  {
    v68 = __p;
    operator delete(__p);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }
}

void sub_2599E17CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v31 = *a18;
  if (*a18)
  {
    *(a18 + 8) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueMinMaxPool<signed char,unsigned char>(char **__return_ptr a1@<X8>, uint64_t a2@<X0>, size_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, __int16 a8@<W6>, uint64_t a9@<X7>, char a10)
{
  v77 = *MEMORY[0x277D85DE8];
  v73 = a8;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (a3)
  {
    std::vector<unsigned char>::__append(a1, a3);
  }

  v14 = *a4;
  v15 = *(a4 + 8);
  v16 = v15 - *a4;
  if (v16 != *(a5 + 8) - *a5)
  {
    v48 = "x_rank == o_shape.size()";
    v49 = 189;
    goto LABEL_66;
  }

  v17 = v16 >> 3;
  v18 = (v16 >> 3) - 2;
  v19 = *a6;
  if (v18 != (*(a6 + 8) - *a6) >> 2)
  {
    v48 = "kernel_sizes.size() == num_spatial_dims";
    v49 = 190;
    goto LABEL_66;
  }

  v20 = *a7;
  if (v18 != (*(a7 + 8) - *a7) >> 2)
  {
    v48 = "strides.size() == num_spatial_dims";
    v49 = 191;
LABEL_66:
    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v49, v48);
  }

  if (v18 == 3)
  {
    if (*v19 == 1)
    {
      if (*v20 == 1)
      {
        v21 = 4 * v17 - 12;
        v22 = (v20 + v21);
        v54 = v20[v17 - 4];
        v23 = (v19 + v21);
        v65 = v19[v17 - 4];
        goto LABEL_13;
      }

      v50 = "sz == 1";
      v51 = 202;
    }

    else
    {
      v50 = "kd == 1";
      v51 = 201;
    }

    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v51, v50);
  }

  v24 = 4 * v17;
  if (v18 <= 1)
  {
    v26 = v24 - 12;
    v23 = (v19 + v26);
    v22 = (v20 + v26);
    v65 = 1;
    v54 = 1;
  }

  else
  {
    v65 = v19[v17 - 4];
    v25 = v24 - 12;
    v23 = (v19 + v25);
    v54 = v20[v17 - 4];
    v22 = (v20 + v25);
  }

LABEL_13:
  v56 = *v22;
  v27 = *v23;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v70, v14, v15, v17);
  __p = 0;
  v68 = 0;
  v69 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  if (v17 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v70, v70 + 8, __src.i8, v76, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v76, 2);
  }

  else if (v17 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v70, v70 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v28 = *__p;
  v29 = *(__p + 1);
  v55 = *(__p + 2);
  v57 = *(__p + 3);
  v30 = *(__p + 4);
  MIL::Fp16::GetFloat(&v73);
  __e = v31;
  std::vector<float>::vector[abi:ne200100](__src.i64, v30, &__e);
  if (v28)
  {
    v32 = 0;
    v64 = v27;
    v52 = v28;
    v53 = v29;
    v58 = v30;
    do
    {
      if (v29)
      {
        v33 = 0;
        do
        {
          if (v55)
          {
            for (i = 0; i != v55; ++i)
            {
              if (v57)
              {
                v63 = 0;
                for (j = 0; j != v57; ++j)
                {
                  if (v30)
                  {
                    v34 = 0;
                    do
                    {
                      v35 = a10 - 1;
                      if (v65)
                      {
                        v36 = 0;
                        v35 = a10 - 1;
                        do
                        {
                          if (v27)
                          {
                            v37 = 0;
                            v38 = v63;
                            do
                            {
                              v40 = *(a2 + Index);
                              if (v37 | v36)
                              {
                                if (a10)
                                {
                                  if (v35 <= v40)
                                  {
                                    v35 = *(a2 + Index);
                                  }
                                }

                                else if (v35 >= v40)
                                {
                                  v35 = *(a2 + Index);
                                }
                              }

                              else
                              {
                                v35 = *(a2 + Index);
                              }

                              ++v37;
                              ++v38;
                              --v27;
                            }

                            while (v27);
                          }

                          ++v36;
                          v27 = v64;
                        }

                        while (v36 != v65);
                      }

                      v41 = *(__src.i64[0] + 4 * v34) * v35;
                      v42 = 0.0;
                      if (v41 != 0.0)
                      {
                        __e = 0;
                        v43 = frexp(v41, &__e);
                        v44 = ldexp(v43, 11);
                        v42 = ldexp(round(v44), __e - 11);
                      }

                      std::function<float ()(float)>::operator()(a9, v42);
                      v30 = v58;
                      if (v45 == INFINITY)
                      {
                        v46 = 127;
                      }

                      else if (v45 == -INFINITY)
                      {
                        v46 = 0x80;
                      }

                      else
                      {
                        v47 = llroundf(v45);
                        if (v47 >= 127)
                        {
                          v47 = 127;
                        }

                        if (v47 <= -128)
                        {
                          v46 = 0x80;
                        }

                        else
                        {
                          v46 = v47;
                        }
                      }
                    }

                    while (v34 != v58);
                  }

                  v63 += v56;
                }
              }
            }
          }

          ++v33;
          v29 = v53;
        }

        while (v33 != v53);
      }

      ++v32;
    }

    while (v32 != v52);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  if (__p)
  {
    v68 = __p;
    operator delete(__p);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }
}

void sub_2599E1DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v31 = *a18;
  if (*a18)
  {
    *(a18 + 8) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueMinMaxPool<MIL::Fp16,signed char>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int16 a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, char a10)
{
  v78 = *MEMORY[0x277D85DE8];
  v74 = a7;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<MIL::Fp16>::resize(a9, a2);
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = v15 - *a3;
  if (v16 != *(a4 + 8) - *a4)
  {
    v48 = "x_rank == o_shape.size()";
    v49 = 189;
    goto LABEL_58;
  }

  v17 = v16 >> 3;
  v18 = (v16 >> 3) - 2;
  v19 = *a5;
  if (v18 != (*(a5 + 8) - *a5) >> 2)
  {
    v48 = "kernel_sizes.size() == num_spatial_dims";
    v49 = 190;
    goto LABEL_58;
  }

  v20 = *a6;
  if (v18 != (*(a6 + 8) - *a6) >> 2)
  {
    v48 = "strides.size() == num_spatial_dims";
    v49 = 191;
LABEL_58:
    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v49, v48);
  }

  if (v18 == 3)
  {
    if (*v19 == 1)
    {
      if (*v20 == 1)
      {
        v21 = 4 * v17 - 12;
        v22 = (v20 + v21);
        v54 = v20[v17 - 4];
        v23 = (v19 + v21);
        v66 = v19[v17 - 4];
        goto LABEL_11;
      }

      v50 = "sz == 1";
      v51 = 202;
    }

    else
    {
      v50 = "kd == 1";
      v51 = 201;
    }

    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v51, v50);
  }

  if (v18 <= 1)
  {
    v25 = 4 * v17 - 12;
    v23 = (v19 + v25);
    v22 = (v20 + v25);
    v66 = 1;
    v54 = 1;
  }

  else
  {
    v66 = v19[v17 - 4];
    v24 = 4 * v17 - 12;
    v23 = (v19 + v24);
    v54 = v20[v17 - 4];
    v22 = (v20 + v24);
  }

LABEL_11:
  v56 = *v22;
  v26 = *v23;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v71, v14, v15, v17);
  __p = 0;
  v69 = 0;
  v70 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  if (v17 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v71, v71 + 8, __src.i8, v77, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v77, 2);
  }

  else if (v17 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v71, v71 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v27 = *__p;
  v28 = *(__p + 1);
  v55 = *(__p + 2);
  v57 = *(__p + 3);
  v29 = *(__p + 4);
  MIL::Fp16::GetFloat(&v74);
  __e = v30;
  std::vector<float>::vector[abi:ne200100](__src.i64, v29, &__e);
  if (v27)
  {
    v31 = 0;
    if (a10)
    {
      v32 = 0x80;
    }

    else
    {
      v32 = 127;
    }

    v63 = v32;
    v65 = v26;
    v52 = v27;
    v53 = v28;
    v58 = v29;
    do
    {
      if (v28)
      {
        v33 = 0;
        do
        {
          if (v55)
          {
            for (i = 0; i != v55; ++i)
            {
              if (v57)
              {
                v64 = 0;
                for (j = 0; j != v57; ++j)
                {
                  if (v29)
                  {
                    v34 = 0;
                    do
                    {
                      v35 = v63;
                      if (v66)
                      {
                        v36 = 0;
                        v35 = v63;
                        do
                        {
                          if (v26)
                          {
                            v37 = 0;
                            v38 = v64;
                            do
                            {
                              v40 = *(a1 + Index);
                              if (v37 | v36)
                              {
                                if (a10)
                                {
                                  if (v35 <= v40)
                                  {
                                    v35 = *(a1 + Index);
                                  }
                                }

                                else if (v35 > v40)
                                {
                                  v35 = *(a1 + Index);
                                }
                              }

                              else
                              {
                                v35 = *(a1 + Index);
                              }

                              ++v37;
                              ++v38;
                              --v26;
                            }

                            while (v26);
                          }

                          ++v36;
                          v26 = v65;
                        }

                        while (v36 != v66);
                      }

                      v41 = *(__src.i64[0] + 4 * v34) * v35;
                      v42 = 0.0;
                      if (v41 != 0.0)
                      {
                        __e = 0;
                        v43 = frexp(v41, &__e);
                        v44 = ldexp(v43, 11);
                        v42 = ldexp(round(v44), __e - 11);
                      }

                      v45 = std::function<float ()(float)>::operator()(a8, v42);
                      v29 = v58;
                      v47 = MIL::Fp16::FromFloat(v45, v46);
                    }

                    while (v34 != v58);
                  }

                  v64 += v56;
                }
              }
            }
          }

          ++v33;
          v28 = v53;
        }

        while (v33 != v53);
      }

      ++v31;
    }

    while (v31 != v52);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  if (__p)
  {
    v69 = __p;
    operator delete(__p);
  }

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }
}

void sub_2599E2340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v31 = *a18;
  if (*a18)
  {
    *(a18 + 8) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueMinMaxPool<unsigned char,signed char>(char **__return_ptr a1@<X8>, uint64_t a2@<X0>, size_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, __int16 a8@<W6>, uint64_t a9@<X7>, char a10)
{
  v79 = *MEMORY[0x277D85DE8];
  v75 = a8;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (a3)
  {
    std::vector<unsigned char>::__append(a1, a3);
  }

  v14 = *a4;
  v15 = *(a4 + 8);
  v16 = v15 - *a4;
  if (v16 != *(a5 + 8) - *a5)
  {
    v49 = "x_rank == o_shape.size()";
    v50 = 189;
    goto LABEL_67;
  }

  v17 = v16 >> 3;
  v18 = (v16 >> 3) - 2;
  v19 = *a6;
  if (v18 != (*(a6 + 8) - *a6) >> 2)
  {
    v49 = "kernel_sizes.size() == num_spatial_dims";
    v50 = 190;
    goto LABEL_67;
  }

  v20 = *a7;
  if (v18 != (*(a7 + 8) - *a7) >> 2)
  {
    v49 = "strides.size() == num_spatial_dims";
    v50 = 191;
LABEL_67:
    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v50, v49);
  }

  if (v18 == 3)
  {
    if (*v19 == 1)
    {
      if (*v20 == 1)
      {
        v21 = 4 * v17 - 12;
        v22 = (v20 + v21);
        v55 = v20[v17 - 4];
        v23 = (v19 + v21);
        v67 = v19[v17 - 4];
        goto LABEL_13;
      }

      v51 = "sz == 1";
      v52 = 202;
    }

    else
    {
      v51 = "kd == 1";
      v52 = 201;
    }

    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v52, v51);
  }

  v24 = 4 * v17;
  if (v18 <= 1)
  {
    v26 = v24 - 12;
    v23 = (v19 + v26);
    v22 = (v20 + v26);
    v67 = 1;
    v55 = 1;
  }

  else
  {
    v67 = v19[v17 - 4];
    v25 = v24 - 12;
    v23 = (v19 + v25);
    v55 = v20[v17 - 4];
    v22 = (v20 + v25);
  }

LABEL_13:
  v57 = *v22;
  v27 = *v23;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v72, v14, v15, v17);
  __p = 0;
  v70 = 0;
  v71 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  if (v17 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v72, v72 + 8, __src.i8, v78, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v78, 2);
  }

  else if (v17 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v72, v72 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v28 = *__p;
  v29 = *(__p + 1);
  v56 = *(__p + 2);
  v58 = *(__p + 3);
  v30 = *(__p + 4);
  MIL::Fp16::GetFloat(&v75);
  __e = v31;
  std::vector<float>::vector[abi:ne200100](__src.i64, v30, &__e);
  if (v28)
  {
    v32 = 0;
    if (a10)
    {
      v33 = 0x80;
    }

    else
    {
      v33 = 127;
    }

    v64 = v33;
    v66 = v27;
    v53 = v28;
    v54 = v29;
    v59 = v30;
    do
    {
      if (v29)
      {
        v34 = 0;
        do
        {
          if (v56)
          {
            for (i = 0; i != v56; ++i)
            {
              if (v58)
              {
                v65 = 0;
                for (j = 0; j != v58; ++j)
                {
                  if (v30)
                  {
                    v35 = 0;
                    do
                    {
                      v36 = v64;
                      if (v67)
                      {
                        v37 = 0;
                        v36 = v64;
                        do
                        {
                          if (v27)
                          {
                            v38 = 0;
                            v39 = v65;
                            do
                            {
                              v41 = *(a2 + Index);
                              if (v38 | v37)
                              {
                                if (a10)
                                {
                                  if (v36 <= v41)
                                  {
                                    v36 = *(a2 + Index);
                                  }
                                }

                                else if (v36 > v41)
                                {
                                  v36 = *(a2 + Index);
                                }
                              }

                              else
                              {
                                v36 = *(a2 + Index);
                              }

                              ++v38;
                              ++v39;
                              --v27;
                            }

                            while (v27);
                          }

                          ++v37;
                          v27 = v66;
                        }

                        while (v37 != v67);
                      }

                      v42 = *(__src.i64[0] + 4 * v35) * v36;
                      v43 = 0.0;
                      if (v42 != 0.0)
                      {
                        __e = 0;
                        v44 = frexp(v42, &__e);
                        v45 = ldexp(v44, 11);
                        v43 = ldexp(round(v45), __e - 11);
                      }

                      std::function<float ()(float)>::operator()(a9, v43);
                      v30 = v59;
                      if (v46 == INFINITY)
                      {
                        LOBYTE(v47) = -1;
                      }

                      else if (v46 == -INFINITY)
                      {
                        LOBYTE(v47) = 0;
                      }

                      else
                      {
                        v48 = llroundf(v46);
                        if (v48 >= 255)
                        {
                          v48 = 255;
                        }

                        v47 = v48 & ~(v48 >> 31);
                      }
                    }

                    while (v35 != v59);
                  }

                  v65 += v57;
                }
              }
            }
          }

          ++v34;
          v29 = v54;
        }

        while (v34 != v54);
      }

      ++v32;
    }

    while (v32 != v53);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  if (__p)
  {
    v70 = __p;
    operator delete(__p);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }
}

void sub_2599E291C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v31 = *a18;
  if (*a18)
  {
    *(a18 + 8) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueMinMaxPool<signed char,signed char>(char **__return_ptr a1@<X8>, uint64_t a2@<X0>, size_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, __int16 a8@<W6>, uint64_t a9@<X7>, char a10)
{
  v79 = *MEMORY[0x277D85DE8];
  v75 = a8;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (a3)
  {
    std::vector<unsigned char>::__append(a1, a3);
  }

  v14 = *a4;
  v15 = *(a4 + 8);
  v16 = v15 - *a4;
  if (v16 != *(a5 + 8) - *a5)
  {
    v49 = "x_rank == o_shape.size()";
    v50 = 189;
    goto LABEL_69;
  }

  v17 = v16 >> 3;
  v18 = (v16 >> 3) - 2;
  v19 = *a6;
  if (v18 != (*(a6 + 8) - *a6) >> 2)
  {
    v49 = "kernel_sizes.size() == num_spatial_dims";
    v50 = 190;
    goto LABEL_69;
  }

  v20 = *a7;
  if (v18 != (*(a7 + 8) - *a7) >> 2)
  {
    v49 = "strides.size() == num_spatial_dims";
    v50 = 191;
LABEL_69:
    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v50, v49);
  }

  if (v18 == 3)
  {
    if (*v19 == 1)
    {
      if (*v20 == 1)
      {
        v21 = 4 * v17 - 12;
        v22 = (v20 + v21);
        v55 = v20[v17 - 4];
        v23 = (v19 + v21);
        v67 = v19[v17 - 4];
        goto LABEL_13;
      }

      v51 = "sz == 1";
      v52 = 202;
    }

    else
    {
      v51 = "kd == 1";
      v52 = 201;
    }

    __assert_rtn("ComputeValueMinMaxPool", "PePoolCpu.cpp", v52, v51);
  }

  v24 = 4 * v17;
  if (v18 <= 1)
  {
    v26 = v24 - 12;
    v23 = (v19 + v26);
    v22 = (v20 + v26);
    v67 = 1;
    v55 = 1;
  }

  else
  {
    v67 = v19[v17 - 4];
    v25 = v24 - 12;
    v23 = (v19 + v25);
    v55 = v20[v17 - 4];
    v22 = (v20 + v25);
  }

LABEL_13:
  v57 = *v22;
  v27 = *v23;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v72, v14, v15, v17);
  __p = 0;
  v70 = 0;
  v71 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  if (v17 == 3)
  {
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v72, v72 + 8, __src.i8, v78, 2);
    __src = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __src.i8, v78, 2);
  }

  else if (v17 == 4)
  {
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&v72, v72 + 8, &__src);
    __src.i64[0] = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, &__src);
  }

  v28 = *__p;
  v29 = *(__p + 1);
  v56 = *(__p + 2);
  v58 = *(__p + 3);
  v30 = *(__p + 4);
  MIL::Fp16::GetFloat(&v75);
  __e = v31;
  std::vector<float>::vector[abi:ne200100](__src.i64, v30, &__e);
  if (v28)
  {
    v32 = 0;
    if (a10)
    {
      v33 = 0x80;
    }

    else
    {
      v33 = 127;
    }

    v64 = v33;
    v66 = v27;
    v53 = v28;
    v54 = v29;
    v59 = v30;
    do
    {
      if (v29)
      {
        v34 = 0;
        do
        {
          if (v56)
          {
            for (i = 0; i != v56; ++i)
            {
              if (v58)
              {
                v65 = 0;
                for (j = 0; j != v58; ++j)
                {
                  if (v30)
                  {
                    v35 = 0;
                    do
                    {
                      v36 = v64;
                      if (v67)
                      {
                        v37 = 0;
                        v36 = v64;
                        do
                        {
                          if (v27)
                          {
                            v38 = 0;
                            v39 = v65;
                            do
                            {
                              v41 = *(a2 + Index);
                              if (v38 | v37)
                              {
                                if (a10)
                                {
                                  if (v36 <= v41)
                                  {
                                    v36 = *(a2 + Index);
                                  }
                                }

                                else if (v36 > v41)
                                {
                                  v36 = *(a2 + Index);
                                }
                              }

                              else
                              {
                                v36 = *(a2 + Index);
                              }

                              ++v38;
                              ++v39;
                              --v27;
                            }

                            while (v27);
                          }

                          ++v37;
                          v27 = v66;
                        }

                        while (v37 != v67);
                      }

                      v42 = *(__src.i64[0] + 4 * v35) * v36;
                      v43 = 0.0;
                      if (v42 != 0.0)
                      {
                        __e = 0;
                        v44 = frexp(v42, &__e);
                        v45 = ldexp(v44, 11);
                        v43 = ldexp(round(v45), __e - 11);
                      }

                      std::function<float ()(float)>::operator()(a9, v43);
                      v30 = v59;
                      if (v46 == INFINITY)
                      {
                        v47 = 127;
                      }

                      else if (v46 == -INFINITY)
                      {
                        v47 = 0x80;
                      }

                      else
                      {
                        v48 = llroundf(v46);
                        if (v48 >= 127)
                        {
                          v48 = 127;
                        }

                        if (v48 <= -128)
                        {
                          v47 = 0x80;
                        }

                        else
                        {
                          v47 = v48;
                        }
                      }
                    }

                    while (v35 != v59);
                  }

                  v65 += v57;
                }
              }
            }
          }

          ++v34;
          v29 = v54;
        }

        while (v34 != v54);
      }

      ++v32;
    }

    while (v32 != v53);
  }

  if (__src.i64[0])
  {
    __src.i64[1] = __src.i64[0];
    operator delete(__src.i64[0]);
  }

  if (__p)
  {
    v70 = __p;
    operator delete(__p);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }
}

void sub_2599E2F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v31 = *a18;
  if (*a18)
  {
    *(a18 + 8) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<float>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, __int32 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2599E30C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#1}>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2}>,MIL::Fp16 ()(MIL::Fp16)>::operator()(uint64_t a1, __int16 *a2)
{
  v5 = *a2;
  Float = MIL::Fp16::GetFloat(&v5);
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  return MIL::Fp16::FromFloat(Float, v3);
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2}>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#1}>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2}>,MIL::Fp16 ()(MIL::Fp16)>::operator()(uint64_t a1, __int16 *a2)
{
  v5 = *a2;
  Float = MIL::Fp16::GetFloat(&v5);
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  return MIL::Fp16::FromFloat(Float, v3);
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2}>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#1}>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2}>,MIL::Fp16 ()(MIL::Fp16)>::operator()(uint64_t a1, __int16 *a2)
{
  v5 = *a2;
  Float = MIL::Fp16::GetFloat(&v5);
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  return MIL::Fp16::FromFloat(Float, v3);
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2}>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,unsigned char>(unsigned char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(unsigned char)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,unsigned char>(unsigned char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(unsigned char)#1}>,unsigned char ()(unsigned char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,unsigned char>(unsigned char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(unsigned char)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,unsigned char>(unsigned char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(unsigned char)#1}>,unsigned char ()(unsigned char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,unsigned char>(unsigned char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(unsigned char)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,unsigned char>(unsigned char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(unsigned char)#1}>,unsigned char ()(unsigned char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,signed char>(signed char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(signed char)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,signed char>(signed char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(signed char)#1}>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,signed char>(signed char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(signed char)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,signed char>(signed char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(signed char)#2}>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,signed char>(signed char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(signed char)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,signed char>(signed char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(signed char)#1}>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,signed char>(signed char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(signed char)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,signed char>(signed char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(signed char)#2}>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,signed char>(signed char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(signed char)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,signed char>(signed char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(signed char)#1}>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,signed char>(signed char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(signed char)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,signed char>(signed char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(signed char)#2}>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ANEMachineIR::H2020::BasePeElementWiseBinary::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_2599E597C(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x310], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::PeAdd::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2020::Validators::ValidatePeAdd;
  v3[3] = v3;
  ANEMachineIR::H2020::BasePeElementWiseBinary::Make();
}

void sub_2599E6340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::PeAddAbs::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2020::Validators::ValidatePeAddAbs;
  v3[3] = v3;
  ANEMachineIR::H2020::BasePeElementWiseBinary::Make();
}

void sub_2599E6420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::PeAddMul::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2020::Validators::ValidatePeAddMul;
  v3[3] = v3;
  ANEMachineIR::H2020::BasePeElementWiseBinary::Make();
}

void sub_2599E6500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::PeAddSquare::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2020::Validators::ValidatePeAddSquare;
  v3[3] = v3;
  ANEMachineIR::H2020::BasePeElementWiseBinary::Make();
}

void sub_2599E65E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::PeEqual::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2020::Validators::ValidatePeEqual;
  v3[3] = v3;
  ANEMachineIR::H2020::BasePeElementWiseBinary::Make();
}

void sub_2599E66C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::PeGreater::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2020::Validators::ValidatePeGreater;
  v3[3] = v3;
  ANEMachineIR::H2020::BasePeElementWiseBinary::Make();
}

void sub_2599E67A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::PeGreaterEqual::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2020::Validators::ValidatePeGreaterEqual;
  v3[3] = v3;
  ANEMachineIR::H2020::BasePeElementWiseBinary::Make();
}

void sub_2599E6880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::PeLess::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2020::Validators::ValidatePeLess;
  v3[3] = v3;
  ANEMachineIR::H2020::BasePeElementWiseBinary::Make();
}

void sub_2599E6960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::PeLessEqual::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2020::Validators::ValidatePeLessEqual;
  v3[3] = v3;
  ANEMachineIR::H2020::BasePeElementWiseBinary::Make();
}

void sub_2599E6A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::PeMaximum::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2020::Validators::ValidatePeMaximum;
  v3[3] = v3;
  ANEMachineIR::H2020::BasePeElementWiseBinary::Make();
}

void sub_2599E6B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::PeMinimum::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2020::Validators::ValidatePeMinimum;
  v3[3] = v3;
  ANEMachineIR::H2020::BasePeElementWiseBinary::Make();
}

void sub_2599E6C00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::PeMul::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2020::Validators::ValidatePeMul;
  v3[3] = v3;
  ANEMachineIR::H2020::BasePeElementWiseBinary::Make();
}

void sub_2599E6CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::PeNotEqual::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2020::Validators::ValidatePeNotEqual;
  v3[3] = v3;
  ANEMachineIR::H2020::BasePeElementWiseBinary::Make();
}

void sub_2599E6DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::BasePeElementWiseUnary::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_2599E8388(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x260], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::PeAbs::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2020::Validators::ValidatePeAbs;
  v3[3] = v3;
  ANEMachineIR::H2020::BasePeElementWiseUnary::Make();
}

void sub_2599E8BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::PeSquare::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2020::Validators::ValidatePeSquare;
  v3[3] = v3;
  ANEMachineIR::H2020::BasePeElementWiseUnary::Make();
}

void sub_2599E8C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::NeActivation::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2599E9980(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::NeAdd::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2599EB26C(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::NeMaximum::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2599EC93C(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::NeMinimum::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2599EDF1C(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::NeMul::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2599EF790(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::NeSquare::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2599F0CF4(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void MilTranslator::Passes::FuseConvScale::Match(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v66 = *MEMORY[0x277D85DE8];
  MIL::Builder::BlockBuilder::GetOperations(&v57, *a1);
  v4 = v57;
  v5 = v58;
  if (v57 == v58)
  {
LABEL_12:
    __p = &v57;
    std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&__p);
    v10 = 0;
LABEL_13:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    if (!v10)
    {
      return;
    }

    goto LABEL_14;
  }

  while (1)
  {
    Operator = MIL::Builder::OperationBuilder::GetOperator(*v4);
    v7 = (*(*Operator + 16))(Operator);
    v8 = *(v7 + 23);
    if (v8 < 0)
    {
      break;
    }

    if (v8 == 7)
    {
      goto LABEL_7;
    }

LABEL_11:
    v4 += 16;
    if (v4 == v5)
    {
      goto LABEL_12;
    }
  }

  if (*(v7 + 8) != 7)
  {
    goto LABEL_11;
  }

  v7 = *v7;
LABEL_7:
  if (*v7 != 1667196270 || *(v7 + 3) != 1986948963)
  {
    goto LABEL_11;
  }

  v11 = *v4;
  v10 = *(v4 + 1);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __p = &v57;
  std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (!v11)
  {
    goto LABEL_13;
  }

  MIL::Builder::OperationBuilder::GetChildOperations(&v57, v11);
  if (v60 != 1 || (MIL::Builder::OperationBuilder::GetBlocks(&__p, v11), v12 = __p, v13 = v63, p_p = &__p, std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&p_p), v12 != v13))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_22;
  }

  v15 = *(v59 + 16);
  v14 = *(v59 + 24);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = MIL::Builder::OperationBuilder::GetOperator(v15);
  v17 = (*(*v16 + 16))(v16);
  v18 = *(v17 + 23);
  if (v18 < 0)
  {
    if (*(v17 + 8) != 6)
    {
      goto LABEL_35;
    }

    v17 = *v17;
  }

  else if (v18 != 6)
  {
    goto LABEL_35;
  }

  if (*v17 != 1834968430 || *(v17 + 4) != 27765)
  {
LABEL_35:
    v20 = MIL::Builder::OperationBuilder::GetOperator(v15);
    v21 = (*(*v20 + 16))(v20);
    v22 = *(v21 + 23);
    if (v22 < 0)
    {
      if (*(v21 + 8) != 6)
      {
        goto LABEL_84;
      }

      v21 = *v21;
    }

    else if (v22 != 6)
    {
      goto LABEL_84;
    }

    if (*v21 != 1834968432 || *(v21 + 4) != 27765)
    {
LABEL_84:
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      goto LABEL_85;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  ArgumentForParameter = MIL::Builder::OperationBuilder::GetArgumentForParameter();
  if (SHIBYTE(v64) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "y");
  v25 = MIL::Builder::OperationBuilder::GetArgumentForParameter();
  if (SHIBYTE(v64) < 0)
  {
    operator delete(__p);
  }

  if (ArgumentForParameter != MIL::Builder::OperationBuilder::GetOutput(v11) && v25 != MIL::Builder::OperationBuilder::GetOutput(v11))
  {
    goto LABEL_84;
  }

  Output = MIL::Builder::OperationBuilder::GetOutput(v11);
  v27 = (ArgumentForParameter == Output ? v25 : ArgumentForParameter);
  Value = MIL::Builder::Variable::TryGetValue(v27);
  if (!Value)
  {
    goto LABEL_84;
  }

  v29 = (ArgumentForParameter == Output ? ArgumentForParameter : v25);
  Type = MIL::Builder::Variable::TryGetType(v29);
  if (!Type)
  {
    goto LABEL_84;
  }

  v31 = MIL::IRValueType::AsTensorType(Type);
  v32 = (*(*Value + 32))(Value);
  v33 = (*(*v32 + 24))(v32);
  if (!v31)
  {
    goto LABEL_84;
  }

  v34 = v33;
  if (!v33)
  {
    goto LABEL_84;
  }

  v35 = (*(*v31 + 96))(v31);
  v36 = (*(*v34 + 96))(v34);
  v37 = *v36;
  v38 = v36[1];
  if (*v36 != v38)
  {
    v39 = v35[1];
    if (v39 == *v35)
    {
      goto LABEL_96;
    }

    if (*(v39 - 8) != *(v38 - 8))
    {
      goto LABEL_84;
    }

    v40 = v38 - v37;
    if (v40 != 8)
    {
      v41 = 0;
      v42 = v40 >> 3;
      while (v42 > v41)
      {
        v43 = MIL::IRDimension::AsConstant(*(v37 + 8 * v41));
        if ((*(*v43 + 48))(v43) != 1)
        {
          goto LABEL_84;
        }

        ++v41;
        v37 = *v36;
        v42 = (v36[1] - *v36) >> 3;
        if (v41 >= v42 - 1)
        {
          goto LABEL_69;
        }
      }

LABEL_96:
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }
  }

LABEL_69:
  v44 = MIL::Builder::OperationBuilder::GetOutput(v11);
  v45 = MIL::Builder::Variable::TryGetType(v44);
  if (v45)
  {
    v46 = MIL::IRValueType::AsTensorType(v45);
    if ((*(*v46 + 88))(v46) != 4)
    {
      goto LABEL_84;
    }
  }

  v55 = v11;
  v56 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "post_scale");
  v47 = ANEMachineIR::Utils::TryGetArgumentForParameter(&v55, &__p);
  if (SHIBYTE(v64) < 0)
  {
    operator delete(__p);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  if (v47 && !MIL::Builder::Variable::TryGetType(v47))
  {
    goto LABEL_84;
  }

  v48 = *(a1 + 8);
  v53 = *a1;
  v54 = v48;
  if (v48)
  {
    atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  OutputName = MIL::Builder::OperationBuilder::GetOutputName(v15);
  IsBlockOutput = ANEMachineIR::Utils::IsBlockOutput(&v53, OutputName);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  if (IsBlockOutput)
  {
    goto LABEL_84;
  }

  __p = v11;
  v63 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v64 = v15;
  v65 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::Builder::OperationBuilder> const*,std::shared_ptr<MIL::Builder::OperationBuilder> const*>(a2, &__p, &v66, 2uLL);
  for (i = 24; i != -8; i -= 16)
  {
    v52 = *(&__p + i);
    if (v52)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }
  }

LABEL_85:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

LABEL_22:
  std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(&v57);
  if (v10)
  {
LABEL_14:
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_2599F1804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  v29 = 24;
  while (1)
  {
    v30 = *(v27 + v29);
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    v29 -= 16;
    if (v29 == -8)
    {
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(&a14);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      _Unwind_Resume(a1);
    }
  }
}

void MilTranslator::Passes::FuseConvScale::Replace(MIL::Builder::OperationBuilder ***a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  if (a3[1] - *a3 == 32)
  {
    v130 = a4;
    v7 = *v5;
    v6 = *(v5 + 1);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = *a3;
      if ((a3[1] - *a3) <= 0x10)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }
    }

    v8 = *(v5 + 3);
    v131 = *(v5 + 2);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v129 = v8;
    std::string::basic_string[abi:ne200100]<0>(&v222, "ne_conv");
    v214 = v131;
    v215 = v129;
    if (v129)
    {
      atomic_fetch_add_explicit(&v129->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::Builder::BlockBuilder::AddOperation();
    if (v215)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v215);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "x");
    std::string::basic_string[abi:ne200100]<0>(&v222, "x");
    ArgumentForParameter = MIL::Builder::OperationBuilder::GetArgumentForParameter();
    Name = MIL::Builder::Variable::GetName(ArgumentForParameter);
    if (*(Name + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v210, *Name, *(Name + 8));
    }

    else
    {
      v11 = *Name;
      v210.__r_.__value_.__r.__words[2] = *(Name + 16);
      *&v210.__r_.__value_.__l.__data_ = v11;
    }

    MIL::Builder::OperationBuilder::AddInput();
    if (v213)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v213);
    }

    if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v210.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    if (v212 < 0)
    {
      operator delete(__p);
    }

    v14 = std::string::basic_string[abi:ne200100]<0>(&v222, "dense_kernel");
    v208 = v7;
    v209 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v206 = v216;
    v207 = v217;
    if (v217)
    {
      atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v14, &v208, &v206);
    if (v207)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v207);
    }

    if (v209)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v209);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    v15 = std::string::basic_string[abi:ne200100]<0>(&v222, "strides");
    v204 = v7;
    v205 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v202 = v216;
    v203 = v217;
    if (v217)
    {
      atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v15, &v204, &v202);
    if (v203)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v203);
    }

    if (v205)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v205);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    v16 = std::string::basic_string[abi:ne200100]<0>(&v222, "pad_mode");
    v200 = v7;
    v201 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v198 = v216;
    v199 = v217;
    if (v217)
    {
      atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v16, &v200, &v198);
    if (v199)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v199);
    }

    if (v201)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v201);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    v17 = std::string::basic_string[abi:ne200100]<0>(&v222, "pad");
    v196 = v7;
    v197 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v194 = v216;
    v195 = v217;
    if (v217)
    {
      atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v17, &v196, &v194);
    if (v195)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v195);
    }

    if (v197)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v197);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    v18 = std::string::basic_string[abi:ne200100]<0>(&v222, "dilations");
    v192 = v7;
    v193 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v190 = v216;
    v191 = v217;
    if (v217)
    {
      atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v18, &v192, &v190);
    if (v191)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v191);
    }

    if (v193)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v193);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    v19 = std::string::basic_string[abi:ne200100]<0>(&v222, "num_groups");
    v188 = v7;
    v189 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v186 = v216;
    v187 = v217;
    if (v217)
    {
      atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v19, &v188, &v186);
    if (v187)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v187);
    }

    if (v189)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v189);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    v20 = std::string::basic_string[abi:ne200100]<0>(&v222, "group_kernel_reuse");
    v184 = v7;
    v185 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v182 = v216;
    v183 = v217;
    if (v217)
    {
      atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v20, &v184, &v182);
    if (v183)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v183);
    }

    if (v185)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v185);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    v21 = std::string::basic_string[abi:ne200100]<0>(&v222, "bias");
    v180 = v7;
    v181 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v178 = v216;
    v179 = v217;
    if (v217)
    {
      atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v21, &v180, &v178);
    if (v179)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v179);
    }

    if (v181)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v181);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    v22 = std::string::basic_string[abi:ne200100]<0>(&v222, "acc_left_shift");
    v176 = v7;
    v177 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v174 = v216;
    v175 = v217;
    if (v217)
    {
      atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v22, &v176, &v174);
    if (v175)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v175);
    }

    if (v177)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v177);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    v23 = std::string::basic_string[abi:ne200100]<0>(&v222, "acc_bias_shift");
    v172 = v7;
    v173 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v170 = v216;
    v171 = v217;
    if (v217)
    {
      atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v23, &v172, &v170);
    if (v171)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v171);
    }

    if (v173)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v173);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    v24 = std::string::basic_string[abi:ne200100]<0>(&v222, "post_right_shift");
    v168 = v7;
    v169 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v166 = v216;
    v167 = v217;
    if (v217)
    {
      atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v24, &v168, &v166);
    if (v167)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v167);
    }

    if (v169)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v169);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    v25 = std::string::basic_string[abi:ne200100]<0>(&v222, "transposed");
    v164 = v7;
    v165 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v162 = v216;
    v163 = v217;
    if (v217)
    {
      atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v25, &v164, &v162);
    if (v163)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v163);
    }

    if (v165)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v165);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    v26 = std::string::basic_string[abi:ne200100]<0>(&v222, "pre_relu");
    v160 = v7;
    v161 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v158 = v216;
    v159 = v217;
    if (v217)
    {
      atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v26, &v160, &v158);
    if (v159)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v159);
    }

    if (v161)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v161);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    v27 = std::string::basic_string[abi:ne200100]<0>(&v222, "alternative_format_kernel_coefficients");
    v156 = v7;
    v157 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v154 = v216;
    v155 = v217;
    if (v217)
    {
      atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v27, &v156, &v154);
    if (v155)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v155);
    }

    if (v157)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v157);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    v28 = std::string::basic_string[abi:ne200100]<0>(&v222, "sparse_mask");
    v152 = v7;
    v153 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v150 = v216;
    v151 = v217;
    if (v217)
    {
      atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v28, &v152, &v150);
    if (v151)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v151);
    }

    if (v153)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v153);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    v29 = std::string::basic_string[abi:ne200100]<0>(&v222, "sparse_num_nonzero");
    v148 = v7;
    v149 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v146 = v216;
    v147 = v217;
    if (v217)
    {
      atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v29, &v148, &v146);
    if (v147)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v147);
    }

    if (v149)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v149);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    v30 = std::string::basic_string[abi:ne200100]<0>(&v222, "sparse_num_nonzero_per_filter");
    v144 = v7;
    v145 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v142 = v216;
    v143 = v217;
    if (v217)
    {
      atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v30, &v144, &v142);
    if (v143)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v143);
    }

    if (v145)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v145);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    v31 = std::string::basic_string[abi:ne200100]<0>(&v222, "palette_table");
    v140 = v7;
    v141 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v138 = v216;
    v139 = v217;
    if (v217)
    {
      atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::TryCopyOpInput(v31, &v140, &v138);
    if (v139)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v139);
    }

    if (v141)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v141);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v222, "x");
    v32 = MIL::Builder::OperationBuilder::GetArgumentForParameter();
    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v222, "y");
    v33 = MIL::Builder::OperationBuilder::GetArgumentForParameter();
    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    if (v32 == MIL::Builder::OperationBuilder::GetOutput(v7))
    {
      v34 = v33;
    }

    else
    {
      v34 = v32;
    }

    Value = MIL::Builder::Variable::GetValue(v34);
    v36 = MIL::IRValue::AsTensor(Value);
    v136 = v7;
    v137 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(&v222, "post_scale");
    v37 = ANEMachineIR::Utils::TryGetArgumentForParameter(&v136, &v222);
    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    if (v137)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v137);
    }

    memset(&v222, 0, sizeof(v222));
    if (v37)
    {
      Type = MIL::Builder::Variable::TryGetType(v37);
      v39 = MIL::IRValueType::AsTensorType(Type);
      if (MIL::IRTensorValueType::IsScalar(v39))
      {
        LOWORD(__src.__r_.__value_.__l.__data_) = MIL::Builder::Variable::GetScalarValue<MIL::Fp16>();
        std::vector<MIL::Fp16>::__assign_with_size[abi:ne200100]<MIL::Fp16 const*,MIL::Fp16 const*>(&v222.__r_.__value_.__l.__data_, &__src, &__src.__r_.__value_.__s.__data_[2], 1uLL);
      }

      else
      {
        v42 = (*(*Type + 16))(Type);
        std::vector<MIL::Fp16>::reserve(&v222, v42);
        v43 = MIL::Builder::Variable::GetValue(v37);
        MIL::IRValue::AsTensor(v43);
        v44 = 0;
        __src.__r_.__value_.__r.__words[0] = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
        __src.__r_.__value_.__l.__size_ = v45;
        while (v44 < (*(*Type + 16))(Type))
        {
          v46 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::At(&__src, v44);
          size = v222.__r_.__value_.__l.__size_;
          if (v222.__r_.__value_.__l.__size_ >= v222.__r_.__value_.__r.__words[2])
          {
            v49 = v222.__r_.__value_.__r.__words[0];
            v50 = v222.__r_.__value_.__l.__size_ - v222.__r_.__value_.__r.__words[0];
            v51 = (v222.__r_.__value_.__l.__size_ - v222.__r_.__value_.__r.__words[0]) >> 1;
            if (v51 <= -2)
            {
              std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
            }

            if (v222.__r_.__value_.__r.__words[2] - v222.__r_.__value_.__r.__words[0] <= v51 + 1)
            {
              v52 = v51 + 1;
            }

            else
            {
              v52 = v222.__r_.__value_.__r.__words[2] - v222.__r_.__value_.__r.__words[0];
            }

            if (v222.__r_.__value_.__r.__words[2] - v222.__r_.__value_.__r.__words[0] >= 0x7FFFFFFFFFFFFFFELL)
            {
              v53 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v53 = v52;
            }

            if (v53)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(&v222, v53);
            }

            v54 = (2 * v51);
            v55 = &v54[-((v222.__r_.__value_.__l.__size_ - v222.__r_.__value_.__r.__words[0]) >> 1)];
            *v54 = *v46;
            v48 = (v54 + 1);
            memcpy(v55, v49, v50);
            v56 = v222.__r_.__value_.__r.__words[0];
            v222.__r_.__value_.__r.__words[0] = v55;
            *&v222.__r_.__value_.__r.__words[1] = v48;
            if (v56)
            {
              operator delete(v56);
            }
          }

          else
          {
            *v222.__r_.__value_.__l.__size_ = *v46;
            v48 = size + 2;
          }

          v222.__r_.__value_.__l.__size_ = v48;
          ++v44;
        }
      }
    }

    else
    {
      v40 = (*(*v36 + 32))(v36);
      IsScalar = MIL::IRTensorValueType::IsScalar(v40);
      if (IsScalar)
      {
        LOWORD(__src.__r_.__value_.__l.__data_) = MIL::Fp16::FromFloat(IsScalar, 1.0);
        std::vector<MIL::Fp16>::__assign_with_size[abi:ne200100]<MIL::Fp16 const*,MIL::Fp16 const*>(&v222.__r_.__value_.__l.__data_, &__src, &__src.__r_.__value_.__s.__data_[2], 1uLL);
      }

      else
      {
        v57 = MIL::IRValue::AsTensor(v36);
        v58 = (*(*v57 + 32))(v57);
        v59 = (*(*v58 + 16))(v58);
        std::vector<MIL::Fp16>::reserve(&v222, v59);
        for (; v59; --v59)
        {
          v60 = MIL::Fp16::FromFloat(v60, 1.0);
          v61 = v222.__r_.__value_.__l.__size_;
          if (v222.__r_.__value_.__l.__size_ >= v222.__r_.__value_.__r.__words[2])
          {
            v63 = v222.__r_.__value_.__r.__words[0];
            v64 = v222.__r_.__value_.__l.__size_ - v222.__r_.__value_.__r.__words[0];
            v65 = (v222.__r_.__value_.__l.__size_ - v222.__r_.__value_.__r.__words[0]) >> 1;
            if (v65 <= -2)
            {
              std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
            }

            if (v222.__r_.__value_.__r.__words[2] - v222.__r_.__value_.__r.__words[0] <= v65 + 1)
            {
              v66 = v65 + 1;
            }

            else
            {
              v66 = v222.__r_.__value_.__r.__words[2] - v222.__r_.__value_.__r.__words[0];
            }

            if (v222.__r_.__value_.__r.__words[2] - v222.__r_.__value_.__r.__words[0] >= 0x7FFFFFFFFFFFFFFELL)
            {
              v67 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v67 = v66;
            }

            if (v67)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(&v222, v67);
            }

            v68 = (2 * v65);
            v69 = &v68[-((v222.__r_.__value_.__l.__size_ - v222.__r_.__value_.__r.__words[0]) >> 1)];
            *v68 = v60;
            v62 = (v68 + 1);
            memcpy(v69, v63, v64);
            v60 = v222.__r_.__value_.__r.__words[0];
            v222.__r_.__value_.__r.__words[0] = v69;
            *&v222.__r_.__value_.__r.__words[1] = v62;
            if (v60)
            {
              operator delete(v60);
            }
          }

          else
          {
            *v222.__r_.__value_.__l.__size_ = v60;
            v62 = v61 + 2;
          }

          v222.__r_.__value_.__l.__size_ = v62;
        }
      }
    }

    v70 = (*(*v36 + 32))(v36);
    v71 = (*(*v70 + 88))(v70);
    switch(v71)
    {
      case 14:
        v82 = (*(*v36 + 32))(v36);
        if (!MIL::IRTensorValueType::IsScalar(v82))
        {
          Data = MIL::IRTensorValue::GetDataView<unsigned char>();
          v221 = v109;
          if (v109)
          {
            v110 = 0;
            v111 = 0;
            v112 = v222.__r_.__value_.__r.__words[0];
            do
            {
              if (v111 >= (v222.__r_.__value_.__l.__size_ - v112) >> 1)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              MIL::Fp16::GetFloat((v112 + v110));
              v114 = v113;
              v115 = MIL::Util::Span<unsigned char const,18446744073709551615ul>::At(&Data, v111);
              LOBYTE(v116) = *v115;
              v117 = MIL::Fp16::FromFloat(v115, v114 * v116);
              v112 = v222.__r_.__value_.__r.__words[0];
              *(v222.__r_.__value_.__r.__words[0] + 2 * v111++) = v117;
              v110 += 2;
            }

            while (v111 < v221);
          }

          goto LABEL_337;
        }

        v83 = MEMORY[0x259CA9410](v36);
        std::string::basic_string[abi:ne200100]<0>(&__src, "post_scale");
        if (v222.__r_.__value_.__l.__size_ == v222.__r_.__value_.__r.__words[0])
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        Float = MIL::Fp16::GetFloat(v222.__r_.__value_.__l.__data_);
        LOBYTE(v85) = *v83;
        MIL::Fp16::FromFloat(Float, v86 * v85);
        MIL::Builder::OperationBuilder::AddInputFloat16();
        break;
      case 9:
        v78 = (*(*v36 + 32))(v36);
        if (!MIL::IRTensorValueType::IsScalar(v78))
        {
          Data = MIL::IRTensorValue::GetDataView<signed char>();
          v221 = v101;
          if (v101)
          {
            v102 = 0;
            v103 = 0;
            v104 = v222.__r_.__value_.__r.__words[0];
            do
            {
              if (v103 >= (v222.__r_.__value_.__l.__size_ - v104) >> 1)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              MIL::Fp16::GetFloat((v104 + v102));
              v106 = v105;
              v107 = MIL::Util::Span<signed char const,18446744073709551615ul>::At(&Data, v103);
              v108 = MIL::Fp16::FromFloat(v107, v106 * *v107);
              v104 = v222.__r_.__value_.__r.__words[0];
              *(v222.__r_.__value_.__r.__words[0] + 2 * v103++) = v108;
              v102 += 2;
            }

            while (v103 < v221);
          }

          goto LABEL_337;
        }

        v79 = MEMORY[0x259CA93E0](v36);
        std::string::basic_string[abi:ne200100]<0>(&__src, "post_scale");
        if (v222.__r_.__value_.__l.__size_ == v222.__r_.__value_.__r.__words[0])
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v80 = MIL::Fp16::GetFloat(v222.__r_.__value_.__l.__data_);
        MIL::Fp16::FromFloat(v80, v81 * *v79);
        MIL::Builder::OperationBuilder::AddInputFloat16();
        break;
      case 4:
        v72 = (*(*v36 + 32))(v36);
        if (MIL::IRTensorValueType::IsScalar(v72))
        {
          v73 = MEMORY[0x259CA93C0](v36);
          std::string::basic_string[abi:ne200100]<0>(&__src, "post_scale");
          if (v222.__r_.__value_.__l.__size_ == v222.__r_.__value_.__r.__words[0])
          {
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          MIL::Fp16::GetFloat(v222.__r_.__value_.__l.__data_);
          v75 = v74;
          v76 = MIL::Fp16::GetFloat(v73);
          MIL::Fp16::FromFloat(v76, v75 * v77);
          MIL::Builder::OperationBuilder::AddInputFloat16();
          break;
        }

        Data = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
        v221 = v118;
        if (v118)
        {
          v119 = 0;
          v120 = 0;
          v121 = v222.__r_.__value_.__r.__words[0];
          do
          {
            if (v120 >= (v222.__r_.__value_.__l.__size_ - v121) >> 1)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            MIL::Fp16::GetFloat((v121 + v119));
            v123 = v122;
            v124 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::At(&Data, v120);
            v125 = MIL::Fp16::GetFloat(v124);
            v127 = MIL::Fp16::FromFloat(v125, v123 * v126);
            v121 = v222.__r_.__value_.__r.__words[0];
            *(v222.__r_.__value_.__r.__words[0] + 2 * v120++) = v127;
            v119 += 2;
          }

          while (v120 < v221);
        }

LABEL_337:
        std::string::basic_string[abi:ne200100]<0>(&__src, "post_scale");
        MIL::Builder::OperationBuilder::AddInputFloat16();
        v87 = v218;
        if (!v218)
        {
          goto LABEL_268;
        }

        goto LABEL_267;
      default:
        v89 = "Unsupported scale data type, must be one of [fp16, int8, uint8]";
        v88 = 11;
LABEL_272:
        *v130 = v88;
        v90 = (v130 + 8);
        std::string::basic_string[abi:ne200100]<0>((v130 + 8), v89);
        if (v222.__r_.__value_.__r.__words[0])
        {
          v222.__r_.__value_.__l.__size_ = v222.__r_.__value_.__r.__words[0];
          operator delete(v222.__r_.__value_.__l.__data_);
        }

        if (!*v130)
        {
          if (*(v130 + 31) < 0)
          {
            operator delete(*v90);
          }

          Output = MIL::Builder::OperationBuilder::GetOutput(v131);
          v92 = MIL::Builder::Variable::GetName(Output);
          if (*(v92 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v222, *v92, *(v92 + 8));
          }

          else
          {
            v93 = *v92;
            v222.__r_.__value_.__r.__words[2] = *(v92 + 16);
            *&v222.__r_.__value_.__l.__data_ = v93;
          }

          if ((v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v94 = HIBYTE(v222.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v94 = v222.__r_.__value_.__l.__size_;
          }

          std::string::basic_string[abi:ne200100](&__src, v94 + 6);
          if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_src = &__src;
          }

          else
          {
            p_src = __src.__r_.__value_.__r.__words[0];
          }

          if (v94)
          {
            if ((v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v96 = &v222;
            }

            else
            {
              v96 = v222.__r_.__value_.__r.__words[0];
            }

            memmove(p_src, v96, v94);
          }

          strcpy(p_src + v94, "_fused");
          if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v134, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
          }

          else
          {
            v134 = __src;
          }

          v97 = MIL::Builder::OperationBuilder::GetOutput(v131);
          MIL::Builder::Variable::TryGetType(v97);
          MIL::Builder::OperationBuilder::AddOutput();
          if (v135)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v135);
          }

          if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v134.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v133, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
          }

          else
          {
            v133 = __src;
          }

          MIL::Builder::BlockBuilder::ReplaceUsesOfInputVariable();
          if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v133.__r_.__value_.__l.__data_);
          }

          v98 = *a3;
          v99 = a3[1];
          if (*a3 != v99)
          {
            do
            {
              v100 = *(v98 + 1);
              if (v100)
              {
                atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
                v132 = v100;
                atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              else
              {
                v132 = 0;
              }

              MIL::Builder::BlockBuilder::RemoveOperation();
              if (v132)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v132);
              }

              if (v100)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v100);
              }

              v98 += 16;
            }

            while (v98 != v99);
          }

          *v130 = 0;
          std::string::basic_string[abi:ne200100]<0>(v90, &unk_259A4D977);
          if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__src.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v222.__r_.__value_.__l.__data_);
          }
        }

        if (v217)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v217);
        }

        if (v129)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v129);
        }

        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        return;
    }

    v87 = v221;
    if (!v221)
    {
LABEL_268:
      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__src.__r_.__value_.__l.__data_);
      }

      v88 = 0;
      v89 = &unk_259A4D977;
      goto LABEL_272;
    }

LABEL_267:
    std::__shared_weak_count::__release_shared[abi:ne200100](v87);
    goto LABEL_268;
  }

  *a4 = 14;
  std::operator+<char>();
  v12 = std::string::append(&v222, "'s pattern");
  v13 = *&v12->__r_.__value_.__l.__data_;
  *(a4 + 24) = *(&v12->__r_.__value_.__l + 2);
  *(a4 + 8) = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v222.__r_.__value_.__l.__data_);
  }
}