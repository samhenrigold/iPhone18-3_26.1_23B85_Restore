void anonymous namespace::SelectBoxIndices(MIL::ParserContext *a1@<X0>, MIL::ParserContext *a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, float a6@<S0>)
{
  v95[0] = *MEMORY[0x277D85DE8];
  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(a1);
  v10 = (*ProgramFirstSet)[1];
  v67 = **ProgramFirstSet;
  v11 = (*ProgramFirstSet)[2];
  v12 = MIL::ParserContext::GetProgramFirstSet(a2);
  v14 = **v12;
  v13 = (*v12)[1];
  v73 = (*v12)[2];
  std::vector<unsigned long>::vector[abi:ne200100](&__p, v73);
  std::vector<std::vector<unsigned long>>::vector[abi:ne200100](v83, v14, &__p);
  v68 = v11;
  if (__p)
  {
    v81 = __p;
    operator delete(__p);
  }

  if (v14)
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (v73)
      {
        for (j = 0; j != v73; ++j)
        {
          v92 = i;
          v93 = 0;
          v94 = j;
          v81 = 0;
          v82 = 0;
          __p = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, &v92, v95, 3uLL);
          v17 = *MIL::ValueInference::Tensor<float>::operator[](a2, &__p);
          if (__p)
          {
            v81 = __p;
            operator delete(__p);
          }

          if (v13 < 2)
          {
            v18 = 0;
          }

          else
          {
            v18 = 0;
            for (k = 1; k != v13; ++k)
            {
              v92 = i;
              v93 = k;
              v94 = j;
              v81 = 0;
              v82 = 0;
              __p = 0;
              std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, &v92, v95, 3uLL);
              v20 = *MIL::ValueInference::Tensor<float>::operator[](a2, &__p);
              if (__p)
              {
                v81 = __p;
                operator delete(__p);
              }

              if (v20 > v17)
              {
                v17 = v20;
                v18 = k;
              }
            }
          }

          *(*(v83[0] + 24 * i) + 8 * j) = v18;
        }
      }
    }
  }

  v92 = v67;
  v93 = a3;
  v79 = 0;
  v78 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v78, &v92, &v94, 2uLL);
  MIL::ValueInference::Tensor<int>::Zeros(&v78, &__p);
  v21 = v68;
  v91[0] = &unk_2829EC188;
  v91[3] = v91;
  MIL::ValueInference::Tensor<int>::ForEach(&__p, v91, a5);
  std::__function::__value_func<int ()(int)>::~__value_func[abi:ne200100](v91);
  MIL::ValueInference::Tensor<int>::~Tensor(&__p);
  if (v78.n128_u64[0])
  {
    v78.n128_u64[1] = v78.n128_u64[0];
    operator delete(v78.n128_u64[0]);
  }

  if (v67)
  {
    v22 = 0;
    while (1)
    {
      std::vector<float>::vector[abi:ne200100](&__p, v21);
      if (v21)
      {
        for (m = 0; m != v21; m = (m + 1))
        {
          v24 = *(*(v83[0] + 24 * v22) + 8 * m);
          v90[0] = v22;
          v90[1] = v24;
          v90[2] = m;
          v93 = 0;
          v94 = 0;
          v92 = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v92, v90, v91, 3uLL);
          v25 = *MIL::ValueInference::Tensor<float>::operator[](a2, &v92);
          if (v92)
          {
            v93 = v92;
            operator delete(v92);
          }

          *(__p + m) = v25;
        }
      }

      std::vector<unsigned long>::vector[abi:ne200100](&v92, (v81 - __p) >> 2);
      v27 = v92;
      v26 = v93;
      if (v92 != v93)
      {
        v28 = 0;
        v29 = (v93 - v92 - 8) >> 3;
        v30 = vdupq_n_s64(v29);
        v31 = xmmword_218583C30;
        do
        {
          v32 = vmovn_s64(vcgeq_u64(v30, v31));
          if (v32.i8[0])
          {
            v27[v28] = v28;
          }

          if (v32.i8[4])
          {
            v27[v28 + 1] = v28 + 1;
          }

          v28 += 2;
          v31 = vaddq_s64(v31, vdupq_n_s64(2uLL));
        }

        while (((v29 + 2) & 0x3FFFFFFFFFFFFFFELL) != v28);
      }

      v90[0] = &__p;
      v33 = v26 - v27;
      if (v33 < 129)
      {
        v39 = 0;
        v35 = 0;
      }

      else
      {
        v34 = v26;
        v74 = v26 - v27;
        v35 = v74;
        while (1)
        {
          v36 = operator new(8 * v35, MEMORY[0x277D826F0]);
          if (v36)
          {
            break;
          }

          v37 = v35 >> 1;
          v38 = v35 > 1;
          v35 >>= 1;
          if (!v38)
          {
            v39 = 0;
            v35 = v37;
            goto LABEL_43;
          }
        }

        v39 = v36;
LABEL_43:
        v26 = v34;
        v33 = v74;
      }

      if (v39)
      {
        operator delete(v39);
      }

      LOBYTE(v76[0]) = 0;
      std::vector<BOOL>::vector(v90, v21, v76);
      v41 = v92;
      v40 = v93;
      if (v93 != v92)
      {
        v42 = 0;
        v43 = 0;
        while (1)
        {
          v44 = v41[v43];
          if (((*(v90[0] + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
          {
            break;
          }

          ++v43;
LABEL_97:
          if (v43 >= v40 - v41)
          {
            goto LABEL_98;
          }
        }

        *&v88 = v22;
        *(&v88 + 1) = v42;
        v76[1] = 0;
        v77 = 0;
        v76[0] = 0;
        std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(v76, &v88, &v89, 2uLL);
        *MIL::ValueInference::Tensor<float>::operator[](a5, v76) = v44;
        if (v76[0])
        {
          v76[1] = v76[0];
          operator delete(v76[0]);
        }

        v45 = (v42 + 1);
        if (v45 != a3)
        {
          break;
        }
      }

LABEL_98:
      if (v90[0])
      {
        operator delete(v90[0]);
      }

      if (v92)
      {
        v93 = v92;
        operator delete(v92);
      }

      if (__p)
      {
        v81 = __p;
        operator delete(__p);
      }

      v22 = (v22 + 1);
      if (v22 == v67)
      {
        goto LABEL_105;
      }
    }

    v72 = v45;
    std::vector<float>::vector[abi:ne200100](v76, v10);
    if (v10)
    {
      for (n = 0; n != v10; ++n)
      {
        v85 = v22;
        v86 = n;
        v87 = v44;
        v89 = 0;
        v88 = 0uLL;
        std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v88, &v85, &v88, 3uLL);
        v47 = MIL::ValueInference::Tensor<float>::operator[](a1, &v88);
        *(v76[0] + n) = *v47;
        if (v88)
        {
          *(&v88 + 1) = v88;
          operator delete(v88);
        }
      }
    }

    if (v76[0])
    {
      v76[1] = v76[0];
      operator delete(v76[0]);
    }

    *v76 = v88;
    v77 = v89;
    v48 = v43 + 1;
    v41 = v92;
    v40 = v93;
    v49 = v88;
    v71 = v48;
    if (v48 >= v93 - v92)
    {
LABEL_94:
      if (v49)
      {
        v76[1] = v49;
        operator delete(v49);
        v41 = v92;
        v40 = v93;
      }

      v21 = v68;
      v43 = v71;
      v42 = v72;
      goto LABEL_97;
    }

    while (1)
    {
      v50 = v41[v48];
      if (((1 << v50) & v90[0][v50 >> 6]) == 0)
      {
        break;
      }

LABEL_92:
      if (++v48 >= v40 - v41)
      {
        v49 = v76[0];
        goto LABEL_94;
      }
    }

    std::vector<float>::vector[abi:ne200100](&v88, v10);
    v51 = a2;
    if (v10)
    {
      for (ii = 0; ii != v10; ++ii)
      {
        v84[0] = v22;
        v84[1] = ii;
        v84[2] = v50;
        v85 = 0;
        v86 = 0;
        v87 = 0;
        std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v85, v84, &v85, 3uLL);
        v53 = MIL::ValueInference::Tensor<float>::operator[](a1, &v85);
        *(v88 + 4 * ii) = *v53;
        if (v85)
        {
          v86 = v85;
          operator delete(v85);
        }
      }
    }

    if (v88)
    {
      *(&v88 + 1) = v88;
      operator delete(v88);
      *(&v88 + 1) = 0;
    }

    v54 = v85;
    *&v88 = v85;
    v89 = v87;
    a2 = v51;
    if (a4 && *(*(v83[0] + 24 * v22) + 8 * v44) != *(*(v83[0] + 24 * v22) + 8 * v50))
    {
      if (!v85)
      {
LABEL_91:
        v41 = v92;
        v40 = v93;
        goto LABEL_92;
      }
    }

    else
    {
      v55 = *(v85 + 2);
      v56 = *(v85 + 3);
      v57 = *(v76[0] + 2);
      v58 = *(v76[0] + 3);
      if (v55 >= v57)
      {
        v59 = *(v76[0] + 2);
      }

      else
      {
        v59 = *(v85 + 2);
      }

      v60 = *(v76[0] + 1);
      v61 = *(v85 + 1);
      if (*v76[0] >= *v85)
      {
        v62 = *v76[0];
      }

      else
      {
        v62 = *v85;
      }

      v63 = v59 - v62;
      if (v56 >= v58)
      {
        v64 = *(v76[0] + 3);
      }

      else
      {
        v64 = *(v85 + 3);
      }

      if (v60 >= v61)
      {
        v65 = *(v76[0] + 1);
      }

      else
      {
        v65 = *(v85 + 1);
      }

      v66 = v64 - v65;
      if (v63 < 0.0)
      {
        v63 = 0.0;
      }

      if (v66 < 0.0)
      {
        v66 = 0.0;
      }

      if (((v63 * v66) / (((((v57 - *v76[0]) * (v58 - v60)) + ((v55 - *v85) * (v56 - v61))) - (v63 * v66)) + 0.0000001)) > a6)
      {
        v90[0][v50 >> 6] |= 1 << v50;
      }
    }

    *(&v88 + 1) = v54;
    operator delete(v54);
    goto LABEL_91;
  }

LABEL_105:
  __p = v83;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_21834052C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41)
{
  std::__function::__value_func<int ()(int)>::~__value_func[abi:ne200100](v41 - 184);
  MIL::ValueInference::Tensor<int>::~Tensor(&a26);
  if (__p)
  {
    operator delete(__p);
  }

  a26 = &a34;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

void anonymous namespace::SelectByIndices(MIL::ParserContext *a1@<X0>, MIL::ParserContext *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(a1);
  v15 = a2;
  v7 = *(*MIL::ParserContext::GetProgramFirstSet(a2) + 8);
  v8 = (*ProgramFirstSet)[1];
  v14 = **ProgramFirstSet;
  v25 = v14;
  v26 = v8;
  v27 = v7;
  __p = 0uLL;
  v20 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, &v25, &v28, 3uLL);
  MIL::ValueInference::Tensor<float>::Zeros(&__p, a3);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (v7)
      {
        for (j = 0; j != v7; ++j)
        {
          v22 = i;
          v23 = j;
          v26 = 0;
          v27 = 0;
          v25 = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v25, &v22, &v24, 2uLL);
          v11 = *MIL::ValueInference::Tensor<float>::operator[](v15, &v25);
          if (v25)
          {
            v26 = v25;
            operator delete(v25);
          }

          if (v11 == -1)
          {
            break;
          }

          if ((*ProgramFirstSet)[1])
          {
            v12 = 0;
            do
            {
              v22 = i;
              v23 = v12;
              v24 = v11;
              v25 = 0;
              v26 = 0;
              v27 = 0;
              std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v25, &v22, &v25, 3uLL);
              v13 = *MIL::ValueInference::Tensor<float>::operator[](a1, &v25);
              v21[0] = i;
              v21[1] = v12;
              v21[2] = j;
              v17 = 0;
              v18 = 0;
              v16 = 0;
              std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v16, v21, &v22, 3uLL);
              *MIL::ValueInference::Tensor<float>::operator[](a3, &v16) = v13;
              if (v16)
              {
                v17 = v16;
                operator delete(v16);
              }

              if (v25)
              {
                v26 = v25;
                operator delete(v25);
              }

              ++v12;
            }

            while (v12 < (*ProgramFirstSet)[1]);
          }
        }
      }
    }
  }
}

void sub_21834089C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios17::CustomValidators::ValidateTopk(MIL::Operators::Common::ios17::CustomValidators *this@<X0>, const MIL::IROperation *a2@<X1>, MIL::ValidationResult *a3@<X8>)
{
  v5 = (*(*this + 176))(this, a2);
  std::string::basic_string[abi:ne200100]<0>(&v44, "output_indices_dtype");
  IsParameterSet = MIL::IROperation::IsParameterSet(this, &v44.__r_.__value_.__l.__data_);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (v5[1] - *v5 < 0x11uLL)
  {
    if (IsParameterSet)
    {
      LocationPtr = MIL::IRObject::GetLocationPtr(this);
      v14 = LocationPtr[1];
      *&v35 = *LocationPtr;
      *(&v35 + 1) = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v33, "output_indices_dtype is set but op only has one output");
      MIL::ValidationResult::ValidationResult(a3, &v35, 315, v33);
      if (v34 < 0)
      {
        operator delete(v33[0]);
      }

      v15 = *(&v35 + 1);
      if (*(&v35 + 1))
      {
        goto LABEL_49;
      }

      return;
    }
  }

  else
  {
    Type = MIL::IRNamedValueType::GetType(*(*v5 + 16));
    v8 = MIL::IRValueType::AsTensorType(Type);
    v9 = (*(*v8 + 88))(v8);
    if ((v9 & 0xFFFFFFFB) != 0xB)
    {
      v23 = MIL::IRObject::GetLocationPtr(this);
      v24 = v23[1];
      *&v43 = *v23;
      *(&v43 + 1) = v24;
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v41, "Unsupported dtype for indices output");
      MIL::ValidationResult::ValidationResult(a3, &v43, 315, v41);
      if (v42 < 0)
      {
        operator delete(v41[0]);
      }

      v15 = *(&v43 + 1);
      if (*(&v43 + 1))
      {
        goto LABEL_49;
      }

      return;
    }

    if (IsParameterSet)
    {
      v10 = v9;
      std::string::basic_string[abi:ne200100]<0>(__p, "output_indices_dtype");
      ParameterValue = MIL::IROperation::GetParameterValue(this, __p);
      v12 = MIL::IRValue::AsTensor(ParameterValue);
      MIL::IRValue::GetScalar<std::string>(v12, &v44);
      if (v40 < 0)
      {
        operator delete(__p[0]);
      }

      if (MIL::StringToIRDataType(&v44, 0) != v10)
      {
        v27 = MIL::IRObject::GetLocationPtr(this);
        v28 = v27[1];
        *&v38 = *v27;
        *(&v38 + 1) = v28;
        if (v28)
        {
          atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v36, "output_indices_dtype, if set, must match the datatype of the indices output");
        MIL::ValidationResult::ValidationResult(a3, &v38, 315, v36);
        if (v37 < 0)
        {
          operator delete(v36[0]);
        }

        if (*(&v38 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v38 + 1));
        }

        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }

        return;
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v44, "x");
  ParameterType = MIL::IROperation::GetParameterType(this, &v44);
  v17 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v44, "axis");
  v18 = MIL::IROperation::GetParameterValue(this, &v44);
  v19 = MIL::IRValue::GetScalar<int>(v18);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v44, "k");
  MIL::IROperation::GetParameterValue(this, &v44);
  v20 = MIL::IRValue::TryGetScalar<int>();
  v21 = v20;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
    if (v21)
    {
      goto LABEL_24;
    }
  }

  else if (v20)
  {
LABEL_24:
    v22 = *v21;
    goto LABEL_46;
  }

  std::string::basic_string[abi:ne200100]<0>(&v44, "k");
  MIL::IROperation::GetParameterValue(this, &v44);
  v25 = MIL::IRValue::TryGetScalar<short>();
  v26 = v25;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
    if (v26)
    {
      goto LABEL_34;
    }
  }

  else if (v25)
  {
LABEL_34:
    v22 = *v26;
    goto LABEL_46;
  }

  std::string::basic_string[abi:ne200100]<0>(&v44, "k");
  MIL::IROperation::GetParameterValue(this, &v44);
  v22 = *MIL::IRValue::TryGetScalar<signed char>();
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

LABEL_46:
  v29 = MIL::IRObject::GetLocationPtr(this);
  v30 = v29[1];
  v31 = *v29;
  v32 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::Shared::ValidateTopkInputs(v17, v19, v22, &v31, a3);
  v15 = v32;
  if (v32)
  {
LABEL_49:
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_218340D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  if (*(v33 - 49) < 0)
  {
    operator delete(*(v33 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *anonymous namespace::StandardizeCoordinates@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v3.i64[0] = **a1;
  v2.i64[0] = (*a1)[1];
  v3.i64[1] = v3.i64[0];
  v2.i64[1] = v2.i64[0];
  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  v5 = vbicq_s8(vmulq_f32(v2, v4), vcltzq_f32(v2));
  *&v6 = vsubq_f32(v3, v5).u64[0];
  *(&v6 + 1) = vaddq_f32(v3, v5).i64[1];
  v8 = v6;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(a2, &v8, &v9, 4uLL);
}

uint64_t *std::vector<std::vector<unsigned long>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::vector<unsigned long>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::vector<std::vector<unsigned long>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned char>>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__function::__func<anonymous namespace::SelectBoxIndices(MIL::ValueInference::Tensor<float> const&,MIL::ValueInference::Tensor<float> const&,float,unsigned long long,BOOL)::$_0,std::allocator<anonymous namespace::SelectBoxIndices(MIL::ValueInference::Tensor<float> const&,MIL::ValueInference::Tensor<float> const&,float,unsigned long long,BOOL)::$_0>,int ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__stable_sort<std::_ClassicAlgPolicy,anonymous namespace::ArgsortDesc(std::vector<float> const&)::$_0 &,std::__wrap_iter<unsigned long *>>(uint64_t *result, uint64_t *a2, uint64_t **a3, unint64_t a4, uint64_t *a5, int64_t a6)
{
  if (a4 >= 2)
  {
    v8 = result;
    if (a4 == 2)
    {
      v9 = *(a2 - 1);
      v10 = *result;
      if (*(**a3 + 4 * v9) > *(**a3 + 4 * *result))
      {
        *result = v9;
        *(a2 - 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v22 = a5;
      v23 = a4 >> 1;
      v24 = &result[a4 >> 1];
      v25 = a4 >> 1;
      if (a4 <= a6)
      {
        v26 = &v22[v23];
        v27 = &v22[a4];
        v28 = *a3;
        v29 = v26;
        while (v29 != v27)
        {
          v30 = *v29;
          v31 = *(*v28 + 4 * *v29);
          v32 = *(*v28 + 4 * *v22);
          if (v31 <= v32)
          {
            v30 = *v22;
          }

          v22 += v31 <= v32;
          v29 += v31 > v32;
          *v8 = v30;
          v8 += 8;
          if (v22 == v26)
          {
            while (v29 != v27)
            {
              v34 = *v29++;
              *v8 = v34;
              v8 += 8;
            }

            return result;
          }
        }

        while (v22 != v26)
        {
          v33 = *v22++;
          *v8 = v33;
          v8 += 8;
        }
      }

      else
      {
      }
    }

    else if (result != a2)
    {
      v12 = result + 1;
      if (result + 1 != a2)
      {
        v13 = 0;
        v14 = **a3;
        v15 = result;
        do
        {
          v16 = *v15;
          v15 = v12;
          v17 = *v12;
          v18 = *(v14 + 4 * v17);
          if (v18 > *(v14 + 4 * v16))
          {
            v19 = v13;
            while (1)
            {
              *(result + v19 + 8) = v16;
              if (!v19)
              {
                break;
              }

              v16 = *(result + v19 - 8);
              v19 -= 8;
              if (v18 <= *(v14 + 4 * v16))
              {
                v20 = (result + v19 + 8);
                goto LABEL_16;
              }
            }

            v20 = result;
LABEL_16:
            *v20 = v17;
          }

          v12 = v15 + 1;
          v13 += 8;
        }

        while (v15 + 1 != a2);
      }
    }
  }

  return result;
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,anonymous namespace::ArgsortDesc(std::vector<float> const&)::$_0 &,std::__wrap_iter<unsigned long *>>(uint64_t *result, uint64_t *a2, uint64_t **a3, unint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v5 = a5;
    v7 = result;
    if (a4 == 1)
    {
LABEL_8:
      *v5 = *v7;
      return result;
    }

    if (a4 == 2)
    {
      v10 = *(a2 - 1);
      v11 = **a3;
      v12 = *(v11 + 4 * v10);
      v13 = *(v11 + 4 * *result);
      if (v12 <= v13)
      {
        v10 = *result;
      }

      *a5 = v10;
      v5 = a5 + 1;
      if (v12 <= v13)
      {
        v7 = a2 - 1;
      }

      goto LABEL_8;
    }

    if (a4 > 8)
    {
      v24 = &result[a4 >> 1];
      v25 = *a3;
      v26 = &v7[a4 >> 1];
      while (v26 != a2)
      {
        v27 = *v26;
        v28 = *(*v25 + 4 * *v26);
        v29 = *(*v25 + 4 * *v7);
        if (v28 <= v29)
        {
          v27 = *v7;
        }

        v26 += v28 > v29;
        v7 += v28 <= v29;
        *v5++ = v27;
        if (v7 == v24)
        {
          while (v26 != a2)
          {
            v31 = *v26++;
            *v5++ = v31;
          }

          return result;
        }
      }

      while (v7 != v24)
      {
        v30 = *v7++;
        *v5++ = v30;
      }
    }

    else if (result != a2)
    {
      v14 = result + 1;
      *a5 = *result;
      if (result + 1 != a2)
      {
        v15 = 0;
        v16 = **a3;
        v17 = a5;
        v18 = a5;
        do
        {
          v20 = *v18++;
          v19 = v20;
          if (*(v16 + 4 * *v14) <= *(v16 + 4 * v20))
          {
            *v18 = *v14;
          }

          else
          {
            v17[1] = v19;
            v21 = a5;
            if (v17 != a5)
            {
              v22 = v15;
              while (1)
              {
                v21 = (a5 + v22);
                v23 = *(a5 + v22 - 8);
                if (*(v16 + 4 * *v14) <= *(v16 + 4 * v23))
                {
                  break;
                }

                *v21 = v23;
                v22 -= 8;
                if (!v22)
                {
                  v21 = a5;
                  break;
                }
              }
            }

            *v21 = *v14;
          }

          ++v14;
          v15 += 8;
          v17 = v18;
        }

        while (v14 != a2);
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,anonymous namespace::ArgsortDesc(std::vector<float> const&)::$_0 &,std::__wrap_iter<unsigned long *>>(char *result, char *a2, char *a3, uint64_t **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v9 = a6;
    v12 = result;
    while (v9 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v13 = 0;
      v14 = **a4;
      v15 = -a5;
      while (1)
      {
        v16 = *&v13[v12];
        if (*(v14 + 4 * *a2) > *(v14 + 4 * v16))
        {
          break;
        }

        v13 += 8;
        if (__CFADD__(v15++, 1))
        {
          return result;
        }
      }

      v18 = -v15;
      v57 = a3;
      v58 = a7;
      v56 = a4;
      v59 = a8;
      if (-v15 >= v9)
      {
        if (v15 == -1)
        {
          *&v13[v12] = *a2;
          *a2 = v16;
          return result;
        }

        v27 = v18 / 2;
        v28 = &v12[8 * (v18 / 2)];
        v20 = a2;
        if (a2 != a3)
        {
          v29 = (a3 - a2) >> 3;
          v20 = a2;
          do
          {
            v30 = v29 >> 1;
            v31 = &v20[8 * (v29 >> 1)];
            v33 = *v31;
            v32 = v31 + 8;
            v29 += ~(v29 >> 1);
            if (*(v14 + 4 * v33) > *(v14 + 4 * *&v13[v28]))
            {
              v20 = v32;
            }

            else
            {
              v29 = v30;
            }
          }

          while (v29);
        }

        v19 = (v20 - a2) >> 3;
        v21 = &v13[v28];
      }

      else
      {
        v19 = v9 / 2;
        v20 = &a2[8 * (v9 / 2)];
        v21 = a2;
        if ((a2 - v12) != v13)
        {
          v22 = (a2 - v12 - v13) >> 3;
          v21 = &v13[v12];
          do
          {
            v23 = v22 >> 1;
            v24 = &v21[8 * (v22 >> 1)];
            v26 = *v24;
            v25 = v24 + 8;
            v22 += ~(v22 >> 1);
            if (*(v14 + 4 * *v20) > *(v14 + 4 * v26))
            {
              v22 = v23;
            }

            else
            {
              v21 = v25;
            }
          }

          while (v22);
        }

        v27 = (v21 - v12 - v13) >> 3;
      }

      a5 = -(v27 + v15);
      v34 = v9 - v19;
      v35 = v27;
      v36 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(v21, a2, v20);
      v37 = v35;
      v38 = v36;
      if (v37 + v19 >= v9 - (v37 + v19) - v15)
      {
        v41 = v37;
        v20 = v21;
        a4 = v56;
        v34 = v19;
        a7 = v58;
        a5 = v41;
        a3 = v38;
        v12 = &v13[v12];
      }

      else
      {
        v39 = v21;
        a4 = v56;
        v40 = v19;
        a7 = v58;
        v12 = v38;
        a3 = v57;
      }

      v9 = v34;
      a2 = v20;
      a8 = v59;
      if (!v34)
      {
        return result;
      }
    }

    if (a5 <= v9)
    {
      if (a2 != v12)
      {
        v46 = -a7;
        v47 = a7;
        v48 = v12;
        do
        {
          v49 = *v48;
          v48 += 8;
          *v47++ = v49;
          v46 -= 8;
        }

        while (v48 != a2);
        v50 = *a4;
        while (a2 != a3)
        {
          v51 = *a2;
          v52 = *(*v50 + 4 * *a2);
          v53 = *(*v50 + 4 * *a7);
          if (v52 <= v53)
          {
            v51 = *a7;
          }

          a2 += 8 * (v52 > v53);
          a7 += 8 * (v52 <= v53);
          *v12 = v51;
          v12 += 8;
          if (v47 == a7)
          {
            return result;
          }
        }

        return memmove(v12, a7, -(a7 + v46));
      }
    }

    else if (a2 != a3)
    {
      v42 = 0;
      do
      {
        *(a7 + v42) = *&a2[v42];
        v42 += 8;
      }

      while (&a2[v42] != a3);
      v43 = *a4;
      v44 = a7 + v42;
      while (a2 != v12)
      {
        v45 = *(v44 - 8);
        if (*(*v43 + 4 * v45) <= *(*v43 + 4 * *(a2 - 1)))
        {
          v44 -= 8;
        }

        else
        {
          v45 = *(a2 - 1);
          a2 -= 8;
        }

        *(a3 - 1) = v45;
        a3 -= 8;
        if (v44 == a7)
        {
          return result;
        }
      }

      if (v44 != a7)
      {
        v54 = -8;
        do
        {
          v55 = *(v44 - 8);
          v44 -= 8;
          *&a3[v54] = v55;
          v54 -= 8;
        }

        while (v44 != a7);
      }
    }
  }

  return result;
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 8 == a2)
    {
      v7 = *__src;
      memmove(__src, __src + 8, v6);
      v4 = &__src[v6];
      *v4 = v7;
    }

    else if (a2 + 8 == a3)
    {
      v8 = *(a3 - 1);
      v4 = __src + 8;
      v9 = a3 - 8 - __src;
      if (a3 - 8 != __src)
      {
        memmove(__src + 8, __src, v9);
      }

      *__src = v8;
    }

    else
    {
      return std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>>(__src, a2, a3);
    }
  }

  return v4;
}

char *std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>>(char *a1, char *a2, char *a3)
{
  v3 = (a2 - a1) >> 3;
  v4 = a3 - a2;
  if (v3 == (a3 - a2) >> 3)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = a1 + 8;
      v6 = a2 + 8;
      do
      {
        v7 = *(v5 - 1);
        *(v5 - 1) = *(v6 - 1);
        *(v6 - 1) = v7;
        if (v5 == a2)
        {
          break;
        }

        v5 += 8;
        v8 = v6 == a3;
        v6 += 8;
      }

      while (!v8);
    }
  }

  else
  {
    v9 = v4 >> 3;
    v10 = (a2 - a1) >> 3;
    do
    {
      v11 = v10;
      v10 = v9;
      v9 = v11 % v9;
    }

    while (v9);
    v12 = &a1[8 * v10];
    do
    {
      v14 = *(v12 - 1);
      v12 -= 8;
      v13 = v14;
      v15 = &v12[a2 - a1];
      v16 = v12;
      do
      {
        v17 = v15;
        *v16 = *v15;
        v18 = &v15[8 * v3];
        v19 = __OFSUB__(v3, (a3 - v15) >> 3);
        v21 = v3 - ((a3 - v15) >> 3);
        v20 = (v21 < 0) ^ v19;
        v15 = &a1[8 * v21];
        if (v20)
        {
          v15 = v18;
        }

        v16 = v17;
      }

      while (v15 != v12);
      *v17 = v13;
    }

    while (v12 != a1);
    return &a1[v4];
  }

  return a2;
}

void MIL::Operators::Common::ios17::NonMaximumSuppression::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218343F38(_Unwind_Exception *a1)
{
  v5 = *(v2 - 96);
  *(v2 - 96) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x4D0], 0);
  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x488], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x4F8], 0);
  _Unwind_Resume(a1);
}

void sub_218344A60()
{
  v0 = STACK[0x500];
  if (STACK[0x500])
  {
    STACK[0x508] = v0;
    operator delete(v0);
  }

  JUMPOUT(0x218344A44);
}

void MIL::Operators::Common::ios17::Topk::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218345944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (a65)
  {
    (*(*a65 + 8))(a65, a2, a3, a4, a5, a6, a7, a8);
  }

  v68 = *v66;
  *v66 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a66, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x218], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::CustomValidators::ValidateReshape(MIL::Operators::Common::ios17::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v38, "x");
  ParameterType = MIL::IROperation::GetParameterType(this, &v38);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v40 < 0)
  {
    operator delete(v38);
  }

  std::string::basic_string[abi:ne200100]<0>(&v38, "shape");
  v6 = MIL::IROperation::GetParameterType(this, &v38);
  v7 = MIL::IRValueType::AsTensorType(v6);
  if (v40 < 0)
  {
    operator delete(v38);
  }

  std::string::basic_string[abi:ne200100]<0>(&v38, "shape");
  ParameterValue = MIL::IROperation::TryGetParameterValue(this, &v38, 0);
  v9 = ParameterValue;
  if ((v40 & 0x80000000) == 0)
  {
    if (ParameterValue)
    {
      goto LABEL_7;
    }

LABEL_15:
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  operator delete(v38);
  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_7:
  v10 = MIL::IRValue::AsTensor(v9);
  MIL::Validation::GetIntTensorValueCasted(v10, v11, &v38);
  if ((*(*v7 + 16))(v7) >= 6)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v13 = LocationPtr[1];
    *&v37 = *LocationPtr;
    *(&v37 + 1) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v35, "Rank of the shape parameter must be between 0 and 5 (inclusive) in reshape");
    MIL::ValidationResult::ValidationResult(a2, &v37, 315, v35);
    if (v36 < 0)
    {
      operator delete(v35[0]);
    }

    v14 = *(&v37 + 1);
    if (!*(&v37 + 1))
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v15 = v38;
  if (v38 == v39)
  {
    goto LABEL_46;
  }

  v16 = 0;
  do
  {
    v17 = *v15++;
    if (v17 == -1)
    {
      ++v16;
    }
  }

  while (v15 != v39);
  if (v16 < 2)
  {
LABEL_46:
    if ((*(*v5 + 104))(v5) && (v20 = (*(*v5 + 96))(v5), !MIL::ValueTypeInferenceUtils::ShapeHasUnknownDims(v20)))
    {
      memset(v31, 0, sizeof(v31));
      v21 = MIL::IRObject::GetLocationPtr(this);
      v22 = v21[1];
      v30[0] = *v21;
      v30[1] = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v28, "x");
      v23 = MIL::IROperation::GetParameterType(this, v28);
      v24 = MIL::IRValueType::AsTensorType(v23);
      std::string::basic_string[abi:ne200100]<0>(v26, "shape");
      v25 = MIL::IROperation::TryGetParameterValue(this, v26, 0);
      MIL::Operators::Common::ios17::ComputeTargetShapeForReshape(v25, v30, v24, v31, a2);
      if (v27 < 0)
      {
        operator delete(v26[0]);
      }

      if (v29 < 0)
      {
        operator delete(v28[0]);
      }

      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      if (v31[0])
      {
        operator delete(v31[0]);
      }
    }

    else
    {
      MIL::ValidationResult::ValidationResult(a2);
    }

    goto LABEL_31;
  }

  v18 = MIL::IRObject::GetLocationPtr(this);
  v19 = v18[1];
  *&v34 = *v18;
  *(&v34 + 1) = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Only 1 dimension can be set to -1 (infer size from other dims based off of the # of elements in the input tensor).");
  MIL::ValidationResult::ValidationResult(a2, &v34, 315, __p);
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = *(&v34 + 1);
  if (*(&v34 + 1))
  {
LABEL_27:
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

LABEL_31:
  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

void sub_2183461AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (a23)
  {
    operator delete(a23);
  }

  v36 = *(v34 - 72);
  if (v36)
  {
    *(v34 - 64) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Operators::Common::ios17::ComputeTargetShapeForReshape@<X0>(MIL::IRValue *this@<X2>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, MIL::ValidationResult *a5@<X8>)
{
  v10 = MIL::IRValue::AsTensor(this);
  MIL::Validation::GetIntTensorValueCasted(v10, v11, &__p);
  v12 = *a4;
  if (*a4)
  {
    *(a4 + 8) = v12;
    operator delete(v12);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  v13 = __p;
  *a4 = __p;
  v14 = v66;
  *(a4 + 8) = v66;
  if (v14 == v13)
  {
    v17 = 0;
    v16 = 0;
LABEL_13:
    if ((*(*a3 + 104))(a3))
    {
      v22 = (*(*a3 + 96))(a3);
      v66 = 0uLL;
      __p = 0;
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v22, *(v22 + 8), (*(v22 + 8) - *v22) >> 3);
      v23 = *a4;
      v24 = *(a4 + 8);
      if (v24 != *a4)
      {
        v25 = 0;
        v26 = 0;
        v27 = (v24 - *a4) >> 2;
        do
        {
          if (!v23[v26])
          {
            if (v27 + v25 <= (v66 - __p) >> 3)
            {
              v28 = *(__p + v26 + ((v66 - __p) >> 3) - v27);
              v29 = (*(*v28 + 16))(v28);
              if (v29)
              {
                LODWORD(v29) = (*(*v29 + 48))(v29);
              }

              v23 = *a4;
              *(*a4 + 4 * v26) = v29;
              v24 = *(a4 + 8);
            }

            else
            {
              v23[v26] = 1;
            }
          }

          ++v26;
          v27 = (v24 - v23) >> 2;
          --v25;
        }

        while (v26 < v27);
      }

      if (__p)
      {
        *&v66 = __p;
        operator delete(__p);
      }
    }

    v30 = *a4;
    v31 = 1;
    while (v30 != *(a4 + 8))
    {
      v32 = *v30++;
      v31 *= v32;
    }

    v33 = (*(*a3 + 96))(a3);
    if (MIL::ValueTypeInferenceUtils::ShapeHasUnknownDims(v33))
    {
      if (v16)
      {
        v34 = 0;
LABEL_73:
        *(*a4 + 4 * v17) = v34;
      }
    }

    else
    {
      v35 = (*(*a3 + 16))(a3);
      if (v16)
      {
        if (v35 % v31)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
          v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "cannot reshape tensor of size ", 30);
          v37 = (*(*a3 + 16))(a3);
          v38 = MEMORY[0x21CEAFB80](v36, v37);
          v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " into shape ", 12);
          (*(*this + 72))(&v59, this);
          if ((v61 & 0x80u) == 0)
          {
            v40 = &v59;
          }

          else
          {
            v40 = v59;
          }

          if ((v61 & 0x80u) == 0)
          {
            v41 = v61;
          }

          else
          {
            v41 = v60;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, v40, v41);
          if (v61 < 0)
          {
            operator delete(v59);
          }

          v42 = a2[1];
          *&v58 = *a2;
          *(&v58 + 1) = v42;
          if (v42)
          {
            atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
          }

          std::stringbuf::str();
          MIL::ValidationResult::ValidationResult(a5, &v58, 315, &v56);
          if (v57 < 0)
          {
            operator delete(v56);
          }

          v43 = *(&v58 + 1);
          if (!*(&v58 + 1))
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        }

        v34 = (*(*a3 + 16))(a3) / v31;
        if (v34 < 0)
        {
          v34 = -v34;
        }

        goto LABEL_73;
      }

      if (v35 != v31)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
        v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "cannot reshape tensor of size ", 30);
        v47 = (*(*a3 + 16))(a3);
        v48 = MEMORY[0x21CEAFB80](v46, v47);
        v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, " into shape ", 12);
        (*(*this + 72))(&v59, this);
        if ((v61 & 0x80u) == 0)
        {
          v50 = &v59;
        }

        else
        {
          v50 = v59;
        }

        if ((v61 & 0x80u) == 0)
        {
          v51 = v61;
        }

        else
        {
          v51 = v60;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, v50, v51);
        if (v61 < 0)
        {
          operator delete(v59);
        }

        v52 = a2[1];
        *&v55 = *a2;
        *(&v55 + 1) = v52;
        if (v52)
        {
          atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
        }

        std::stringbuf::str();
        MIL::ValidationResult::ValidationResult(a5, &v55, 315, &v53);
        if (v54 < 0)
        {
          operator delete(v53);
        }

        v43 = *(&v55 + 1);
        if (!*(&v55 + 1))
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }
    }

    return MIL::ValidationResult::ValidationResult(a5);
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = (v14 - v13) >> 2;
  if (v18 <= 1)
  {
    v18 = 1;
  }

  while (1)
  {
    v19 = v13[v15];
    if (v19 == -1 && (v16 & 1) != 0)
    {
      break;
    }

    v20 = v19 == -1;
    v21 = v19 == -1;
    if (v20)
    {
      v17 = v15;
    }

    v16 |= v21;
    if (v18 == ++v15)
    {
      goto LABEL_13;
    }
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Only 1 dimension can be set to -1", 33);
  v44 = a2[1];
  *&v64 = *a2;
  *(&v64 + 1) = v44;
  if (v44)
  {
    atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
  }

  std::stringbuf::str();
  MIL::ValidationResult::ValidationResult(a5, &v64, 315, &v62);
  if (v63 < 0)
  {
    operator delete(v62);
  }

  v43 = *(&v64 + 1);
  if (!*(&v64 + 1))
  {
    goto LABEL_53;
  }

LABEL_52:
  std::__shared_weak_count::__release_shared[abi:ne200100](v43);
LABEL_53:
  __p = *MEMORY[0x277D82828];
  *(&__p + *(__p - 3)) = *(MEMORY[0x277D82828] + 24);
  *&v66 = MEMORY[0x277D82878] + 16;
  if (v68 < 0)
  {
    operator delete(v67);
  }

  *&v66 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v66 + 1);
  std::ostream::~ostream();
  return MEMORY[0x21CEAFDA0](&v69);
}

void sub_218346954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  std::ostringstream::~ostringstream(&a39);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::CustomValidators::ValidateConcat(MIL::Operators::Common::ios17::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "values");
  v4 = MIL::Validation::VariadicTensorsDTypesMatch(this, &__p);
  v5 = v4;
  if ((SHIBYTE(v80[0].__locale_) & 0x80000000) == 0)
  {
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_14:
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v14 = LocationPtr[1];
    *&v88 = *LocationPtr;
    *(&v88 + 1) = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v86, "Inputs must have the same datatype");
    MIL::ValidationResult::ValidationResult(a2, &v88, 319, v86);
    if (v87 < 0)
    {
      operator delete(v86[0]);
    }

    if (*(&v88 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v88 + 1));
    }

    return;
  }

  operator delete(__p);
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_3:
  std::string::basic_string[abi:ne200100]<0>(&__p, "values");
  v6 = (*(*this + 152))(this, &__p);
  if (SHIBYTE(v80[0].__locale_) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "axis");
  ParameterValue = MIL::IROperation::GetParameterValue(this, &__p);
  v8 = MIL::IRValue::GetScalar<int>(ParameterValue);
  if (SHIBYTE(v80[0].__locale_) < 0)
  {
    operator delete(__p);
  }

  v83 = 0;
  v84 = 0;
  v85 = 0;
  v9 = 0;
  if (v6)
  {
    while (1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "values");
      ParameterType = MIL::IROperation::GetParameterType(this, &__p);
      v11 = MIL::IRValueType::AsTensorType(ParameterType);
      if (SHIBYTE(v80[0].__locale_) < 0)
      {
        operator delete(__p);
      }

      if ((*(*v11 + 104))(v11))
      {
        break;
      }

      v9 = (v9 + 1);
      if (v6 == v9)
      {
        v12 = -1;
        v9 = v6;
        goto LABEL_27;
      }
    }

    v15 = MIL::IRTensorValueType::Rank(v11);
    v12 = v15;
    if (v15 < 1)
    {
      if (!v15 && v8)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
        v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Axis (", 6);
        v49 = MEMORY[0x21CEAFB20](v48, v8);
        v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, ") must be 0 when inputs are scalars for ", 40);
        v51 = (*(*this + 56))(this);
        v52 = *(v51 + 23);
        if (v52 >= 0)
        {
          v53 = v51;
        }

        else
        {
          v53 = *v51;
        }

        if (v52 >= 0)
        {
          v54 = *(v51 + 23);
        }

        else
        {
          v54 = *(v51 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, v53, v54);
        v55 = MIL::IRObject::GetLocationPtr(this);
        v56 = v55[1];
        *&v77 = *v55;
        *(&v77 + 1) = v56;
        if (v56)
        {
          atomic_fetch_add_explicit((v56 + 8), 1uLL, memory_order_relaxed);
        }

        std::stringbuf::str();
        MIL::ValidationResult::ValidationResult(a2, &v77, 315, &v75);
        if (v76 < 0)
        {
          operator delete(v75);
        }

        v41 = *(&v77 + 1);
        if (*(&v77 + 1))
        {
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = 0;
      do
      {
        v17 = (*(*v11 + 96))(v11);
        v18 = (*(**(*v17 + 8 * v16) + 16))(*(*v17 + 8 * v16));
        if (v18)
        {
          __p = (*(*v18 + 48))(v18);
        }

        else
        {
          __p = -1;
        }

        std::vector<unsigned long long>::push_back[abi:ne200100](&v83, &__p);
        ++v16;
      }

      while (v12 != v16);
    }
  }

  else
  {
    v12 = -1;
  }

LABEL_27:
  if (!MIL::Validation::IsAxisValidForRank(v8, v12))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Axis (", 6);
    v29 = MEMORY[0x21CEAFB20](v28, v8);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ") must be within range [-", 25);
    v31 = MEMORY[0x21CEAFB70](v30, v12);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ", ", 2);
    v33 = MEMORY[0x21CEAFB70](v32, v12);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ") for ", 6);
    v35 = (*(*this + 56))(this);
    v36 = *(v35 + 23);
    if (v36 >= 0)
    {
      v37 = v35;
    }

    else
    {
      v37 = *v35;
    }

    if (v36 >= 0)
    {
      v38 = *(v35 + 23);
    }

    else
    {
      v38 = *(v35 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v37, v38);
    v39 = MIL::IRObject::GetLocationPtr(this);
    v40 = v39[1];
    *&v74 = *v39;
    *(&v74 + 1) = v40;
    if (v40)
    {
      atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
    }

    std::stringbuf::str();
    MIL::ValidationResult::ValidationResult(a2, &v74, 315, &v72);
    if (v73 < 0)
    {
      operator delete(v72);
    }

    v41 = *(&v74 + 1);
    if (*(&v74 + 1))
    {
      goto LABEL_55;
    }

    goto LABEL_56;
  }

LABEL_28:
  if (v9 >= v6)
  {
LABEL_43:
    MIL::ValidationResult::ValidationResult(a2);
    goto LABEL_59;
  }

  while (1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "values");
    v19 = MIL::IROperation::GetParameterType(this, &__p);
    v20 = MIL::IRValueType::AsTensorType(v19);
    if (SHIBYTE(v80[0].__locale_) < 0)
    {
      operator delete(__p);
    }

    if ((*(*v20 + 104))(v20))
    {
      break;
    }

LABEL_42:
    v9 = (v9 + 1);
    if (v9 == v6)
    {
      goto LABEL_43;
    }
  }

  if (MIL::IRTensorValueType::Rank(v20) == v12)
  {
    if (v12 >= 1)
    {
      v21 = 0;
      while (1)
      {
        if ((v12 & (v8 >> 31)) + v8 != v21)
        {
          v22 = (*(*v20 + 96))(v20);
          v23 = (*(**(*v22 + 8 * v21) + 16))(*(*v22 + 8 * v21));
          v24 = v23;
          if (v23)
          {
            v25 = *(*v23 + 48);
            if (v83[v21] == -1)
            {
              v27 = v25(v23);
              v83[v21] = v27;
            }

            else
            {
              v26 = v25(v23);
              if (v26 != v83[v21])
              {
                std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
                v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Shape of tensor has a mismatch with the expected shape. Dimension is ", 69);
                v43 = (*(*v24 + 48))(v24);
                v44 = MEMORY[0x21CEAFB80](v42, v43);
                v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "while expecting ", 16);
                MEMORY[0x21CEAFB70](v45, v83[v21]);
                v46 = MIL::IRObject::GetLocationPtr(this);
                v47 = v46[1];
                *&v68 = *v46;
                *(&v68 + 1) = v47;
                if (v47)
                {
                  atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
                }

                std::stringbuf::str();
                MIL::ValidationResult::ValidationResult(a2, &v68, 315, &v66);
                if (v67 < 0)
                {
                  operator delete(v66);
                }

                v41 = *(&v68 + 1);
                if (!*(&v68 + 1))
                {
                  goto LABEL_56;
                }

LABEL_55:
                std::__shared_weak_count::__release_shared[abi:ne200100](v41);
                goto LABEL_56;
              }
            }
          }
        }

        if (v12 == ++v21)
        {
          goto LABEL_42;
        }
      }
    }

    goto LABEL_42;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
  v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Rank of tensor ", 15);
  v58 = MIL::IRTensorValueType::Rank(v20);
  v59 = MEMORY[0x21CEAFB70](v57, v58);
  v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, " has a mismatch with the expected rank ", 39);
  v61 = MEMORY[0x21CEAFB70](v60, v12);
  v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, " in the ", 8);
  v63 = MEMORY[0x21CEAFB30](v62, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "th tensor.", 10);
  v64 = MIL::IRObject::GetLocationPtr(this);
  v65 = v64[1];
  *&v71 = *v64;
  *(&v71 + 1) = v65;
  if (v65)
  {
    atomic_fetch_add_explicit((v65 + 8), 1uLL, memory_order_relaxed);
  }

  std::stringbuf::str();
  MIL::ValidationResult::ValidationResult(a2, &v71, 315, &v69);
  if (v70 < 0)
  {
    operator delete(v69);
  }

  v41 = *(&v71 + 1);
  if (*(&v71 + 1))
  {
    goto LABEL_55;
  }

LABEL_56:
  __p = *MEMORY[0x277D82828];
  *(&__p + *(__p - 3)) = *(MEMORY[0x277D82828] + 24);
  v79 = MEMORY[0x277D82878] + 16;
  if (v81 < 0)
  {
    operator delete(v80[7].__locale_);
  }

  v79 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v80);
  std::ostream::~ostream();
  MEMORY[0x21CEAFDA0](&v82);
LABEL_59:
  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }
}

void sub_218347340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  std::ostringstream::~ostringstream(&a41);
  v48 = *(v46 - 152);
  if (v48)
  {
    *(v46 - 144) = v48;
    operator delete(v48);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceReshape(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  v8 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v26 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "shape");
  SingleValue = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, &__p);
  if (v26 < 0)
  {
    operator delete(__p);
  }

  v10 = (*(*v8 + 88))(v8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "shape");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &__p);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  IsValue = MIL::IRTypedArgument::IsValue(*v11[5]);
  v13 = IsValue;
  if (v26 < 0)
  {
    operator delete(__p);
    if (v13)
    {
LABEL_8:
      v32[0] = 0;
      v32[1] = 0;
      v33 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v14 = a2[1];
      v24[0] = *a2;
      v24[1] = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::Operators::Common::ios17::ComputeTargetShapeForReshape(SingleValue, v24, v8, &v28, &__p);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (MIL::ValidationResult::IsGood(&__p))
      {
        v15 = v29;
        if (v28 != v29)
        {
          v16 = v28;
          do
          {
            v17 = *v16;
            if (v17)
            {
              v31 = MIL::IRConstantDimension::Make(*a1, v17);
            }

            else
            {
              v31 = MIL::IRUnknownDimension::Make(*a1, v17);
            }

            std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v32, &v31);
            ++v16;
          }

          while (v16 != v15);
        }

        MIL::IRTensorValueType::MakeWithShape(*a1, v10, v32);
      }

      exception = __cxa_allocate_exception(0x48uLL);
      MIL::MILResult::MILResult(v22, &__p);
      v22[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
      v23 = v27;
      MIL::ValidationError::ValidationError(exception, v22);
    }
  }

  else if (IsValue)
  {
    goto LABEL_8;
  }

  v18 = *a1;
  std::string::basic_string[abi:ne200100]<0>(v32, "shape");
  v19 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, v32);
  v20 = MIL::IRValueType::AsTensorType(v19);
  MIL::ValueTypeInferenceUtils::InferShapeForDynamicReshape(v18, v20, &__p);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }

  MIL::IRTensorValueType::MakeWithShape(*a1, v10, &__p);
}

void sub_21834781C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p)
{
  MIL::ValidationResult::~ValidationResult(&a9);
  MIL::ValidationResult::~ValidationResult(&a18);
  if (__p)
  {
    operator delete(__p);
  }

  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::CustomValueTypeInference::ValueTypeInferenceConcat(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceConcat(a1, &v5, a3);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_218347938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios17::Concat::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218348424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v55 = *(v53 - 88);
  *(v53 - 88) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v53 - 120), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a52, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::ExpandDims::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2183496BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  v68 = *(v66 - 120);
  *(v66 - 120) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v66 - 128), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a65, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::Reshape::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21834AC38(_Unwind_Exception *a1)
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
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x208], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::ReshapeLike::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21834C4CC(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x218], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::Reverse::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21834DCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void **a58)
{
  v61 = *(v59 - 120);
  *(v59 - 120) = 0;
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
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x240], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::ReverseSequence::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21834F7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *(v66 - 120);
  *(v66 - 120) = 0;
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
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x270], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::SliceByIndex::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218351E38(_Unwind_Exception *a1)
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
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x410], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::SliceBySize::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218353E90(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 160), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2C0], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::SlidingWindows::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218355640(_Unwind_Exception *a1)
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
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x200], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::Squeeze::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218356C44(_Unwind_Exception *a1)
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
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x208], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios17::Transpose::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21835824C(_Unwind_Exception *a1)
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
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x208], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::BaseActivation::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_218359494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a47)
  {
    (*(*a47 + 8))(a47, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  v58 = *v55;
  *v55 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a55, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::BaseActivationWithAlpha::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_21835A7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a57)
  {
    (*(*a57 + 8))(a57, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  v68 = *v65;
  *v65 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v66 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a65, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::BaseActivationWithAlphaBeta::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_21835BD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a65)
  {
    (*(*a65 + 8))(a65, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a66, 0);
  v69 = *v66;
  *v66 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v67 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x210], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ClampedReLU::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios18::BaseActivationWithAlphaBeta::Make();
}

void sub_21835C414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::LinearActivation::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios18::BaseActivationWithAlphaBeta::Make();
}

void sub_21835C4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ScaledTanh::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios18::BaseActivationWithAlphaBeta::Make();
}

void sub_21835C57C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::SigmoidHard::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios18::BaseActivationWithAlphaBeta::Make();
}

void sub_21835C630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ELU::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios18::BaseActivationWithAlpha::Make();
}

void sub_21835C6E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::LeakyReLU::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios18::BaseActivationWithAlpha::Make();
}

void sub_21835C798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ThresholdedReLU::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios18::BaseActivationWithAlpha::Make();
}

void sub_21835C84C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ERF::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios18::BaseActivation::Make();
}

void sub_21835C900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::GeLU::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21835D7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a55)
  {
    (*(*a55 + 8))(a55, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  v66 = *v63;
  *v63 = 0;
  if (v66)
  {
    (*(*v66 + 8))(v66);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v64 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a63, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ReLU::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios18::BaseActivation::Make();
}

void sub_21835DE14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ReLU6::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios18::BaseActivation::Make();
}

void sub_21835DEC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Sigmoid::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios18::BaseActivation::Make();
}

void sub_21835DF7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::SiLU::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios18::BaseActivation::Make();
}

void sub_21835E030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Softplus::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios18::BaseActivation::Make();
}

void sub_21835E0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Softsign::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios18::BaseActivation::Make();
}

void sub_21835E198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::PReLU::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21835F2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void **a60, uint64_t a61, uint64_t a62, void *a63)
{
  v68 = a63;
  a63 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v66 - 80), 0);
  v69 = *v65;
  *v65 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a65, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::Softmax::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2183607F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a57)
  {
    (*(*a57 + 8))(a57, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  v68 = *v65;
  *v65 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v66 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a65, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::SoftplusParametric::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21836225C(_Unwind_Exception *a1)
{
  v4 = STACK[0x240];
  STACK[0x240] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 80), 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x218], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x268], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::CustomValidators::ValidateConstexprLutToDense(MIL::Operators::Common::ios18::CustomValidators *this@<X0>, MIL::ValidationResult *x8_0@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "indices");
  ParameterValue = MIL::IROperation::GetParameterValue(this, __p);
  v6 = (*(*ParameterValue + 40))(ParameterValue);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lut");
  v7 = MIL::IROperation::GetParameterValue(this, __p);
  v8 = (*(*v7 + 40))(v7);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = (*(*v6 + 32))(v6);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v8 + 32))(v8);
  v12 = MIL::IRValueType::AsTensorType(v11);
  std::string::basic_string[abi:ne200100]<0>(__p, "vector_axis");
  v13 = MIL::IROperation::TryGetParameterValue(this, __p, 0);
  v14 = v13;
  if (v29 < 0)
  {
    operator delete(__p[0]);
    if (v14)
    {
      goto LABEL_7;
    }
  }

  else if (v13)
  {
LABEL_7:
    v15 = MIL::IRValue::GetScalar<int>(v14);
    v16 = v15 & 0xFFFFFF00;
    v17 = v15;
    v18 = 0x100000000;
    goto LABEL_10;
  }

  v18 = 0;
  v17 = 0;
  v16 = 0;
LABEL_10:
  v19 = (*(*this + 176))(this);
  if (*(v19 + 8) == *v19)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  Type = MIL::IRNamedValueType::GetType(**v19);
  v21 = MIL::IRValueType::AsTensorType(Type);
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v23 = (*(*v10 + 88))(v10);
  v24 = (*(*v10 + 96))(v10);
  v25 = v16 | v17;
  v26 = (*(*v21 + 88))(v21);
  v27 = (*(*v21 + 96))(v21);
}

void sub_218362C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::ValidateCommonConstexprFromLut(MIL::IRTensorValueType *this@<X3>, void *a2@<X0>, int a3@<W1>, uint64_t *a4@<X2>, MIL::Validation *a5@<X4>, int a6@<W5>, void *a7@<X6>, MIL::ValidationResult *a8@<X8>)
{
  v14 = *a4;
  v15 = a4[1];
  v16 = v15 - *a4;
  v17 = v16 >> 3;
  if (MIL::IRTensorValueType::Rank(this) != (v16 >> 3) + 2)
  {
    v37 = a2[1];
    *&v89 = *a2;
    *(&v89 + 1) = v37;
    if (v37)
    {
      atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v87, "Input lut should have rank=K+2 where K is the rank of indices");
    MIL::ValidationResult::ValidationResult(a8, &v89, 315, v87);
    if (v88 < 0)
    {
      operator delete(v87[0]);
    }

    v36 = *(&v89 + 1);
    if (!*(&v89 + 1))
    {
      return;
    }

    goto LABEL_46;
  }

  if (v15 != v14)
  {
    v55 = a7;
    v57 = a2;
    v58 = a8;
    v18 = 0;
    if (v17 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v16 >> 3;
    }

    while (1)
    {
      v20 = (*(**(*a4 + 8 * v18) + 16))(*(*a4 + 8 * v18));
      v21 = (*(*v20 + 48))(v20);
      v22 = (*(*this + 96))(this);
      v23 = (*(**(*v22 + 8 * v18) + 16))(*(*v22 + 8 * v18));
      if (v21 % (*(*v23 + 48))(v23))
      {
        break;
      }

      if (v19 == ++v18)
      {
        a2 = v57;
        a8 = v58;
        a7 = v55;
        goto LABEL_9;
      }
    }

    v38 = v57[1];
    *&v86 = *v57;
    *(&v86 + 1) = v38;
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v84, "The first K dimensions of lut must be factors of indices dimensions");
    MIL::ValidationResult::ValidationResult(v58, &v86, 315, v84);
    if (v85 < 0)
    {
      operator delete(v84[0]);
    }

    v36 = *(&v86 + 1);
    if (!*(&v86 + 1))
    {
      return;
    }

LABEL_46:
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    return;
  }

LABEL_9:
  v24 = (*(*this + 96))(this);
  v25 = (*(**(*v24 + v16) + 16))(*(*v24 + v16));
  v26 = (*(*v25 + 48))(v25);
  if (a3 == 14 && v26 != 256 || a3 == 23 && v26 != 64 || a3 == 20 && v26 != 16 || a3 == 22 && v26 != 8 || a3 == 19 && v26 != 4 || a3 == 21 && v26 != 2)
  {
    v27 = a2[1];
    *&v83 = *a2;
    *(&v83 + 1) = v27;
    if (v27)
    {
      atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
    }

    std::to_string(&v78, v26);
    v28 = std::string::insert(&v78, 0, "Provided NUM_PALETTES ");
    v29 = *&v28->__r_.__value_.__l.__data_;
    v79.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v79.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = std::string::append(&v79, " does not match the indices dtype ");
    v31 = *&v30->__r_.__value_.__l.__data_;
    v80.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v80.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    MIL::IRDataTypeToString(a3, __p);
    if ((v77 & 0x80u) == 0)
    {
      v32 = __p;
    }

    else
    {
      v32 = __p[0];
    }

    if ((v77 & 0x80u) == 0)
    {
      v33 = v77;
    }

    else
    {
      v33 = __p[1];
    }

    v34 = std::string::append(&v80, v32, v33);
    v35 = *&v34->__r_.__value_.__l.__data_;
    v82 = v34->__r_.__value_.__r.__words[2];
    v81 = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationResult::ValidationResult(a8, &v83, 315, &v81);
    if (SHIBYTE(v82) < 0)
    {
      operator delete(v81);
    }

    if (v77 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v79.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }

    v36 = *(&v83 + 1);
    if (!*(&v83 + 1))
    {
      return;
    }

    goto LABEL_46;
  }

  v56 = a7;
  v39 = (*(*this + 96))(this);
  v40 = (*(**(*v39 + v16 + 8) + 16))(*(*v39 + v16 + 8));
  v41 = (*(*v40 + 48))(v40);
  if (v41 >= 2 && (a5 & 0x100000000) == 0)
  {
    v44 = a2[1];
    *&v75 = *a2;
    *(&v75 + 1) = v44;
    if (v44)
    {
      atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v73, "vector_axis must be provided if vector_size specified in lut > 1");
    MIL::ValidationResult::ValidationResult(a8, &v75, 315, v73);
    if (v74 < 0)
    {
      operator delete(v73[0]);
    }

    v36 = *(&v75 + 1);
    if (!*(&v75 + 1))
    {
      return;
    }

    goto LABEL_46;
  }

  if ((*(*this + 88))(this) != a6)
  {
    v43 = a2[1];
    *&v72 = *a2;
    *(&v72 + 1) = v43;
    if (v43)
    {
      atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v70, "Input lut and output should have same dtype");
    MIL::ValidationResult::ValidationResult(a8, &v72, 304, v70);
    if (v71 < 0)
    {
      operator delete(v70[0]);
    }

    v36 = *(&v72 + 1);
    if (!*(&v72 + 1))
    {
      return;
    }

    goto LABEL_46;
  }

  if ((a5 & 0x100000000) != 0)
  {
    if (!MIL::Validation::IsAxisValidForRank(a5, v16 >> 3))
    {
      v53 = a2[1];
      *&v69 = *a2;
      *(&v69 + 1) = v53;
      if (v53)
      {
        atomic_fetch_add_explicit((v53 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v67, "'vector_axis' must be within range (-indices_rank - 1, indices_rank) (exclusive)");
      MIL::ValidationResult::ValidationResult(a8, &v69, 315, v67);
      if (v68 < 0)
      {
        operator delete(v67[0]);
      }

      v36 = *(&v69 + 1);
      if (!*(&v69 + 1))
      {
        return;
      }

      goto LABEL_46;
    }

    v42 = ((v17 & (a5 >> 31)) + a5);
  }

  else
  {
    v42 = 0;
  }

  if (v56[1] - *v56 != v16)
  {
    v52 = a2[1];
    *&v66 = *a2;
    *(&v66 + 1) = v52;
    if (v52)
    {
      atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v64, "output must have the same rank as the input indices");
    MIL::ValidationResult::ValidationResult(a8, &v66, 315, v64);
    if (v65 < 0)
    {
      operator delete(v64[0]);
    }

    v36 = *(&v66 + 1);
    if (!*(&v66 + 1))
    {
      return;
    }

    goto LABEL_46;
  }

  if (v15 == v14)
  {
LABEL_83:

    MIL::ValidationResult::ValidationResult(a8);
    return;
  }

  v45 = a2;
  v46 = 0;
  if (v17 <= 1)
  {
    v47 = 1;
  }

  else
  {
    v47 = v17;
  }

  while (1)
  {
    v48 = v42 == v46 ? v41 : 1;
    v49 = (*(**(*a4 + 8 * v46) + 16))(*(*a4 + 8 * v46));
    v50 = (*(*v49 + 48))(v49) * v48;
    v51 = (*(**(*v56 + 8 * v46) + 16))(*(*v56 + 8 * v46));
    if (v50 != (*(*v51 + 48))(v51))
    {
      break;
    }

    if (v47 == ++v46)
    {
      goto LABEL_83;
    }
  }

  v54 = v45[1];
  *&v63 = *v45;
  *(&v63 + 1) = v54;
  if (v54)
  {
    atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v61, "The output dimension does not match the indices' dimension with vector size over vector_axis");
  MIL::ValidationResult::ValidationResult(a8, &v63, 315, v61);
  if (v62 < 0)
  {
    operator delete(v61[0]);
  }

  v36 = *(&v63 + 1);
  if (*(&v63 + 1))
  {
    goto LABEL_46;
  }
}

void sub_218363480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  _Unwind_Resume(a1);
}

void sub_218363600()
{
  if (*(v0 - 113) < 0)
  {
    operator delete(*(v0 - 136));
  }

  if (!*(v0 - 104))
  {
    JUMPOUT(0x2183635F8);
  }

  JUMPOUT(0x2183635F4);
}

void MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceConstexprLutToDense(uint64_t *a1, void x1_0, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "indices");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lut");
  v7 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, __p);
  v8 = MIL::IRValueType::AsTensorType(v7);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = (*(*v8 + 88))(v8);
  v10 = (*(*v6 + 96))(v6);
  __p[0] = 0;
  __p[1] = 0;
  v26 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, *v10, *(v10 + 8), (*(v10 + 8) - *v10) >> 3);
  std::string::basic_string[abi:ne200100]<0>(&v27, "vector_axis");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &v27);
  v12 = v11;
  if (v28 < 0)
  {
    operator delete(v27);
    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else if (!v11)
  {
LABEL_15:
    MIL::IRTensorValueType::MakeWithShape(*a1, v9, __p);
  }

  std::string::basic_string[abi:ne200100]<0>(&v27, "vector_axis");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, &v27);
  v14 = MIL::IRValue::AsTensor(SingleValue);
  v15 = MIL::IRValue::GetScalar<int>(v14);
  v16 = v15;
  if (v28 < 0)
  {
    operator delete(v27);
    if (v16 < 0)
    {
LABEL_13:
      v17 = (*(*v6 + 96))(v6);
      v16 += (v17[1] - *v17) >> 3;
    }
  }

  else if (v15 < 0)
  {
    goto LABEL_13;
  }

  v18 = *a1;
  v19 = MIL::IRDimension::AsConstant(*(__p[0] + v16));
  v20 = (*(*v19 + 48))(v19);
  v21 = (*(*v8 + 96))(v8);
  v22 = MIL::IRDimension::AsConstant(*(*(v21 + 8) - 8));
  v23 = (*(*v22 + 48))(v22);
  v24 = MIL::IRConstantDimension::Make(v18, (v23 * v20));
  *(__p[0] + v16) = v24;
  goto LABEL_15;
}

void sub_218363914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios18::CustomGetConstant::GetConstantConstexprLutToDense(void x0_0, MIL::MILContext *a1)
{
  std::string::basic_string[abi:ne200100]<0>(v11, "indices");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetInputSharedPtr(a1, v11, &v13);
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v11, "lut");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetInputSharedPtr(a1, v11, &v10);
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  v3 = (*(*a1 + 176))(a1);
  Type = MIL::IRNamedValueType::GetType(**v3);
  v9 = (*(*Type + 24))(Type);
  std::string::basic_string[abi:ne200100]<0>(v11, "vector_axis");
  MIL::IROperation::TryGetParameterValueSharedPtr(a1, v11, 0, &lpsrc);
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (lpsrc)
  {
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v6 = 0;
    }

    MIL::Operators::Common::Shared::ValidateAndGetAxis();
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    std::make_unique[abi:ne200100]<MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToDense,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,int &,0>();
  }

  std::make_unique[abi:ne200100]<MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToDense,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,0>();
}

void sub_218363DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a23)
  {
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    (*(*a15 + 8))(a15, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToDense>::~unique_ptr[abi:ne200100]((v28 - 88));
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  v30 = *(v28 - 96);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 56);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  _Unwind_Resume(a1);
}

void sub_21836402C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  MEMORY[0x21CEAFEA0](v13, v12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToDense **std::unique_ptr<MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToDense>::~unique_ptr[abi:ne200100](MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToDense **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToDense::~BlockwiseLutToDense(v2);
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void sub_218364148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  MEMORY[0x21CEAFEA0](v13, v12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceConstexprCast(uint64_t *a1, void x1_0, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "source_val");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, &__p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v11, "output_dtype");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, v11);
  v8 = MIL::IRValue::AsTensor(SingleValue);
  MIL::IRValue::GetScalar<std::string>(v8, &__p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  v9 = MIL::StringToIRDataType(&__p, 0);
  v10 = (*(*v6 + 96))(v6);
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v11, *v10, *(v10 + 8), (*(v10 + 8) - *v10) >> 3);
  MIL::IRTensorValueType::MakeWithShape(*a1, v9, v11);
}

void sub_2183642F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void MIL::Operators::Common::ios18::CustomGetConstant::GetConstantConstexprCast(MIL::Operators::Common::ios18::CustomGetConstant *this, MIL::MILContext *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "source_val");
  (*(*a2 + 136))(&lpsrc, a2, &__p, 0);
  if (lpsrc)
  {
    if (v5 && v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v5 = 0;
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&lpsrc, "output_dtype");
  ArgumentValue = MIL::IROperation::GetArgumentValue(a2, &lpsrc);
  v7 = MIL::IRValue::AsTensor(ArgumentValue);
  MIL::IRValue::GetScalar<std::string>(v7, &__p);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(lpsrc);
  }

  v8 = MIL::StringToIRDataType(&__p, 0);
  v9 = MIL::IRValue::AsTensor(v5);
  v10 = (*(*v9 + 32))(v9);
  v11 = (*(*v10 + 96))(v10);
  lpsrc = 0;
  v13 = 0;
  v14 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&lpsrc, *v11, *(v11 + 8), (*(v11 + 8) - *v11) >> 3);
  MIL::IRTensorValueType::MakeWithShape(this, v8, &lpsrc);
}

void sub_2183646A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, MIL::Operators::Common::ios16::ConstExprs::Cast *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  v31 = *(v29 - 64);
  *(v29 - 64) = 0;
  if (v31)
  {
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    (*(*a16 + 8))(a16, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<MIL::Operators::Common::ios16::ConstExprs::Cast>::~unique_ptr[abi:ne200100](&a17);
  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::CustomValidators::ValidateConstexprSparseToDense(MIL::Operators::Common::ios18::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v31, "nonzero_data");
  ParameterValue = MIL::IROperation::GetParameterValue(this, &v31);
  v5 = (*(*ParameterValue + 40))(ParameterValue);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v31);
  }

  std::string::basic_string[abi:ne200100]<0>(&v31, "mask");
  v6 = MIL::IROperation::GetParameterValue(this, &v31);
  v7 = (*(*v6 + 40))(v6);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v31);
  }

  v8 = (*(*this + 176))(this);
  if (*(v8 + 8) == *v8)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  Type = MIL::IRNamedValueType::GetType(**v8);
  v10 = MIL::IRValueType::AsTensorType(Type);
  v11 = (*(*v10 + 88))(v10);
  v12 = (*(*v5 + 32))(v5);
  if (v11 == (*(*v12 + 88))(v12))
  {
    v13 = MIL::IRValueType::AsTensorType(Type);
    v14 = (*(*v13 + 96))(v13);
    v32 = 0;
    v33 = 0;
    v31 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v31, *v14, *(v14 + 8), (*(v14 + 8) - *v14) >> 3);
    v15 = (*(*v7 + 32))(v7);
    v16 = MIL::IRValueType::AsTensorType(v15);
    v17 = (*(*v16 + 96))(v16);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v25, *v17, *(v17 + 8), (*(v17 + 8) - *v17) >> 3);
    if (v32 - v31 == v26 - v25 && !memcmp(v31, v25, v32 - v31))
    {
      MIL::ValidationResult::ValidationResult(a2);
    }

    else
    {
      LocationPtr = MIL::IRObject::GetLocationPtr(this);
      v19 = LocationPtr[1];
      *&v24 = *LocationPtr;
      *(&v24 + 1) = v19;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "mask'shape and output's shape should match");
      MIL::ValidationResult::ValidationResult(a2, &v24, 315, __p);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (*(&v24 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v24 + 1));
      }
    }

    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }
  }

  else
  {
    v20 = MIL::IRObject::GetLocationPtr(this);
    v21 = v20[1];
    *&v30 = *v20;
    *(&v30 + 1) = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v28, "Input nonZeroData and output should have same dtype");
    MIL::ValidationResult::ValidationResult(a2, &v30, 304, v28);
    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    if (*(&v30 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
    }
  }
}

void sub_218364B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a17)
  {
    operator delete(a17);
  }

  v29 = *(v27 - 72);
  if (v29)
  {
    *(v27 - 64) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceConstexprSparseToDense(uint64_t *a1, void x1_0, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "nonzero_data");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mask");
  v7 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, __p);
  v8 = MIL::IRValueType::AsTensorType(v7);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = (*(*v8 + 96))(v8);
  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, *v9, *(v9 + 8), (*(v9 + 8) - *v9) >> 3);
  v10 = (*(*v6 + 88))(v6);
  MIL::IRTensorValueType::MakeWithShape(*a1, v10, __p);
}

void sub_218364D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios18::CustomGetConstant::GetConstantConstexprSparseToDense(MIL::Operators::Common::ios18::CustomGetConstant *this, MIL::MILContext *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "nonzero_data");
  MIL::IROperation::TryGetParameterValueSharedPtr(a2, __p, 0, &v15);
  {
    v17 = v5;
    v18 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mask");
  MIL::IROperation::TryGetParameterValueSharedPtr(a2, __p, 0, &lpsrc);
  {
    v15 = v6;
    v16 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = (*(*v17 + 32))(v17);
  v8 = (*(*v7 + 88))(v7);
  v9 = (*(*v15 + 32))(v15);
  v10 = (*(*v9 + 96))(v9);
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, *v10, *(v10 + 8), (*(v10 + 8) - *v10) >> 3);
  MIL::IRTensorValueType::MakeWithShape(this, v8, __p);
}

void sub_21836514C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, MIL::Operators::Common::ios16::ConstExprs::SparseToDense *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a17)
  {
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    (*(*a16 + 8))(a16, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<MIL::Operators::Common::ios16::ConstExprs::SparseToDense>::~unique_ptr[abi:ne200100](&a18);
  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  v28 = *(v26 - 56);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  v29 = *(v26 - 40);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::CustomValidators::ValidateConstexprBlockwiseShiftScale(MIL::Operators::Common::ios18::CustomValidators *this@<X0>, MIL::ValidationResult *x8_0@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "data");
  ParameterValue = MIL::IROperation::GetParameterValue(this, __p);
  v6 = (*(*ParameterValue + 40))(ParameterValue);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "scale");
  v7 = MIL::IROperation::GetParameterValue(this, __p);
  v8 = (*(*v7 + 40))(v7);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = (*(*v6 + 32))(v6);
  v10 = (*(*v8 + 32))(v8);
  std::string::basic_string[abi:ne200100]<0>(__p, "offset");
  MIL::IROperation::TryGetParameterValueSharedPtr(this, __p, 0, &v21);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21)
  {
    v11 = (*(*v21 + 40))(v21);
    v12 = (*(*v11 + 32))(v11);
    v13 = 1;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  v14 = (*(*this + 176))(this);
  if (*(v14 + 8) == *v14)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  Type = MIL::IRNamedValueType::GetType(**v14);
  v16 = (*(*Type + 24))(Type);
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  (*(*v9 + 88))(v9);
  v18 = (*(*v9 + 96))(v9);
  v19 = (*(*v16 + 88))(v16);
  v20 = (*(*v16 + 96))(v16);
}

void sub_218365568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::ValidateCommonConstexprBlockwiseShiftScale(MIL::IRTensorValueType *this@<X2>, void *a2@<X0>, uint64_t *a3@<X1>, uint64_t a4@<X3>, char a5@<W4>, int a6@<W5>, void *a7@<X6>, MIL::ValidationResult *a8@<X8>)
{
  v16 = a3[1] - *a3;
  if (MIL::IRTensorValueType::Rank(this) == v16 >> 3)
  {
    if (MIL::Operators::Common::Shared::IsShapeConstant(a3))
    {
      v17 = (*(*this + 96))(this);
      if (MIL::Operators::Common::Shared::IsShapeConstant(v17))
      {
        v18 = (*(*this + 96))(this);
        v48 = 0;
        v49 = 0;
        v47 = 0;
        std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v47, *v18, *(v18 + 8), (*(v18 + 8) - *v18) >> 3);
        v19 = *a3;
        if (a3[1] == *a3)
        {
LABEL_8:
          if (MIL::Operators::Common::Shared::HasSameConstantShape(a3, a7))
          {
            if ((a5 & 1) != 0 && (v24 = (*(*this + 96))(this), v25 = (*(*a4 + 96))(a4), (MIL::Operators::Common::Shared::HasSameConstantShape(v24, v25) & 1) == 0))
            {
              v34 = a2[1];
              *&v40 = *a2;
              *(&v40 + 1) = v34;
              if (v34)
              {
                atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
              }

              std::string::basic_string[abi:ne200100]<0>(v38, "scale and offset should have same shape");
              MIL::ValidationResult::ValidationResult(a8, &v40, 304, v38);
              if (v39 < 0)
              {
                operator delete(v38[0]);
              }

              v31 = *(&v40 + 1);
              if (!*(&v40 + 1))
              {
                goto LABEL_38;
              }
            }

            else
            {
              if ((*(*this + 88))(this) == a6)
              {
                MIL::ValidationResult::ValidationResult(a8);
                goto LABEL_38;
              }

              v33 = a2[1];
              *&v37 = *a2;
              *(&v37 + 1) = v33;
              if (v33)
              {
                atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
              }

              std::string::basic_string[abi:ne200100]<0>(v35, "Attribute scale and output should have same dtype");
              MIL::ValidationResult::ValidationResult(a8, &v37, 304, v35);
              if (v36 < 0)
              {
                operator delete(v35[0]);
              }

              v31 = *(&v37 + 1);
              if (!*(&v37 + 1))
              {
                goto LABEL_38;
              }
            }
          }

          else
          {
            v30 = a2[1];
            *&v43 = *a2;
            *(&v43 + 1) = v30;
            if (v30)
            {
              atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(v41, "output and data should have same shape");
            MIL::ValidationResult::ValidationResult(a8, &v43, 304, v41);
            if (v42 < 0)
            {
              operator delete(v41[0]);
            }

            v31 = *(&v43 + 1);
            if (!*(&v43 + 1))
            {
              goto LABEL_38;
            }
          }
        }

        else
        {
          v20 = 0;
          while (1)
          {
            v21 = MIL::IRDimension::AsConstant(*(v19 + 8 * v20));
            v22 = (*(*v21 + 48))(v21);
            v23 = MIL::IRDimension::AsConstant(*(v47 + v20));
            if (v22 % (*(*v23 + 48))(v23))
            {
              break;
            }

            ++v20;
            v19 = *a3;
            if (v20 >= (a3[1] - *a3) >> 3)
            {
              goto LABEL_8;
            }
          }

          v32 = a2[1];
          *&v46 = *a2;
          *(&v46 + 1) = v32;
          if (v32)
          {
            atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v44, "scale size across each dimension should be a factor of corresponding size of dimension in data argument");
          MIL::ValidationResult::ValidationResult(a8, &v46, 304, v44);
          if (v45 < 0)
          {
            operator delete(v44[0]);
          }

          v31 = *(&v46 + 1);
          if (!*(&v46 + 1))
          {
            goto LABEL_38;
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
LABEL_38:
        if (v47)
        {
          v48 = v47;
          operator delete(v47);
        }

        return;
      }

      v29 = a2[1];
      *&v52 = *a2;
      *(&v52 + 1) = v29;
      if (v29)
      {
        atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "scale shape should be compile-time constant");
      MIL::ValidationResult::ValidationResult(a8, &v52, 304, __p);
      if (v51 < 0)
      {
        operator delete(__p[0]);
      }

      v27 = *(&v52 + 1);
      if (*(&v52 + 1))
      {
LABEL_30:
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }
    }

    else
    {
      v28 = a2[1];
      *&v55 = *a2;
      *(&v55 + 1) = v28;
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v53, "data shape should be compile-time constant");
      MIL::ValidationResult::ValidationResult(a8, &v55, 304, v53);
      if (v54 < 0)
      {
        operator delete(v53[0]);
      }

      v27 = *(&v55 + 1);
      if (*(&v55 + 1))
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    v26 = a2[1];
    *&v58 = *a2;
    *(&v58 + 1) = v26;
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v56, "data and scale should have same rank");
    MIL::ValidationResult::ValidationResult(a8, &v58, 304, v56);
    if (v57 < 0)
    {
      operator delete(v56[0]);
    }

    v27 = *(&v58 + 1);
    if (*(&v58 + 1))
    {
      goto LABEL_30;
    }
  }
}

void sub_218365A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (a42)
  {
    operator delete(a42);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceConstexprBlockwiseShiftScale(uint64_t *a1, void x1_0, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "data");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "scale");
  v7 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, __p);
  v8 = MIL::IRValueType::AsTensorType(v7);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = (*(*v6 + 96))(v6);
  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, *v9, *(v9 + 8), (*(v9 + 8) - *v9) >> 3);
  v10 = (*(*v8 + 88))(v8);
  MIL::IRTensorValueType::MakeWithShape(*a1, v10, __p);
}

void sub_218365D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios18::CustomGetConstant::GetConstantConstexprBlockwiseShiftScale(MIL::Operators::Common::ios18::CustomGetConstant *this, MIL::MILContext *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v23, "data");
  MIL::IROperation::TryGetParameterValueSharedPtr(a2, v23, 0, &lpsrc);
  {
    v25 = v5;
    v26 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v23, "scale");
  MIL::IROperation::TryGetParameterValueSharedPtr(a2, v23, 0, &lpsrc);
  {
    v21 = v6;
    v22 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  v7 = (*(*v25 + 32))(v25);
  v8 = (*(*v7 + 96))(v7);
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v23, *v8, *(v8 + 8), (*(v8 + 8) - *v8) >> 3);
  v19 = 0;
  v20 = 0;
  std::string::basic_string[abi:ne200100]<0>(&lpsrc, "offset");
  MIL::IROperation::TryGetParameterValueSharedPtr(a2, &lpsrc, 0, &v17);
  if (v16 < 0)
  {
    operator delete(lpsrc);
  }

  if (v17)
  {
    if (v9)
    {
      v10 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v20;
    v19 = v9;
    v20 = v10;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v12 = (*(*v21 + 32))(v21);
  v13 = (*(*v12 + 88))(v12);
  MIL::IRTensorValueType::MakeWithShape(this, v13, v23);
}

void sub_2183661E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  if (a17)
  {
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    (*(*a16 + 8))(a16, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale>::~unique_ptr[abi:ne200100](&a24);
  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  v29 = *(v27 - 72);
  if (v29)
  {
    *(v27 - 64) = v29;
    operator delete(v29);
  }

  v30 = *(v27 - 80);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v27 - 40);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  _Unwind_Resume(a1);
}

void sub_2183663C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::make_unique[abi:ne200100]<MIL::Builder::OperationBuilder::OperationBuilderImpl,std::shared_ptr<MIL::IROperation> &,std::shared_ptr<MIL::MILContext>,std::string,MIL::Builder::BlockBuilder *&,0>((v12 | 8), (v13 | 8));
  MEMORY[0x21CEAFEA0](v11, v10);
  _Unwind_Resume(a1);
}

MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale **std::unique_ptr<MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale>::~unique_ptr[abi:ne200100](MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale::~BlockwiseShiftScale(v2);
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void MIL::Operators::Common::ios18::CustomValidators::ValidateConstexprLutToSparse(MIL::Operators::Common::ios18::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "indices_mask");
  ParameterValue = MIL::IROperation::GetParameterValue(this, __p);
  v5 = (*(*ParameterValue + 40))(ParameterValue);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "indices_nonzero_data");
  v6 = MIL::IROperation::GetParameterValue(this, __p);
  v7 = (*(*v6 + 40))(v6);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lut");
  v8 = MIL::IROperation::GetParameterValue(this, __p);
  v9 = (*(*v8 + 40))(v8);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = (*(*v5 + 32))(v5);
  v11 = MIL::IRValueType::AsTensorType(v10);
  v12 = (*(*v7 + 32))(v7);
  v13 = MIL::IRValueType::AsTensorType(v12);
  v14 = (*(*v9 + 32))(v9);
  v15 = MIL::IRValueType::AsTensorType(v14);
  std::string::basic_string[abi:ne200100]<0>(__p, "vector_axis");
  v16 = MIL::IROperation::TryGetParameterValue(this, __p, 0);
  v17 = v16;
  if (v46 < 0)
  {
    operator delete(__p[0]);
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_11:
    v20 = 0;
    v19 = 0;
    goto LABEL_12;
  }

  if (!v16)
  {
    goto LABEL_11;
  }

LABEL_9:
  v18 = MIL::IRValue::GetScalar<int>(v17);
  v19 = v18 & 0xFFFFFF00;
  v20 = v18;
  v17 = 0x100000000;
LABEL_12:
  v21 = (*(*this + 176))(this);
  if (*(v21 + 8) == *v21 || (v22 = v21, v40 = v20, v41 = v17, Type = MIL::IRNamedValueType::GetType(**v21), v24 = MIL::IRValueType::AsTensorType(Type), v22[1] - *v22 <= 0x10uLL))
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  v25 = v24;
  v26 = MIL::IRNamedValueType::GetType(*(*v22 + 16));
  v27 = MIL::IRValueType::AsTensorType(v26);
  v28 = (*(*v27 + 16))(v27);
  v29 = (*(*v13 + 16))(v13);
  v30 = (*(*v15 + 96))(v15);
  v31 = (*(**(*(v30 + 8) - 8) + 16))(*(*(v30 + 8) - 8));
  v32 = (*(*v31 + 48))(v31) * v29;
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v34 = LocationPtr;
  if (v28 == v32)
  {
    v35 = (*(*v13 + 88))(v13);
    v36 = (*(*v11 + 96))(v11);
    v37 = (*(*v27 + 88))(v27);
    v38 = (*(*v25 + 96))(v25);
  }

  else
  {
    v39 = LocationPtr[1];
    *&v44 = *LocationPtr;
    *(&v44 + 1) = v39;
    if (v39)
    {
      atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v42, "Size of the output nonZeroData should be vector_size times of the size of input nonZeroData.");
    MIL::ValidationResult::ValidationResult(a2, &v44, 304, v42);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    if (*(&v44 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v44 + 1));
    }
  }
}

void sub_218366910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceConstexprLutToSparse(uint64_t *a1, void x1_0, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "indices_nonzero_data");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "indices_mask");
  v7 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, __p);
  v8 = MIL::IRValueType::AsTensorType(v7);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lut");
  v9 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, __p);
  v10 = MIL::IRValueType::AsTensorType(v9);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

  v11 = (*(*v8 + 96))(v8);
  __p[0] = 0;
  __p[1] = 0;
  v37 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, *v11, *(v11 + 8), (*(v11 + 8) - *v11) >> 3);
  v12 = (*(*v6 + 96))(v6);
  memset(v35, 0, sizeof(v35));
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v35, *v12, *(v12 + 8), (*(v12 + 8) - *v12) >> 3);
  std::string::basic_string[abi:ne200100]<0>(&v38, "vector_axis");
  v13 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &v38);
  v14 = v13;
  if (v39 < 0)
  {
    operator delete(v38);
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  else if (!v13)
  {
LABEL_17:
    v34 = (*(*v8 + 88))(v8);
    MIL::IRTensorValueType::MakeWithShape(*a1, v34, __p);
  }

  std::string::basic_string[abi:ne200100]<0>(&v38, "vector_axis");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, &v38);
  v16 = MIL::IRValue::AsTensor(SingleValue);
  v17 = MIL::IRValue::GetScalar<int>(v16);
  v18 = v17;
  if (v39 < 0)
  {
    operator delete(v38);
    if (v18 < 0)
    {
LABEL_15:
      v19 = (*(*v8 + 96))(v8);
      v18 += (v19[1] - *v19) >> 3;
    }
  }

  else if (v17 < 0)
  {
    goto LABEL_15;
  }

  v20 = *a1;
  v21 = MIL::IRDimension::AsConstant(*(__p[0] + v18));
  v22 = (*(*v21 + 48))(v21);
  v23 = (*(*v10 + 96))(v10);
  v24 = MIL::IRDimension::AsConstant(*(*(v23 + 8) - 8));
  v25 = (*(*v24 + 48))(v24);
  v26 = MIL::IRConstantDimension::Make(v20, (v25 * v22));
  *(__p[0] + v18) = v26;
  v27 = *a1;
  v28 = MIL::IRDimension::AsConstant(*(v35[0] + v18));
  v29 = (*(*v28 + 48))(v28);
  v30 = (*(*v10 + 96))(v10);
  v31 = MIL::IRDimension::AsConstant(*(*(v30 + 8) - 8));
  v32 = (*(*v31 + 48))(v31);
  v33 = MIL::IRConstantDimension::Make(v27, (v32 * v29));
  *(v35[0] + v18) = v33;
  goto LABEL_17;
}

void sub_218366DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

void MIL::Operators::Common::ios18::CustomGetConstant::GetConstantsConstexprLutToSparse(void x0_0, MIL::MILContext *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "indices_mask");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetInputSharedPtr(a1, &__p, &v16);
  if (v18 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "indices_nonzero_data");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetInputSharedPtr(a1, &__p, &v15);
  if (v18 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "lut");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetInputSharedPtr(a1, &__p, &v14);
  if (v18 < 0)
  {
    operator delete(__p);
  }

  if ((*(*a1 + 192))(a1) == 2)
  {
    v3 = (*(*a1 + 176))(a1);
    Type = MIL::IRNamedValueType::GetType(**v3);
    (*(*Type + 24))(Type);
    v5 = (*(*a1 + 176))(a1);
    v6 = MIL::IRNamedValueType::GetType(*(*v5 + 16));
    (*(*v6 + 24))(v6);
    std::string::basic_string[abi:ne200100]<0>(&__p, "vector_axis");
    MIL::IROperation::TryGetParameterValueSharedPtr(a1, &__p, 0, &lpsrc);
    if (v18 < 0)
    {
      operator delete(__p);
    }

    if (lpsrc.__r_.__value_.__r.__words[0])
    {
      {
        atomic_fetch_add_explicit((lpsrc.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        v12 = size;
        atomic_fetch_add_explicit((size + 8), 1uLL, memory_order_relaxed);
      }

      else
      {
        v12 = 0;
      }

      MIL::Operators::Common::Shared::ValidateAndGetAxis();
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      std::allocate_shared[abi:ne200100]<MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse,std::allocator<MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse>,MIL::IRTensorValueType const*&,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,int &,0>();
    }

    std::allocate_shared[abi:ne200100]<MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse,std::allocator<MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse>,MIL::IRTensorValueType const*&,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,0>();
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "ConstexprLutToSparse should exactly have 2 outputs, but get ", 60);
  v9 = (*(*a1 + 192))(a1);
  v10 = MEMORY[0x21CEAFB80](v8, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ".", 1);
  exception = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(exception, &lpsrc);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
}

void sub_2183677A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, std::__shared_weak_count *a47, uint64_t a48, std::__shared_weak_count *a49, uint64_t a50, std::__shared_weak_count *a51, void *a52)
{
  if (a45 < 0)
  {
    operator delete(__p);
    if ((v53 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a52);
      if (a47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a47);
      }

      if (a49)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a49);
      }

      if (a51)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a51);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v53)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v52);
  goto LABEL_6;
}

void MIL::Operators::Common::ios18::CustomValidators::ValidateConstexprSparseBlockwiseShiftScale(MIL::Operators::Common::ios18::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "data_mask");
  ParameterValue = MIL::IROperation::GetParameterValue(this, __p);
  v5 = (*(*ParameterValue + 40))(ParameterValue);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "nonzero_data");
  v6 = MIL::IROperation::GetParameterValue(this, __p);
  v7 = (*(*v6 + 40))(v6);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "scale");
  v8 = MIL::IROperation::GetParameterValue(this, __p);
  v9 = (*(*v8 + 40))(v8);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = (*(*v9 + 32))(v9);
  std::string::basic_string[abi:ne200100]<0>(__p, "offset");
  MIL::IROperation::TryGetParameterValueSharedPtr(this, __p, 0, &v27);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  if (v27)
  {
    v11 = (*(*v27 + 40))(v27);
    v12 = (*(*v11 + 32))(v11);
    v13 = 1;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  v14 = (*(*this + 176))(this);
  if (*(v14 + 8) == *v14 || (v15 = v14, Type = MIL::IRNamedValueType::GetType(**v14), v17 = (*(*Type + 24))(Type), v15[1] - *v15 <= 0x10uLL))
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  v18 = v17;
  v19 = MIL::IRNamedValueType::GetType(*(*v15 + 16));
  v20 = (*(*v19 + 24))(v19);
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v22 = (*(*v7 + 32))(v7);
  (*(*v22 + 88))(v22);
  v23 = (*(*v5 + 32))(v5);
  v24 = (*(*v23 + 96))(v23);
  v25 = (*(*v20 + 88))(v20);
  v26 = (*(*v18 + 96))(v18);
}

void sub_218367F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios18::CustomValueTypeInference::ValueTypeInferenceConstexprSparseBlockwiseShiftScale(uint64_t *a1, void x1_0, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "nonzero_data");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "data_mask");
  v7 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, __p);
  MIL::IRValueType::AsTensorType(v7);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "scale");
  v8 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, __p);
  v9 = MIL::IRValueType::AsTensorType(v8);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  v10 = (*(*v6 + 96))(v6);
  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, *v10, *(v10 + 8), (*(v10 + 8) - *v10) >> 3);
  v11 = (*(*v9 + 88))(v9);
  MIL::IRTensorValueType::MakeWithShape(*a1, v11, __p);
}

void sub_218368160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios18::CustomGetConstant::GetConstantsConstexprSparseBlockwiseShiftScale(void x0_0, MIL::MILContext *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "data_mask");
  MIL::IROperation::TryGetParameterValueSharedPtr(a1, &__p, 0, &lpsrc);
  {
    v26 = v3;
    size = lpsrc.__r_.__value_.__l.__size_;
    if (lpsrc.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((lpsrc.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v26 = 0;
    size = 0;
  }

  if (lpsrc.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](lpsrc.__r_.__value_.__l.__size_);
  }

  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "nonzero_data");
  MIL::IROperation::TryGetParameterValueSharedPtr(a1, &__p, 0, &lpsrc);
  {
    v24 = v4;
    v25 = lpsrc.__r_.__value_.__l.__size_;
    if (lpsrc.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((lpsrc.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  if (lpsrc.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](lpsrc.__r_.__value_.__l.__size_);
  }

  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "scale");
  MIL::IROperation::TryGetParameterValueSharedPtr(a1, &__p, 0, &lpsrc);
  {
    v22 = v5;
    v23 = lpsrc.__r_.__value_.__l.__size_;
    if (lpsrc.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((lpsrc.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  if (lpsrc.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](lpsrc.__r_.__value_.__l.__size_);
  }

  if (v29 < 0)
  {
    operator delete(__p);
  }

  if ((*(*a1 + 192))(a1) == 2)
  {
    v6 = (*(*a1 + 176))(a1);
    Type = MIL::IRNamedValueType::GetType(**v6);
    v20 = (*(*Type + 24))(Type);
    v8 = (*(*a1 + 176))(a1);
    v9 = MIL::IRNamedValueType::GetType(*(*v8 + 16));
    v19 = (*(*v9 + 24))(v9);
    *&lpsrc.__r_.__value_.__l.__data_ = 0uLL;
    std::string::basic_string[abi:ne200100]<0>(&__p, "offset");
    MIL::IROperation::TryGetParameterValueSharedPtr(a1, &__p, 0, &v17);
    if (v29 < 0)
    {
      operator delete(__p);
    }

    if (v17)
    {
      if (v10)
      {
        v11 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v11 = 0;
      }

      v12 = lpsrc.__r_.__value_.__l.__size_;
      lpsrc.__r_.__value_.__r.__words[0] = v10;
      lpsrc.__r_.__value_.__l.__size_ = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    std::allocate_shared[abi:ne200100]<MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale,std::allocator<MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale>,MIL::IRTensorValueType const*&,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,0>();
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "ConstexprSparseBlockwiseShiftScale should exactly have 2 outputs, but get ", 74);
  v14 = (*(*a1 + 192))(a1);
  v15 = MEMORY[0x21CEAFB80](v13, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ".", 1);
  exception = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(exception, &lpsrc);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
}

void sub_21836898C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, std::__shared_weak_count *a39, uint64_t a40, std::__shared_weak_count *a41, uint64_t a42, std::__shared_weak_count *a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a37 < 0)
  {
    operator delete(__p);
    if ((v50 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a44);
      if (a39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a39);
      }

      if (a41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a41);
      }

      if (a43)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a43);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v50)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v49);
  goto LABEL_6;
}

void *std::__shared_ptr_emplace<MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse>::__shared_ptr_emplace[abi:ne200100]<MIL::IRTensorValueType const*&,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,int &,std::allocator<MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse>,0>(void *a1, uint64_t *a2, uint64_t *a3, __int128 *a4, __int128 *a5, __int128 *a6, unsigned int *a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829EC208;
  std::allocator<MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse>::construct[abi:ne200100]<MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse,MIL::IRTensorValueType const*&,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,int &>(&v9, a1 + 3, a2, a3, a4, a5, a6, a7);
  return a1;
}

void std::__shared_ptr_emplace<MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829EC208;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void std::allocator<MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse>::construct[abi:ne200100]<MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse,MIL::IRTensorValueType const*&,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,int &>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, __int128 *a5, __int128 *a6, __int128 *a7, unsigned int *a8)
{
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  *a5 = 0uLL;
  v13 = *a6;
  v14 = v11;
  *a6 = 0uLL;
  v12 = *a7;
  *a7 = 0uLL;
  MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::BlockwiseLutToSparse(a2, v9, v10, &v14, &v13, &v12, *a8);
  if (*(&v12 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
  }

  if (*(&v13 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
  }

  if (*(&v14 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
  }
}

void sub_218368E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::make_unique[abi:ne200100]<MIL::Builder::OperationBuilder::OperationBuilderImpl,std::shared_ptr<MIL::IROperation> &,std::shared_ptr<MIL::MILContext>,std::string,MIL::Builder::BlockBuilder *&,0>((v11 | 8), (v10 | 8));
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse>::__shared_ptr_emplace[abi:ne200100]<MIL::IRTensorValueType const*&,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::allocator<MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse>,0>(void *a1, uint64_t *a2, uint64_t *a3, __int128 *a4, __int128 *a5, __int128 *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829EC208;
  std::allocator<MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse>::construct[abi:ne200100]<MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse,MIL::IRTensorValueType const*&,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>>(&v8, a1 + 3, a2, a3, a4, a5, a6);
  return a1;
}

void std::allocator<MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse>::construct[abi:ne200100]<MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse,MIL::IRTensorValueType const*&,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, __int128 *a5, __int128 *a6, __int128 *a7)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  *a5 = 0uLL;
  v12 = *a6;
  v13 = v10;
  *a6 = 0uLL;
  v11 = *a7;
  *a7 = 0uLL;
  MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::BlockwiseLutToSparse(a2, v8, v9, &v13, &v12, &v11);
  if (*(&v11 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
  }

  if (*(&v12 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
  }

  if (*(&v13 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
  }
}

void sub_218369004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::make_unique[abi:ne200100]<MIL::Builder::OperationBuilder::OperationBuilderImpl,std::shared_ptr<MIL::IROperation> &,std::shared_ptr<MIL::MILContext>,std::string,MIL::Builder::BlockBuilder *&,0>((v11 | 8), (v10 | 8));
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale>::__shared_ptr_emplace[abi:ne200100]<MIL::IRTensorValueType const*&,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::allocator<MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale>,0>(void *a1, uint64_t *a2, uint64_t *a3, __int128 *a4, __int128 *a5, __int128 *a6, __int128 *a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829EC258;
  std::allocator<MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale>::construct[abi:ne200100]<MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale,MIL::IRTensorValueType const*&,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>>(&v9, a1 + 3, a2, a3, a4, a5, a6, a7);
  return a1;
}

void std::__shared_ptr_emplace<MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829EC258;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void std::allocator<MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale>::construct[abi:ne200100]<MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale,MIL::IRTensorValueType const*&,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, __int128 *a5, __int128 *a6, __int128 *a7, __int128 *a8)
{
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  *a5 = 0uLL;
  v15 = *a6;
  v16 = v11;
  *a6 = 0uLL;
  v12 = *a7;
  *a7 = 0uLL;
  v13 = *a8;
  v14 = v12;
  *a8 = 0uLL;
  MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale::SparseBlockwiseShiftScale(a2, v9, v10, &v16, &v15, &v14, &v13);
  if (*(&v13 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
  }

  if (*(&v14 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
  }

  if (*(&v15 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
  }

  if (*(&v16 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
  }
}

void sub_218369280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::allocator<MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale>::construct[abi:ne200100]<MIL::Operators::Common::ios18::ConstExprs::SparseBlockwiseShiftScale,MIL::IRTensorValueType const*&,MIL::IRTensorValueType const*&,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>,std::shared_ptr<MIL::IRTensorValue const>>((v12 | 8), (v11 | 8), (v10 | 8));
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ConstexprBlockwiseShiftScale::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21836A8C8(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 176), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x270], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ConstexprCast::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21836BA30(_Unwind_Exception *a1)
{
  v4 = *(v2 - 256);
  *(v2 - 256) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 72), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 248), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ConstexprLutToDense::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21836D478(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x218], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x280], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ConstexprLutToSparse::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21836F62C(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x288], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2E8], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ConstexprSparseBlockwiseShiftScale::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2183719C4(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 248), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2C8], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ConstexprSparseToDense::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21837334C(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 120), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x200], 0);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Operators::Common::ios18::ConstexprBlockwiseShiftScale::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios18::ConstexprBlockwiseShiftScale::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EC2A8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Operators::Common::ios18::ConstexprBlockwiseShiftScale::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios18::ConstexprBlockwiseShiftScale::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Operators::Common::ios18::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios18::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EC328;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Operators::Common::ios18::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios18::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Operators::Common::ios18::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios18::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EC3A8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Operators::Common::ios18::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios18::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Operators::Common::ios18::ConstexprLutToSparse::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios18::ConstexprLutToSparse::Make(MIL::MILContext &,std::string)::$_0>,std::vector<std::shared_ptr<MIL::IRValue const>> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EC428;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Operators::Common::ios18::ConstexprLutToSparse::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios18::ConstexprLutToSparse::Make(MIL::MILContext &,std::string)::$_0>,std::vector<std::shared_ptr<MIL::IRValue const>> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Operators::Common::ios18::ConstexprSparseBlockwiseShiftScale::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios18::ConstexprSparseBlockwiseShiftScale::Make(MIL::MILContext &,std::string)::$_0>,std::vector<std::shared_ptr<MIL::IRValue const>> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EC4B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Operators::Common::ios18::ConstexprSparseBlockwiseShiftScale::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios18::ConstexprSparseBlockwiseShiftScale::Make(MIL::MILContext &,std::string)::$_0>,std::vector<std::shared_ptr<MIL::IRValue const>> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Operators::Common::ios18::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios18::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EC538;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Operators::Common::ios18::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios18::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToDense::Impl::Impl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 24) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a1 + 40) = a5;
  MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToDense::Impl::ValidateArgsAndTypeConstraints(a1);
}

void sub_218373ECC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_218374828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
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
    if ((v42 & 1) == 0)
    {
LABEL_14:
      operator delete(v40);
      _Unwind_Resume(a1);
    }
  }

  else if (!v42)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v41);
  goto LABEL_14;
}

void MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToDense::Impl::ComputeOutput(MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToDense::Impl *this)
{
  if (*(this + 44) == 1)
  {
    v3 = *(this + 10);
    if (v3 < 0)
    {
      v4 = (*(**(this + 3) + 32))(*(this + 3));
      v3 += MIL::IRTensorValueType::Rank(v4);
    }

    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = (*(**this + 88))();
  v7 = v6;
  if (v6 > 6)
  {
    if (v6 != 7)
    {
      if (v6 != 9)
      {
        if (v6 == 14)
        {
          v9 = *(this + 3);
          v8 = *(this + 4);
          if (v8)
          {
            atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
          }

          v11 = *(this + 1);
          v10 = *(this + 2);
          if (v10)
          {
            atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
          }

          v12 = (*(*v9 + 32))(v9);
          v13 = (*(*v12 + 96))(v12);
          MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v13, &v235);
          v14 = (*(*v11 + 32))(v11);
          v15 = (*(*v14 + 96))(v14);
          MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v15, &v234);
          v16 = *(v234.__r_.__value_.__l.__size_ - 16);
          v17 = *(v234.__r_.__value_.__l.__size_ - 8);
          memset(&__p, 0, sizeof(__p));
          std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(&__p, v234.__r_.__value_.__l.__data_, v234.__r_.__value_.__l.__size_ - 16, (v234.__r_.__value_.__l.__size_ - 16 - v234.__r_.__value_.__r.__words[0]) >> 3);
          MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::BlockwiseLutToDenseIndexConverter(&v227, &v235, &__p, v17, v5);
          if (__p.__r_.__value_.__r.__words[0])
          {
            __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v18 = (*(*v9 + 32))(v9);
          v19 = (*(*v18 + 88))(v18);
          if (v19 > 20)
          {
            switch(v19)
            {
              case 21:
                v176 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v9);
                v178 = v177;
                Data = MIL::IRTensorValue::GetDataView<unsigned char>(v11);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<unsigned char,MIL::UInt1>(v176, v178, Data, &v227, v16, &v223);
                break;
              case 22:
                v144 = MIL::IRTensorValue::GetDataView<MIL::UInt3>(v9);
                v146 = v145;
                v147 = MIL::IRTensorValue::GetDataView<unsigned char>(v11);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<unsigned char,MIL::UInt3>(v144, v146, v147, &v227, v16, &v223);
                break;
              case 23:
                v100 = MIL::IRTensorValue::GetDataView<MIL::UInt6>(v9);
                v102 = v101;
                v103 = MIL::IRTensorValue::GetDataView<unsigned char>(v11);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<unsigned char,MIL::UInt6>(v100, v102, v103, &v227, v16, &v223);
                break;
              default:
                goto LABEL_176;
            }
          }

          else
          {
            switch(v19)
            {
              case 14:
                v172 = MIL::IRTensorValue::GetDataView<unsigned char>(v9);
                v174 = v173;
                v175 = MIL::IRTensorValue::GetDataView<unsigned char>(v11);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<unsigned char,unsigned char>(v172, v174, v175, &v227, v16, &v223);
                break;
              case 19:
                v140 = MIL::IRTensorValue::GetDataView<MIL::UInt2>(v9);
                v142 = v141;
                v143 = MIL::IRTensorValue::GetDataView<unsigned char>(v11);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<unsigned char,MIL::UInt2>(v140, v142, v143, &v227, v16, &v223);
                break;
              case 20:
                v20 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v9);
                v22 = v21;
                v23 = MIL::IRTensorValue::GetDataView<unsigned char>(v11);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<unsigned char,MIL::UInt4>(v20, v22, v23, &v227, v16, &v223);
                break;
              default:
LABEL_176:
                v211 = v19;
                exception = __cxa_allocate_exception(0x10uLL);
                MIL::IRDataTypeToString(v211, &v224);
                v213 = std::string::insert(&v224, 0, "Constexpr-BlockwiseLutToDense: Unsupported dtype ");
                v214 = *&v213->__r_.__value_.__l.__data_;
                v225.__r_.__value_.__r.__words[2] = v213->__r_.__value_.__r.__words[2];
                *&v225.__r_.__value_.__l.__data_ = v214;
                v213->__r_.__value_.__l.__size_ = 0;
                v213->__r_.__value_.__r.__words[2] = 0;
                v213->__r_.__value_.__r.__words[0] = 0;
                v215 = std::string::append(&v225, " for indices");
                v216 = *&v215->__r_.__value_.__l.__data_;
                __p.__r_.__value_.__r.__words[2] = v215->__r_.__value_.__r.__words[2];
                *&__p.__r_.__value_.__l.__data_ = v216;
                v215->__r_.__value_.__l.__size_ = 0;
                v215->__r_.__value_.__r.__words[2] = 0;
                v215->__r_.__value_.__r.__words[0] = 0;
                std::runtime_error::runtime_error(exception, &__p);
                __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }
          }

          if (v232)
          {
            v233 = v232;
            operator delete(v232);
          }

          if (v230)
          {
            v231 = v230;
            operator delete(v230);
          }

          if (v228)
          {
            v229 = v228;
            operator delete(v228);
          }

          if (v227.__r_.__value_.__r.__words[0])
          {
            v227.__r_.__value_.__l.__size_ = v227.__r_.__value_.__r.__words[0];
            operator delete(v227.__r_.__value_.__l.__data_);
          }

          if (v234.__r_.__value_.__r.__words[0])
          {
            v234.__r_.__value_.__l.__size_ = v234.__r_.__value_.__r.__words[0];
            operator delete(v234.__r_.__value_.__l.__data_);
          }

          if (v235.__r_.__value_.__r.__words[0])
          {
            v235.__r_.__value_.__l.__size_ = v235.__r_.__value_.__r.__words[0];
            operator delete(v235.__r_.__value_.__l.__data_);
          }

          MIL::IRTensorValueType::MakeUInt8Value();
        }

LABEL_172:
        v188 = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v7, &v234);
        v189 = std::string::insert(&v234, 0, "Constexpr-BlockwiseLutToDense: Unsupported dtype ");
        v190 = *&v189->__r_.__value_.__l.__data_;
        v235.__r_.__value_.__r.__words[2] = v189->__r_.__value_.__r.__words[2];
        *&v235.__r_.__value_.__l.__data_ = v190;
        v189->__r_.__value_.__l.__size_ = 0;
        v189->__r_.__value_.__r.__words[2] = 0;
        v189->__r_.__value_.__r.__words[0] = 0;
        v191 = std::string::append(&v235, " for output");
        v192 = *&v191->__r_.__value_.__l.__data_;
        v227.__r_.__value_.__r.__words[2] = v191->__r_.__value_.__r.__words[2];
        *&v227.__r_.__value_.__l.__data_ = v192;
        v191->__r_.__value_.__l.__size_ = 0;
        v191->__r_.__value_.__r.__words[2] = 0;
        v191->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v188, &v227);
        __cxa_throw(v188, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v57 = *(this + 3);
      v56 = *(this + 4);
      if (v56)
      {
        atomic_fetch_add_explicit((v56 + 8), 1uLL, memory_order_relaxed);
      }

      v59 = *(this + 1);
      v58 = *(this + 2);
      if (v58)
      {
        atomic_fetch_add_explicit((v58 + 8), 1uLL, memory_order_relaxed);
      }

      v60 = (*(*v57 + 32))(v57);
      v61 = (*(*v60 + 96))(v60);
      MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v61, &v235);
      v62 = (*(*v59 + 32))(v59);
      v63 = (*(*v62 + 96))(v62);
      MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v63, &v234);
      v64 = *(v234.__r_.__value_.__l.__size_ - 16);
      v65 = *(v234.__r_.__value_.__l.__size_ - 8);
      memset(&__p, 0, sizeof(__p));
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(&__p, v234.__r_.__value_.__l.__data_, v234.__r_.__value_.__l.__size_ - 16, (v234.__r_.__value_.__l.__size_ - 16 - v234.__r_.__value_.__r.__words[0]) >> 3);
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::BlockwiseLutToDenseIndexConverter(&v227, &v235, &__p, v65, v5);
      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v66 = (*(*v57 + 32))(v57);
      v67 = (*(*v66 + 88))(v66);
      if (v67 > 20)
      {
        switch(v67)
        {
          case 21:
            v152 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v57);
            v154 = v153;
            v155 = MIL::IRTensorValue::GetDataView<signed char>(v59);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<signed char,MIL::UInt1>(v152, v154, v155, &v227, v64, &v223);
            break;
          case 22:
            v120 = MIL::IRTensorValue::GetDataView<MIL::UInt3>(v57);
            v122 = v121;
            v123 = MIL::IRTensorValue::GetDataView<signed char>(v59);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<signed char,MIL::UInt3>(v120, v122, v123, &v227, v64, &v223);
            break;
          case 23:
            v92 = MIL::IRTensorValue::GetDataView<MIL::UInt6>(v57);
            v94 = v93;
            v95 = MIL::IRTensorValue::GetDataView<signed char>(v59);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<signed char,MIL::UInt6>(v92, v94, v95, &v227, v64, &v223);
            break;
          default:
            goto LABEL_174;
        }
      }

      else
      {
        switch(v67)
        {
          case 14:
            v148 = MIL::IRTensorValue::GetDataView<unsigned char>(v57);
            v150 = v149;
            v151 = MIL::IRTensorValue::GetDataView<signed char>(v59);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<signed char,unsigned char>(v148, v150, v151, &v227, v64, &v223);
            break;
          case 19:
            v116 = MIL::IRTensorValue::GetDataView<MIL::UInt2>(v57);
            v118 = v117;
            v119 = MIL::IRTensorValue::GetDataView<signed char>(v59);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<signed char,MIL::UInt2>(v116, v118, v119, &v227, v64, &v223);
            break;
          case 20:
            v68 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v57);
            v70 = v69;
            v71 = MIL::IRTensorValue::GetDataView<signed char>(v59);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<signed char,MIL::UInt4>(v68, v70, v71, &v227, v64, &v223);
            break;
          default:
LABEL_174:
            v199 = v67;
            v200 = __cxa_allocate_exception(0x10uLL);
            MIL::IRDataTypeToString(v199, &v224);
            v201 = std::string::insert(&v224, 0, "Constexpr-BlockwiseLutToDense: Unsupported dtype ");
            v202 = *&v201->__r_.__value_.__l.__data_;
            v225.__r_.__value_.__r.__words[2] = v201->__r_.__value_.__r.__words[2];
            *&v225.__r_.__value_.__l.__data_ = v202;
            v201->__r_.__value_.__l.__size_ = 0;
            v201->__r_.__value_.__r.__words[2] = 0;
            v201->__r_.__value_.__r.__words[0] = 0;
            v203 = std::string::append(&v225, " for indices");
            v204 = *&v203->__r_.__value_.__l.__data_;
            __p.__r_.__value_.__r.__words[2] = v203->__r_.__value_.__r.__words[2];
            *&__p.__r_.__value_.__l.__data_ = v204;
            v203->__r_.__value_.__l.__size_ = 0;
            v203->__r_.__value_.__r.__words[2] = 0;
            v203->__r_.__value_.__r.__words[0] = 0;
            std::runtime_error::runtime_error(v200, &__p);
            __cxa_throw(v200, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }
      }

      if (v232)
      {
        v233 = v232;
        operator delete(v232);
      }

      if (v230)
      {
        v231 = v230;
        operator delete(v230);
      }

      if (v228)
      {
        v229 = v228;
        operator delete(v228);
      }

      if (v227.__r_.__value_.__r.__words[0])
      {
        v227.__r_.__value_.__l.__size_ = v227.__r_.__value_.__r.__words[0];
        operator delete(v227.__r_.__value_.__l.__data_);
      }

      if (v234.__r_.__value_.__r.__words[0])
      {
        v234.__r_.__value_.__l.__size_ = v234.__r_.__value_.__r.__words[0];
        operator delete(v234.__r_.__value_.__l.__data_);
      }

      if (v235.__r_.__value_.__r.__words[0])
      {
        v235.__r_.__value_.__l.__size_ = v235.__r_.__value_.__r.__words[0];
        operator delete(v235.__r_.__value_.__l.__data_);
      }

      MIL::IRTensorValueType::MakeInt8Value();
    }

    v41 = *(this + 3);
    v40 = *(this + 4);
    if (v40)
    {
      atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
    }

    v43 = *(this + 1);
    v42 = *(this + 2);
    if (v42)
    {
      atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
    }

    v44 = (*(*v41 + 32))(v41);
    v45 = (*(*v44 + 96))(v44);
    MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v45, &v235);
    v46 = (*(*v43 + 32))(v43);
    v47 = (*(*v46 + 96))(v46);
    MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v47, &v234);
    v48 = *(v234.__r_.__value_.__l.__size_ - 16);
    v49 = *(v234.__r_.__value_.__l.__size_ - 8);
    memset(&__p, 0, sizeof(__p));
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(&__p, v234.__r_.__value_.__l.__data_, v234.__r_.__value_.__l.__size_ - 16, (v234.__r_.__value_.__l.__size_ - 16 - v234.__r_.__value_.__r.__words[0]) >> 3);
    MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::BlockwiseLutToDenseIndexConverter(&v227, &v235, &__p, v49, v5);
    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v50 = (*(*v41 + 32))(v41);
    v51 = (*(*v50 + 88))(v50);
    if (v51 > 20)
    {
      switch(v51)
      {
        case 21:
          v136 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v41);
          v138 = v137;
          v139 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v43);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Bf16,MIL::UInt1>(v136, v138, v139, &v227, v48, &v223);
          break;
        case 22:
          v112 = MIL::IRTensorValue::GetDataView<MIL::UInt3>(v41);
          v114 = v113;
          v115 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v43);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Bf16,MIL::UInt3>(v112, v114, v115, &v227, v48, &v223);
          break;
        case 23:
          v88 = MIL::IRTensorValue::GetDataView<MIL::UInt6>(v41);
          v90 = v89;
          v91 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v43);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Bf16,MIL::UInt6>(v88, v90, v91, &v227, v48, &v223);
          break;
        default:
          goto LABEL_173;
      }
    }

    else
    {
      switch(v51)
      {
        case 14:
          v132 = MIL::IRTensorValue::GetDataView<unsigned char>(v41);
          v134 = v133;
          v135 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v43);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Bf16,unsigned char>(v132, v134, v135, &v227, v48, &v223);
          break;
        case 19:
          v108 = MIL::IRTensorValue::GetDataView<MIL::UInt2>(v41);
          v110 = v109;
          v111 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v43);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Bf16,MIL::UInt2>(v108, v110, v111, &v227, v48, &v223);
          break;
        case 20:
          v52 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v41);
          v54 = v53;
          v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v43);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Bf16,MIL::UInt4>(v52, v54, v55, &v227, v48, &v223);
          break;
        default:
LABEL_173:
          v193 = v51;
          v194 = __cxa_allocate_exception(0x10uLL);
          MIL::IRDataTypeToString(v193, &v224);
          v195 = std::string::insert(&v224, 0, "Constexpr-BlockwiseLutToDense: Unsupported dtype ");
          v196 = *&v195->__r_.__value_.__l.__data_;
          v225.__r_.__value_.__r.__words[2] = v195->__r_.__value_.__r.__words[2];
          *&v225.__r_.__value_.__l.__data_ = v196;
          v195->__r_.__value_.__l.__size_ = 0;
          v195->__r_.__value_.__r.__words[2] = 0;
          v195->__r_.__value_.__r.__words[0] = 0;
          v197 = std::string::append(&v225, " for indices");
          v198 = *&v197->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v197->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v198;
          v197->__r_.__value_.__l.__size_ = 0;
          v197->__r_.__value_.__r.__words[2] = 0;
          v197->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(v194, &__p);
          __cxa_throw(v194, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }
    }

    if (v232)
    {
      v233 = v232;
      operator delete(v232);
    }

    if (v230)
    {
      v231 = v230;
      operator delete(v230);
    }

    if (v228)
    {
      v229 = v228;
      operator delete(v228);
    }

    if (v227.__r_.__value_.__r.__words[0])
    {
      v227.__r_.__value_.__l.__size_ = v227.__r_.__value_.__r.__words[0];
      operator delete(v227.__r_.__value_.__l.__data_);
    }

    if (v234.__r_.__value_.__r.__words[0])
    {
      v234.__r_.__value_.__l.__size_ = v234.__r_.__value_.__r.__words[0];
      operator delete(v234.__r_.__value_.__l.__data_);
    }

    if (v235.__r_.__value_.__r.__words[0])
    {
      v235.__r_.__value_.__l.__size_ = v235.__r_.__value_.__r.__words[0];
      operator delete(v235.__r_.__value_.__l.__data_);
    }

    MIL::IRTensorValueType::MakeBFloat16Value();
  }

  if (v6 != 4)
  {
    if (v6 != 5)
    {
      goto LABEL_172;
    }

    v25 = *(this + 3);
    v24 = *(this + 4);
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    v27 = *(this + 1);
    v26 = *(this + 2);
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    v28 = (*(*v25 + 32))(v25);
    v29 = (*(*v28 + 96))(v28);
    MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v29, &v235);
    v30 = (*(*v27 + 32))(v27);
    v31 = (*(*v30 + 96))(v30);
    MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v31, &v234);
    v32 = *(v234.__r_.__value_.__l.__size_ - 16);
    v33 = *(v234.__r_.__value_.__l.__size_ - 8);
    memset(&__p, 0, sizeof(__p));
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(&__p, v234.__r_.__value_.__l.__data_, v234.__r_.__value_.__l.__size_ - 16, (v234.__r_.__value_.__l.__size_ - 16 - v234.__r_.__value_.__r.__words[0]) >> 3);
    MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::BlockwiseLutToDenseIndexConverter(&v227, &v235, &__p, v33, v5);
    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v34 = (*(*v25 + 32))(v25);
    v35 = (*(*v34 + 88))(v34);
    if (v35 > 20)
    {
      switch(v35)
      {
        case 21:
          v184 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v25);
          v186 = v185;
          v187 = MIL::IRTensorValue::GetDataView<float>(v27);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,MIL::UInt1>(v184, v186, v187, &v227, v32, &v223);
          break;
        case 22:
          v160 = MIL::IRTensorValue::GetDataView<MIL::UInt3>(v25);
          v162 = v161;
          v163 = MIL::IRTensorValue::GetDataView<float>(v27);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,MIL::UInt3>(v160, v162, v163, &v227, v32, &v223);
          break;
        case 23:
          v104 = MIL::IRTensorValue::GetDataView<MIL::UInt6>(v25);
          v106 = v105;
          v107 = MIL::IRTensorValue::GetDataView<float>(v27);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,MIL::UInt6>(v104, v106, v107, &v227, v32, &v223);
          break;
        default:
          goto LABEL_177;
      }
    }

    else
    {
      switch(v35)
      {
        case 14:
          v180 = MIL::IRTensorValue::GetDataView<unsigned char>(v25);
          v182 = v181;
          v183 = MIL::IRTensorValue::GetDataView<float>(v27);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,unsigned char>(v180, v182, v183, &v227, v32, &v223);
          break;
        case 19:
          v156 = MIL::IRTensorValue::GetDataView<MIL::UInt2>(v25);
          v158 = v157;
          v159 = MIL::IRTensorValue::GetDataView<float>(v27);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,MIL::UInt2>(v156, v158, v159, &v227, v32, &v223);
          break;
        case 20:
          v36 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v25);
          v38 = v37;
          v39 = MIL::IRTensorValue::GetDataView<float>(v27);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,MIL::UInt4>(v36, v38, v39, &v227, v32, &v223);
          break;
        default:
LABEL_177:
          v217 = v35;
          v218 = __cxa_allocate_exception(0x10uLL);
          MIL::IRDataTypeToString(v217, &v224);
          v219 = std::string::insert(&v224, 0, "Constexpr-BlockwiseLutToDense: Unsupported dtype ");
          v220 = *&v219->__r_.__value_.__l.__data_;
          v225.__r_.__value_.__r.__words[2] = v219->__r_.__value_.__r.__words[2];
          *&v225.__r_.__value_.__l.__data_ = v220;
          v219->__r_.__value_.__l.__size_ = 0;
          v219->__r_.__value_.__r.__words[2] = 0;
          v219->__r_.__value_.__r.__words[0] = 0;
          v221 = std::string::append(&v225, " for indices");
          v222 = *&v221->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v221->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v222;
          v221->__r_.__value_.__l.__size_ = 0;
          v221->__r_.__value_.__r.__words[2] = 0;
          v221->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(v218, &__p);
          __cxa_throw(v218, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }
    }

    if (v232)
    {
      v233 = v232;
      operator delete(v232);
    }

    if (v230)
    {
      v231 = v230;
      operator delete(v230);
    }

    if (v228)
    {
      v229 = v228;
      operator delete(v228);
    }

    if (v227.__r_.__value_.__r.__words[0])
    {
      v227.__r_.__value_.__l.__size_ = v227.__r_.__value_.__r.__words[0];
      operator delete(v227.__r_.__value_.__l.__data_);
    }

    if (v234.__r_.__value_.__r.__words[0])
    {
      v234.__r_.__value_.__l.__size_ = v234.__r_.__value_.__r.__words[0];
      operator delete(v234.__r_.__value_.__l.__data_);
    }

    if (v235.__r_.__value_.__r.__words[0])
    {
      v235.__r_.__value_.__l.__size_ = v235.__r_.__value_.__r.__words[0];
      operator delete(v235.__r_.__value_.__l.__data_);
    }

    MIL::IRTensorValueType::MakeFloat32Value();
  }

  v73 = *(this + 3);
  v72 = *(this + 4);
  if (v72)
  {
    atomic_fetch_add_explicit((v72 + 8), 1uLL, memory_order_relaxed);
  }

  v75 = *(this + 1);
  v74 = *(this + 2);
  if (v74)
  {
    atomic_fetch_add_explicit((v74 + 8), 1uLL, memory_order_relaxed);
  }

  v76 = (*(*v73 + 32))(v73);
  v77 = (*(*v76 + 96))(v76);
  MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v77, &v235);
  v78 = (*(*v75 + 32))(v75);
  v79 = (*(*v78 + 96))(v78);
  MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v79, &v234);
  v80 = *(v234.__r_.__value_.__l.__size_ - 16);
  v81 = *(v234.__r_.__value_.__l.__size_ - 8);
  memset(&__p, 0, sizeof(__p));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(&__p, v234.__r_.__value_.__l.__data_, v234.__r_.__value_.__l.__size_ - 16, (v234.__r_.__value_.__l.__size_ - 16 - v234.__r_.__value_.__r.__words[0]) >> 3);
  MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::BlockwiseLutToDenseIndexConverter(&v227, &v235, &__p, v81, v5);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v82 = (*(*v73 + 32))(v73);
  v83 = (*(*v82 + 88))(v82);
  if (v83 > 20)
  {
    switch(v83)
    {
      case 21:
        v168 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v73);
        v170 = v169;
        v171 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v75);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Fp16,MIL::UInt1>(v168, v170, v171, &v227, v80, &v223);
        break;
      case 22:
        v128 = MIL::IRTensorValue::GetDataView<MIL::UInt3>(v73);
        v130 = v129;
        v131 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v75);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Fp16,MIL::UInt3>(v128, v130, v131, &v227, v80, &v223);
        break;
      case 23:
        v96 = MIL::IRTensorValue::GetDataView<MIL::UInt6>(v73);
        v98 = v97;
        v99 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v75);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Fp16,MIL::UInt6>(v96, v98, v99, &v227, v80, &v223);
        break;
      default:
        goto LABEL_175;
    }
  }

  else
  {
    switch(v83)
    {
      case 14:
        v164 = MIL::IRTensorValue::GetDataView<unsigned char>(v73);
        v166 = v165;
        v167 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v75);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Fp16,unsigned char>(v164, v166, v167, &v227, v80, &v223);
        break;
      case 19:
        v124 = MIL::IRTensorValue::GetDataView<MIL::UInt2>(v73);
        v126 = v125;
        v127 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v75);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Fp16,MIL::UInt2>(v124, v126, v127, &v227, v80, &v223);
        break;
      case 20:
        v84 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v73);
        v86 = v85;
        v87 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v75);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Fp16,MIL::UInt4>(v84, v86, v87, &v227, v80, &v223);
        break;
      default:
LABEL_175:
        v205 = v83;
        v206 = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v205, &v224);
        v207 = std::string::insert(&v224, 0, "Constexpr-BlockwiseLutToDense: Unsupported dtype ");
        v208 = *&v207->__r_.__value_.__l.__data_;
        v225.__r_.__value_.__r.__words[2] = v207->__r_.__value_.__r.__words[2];
        *&v225.__r_.__value_.__l.__data_ = v208;
        v207->__r_.__value_.__l.__size_ = 0;
        v207->__r_.__value_.__r.__words[2] = 0;
        v207->__r_.__value_.__r.__words[0] = 0;
        v209 = std::string::append(&v225, " for indices");
        v210 = *&v209->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v209->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v210;
        v209->__r_.__value_.__l.__size_ = 0;
        v209->__r_.__value_.__r.__words[2] = 0;
        v209->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v206, &__p);
        __cxa_throw(v206, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  if (v232)
  {
    v233 = v232;
    operator delete(v232);
  }

  if (v230)
  {
    v231 = v230;
    operator delete(v230);
  }

  if (v228)
  {
    v229 = v228;
    operator delete(v228);
  }

  if (v227.__r_.__value_.__r.__words[0])
  {
    v227.__r_.__value_.__l.__size_ = v227.__r_.__value_.__r.__words[0];
    operator delete(v227.__r_.__value_.__l.__data_);
  }

  if (v234.__r_.__value_.__r.__words[0])
  {
    v234.__r_.__value_.__l.__size_ = v234.__r_.__value_.__r.__words[0];
    operator delete(v234.__r_.__value_.__l.__data_);
  }

  if (v235.__r_.__value_.__r.__words[0])
  {
    v235.__r_.__value_.__l.__size_ = v235.__r_.__value_.__r.__words[0];
    operator delete(v235.__r_.__value_.__l.__data_);
  }

  MIL::IRTensorValueType::MakeFloat16Value();
}

void sub_2183760A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a19 < 0)
  {
    operator delete(a14);
    if ((v42 & 1) == 0)
    {
LABEL_10:
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::~BlockwiseLutToDenseIndexConverter(&a34);
      v45 = *(v43 - 136);
      if (v45)
      {
        *(v43 - 128) = v45;
        operator delete(v45);
      }

      v46 = *(v43 - 112);
      if (v46)
      {
        *(v43 - 104) = v46;
        operator delete(v46);
      }

      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      }

      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v42)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v41);
  goto LABEL_10;
}

void MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToDense::~BlockwiseLutToDense(MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToDense *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    MIL::Operators::Common::ios16::ConstExprs::LutToDense::Impl::~Impl(v2);
    MEMORY[0x21CEAFEA0]();
  }

  MIL::AbstractConstExpr::~AbstractConstExpr(this);
}

{
  MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToDense::~BlockwiseLutToDense(this);

  JUMPOUT(0x21CEAFEA0);
}

void sub_21837653C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  MEMORY[0x21CEAFEA0](v13, v12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_2183766CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  MEMORY[0x21CEAFEA0](v13, v12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToDense::ComputeOutput(MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToDense *this, uint64_t a2)
{
  if (!a2)
  {
    v3 = *(this + 1);

    MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToDense::Impl::ComputeOutput(v3);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "BlockwiseLutToDense has a single output.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<unsigned char,unsigned char>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = a4[12];
  std::vector<unsigned char>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v20, a4[12]);
  std::vector<unsigned long>::vector[abi:ne200100](v19, a4[4] - a4[3]);
  std::vector<unsigned long>::vector[abi:ne200100](__p, a4[7] - a4[6]);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v20, v19);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v19);
      v15 = v20;
      if (v21 != v20)
      {
        v16 = 0;
        v17 = a3 + (*(a1 + v13) + v14 * a5) * v12;
        do
        {
          *(*a6 + v15[v16]) = *(v17 + v16);
          ++v16;
          v15 = v20;
        }

        while (v16 < (v21 - v20) >> 3);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_2183768D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<unsigned char,MIL::UInt6>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = a4[12];
  std::vector<unsigned char>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v31, a4[12]);
  std::vector<unsigned long>::vector[abi:ne200100](v30, a4[4] - a4[3]);
  std::vector<unsigned long>::vector[abi:ne200100](__p, a4[7] - a4[6]);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v31, v30);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v30);
      v28.__r_.__value_.__r.__words[0] = a1;
      v28.__r_.__value_.__l.__size_ = a2;
      v27.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt6 const,18446744073709551615ul>::ValueAt(&v28, v13);
      Int = MIL::UInt6::GetInt(&v27);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v20 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v26, v20);
        v22 = std::string::insert(&v26, 0, "Index ");
        v23 = *&v22->__r_.__value_.__l.__data_;
        v27.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
        *&v27.__r_.__value_.__l.__data_ = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        v24 = std::string::append(&v27, " cannot be negative");
        v25 = *&v24->__r_.__value_.__l.__data_;
        v28.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&v28.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v28);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v31;
      if (v32 != v31)
      {
        v18 = 0;
        v19 = a3 + (v14 * a5 + v16) * v12;
        do
        {
          *(*a6 + v17[v18]) = *(v19 + v18);
          ++v18;
          v17 = v31;
        }

        while (v18 < (v32 - v31) >> 3);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }
}

void sub_218376B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<unsigned char,MIL::UInt4>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = a4[12];
  std::vector<unsigned char>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v31, a4[12]);
  std::vector<unsigned long>::vector[abi:ne200100](v30, a4[4] - a4[3]);
  std::vector<unsigned long>::vector[abi:ne200100](__p, a4[7] - a4[6]);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v31, v30);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v30);
      v28.__r_.__value_.__r.__words[0] = a1;
      v28.__r_.__value_.__l.__size_ = a2;
      v27.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v28, v13);
      Int = MIL::UInt4::GetInt(&v27);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v20 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v26, v20);
        v22 = std::string::insert(&v26, 0, "Index ");
        v23 = *&v22->__r_.__value_.__l.__data_;
        v27.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
        *&v27.__r_.__value_.__l.__data_ = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        v24 = std::string::append(&v27, " cannot be negative");
        v25 = *&v24->__r_.__value_.__l.__data_;
        v28.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&v28.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v28);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v31;
      if (v32 != v31)
      {
        v18 = 0;
        v19 = a3 + (v14 * a5 + v16) * v12;
        do
        {
          *(*a6 + v17[v18]) = *(v19 + v18);
          ++v18;
          v17 = v31;
        }

        while (v18 < (v32 - v31) >> 3);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }
}

void sub_218376E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<unsigned char,MIL::UInt3>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = a4[12];
  std::vector<unsigned char>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v31, a4[12]);
  std::vector<unsigned long>::vector[abi:ne200100](v30, a4[4] - a4[3]);
  std::vector<unsigned long>::vector[abi:ne200100](__p, a4[7] - a4[6]);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v31, v30);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v30);
      v28.__r_.__value_.__r.__words[0] = a1;
      v28.__r_.__value_.__l.__size_ = a2;
      v27.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt3 const,18446744073709551615ul>::ValueAt(&v28, v13);
      Int = MIL::UInt3::GetInt(&v27);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v20 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v26, v20);
        v22 = std::string::insert(&v26, 0, "Index ");
        v23 = *&v22->__r_.__value_.__l.__data_;
        v27.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
        *&v27.__r_.__value_.__l.__data_ = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        v24 = std::string::append(&v27, " cannot be negative");
        v25 = *&v24->__r_.__value_.__l.__data_;
        v28.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&v28.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v28);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v31;
      if (v32 != v31)
      {
        v18 = 0;
        v19 = a3 + (v14 * a5 + v16) * v12;
        do
        {
          *(*a6 + v17[v18]) = *(v19 + v18);
          ++v18;
          v17 = v31;
        }

        while (v18 < (v32 - v31) >> 3);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }
}

void sub_218377164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<unsigned char,MIL::UInt2>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = a4[12];
  std::vector<unsigned char>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v31, a4[12]);
  std::vector<unsigned long>::vector[abi:ne200100](v30, a4[4] - a4[3]);
  std::vector<unsigned long>::vector[abi:ne200100](__p, a4[7] - a4[6]);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v31, v30);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v30);
      v28.__r_.__value_.__r.__words[0] = a1;
      v28.__r_.__value_.__l.__size_ = a2;
      v27.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt2 const,18446744073709551615ul>::ValueAt(&v28, v13);
      Int = MIL::UInt2::GetInt(&v27);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v20 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v26, v20);
        v22 = std::string::insert(&v26, 0, "Index ");
        v23 = *&v22->__r_.__value_.__l.__data_;
        v27.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
        *&v27.__r_.__value_.__l.__data_ = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        v24 = std::string::append(&v27, " cannot be negative");
        v25 = *&v24->__r_.__value_.__l.__data_;
        v28.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&v28.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v28);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v31;
      if (v32 != v31)
      {
        v18 = 0;
        v19 = a3 + (v14 * a5 + v16) * v12;
        do
        {
          *(*a6 + v17[v18]) = *(v19 + v18);
          ++v18;
          v17 = v31;
        }

        while (v18 < (v32 - v31) >> 3);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }
}

void sub_218377468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<unsigned char,MIL::UInt1>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = a4[12];
  std::vector<unsigned char>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v31, a4[12]);
  std::vector<unsigned long>::vector[abi:ne200100](v30, a4[4] - a4[3]);
  std::vector<unsigned long>::vector[abi:ne200100](__p, a4[7] - a4[6]);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v31, v30);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v30);
      v28.__r_.__value_.__r.__words[0] = a1;
      v28.__r_.__value_.__l.__size_ = a2;
      v27.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(&v28, v13);
      Int = MIL::UInt1::GetInt(&v27);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v20 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v26, v20);
        v22 = std::string::insert(&v26, 0, "Index ");
        v23 = *&v22->__r_.__value_.__l.__data_;
        v27.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
        *&v27.__r_.__value_.__l.__data_ = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        v24 = std::string::append(&v27, " cannot be negative");
        v25 = *&v24->__r_.__value_.__l.__data_;
        v28.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&v28.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v28);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v31;
      if (v32 != v31)
      {
        v18 = 0;
        v19 = a3 + (v14 * a5 + v16) * v12;
        do
        {
          *(*a6 + v17[v18]) = *(v19 + v18);
          ++v18;
          v17 = v31;
        }

        while (v18 < (v32 - v31) >> 3);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }
}

void sub_21837776C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::~BlockwiseLutToDenseIndexConverter(MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  v5 = *this;
  if (*this)
  {
    *(this + 1) = v5;
    operator delete(v5);
  }
}

uint64_t *std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_218377914(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::BlockwiseLutToDenseIndexConverter(uint64_t *a1, uint64_t a2, unint64_t **a3, uint64_t a4, uint64_t a5)
{
  MIL::Operators::Common::Shared::ConstExprs::GetBlockSizes(a2, a3, a1);
  MIL::Operators::Common::Shared::ConstExprs::GetStrides(a2, a1 + 3);
  MIL::Operators::Common::Shared::ConstExprs::GetStrides(a3, a1 + 6);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = a4;
  a1[13] = a5;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v15, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  v15[a5] *= a4;
  MIL::Operators::Common::Shared::ConstExprs::GetStrides(&v15, &v13);
  v10 = a1[9];
  if (v10)
  {
    a1[10] = v10;
    operator delete(v10);
    a1[9] = 0;
    a1[10] = 0;
    a1[11] = 0;
  }

  *(a1 + 9) = v13;
  v11 = v15;
  a1[11] = v14;
  if (v11)
  {
    v16 = v11;
    operator delete(v11);
  }

  return a1;
}

void sub_218377A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v13 + 80) = v16;
    operator delete(v16);
  }

  v17 = *(v13 + 48);
  if (v17)
  {
    *(v13 + 56) = v17;
    operator delete(v17);
  }

  v18 = *(v13 + 24);
  if (v18)
  {
    *(v13 + 32) = v18;
    operator delete(v18);
  }

  v19 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(uint64_t a1, unint64_t a2, void *a3, unint64_t **a4)
{
  result = MIL::Operators::Common::Shared::ConstExprs::UnravelIndex(a2, a1 + 24, a4);
  (*a4)[*(a1 + 104)] *= *(a1 + 96);
  if (*(a1 + 96))
  {
    v8 = 0;
    do
    {
      result = MIL::Operators::Common::Shared::ConstExprs::RavelIndex(a4, a1 + 72);
      *(*a3 + 8 * v8) = result;
      ++(*a4)[*(a1 + 104)];
      ++v8;
    }

    while (v8 < *(a1 + 96));
  }

  return result;
}

uint64_t MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(unint64_t **a1, unint64_t a2, uint64_t a3, unint64_t **a4)
{
  MIL::Operators::Common::Shared::ConstExprs::UnravelIndex(a2, (a1 + 3), a4);
  v7 = *a3;
  v8 = *(a3 + 8) - *a3;
  if (v8)
  {
    v9 = v8 >> 3;
    v10 = *a4;
    v11 = *a1;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    do
    {
      v13 = *v10++;
      v12 = v13;
      v14 = *v11++;
      *v7++ = v12 / v14;
      --v9;
    }

    while (v9);
  }

  return MIL::Operators::Common::Shared::ConstExprs::RavelIndex(a3, (a1 + 6));
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<signed char,unsigned char>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<signed char>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v20, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v19, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v20, v19);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v19);
      v15 = v20;
      if (v21 != v20)
      {
        v16 = 0;
        v17 = a3 + (*(a1 + v13) + v14 * a5) * v12;
        do
        {
          *(*a6 + v15[v16]) = *(v17 + v16);
          ++v16;
          v15 = v20;
        }

        while (v16 < (v21 - v20) >> 3);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_218377D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<signed char,MIL::UInt6>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<signed char>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v31, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v30, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v31, v30);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v30);
      v28.__r_.__value_.__r.__words[0] = a1;
      v28.__r_.__value_.__l.__size_ = a2;
      v27.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt6 const,18446744073709551615ul>::ValueAt(&v28, v13);
      Int = MIL::UInt6::GetInt(&v27);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v20 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v26, v20);
        v22 = std::string::insert(&v26, 0, "Index ");
        v23 = *&v22->__r_.__value_.__l.__data_;
        v27.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
        *&v27.__r_.__value_.__l.__data_ = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        v24 = std::string::append(&v27, " cannot be negative");
        v25 = *&v24->__r_.__value_.__l.__data_;
        v28.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&v28.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v28);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v31;
      if (v32 != v31)
      {
        v18 = 0;
        v19 = a3 + (v14 * a5 + v16) * v12;
        do
        {
          *(*a6 + v17[v18]) = *(v19 + v18);
          ++v18;
          v17 = v31;
        }

        while (v18 < (v32 - v31) >> 3);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }
}

void sub_218377F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<signed char,MIL::UInt4>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<signed char>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v31, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v30, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v31, v30);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v30);
      v28.__r_.__value_.__r.__words[0] = a1;
      v28.__r_.__value_.__l.__size_ = a2;
      v27.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v28, v13);
      Int = MIL::UInt4::GetInt(&v27);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v20 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v26, v20);
        v22 = std::string::insert(&v26, 0, "Index ");
        v23 = *&v22->__r_.__value_.__l.__data_;
        v27.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
        *&v27.__r_.__value_.__l.__data_ = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        v24 = std::string::append(&v27, " cannot be negative");
        v25 = *&v24->__r_.__value_.__l.__data_;
        v28.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&v28.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v28);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v31;
      if (v32 != v31)
      {
        v18 = 0;
        v19 = a3 + (v14 * a5 + v16) * v12;
        do
        {
          *(*a6 + v17[v18]) = *(v19 + v18);
          ++v18;
          v17 = v31;
        }

        while (v18 < (v32 - v31) >> 3);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }
}

void sub_218378294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<signed char,MIL::UInt3>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<signed char>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v31, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v30, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v31, v30);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v30);
      v28.__r_.__value_.__r.__words[0] = a1;
      v28.__r_.__value_.__l.__size_ = a2;
      v27.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt3 const,18446744073709551615ul>::ValueAt(&v28, v13);
      Int = MIL::UInt3::GetInt(&v27);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v20 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v26, v20);
        v22 = std::string::insert(&v26, 0, "Index ");
        v23 = *&v22->__r_.__value_.__l.__data_;
        v27.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
        *&v27.__r_.__value_.__l.__data_ = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        v24 = std::string::append(&v27, " cannot be negative");
        v25 = *&v24->__r_.__value_.__l.__data_;
        v28.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&v28.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v28);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v31;
      if (v32 != v31)
      {
        v18 = 0;
        v19 = a3 + (v14 * a5 + v16) * v12;
        do
        {
          *(*a6 + v17[v18]) = *(v19 + v18);
          ++v18;
          v17 = v31;
        }

        while (v18 < (v32 - v31) >> 3);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }
}

void sub_218378598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<signed char,MIL::UInt2>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<signed char>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v31, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v30, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v31, v30);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v30);
      v28.__r_.__value_.__r.__words[0] = a1;
      v28.__r_.__value_.__l.__size_ = a2;
      v27.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt2 const,18446744073709551615ul>::ValueAt(&v28, v13);
      Int = MIL::UInt2::GetInt(&v27);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v20 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v26, v20);
        v22 = std::string::insert(&v26, 0, "Index ");
        v23 = *&v22->__r_.__value_.__l.__data_;
        v27.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
        *&v27.__r_.__value_.__l.__data_ = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        v24 = std::string::append(&v27, " cannot be negative");
        v25 = *&v24->__r_.__value_.__l.__data_;
        v28.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&v28.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v28);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v31;
      if (v32 != v31)
      {
        v18 = 0;
        v19 = a3 + (v14 * a5 + v16) * v12;
        do
        {
          *(*a6 + v17[v18]) = *(v19 + v18);
          ++v18;
          v17 = v31;
        }

        while (v18 < (v32 - v31) >> 3);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }
}

void sub_21837889C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<signed char,MIL::UInt1>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<signed char>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v31, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v30, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v31, v30);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v30);
      v28.__r_.__value_.__r.__words[0] = a1;
      v28.__r_.__value_.__l.__size_ = a2;
      v27.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(&v28, v13);
      Int = MIL::UInt1::GetInt(&v27);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v20 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v26, v20);
        v22 = std::string::insert(&v26, 0, "Index ");
        v23 = *&v22->__r_.__value_.__l.__data_;
        v27.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
        *&v27.__r_.__value_.__l.__data_ = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        v24 = std::string::append(&v27, " cannot be negative");
        v25 = *&v24->__r_.__value_.__l.__data_;
        v28.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&v28.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v28);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v31;
      if (v32 != v31)
      {
        v18 = 0;
        v19 = a3 + (v14 * a5 + v16) * v12;
        do
        {
          *(*a6 + v17[v18]) = *(v19 + v18);
          ++v18;
          v17 = v31;
        }

        while (v18 < (v32 - v31) >> 3);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }
}

void sub_218378BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Bf16,unsigned char>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<MIL::Bf16>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v23, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v22, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v23, v22);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v22);
      v15 = v23;
      if (v24 != v23)
      {
        v16 = (v24 - v23) >> 3;
        v17 = (a3 + 2 * (*(a1 + v13) + v14 * a5) * v12);
        v18 = *a6;
        if (v16 <= 1)
        {
          v16 = 1;
        }

        do
        {
          v20 = *v15++;
          v19 = v20;
          LOWORD(v20) = *v17++;
          *(v18 + 2 * v19) = v20;
          --v16;
        }

        while (v16);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v22[0])
  {
    v22[1] = v22[0];
    operator delete(v22[0]);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

void sub_218378DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Bf16,MIL::UInt6>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<MIL::Bf16>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v34, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v33, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v34, v33);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v33);
      v31.__r_.__value_.__r.__words[0] = a1;
      v31.__r_.__value_.__l.__size_ = a2;
      v30.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt6 const,18446744073709551615ul>::ValueAt(&v31, v13);
      Int = MIL::UInt6::GetInt(&v30);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v23 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v29, v23);
        v25 = std::string::insert(&v29, 0, "Index ");
        v26 = *&v25->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        v27 = std::string::append(&v30, " cannot be negative");
        v28 = *&v27->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v31);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v34;
      if (v35 != v34)
      {
        v18 = v35 - v34;
        v19 = (a3 + 2 * (v14 * a5 + v16) * v12);
        v20 = *a6;
        if (v18 <= 1)
        {
          v18 = 1;
        }

        do
        {
          v22 = *v17++;
          v21 = v22;
          LOWORD(v22) = *v19++;
          *(v20 + 2 * v21) = v22;
          --v18;
        }

        while (v18);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v33[0])
  {
    v33[1] = v33[0];
    operator delete(v33[0]);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_218379050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Bf16,MIL::UInt4>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<MIL::Bf16>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v34, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v33, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v34, v33);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v33);
      v31.__r_.__value_.__r.__words[0] = a1;
      v31.__r_.__value_.__l.__size_ = a2;
      v30.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v31, v13);
      Int = MIL::UInt4::GetInt(&v30);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v23 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v29, v23);
        v25 = std::string::insert(&v29, 0, "Index ");
        v26 = *&v25->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        v27 = std::string::append(&v30, " cannot be negative");
        v28 = *&v27->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v31);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v34;
      if (v35 != v34)
      {
        v18 = v35 - v34;
        v19 = (a3 + 2 * (v14 * a5 + v16) * v12);
        v20 = *a6;
        if (v18 <= 1)
        {
          v18 = 1;
        }

        do
        {
          v22 = *v17++;
          v21 = v22;
          LOWORD(v22) = *v19++;
          *(v20 + 2 * v21) = v22;
          --v18;
        }

        while (v18);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v33[0])
  {
    v33[1] = v33[0];
    operator delete(v33[0]);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_218379354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Bf16,MIL::UInt3>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<MIL::Bf16>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v34, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v33, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v34, v33);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v33);
      v31.__r_.__value_.__r.__words[0] = a1;
      v31.__r_.__value_.__l.__size_ = a2;
      v30.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt3 const,18446744073709551615ul>::ValueAt(&v31, v13);
      Int = MIL::UInt3::GetInt(&v30);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v23 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v29, v23);
        v25 = std::string::insert(&v29, 0, "Index ");
        v26 = *&v25->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        v27 = std::string::append(&v30, " cannot be negative");
        v28 = *&v27->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v31);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v34;
      if (v35 != v34)
      {
        v18 = v35 - v34;
        v19 = (a3 + 2 * (v14 * a5 + v16) * v12);
        v20 = *a6;
        if (v18 <= 1)
        {
          v18 = 1;
        }

        do
        {
          v22 = *v17++;
          v21 = v22;
          LOWORD(v22) = *v19++;
          *(v20 + 2 * v21) = v22;
          --v18;
        }

        while (v18);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v33[0])
  {
    v33[1] = v33[0];
    operator delete(v33[0]);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_218379658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Bf16,MIL::UInt2>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<MIL::Bf16>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v34, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v33, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v34, v33);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v33);
      v31.__r_.__value_.__r.__words[0] = a1;
      v31.__r_.__value_.__l.__size_ = a2;
      v30.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt2 const,18446744073709551615ul>::ValueAt(&v31, v13);
      Int = MIL::UInt2::GetInt(&v30);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v23 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v29, v23);
        v25 = std::string::insert(&v29, 0, "Index ");
        v26 = *&v25->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        v27 = std::string::append(&v30, " cannot be negative");
        v28 = *&v27->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v31);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v34;
      if (v35 != v34)
      {
        v18 = v35 - v34;
        v19 = (a3 + 2 * (v14 * a5 + v16) * v12);
        v20 = *a6;
        if (v18 <= 1)
        {
          v18 = 1;
        }

        do
        {
          v22 = *v17++;
          v21 = v22;
          LOWORD(v22) = *v19++;
          *(v20 + 2 * v21) = v22;
          --v18;
        }

        while (v18);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v33[0])
  {
    v33[1] = v33[0];
    operator delete(v33[0]);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_21837995C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Bf16,MIL::UInt1>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<MIL::Bf16>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v34, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v33, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v34, v33);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v33);
      v31.__r_.__value_.__r.__words[0] = a1;
      v31.__r_.__value_.__l.__size_ = a2;
      v30.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(&v31, v13);
      Int = MIL::UInt1::GetInt(&v30);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v23 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v29, v23);
        v25 = std::string::insert(&v29, 0, "Index ");
        v26 = *&v25->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        v27 = std::string::append(&v30, " cannot be negative");
        v28 = *&v27->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v31);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v34;
      if (v35 != v34)
      {
        v18 = v35 - v34;
        v19 = (a3 + 2 * (v14 * a5 + v16) * v12);
        v20 = *a6;
        if (v18 <= 1)
        {
          v18 = 1;
        }

        do
        {
          v22 = *v17++;
          v21 = v22;
          LOWORD(v22) = *v19++;
          *(v20 + 2 * v21) = v22;
          --v18;
        }

        while (v18);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v33[0])
  {
    v33[1] = v33[0];
    operator delete(v33[0]);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_218379C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Fp16,unsigned char>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<MIL::Fp16>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v23, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v22, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v23, v22);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v22);
      v15 = v23;
      if (v24 != v23)
      {
        v16 = (v24 - v23) >> 3;
        v17 = (a3 + 2 * (*(a1 + v13) + v14 * a5) * v12);
        v18 = *a6;
        if (v16 <= 1)
        {
          v16 = 1;
        }

        do
        {
          v20 = *v15++;
          v19 = v20;
          LOWORD(v20) = *v17++;
          *(v18 + 2 * v19) = v20;
          --v16;
        }

        while (v16);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v22[0])
  {
    v22[1] = v22[0];
    operator delete(v22[0]);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

void sub_218379E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Fp16,MIL::UInt6>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<MIL::Fp16>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v34, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v33, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v34, v33);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v33);
      v31.__r_.__value_.__r.__words[0] = a1;
      v31.__r_.__value_.__l.__size_ = a2;
      v30.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt6 const,18446744073709551615ul>::ValueAt(&v31, v13);
      Int = MIL::UInt6::GetInt(&v30);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v23 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v29, v23);
        v25 = std::string::insert(&v29, 0, "Index ");
        v26 = *&v25->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        v27 = std::string::append(&v30, " cannot be negative");
        v28 = *&v27->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v31);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v34;
      if (v35 != v34)
      {
        v18 = v35 - v34;
        v19 = (a3 + 2 * (v14 * a5 + v16) * v12);
        v20 = *a6;
        if (v18 <= 1)
        {
          v18 = 1;
        }

        do
        {
          v22 = *v17++;
          v21 = v22;
          LOWORD(v22) = *v19++;
          *(v20 + 2 * v21) = v22;
          --v18;
        }

        while (v18);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v33[0])
  {
    v33[1] = v33[0];
    operator delete(v33[0]);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_21837A110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Fp16,MIL::UInt4>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<MIL::Fp16>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v34, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v33, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v34, v33);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v33);
      v31.__r_.__value_.__r.__words[0] = a1;
      v31.__r_.__value_.__l.__size_ = a2;
      v30.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v31, v13);
      Int = MIL::UInt4::GetInt(&v30);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v23 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v29, v23);
        v25 = std::string::insert(&v29, 0, "Index ");
        v26 = *&v25->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        v27 = std::string::append(&v30, " cannot be negative");
        v28 = *&v27->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v31);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v34;
      if (v35 != v34)
      {
        v18 = v35 - v34;
        v19 = (a3 + 2 * (v14 * a5 + v16) * v12);
        v20 = *a6;
        if (v18 <= 1)
        {
          v18 = 1;
        }

        do
        {
          v22 = *v17++;
          v21 = v22;
          LOWORD(v22) = *v19++;
          *(v20 + 2 * v21) = v22;
          --v18;
        }

        while (v18);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v33[0])
  {
    v33[1] = v33[0];
    operator delete(v33[0]);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_21837A414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Fp16,MIL::UInt3>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<MIL::Fp16>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v34, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v33, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v34, v33);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v33);
      v31.__r_.__value_.__r.__words[0] = a1;
      v31.__r_.__value_.__l.__size_ = a2;
      v30.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt3 const,18446744073709551615ul>::ValueAt(&v31, v13);
      Int = MIL::UInt3::GetInt(&v30);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v23 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v29, v23);
        v25 = std::string::insert(&v29, 0, "Index ");
        v26 = *&v25->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        v27 = std::string::append(&v30, " cannot be negative");
        v28 = *&v27->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v31);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v34;
      if (v35 != v34)
      {
        v18 = v35 - v34;
        v19 = (a3 + 2 * (v14 * a5 + v16) * v12);
        v20 = *a6;
        if (v18 <= 1)
        {
          v18 = 1;
        }

        do
        {
          v22 = *v17++;
          v21 = v22;
          LOWORD(v22) = *v19++;
          *(v20 + 2 * v21) = v22;
          --v18;
        }

        while (v18);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v33[0])
  {
    v33[1] = v33[0];
    operator delete(v33[0]);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_21837A718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Fp16,MIL::UInt2>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<MIL::Fp16>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v34, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v33, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v34, v33);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v33);
      v31.__r_.__value_.__r.__words[0] = a1;
      v31.__r_.__value_.__l.__size_ = a2;
      v30.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt2 const,18446744073709551615ul>::ValueAt(&v31, v13);
      Int = MIL::UInt2::GetInt(&v30);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v23 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v29, v23);
        v25 = std::string::insert(&v29, 0, "Index ");
        v26 = *&v25->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        v27 = std::string::append(&v30, " cannot be negative");
        v28 = *&v27->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v31);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v34;
      if (v35 != v34)
      {
        v18 = v35 - v34;
        v19 = (a3 + 2 * (v14 * a5 + v16) * v12);
        v20 = *a6;
        if (v18 <= 1)
        {
          v18 = 1;
        }

        do
        {
          v22 = *v17++;
          v21 = v22;
          LOWORD(v22) = *v19++;
          *(v20 + 2 * v21) = v22;
          --v18;
        }

        while (v18);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v33[0])
  {
    v33[1] = v33[0];
    operator delete(v33[0]);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_21837AA1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Fp16,MIL::UInt1>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<MIL::Fp16>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v34, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v33, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v34, v33);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v33);
      v31.__r_.__value_.__r.__words[0] = a1;
      v31.__r_.__value_.__l.__size_ = a2;
      v30.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(&v31, v13);
      Int = MIL::UInt1::GetInt(&v30);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v23 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v29, v23);
        v25 = std::string::insert(&v29, 0, "Index ");
        v26 = *&v25->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        v27 = std::string::append(&v30, " cannot be negative");
        v28 = *&v27->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v31);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v34;
      if (v35 != v34)
      {
        v18 = v35 - v34;
        v19 = (a3 + 2 * (v14 * a5 + v16) * v12);
        v20 = *a6;
        if (v18 <= 1)
        {
          v18 = 1;
        }

        do
        {
          v22 = *v17++;
          v21 = v22;
          LOWORD(v22) = *v19++;
          *(v20 + 2 * v21) = v22;
          --v18;
        }

        while (v18);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v33[0])
  {
    v33[1] = v33[0];
    operator delete(v33[0]);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_21837AD20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,unsigned char>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<float>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v24, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v23, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v24, v23);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v23);
      v15 = v24;
      if (v25 != v24)
      {
        v16 = (v25 - v24) >> 3;
        v17 = (a3 + 4 * (*(a1 + v13) + v14 * a5) * v12);
        v18 = *a6;
        if (v16 <= 1)
        {
          v16 = 1;
        }

        do
        {
          v19 = *v17++;
          v20 = v19;
          v21 = *v15++;
          *(v18 + 4 * v21) = v20;
          --v16;
        }

        while (v16);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v23[0])
  {
    v23[1] = v23[0];
    operator delete(v23[0]);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }
}