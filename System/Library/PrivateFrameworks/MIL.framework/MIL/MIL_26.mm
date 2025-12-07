void sub_2181D26F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  MIL::ValidationResult::~ValidationResult(&a19);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (v53)
  {
    __cxa_free_exception(v52);
  }

  if (a47)
  {
    a48 = a47;
    operator delete(a47);
  }

  MIL::ValidationResult::~ValidationResult((v54 - 168));
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceTopk(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v8 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = (*(*v8 + 96))(v8);
  v10 = (*(*v8 + 88))(v8);
  std::string::basic_string[abi:ne200100]<0>(__p, "k");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v12 = MIL::IRValue::GetScalar<int>(SingleValue);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "axis");
  v13 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v14 = MIL::IRValue::GetScalar<int>(v13);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = MIL::IRTensorValueType::Rank(v8);
  v16 = *a2;
  v17 = a2[1];
  v25[0] = v16;
  v25[1] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (MIL::ValidationResult::IsGood(__p))
  {
    v21 = 0;
    v22 = 0uLL;
    memset(v20, 0, sizeof(v20));
    std::vector<std::string const*>::reserve(&v21, (*(v9 + 8) - *v9) >> 3);
    v18 = MIL::IRConstantDimension::Make(*a1, v12);
    MIL::ValueTypeInferenceUtils::GetTopkOutShape(a1, v9, v14, v18, v15, &v29);
    if (v21)
    {
      *&v22 = v21;
      operator delete(v21);
    }

    v21 = v29;
    v22 = v30;
    std::vector<MIL::IRValueType const*>::__assign_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(v20, v29, v30, (v30 - v29) >> 3);
    MIL::IRTensorValueType::MakeWithShape(*a1, v10, &v21);
  }

  exception = __cxa_allocate_exception(0x48uLL);
  MIL::MILResult::MILResult(v23, __p);
  v23[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
  v24 = v28;
  MIL::ValidationError::ValidationError(exception, v23);
}

void sub_2181D2BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  MIL::ValidationResult::~ValidationResult(&a15);
  MIL::ValidationResult::~ValidationResult(&a24);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceShape(MIL::IRConstantDimension **a1, void x1_0, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, __p);
  if (v5)
  {
    v6 = MIL::IRValue::AsTensor(*v5[5]);
    v7 = (*(*v6 + 32))(v6);
    v8 = (*(*v7 + 96))(v7);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v11, *v8, *(v8 + 8), (*(v8 + 8) - *v8) >> 3);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    v14.__begin_ = ((v12 - v11) >> 3);
    __p[1] = 0;
    v10 = 0;
    __p[0] = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v14, &v14.__end_, 1uLL);
    MIL::IRTensorValueType::Make(*a1, 11, __p);
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2181D2FD0(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::reverse_iterator<std::__wrap_iter<MIL::IRDimension const**>>,std::reverse_iterator<std::__wrap_iter<MIL::IRDimension const**>>>(void *a1, char *__src, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 < 1)
  {
    return __src;
  }

  v9 = a4;
  v12 = a1[1];
  v11 = a1[2];
  if (a7 <= (v11 - v12) >> 3)
  {
    v18 = (v12 - __src) >> 3;
    if (v18 >= a7)
    {
      v22 = &__src[8 * a7];
      v23 = &v12[-8 * a7];
      v24 = a1[1];
      while (v23 < v12)
      {
        v25 = *v23;
        v23 += 8;
        *v24++ = v25;
      }

      a1[1] = v24;
      if (v12 != v22)
      {
        memmove(&__src[8 * a7], __src, v12 - v22);
      }

      if (8 * a7)
      {
        v26 = v9 - 8 * a7;
        v27 = __src;
        do
        {
          v28 = *(v9 - 8);
          v9 -= 8;
          *v27 = v28;
          v27 += 8;
        }

        while (v9 != v26);
      }
    }

    else
    {
      v19 = a4 - (v12 - __src);
      v20 = a1[1];
      if (v19 == a6)
      {
        v21 = a1[1];
      }

      else
      {
        v39 = a4 - (v12 - __src);
        v21 = a1[1];
        do
        {
          v40 = *(v39 - 8);
          v39 -= 8;
          *v21 = v40;
          v21 += 8;
          ++v20;
        }

        while (v39 != a6);
      }

      a1[1] = v20;
      if (v18 >= 1)
      {
        v41 = &__src[8 * a7];
        v42 = &v20[-a7];
        v43 = v20;
        while (v42 < v12)
        {
          v44 = *v42;
          v42 += 8;
          *v43++ = v44;
        }

        a1[1] = v43;
        if (v21 != v41)
        {
          memmove(&__src[8 * a7], __src, v20 - v41);
        }

        if (v12 != __src)
        {
          v45 = __src;
          do
          {
            v46 = *(v9 - 8);
            v9 -= 8;
            *v45 = v46;
            v45 += 8;
          }

          while (v9 != v19);
        }
      }
    }

    return __src;
  }

  v13 = *a1;
  v14 = a7 + (&v12[-*a1] >> 3);
  if (v14 >> 61)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v15 = __src - v13;
  v16 = v11 - v13;
  if (v16 >> 2 > v14)
  {
    v14 = v16 >> 2;
  }

  if (v16 >= 0x7FFFFFFFFFFFFFF8)
  {
    v17 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v17 = v14;
  }

  if (v17)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(a1, v17);
  }

  v29 = 8 * (v15 >> 3);
  v30 = 8 * a7;
  v31 = (a4 - 8);
  v32 = v29;
  do
  {
    v33 = *v31--;
    *v32++ = v33;
    v30 -= 8;
  }

  while (v30);
  memcpy((v29 + 8 * a7), __src, a1[1] - __src);
  v34 = *a1;
  v35 = v29 + 8 * a7 + a1[1] - __src;
  a1[1] = __src;
  v36 = (__src - v34);
  v37 = (v29 - (__src - v34));
  memcpy(v37, v34, v36);
  v38 = *a1;
  *a1 = v37;
  a1[1] = v35;
  a1[2] = 0;
  if (v38)
  {
    operator delete(v38);
  }

  return v29;
}

void MIL::Operators::Common::ios15::Argsort::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181D3D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45)
{
  v48 = *(v46 - 80);
  *(v46 - 80) = 0;
  if (v48)
  {
    (*(*v48 + 8))(v48, a2, a3, a4, a5, a6, a7, a8);
  }

  v49 = *v45;
  *v45 = 0;
  if (v49)
  {
    (*(*v49 + 8))(v49, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a45, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v46 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::BandPart::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181D4D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v62 = *(v60 - 96);
  *(v60 - 96) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v60 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a59, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Cumsum::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181D5E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 88);
  *(v59 - 88) = 0;
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

void MIL::Operators::Common::ios15::Fill::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181D6E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void **a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v62 = *(v60 - 88);
  *(v60 - 88) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a59, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Flatten2D::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181D7E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void **a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = *(v61 - 88);
  *(v61 - 88) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a46, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Identity::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181D8BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59)
{
  v62 = *(v60 - 88);
  *(v60 - 88) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v60 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v60 - 240), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::NonMaximumSuppression::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181DA90C(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2E8], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x350], 0);
  _Unwind_Resume(a1);
}

void sub_2181DB17C()
{
  v1 = *(v0 - 96);
  if (v1)
  {
    *(v0 - 88) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x2181DB160);
}

void MIL::Operators::Common::ios15::NonZero::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181DBE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59)
{
  v62 = *(v60 - 96);
  *(v60 - 96) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a59, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v60 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::OneHot::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181DCF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void **a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = *(v64 - 88);
  *(v64 - 88) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a52, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a63, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Pad::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181DE48C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 72);
  *(v2 - 72) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 104), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x210], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Range1D::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181DF5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void **a62)
{
  v65 = *(v63 - 80);
  *(v63 - 80) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v63 - 208), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Shape::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181E04AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v59 = *(v57 - 88);
  *(v57 - 88) = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59, a2, a3, a4, a5, a6, a7, a8);
  }

  v60 = *v56;
  *v56 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a47, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a56, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Tile::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181E1740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  v68 = *(v66 - 88);
  *(v66 - 88) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v66 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a65, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Topk::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181E2A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v60 = *(v58 - 88);
  *(v58 - 88) = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60, a2, a3, a4, a5, a6, a7, a8);
  }

  v61 = *v57;
  *v57 = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 144), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a57, 0);
  _Unwind_Resume(a1);
}

void sub_2181E2F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[22],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_2181E3074(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateBatchToSpace(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v73, "x");
  ParameterType = MIL::IROperation::GetParameterType(this, v73);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v74 < 0)
  {
    operator delete(v73[0]);
  }

  OutputType = MIL::IROperation::GetOutputType(this, 0);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = MIL::IRTensorValueType::Rank(v5);
  if (v8 != MIL::IRTensorValueType::Rank(v7))
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v21 = LocationPtr[1];
    *&v72 = *LocationPtr;
    *(&v72 + 1) = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v70, "Input and output tensor shape must have the same rank");
    MIL::ValidationResult::ValidationResult(a2, &v72, 315, v70);
    if (v71 < 0)
    {
      operator delete(v70[0]);
    }

    v22 = *(&v72 + 1);
    if (!*(&v72 + 1))
    {
      return;
    }

LABEL_45:
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(v73, "block_shape");
  ParameterValue = MIL::IROperation::GetParameterValue(this, v73);
  v10 = MIL::IRValue::AsTensor(ParameterValue);
  if (v74 < 0)
  {
    operator delete(v73[0]);
  }

  v11 = (*(*v10 + 32))(v10);
  v12 = (*(*v11 + 96))(v11);
  v13 = MIL::IRDimension::AsConstant(**v12);
  v14 = MIL::IRTensorValueType::Rank(v5);
  if (v14 != (*(*v13 + 48))(v13) + 2)
  {
    v23 = MIL::IRObject::GetLocationPtr(this);
    v24 = v23[1];
    *&v69 = *v23;
    *(&v69 + 1) = v24;
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Input and output shape must have exactly two more dimensions than the block shape");
    MIL::ValidationResult::ValidationResult(a2, &v69, 315, __p);
    if (v68 < 0)
    {
      operator delete(__p[0]);
    }

    v22 = *(&v69 + 1);
    if (!*(&v69 + 1))
    {
      return;
    }

    goto LABEL_45;
  }

  Data = MIL::IRTensorValue::GetDataView<int>(v10);
  if (v16)
  {
    v17 = 4 * v16;
    v18 = 1;
    do
    {
      v19 = *Data++;
      v18 *= v19;
      v17 -= 4;
    }

    while (v17);
  }

  else
  {
    v18 = 1;
  }

  v25 = (*(*v5 + 96))(v5);
  v26 = (*(***v25 + 16))(**v25);
  v27 = (*(*v7 + 96))(v7);
  v28 = (*(***v27 + 16))(**v27);
  if (v26)
  {
    v29 = v28 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v30 = v28;
    v31 = (*(*v26 + 48))(v26);
    if (v18 * (*(*v30 + 48))(v30) != v31)
    {
      v49 = MIL::IRObject::GetLocationPtr(this);
      v50 = v49[1];
      *&v66 = *v49;
      *(&v66 + 1) = v50;
      if (v50)
      {
        atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v64, "Input batch size must be equal to the output batch size times the total block size");
      MIL::ValidationResult::ValidationResult(a2, &v66, 315, v64);
      if (v65 < 0)
      {
        operator delete(v64[0]);
      }

      v22 = *(&v66 + 1);
      if (!*(&v66 + 1))
      {
        return;
      }

      goto LABEL_45;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v73, "crops");
  v32 = MIL::IROperation::GetParameterValue(this, v73);
  v33 = MIL::IRValue::AsTensor(v32);
  if (v74 < 0)
  {
    operator delete(v73[0]);
  }

  v34 = (*(*v33 + 32))(v33);
  v35 = (*(*v34 + 96))(v34);
  v36 = MIL::IRDimension::AsConstant(**v35);
  v37 = MIL::IRDimension::AsConstant((*v35)[1]);
  if ((*(*v37 + 48))(v37) != 2)
  {
    v47 = MIL::IRObject::GetLocationPtr(this);
    v48 = v47[1];
    *&v63 = *v47;
    *(&v63 + 1) = v48;
    if (v48)
    {
      atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v61, "'crops' must be an M x 2 tensor");
    MIL::ValidationResult::ValidationResult(a2, &v63, 315, v61);
    if (v62 < 0)
    {
      operator delete(v61[0]);
    }

    v22 = *(&v63 + 1);
    if (!*(&v63 + 1))
    {
      return;
    }

    goto LABEL_45;
  }

  v38 = (*(*v36 + 48))(v36);
  if (v38 != (*(*v13 + 48))(v13))
  {
    v51 = MIL::IRObject::GetLocationPtr(this);
    v52 = v51[1];
    *&v60 = *v51;
    *(&v60 + 1) = v52;
    if (v52)
    {
      atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v58, "'crops' must be an M x 2 tensor");
    MIL::ValidationResult::ValidationResult(a2, &v60, 315, v58);
    if (v59 < 0)
    {
      operator delete(v58[0]);
    }

    v22 = *(&v60 + 1);
    if (!*(&v60 + 1))
    {
      return;
    }

    goto LABEL_45;
  }

  v39 = MIL::IRTensorValue::GetDataView<int>(v33);
  if (v40 >= 2)
  {
    v42 = v39 + 1;
    v41 = *v39;
    v43 = 4 * v40 - 4;
    v44 = v39 + 1;
    do
    {
      v46 = *v44++;
      v45 = v46;
      if (v46 < v41)
      {
        v41 = v45;
        v39 = v42;
      }

      v42 = v44;
      v43 -= 4;
    }

    while (v43);
  }

  if ((*v39 & 0x80000000) == 0)
  {
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  v53 = MIL::IRObject::GetLocationPtr(this);
  v54 = v53[1];
  *&v57 = *v53;
  *(&v57 + 1) = v54;
  if (v54)
  {
    atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v55, "'crops' values must all be >= 0");
  MIL::ValidationResult::ValidationResult(a2, &v57, 315, v55);
  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  v22 = *(&v57 + 1);
  if (*(&v57 + 1))
  {
    goto LABEL_45;
  }
}

void sub_2181E3718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
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

void MIL::Operators::Common::ios15::CustomValidators::ValidateExpandDims(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  OutputType = MIL::IROperation::GetOutputType(this, 0);
  v5 = MIL::IRValueType::AsTensorType(OutputType);
  if (((*(*v5 + 104))(v5) & 1) == 0)
  {

    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  v6 = MIL::IRTensorValueType::Rank(v5);
  std::string::basic_string[abi:ne200100]<0>(v25, "axes");
  ParameterValue = MIL::IROperation::GetParameterValue(this, v25);
  v8 = MIL::IRValue::AsTensor(ParameterValue);
  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  v9 = MIL::IRValue::AsTensor(v8);
  Data = MIL::IRTensorValue::GetDataView<int>(v9);
  if (v11)
  {
    v12 = Data;
    v13 = 4 * v11;
    while (MIL::Validation::IsAxisValidForRank(*v12, v6))
    {
      ++v12;
      v13 -= 4;
      if (!v13)
      {
        goto LABEL_8;
      }
    }

    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v18 = LocationPtr[1];
    *&v24 = *LocationPtr;
    *(&v24 + 1) = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v22, "Each 'axis' in 'axes' must be within range (-output_rank - 1, output_rank) (exclusive)");
    MIL::ValidationResult::ValidationResult(a2, &v24, 315, v22);
    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    v16 = *(&v24 + 1);
    if (!*(&v24 + 1))
    {
      return;
    }

LABEL_18:
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    return;
  }

LABEL_8:
  if (MIL::Validation::HasUniqueElementsInAxes(v8, v6))
  {
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  v14 = MIL::IRObject::GetLocationPtr(this);
  v15 = v14[1];
  *&v21 = *v14;
  *(&v21 + 1) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Each 'axis' in 'axes' must correspond to a unique & different dimension");
  MIL::ValidationResult::ValidationResult(a2, &v21, 315, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = *(&v21 + 1);
  if (*(&v21 + 1))
  {
    goto LABEL_18;
  }
}

void sub_2181E3A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateReshape(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "shape");
  ParameterType = MIL::IROperation::TryGetParameterType(this, &__p, 0);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v44[0].__locale_) < 0)
  {
    operator delete(__p);
  }

  if ((*(*v5 + 104))(v5))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "shape");
    ParameterValue = MIL::IROperation::TryGetParameterValue(this, &__p, 0);
    v7 = ParameterValue;
    if (SHIBYTE(v44[0].__locale_) < 0)
    {
      operator delete(__p);
      if (!v7)
      {
LABEL_38:
        MIL::ValidationResult::ValidationResult(a2);
        return;
      }
    }

    else if (!ParameterValue)
    {
      goto LABEL_38;
    }

    v11 = (*(*v5 + 16))(v5);
    if (v11 < 6)
    {
      v14 = v11;
      v15 = MIL::IRValue::AsTensor(v7);
      Data = MIL::IRTensorValue::GetDataView<int>(v15);
      v51 = v16;
      std::string::basic_string[abi:ne200100]<0>(&__p, "x");
      v17 = MIL::IROperation::GetParameterType(this, &__p);
      v18 = MIL::IRValueType::AsTensorType(v17);
      if (SHIBYTE(v44[0].__locale_) < 0)
      {
        operator delete(__p);
      }

      if (v51)
      {
        v19 = 4 * v51;
        v20 = Data;
        while (*v20 != -1)
        {
          ++v20;
          v19 -= 4;
          if (!v19)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        v20 = Data;
      }

      if (v20 == (Data + 4 * v51) || MIL::IRTensorValueType::Rank(v18) != v14 || ((*(*v18 + 104))(v18) & 1) != 0)
      {
LABEL_32:
        if (!(*(*v18 + 104))(v18) || !MIL::Validation::IsZeroOutOfRangeForReshape(&Data, v18))
        {
          goto LABEL_38;
        }

        v21 = Data;
        v22 = 4 * v51;
        while (v22)
        {
          v23 = *(Data + v22 - 4);
          v22 -= 4;
          if (!v23)
          {
            v24 = Data + v22 + 4;
            goto LABEL_41;
          }
        }

        v24 = Data;
LABEL_41:
        std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Can only reshape to a shape containing 0 when shape[i]==0 && i<rank(X).  Index of 0: ", 85);
        std::to_string(&v41, (v24 - v21) >> 2);
        if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &v41;
        }

        else
        {
          v26 = v41.__r_.__value_.__r.__words[0];
        }

        if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v41.__r_.__value_.__l.__size_;
        }

        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, size);
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ", rank of X: ", 13);
        v30 = MIL::IRTensorValueType::Rank(v18);
        std::to_string(&v40, v30);
        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v40;
        }

        else
        {
          v31 = v40.__r_.__value_.__r.__words[0];
        }

        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v32 = v40.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v31, v32);
        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__data_);
        }

        LocationPtr = MIL::IRObject::GetLocationPtr(this);
        v34 = LocationPtr[1];
        *&v39 = *LocationPtr;
        *(&v39 + 1) = v34;
        if (v34)
        {
          atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
        }

        std::stringbuf::str();
        MIL::ValidationResult::ValidationResult(a2, &v39, 315, &v37);
        if (v38 < 0)
        {
          operator delete(v37);
        }

        if (*(&v39 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v39 + 1));
        }

        __p = *MEMORY[0x277D82828];
        *(&__p + *(__p - 3)) = *(MEMORY[0x277D82828] + 24);
        v43 = MEMORY[0x277D82878] + 16;
        if (v45 < 0)
        {
          operator delete(v44[7].__locale_);
        }

        v43 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v44);
        std::ostream::~ostream();
        MEMORY[0x21CEAFDA0](&v46);
      }

      else
      {
        v35 = MIL::IRObject::GetLocationPtr(this);
        v36 = v35[1];
        *&v49 = *v35;
        *(&v49 + 1) = v36;
        if (v36)
        {
          atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v47, "Unable to reshape tensors of non-fixed rank");
        MIL::ValidationResult::ValidationResult(a2, &v49, 315, v47);
        if (v48 < 0)
        {
          operator delete(v47[0]);
        }

        v10 = *(&v49 + 1);
        if (*(&v49 + 1))
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v12 = MIL::IRObject::GetLocationPtr(this);
      v13 = v12[1];
      *&v54 = *v12;
      *(&v54 + 1) = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v52, "Rank of the shape parameter must be between 0 and 5 (inclusive) in reshape");
      MIL::ValidationResult::ValidationResult(a2, &v54, 315, v52);
      if (v53 < 0)
      {
        operator delete(v52[0]);
      }

      v10 = *(&v54 + 1);
      if (*(&v54 + 1))
      {
LABEL_20:
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }
    }
  }

  else
  {
    v8 = MIL::IRObject::GetLocationPtr(this);
    v9 = v8[1];
    *&v57 = *v8;
    *(&v57 + 1) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v55, "The target shape cannot have non-fixed rank in reshape");
    MIL::ValidationResult::ValidationResult(a2, &v57, 315, v55);
    if (v56 < 0)
    {
      operator delete(v55[0]);
    }

    v10 = *(&v57 + 1);
    if (*(&v57 + 1))
    {
      goto LABEL_20;
    }
  }
}

void sub_2181E401C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 177) < 0)
  {
    operator delete(*(v35 - 200));
  }

  v37 = *(v35 - 168);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateSlidingWindows(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this, __p);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (((*(*v5 + 104))(v5) & 1) == 0)
  {
    goto LABEL_7;
  }

  v6 = MIL::IRTensorValueType::Rank(v5);
  std::string::basic_string[abi:ne200100]<0>(__p, "axis");
  ParameterValue = MIL::IROperation::GetParameterValue(this, __p);
  v8 = MIL::IRValue::GetScalar<int>(ParameterValue);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (!MIL::Validation::IsAxisValidForRank(v8, v6))
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v10 = LocationPtr[1];
    *&v13 = *LocationPtr;
    *(&v13 + 1) = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v11, "Axis must be within range (-input_rank - 1, input_rank) (exclusive)");
    MIL::ValidationResult::ValidationResult(a2, &v13, 315, v11);
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    if (*(&v13 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
    }
  }

  else
  {
LABEL_7:
    MIL::ValidationResult::ValidationResult(a2);
  }
}

void sub_2181E4288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void MIL::Operators::Common::ios15::CustomValidators::ValidateSpaceToBatch(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v73, "x");
  ParameterType = MIL::IROperation::GetParameterType(this, v73);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v74 < 0)
  {
    operator delete(v73[0]);
  }

  OutputType = MIL::IROperation::GetOutputType(this, 0);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = MIL::IRTensorValueType::Rank(v5);
  if (v8 != MIL::IRTensorValueType::Rank(v7))
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v21 = LocationPtr[1];
    *&v72 = *LocationPtr;
    *(&v72 + 1) = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v70, "Input and output tensor shape must have the same rank");
    MIL::ValidationResult::ValidationResult(a2, &v72, 315, v70);
    if (v71 < 0)
    {
      operator delete(v70[0]);
    }

    v22 = *(&v72 + 1);
    if (!*(&v72 + 1))
    {
      return;
    }

LABEL_45:
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(v73, "block_shape");
  ParameterValue = MIL::IROperation::GetParameterValue(this, v73);
  v10 = MIL::IRValue::AsTensor(ParameterValue);
  if (v74 < 0)
  {
    operator delete(v73[0]);
  }

  v11 = (*(*v10 + 32))(v10);
  v12 = (*(*v11 + 96))(v11);
  v13 = MIL::IRDimension::AsConstant(**v12);
  v14 = MIL::IRTensorValueType::Rank(v5);
  if (v14 != (*(*v13 + 48))(v13) + 2)
  {
    v23 = MIL::IRObject::GetLocationPtr(this);
    v24 = v23[1];
    *&v69 = *v23;
    *(&v69 + 1) = v24;
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Input and output shape must have exactly two more dimensions than the block shape");
    MIL::ValidationResult::ValidationResult(a2, &v69, 315, __p);
    if (v68 < 0)
    {
      operator delete(__p[0]);
    }

    v22 = *(&v69 + 1);
    if (!*(&v69 + 1))
    {
      return;
    }

    goto LABEL_45;
  }

  Data = MIL::IRTensorValue::GetDataView<int>(v10);
  if (v16)
  {
    v17 = 4 * v16;
    v18 = 1;
    do
    {
      v19 = *Data++;
      v18 *= v19;
      v17 -= 4;
    }

    while (v17);
  }

  else
  {
    v18 = 1;
  }

  v25 = (*(*v5 + 96))(v5);
  v26 = (*(***v25 + 16))(**v25);
  v27 = (*(*v7 + 96))(v7);
  v28 = (*(***v27 + 16))(**v27);
  if (v26)
  {
    v29 = v28 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v30 = v28;
    v31 = v18 * (*(*v26 + 48))(v26);
    if (v31 != (*(*v30 + 48))(v30))
    {
      v49 = MIL::IRObject::GetLocationPtr(this);
      v50 = v49[1];
      *&v66 = *v49;
      *(&v66 + 1) = v50;
      if (v50)
      {
        atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v64, "Input batch size must be equal to the output batch size times the total block size");
      MIL::ValidationResult::ValidationResult(a2, &v66, 315, v64);
      if (v65 < 0)
      {
        operator delete(v64[0]);
      }

      v22 = *(&v66 + 1);
      if (!*(&v66 + 1))
      {
        return;
      }

      goto LABEL_45;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v73, "paddings");
  v32 = MIL::IROperation::GetParameterValue(this, v73);
  v33 = MIL::IRValue::AsTensor(v32);
  if (v74 < 0)
  {
    operator delete(v73[0]);
  }

  v34 = (*(*v33 + 32))(v33);
  v35 = (*(*v34 + 96))(v34);
  v36 = MIL::IRDimension::AsConstant(**v35);
  v37 = MIL::IRDimension::AsConstant((*v35)[1]);
  if ((*(*v37 + 48))(v37) != 2)
  {
    v47 = MIL::IRObject::GetLocationPtr(this);
    v48 = v47[1];
    *&v63 = *v47;
    *(&v63 + 1) = v48;
    if (v48)
    {
      atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v61, "'paddings' must be an M x 2 tensor");
    MIL::ValidationResult::ValidationResult(a2, &v63, 315, v61);
    if (v62 < 0)
    {
      operator delete(v61[0]);
    }

    v22 = *(&v63 + 1);
    if (!*(&v63 + 1))
    {
      return;
    }

    goto LABEL_45;
  }

  v38 = (*(*v36 + 48))(v36);
  if (v38 != (*(*v13 + 48))(v13))
  {
    v51 = MIL::IRObject::GetLocationPtr(this);
    v52 = v51[1];
    *&v60 = *v51;
    *(&v60 + 1) = v52;
    if (v52)
    {
      atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v58, "'paddings' must be an M x 2 tensor");
    MIL::ValidationResult::ValidationResult(a2, &v60, 315, v58);
    if (v59 < 0)
    {
      operator delete(v58[0]);
    }

    v22 = *(&v60 + 1);
    if (!*(&v60 + 1))
    {
      return;
    }

    goto LABEL_45;
  }

  v39 = MIL::IRTensorValue::GetDataView<int>(v33);
  if (v40 >= 2)
  {
    v42 = v39 + 1;
    v41 = *v39;
    v43 = 4 * v40 - 4;
    v44 = v39 + 1;
    do
    {
      v46 = *v44++;
      v45 = v46;
      if (v46 < v41)
      {
        v41 = v45;
        v39 = v42;
      }

      v42 = v44;
      v43 -= 4;
    }

    while (v43);
  }

  if ((*v39 & 0x80000000) == 0)
  {
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  v53 = MIL::IRObject::GetLocationPtr(this);
  v54 = v53[1];
  *&v57 = *v53;
  *(&v57 + 1) = v54;
  if (v54)
  {
    atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v55, "'paddings' values must all be >= 0");
  MIL::ValidationResult::ValidationResult(a2, &v57, 315, v55);
  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  v22 = *(&v57 + 1);
  if (*(&v57 + 1))
  {
    goto LABEL_45;
  }
}

void sub_2181E4958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
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

void MIL::Operators::Common::ios15::CustomValidators::ValidateSqueeze(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v27, "axes");
  IsParameterSet = MIL::IROperation::IsParameterSet(this, v27);
  v5 = IsParameterSet;
  if (v28 < 0)
  {
    operator delete(v27[0]);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else if (!IsParameterSet)
  {
    goto LABEL_15;
  }

  std::string::basic_string[abi:ne200100]<0>(v27, "x");
  ParameterType = MIL::IROperation::GetParameterType(this, v27);
  v7 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (((*(*v7 + 104))(v7) & 1) == 0)
  {
    goto LABEL_15;
  }

  v8 = MIL::IRTensorValueType::Rank(v7);
  std::string::basic_string[abi:ne200100]<0>(v27, "axes");
  ParameterValue = MIL::IROperation::GetParameterValue(this, v27);
  v10 = MIL::IRValue::AsTensor(ParameterValue);
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  v11 = MIL::IRValue::AsTensor(v10);
  Data = MIL::IRTensorValue::GetDataView<int>(v11);
  if (v13)
  {
    v14 = Data;
    v15 = 4 * v13;
    while (MIL::Validation::IsAxisValidForRank(*v14, v8))
    {
      ++v14;
      v15 -= 4;
      if (!v15)
      {
        goto LABEL_14;
      }
    }

    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v20 = LocationPtr[1];
    *&v26 = *LocationPtr;
    *(&v26 + 1) = v20;
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v24, "Each 'axis' in 'axes' must be within range (-input_rank - 1, input_rank) (exclusive)");
    MIL::ValidationResult::ValidationResult(a2, &v26, 315, v24);
    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    v18 = *(&v26 + 1);
    if (*(&v26 + 1))
    {
      goto LABEL_28;
    }

    return;
  }

LABEL_14:
  if (MIL::Validation::HasUniqueElementsInAxes(v10, v8))
  {
LABEL_15:
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  v16 = MIL::IRObject::GetLocationPtr(this);
  v17 = v16[1];
  *&v23 = *v16;
  *(&v23 + 1) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Each 'axis' in 'axes' must correspond to a unique & different dimension");
  MIL::ValidationResult::ValidationResult(a2, &v23, 315, __p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v18 = *(&v23 + 1);
  if (*(&v23 + 1))
  {
LABEL_28:
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void sub_2181E4CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateTranspose(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v32, "x");
  ParameterType = MIL::IROperation::GetParameterType(this, &v32);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (((*(*v5 + 104))(v5) & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = MIL::IRTensorValueType::Rank(v5);
  std::string::basic_string[abi:ne200100]<0>(&v32, "perm");
  ParameterValue = MIL::IROperation::GetParameterValue(this, &v32);
  v8 = MIL::IRValue::AsTensor(ParameterValue);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v9 = (*(*v8 + 32))(v8);
  v10 = (*(*v9 + 24))(v9);
  if (MIL::IRTensorValueType::Rank(v10) == 1)
  {
    v11 = (*(*v10 + 96))(v10);
    v12 = MIL::IRDimension::AsConstant(**v11);
    if ((*(*v12 + 48))(v12) == v6)
    {
      v13 = MIL::IRValue::AsTensor(v8);
      Data = MIL::IRTensorValue::GetDataView<int>(v13);
      if (v15)
      {
        v16 = Data;
        v17 = 4 * v15;
        while (MIL::Validation::IsAxisValidForRank(*v16, v6))
        {
          ++v16;
          v17 -= 4;
          if (!v17)
          {
            goto LABEL_12;
          }
        }

        (*(*this + 56))(this);
        std::operator+<char>();
        LocationPtr = MIL::IRObject::GetLocationPtr(this);
        v23 = LocationPtr[1];
        *&v28 = *LocationPtr;
        *(&v28 + 1) = v23;
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v27, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
        }

        else
        {
          v27 = v32;
        }

        MIL::ValidationResult::ValidationResult(a2, &v28, 315, &v27);
        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v27.__r_.__value_.__l.__data_);
        }

        v24 = *(&v28 + 1);
        if (!*(&v28 + 1))
        {
          goto LABEL_34;
        }

LABEL_33:
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
LABEL_34:
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        return;
      }

LABEL_12:
      if (!MIL::Validation::HasUniqueElementsInAxes(v8, v6))
      {
        (*(*this + 56))(this);
        std::operator+<char>();
        v20 = MIL::IRObject::GetLocationPtr(this);
        v21 = v20[1];
        *&v26 = *v20;
        *(&v26 + 1) = v21;
        if (v21)
        {
          atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v25, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
        }

        else
        {
          v25 = v32;
        }

        MIL::ValidationResult::ValidationResult(a2, &v26, 315, &v25);
        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        v24 = *(&v26 + 1);
        if (!*(&v26 + 1))
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

LABEL_13:
      MIL::ValidationResult::ValidationResult(a2);
      return;
    }
  }

  v18 = MIL::IRObject::GetLocationPtr(this);
  v19 = v18[1];
  *&v31 = *v18;
  *(&v31 + 1) = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Perm must have shape [rank of x].");
  MIL::ValidationResult::ValidationResult(a2, &v31, 315, __p);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(&v31 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v31 + 1));
  }
}

void sub_2181E50F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (*(v32 - 65) < 0)
  {
    operator delete(*(v32 - 88));
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateReverse(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v28, "x");
  ParameterType = MIL::IROperation::GetParameterType(this, v28);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (((*(*v5 + 104))(v5) & 1) == 0)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v10 = LocationPtr[1];
    *&v27 = *LocationPtr;
    *(&v27 + 1) = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Non-fixed rank not supported");
    MIL::ValidationResult::ValidationResult(a2, &v27, 315, __p);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    v11 = *(&v27 + 1);
    if (!*(&v27 + 1))
    {
      return;
    }

LABEL_12:
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    return;
  }

  v6 = MIL::IRTensorValueType::Rank(v5);
  std::string::basic_string[abi:ne200100]<0>(v28, "axes");
  IsParameterSet = MIL::IROperation::IsParameterSet(this, v28);
  v8 = IsParameterSet;
  if (v29 < 0)
  {
    operator delete(v28[0]);
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  else if (!IsParameterSet)
  {
    goto LABEL_24;
  }

  std::string::basic_string[abi:ne200100]<0>(v28, "axes");
  ParameterValue = MIL::IROperation::GetParameterValue(this, v28);
  v13 = MIL::IRValue::AsTensor(ParameterValue);
  Data = MIL::IRTensorValue::GetDataView<int>(v13);
  v16 = v14;
  if (v29 < 0)
  {
    operator delete(v28[0]);
    if (v16)
    {
      goto LABEL_18;
    }

LABEL_24:
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  if (!v14)
  {
    goto LABEL_24;
  }

LABEL_18:
  v17 = 4 * v16;
  while (1)
  {
    v18 = *Data;
    if (v18 < -v6 || v6 <= v18)
    {
      break;
    }

    ++Data;
    v17 -= 4;
    if (!v17)
    {
      goto LABEL_24;
    }
  }

  v20 = MIL::IRObject::GetLocationPtr(this);
  v21 = v20[1];
  *&v24 = *v20;
  *(&v24 + 1) = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v22, "Axes must be within range [-rank, rank)");
  MIL::ValidationResult::ValidationResult(a2, &v24, 315, v22);
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  v11 = *(&v24 + 1);
  if (*(&v24 + 1))
  {
    goto LABEL_12;
  }
}

void sub_2181E53BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25)
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

void MIL::Operators::Common::ios15::CustomValidators::ValidateConcat(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v61, "values");
  ParameterType = MIL::IROperation::GetParameterType(this, &v61);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (((*(*v5 + 104))(v5) & 1) == 0)
  {
    goto LABEL_26;
  }

  v6 = MIL::IRTensorValueType::Rank(v5);
  std::string::basic_string[abi:ne200100]<0>(&v61, "axis");
  ParameterValue = MIL::IROperation::GetParameterValue(this, &v61);
  v8 = MIL::IRValue::GetScalar<int>(ParameterValue);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (MIL::IRTensorValueType::IsScalar(v5) && v8)
  {
    std::to_string(&v59, v8);
    v9 = std::string::insert(&v59, 0, "Axis (");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v60, ") must be 0 when inputs are scalars for ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = (*(*this + 56))(this);
    v14 = *(v13 + 23);
    if (v14 >= 0)
    {
      v15 = v13;
    }

    else
    {
      v15 = *v13;
    }

    if (v14 >= 0)
    {
      v16 = *(v13 + 23);
    }

    else
    {
      v16 = *(v13 + 8);
    }

    v17 = std::string::append(&v61, v15, v16);
    v18 = v17->__r_.__value_.__r.__words[0];
    size = v17->__r_.__value_.__l.__size_;
    LODWORD(v55.__r_.__value_.__l.__data_) = v17->__r_.__value_.__r.__words[2];
    *(v55.__r_.__value_.__r.__words + 3) = *(&v17->__r_.__value_.__r.__words[2] + 3);
    v20 = SHIBYTE(v17->__r_.__value_.__r.__words[2]);
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v22 = LocationPtr[1];
    *&v58 = *LocationPtr;
    *(&v58 + 1) = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    if (v20 < 0)
    {
      std::string::__init_copy_ctor_external(&v57, v18, size);
    }

    else
    {
      v57.__r_.__value_.__r.__words[0] = v18;
      v57.__r_.__value_.__l.__size_ = size;
      LODWORD(v57.__r_.__value_.__r.__words[2]) = v55.__r_.__value_.__l.__data_;
      *(&v57.__r_.__value_.__r.__words[2] + 3) = *(v55.__r_.__value_.__r.__words + 3);
      *(&v57.__r_.__value_.__s + 23) = v20;
    }

    MIL::ValidationResult::ValidationResult(a2, &v58, 315, &v57);
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    v23 = *(&v58 + 1);
    if (!*(&v58 + 1))
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (MIL::IRTensorValueType::IsScalar(v5) || MIL::Validation::IsAxisValidForRank(v8, v6))
  {
LABEL_26:
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  std::to_string(&v52, v8);
  v24 = std::string::insert(&v52, 0, "Axis (");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v53.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v53.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v53, ") must be within range [-");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v54.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v54.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v51, v6);
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &v51;
  }

  else
  {
    v28 = v51.__r_.__value_.__r.__words[0];
  }

  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v29 = v51.__r_.__value_.__l.__size_;
  }

  v30 = std::string::append(&v54, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v55.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v55.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v55, ", ");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v50, v6);
  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = &v50;
  }

  else
  {
    v34 = v50.__r_.__value_.__r.__words[0];
  }

  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v35 = v50.__r_.__value_.__l.__size_;
  }

  v36 = std::string::append(&v59, v34, v35);
  v37 = *&v36->__r_.__value_.__l.__data_;
  v60.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
  *&v60.__r_.__value_.__l.__data_ = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  v38 = std::string::append(&v60, ") for ");
  v39 = *&v38->__r_.__value_.__l.__data_;
  v61.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
  *&v61.__r_.__value_.__l.__data_ = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  v40 = (*(*this + 56))(this);
  v41 = *(v40 + 23);
  if (v41 >= 0)
  {
    v42 = v40;
  }

  else
  {
    v42 = *v40;
  }

  if (v41 >= 0)
  {
    v43 = *(v40 + 23);
  }

  else
  {
    v43 = *(v40 + 8);
  }

  v44 = std::string::append(&v61, v42, v43);
  v18 = v44->__r_.__value_.__r.__words[0];
  v45 = v44->__r_.__value_.__l.__size_;
  v56[0] = v44->__r_.__value_.__r.__words[2];
  *(v56 + 3) = *(&v44->__r_.__value_.__r.__words[2] + 3);
  v20 = SHIBYTE(v44->__r_.__value_.__r.__words[2]);
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  v46 = MIL::IRObject::GetLocationPtr(this);
  v47 = v46[1];
  *&v49 = *v46;
  *(&v49 + 1) = v47;
  if (v47)
  {
    atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
  }

  if (v20 < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v18, v45);
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = v18;
    __p.__r_.__value_.__l.__size_ = v45;
    LODWORD(__p.__r_.__value_.__r.__words[2]) = v56[0];
    *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v56 + 3);
    *(&__p.__r_.__value_.__s + 23) = v20;
  }

  MIL::ValidationResult::ValidationResult(a2, &v49, 315, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v23 = *(&v49 + 1);
  if (!*(&v49 + 1))
  {
    goto LABEL_32;
  }

LABEL_31:
  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
LABEL_32:
  if (v20 < 0)
  {
    operator delete(v18);
  }
}

void sub_2181E5998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v55 < 0)
  {
    operator delete(v54);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateSplit(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *x8_0@<X8>)
{
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v6 = LocationPtr[1];
  v18[0] = *LocationPtr;
  v18[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v16, "num_splits");
  ParameterValue = MIL::IROperation::TryGetParameterValue(this, v16, 0);
  std::string::basic_string[abi:ne200100]<0>(v14, "x");
  ParameterType = MIL::IROperation::GetParameterType(this, v14);
  v9 = MIL::IRValueType::AsTensorType(ParameterType);
  std::string::basic_string[abi:ne200100]<0>(__p, "axis");
  v10 = MIL::IROperation::GetParameterValue(this, __p);
  v11 = MIL::IRValue::GetScalar<int>(v10);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_2181E5C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::anonymous namespace::ValidateSplitHelper(void *a1@<X0>, const void *a2@<X1>, MIL::IRTensorValueType *a3@<X2>, MIL::Validation *a4@<X3>, MIL::ValidationResult *a5@<X8>)
{
  if (a2 && MIL::IRValue::GetScalar<int>(a2) <= 1)
  {
    v9 = a1[1];
    *&v43 = *a1;
    *(&v43 + 1) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v41, "Invalid num_splits (must be at least 2)");
    MIL::ValidationResult::ValidationResult(a5, &v43, 315, v41);
    if (v42 < 0)
    {
      operator delete(v41[0]);
    }

    if (*(&v43 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v43 + 1));
    }
  }

  else if (((*(*a3 + 104))(a3) & 1) != 0 && (v10 = MIL::IRTensorValueType::Rank(a3), !MIL::Validation::IsAxisValidForRank(a4, v10)))
  {
    std::to_string(&v34, a4);
    v11 = std::string::insert(&v34, 0, "Axis (");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v35, ") must be within range [-");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v33, v10);
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v33;
    }

    else
    {
      v15 = v33.__r_.__value_.__r.__words[0];
    }

    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v33.__r_.__value_.__l.__size_;
    }

    v17 = std::string::append(&v36, v15, size);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v37, ", ");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v32, v10);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v32;
    }

    else
    {
      v21 = v32.__r_.__value_.__r.__words[0];
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = v32.__r_.__value_.__l.__size_;
    }

    v23 = std::string::append(&v38, v21, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(&v39, ") for split");
    v26 = v25->__r_.__value_.__r.__words[0];
    v27 = v25->__r_.__value_.__l.__size_;
    v40[0] = v25->__r_.__value_.__r.__words[2];
    *(v40 + 3) = *(&v25->__r_.__value_.__r.__words[2] + 3);
    v28 = SHIBYTE(v25->__r_.__value_.__r.__words[2]);
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    v29 = a1[1];
    *&v31 = *a1;
    *(&v31 + 1) = v29;
    if (v29)
    {
      atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
    }

    if (v28 < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v26, v27);
    }

    else
    {
      __p.__r_.__value_.__r.__words[0] = v26;
      __p.__r_.__value_.__l.__size_ = v27;
      LODWORD(__p.__r_.__value_.__r.__words[2]) = v40[0];
      *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v40 + 3);
      *(&__p.__r_.__value_.__s + 23) = v28;
    }

    MIL::ValidationResult::ValidationResult(a5, &v31, 315, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(&v31 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v31 + 1));
    }

    if (v28 < 0)
    {
      operator delete(v26);
    }
  }

  else
  {

    MIL::ValidationResult::ValidationResult(a5);
  }
}

void sub_2181E6040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v55 < 0)
  {
    operator delete(v54);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateStack(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v53, "values");
  ParameterType = MIL::IROperation::GetParameterType(this, &v53);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (((*(*v5 + 104))(v5) & 1) == 0)
  {
    goto LABEL_9;
  }

  std::string::basic_string[abi:ne200100]<0>(&v53, "values");
  v6 = MIL::Validation::VariadicTensorsDTypesMatch(this, &v53);
  v7 = v6;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_12:
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v12 = LocationPtr[1];
    *&v52 = *LocationPtr;
    *(&v52 + 1) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v50, "Inputs must have the same datatype");
    MIL::ValidationResult::ValidationResult(a2, &v52, 319, v50);
    if (v51 < 0)
    {
      operator delete(v50[0]);
    }

    if (*(&v52 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v52 + 1));
    }

    return;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_6:
  v8 = MIL::IRTensorValueType::Rank(v5);
  std::string::basic_string[abi:ne200100]<0>(&v53, "axis");
  ParameterValue = MIL::IROperation::GetParameterValue(this, &v53);
  v10 = MIL::IRValue::GetScalar<int>(ParameterValue);
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (MIL::Validation::IsAxisValidForRank(v10, v8 + 1))
  {
LABEL_9:
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  std::to_string(&v43, v10);
  v13 = std::string::insert(&v43, 0, "Axis (");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v44, ") must be within range [-");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v42, v8);
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v42;
  }

  else
  {
    v17 = v42.__r_.__value_.__r.__words[0];
  }

  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v42.__r_.__value_.__l.__size_;
  }

  v19 = std::string::append(&v45, v17, size);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = std::string::append(&v46, ", ");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v41, v8);
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v41;
  }

  else
  {
    v23 = v41.__r_.__value_.__r.__words[0];
  }

  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = v41.__r_.__value_.__l.__size_;
  }

  v25 = std::string::append(&v47, v23, v24);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v48, "] for ");
  v28 = *&v27->__r_.__value_.__l.__data_;
  v53.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&v53.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  v29 = (*(*this + 56))(this);
  v30 = *(v29 + 23);
  if (v30 >= 0)
  {
    v31 = v29;
  }

  else
  {
    v31 = *v29;
  }

  if (v30 >= 0)
  {
    v32 = *(v29 + 23);
  }

  else
  {
    v32 = *(v29 + 8);
  }

  v33 = std::string::append(&v53, v31, v32);
  v34 = v33->__r_.__value_.__r.__words[0];
  v35 = v33->__r_.__value_.__l.__size_;
  v49[0] = v33->__r_.__value_.__r.__words[2];
  *(v49 + 3) = *(&v33->__r_.__value_.__r.__words[2] + 3);
  v36 = SHIBYTE(v33->__r_.__value_.__r.__words[2]);
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  v37 = MIL::IRObject::GetLocationPtr(this);
  v38 = v37[1];
  *&v40 = *v37;
  *(&v40 + 1) = v38;
  if (v38)
  {
    atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
  }

  if (v36 < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v34, v35);
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = v34;
    __p.__r_.__value_.__l.__size_ = v35;
    LODWORD(__p.__r_.__value_.__r.__words[2]) = v49[0];
    *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v49 + 3);
    *(&__p.__r_.__value_.__s + 23) = v36;
  }

  MIL::ValidationResult::ValidationResult(a2, &v40, 315, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(&v40 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v40 + 1));
  }

  if (v36 < 0)
  {
    operator delete(v34);
  }
}

void sub_2181E65D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v62 < 0)
  {
    operator delete(v61);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceBatchToSpace(MIL::IRConstantDimension **a1, void x1_0, void *a2)
{
  v51[1] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = (*(*v6 + 88))(v6);
  v8 = (*(*v6 + 96))(v6);
  std::string::basic_string[abi:ne200100]<0>(__p, "block_shape");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, __p);
  v10 = MIL::IRValue::AsTensor(SingleValue);
  Data = MIL::IRTensorValue::GetDataView<int>(v10);
  v13 = v12;
  if (SHIBYTE(v50) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "crops");
  v14 = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, __p);
  v15 = MIL::IRValue::AsTensor(v14);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(__p[0]);
  }

  v16 = (*(*v15 + 32))(v15);
  v17 = (*(*v16 + 96))(v16);
  __p[0] = 0;
  __p[1] = 0;
  v50 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, *v17, *(v17 + 8), (*(v17 + 8) - *v17) >> 3);
  v18 = MIL::IRDimension::AsConstant(*__p[0]);
  if ((*(*v18 + 48))(v18) == v13)
  {
    v19 = MIL::IRDimension::AsConstant(*(__p[0] + 1));
    if ((*(*v19 + 48))(v19) == 2)
    {
      v20 = MIL::IRTensorValue::GetDataView<int>(v15);
      v22 = v20;
      v23 = v20;
      if (v21 >= 2)
      {
        v25 = v20 + 1;
        v24 = *v20;
        v26 = 4 * v21 - 4;
        v23 = v20;
        v27 = v20 + 1;
        do
        {
          v29 = *v27++;
          v28 = v29;
          if (v29 < v24)
          {
            v24 = v28;
            v23 = v25;
          }

          v25 = v27;
          v26 -= 4;
        }

        while (v26);
      }

      if ((*v23 & 0x80000000) == 0)
      {
        if (v13)
        {
          v30 = 4 * v13;
          v31 = 1;
          v32 = Data;
          do
          {
            v33 = *v32++;
            v31 *= v33;
            v30 -= 4;
          }

          while (v30);
        }

        else
        {
          v31 = 1;
        }

        __dst = 0;
        v48 = 0;
        v46 = 0;
        if (v8[1] != *v8)
        {
          v34 = (*(***v8 + 16))(**v8);
          if (v34)
          {
            v35 = (*(*v34 + 48))(v34);
            if (v35 % v31)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(exception, "Total block size is not divisible by the batch dimension.");
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
            }

            v51[0] = MIL::IRConstantDimension::Make(*a1, (v35 / v31));
            std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v46, v51);
          }

          else
          {
            v51[0] = MIL::IRUnknownDimension::Make(*a1, 0);
            std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v46, v51);
          }

          if ((v8[1] - *v8) > 8)
          {
            std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v46, *v8 + 1);
            if (v13)
            {
              v36 = v22 + 1;
              v37 = 2;
              v38 = v13;
              do
              {
                if (v37 >= (v8[1] - *v8) >> 3)
                {
                  std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
                }

                v39 = (*(**&(*v8)[8 * v37] + 16))(*&(*v8)[8 * v37]);
                if (v39)
                {
                  v40 = *a1;
                  v41 = (*(*v39 + 48))(v39);
                  v51[0] = MIL::IRConstantDimension::Make(v40, (*Data * v41 - (*(v36 - 1) + *v36)));
                  std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v46, v51);
                }

                else
                {
                  if (v37 >= (v8[1] - *v8) >> 3)
                  {
                    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
                  }

                  v42 = MIL::IRDimension::AsUnknown(*&(*v8)[8 * v37]);
                  if ((*(*v42 + 32))(v42))
                  {
                    v51[0] = MIL::IRUnknownDimension::Make(*a1, 1);
                    std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v46, v51);
                    MIL::IRTensorValueType::MakeWithShape(*a1, v7, &v46);
                  }

                  v51[0] = MIL::IRUnknownDimension::Make(*a1, 0);
                  std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v46, v51);
                }

                ++v37;
                v36 += 2;
                ++Data;
                --v38;
              }

              while (v38);
            }

            std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const* const*>,std::__wrap_iter<MIL::IRDimension const* const*>>(&v46, __dst, &(*v8)[8 * v13 + 16], v8[1], (v8[1] - &(*v8)[8 * v13 + 16]) >> 3);
            MIL::IRTensorValueType::MakeWithShape(*a1, v7, &v46);
          }

          std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
        }

        std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
      }

      v44 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v44, "'crops' values must all be >= 0");
      v44->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v44, off_278235F80, MEMORY[0x277D82610]);
    }
  }

  v43 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v43, "'crops' must be an M x 2 tensor");
  v43->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v43, off_278235F80, MEMORY[0x277D82610]);
}

void sub_2181E6DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __cxa_free_exception(v17);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceConcat(MIL::IRConstantDimension **a1, void x1_0, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "values");
  v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &__p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v37 = 0;
  v38 = 0;
  v39 = 0;
  std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRTypedArgument>*,std::shared_ptr<MIL::IRTypedArgument>*>(&v37, v5[5], v5[6], (v5[6] - v5[5]) >> 4);
  if (v42 < 0)
  {
    operator delete(__p);
  }

  ValueType = MIL::IRTypedArgument::GetValueType(*v37);
  v7 = MIL::IRValueType::AsTensorType(ValueType);
  v29 = (*(*v7 + 88))(v7);
  v8 = (*(*v7 + 96))(v7);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v34, *v8, *(v8 + 8), (*(v8 + 8) - *v8) >> 3);
  std::string::basic_string[abi:ne200100]<0>(&__p, "axis");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, &__p);
  v10 = MIL::IRValue::GetScalar<int>(SingleValue);
  if (v42 < 0)
  {
    operator delete(__p);
  }

  v11 = (*(*v7 + 96))(v7);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v31, *v11, *(v11 + 8), (*(v11 + 8) - *v11) >> 3);
  if (v32 == v31)
  {
    if (!v10)
    {
      __p = MIL::IRConstantDimension::Make(*a1, ((v38 - v37) >> 4));
      std::vector<MIL::IRDimension const*>::__assign_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(&v34, &__p, v41, 1uLL);
      MIL::IRTensorValueType::MakeWithShape(*a1, v29, &v34);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Scalar concatenation is only allowed when axis is 0.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  if (!MIL::Validation::IsAxisValidForRank(v10, (v35 - v34) >> 3))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Axis must be within range (-input_ndim - 1, input_ndim) (exclusive). Invalid axis: ", 83);
    v25 = MEMORY[0x21CEAFB20](v24, v10);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " for input_ndim: ", 17);
    MEMORY[0x21CEAFB40](v26, (v35 - v34) >> 3);
    v27 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v27, &v30);
    v27->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v27, off_278235F80, MEMORY[0x277D82610]);
  }

  if ((v10 & 0x80000000) != 0)
  {
    LODWORD(v10) = v10 + ((v35 - v34) >> 3);
  }

  v12 = v37;
  v13 = v38;
  if (v37 == v38)
  {
    v14 = 0;
LABEL_27:
    v23 = MIL::IRConstantDimension::Make(*a1, v14);
    *(v34 + v10) = v23;
    MIL::IRTensorValueType::MakeWithShape(*a1, v29, &v34);
  }

  v14 = 0;
  while (1)
  {
    v15 = *v12;
    v16 = v12[1];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = MIL::IRTypedArgument::GetValueType(v15);
    v18 = MIL::IRValueType::AsTensorType(v17);
    v19 = (*(*v18 + 96))(v18);
    if (&v31 != v19)
    {
      std::vector<MIL::IRValueType const*>::__assign_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(&v31, *v19, v19[1], (v19[1] - *v19) >> 3);
    }

    v20 = (*(**(v31 + v10) + 16))(*(v31 + v10));
    v21 = v20;
    if (!v20)
    {
      v22 = MIL::IRUnknownDimension::Make(*a1, 0);
      *(v34 + v10) = v22;
      MIL::IRTensorValueType::MakeWithShape(*a1, v29, &v34);
    }

    v14 = (v14 + (*(*v20 + 48))(v20));
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (!v21)
    {
      break;
    }

    v12 += 2;
    if (v12 == v13)
    {
      goto LABEL_27;
    }
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

  __p = &v37;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_2181E73BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v31 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a25);
      if (a16)
      {
        operator delete(a16);
      }

      if (a19)
      {
        operator delete(a19);
      }

      a25 = &a22;
      std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a25);
      _Unwind_Resume(a1);
    }
  }

  else if (!v31)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v30);
  goto LABEL_6;
}

void sub_2181E7538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::anonymous namespace::ValueTypeInferenceDepthToSpaceImpl(MIL::IRConstantDimension **a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, &__p);
  v8 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v30 < 0)
  {
    operator delete(__p);
  }

  v9 = (*(*v8 + 88))(v8);
  v10 = (*(*v8 + 96))(v8);
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, a3);
  v12 = MIL::IRValue::GetScalar<int>(SingleValue);
  if (*(v10 + 8) != *v10)
  {
    v13 = v12;
    __p = **v10;
    memset(v27, 0, sizeof(v27));
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(v27, &__p, &v29, 1uLL);
    if (*(v10 + 8) - *v10 > 8uLL)
    {
      v14 = (*(**(*v10 + 8) + 16))(*(*v10 + 8));
      if (v14)
      {
        v15 = (*(*v14 + 48))(v14);
        v16 = (v13 * v13);
        if (v15 % v16)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
          v21 = *(a3 + 23);
          if (v21 >= 0)
          {
            v22 = a3;
          }

          else
          {
            v22 = *a3;
          }

          if (v21 >= 0)
          {
            v23 = *(a3 + 23);
          }

          else
          {
            v23 = *(a3 + 8);
          }

          v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, v22, v23);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " is not divisible by the channel dimension.", 43);
          exception = __cxa_allocate_exception(0x10uLL);
          std::stringbuf::str();
          std::logic_error::logic_error(exception, &v26);
          exception->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
        }

        __p = MIL::IRConstantDimension::Make(*a1, (v15 / v16));
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v27, &__p);
      }

      else
      {
        __p = MIL::IRUnknownDimension::Make(*a1, 0);
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v27, &__p);
      }

      v17 = v13;
      v18 = 2;
      while (v18 < (*(v10 + 8) - *v10) >> 3)
      {
        v19 = (*(**(*v10 + 8 * v18) + 16))(*(*v10 + 8 * v18));
        if (v19)
        {
          v20 = (*(*v19 + 48))(v19);
          __p = MIL::IRConstantDimension::Make(*a1, (v20 * v17));
        }

        else
        {
          __p = MIL::IRUnknownDimension::Make(*a1, 0);
        }

        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v27, &__p);
        if (++v18 == 4)
        {
          MIL::IRTensorValueType::MakeWithShape(*a1, v9, v27);
        }
      }

      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
}

void sub_2181E78FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a18);
      if (a15)
      {
        operator delete(a15);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceExpandDims(MIL::IRUnknownDimension **a1, void x1_0, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = (*(*v6 + 88))(v6);
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  v8 = (*(*v6 + 96))(v6);
  if (MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(v8))
  {
    __src = MIL::IRUnknownDimension::Make(*a1, 1);
    std::vector<MIL::IRDimension const*>::__assign_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(__p, &__src, &v22, 1uLL);
    MIL::IRTensorValueType::MakeWithShape(*a1, v7, __p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__src, "axes");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, &__src);
  v10 = MIL::IRValue::AsTensor(SingleValue);
  Data = MIL::IRTensorValue::GetDataView<int>(v10);
  v13 = v12;
  if (v23 < 0)
  {
    operator delete(__src);
  }

  MIL::ValueTypeInferenceUtils::ConvertAxesToNonNeg(Data, v13, v13 + ((*(v8 + 8) - *v8) >> 3), &__src);
  std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
  if (__p != v8)
  {
    std::vector<MIL::IRValueType const*>::__assign_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(__p, *v8, *(v8 + 8), (*(v8 + 8) - *v8) >> 3);
  }

  v14 = __src;
  v15 = v22;
  while (v14 != v15)
  {
    v16 = *v14;
    v17 = __p[0];
    v20 = MIL::IRConstantDimension::Make(*a1, 1);
    std::vector<MIL::IRDimension const*>::insert(__p, &v17[8 * v16], &v20);
    ++v14;
  }

  MIL::IRTensorValueType::MakeWithShape(*a1, v7, __p);
}

void sub_2181E7C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2181E7D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceReshape(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::ValueTypeInferenceReshapeCommon(a1, v5, a3);
}

void sub_2181E7D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSliceByIndex(MIL::IRUnknownDimension **a1, void x1_0, void *a2)
{
  v91 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v81) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = (*(*v6 + 88))(v6);
  v8 = (*(*v6 + 96))(v6);
  __p[0] = 0;
  __p[1] = 0;
  v81 = 0;
  v9 = (v8[1] - *v8) >> 3;
  LOBYTE(__src) = 0;
  std::vector<BOOL>::vector(v79, v9, &__src);
  std::string::basic_string[abi:ne200100]<0>(&__src, "squeeze_mask");
  v10 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &__src);
  v11 = v10;
  if (v90 < 0)
  {
    operator delete(__src);
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  else if (!v10)
  {
LABEL_10:
    __src = v79[0];
    LODWORD(v89) = 0;
    v17 = std::__count_BOOL[abi:ne200100]<false,std::vector<BOOL>,false>(&__src, v79[1]);
    v18 = (v8[1] - *v8) >> 3;
    LOBYTE(v86[0]) = 0;
    std::vector<BOOL>::vector(&__src, v18, v86);
    std::string::basic_string[abi:ne200100]<0>(v86, "begin_mask");
    v19 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, v86);
    v20 = v19;
    if (SHIBYTE(v87) < 0)
    {
      operator delete(v86[0]);
      if (!v20)
      {
        goto LABEL_17;
      }
    }

    else if (!v19)
    {
LABEL_17:
      v26 = (v8[1] - *v8) >> 3;
      LOBYTE(v84[0]) = 0;
      std::vector<BOOL>::vector(v86, v26, v84);
      std::string::basic_string[abi:ne200100]<0>(v84, "end_mask");
      v27 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, v84);
      v28 = v27;
      if (SHIBYTE(v85) < 0)
      {
        operator delete(v84[0]);
        if (!v28)
        {
          goto LABEL_26;
        }
      }

      else if (!v27)
      {
LABEL_26:
        v34 = (v8[1] - *v8) >> 3;
        LODWORD(v82[0]) = 1;
        std::vector<int>::vector[abi:ne200100](v84, v34, v82);
        std::string::basic_string[abi:ne200100]<0>(v82, "stride");
        v35 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, v82);
        v36 = v35;
        if (SHIBYTE(v83) < 0)
        {
          operator delete(v82[0]);
          if (!v36)
          {
LABEL_39:
            std::string::basic_string[abi:ne200100]<0>(v82, "begin");
            SingleValue = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a2, v82);
            if (SHIBYTE(v83) < 0)
            {
              operator delete(v82[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(v82, "end");
            v76 = v7;
            v42 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a2, v82);
            if (SHIBYTE(v83) < 0)
            {
              operator delete(v82[0]);
            }

            v43 = *v8;
            if (v8[1] == *v8)
            {
LABEL_93:
              MIL::IRTensorValueType::MakeWithShape(*a1, v76, __p);
            }

            v44 = 0;
            v77 = a1;
            while (1)
            {
              v45 = (*(**(v43 + 8 * v44) + 24))(*(v43 + 8 * v44));
              if (v45 && (*(*v45 + 32))(v45))
              {
                v82[0] = MIL::IRUnknownDimension::Make(*a1, 1);
                std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, v82);
                MIL::IRTensorValueType::MakeWithShape(*a1, v76, __p);
              }

              v46 = v44 >> 6;
              v47 = 1 << v44;
              if ((*(v79[0] + (v44 >> 6)) & (1 << v44)) != 0)
              {
                goto LABEL_48;
              }

              v48 = *(v84[0] + v44);
              if (!v48)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(exception, "stride cannot be 0.");
                exception->__vftable = (MEMORY[0x277D828F8] + 16);
                __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
              }

              if ((*(__src + v46) & v47) != 0)
              {
                if (v48 <= 0)
                {
                  v54 = (*(**(*v8 + 8 * v44) + 16))(*(*v8 + 8 * v44));
                  if (!v54)
                  {
                    goto LABEL_74;
                  }

                  v55 = (*(*v54 + 48))(v54);
                  v50 = (v55 - 1) & 0xFFFFFF00;
                  v49 = (v55 - 1);
                }

                else
                {
                  v49 = 0;
                  v50 = 0;
                }

                v56 = v50 | v49;
              }

              else
              {
                {
LABEL_74:
                  v82[0] = MIL::IRUnknownDimension::Make(*a1, 0);
                  std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, v82);
                  goto LABEL_48;
                }

                v50 = v53 & 0xFFFFFF00;
              }

              if ((*(v86[0] + v46) & v47) != 0)
              {
                if (*(v84[0] + v44) < 1)
                {
                  v62 = -256;
                  LOBYTE(v58) = -1;
                  goto LABEL_80;
                }

                v57 = (*(**(*v8 + 8 * v44) + 16))(*(*v8 + 8 * v44));
                if (v57)
                {
                  v58 = (*(*v57 + 48))(v57);
LABEL_79:
                  v62 = v58 & 0xFFFFFF00;
LABEL_80:
                  v67 = MIL::IRDimension::AsConstant(*(*v8 + 8 * v44));
                  v68 = (*(*v67 + 48))(v67);
                  v69 = v58 | v62;
                  v70 = *(v84[0] + v44);
                  if (v70 < 1)
                  {
                    if (v56 >= v68)
                    {
                      v56 = ~(v56 % v70) + v68;
                    }

                    a1 = v77;
                    if (v69 < 0)
                    {
                      v69 = -1;
                    }

                    v72 = v69 - v56 + 1;
                  }

                  else
                  {
                    v71 = v56 + -v56 / v70 * v70;
                    if (v50 >= 0)
                    {
                      v71 = v56;
                    }

                    if (v68 < v69)
                    {
                      v69 = v68;
                    }

                    v72 = v69 + ~v71;
                    a1 = v77;
                  }

                  v73 = v72 / v70;
                  if (v73 < 0)
                  {
                    v75 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v75, "zero shape error");
                    __cxa_throw(v75, MEMORY[0x277D82760], MEMORY[0x277D82600]);
                  }

                  v82[0] = MIL::IRConstantDimension::Make(*a1, (v73 + 1));
                  std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, v82);
                  goto LABEL_48;
                }
              }

              else if (v42)
              {
                v59 = (*(*v42 + 32))(v42);
                v60 = MIL::IRValueType::AsTensorType(v59);
                if ((*(*v60 + 88))(v60) == 11)
                {
                }

                else
                {
                  v65 = (*(*v42 + 32))(v42);
                  v66 = MIL::IRValueType::AsTensorType(v65);
                }

                v58 = v61;
                if ((v61 & 0x100000000) != 0)
                {
                  goto LABEL_79;
                }
              }

              a1 = v77;
              v82[0] = MIL::IRUnknownDimension::Make(*v77, 0);
              std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, v82);
LABEL_48:
              ++v44;
              v43 = *v8;
              if (v44 >= (v8[1] - *v8) >> 3)
              {
                goto LABEL_93;
              }
            }
          }
        }

        else if (!v35)
        {
          goto LABEL_39;
        }

        std::string::basic_string[abi:ne200100]<0>(v82, "stride");
        v37 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a2, v82);
        v38 = v37;
        if (SHIBYTE(v83) < 0)
        {
          operator delete(v82[0]);
          if (v38)
          {
            goto LABEL_36;
          }
        }

        else if (v37)
        {
LABEL_36:
          v39 = MIL::IRValue::AsTensor(v38);
          MIL::Validation::GetIntTensorValueCasted(v39, v40, v82);
          if (v84[0])
          {
            v84[1] = v84[0];
            operator delete(v84[0]);
          }

          *v84 = *v82;
          v85 = v83;
          goto LABEL_39;
        }

        v78 = MIL::IRUnknownDimension::Make(*a1, 0);
        std::vector<MIL::IRDimension const*>::vector[abi:ne200100](v82, v17, &v78);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        *__p = *v82;
        v81 = v83;
        MIL::IRTensorValueType::MakeWithShape(*a1, v7, __p);
      }

      std::string::basic_string[abi:ne200100]<0>(v84, "end_mask");
      v29 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a2, v84);
      v30 = v29;
      if (SHIBYTE(v85) < 0)
      {
        operator delete(v84[0]);
        if (v30)
        {
          goto LABEL_25;
        }
      }

      else if (v29)
      {
LABEL_25:
        v31 = MIL::IRValue::AsTensor(v30);
        Data = MIL::IRTensorValue::GetDataView<BOOL>(v31);
        std::vector<BOOL>::__assign_with_size[abi:ne200100]<BOOL const*,BOOL const*>(v86, Data, &Data[v33], v33);
        goto LABEL_26;
      }

      v82[0] = MIL::IRUnknownDimension::Make(*a1, 0);
      std::vector<MIL::IRDimension const*>::vector[abi:ne200100](v84, v17, v82);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = *v84;
      v81 = v85;
      MIL::IRTensorValueType::MakeWithShape(*a1, v7, __p);
    }

    std::string::basic_string[abi:ne200100]<0>(v86, "begin_mask");
    v21 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a2, v86);
    v22 = v21;
    if (SHIBYTE(v87) < 0)
    {
      operator delete(v86[0]);
      if (v22)
      {
        goto LABEL_16;
      }
    }

    else if (v21)
    {
LABEL_16:
      v23 = MIL::IRValue::AsTensor(v22);
      v24 = MIL::IRTensorValue::GetDataView<BOOL>(v23);
      std::vector<BOOL>::__assign_with_size[abi:ne200100]<BOOL const*,BOOL const*>(&__src, v24, &v24[v25], v25);
      goto LABEL_17;
    }

    v84[0] = MIL::IRUnknownDimension::Make(*a1, 0);
    std::vector<MIL::IRDimension const*>::vector[abi:ne200100](v86, v17, v84);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *v86;
    v81 = v87;
    MIL::IRTensorValueType::MakeWithShape(*a1, v7, __p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__src, "squeeze_mask");
  v12 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a2, &__src);
  v13 = v12;
  if (v90 < 0)
  {
    operator delete(__src);
    if (v13)
    {
      goto LABEL_9;
    }
  }

  else if (v12)
  {
LABEL_9:
    v14 = MIL::IRValue::AsTensor(v13);
    v15 = MIL::IRTensorValue::GetDataView<BOOL>(v14);
    std::vector<BOOL>::__assign_with_size[abi:ne200100]<BOOL const*,BOOL const*>(v79, v15, &v15[v16], v16);
    goto LABEL_10;
  }

  __src = MIL::IRUnknownDimension::Make(*a1, 1);
  std::vector<MIL::IRDimension const*>::__assign_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(__p, &__src, &v89, 1uLL);
  MIL::IRTensorValueType::MakeWithShape(*a1, v7, __p);
}

void sub_2181E89E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  v43 = *(v41 - 120);
  if (v43)
  {
    operator delete(v43);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSliceBySize(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v101 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  v8 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v100) < 0)
  {
    operator delete(__p);
  }

  v9 = (*(*v8 + 88))(v8);
  v10 = (*(*v8 + 96))(v8);
  v96 = 0uLL;
  v97 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "begin");
  SingleValue = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, &__p);
  if (SHIBYTE(v100) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "begin");
  v12 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  if (SHIBYTE(v100) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "size");
  v13 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, &__p);
  v14 = v13;
  v81 = v9;
  if (SHIBYTE(v100) < 0)
  {
    operator delete(__p);
    if (v14)
    {
LABEL_9:
      v94 = 0;
      v95 = 0;
      v92 = 0;
      v93 = 0;
      v90 = 0;
      v91 = 0;
      v88 = 0;
      v89 = 0;
      v86 = 0;
      v87 = 0;
      Data = 0;
      v85 = 0;
      v15 = (*(*v12 + 24))(v12);
      v16 = (*(*v15 + 88))(v15);
      v17 = v16;
      if ((v16 - 12) <= 0xFFFFFFFC)
      {
        exception = __cxa_allocate_exception(0x48uLL);
        v78 = a2[1];
        *&v83 = *a2;
        *(&v83 + 1) = v78;
        if (v78)
        {
          atomic_fetch_add_explicit((v78 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v82, "Incompatible dtype for begin, size");
        MIL::ValidationError::ValidationError(exception, &v83, v82, 315);
      }

      if (v16 == 11)
      {
        v18 = MIL::IRValue::AsTensor(v14);
        Data = MIL::IRTensorValue::GetDataView<int>(v18);
        v85 = v19;
        if (SingleValue)
        {
          v20 = MIL::IRValue::AsTensor(SingleValue);
          v86 = MIL::IRTensorValue::GetDataView<int>(v20);
          v87 = v21;
          v22 = v85;
          goto LABEL_21;
        }
      }

      else
      {
        if (v16 == 10)
        {
          v25 = MIL::IRValue::AsTensor(v14);
          v88 = MIL::IRTensorValue::GetDataView<short>(v25);
          v89 = v26;
          if (!SingleValue || (v27 = MIL::IRValue::AsTensor(SingleValue), v90 = MIL::IRTensorValue::GetDataView<short>(v27), v91 = v28, v28 == v89))
          {
            v29 = 1;
LABEL_23:
            std::vector<std::string const*>::reserve(&v96, (v10[1] - *v10) >> 3);
            v33 = *v10;
            if (v10[1] == *v10)
            {
LABEL_65:
              MIL::IRTensorValueType::MakeWithShape(*a1, v81, &v96);
            }

            v34 = 0;
            while (1)
            {
              v35 = (*(**(v33 + 8 * v34) + 16))(*(v33 + 8 * v34));
              v36 = (*(**(*v10 + 8 * v34) + 24))(*(*v10 + 8 * v34));
              if (v36 && (*(*v36 + 32))(v36))
              {
                *&__p = MIL::IRUnknownDimension::Make(*a1, 1);
                std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v96, &__p);
                MIL::IRTensorValueType::MakeWithShape(*a1, v81, &v96);
              }

              if (v35 && SingleValue != 0)
              {
                break;
              }

              if (v17 == 11)
              {
                v38 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&Data, v34);
                if ((v38 & 0x80000000) != 0)
                {
                  goto LABEL_51;
                }
              }

              else if (v29)
              {
                v38 = *MIL::Util::Span<short const,18446744073709551615ul>::At(&v88, v34);
                if ((v38 & 0x80000000) != 0)
                {
                  goto LABEL_51;
                }
              }

              else
              {
                v38 = *MIL::Util::Span<signed char const,18446744073709551615ul>::At(&v92, v34);
                if ((v38 & 0x80000000) != 0)
                {
LABEL_51:
                  if (v38 != -1)
                  {
                    v67 = __cxa_allocate_exception(0x10uLL);
                    std::logic_error::logic_error(v67, "size[i] cannot be negative value except -1.");
                    v67->__vftable = (MEMORY[0x277D828F8] + 16);
                    __cxa_throw(v67, off_278235F80, MEMORY[0x277D82610]);
                  }

                  *&__p = MIL::IRUnknownDimension::Make(*a1, 0);
                  std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v96, &__p);
                  goto LABEL_64;
                }
              }

              v39 = v38;
              if (v35 && (*(*v35 + 48))(v35) < v38)
              {
                v66 = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(v66, "size[i] is required to be <= input dimension when begin is unknown.");
                v66->__vftable = (MEMORY[0x277D828F8] + 16);
                __cxa_throw(v66, off_278235F80, MEMORY[0x277D82610]);
              }

              *&__p = MIL::IRConstantDimension::Make(*a1, v39);
              std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v96, &__p);
LABEL_64:
              ++v34;
              v33 = *v10;
              if (v34 >= (v10[1] - *v10) >> 3)
              {
                goto LABEL_65;
              }
            }

            v40 = (*(*v35 + 48))(v35);
            if (v17 == 11)
            {
              v41 = MIL::Util::Span<int const,18446744073709551615ul>::At(&v86, v34);
              if (!MIL::Validation::IsAxisValidForRank(*v41, v40))
              {
                std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
                v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Begin axis must be within range (-input_ndim - 1, input_ndim) (exclusive). Invalid axis: ", 89);
                v62 = MIL::Util::Span<int const,18446744073709551615ul>::At(&v86, v34);
                v63 = MEMORY[0x21CEAFB20](v61, *v62);
                v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, " for input_ndim: ", 17);
                MEMORY[0x21CEAFB80](v64, v40);
                v65 = __cxa_allocate_exception(0x10uLL);
                std::stringbuf::str();
                std::logic_error::logic_error(v65, &v98);
                v65->__vftable = (MEMORY[0x277D828F8] + 16);
                __cxa_throw(v65, off_278235F80, MEMORY[0x277D82610]);
              }

              v42 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&v86, v34);
              v43 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&v86, v34);
              v44 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&Data, v34);
              v45 = MIL::Util::Span<int const,18446744073709551615ul>::At(&Data, v34);
              v46 = v43 + (v40 & (v42 >> 31));
              v47 = *v45;
              if ((v44 & 0x80000000) == 0)
              {
                if (v47 + v46 > v40)
                {
                  goto LABEL_76;
                }

                v48 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&Data, v34);
                goto LABEL_63;
              }

              if (v47 != -1)
              {
                goto LABEL_78;
              }
            }

            else if (v29)
            {
              v49 = MIL::Util::Span<short const,18446744073709551615ul>::At(&v90, v34);
              if (!MIL::Validation::IsAxisValidForRank(*v49, v40))
              {
                std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
                v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Begin axis must be within range (-input_ndim - 1, input_ndim) (exclusive). Invalid axis: ", 89);
                v73 = MIL::Util::Span<short const,18446744073709551615ul>::At(&v90, v34);
                v74 = MEMORY[0x21CEAFB50](v72, *v73);
                v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, " for input_ndim: ", 17);
                MEMORY[0x21CEAFB80](v75, v40);
                v76 = __cxa_allocate_exception(0x10uLL);
                std::stringbuf::str();
                std::logic_error::logic_error(v76, &v98);
                v76->__vftable = (MEMORY[0x277D828F8] + 16);
                __cxa_throw(v76, off_278235F80, MEMORY[0x277D82610]);
              }

              v50 = *MIL::Util::Span<short const,18446744073709551615ul>::At(&v90, v34);
              v51 = *MIL::Util::Span<short const,18446744073709551615ul>::At(&v90, v34);
              v52 = *MIL::Util::Span<short const,18446744073709551615ul>::At(&v88, v34);
              v53 = MIL::Util::Span<short const,18446744073709551615ul>::At(&v88, v34);
              v46 = (v40 & (v50 >> 31)) + v51;
              v54 = *v53;
              if ((v52 & 0x80000000) == 0)
              {
                if (v46 + v54 > v40)
                {
                  goto LABEL_76;
                }

                v48 = *MIL::Util::Span<short const,18446744073709551615ul>::At(&v88, v34);
                goto LABEL_63;
              }

              if (v54 != -1)
              {
                goto LABEL_78;
              }
            }

            else
            {
              v55 = MIL::Util::Span<signed char const,18446744073709551615ul>::At(&v94, v34);
              if (!MIL::Validation::IsAxisValidForRank(*v55, v40))
              {
                std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
                v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Begin axis must be within range (-input_ndim - 1, input_ndim) (exclusive). Invalid axis: ", 89);
                v98.__r_.__value_.__s.__data_[0] = *MIL::Util::Span<signed char const,18446744073709551615ul>::At(&v94, v34);
                v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, &v98, 1);
                v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, " for input_ndim: ", 17);
                MEMORY[0x21CEAFB80](v70, v40);
                v71 = __cxa_allocate_exception(0x10uLL);
                std::stringbuf::str();
                std::logic_error::logic_error(v71, &v98);
                v71->__vftable = (MEMORY[0x277D828F8] + 16);
                __cxa_throw(v71, off_278235F80, MEMORY[0x277D82610]);
              }

              v56 = *MIL::Util::Span<signed char const,18446744073709551615ul>::At(&v94, v34);
              v57 = *MIL::Util::Span<signed char const,18446744073709551615ul>::At(&v94, v34);
              v58 = *MIL::Util::Span<signed char const,18446744073709551615ul>::At(&v92, v34);
              v59 = MIL::Util::Span<signed char const,18446744073709551615ul>::At(&v92, v34);
              v46 = (v40 & (v56 >> 31)) + v57;
              v60 = *v59;
              if ((v58 & 0x80000000) == 0)
              {
                if (v46 + v60 > v40)
                {
LABEL_76:
                  v79 = __cxa_allocate_exception(0x10uLL);
                  std::logic_error::logic_error(v79, "begin[i] + size[i] is required to be <= input dimension.");
                  goto LABEL_79;
                }

                v48 = *MIL::Util::Span<signed char const,18446744073709551615ul>::At(&v92, v34);
                goto LABEL_63;
              }

              if (v60 != -1)
              {
LABEL_78:
                v79 = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(v79, "size[i] cannot be negative value except -1.");
LABEL_79:
                v79->__vftable = (MEMORY[0x277D828F8] + 16);
                __cxa_throw(v79, off_278235F80, MEMORY[0x277D82610]);
              }
            }

            v48 = v40 - v46;
LABEL_63:
            *&__p = MIL::IRConstantDimension::Make(*a1, v48);
            std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v96, &__p);
            goto LABEL_64;
          }

          goto LABEL_77;
        }

        v30 = MIL::IRValue::AsTensor(v14);
        v92 = MIL::IRTensorValue::GetDataView<signed char>(v30);
        v93 = v31;
        if (SingleValue)
        {
          v32 = MIL::IRValue::AsTensor(SingleValue);
          v94 = MIL::IRTensorValue::GetDataView<signed char>(v32);
          v95 = v21;
          v22 = v93;
LABEL_21:
          if (v21 == v22)
          {
            goto LABEL_22;
          }

LABEL_77:
          v80 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v80, "Length of begin is not equal to the length of size.");
          v80->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v80, off_278235F80, MEMORY[0x277D82610]);
        }
      }

LABEL_22:
      v29 = 0;
      goto LABEL_23;
    }
  }

  else if (v13)
  {
    goto LABEL_9;
  }

  v24 = *v10;
  v23 = v10[1];
  v98.__r_.__value_.__r.__words[0] = MIL::IRUnknownDimension::Make(*a1, 0);
  std::vector<MIL::IRDimension const*>::vector[abi:ne200100](&__p, (v23 - v24) >> 3, &v98);
  v96 = __p;
  v97 = v100;
  MIL::IRTensorValueType::MakeWithShape(*a1, v81, &v96);
}

void sub_2181E97BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a40 < 0)
  {
    operator delete(__p);
    if ((v47 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a41);
      if (a32)
      {
        operator delete(a32);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v47)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v46);
  goto LABEL_6;
}

unint64_t MIL::Util::Span<short const,18446744073709551615ul>::At(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  return *a1 + 2 * a2;
}

unint64_t MIL::Util::Span<signed char const,18446744073709551615ul>::At(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  return *a1 + a2;
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSlidingWindows(MIL::IRUnknownDimension **a1, void x1_0, void *a2)
{
  v32[1] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = (*(*v6 + 88))(v6);
  v8 = (*(*v6 + 96))(v6);
  std::string::basic_string[abi:ne200100]<0>(__p, "axis");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, __p);
  v10 = MIL::IRValue::AsTensor(SingleValue);
  v11 = MIL::IRValue::GetScalar<int>(v10);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "size");
  v12 = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, __p);
  v13 = MIL::IRValue::AsTensor(v12);
  v14 = MIL::IRValue::GetScalar<int>(v13);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "stride");
  v15 = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, __p);
  v16 = MIL::IRValue::AsTensor(v15);
  v17 = MIL::IRValue::GetScalar<int>(v16);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  v18 = *v8;
  v19 = *(v8 + 8);
  v20 = v19 - *v8;
  __p[0] = 0;
  __p[1] = 0;
  v31 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, v18, v19, v20 >> 3);
  v21 = v11 + ((v20 >> 3) & (v11 >> 31));
  v22 = *(*v8 + 8 * v21);
  v23 = (*(*v22 + 16))(v22);
  v24 = v23;
  if (v23)
  {
    if (v14 > (*(*v23 + 48))(v23))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "size cannot exceed the input dimension.");
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }

    v25 = *a1;
    v26 = (*(*v24 + 48))(v24);
    v27 = MIL::IRConstantDimension::Make(v25, ((v26 - v14) / v17 + 1));
  }

  else
  {
    v27 = MIL::IRUnknownDimension::Make(*a1, 0);
  }

  *(__p[0] + v21) = v27;
  v28 = __p[0];
  v32[0] = MIL::IRConstantDimension::Make(*a1, v14);
  std::vector<MIL::IRDimension const*>::insert(__p, &v28[8 * v21 + 8], v32);
  MIL::IRTensorValueType::MakeWithShape(*a1, v7, __p);
}

void sub_2181E9D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSpaceToBatch(MIL::IRConstantDimension **a1, void x1_0, void *a2)
{
  v36[1] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, &__p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

  v7 = (*(*v6 + 88))(v6);
  v8 = (*(*v6 + 96))(v6);
  std::string::basic_string[abi:ne200100]<0>(&__p, "block_shape");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, &__p);
  v10 = MIL::IRValue::AsTensor(SingleValue);
  Data = MIL::IRTensorValue::GetDataView<int>(v10);
  v13 = v12;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

  v14 = *v8;
  v15 = v8[1];
  if (v13 > ((v15 - *v8) >> 3) - 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "size of the block_shape cannot exceed the size of input spatial dimensions.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  if (v13)
  {
    v16 = 4 * v13;
    v17 = 1;
    v18 = Data;
    do
    {
      v19 = *v18++;
      v17 *= v19;
      v16 -= 4;
    }

    while (v16);
  }

  else
  {
    v17 = 1;
  }

  if (v15 == v14)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  v20 = MIL::IRDimension::AsConstant(*v14);
  v21 = (*(*v20 + 48))(v20);
  v35[0] = MIL::IRConstantDimension::Make(*a1, (v21 * v17));
  if ((v8[1] - *v8) <= 8)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  v35[1] = *(*v8 + 1);
  __dst = 0;
  v34 = 0;
  __p = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(&__p, v35, v36, 2uLL);
  std::string::basic_string[abi:ne200100]<0>(v35, "paddings");
  v22 = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, v35);
  v23 = MIL::IRValue::AsTensor(v22);
  v24 = MIL::IRTensorValue::GetDataView<int>(v23);
  if (SHIBYTE(v36[0]) < 0)
  {
    operator delete(v35[0]);
    if (!v13)
    {
      goto LABEL_25;
    }
  }

  else if (!v13)
  {
    goto LABEL_25;
  }

  v25 = (v24 + 4);
  v26 = 2;
  v27 = v13;
  do
  {
    if (v26 >= (v8[1] - *v8) >> 3)
    {
      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    v28 = (*(**&(*v8)[8 * v26] + 16))(*&(*v8)[8 * v26]);
    if (v28)
    {
      v29 = (*(*v28 + 48))(v28);
      v35[0] = MIL::IRConstantDimension::Make(*a1, ((*(v25 - 1) + *v25 + v29) / *Data));
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, v35);
    }

    else
    {
      if (v26 >= (v8[1] - *v8) >> 3)
      {
        std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
      }

      v30 = MIL::IRDimension::AsUnknown(*&(*v8)[8 * v26]);
      if ((*(*v30 + 32))(v30))
      {
        v35[0] = MIL::IRUnknownDimension::Make(*a1, 1);
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, v35);
        MIL::IRTensorValueType::MakeWithShape(*a1, v7, &__p);
      }

      v35[0] = MIL::IRUnknownDimension::Make(*a1, 0);
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, v35);
    }

    ++v26;
    v25 += 2;
    ++Data;
    --v27;
  }

  while (v27);
LABEL_25:
  std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const* const*>,std::__wrap_iter<MIL::IRDimension const* const*>>(&__p, __dst, &(*v8)[8 * v13 + 16], v8[1], (v8[1] - &(*v8)[8 * v13 + 16]) >> 3);
  MIL::IRTensorValueType::MakeWithShape(*a1, v7, &__p);
}

void sub_2181EA258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSpaceToDepth(MIL::IRConstantDimension **a1, void x1_0, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, &__p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v24 < 0)
  {
    operator delete(__p);
  }

  v7 = (*(*v6 + 88))(v6);
  v8 = (*(*v6 + 96))(v6);
  std::string::basic_string[abi:ne200100]<0>(&__p, "block_size");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, &__p);
  v10 = MIL::IRValue::AsTensor(SingleValue);
  v11 = MIL::IRValue::GetScalar<int>(v10);
  if (v24 < 0)
  {
    operator delete(__p);
  }

  if (*(v8 + 8) != *v8)
  {
    __p = **v8;
    memset(v21, 0, sizeof(v21));
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(v21, &__p, &v23, 1uLL);
    if (*(v8 + 8) - *v8 > 8uLL)
    {
      v12 = (*(**(*v8 + 8) + 16))(*(*v8 + 8));
      if (v12)
      {
        v13 = (*(*v12 + 48))(v12);
        __p = MIL::IRConstantDimension::Make(*a1, (v13 * (v11 * v11)));
      }

      else
      {
        __p = MIL::IRUnknownDimension::Make(*a1, 0);
      }

      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v21, &__p);
      if (*(v8 + 8) - *v8 > 0x10uLL)
      {
        v14 = (*(**(*v8 + 16) + 16))(*(*v8 + 16));
        if (v14)
        {
          v15 = (*(*v14 + 48))(v14);
          if (v15 % v11)
          {
            std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "block_size is not divisible by the first space dimension.", 57);
            exception = __cxa_allocate_exception(0x10uLL);
            std::stringbuf::str();
            std::logic_error::logic_error(exception, &v20);
            exception->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
          }

          __p = MIL::IRConstantDimension::Make(*a1, (v15 / v11));
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v21, &__p);
        }

        else
        {
          __p = MIL::IRUnknownDimension::Make(*a1, 0);
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v21, &__p);
        }

        if (*(v8 + 8) - *v8 > 0x18uLL)
        {
          v16 = (*(**(*v8 + 24) + 16))(*(*v8 + 24));
          if (v16)
          {
            v17 = (*(*v16 + 48))(v16);
            if (v17 % v11)
            {
              std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "block_size is not divisible by the second space dimension.", 58);
              v19 = __cxa_allocate_exception(0x10uLL);
              std::stringbuf::str();
              std::logic_error::logic_error(v19, &v20);
              v19->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(v19, off_278235F80, MEMORY[0x277D82610]);
            }

            __p = MIL::IRConstantDimension::Make(*a1, (v17 / v11));
            std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v21, &__p);
          }

          else
          {
            __p = MIL::IRUnknownDimension::Make(*a1, 0);
            std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v21, &__p);
          }

          MIL::IRTensorValueType::MakeWithShape(*a1, v7, v21);
        }

        std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
      }

      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
}

void sub_2181EA7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a18);
      if (a15)
      {
        operator delete(a15);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSplit(MIL::IRConstantDimension **a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v72, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, v72);
  v9 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  v53 = (*(*v9 + 88))(v9);
  v10 = (*(*v9 + 96))(v9);
  std::string::basic_string[abi:ne200100]<0>(v72, "axis");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, v72);
  v12 = MIL::IRValue::AsTensor(SingleValue);
  v13 = MIL::IRValue::GetScalar<int>(v12);
  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "num_splits");
  v14 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v72);
  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  MIL::ValidationResult::ValidationResult(v72);
  if (v14)
  {
    v15 = a2[1];
    v67[0] = *a2;
    v67[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v65, "num_splits");
    v16 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, v65);
    MIL::MILResult::operator=(v72, &v68);
    v74 = v71;
    MIL::ValidationResult::~ValidationResult(&v68);
    if (v66 < 0)
    {
      operator delete(v65[0]);
    }
  }

  else
  {
    v15 = a2[1];
    v64[0] = *a2;
    v64[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::MILResult::operator=(v72, &v68);
    v74 = v71;
    MIL::ValidationResult::~ValidationResult(&v68);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (!MIL::ValidationResult::IsGood(v72))
  {
    exception = __cxa_allocate_exception(0x48uLL);
    MIL::MILResult::MILResult(v62, v72);
    v62[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
    v63 = v74;
    MIL::ValidationError::ValidationError(exception, v62);
  }

  if ((v13 & 0x80000000) != 0)
  {
    LODWORD(v13) = v13 + ((*(v10 + 8) - *v10) >> 3);
  }

  std::string::basic_string[abi:ne200100]<0>(&v68, "split_sizes");
  v17 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &v68);
  if (SHIBYTE(v70) < 0)
  {
    operator delete(v68);
  }

  if (!(v14 | v17))
  {
    v44 = __cxa_allocate_exception(0x48uLL);
    v45 = a2[1];
    *&v61 = *a2;
    *(&v61 + 1) = v45;
    if (v45)
    {
      atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
    }

    MIL::ValidationError::ValidationError(v44, &v61, v60, 315);
  }

  if (!v17)
  {
    std::string::basic_string[abi:ne200100]<0>(&v68, "num_splits");
    v27 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v68);
    v28 = MIL::IRValue::AsTensor(v27);
    v29 = MIL::IRValue::GetScalar<int>(v28);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(v68);
    }

    v68 = 0;
    v69 = 0;
    v70 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v68, *v10, *(v10 + 8), (*(v10 + 8) - *v10) >> 3);
    v30 = *(*v10 + 8 * v13);
    v31 = (*(*v30 + 16))(v30);
    v32 = v31;
    if (v31)
    {
      if ((*(*v31 + 48))(v31) % v29)
      {
        v50 = __cxa_allocate_exception(0x48uLL);
        v51 = a2[1];
        *&v55 = *a2;
        *(&v55 + 1) = v51;
        if (v51)
        {
          atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v54, "Axis dimension is not divisible by parameter num_splits.");
        MIL::ValidationError::ValidationError(v50, &v55, v54, 315);
      }

      v33 = *a1;
      v34 = (*(*v32 + 48))(v32);
      v35 = MIL::IRConstantDimension::Make(v33, (v34 / v29));
    }

    else
    {
      v35 = MIL::IRUnknownDimension::Make(*a1, 0);
    }

    *(v68 + v13) = v35;
    MIL::IRTensorValueType::MakeWithShape(*a1, v53, &v68);
  }

  std::string::basic_string[abi:ne200100]<0>(&v68, "split_sizes");
  v18 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v68);
  v19 = MIL::IRValue::AsTensor(v18);
  Data = MIL::IRTensorValue::GetDataView<int>(v19);
  v22 = v21;
  if (SHIBYTE(v70) < 0)
  {
    operator delete(v68);
  }

  v52 = a2;
  if (v22)
  {
    LODWORD(v23) = 0;
    v24 = 4 * v22;
    v25 = Data;
    do
    {
      v26 = *v25++;
      v23 = v26 + v23;
      v24 -= 4;
    }

    while (v24);
  }

  else
  {
    v23 = 0;
  }

  v36 = *(*v10 + 8 * v13);
  v37 = (*(*v36 + 16))(v36);
  if (v37 && (*(*v37 + 48))(v37) != v23)
  {
    v46 = __cxa_allocate_exception(0x48uLL);
    v47 = v52[1];
    *&v59 = *v52;
    *(&v59 + 1) = v47;
    if (v47)
    {
      atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v58, "The sum of split_sizes does not match the input dimension.");
    MIL::ValidationError::ValidationError(v46, &v59, v58, 315);
  }

  if (v14)
  {
    std::string::basic_string[abi:ne200100]<0>(&v68, "num_splits");
    v38 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v68);
    v39 = MIL::IRValue::AsTensor(v38);
    v40 = MIL::IRValue::GetScalar<int>(v39);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(v68);
    }

    if (v22 != v40)
    {
      v48 = __cxa_allocate_exception(0x48uLL);
      v49 = v52[1];
      *&v57 = *v52;
      *(&v57 + 1) = v49;
      if (v49)
      {
        atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v56, "Parameter num_splits is not equal to length of split_sizes param when both are specified.");
      MIL::ValidationError::ValidationError(v48, &v57, v56, 315);
    }
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<std::string const*>::reserve(a4, v22);
  if (v22)
  {
    v41 = *Data;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v68, *v10, *(v10 + 8), (*(v10 + 8) - *v10) >> 3);
    v42 = MIL::IRConstantDimension::Make(*a1, v41);
    *(v68 + v13) = v42;
    MIL::IRTensorValueType::MakeWithShape(*a1, v53, &v68);
  }

  MIL::ValidationResult::~ValidationResult(v72);
}

void sub_2181EB0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (v45)
  {
    __cxa_free_exception(v44);
  }

  v48 = *(v46 - 200);
  if (v48)
  {
    *(v46 - 192) = v48;
    operator delete(v48);
  }

  MIL::ValidationResult::~ValidationResult((v46 - 144));
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSqueeze(MIL::IRUnknownDimension **a1, void x1_0, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SBYTE7(v25) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = (*(*v6 + 88))(v6);
  memset(v21, 0, sizeof(v21));
  v8 = (*(*v6 + 96))(v6);
  if (MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(v8))
  {
    __p[0] = MIL::IRUnknownDimension::Make(*a1, 1);
    std::vector<MIL::IRDimension const*>::__assign_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(v21, __p, &__p[1], 1uLL);
    MIL::IRTensorValueType::MakeWithShape(*a1, v7, v21);
  }

  *__p = 0u;
  v25 = 0u;
  v26 = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(&v22, "axes");
  v9 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &v22);
  v10 = v9;
  if (v23 < 0)
  {
    operator delete(v22);
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  else if (!v9)
  {
    goto LABEL_13;
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, "axes");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, &v22);
  v12 = MIL::IRValue::AsTensor(SingleValue);
  Data = MIL::IRTensorValue::GetDataView<int>(v12);
  v15 = v14;
  if (v23 < 0)
  {
    operator delete(v22);
  }

  MIL::ValueTypeInferenceUtils::ConvertAxesToNonNeg(Data, v15, (v8[1] - *v8) >> 3, &v19);
  std::unordered_set<unsigned long>::unordered_set<std::__wrap_iter<unsigned long *>>(&v22, v19, v20);
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(__p, &v22);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&v22);
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

LABEL_13:
  v22 = 0;
  v16 = *v8;
  if (v8[1] != *v8)
  {
    v17 = 0;
    do
    {
      v18 = (*(**(v16 + 8 * v17) + 16))(*(v16 + 8 * v17));
      if (!v18 || (*(*v18 + 48))(v18) != 1 || *(&v25 + 1) && !std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(__p, &v22))
      {
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v21, (*v8 + 8 * v22));
      }

      v17 = v22 + 1;
      v22 = v17;
      v16 = *v8;
    }

    while (v17 < (v8[1] - *v8) >> 3);
  }

  MIL::IRTensorValueType::MakeWithShape(*a1, v7, v21);
}

void sub_2181EB5EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&a24);
  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceStack(MIL::IRConstantDimension **a1, void x1_0, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "values");
  v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, __p);
  if (v5)
  {
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
    }

    ValueType = MIL::IRTypedArgument::GetValueType(*v5[5]);
    v7 = MIL::IRValueType::AsTensorType(ValueType);
    v8 = (*(*v7 + 88))(v7);
    v9 = v5[6];
    v10 = v5[5];
    v11 = (*(*v7 + 96))(v7);
    std::string::basic_string[abi:ne200100]<0>(__p, "axis");
    SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, __p);
    v13 = MIL::IRValue::GetScalar<int>(SingleValue);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
    }

    if (MIL::Validation::IsAxisValidForRank(v13, ((*(v11 + 8) - *v11) >> 3) + 1))
    {
      v14 = *v11;
      v15 = *(v11 + 8);
      v16 = v15 - *v11;
      __p[0] = 0;
      __p[1] = 0;
      v25 = 0;
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, v14, v15, v16 >> 3);
      v17 = __p[0];
      v18 = MIL::IRConstantDimension::Make(*a1, ((v9 - v10) >> 4));
      if (v13 < 0)
      {
        v19 = v13 + (v16 >> 3) + 1;
      }

      else
      {
        v19 = v13;
      }

      v26.__r_.__value_.__r.__words[0] = v18;
      std::vector<MIL::IRDimension const*>::insert(__p, &v17[8 * v19], &v26);
      MIL::IRTensorValueType::MakeWithShape(*a1, v8, __p);
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](__p);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Axis must be within range (-input_ndim-2, input_ndim+1) (exclusive) to stack. Invalid axis: ", 92);
    v21 = MEMORY[0x21CEAFB20](v20, v13);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " for input_ndim: ", 17);
    MEMORY[0x21CEAFB40](v22, (*(v11 + 8) - *v11) >> 3);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v26);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2181EB954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v17 - 89) < 0)
  {
    operator delete(*(v17 - 112));
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceTranspose(MIL::IRUnknownDimension **a1, void x1_0, void *a2)
{
  v22[2] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = (*(*v6 + 88))(v6);
  memset(v20, 0, sizeof(v20));
  v8 = (*(*v6 + 96))(v6);
  std::string::basic_string[abi:ne200100]<0>(__p, "perm");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, __p);
  v10 = MIL::IRValue::AsTensor(SingleValue);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  Data = MIL::IRTensorValue::GetDataView<int>(v10);
  v13 = v12;
  std::unordered_set<int>::unordered_set<int const*>(__p, Data, &Data[v12]);
  if (MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(v8))
  {
    __src = MIL::IRUnknownDimension::Make(*a1, 1);
    std::vector<MIL::IRDimension const*>::__assign_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(v20, &__src, v22, 1uLL);
    MIL::IRTensorValueType::MakeWithShape(*a1, v7, v20);
  }

  if (*v19 == (v8[1] - *v8) >> 3)
  {
    MIL::ValueTypeInferenceUtils::ConvertAxesToNonNeg(Data, v13, *v19, &__src);
    v14 = __src;
    v15 = v22[0];
    while (v14 != v15)
    {
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v20, (*v8 + 8 * *v14++));
    }

    MIL::IRTensorValueType::MakeWithShape(*a1, v7, v20);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Each 'axis' in 'perm' must correspond to a unique and different dimension.");
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
}

void sub_2181EBC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  __cxa_free_exception(v23);
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&a10);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::Operators::Common::ios15::anonymous namespace::inferIndexHelper<int>(MIL::IRValue *a1, void *a2, unint64_t a3)
{
  v5 = MIL::IRValue::AsTensor(a1);
  v11[0] = MIL::IRTensorValue::GetDataView<int>(v5);
  v11[1] = v6;
  if ((*(**(*a2 + 8 * a3) + 24))(*(*a2 + 8 * a3)))
  {
    return 0;
  }

  v8 = MIL::IRDimension::AsConstant(*(*a2 + 8 * a3));
  v9 = (*(*v8 + 48))(v8);
  if ((*MIL::Util::Span<int const,18446744073709551615ul>::At(v11, a3) & 0x80000000) != 0)
  {
    v10 = *MIL::Util::Span<int const,18446744073709551615ul>::At(v11, a3) + v9;
  }

  else
  {
    v10 = *MIL::Util::Span<int const,18446744073709551615ul>::At(v11, a3);
  }

  return v10 | 0x100000000;
}

uint64_t MIL::Operators::Common::ios15::anonymous namespace::inferIndexHelper<short>(MIL::IRValue *a1, void *a2, unint64_t a3)
{
  v5 = MIL::IRValue::AsTensor(a1);
  v11[0] = MIL::IRTensorValue::GetDataView<short>(v5);
  v11[1] = v6;
  if ((*(**(*a2 + 8 * a3) + 24))(*(*a2 + 8 * a3)))
  {
    return 0;
  }

  v8 = MIL::IRDimension::AsConstant(*(*a2 + 8 * a3));
  v9 = (*(*v8 + 48))(v8);
  v10 = *MIL::Util::Span<short const,18446744073709551615ul>::At(v11, a3);
  return ((v9 & (v10 >> 31)) + *MIL::Util::Span<short const,18446744073709551615ul>::At(v11, a3)) | 0x100000000;
}

uint64_t MIL::Operators::Common::ios15::anonymous namespace::inferIndexHelper<signed char>(MIL::IRValue *a1, void *a2, unint64_t a3)
{
  v5 = MIL::IRValue::AsTensor(a1);
  v11[0] = MIL::IRTensorValue::GetDataView<signed char>(v5);
  v11[1] = v6;
  if ((*(**(*a2 + 8 * a3) + 24))(*(*a2 + 8 * a3)))
  {
    return 0;
  }

  v8 = MIL::IRDimension::AsConstant(*(*a2 + 8 * a3));
  v9 = (*(*v8 + 48))(v8);
  v10 = *MIL::Util::Span<signed char const,18446744073709551615ul>::At(v11, a3);
  return ((v9 & (v10 >> 31)) + *MIL::Util::Span<signed char const,18446744073709551615ul>::At(v11, a3)) | 0x100000000;
}

void **std::vector<MIL::IRDimension const*>::__assign_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
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
        v13 += 8;
        *v15++ = v16;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t *std::vector<BOOL>::__assign_with_size[abi:ne200100]<BOOL const*,BOOL const*>(uint64_t *result, _BYTE *a2, _BYTE *a3, unint64_t a4)
{
  result[1] = 0;
  if (a4)
  {
    v5 = result;
    if (a4 > result[2] << 6)
    {
      v6 = *result;
      if (*v5)
      {
        operator delete(v6);
        *v5 = 0;
        v5[1] = 0;
        v5[2] = 0;
      }

      std::vector<BOOL>::__vallocate[abi:ne200100](v5, a4);
    }

    return std::vector<BOOL>::__construct_at_end<BOOL const*,BOOL const*>(result, a2, a3, a4);
  }

  return result;
}

void *std::vector<BOOL>::__construct_at_end<BOOL const*,BOOL const*>(void *result, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = result[1];
  v5 = v4 + a4;
  result[1] = v4 + a4;
  if (!v4 || ((v5 - 1) ^ (v4 - 1)) >= 0x40)
  {
    if (v5 >= 0x41)
    {
      v6 = (v5 - 1) >> 6;
    }

    else
    {
      v6 = 0;
    }

    *(*result + 8 * v6) = 0;
  }

  if (a2 != a3)
  {
    v7 = v4 & 0x3F;
    v8 = (*result + 8 * (v4 >> 6));
    do
    {
      v9 = 1 << v7;
      if (*a2 == 1)
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      ++a2;
      v8 += v7 == 63;
      if (v7 == 63)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }
    }

    while (a2 != a3);
  }

  return result;
}

uint64_t std::__count_BOOL[abi:ne200100]<false,std::vector<BOOL>,false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if ((64 - v2) >= a2)
    {
      v3 = a2;
    }

    else
    {
      v3 = (64 - v2);
    }

    v4 = vcnt_s8(((0xFFFFFFFFFFFFFFFFLL >> (64 - v2 - v3)) & (-1 << v2) & ~**a1));
    v4.i16[0] = vaddlv_u8(v4);
    v5 = v4.u32[0];
    a2 -= v3;
    *a1 += 8;
  }

  else
  {
    v5 = 0;
  }

  if (a2 >= 0x40)
  {
    v6 = *a1;
    do
    {
      v7 = *v6++;
      v8 = vcnt_s8(~v7);
      v8.i16[0] = vaddlv_u8(v8);
      v5 += v8.u32[0];
      a2 -= 64;
    }

    while (a2 > 0x3F);
    *a1 = v6;
  }

  if (a2)
  {
    v9 = vcnt_s8(((0xFFFFFFFFFFFFFFFFLL >> -a2) & ~**a1));
    v9.i16[0] = vaddlv_u8(v9);
    v5 += v9.u32[0];
  }

  return v5;
}

uint64_t *std::vector<MIL::IRValueType const*>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t *a3)
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

void sub_2181EC3B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_set<int>::unordered_set<int const*>(uint64_t a1, int *a2, int *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1, v5, v5);
      ++v5;
    }

    while (v5 != a3);
  }

  return a1;
}

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *a1, int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void MIL::Operators::Common::ios15::BatchToSpace::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181EDACC(_Unwind_Exception *a1)
{
  v3 = STACK[0x2A0];
  STACK[0x2A0] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x278], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2C8], 0);
  _Unwind_Resume(a1);
}

void sub_2181EDF70()
{
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v0 - 224);
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v0 - 192);
  if (STACK[0x228])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x228]);
  }

  if (STACK[0x238])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x238]);
  }

  JUMPOUT(0x2181EDFA4);
}

void sub_2181EDFB4()
{
  v1 = *(v0 - 64);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  v2 = STACK[0x270];
  STACK[0x270] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x2181EDFFCLL);
}

void sub_2181EE01C()
{
  v1 = *(v0 - 120);
  *(v0 - 120) = 0;
  if (v1)
  {
    MIL::Operators::Common::ios15::BaseActivation::Make();
  }

  if (STACK[0x288])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x288]);
  }

  v2 = STACK[0x2A0];
  if (STACK[0x2A0])
  {
    STACK[0x2A8] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2181EDF44);
}

void sub_2181EE074()
{
  v1 = *(v0 - 160);
  *(v0 - 160) = 0;
  if (v1)
  {
    MIL::Operators::Common::ios15::BaseActivation::Make();
  }

  if (STACK[0x2C0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x2C0]);
  }

  v2 = *(v0 - 120);
  if (v2)
  {
    *(v0 - 112) = v2;
    operator delete(v2);
  }

  v3 = STACK[0x2A0];
  if (STACK[0x2A0])
  {
    STACK[0x2A8] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x2181EDF44);
}

void MIL::Operators::Common::ios15::Concat::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181EEC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
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

void MIL::Operators::Common::ios15::DepthToSpace::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181EFD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void **a62)
{
  v65 = *(v63 - 104);
  *(v63 - 104) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v63 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ExpandDims::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181F0E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v60 = *(v58 - 88);
  *(v58 - 88) = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60, a2, a3, a4, a5, a6, a7, a8);
  }

  v61 = *v57;
  *v57 = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a57, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::PixelShuffle::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181F1FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void **a62)
{
  v65 = *(v63 - 104);
  *(v63 - 104) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v63 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Reshape::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181F3068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v60 = *(v58 - 88);
  *(v58 - 88) = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60, a2, a3, a4, a5, a6, a7, a8);
  }

  v61 = *v57;
  *v57 = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a57, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Reverse::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181F438C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void **a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  v68 = *(v66 - 88);
  *(v66 - 88) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a65, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReverseSequence::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181F5844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void **a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *(v66 - 88);
  *(v66 - 88) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a65, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::SliceByIndex::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181F74EC(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x338], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::SliceBySize::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181F8C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *(v66 - 96);
  *(v66 - 96) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v66 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a65, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::SlidingWindows::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181F9E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 88);
  *(v59 - 88) = 0;
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

void MIL::Operators::Common::ios15::SpaceToBatch::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181FB6E8(_Unwind_Exception *a1)
{
  v3 = STACK[0x2A0];
  STACK[0x2A0] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x278], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2C8], 0);
  _Unwind_Resume(a1);
}

void sub_2181FBB8C()
{
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v0 - 224);
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v0 - 192);
  if (STACK[0x228])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x228]);
  }

  if (STACK[0x238])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x238]);
  }

  JUMPOUT(0x2181FBBC0);
}

void sub_2181FBBD0()
{
  v1 = *(v0 - 64);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  v2 = STACK[0x270];
  STACK[0x270] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x2181FBC18);
}

void sub_2181FBC38()
{
  v1 = *(v0 - 120);
  *(v0 - 120) = 0;
  if (v1)
  {
    MIL::Operators::Common::ios15::BaseActivation::Make();
  }

  if (STACK[0x288])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x288]);
  }

  v2 = STACK[0x2A0];
  if (STACK[0x2A0])
  {
    STACK[0x2A8] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2181FBB60);
}

void sub_2181FBC90()
{
  v1 = *(v0 - 160);
  *(v0 - 160) = 0;
  if (v1)
  {
    MIL::Operators::Common::ios15::BaseActivation::Make();
  }

  if (STACK[0x2C0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x2C0]);
  }

  v2 = *(v0 - 120);
  if (v2)
  {
    *(v0 - 112) = v2;
    operator delete(v2);
  }

  v3 = STACK[0x2A0];
  if (STACK[0x2A0])
  {
    STACK[0x2A8] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x2181FBB60);
}

void MIL::Operators::Common::ios15::SpaceToDepth::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181FCAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void **a62)
{
  v65 = *(v63 - 104);
  *(v63 - 104) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v63 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Split::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181FD804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, __int16 a50, char a51, char a52)
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

void MIL::Operators::Common::ios15::Squeeze::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181FE888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v65 = *(v63 - 96);
  *(v63 - 96) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v63 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Stack::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181FF774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
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

void MIL::Operators::Common::ios15::Transpose::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218200898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v65 = *(v63 - 96);
  *(v63 - 96) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v63 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a62, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::BaseActivation::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_218201948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v50 = *(v48 - 120);
  *(v48 - 120) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 88), 0);
  v51 = *v47;
  *v47 = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v48 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a47, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::BaseActivationWithAlpha::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_218202B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v60 = *(v58 - 120);
  *(v58 - 120) = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 88), 0);
  v61 = *v57;
  *v57 = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a57, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::BaseActivationWithAlphaBeta::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_21820402C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *(v66 - 120);
  *(v66 - 120) = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v66 - 88), 0);
  v69 = *v65;
  *v65 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v66 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a65, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ClampedReLU::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivationWithAlphaBeta::Make();
}

void sub_218204688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::LinearActivation::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivationWithAlphaBeta::Make();
}

void sub_21820473C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ScaledTanh::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivationWithAlphaBeta::Make();
}

void sub_2182047F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::SigmoidHard::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivationWithAlphaBeta::Make();
}

void sub_2182048A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ELU::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivationWithAlpha::Make();
}

void sub_218204958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::LeakyReLU::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivationWithAlpha::Make();
}

void sub_218204A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ThresholdedReLU::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivationWithAlpha::Make();
}

void sub_218204AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ERF::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivation::Make();
}

void sub_218204B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::GeLU::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218205990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v58 = *(v56 - 104);
  *(v56 - 104) = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 72), 0);
  v59 = *v55;
  *v55 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a55, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ReLU::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivation::Make();
}

void sub_218205F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ReLU6::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivation::Make();
}

void sub_218206048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Sigmoid::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivation::Make();
}

void sub_2182060FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::SiLU::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivation::Make();
}

void sub_2182061B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Softplus::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivation::Make();
}

void sub_218206264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::Softsign::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios16::BaseActivation::Make();
}

void sub_218206318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::PReLU::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218207300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void **a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *(v66 - 120);
  *(v66 - 120) = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v66 - 96), 0);
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

void MIL::Operators::Common::ios16::Softmax::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2182086EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v62 = *(v60 - 88);
  *(v60 - 88) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v60 - 72), 0);
  v63 = *v59;
  *v59 = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v60 - 104), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a59, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::SoftplusParametric::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_218209F74(_Unwind_Exception *a1)
{
  v4 = *(v2 - 120);
  *(v2 - 120) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 96), 0);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x218], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x250], 0);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<MIL::Validation::OpAttributeConstraintTarget  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::OpAttributeConstraintTarget  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::OpAttributeConstraintTarget  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void MIL::Operators::Common::ios16::CustomValidators::ValidateConstexprAffineDequantize(MIL::Operators::Common::ios16::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v73, "quantized_data");
  MIL::IRObject::TryGetAttributeSharedPtr(this, &v73, &lpsrc);
  if (lpsrc)
  {
    if (v4)
    {
      v5 = v62;
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v73, "zero_point");
  MIL::IRObject::TryGetAttributeSharedPtr(this, &v73, &lpsrc);
  if (lpsrc)
  {
    if (v6)
    {
      v7 = v62;
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v73, "scale");
  MIL::IRObject::TryGetAttributeSharedPtr(this, &v73, &lpsrc);
  if (lpsrc)
  {
    if (v8)
    {
      v9 = v62;
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v73, "axis");
  Attribute = MIL::IRObject::GetAttribute(this, &v73);
  v11 = MIL::IRValue::AsTensor(Attribute);
  v12 = *MIL::IRTensorValue::GetDataView<int>(v11);
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  v13 = (*(*v4 + 32))(v4);
  v14 = MIL::IRTensorValueType::Rank(v13);
  if (v12 >= 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  if (v12 < -v14 || v14 <= v12)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v42 = LocationPtr[1];
    *&v72 = *LocationPtr;
    *(&v72 + 1) = v42;
    if (v42)
    {
      atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
    }

    std::to_string(&v73, v12);
    v43 = std::string::insert(&v73, 0, "Attribute axis should be in the range -quantizedData.rank <= axis < quantizedData.rank. Provided axis = ");
    v44 = *&v43->__r_.__value_.__l.__data_;
    v71 = v43->__r_.__value_.__r.__words[2];
    v70 = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationResult::ValidationResult(a2, &v72, 322, &v70);
    if (SHIBYTE(v71) < 0)
    {
      operator delete(v70);
    }

    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    v45 = *(&v72 + 1);
    if (!*(&v72 + 1))
    {
      goto LABEL_81;
    }

LABEL_59:
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    goto LABEL_81;
  }

  v16 = (*(*v6 + 32))(v6);
  v17 = (*(*v4 + 32))(v4);
  v18 = (*(*v17 + 96))(v17);
  v19 = v15 + v12;
  v20 = MIL::IRDimension::AsConstant(*(*v18 + 8 * v19));
  v21 = (*(*v20 + 48))(v20);
  if (MIL::IRTensorValueType::Rank(v16) == 1 && (*(*v16 + 16))(v16) != v21)
  {
    v49 = MIL::IRObject::GetLocationPtr(this);
    v50 = v49[1];
    *&v69 = *v49;
    *(&v69 + 1) = v50;
    if (v50)
    {
      atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v67, "Attribute zeroPoint, if vector, needs to have same number of elements as quantizedData[axis]");
    MIL::ValidationResult::ValidationResult(a2, &v69, 322, v67);
    if (v68 < 0)
    {
      operator delete(v67[0]);
    }

    v45 = *(&v69 + 1);
    if (!*(&v69 + 1))
    {
      goto LABEL_81;
    }

    goto LABEL_59;
  }

  v22 = (*(*v8 + 32))(v8);
  v23 = (*(*v4 + 32))(v4);
  v24 = (*(*v23 + 96))(v23);
  v25 = MIL::IRDimension::AsConstant(*(*v24 + 8 * v19));
  v26 = (*(*v25 + 48))(v25);
  if (MIL::IRTensorValueType::Rank(v22) != 1 || (*(*v22 + 16))(v22) == v26)
  {
    v27 = (*(*this + 176))(this);
    if (*(v27 + 8) == *v27)
    {
      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    Type = MIL::IRNamedValueType::GetType(**v27);
    v29 = MIL::IRValueType::AsTensorType(Type);
    v30 = (*(*v29 + 96))(v29);
    memset(&v73, 0, sizeof(v73));
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v73, *v30, *(v30 + 8), (*(v30 + 8) - *v30) >> 3);
    v31 = (*(*v4 + 32))(v4);
    v32 = (*(*v31 + 96))(v31);
    lpsrc = 0;
    v62 = 0;
    v63 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&lpsrc, *v32, *(v32 + 8), (*(v32 + 8) - *v32) >> 3);
    v33 = v73.__r_.__value_.__r.__words[0];
    if (v73.__r_.__value_.__l.__size_ - v73.__r_.__value_.__r.__words[0] == v62 - lpsrc)
    {
      if (v73.__r_.__value_.__l.__size_ == v73.__r_.__value_.__r.__words[0])
      {
LABEL_50:
        v38 = MIL::IRValueType::AsTensorType(Type);
        v39 = (*(*v38 + 88))(v38);
        v40 = (*(*v8 + 32))(v8);
        if (v39 == (*(*v40 + 88))(v40))
        {
          MIL::ValidationResult::ValidationResult(a2);
LABEL_66:
          if (lpsrc)
          {
            v62 = lpsrc;
            operator delete(lpsrc);
          }

          if (v73.__r_.__value_.__r.__words[0])
          {
            v73.__r_.__value_.__l.__size_ = v73.__r_.__value_.__r.__words[0];
            operator delete(v73.__r_.__value_.__l.__data_);
          }

          goto LABEL_81;
        }

        v53 = MIL::IRObject::GetLocationPtr(this);
        v54 = v53[1];
        *&v57 = *v53;
        *(&v57 + 1) = v54;
        if (v54)
        {
          atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v55, "Attribute scale and output should have same dtype");
        MIL::ValidationResult::ValidationResult(a2, &v57, 306, v55);
        if (v56 < 0)
        {
          operator delete(v55[0]);
        }

        v48 = *(&v57 + 1);
        if (!*(&v57 + 1))
        {
          goto LABEL_66;
        }

LABEL_65:
        std::__shared_weak_count::__release_shared[abi:ne200100](v48);
        goto LABEL_66;
      }

      v34 = 0;
      while ((*(**(v33 + 8 * v34) + 16))(*(v33 + 8 * v34)))
      {
        if (!(*(**(lpsrc + v34) + 16))(*(lpsrc + v34)))
        {
          break;
        }

        v35 = MIL::IRDimension::AsConstant(*(v73.__r_.__value_.__r.__words[0] + 8 * v34));
        v36 = (*(*v35 + 48))(v35);
        v37 = MIL::IRDimension::AsConstant(*(lpsrc + v34));
        if (v36 != (*(*v37 + 48))(v37))
        {
          break;
        }

        ++v34;
        v33 = v73.__r_.__value_.__r.__words[0];
        if (v34 >= (v73.__r_.__value_.__l.__size_ - v73.__r_.__value_.__r.__words[0]) >> 3)
        {
          goto LABEL_50;
        }
      }
    }

    v46 = MIL::IRObject::GetLocationPtr(this);
    v47 = v46[1];
    *&v60 = *v46;
    *(&v60 + 1) = v47;
    if (v47)
    {
      atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Attribute quantizedData and output should have same shape");
    MIL::ValidationResult::ValidationResult(a2, &v60, 322, __p);
    if (v59 < 0)
    {
      operator delete(__p[0]);
    }

    v48 = *(&v60 + 1);
    if (!*(&v60 + 1))
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v51 = MIL::IRObject::GetLocationPtr(this);
  v52 = v51[1];
  *&v66 = *v51;
  *(&v66 + 1) = v52;
  if (v52)
  {
    atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "Attribute scale, if vector, needs to have same number of elements as quantizedData[axis]");
  MIL::ValidationResult::ValidationResult(a2, &v66, 322, v64);
  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  v45 = *(&v66 + 1);
  if (*(&v66 + 1))
  {
    goto LABEL_59;
  }

LABEL_81:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_21820B064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a26)
  {
    operator delete(a26);
  }

  v49 = *(v47 - 112);
  if (v49)
  {
    *(v47 - 104) = v49;
    operator delete(v49);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::ConstexprAffineDequantize::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = 0;
  operator new();
}

void sub_21820BBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33, uint64_t a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43)
{
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100](&a32);
  v45 = *v43;
  *v43 = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a33, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100](&a34);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ConstexprCast::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = 0;
  operator new();
}

void sub_21820C484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void **a32, uint64_t a33, __int16 a34, char a35, char a36)
{
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100](&a30);
  v38 = *v36;
  *v36 = 0;
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a32, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100](&a33);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::CustomValidators::ValidateConstexprLutToDense(MIL::Operators::Common::ios16::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  v53 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "indices");
  MIL::IRObject::TryGetAttributeSharedPtr(this, __p, v51);
  if (*v51)
  {
    if (v4)
    {
      v5 = *&v51[8];
      if (*&v51[8])
      {
        atomic_fetch_add_explicit((*&v51[8] + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (*&v51[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v51[8]);
  }

  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lut");
  MIL::IRObject::TryGetAttributeSharedPtr(this, __p, v51);
  if (!*v51)
  {
    v6 = 0;
    goto LABEL_16;
  }

  if (!v6)
  {
LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  v7 = *&v51[8];
  if (*&v51[8])
  {
    atomic_fetch_add_explicit((*&v51[8] + 8), 1uLL, memory_order_relaxed);
  }

LABEL_17:
  if (*&v51[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v51[8]);
  }

  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "shape");
  Attribute = MIL::IRObject::GetAttribute(this, __p);
  v9 = MIL::IRValue::AsTensor(Attribute);
  Data = MIL::IRTensorValue::GetDataView<unsigned int>(v9);
  v12 = v11;
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = (*(*v6 + 32))(v6);
  v50 = (*(*v13 + 16))(v13);
  *v51 = xmmword_218590770;
  *&v51[16] = unk_218590780;
  v52 = 256;
  std::unordered_set<unsigned long>::unordered_set(__p, v51, 5);
  if (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(__p, &v50))
  {
    v14 = (*(*this + 176))(this);
    if (*(v14 + 8) == *v14)
    {
      std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
    }

    Type = MIL::IRNamedValueType::GetType(**v14);
    v16 = MIL::IRValueType::AsTensorType(Type);
    v17 = (*(*v16 + 88))(v16);
    v18 = (*(*v6 + 32))(v6);
    if (v17 == (*(*v18 + 88))(v18))
    {
      v19 = MIL::IRValueType::AsTensorType(Type);
      v20 = (*(*v19 + 96))(v19);
      memset(v51, 0, 24);
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v51, *v20, *(v20 + 8), (*(v20 + 8) - *v20) >> 3);
      if (MIL::Operators::Common::Shared::MatchesExpectedShape(v51, Data, v12))
      {
        v21 = log2(v50);
        v22 = (*(*v4 + 32))(v4);
        v23 = (*(*v22 + 16))(v22);
        if (v23 == vcvtpd_u64_f64(vcvtd_n_f64_u64((*(*Type + 16))(Type), 3uLL) * v21))
        {
          MIL::ValidationResult::ValidationResult(a2);
          goto LABEL_49;
        }

        LocationPtr = MIL::IRObject::GetLocationPtr(this);
        v35 = LocationPtr[1];
        *&v38 = *LocationPtr;
        *(&v38 + 1) = v35;
        if (v35)
        {
          atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v36, "Attribute indices and shape should satisfy indicesSize == std::ceil(nBits * (prod(shape) / 8.0))");
        MIL::ValidationResult::ValidationResult(a2, &v38, 322, v36);
        if (v37 < 0)
        {
          operator delete(v36[0]);
        }

        v33 = *(&v38 + 1);
        if (!*(&v38 + 1))
        {
          goto LABEL_49;
        }
      }

      else
      {
        v31 = MIL::IRObject::GetLocationPtr(this);
        v32 = v31[1];
        *&v41 = *v31;
        *(&v41 + 1) = v32;
        if (v32)
        {
          atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v39, "Attribute shape and output's shape should match");
        MIL::ValidationResult::ValidationResult(a2, &v41, 322, v39);
        if (v40 < 0)
        {
          operator delete(v39[0]);
        }

        v33 = *(&v41 + 1);
        if (!*(&v41 + 1))
        {
          goto LABEL_49;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
LABEL_49:
      if (*v51)
      {
        *&v51[8] = *v51;
        operator delete(*v51);
      }

      goto LABEL_51;
    }

    v29 = MIL::IRObject::GetLocationPtr(this);
    v30 = v29[1];
    *&v44 = *v29;
    *(&v44 + 1) = v30;
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v42, "Attribute lut and output should have same dtype");
    MIL::ValidationResult::ValidationResult(a2, &v44, 306, v42);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    v28 = *(&v44 + 1);
    if (*(&v44 + 1))
    {
LABEL_42:
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }
  }

  else
  {
    v24 = MIL::IRObject::GetLocationPtr(this);
    v25 = v24[1];
    *&v47 = *v24;
    *(&v47 + 1) = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
    }

    std::to_string(v51, v50);
    v26 = std::string::insert(v51, 0, "Attribute lut should have number of elements equal to one of {2, 4, 16, 64, 256}, but provided ");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v46 = v26->__r_.__value_.__r.__words[2];
    *v45 = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationResult::ValidationResult(a2, &v47, 322, v45);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }

    if ((v51[23] & 0x80000000) != 0)
    {
      operator delete(*v51);
    }

    v28 = *(&v47 + 1);
    if (*(&v47 + 1))
    {
      goto LABEL_42;
    }
  }

LABEL_51:
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(__p);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_21820CCC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  v52 = *(v50 - 160);
  if (v52)
  {
    *(v50 - 152) = v52;
    operator delete(v52);
  }

  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&a43);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ConstexprLutToDense::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = 0;
  operator new();
}

void sub_21820D78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void **a39, uint64_t a40, __int16 a41, char a42, char a43)
{
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100](&a37);
  v45 = *v43;
  *v43 = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a39, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100](&a40);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::CustomValidators::ValidateConstexprSparseToDense(MIL::Operators::Common::ios16::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v51, "nonzero_data");
  MIL::IRObject::TryGetAttributeSharedPtr(this, &v51, &v54);
  if (v54)
  {
    if (v4)
    {
      v5 = v55;
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v51);
  }

  std::string::basic_string[abi:ne200100]<0>(&v51, "mask");
  MIL::IRObject::TryGetAttributeSharedPtr(this, &v51, &v54);
  if (!v54)
  {
    v6 = 0;
    goto LABEL_16;
  }

  if (!v6)
  {
LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  v7 = v55;
  if (v55)
  {
    atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_17:
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v51);
  }

  std::string::basic_string[abi:ne200100]<0>(&v51, "shape");
  Attribute = MIL::IRObject::GetAttribute(this, &v51);
  v9 = MIL::IRValue::AsTensor(Attribute);
  Data = MIL::IRTensorValue::GetDataView<unsigned int>(v9);
  v12 = v11;
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v51);
  }

  v13 = (*(*this + 176))(this);
  if (*(v13 + 8) == *v13)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  Type = MIL::IRNamedValueType::GetType(**v13);
  v15 = MIL::IRValueType::AsTensorType(Type);
  v16 = (*(*v15 + 88))(v15);
  v17 = (*(*v4 + 32))(v4);
  if (v16 == (*(*v17 + 88))(v17))
  {
    v18 = MIL::IRValueType::AsTensorType(Type);
    v19 = (*(*v18 + 96))(v18);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v51, *v19, *(v19 + 8), (*(v19 + 8) - *v19) >> 3);
    if (MIL::Operators::Common::Shared::MatchesExpectedShape(&v51, Data, v12))
    {
      v20 = (*(*Type + 16))(Type);
      v21 = (*(*v6 + 32))(v6);
      if ((*(*v21 + 16))(v21) == vcvtpd_u64_f64(vcvtd_n_f64_u64(v20, 3uLL)))
      {
        v22 = MIL::IRTensorValue::GetDataView<unsigned char>(v6);
        if (v23)
        {
          v24 = 0;
          v25 = 0;
          v26 = &v22[v23];
          do
          {
            if (v24 + 8 <= v20)
            {
              v27 = 8;
            }

            else
            {
              v27 = v20 - v24;
            }

            if (v27)
            {
              v28 = 0;
              do
              {
                v25 += (*v22 >> v28++) & 1;
              }

              while (v27 > v28);
            }

            v24 += v27;
            ++v22;
          }

          while (v22 != v26);
        }

        else
        {
          v25 = 0;
        }

        v36 = (*(*v4 + 32))(v4);
        if (v25 == (*(*v36 + 16))(v36))
        {
          MIL::ValidationResult::ValidationResult(a2);
          goto LABEL_64;
        }

        LocationPtr = MIL::IRObject::GetLocationPtr(this);
        v38 = LocationPtr[1];
        *&v41 = *LocationPtr;
        *(&v41 + 1) = v38;
        if (v38)
        {
          atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v39, "Number of set bits in attribute 'mask' must match the number of elements in attribute 'nonZeroData'");
        MIL::ValidationResult::ValidationResult(a2, &v41, 322, v39);
        if (v40 < 0)
        {
          operator delete(v39[0]);
        }

        v33 = *(&v41 + 1);
        if (!*(&v41 + 1))
        {
          goto LABEL_64;
        }
      }

      else
      {
        v34 = MIL::IRObject::GetLocationPtr(this);
        v35 = v34[1];
        *&v44 = *v34;
        *(&v44 + 1) = v35;
        if (v35)
        {
          atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v42, "Attribute mask and shape should satisfy maskSize == std::ceil( prod(shape) / 8.0)");
        MIL::ValidationResult::ValidationResult(a2, &v44, 322, v42);
        if (v43 < 0)
        {
          operator delete(v42[0]);
        }

        v33 = *(&v44 + 1);
        if (!*(&v44 + 1))
        {
          goto LABEL_64;
        }
      }
    }

    else
    {
      v31 = MIL::IRObject::GetLocationPtr(this);
      v32 = v31[1];
      *&v47 = *v31;
      *(&v47 + 1) = v32;
      if (v32)
      {
        atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v45, "Attribute shape and output's shape should match");
      MIL::ValidationResult::ValidationResult(a2, &v47, 322, v45);
      if (v46 < 0)
      {
        operator delete(v45[0]);
      }

      v33 = *(&v47 + 1);
      if (!*(&v47 + 1))
      {
        goto LABEL_64;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
LABEL_64:
    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }

    goto LABEL_66;
  }

  v29 = MIL::IRObject::GetLocationPtr(this);
  v30 = v29[1];
  *&v50 = *v29;
  *(&v50 + 1) = v30;
  if (v30)
  {
    atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Attribute nonZeroData and output should have same dtype");
  MIL::ValidationResult::ValidationResult(a2, &v50, 306, __p);
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(&v50 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v50 + 1));
  }

LABEL_66:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_21820E064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  v44 = *(v42 - 128);
  if (v44)
  {
    *(v42 - 120) = v44;
    operator delete(v44);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::ConstexprSparseToDense::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = 0;
  operator new();
}

void sub_21820EAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void **a39, uint64_t a40, __int16 a41, char a42, char a43)
{
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100](&a37);
  v45 = *v43;
  *v43 = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a39, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100](&a40);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::ConstexprAffineDequantize::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::ConstexprAffineDequantize::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EB7B8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Operators::Common::ios16::ConstexprAffineDequantize::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::ConstexprAffineDequantize::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::operator()(uint64_t a1, MIL::IRObject *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v15, "quantized_data");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(a2, v15, &v17);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v15, "zero_point");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(a2, v15, &v14);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v15, "scale");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(a2, v15, &v13);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v15, "axis");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(a2, v15, &v11);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  v5 = (*(*v17 + 32))(v17);
  MIL::IRTensorValueType::Rank(v5);
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::Shared::ValidateAndGetAxis();
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v6 = (*(*v17 + 32))(v17);
  v7 = (*(*v6 + 96))(v6);
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v15, *v7, *(v7 + 8), (*(v7 + 8) - *v7) >> 3);
  v8 = (*(*v13 + 32))(v13);
  v9 = (*(*v8 + 88))(v8);
  MIL::IRTensorValueType::MakeWithShape(*(a1 + 8), v9, v15);
}

void sub_21820F208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::ConstexprAffineDequantize::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::ConstexprAffineDequantize::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_21820F48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::make_unique[abi:ne200100]<MIL::Builder::OperationBuilder::OperationBuilderImpl,std::shared_ptr<MIL::IROperation> &,std::shared_ptr<MIL::MILContext>,std::string,MIL::Builder::BlockBuilder *&,0>((v12 | 8), (v13 | 8));
  MEMORY[0x21CEAFEA0](v11, v10);
  _Unwind_Resume(a1);
}

MIL::Operators::Common::ios16::ConstExprs::AffineDequantize **std::unique_ptr<MIL::Operators::Common::ios16::ConstExprs::AffineDequantize>::~unique_ptr[abi:ne200100](MIL::Operators::Common::ios16::ConstExprs::AffineDequantize **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::~AffineDequantize(v2);
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void std::__function::__func<MIL::Operators::Common::ios16::ConstexprAffineDequantize::Make(MIL::MILContext &,std::string)::$_1,std::allocator<MIL::Operators::Common::ios16::ConstexprAffineDequantize::Make(MIL::MILContext &,std::string)::$_1>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::operator()(void x0_0, uint64_t *a1, uint64_t *a2, void x3_0, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v6 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "quantized_data");
  v8 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  if (v8)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "scale");
    v9 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    if (v9)
    {
      v10 = MIL::IRValue::AsTensor(v8[5]);
      v11 = (*(*v10 + 32))(v10);
      v12 = (*(*v11 + 96))(v11);
      __p[0] = 0;
      __p[1] = 0;
      v19 = 0;
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, *v12, *(v12 + 8), (*(v12 + 8) - *v12) >> 3);
      v13 = MIL::IRValue::AsTensor(v9[5]);
      v14 = (*(*v13 + 32))(v13);
      v15 = (*(*v14 + 88))(v14);
      MIL::IRTensorValueType::MakeWithShape(*a1, v15, __p);
    }

    exception = __cxa_allocate_exception(0x48uLL);
    *&v20 = v7;
    *(&v20 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Attribute scale is undefined for constexpr_affine_dequantize");
    MIL::ValidationError::ValidationError(exception, &v20, __p, 315);
  }

  v16 = __cxa_allocate_exception(0x48uLL);
  *&v20 = v7;
  *(&v20 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Attribute quantized_data is undefined for constexpr_affine_dequantize");
  MIL::ValidationError::ValidationError(v16, &v20, __p, 315);
}

void sub_21820F854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
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

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::ConstexprAffineDequantize::Make(MIL::MILContext &,std::string)::$_1,std::allocator<MIL::Operators::Common::ios16::ConstexprAffineDequantize::Make(MIL::MILContext &,std::string)::$_1>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EB8B8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Operators::Common::ios16::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::operator()(uint64_t a1, MIL::IRObject *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "source_val");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(a2, __p, &v17);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "output_dtype");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(a2, __p, &v14);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = (*(*v17 + 32))(v17);
  v6 = (*(*v5 + 96))(v5);
  __p[0] = 0;
  __p[1] = 0;
  v16 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
  v7 = MIL::IRValue::TryGetScalar<std::string>();
  if (v7)
  {
    v8 = MIL::StringToIRDataType(v7, 0);
    MIL::IRTensorValueType::MakeWithShape(*(a1 + 8), v8, __p);
  }

  exception = __cxa_allocate_exception(0x48uLL);
  LocationPtr = MIL::IRObject::GetLocationPtr(a2);
  v11 = LocationPtr[1];
  *&v13 = *LocationPtr;
  *(&v13 + 1) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&v12, "Attribute output_dtype is not a scalar string");
  MIL::ValidationError::ValidationError(exception, &v13, &v12, 306);
}

void sub_21820FCF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
    if ((v26 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v26)
  {
LABEL_8:
    if (a21)
    {
      operator delete(a21);
    }

    if (a20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a20);
    }

    v30 = *(v28 - 40);
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v27);
  goto LABEL_8;
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::ConstexprCast::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

MIL::Operators::Common::ios16::ConstExprs::Cast **std::unique_ptr<MIL::Operators::Common::ios16::ConstExprs::Cast>::~unique_ptr[abi:ne200100](MIL::Operators::Common::ios16::ConstExprs::Cast **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::Operators::Common::ios16::ConstExprs::Cast::~Cast(v2);
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void std::__function::__func<MIL::Operators::Common::ios16::ConstexprCast::Make(MIL::MILContext &,std::string)::$_1,std::allocator<MIL::Operators::Common::ios16::ConstexprCast::Make(MIL::MILContext &,std::string)::$_1>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::operator()(void x0_0, uint64_t *a1, uint64_t a2, void x3_0, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v6 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "source_val");
  v8 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v8)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "output_dtype");
    v9 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
      v10 = MIL::IRValue::AsTensor(v9[5]);
      MIL::IRValue::GetScalar<std::string>(v10, &__p);
      v11 = MIL::StringToIRDataType(&__p, 0);
      v12 = MIL::IRValue::AsTensor(v8[5]);
      v13 = (*(*v12 + 32))(v12);
      v14 = (*(*v13 + 96))(v13);
      memset(v17, 0, sizeof(v17));
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v17, *v14, *(v14 + 8), (*(v14 + 8) - *v14) >> 3);
      MIL::IRTensorValueType::MakeWithShape(*a1, v11, v17);
    }

    exception = __cxa_allocate_exception(0x48uLL);
    v17[0] = v7;
    v17[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "Attribute output_dtype is undefined for constexpr_cast");
    MIL::ValidationError::ValidationError(exception, v17, &__p, 315);
  }

  v15 = __cxa_allocate_exception(0x48uLL);
  v17[0] = v7;
  v17[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "Attribute source_val is undefined for constexpr_cast");
  MIL::ValidationError::ValidationError(v15, v17, &__p, 315);
}

void sub_218210224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, std::__shared_weak_count *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v19)
  {
    __cxa_free_exception(v18);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::ConstexprCast::Make(MIL::MILContext &,std::string)::$_1,std::allocator<MIL::Operators::Common::ios16::ConstexprCast::Make(MIL::MILContext &,std::string)::$_1>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t std::unordered_set<unsigned long>::unordered_set(unint64_t a1, unint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(a1, a2, a2);
      ++a2;
      v5 -= 8;
    }

    while (v5);
  }

  return a1;
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EB9B8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Operators::Common::ios16::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::operator()(uint64_t a1, MIL::IRObject *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v11, "indices");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(a2, &v11, &v13);
  if (v12 < 0)
  {
    operator delete(v11);
  }

  std::string::basic_string[abi:ne200100]<0>(&v11, "lut");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(a2, &v11, &v10);
  if (v12 < 0)
  {
    operator delete(v11);
  }

  std::string::basic_string[abi:ne200100]<0>(&v11, "shape");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(a2, &v11, &v8);
  if (v12 < 0)
  {
    operator delete(v11);
  }

  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::Shared::ValidateAndGetShape(&v11);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v5 = (*(*v10 + 32))(v10);
  v6 = (*(*v5 + 88))(v5);
  MIL::IRTensorValueType::Make(*(a1 + 8), v6, &v11);
}

void sub_2182106D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2182108E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

MIL::Operators::Common::ios16::ConstExprs::LutToDense **std::unique_ptr<MIL::Operators::Common::ios16::ConstExprs::LutToDense>::~unique_ptr[abi:ne200100](MIL::Operators::Common::ios16::ConstExprs::LutToDense **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::Operators::Common::ios16::ConstExprs::LutToDense::~LutToDense(v2);
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void std::__function::__func<MIL::Operators::Common::ios16::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_1,std::allocator<MIL::Operators::Common::ios16::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_1>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::operator()(void x0_0, MIL::IRConstantDimension **a1, uint64_t *a2, void x3_0, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v6 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "lut");
  v8 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (v8)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "shape");
    v9 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if (v9)
    {
      v10 = MIL::IRValue::AsTensor(v9[5]);
      Data = MIL::IRTensorValue::GetDataView<unsigned int>(v10);
      v13 = v12;
      __p[0] = 0;
      __p[1] = 0;
      v21 = 0;
      std::vector<std::string const*>::reserve(__p, v12);
      if (v13)
      {
        v14 = 4 * v13;
        do
        {
          *&v22 = MIL::IRConstantDimension::Make(*a1, *Data);
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, &v22);
          ++Data;
          v14 -= 4;
        }

        while (v14);
      }

      v15 = MIL::IRValue::AsTensor(v8[5]);
      v16 = (*(*v15 + 32))(v15);
      v17 = (*(*v16 + 88))(v16);
      MIL::IRTensorValueType::MakeWithShape(*a1, v17, __p);
    }

    exception = __cxa_allocate_exception(0x48uLL);
    *&v22 = v7;
    *(&v22 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Attribute shape is undefined for constexpr_lut_to_dense");
    MIL::ValidationError::ValidationError(exception, &v22, __p, 315);
  }

  v18 = __cxa_allocate_exception(0x48uLL);
  *&v22 = v7;
  *(&v22 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Attribute lut is undefined for constexpr_lut_to_dense");
  MIL::ValidationError::ValidationError(v18, &v22, __p, 315);
}

void sub_218210C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
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

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_1,std::allocator<MIL::Operators::Common::ios16::ConstexprLutToDense::Make(MIL::MILContext &,std::string)::$_1>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EBAB8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Operators::Common::ios16::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::operator()(uint64_t a1, MIL::IRObject *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v11, "nonzero_data");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(a2, &v11, &v13);
  if (v12 < 0)
  {
    operator delete(v11);
  }

  std::string::basic_string[abi:ne200100]<0>(&v11, "mask");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(a2, &v11, &v10);
  if (v12 < 0)
  {
    operator delete(v11);
  }

  std::string::basic_string[abi:ne200100]<0>(&v11, "shape");
  MIL::Operators::Common::Shared::ValidateExistenceAndGetAttributeSharedPtr(a2, &v11, &v8);
  if (v12 < 0)
  {
    operator delete(v11);
  }

  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::Shared::ValidateAndGetShape(&v11);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v5 = (*(*v13 + 32))(v13);
  v6 = (*(*v5 + 88))(v5);
  MIL::IRTensorValueType::Make(*(a1 + 8), v6, &v11);
}

void sub_2182110D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios16::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2182112E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

MIL::Operators::Common::ios16::ConstExprs::SparseToDense **std::unique_ptr<MIL::Operators::Common::ios16::ConstExprs::SparseToDense>::~unique_ptr[abi:ne200100](MIL::Operators::Common::ios16::ConstExprs::SparseToDense **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::Operators::Common::ios16::ConstExprs::SparseToDense::~SparseToDense(v2);
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void std::__function::__func<MIL::Operators::Common::ios16::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_1,std::allocator<MIL::Operators::Common::ios16::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_1>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::operator()(void x0_0, MIL::IRConstantDimension **a1, uint64_t *a2, void x3_0, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v6 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "nonzero_data");
  v8 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (v8)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "shape");
    v9 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if (v9)
    {
      v10 = MIL::IRValue::AsTensor(v9[5]);
      Data = MIL::IRTensorValue::GetDataView<unsigned int>(v10);
      v13 = v12;
      __p[0] = 0;
      __p[1] = 0;
      v21 = 0;
      std::vector<std::string const*>::reserve(__p, v12);
      if (v13)
      {
        v14 = 4 * v13;
        do
        {
          *&v22 = MIL::IRConstantDimension::Make(*a1, *Data);
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, &v22);
          ++Data;
          v14 -= 4;
        }

        while (v14);
      }

      v15 = MIL::IRValue::AsTensor(v8[5]);
      v16 = (*(*v15 + 32))(v15);
      v17 = (*(*v16 + 88))(v16);
      MIL::IRTensorValueType::MakeWithShape(*a1, v17, __p);
    }

    exception = __cxa_allocate_exception(0x48uLL);
    *&v22 = v7;
    *(&v22 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Attribute shape is undefined for constexpr_sparse_to_dense");
    MIL::ValidationError::ValidationError(exception, &v22, __p, 315);
  }

  v18 = __cxa_allocate_exception(0x48uLL);
  *&v22 = v7;
  *(&v22 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Attribute nonzero_data is undefined for constexpr_sparse_to_dense");
  MIL::ValidationError::ValidationError(v18, &v22, __p, 315);
}

void sub_218211694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
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

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Operators::Common::ios16::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_1,std::allocator<MIL::Operators::Common::ios16::ConstexprSparseToDense::Make(MIL::MILContext &,std::string)::$_1>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::Impl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 24) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a1 + 40) = *a5;
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a1 + 56) = a6;
  MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::ValidateArgsAndTypeConstraints(a1);
  return a1;
}

void sub_2182117D0(_Unwind_Exception *a1)
{
  v3 = v1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::Impl(v1 + 4, v1 + 2);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::ValidateArgsAndTypeConstraints(MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl *this)
{
  std::string::basic_string[abi:ne200100]<0>(v42, "Constexpr-AffineDequantize");
  v2 = (*(**(this + 1) + 32))(*(this + 1));
  std::string::basic_string[abi:ne200100]<0>(&__p, "quantizedData");
  if (MIL::IRTensorValueType::Rank(v2) <= 0)
  {
    std::operator+<char>();
    v15 = std::string::append(&v46, ", parameter ");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
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

    v19 = std::string::append(&v47, p_p, size);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v48.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = std::string::append(&v48, " should have minimum rank equals to 1 but its provided rank is ");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = MIL::IRTensorValueType::Rank(v2);
    std::to_string(&v45, v23);
    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v45;
    }

    else
    {
      v24 = v45.__r_.__value_.__r.__words[0];
    }

    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v25 = v45.__r_.__value_.__l.__size_;
    }

    v26 = std::string::append(&v49, v24, v25);
    v27 = *&v26->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, &v50);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v3 = (*(**(this + 3) + 32))(*(this + 3));
  std::string::basic_string[abi:ne200100]<0>(&v50, "scale");
  MIL::Operators::Common::Shared::ConstExprs::AssertIsScalarOrVector(v3, &v50, v42);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  v4 = (*(**(this + 5) + 32))(*(this + 5));
  std::string::basic_string[abi:ne200100]<0>(&v50, "zeroPoint");
  MIL::Operators::Common::Shared::ConstExprs::AssertIsScalarOrVector(v4, &v50, v42);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  v5 = (*(**(this + 1) + 32))(*(this + 1));
  v6 = MIL::IRTensorValueType::Rank(v5);
  if (*(this + 7) >= v6)
  {
    std::operator+<char>();
    v29 = std::string::append(&v46, ", parameter axis should be in the range 0 <= axis < quantizedData.rank(=");
    v30 = *&v29->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v45, v6);
    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v45;
    }

    else
    {
      v31 = v45.__r_.__value_.__r.__words[0];
    }

    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v32 = v45.__r_.__value_.__l.__size_;
    }

    v33 = std::string::append(&v47, v31, v32);
    v34 = *&v33->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v48.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    v35 = std::string::append(&v48, ") but provided axis is ");
    v36 = *&v35->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, *(this + 7));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &__p;
    }

    else
    {
      v37 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = __p.__r_.__value_.__l.__size_;
    }

    v39 = std::string::append(&v49, v37, v38);
    v40 = *&v39->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    v41 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v41, &v50);
    __cxa_throw(v41, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v7 = (*(**(this + 1) + 32))(*(this + 1));
  v8 = (*(*v7 + 96))(v7);
  v9 = MIL::IRDimension::AsConstant(*(*v8 + 8 * *(this + 7)));
  v10 = (*(*v9 + 48))(v9);
  v11 = (*(**(this + 3) + 32))(*(this + 3));
  std::string::basic_string[abi:ne200100]<0>(&v50, "scale");
  std::string::basic_string[abi:ne200100]<0>(&v49, "axisDim");
  MIL::Operators::Common::Shared::ConstExprs::AssertVectorSizeSameAsDimension(v11, v10, &v50, &v49, v42);
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  v12 = (*(**(this + 5) + 32))(*(this + 5));
  std::string::basic_string[abi:ne200100]<0>(&v50, "zeroPoint");
  std::string::basic_string[abi:ne200100]<0>(&v49, "axisDim");
  MIL::Operators::Common::Shared::ConstExprs::AssertVectorSizeSameAsDimension(v12, v10, &v50, &v49, v42);
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  v13 = (*(**(this + 1) + 32))(*(this + 1));
  MIL::Operators::Common::Shared::ConstExprs::AssertExpectedOutputShape(v13, *this, v42);
  v14 = (*(**(this + 3) + 32))(*(this + 3));
  MIL::Operators::Common::Shared::ConstExprs::AssertExpectedOutputDType(v14, *this, v42);
  if (v43 < 0)
  {
    operator delete(v42[0]);
  }
}

void sub_218211E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (*(v45 - 41) < 0)
  {
    operator delete(*(v45 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::ComputeOutput(MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl *this)
{
  v3 = (*(**this + 96))(*this);
  v259 = 0;
  v260 = 0;
  v258 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v258, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 3);
  v4 = v258;
  if (v259 == v258)
  {
    v7 = 1;
    v6 = 1;
  }

  else
  {
    v5 = ((v259 - v258) >> 3) - 1;
    v6 = 1;
    v7 = 1;
    do
    {
      if (v5 == *(this + 7))
      {
        v7 = v6;
      }

      v8 = MIL::IRDimension::AsConstant(*(v258 + v5));
      v6 *= (*(*v8 + 48))(v8);
      --v5;
    }

    while (v5 != -1);
    v4 = v258;
  }

  v9 = MIL::IRDimension::AsConstant(v4[*(this + 7)]);
  v10 = (*(*v9 + 48))(v9);
  v11 = (*(**this + 88))();
  v12 = v11;
  if (v11 != 4)
  {
    if (v11 == 5)
    {
      v13 = *(this + 1);
      v14 = *(this + 2);
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v16 = *(this + 3);
      v15 = *(this + 4);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = *(this + 5);
      v17 = *(this + 6);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = (*(*v13 + 32))(v13);
      v20 = (*(*v19 + 88))(v19);
      v21 = v20;
      if (v20 == 9)
      {
        Data = MIL::IRTensorValue::GetDataView<signed char>(v13);
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v94 = (*(*v16 + 32))(v16);
        v95 = (*(*v94 + 88))(v94);
        v96 = v95;
        if (v95 != 5)
        {
          if (v95 == 4)
          {
            MIL::IRTensorValue::GetDataView<MIL::Fp16>(v16);
            if (v17)
            {
              atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Constexpr-AffineDequantize: output and scale type must be same.");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v231 = __cxa_allocate_exception(0x10uLL);
          MIL::IRDataTypeToString(v96, &v261);
          v232 = std::string::insert(&v261, 0, "Constexpr-AffineDequantize: Unsupported dType (");
          v233 = *&v232->__r_.__value_.__l.__data_;
          v262.__r_.__value_.__r.__words[2] = v232->__r_.__value_.__r.__words[2];
          *&v262.__r_.__value_.__l.__data_ = v233;
          v232->__r_.__value_.__l.__size_ = 0;
          v232->__r_.__value_.__r.__words[2] = 0;
          v232->__r_.__value_.__r.__words[0] = 0;
          v234 = std::string::append(&v262, ") for scale.");
          v235 = *&v234->__r_.__value_.__l.__data_;
          v263.__r_.__value_.__r.__words[2] = v234->__r_.__value_.__r.__words[2];
          *&v263.__r_.__value_.__l.__data_ = v235;
          v234->__r_.__value_.__l.__size_ = 0;
          v234->__r_.__value_.__r.__words[2] = 0;
          v234->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(v231, &v263);
          __cxa_throw(v231, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v97 = MIL::IRTensorValue::GetDataView<float>(v16);
        v99 = v98;
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v100 = (*(*v18 + 32))(v18);
        v101 = (*(*v100 + 88))(v100);
        v102 = v101;
        switch(v101)
        {
          case 5:
            v176 = MIL::IRTensorValue::GetDataView<float>(v18);
            v263.__r_.__value_.__r.__words[0] = v97;
            v263.__r_.__value_.__l.__size_ = v99;
            v262.__r_.__value_.__r.__words[0] = v176;
            v262.__r_.__value_.__l.__size_ = v177;
            std::vector<float>::vector[abi:ne200100](&__p, v6);
            if (v257 != __p)
            {
              v178 = 0;
              v179 = v10 * v7;
              do
              {
                if (v262.__r_.__value_.__l.__size_ == 1)
                {
                  v180 = 0;
                }

                else
                {
                  v180 = v178 % v179 / v7;
                }

                v181 = *MIL::Util::Span<float const,18446744073709551615ul>::At(&v262, v180);
                if (v263.__r_.__value_.__l.__size_ == 1)
                {
                  v182 = 0;
                }

                else
                {
                  v182 = v178 % v179 / v7;
                }

                v183 = MIL::Util::Span<float const,18446744073709551615ul>::At(&v263, v182);
                v184 = MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(v183, *(Data + v178), v181, *v183);
                v185 = __p;
                *(__p + v178++) = v184;
              }

              while (v178 < (v257 - v185) >> 2);
            }

            break;
          case 9:
            v134 = MIL::IRTensorValue::GetDataView<signed char>(v18);
            v263.__r_.__value_.__r.__words[0] = v97;
            v263.__r_.__value_.__l.__size_ = v99;
            v262.__r_.__value_.__r.__words[0] = v134;
            v262.__r_.__value_.__l.__size_ = v135;
            std::vector<float>::vector[abi:ne200100](&__p, v6);
            if (v257 != __p)
            {
              v136 = 0;
              v137 = v10 * v7;
              do
              {
                if (v262.__r_.__value_.__l.__size_ == 1)
                {
                  v138 = 0;
                }

                else
                {
                  v138 = v136 % v137 / v7;
                }

                v139 = *MIL::Util::Span<signed char const,18446744073709551615ul>::At(&v262, v138);
                if (v263.__r_.__value_.__l.__size_ == 1)
                {
                  v140 = 0;
                }

                else
                {
                  v140 = v136 % v137 / v7;
                }

                v141 = MIL::Util::Span<float const,18446744073709551615ul>::At(&v263, v140);
                v142 = MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(v141, *(Data + v136), v139, *v141);
                v143 = __p;
                *(__p + v136++) = v142;
              }

              while (v136 < (v257 - v143) >> 2);
            }

            break;
          case 14:
            v103 = MIL::IRTensorValue::GetDataView<unsigned char>(v18);
            v263.__r_.__value_.__r.__words[0] = v97;
            v263.__r_.__value_.__l.__size_ = v99;
            v262.__r_.__value_.__r.__words[0] = v103;
            v262.__r_.__value_.__l.__size_ = v104;
            std::vector<float>::vector[abi:ne200100](&__p, v6);
            if (v257 != __p)
            {
              v105 = 0;
              v106 = v10 * v7;
              do
              {
                if (v262.__r_.__value_.__l.__size_ == 1)
                {
                  v107 = 0;
                }

                else
                {
                  v107 = v105 % v106 / v7;
                }

                v108 = *MIL::Util::Span<unsigned char const,18446744073709551615ul>::At(&v262, v107);
                if (v263.__r_.__value_.__l.__size_ == 1)
                {
                  v109 = 0;
                }

                else
                {
                  v109 = v105 % v106 / v7;
                }

                v110 = MIL::Util::Span<float const,18446744073709551615ul>::At(&v263, v109);
                v111 = MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(v110, *(Data + v105), v108, *v110);
                v112 = __p;
                *(__p + v105++) = v111;
              }

              while (v105 < (v257 - v112) >> 2);
            }

            break;
          default:
            v251 = __cxa_allocate_exception(0x10uLL);
            MIL::IRDataTypeToString(v102, &v261);
            v252 = std::string::insert(&v261, 0, "Constexpr-AffineDequantize: Unsupported dType (");
            v253 = *&v252->__r_.__value_.__l.__data_;
            v262.__r_.__value_.__r.__words[2] = v252->__r_.__value_.__r.__words[2];
            *&v262.__r_.__value_.__l.__data_ = v253;
            v252->__r_.__value_.__l.__size_ = 0;
            v252->__r_.__value_.__r.__words[2] = 0;
            v252->__r_.__value_.__r.__words[0] = 0;
            v254 = std::string::append(&v262, ") for zeroPoint.");
            v255 = *&v254->__r_.__value_.__l.__data_;
            v263.__r_.__value_.__r.__words[2] = v254->__r_.__value_.__r.__words[2];
            *&v263.__r_.__value_.__l.__data_ = v255;
            v254->__r_.__value_.__l.__size_ = 0;
            v254->__r_.__value_.__r.__words[2] = 0;
            v254->__r_.__value_.__r.__words[0] = 0;
            std::runtime_error::runtime_error(v251, &v263);
            __cxa_throw(v251, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }
      }

      else
      {
        if (v20 != 14)
        {
          v206 = __cxa_allocate_exception(0x10uLL);
          MIL::IRDataTypeToString(v21, &v261);
          v207 = std::string::insert(&v261, 0, "Constexpr-AffineDequantize: Unsupported dType (");
          v208 = *&v207->__r_.__value_.__l.__data_;
          v262.__r_.__value_.__r.__words[2] = v207->__r_.__value_.__r.__words[2];
          *&v262.__r_.__value_.__l.__data_ = v208;
          v207->__r_.__value_.__l.__size_ = 0;
          v207->__r_.__value_.__r.__words[2] = 0;
          v207->__r_.__value_.__r.__words[0] = 0;
          v209 = std::string::append(&v262, ") for quantizedData.");
          v210 = *&v209->__r_.__value_.__l.__data_;
          v263.__r_.__value_.__r.__words[2] = v209->__r_.__value_.__r.__words[2];
          *&v263.__r_.__value_.__l.__data_ = v210;
          v209->__r_.__value_.__l.__size_ = 0;
          v209->__r_.__value_.__r.__words[2] = 0;
          v209->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(v206, &v263);
          __cxa_throw(v206, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v22 = MIL::IRTensorValue::GetDataView<unsigned char>(v13);
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = (*(*v16 + 32))(v16);
        v24 = (*(*v23 + 88))(v23);
        v25 = v24;
        if (v24 != 5)
        {
          if (v24 == 4)
          {
            MIL::IRTensorValue::GetDataView<MIL::Fp16>(v16);
            if (v17)
            {
              atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v202 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v202, "Constexpr-AffineDequantize: output and scale type must be same.");
            __cxa_throw(v202, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v216 = __cxa_allocate_exception(0x10uLL);
          MIL::IRDataTypeToString(v25, &v261);
          v217 = std::string::insert(&v261, 0, "Constexpr-AffineDequantize: Unsupported dType (");
          v218 = *&v217->__r_.__value_.__l.__data_;
          v262.__r_.__value_.__r.__words[2] = v217->__r_.__value_.__r.__words[2];
          *&v262.__r_.__value_.__l.__data_ = v218;
          v217->__r_.__value_.__l.__size_ = 0;
          v217->__r_.__value_.__r.__words[2] = 0;
          v217->__r_.__value_.__r.__words[0] = 0;
          v219 = std::string::append(&v262, ") for scale.");
          v220 = *&v219->__r_.__value_.__l.__data_;
          v263.__r_.__value_.__r.__words[2] = v219->__r_.__value_.__r.__words[2];
          *&v263.__r_.__value_.__l.__data_ = v220;
          v219->__r_.__value_.__l.__size_ = 0;
          v219->__r_.__value_.__r.__words[2] = 0;
          v219->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(v216, &v263);
          __cxa_throw(v216, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v26 = MIL::IRTensorValue::GetDataView<float>(v16);
        v28 = v27;
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v29 = (*(*v18 + 32))(v18);
        v30 = (*(*v29 + 88))(v29);
        v31 = v30;
        switch(v30)
        {
          case 5:
            v186 = MIL::IRTensorValue::GetDataView<float>(v18);
            v263.__r_.__value_.__r.__words[0] = v26;
            v263.__r_.__value_.__l.__size_ = v28;
            v262.__r_.__value_.__r.__words[0] = v186;
            v262.__r_.__value_.__l.__size_ = v187;
            std::vector<float>::vector[abi:ne200100](&__p, v6);
            if (v257 != __p)
            {
              v188 = 0;
              v189 = v10 * v7;
              do
              {
                if (v262.__r_.__value_.__l.__size_ == 1)
                {
                  v190 = 0;
                }

                else
                {
                  v190 = v188 % v189 / v7;
                }

                v191 = *MIL::Util::Span<float const,18446744073709551615ul>::At(&v262, v190);
                if (v263.__r_.__value_.__l.__size_ == 1)
                {
                  v192 = 0;
                }

                else
                {
                  v192 = v188 % v189 / v7;
                }

                v193 = MIL::Util::Span<float const,18446744073709551615ul>::At(&v263, v192);
                LOBYTE(v194) = *(v22 + v188);
                v195 = MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(v193, v194, v191, *v193);
                v196 = __p;
                *(__p + v188++) = v195;
              }

              while (v188 < (v257 - v196) >> 2);
            }

            break;
          case 9:
            v144 = MIL::IRTensorValue::GetDataView<signed char>(v18);
            v263.__r_.__value_.__r.__words[0] = v26;
            v263.__r_.__value_.__l.__size_ = v28;
            v262.__r_.__value_.__r.__words[0] = v144;
            v262.__r_.__value_.__l.__size_ = v145;
            std::vector<float>::vector[abi:ne200100](&__p, v6);
            if (v257 != __p)
            {
              v146 = 0;
              v147 = v10 * v7;
              do
              {
                if (v262.__r_.__value_.__l.__size_ == 1)
                {
                  v148 = 0;
                }

                else
                {
                  v148 = v146 % v147 / v7;
                }

                v149 = *MIL::Util::Span<signed char const,18446744073709551615ul>::At(&v262, v148);
                if (v263.__r_.__value_.__l.__size_ == 1)
                {
                  v150 = 0;
                }

                else
                {
                  v150 = v146 % v147 / v7;
                }

                v151 = MIL::Util::Span<float const,18446744073709551615ul>::At(&v263, v150);
                LOBYTE(v152) = *(v22 + v146);
                v153 = MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(v151, v152, v149, *v151);
                v154 = __p;
                *(__p + v146++) = v153;
              }

              while (v146 < (v257 - v154) >> 2);
            }

            break;
          case 14:
            v32 = MIL::IRTensorValue::GetDataView<unsigned char>(v18);
            v263.__r_.__value_.__r.__words[0] = v26;
            v263.__r_.__value_.__l.__size_ = v28;
            v262.__r_.__value_.__r.__words[0] = v32;
            v262.__r_.__value_.__l.__size_ = v33;
            std::vector<float>::vector[abi:ne200100](&__p, v6);
            if (v257 != __p)
            {
              v34 = 0;
              v35 = v10 * v7;
              do
              {
                if (v262.__r_.__value_.__l.__size_ == 1)
                {
                  v36 = 0;
                }

                else
                {
                  v36 = v34 % v35 / v7;
                }

                v37 = *MIL::Util::Span<unsigned char const,18446744073709551615ul>::At(&v262, v36);
                if (v263.__r_.__value_.__l.__size_ == 1)
                {
                  v38 = 0;
                }

                else
                {
                  v38 = v34 % v35 / v7;
                }

                v39 = MIL::Util::Span<float const,18446744073709551615ul>::At(&v263, v38);
                LOBYTE(v40) = *(v22 + v34);
                v41 = MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(v39, v40, v37, *v39);
                v42 = __p;
                *(__p + v34++) = v41;
              }

              while (v34 < (v257 - v42) >> 2);
            }

            break;
          default:
            v236 = __cxa_allocate_exception(0x10uLL);
            MIL::IRDataTypeToString(v31, &v261);
            v237 = std::string::insert(&v261, 0, "Constexpr-AffineDequantize: Unsupported dType (");
            v238 = *&v237->__r_.__value_.__l.__data_;
            v262.__r_.__value_.__r.__words[2] = v237->__r_.__value_.__r.__words[2];
            *&v262.__r_.__value_.__l.__data_ = v238;
            v237->__r_.__value_.__l.__size_ = 0;
            v237->__r_.__value_.__r.__words[2] = 0;
            v237->__r_.__value_.__r.__words[0] = 0;
            v239 = std::string::append(&v262, ") for zeroPoint.");
            v240 = *&v239->__r_.__value_.__l.__data_;
            v263.__r_.__value_.__r.__words[2] = v239->__r_.__value_.__r.__words[2];
            *&v263.__r_.__value_.__l.__data_ = v240;
            v239->__r_.__value_.__l.__size_ = 0;
            v239->__r_.__value_.__r.__words[2] = 0;
            v239->__r_.__value_.__r.__words[0] = 0;
            std::runtime_error::runtime_error(v236, &v263);
            __cxa_throw(v236, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }
      }

      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      MIL::IRTensorValueType::MakeFloat32Value();
    }

    v197 = __cxa_allocate_exception(0x10uLL);
    MIL::IRDataTypeToString(v12, &v261);
    v198 = std::string::insert(&v261, 0, "Constexpr-AffineDequantize: Unsupported ");
    v199 = *&v198->__r_.__value_.__l.__data_;
    v262.__r_.__value_.__r.__words[2] = v198->__r_.__value_.__r.__words[2];
    *&v262.__r_.__value_.__l.__data_ = v199;
    v198->__r_.__value_.__l.__size_ = 0;
    v198->__r_.__value_.__r.__words[2] = 0;
    v198->__r_.__value_.__r.__words[0] = 0;
    v200 = std::string::append(&v262, " output type");
    v201 = *&v200->__r_.__value_.__l.__data_;
    v263.__r_.__value_.__r.__words[2] = v200->__r_.__value_.__r.__words[2];
    *&v263.__r_.__value_.__l.__data_ = v201;
    v200->__r_.__value_.__l.__size_ = 0;
    v200->__r_.__value_.__r.__words[2] = 0;
    v200->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v197, &v263);
    __cxa_throw(v197, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v43 = *(this + 1);
  v44 = *(this + 2);
  if (v44)
  {
    atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
  }

  v46 = *(this + 3);
  v45 = *(this + 4);
  if (v45)
  {
    atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v48 = *(this + 5);
  v47 = *(this + 6);
  if (v47)
  {
    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v49 = (*(*v43 + 32))(v43);
  v50 = (*(*v49 + 88))(v49);
  v51 = v50;
  if (v50 == 9)
  {
    v73 = MIL::IRTensorValue::GetDataView<signed char>(v43);
    if (v45)
    {
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v74 = (*(*v46 + 32))(v46);
    v75 = (*(*v74 + 88))(v74);
    v76 = v75;
    if (v75 != 4)
    {
      if (v75 == 5)
      {
        MIL::IRTensorValue::GetDataView<float>(v46);
        if (v47)
        {
          atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v204 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v204, "Constexpr-AffineDequantize: output and scale type must be same.");
        __cxa_throw(v204, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v226 = __cxa_allocate_exception(0x10uLL);
      MIL::IRDataTypeToString(v76, &v261);
      v227 = std::string::insert(&v261, 0, "Constexpr-AffineDequantize: Unsupported dType (");
      v228 = *&v227->__r_.__value_.__l.__data_;
      v262.__r_.__value_.__r.__words[2] = v227->__r_.__value_.__r.__words[2];
      *&v262.__r_.__value_.__l.__data_ = v228;
      v227->__r_.__value_.__l.__size_ = 0;
      v227->__r_.__value_.__r.__words[2] = 0;
      v227->__r_.__value_.__r.__words[0] = 0;
      v229 = std::string::append(&v262, ") for scale.");
      v230 = *&v229->__r_.__value_.__l.__data_;
      v263.__r_.__value_.__r.__words[2] = v229->__r_.__value_.__r.__words[2];
      *&v263.__r_.__value_.__l.__data_ = v230;
      v229->__r_.__value_.__l.__size_ = 0;
      v229->__r_.__value_.__r.__words[2] = 0;
      v229->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(v226, &v263);
      __cxa_throw(v226, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v77 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v46);
    v79 = v78;
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v80 = (*(*v48 + 32))(v48);
    v81 = (*(*v80 + 88))(v80);
    v82 = v81;
    switch(v81)
    {
      case 5:
        v155 = MIL::IRTensorValue::GetDataView<float>(v48);
        v263.__r_.__value_.__r.__words[0] = v77;
        v263.__r_.__value_.__l.__size_ = v79;
        v262.__r_.__value_.__r.__words[0] = v155;
        v262.__r_.__value_.__l.__size_ = v156;
        std::vector<MIL::Fp16>::vector[abi:ne200100](&__p, v6);
        if (v257 != __p)
        {
          v157 = 0;
          v158 = v10 * v7;
          do
          {
            if (v262.__r_.__value_.__l.__size_ == 1)
            {
              v159 = 0;
            }

            else
            {
              v159 = v157 % v158 / v7;
            }

            v160 = *MIL::Util::Span<float const,18446744073709551615ul>::At(&v262, v159);
            if (v263.__r_.__value_.__l.__size_ == 1)
            {
              v161 = 0;
            }

            else
            {
              v161 = v157 % v158 / v7;
            }

            v162 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::At(&v263, v161);
            v163 = MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(*v162, *(v73 + v157), v160);
            v164 = __p;
            *(__p + v157++) = v163;
          }

          while (v157 < (v257 - v164) >> 1);
        }

        break;
      case 9:
        v113 = MIL::IRTensorValue::GetDataView<signed char>(v48);
        v263.__r_.__value_.__r.__words[0] = v77;
        v263.__r_.__value_.__l.__size_ = v79;
        v262.__r_.__value_.__r.__words[0] = v113;
        v262.__r_.__value_.__l.__size_ = v114;
        std::vector<MIL::Fp16>::vector[abi:ne200100](&__p, v6);
        if (v257 != __p)
        {
          v115 = 0;
          v116 = v10 * v7;
          do
          {
            if (v262.__r_.__value_.__l.__size_ == 1)
            {
              v117 = 0;
            }

            else
            {
              v117 = v115 % v116 / v7;
            }

            v118 = *MIL::Util::Span<signed char const,18446744073709551615ul>::At(&v262, v117);
            if (v263.__r_.__value_.__l.__size_ == 1)
            {
              v119 = 0;
            }

            else
            {
              v119 = v115 % v116 / v7;
            }

            v120 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::At(&v263, v119);
            v121 = MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(*v120, *(v73 + v115), v118);
            v122 = __p;
            *(__p + v115++) = v121;
          }

          while (v115 < (v257 - v122) >> 1);
        }

        break;
      case 14:
        v83 = MIL::IRTensorValue::GetDataView<unsigned char>(v48);
        v263.__r_.__value_.__r.__words[0] = v77;
        v263.__r_.__value_.__l.__size_ = v79;
        v262.__r_.__value_.__r.__words[0] = v83;
        v262.__r_.__value_.__l.__size_ = v84;
        std::vector<MIL::Fp16>::vector[abi:ne200100](&__p, v6);
        if (v257 != __p)
        {
          v85 = 0;
          v86 = v10 * v7;
          do
          {
            if (v262.__r_.__value_.__l.__size_ == 1)
            {
              v87 = 0;
            }

            else
            {
              v87 = v85 % v86 / v7;
            }

            v88 = *MIL::Util::Span<unsigned char const,18446744073709551615ul>::At(&v262, v87);
            if (v263.__r_.__value_.__l.__size_ == 1)
            {
              v89 = 0;
            }

            else
            {
              v89 = v85 % v86 / v7;
            }

            v90 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::At(&v263, v89);
            v91 = MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(*v90, *(v73 + v85), v88);
            v92 = __p;
            *(__p + v85++) = v91;
          }

          while (v85 < (v257 - v92) >> 1);
        }

        break;
      default:
        v246 = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v82, &v261);
        v247 = std::string::insert(&v261, 0, "Constexpr-AffineDequantize: Unsupported dType (");
        v248 = *&v247->__r_.__value_.__l.__data_;
        v262.__r_.__value_.__r.__words[2] = v247->__r_.__value_.__r.__words[2];
        *&v262.__r_.__value_.__l.__data_ = v248;
        v247->__r_.__value_.__l.__size_ = 0;
        v247->__r_.__value_.__r.__words[2] = 0;
        v247->__r_.__value_.__r.__words[0] = 0;
        v249 = std::string::append(&v262, ") for zeroPoint.");
        v250 = *&v249->__r_.__value_.__l.__data_;
        v263.__r_.__value_.__r.__words[2] = v249->__r_.__value_.__r.__words[2];
        *&v263.__r_.__value_.__l.__data_ = v250;
        v249->__r_.__value_.__l.__size_ = 0;
        v249->__r_.__value_.__r.__words[2] = 0;
        v249->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v246, &v263);
        __cxa_throw(v246, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    if (v50 != 14)
    {
      v211 = __cxa_allocate_exception(0x10uLL);
      MIL::IRDataTypeToString(v51, &v261);
      v212 = std::string::insert(&v261, 0, "Constexpr-AffineDequantize: Unsupported dType (");
      v213 = *&v212->__r_.__value_.__l.__data_;
      v262.__r_.__value_.__r.__words[2] = v212->__r_.__value_.__r.__words[2];
      *&v262.__r_.__value_.__l.__data_ = v213;
      v212->__r_.__value_.__l.__size_ = 0;
      v212->__r_.__value_.__r.__words[2] = 0;
      v212->__r_.__value_.__r.__words[0] = 0;
      v214 = std::string::append(&v262, ") for quantizedData.");
      v215 = *&v214->__r_.__value_.__l.__data_;
      v263.__r_.__value_.__r.__words[2] = v214->__r_.__value_.__r.__words[2];
      *&v263.__r_.__value_.__l.__data_ = v215;
      v214->__r_.__value_.__l.__size_ = 0;
      v214->__r_.__value_.__r.__words[2] = 0;
      v214->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(v211, &v263);
      __cxa_throw(v211, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v52 = MIL::IRTensorValue::GetDataView<unsigned char>(v43);
    if (v45)
    {
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v53 = (*(*v46 + 32))(v46);
    v54 = (*(*v53 + 88))(v53);
    v55 = v54;
    if (v54 != 4)
    {
      if (v54 == 5)
      {
        MIL::IRTensorValue::GetDataView<float>(v46);
        if (v47)
        {
          atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v203 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v203, "Constexpr-AffineDequantize: output and scale type must be same.");
        __cxa_throw(v203, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v221 = __cxa_allocate_exception(0x10uLL);
      MIL::IRDataTypeToString(v55, &v261);
      v222 = std::string::insert(&v261, 0, "Constexpr-AffineDequantize: Unsupported dType (");
      v223 = *&v222->__r_.__value_.__l.__data_;
      v262.__r_.__value_.__r.__words[2] = v222->__r_.__value_.__r.__words[2];
      *&v262.__r_.__value_.__l.__data_ = v223;
      v222->__r_.__value_.__l.__size_ = 0;
      v222->__r_.__value_.__r.__words[2] = 0;
      v222->__r_.__value_.__r.__words[0] = 0;
      v224 = std::string::append(&v262, ") for scale.");
      v225 = *&v224->__r_.__value_.__l.__data_;
      v263.__r_.__value_.__r.__words[2] = v224->__r_.__value_.__r.__words[2];
      *&v263.__r_.__value_.__l.__data_ = v225;
      v224->__r_.__value_.__l.__size_ = 0;
      v224->__r_.__value_.__r.__words[2] = 0;
      v224->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(v221, &v263);
      __cxa_throw(v221, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v56 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v46);
    v58 = v57;
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v59 = (*(*v48 + 32))(v48);
    v60 = (*(*v59 + 88))(v59);
    v61 = v60;
    switch(v60)
    {
      case 5:
        v165 = MIL::IRTensorValue::GetDataView<float>(v48);
        v263.__r_.__value_.__r.__words[0] = v56;
        v263.__r_.__value_.__l.__size_ = v58;
        v262.__r_.__value_.__r.__words[0] = v165;
        v262.__r_.__value_.__l.__size_ = v166;
        std::vector<MIL::Fp16>::vector[abi:ne200100](&__p, v6);
        if (v257 != __p)
        {
          v167 = 0;
          v168 = v10 * v7;
          do
          {
            if (v262.__r_.__value_.__l.__size_ == 1)
            {
              v169 = 0;
            }

            else
            {
              v169 = v167 % v168 / v7;
            }

            v170 = *MIL::Util::Span<float const,18446744073709551615ul>::At(&v262, v169);
            if (v263.__r_.__value_.__l.__size_ == 1)
            {
              v171 = 0;
            }

            else
            {
              v171 = v167 % v168 / v7;
            }

            v172 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::At(&v263, v171);
            LOBYTE(v173) = *(v52 + v167);
            v174 = MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(*v172, v173, v170);
            v175 = __p;
            *(__p + v167++) = v174;
          }

          while (v167 < (v257 - v175) >> 1);
        }

        break;
      case 9:
        v123 = MIL::IRTensorValue::GetDataView<signed char>(v48);
        v263.__r_.__value_.__r.__words[0] = v56;
        v263.__r_.__value_.__l.__size_ = v58;
        v262.__r_.__value_.__r.__words[0] = v123;
        v262.__r_.__value_.__l.__size_ = v124;
        std::vector<MIL::Fp16>::vector[abi:ne200100](&__p, v6);
        if (v257 != __p)
        {
          v125 = 0;
          v126 = v10 * v7;
          do
          {
            if (v262.__r_.__value_.__l.__size_ == 1)
            {
              v127 = 0;
            }

            else
            {
              v127 = v125 % v126 / v7;
            }

            v128 = *MIL::Util::Span<signed char const,18446744073709551615ul>::At(&v262, v127);
            if (v263.__r_.__value_.__l.__size_ == 1)
            {
              v129 = 0;
            }

            else
            {
              v129 = v125 % v126 / v7;
            }

            v130 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::At(&v263, v129);
            LOBYTE(v131) = *(v52 + v125);
            v132 = MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(*v130, v131, v128);
            v133 = __p;
            *(__p + v125++) = v132;
          }

          while (v125 < (v257 - v133) >> 1);
        }

        break;
      case 14:
        v62 = MIL::IRTensorValue::GetDataView<unsigned char>(v48);
        v263.__r_.__value_.__r.__words[0] = v56;
        v263.__r_.__value_.__l.__size_ = v58;
        v262.__r_.__value_.__r.__words[0] = v62;
        v262.__r_.__value_.__l.__size_ = v63;
        std::vector<MIL::Fp16>::vector[abi:ne200100](&__p, v6);
        if (v257 != __p)
        {
          v64 = 0;
          v65 = v10 * v7;
          do
          {
            if (v262.__r_.__value_.__l.__size_ == 1)
            {
              v66 = 0;
            }

            else
            {
              v66 = v64 % v65 / v7;
            }

            v67 = *MIL::Util::Span<unsigned char const,18446744073709551615ul>::At(&v262, v66);
            if (v263.__r_.__value_.__l.__size_ == 1)
            {
              v68 = 0;
            }

            else
            {
              v68 = v64 % v65 / v7;
            }

            v69 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::At(&v263, v68);
            LOBYTE(v70) = *(v52 + v64);
            v71 = MIL::Operators::Common::Shared::ConstExprs::DequantizeExpression(*v69, v70, v67);
            v72 = __p;
            *(__p + v64++) = v71;
          }

          while (v64 < (v257 - v72) >> 1);
        }

        break;
      default:
        v241 = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v61, &v261);
        v242 = std::string::insert(&v261, 0, "Constexpr-AffineDequantize: Unsupported dType (");
        v243 = *&v242->__r_.__value_.__l.__data_;
        v262.__r_.__value_.__r.__words[2] = v242->__r_.__value_.__r.__words[2];
        *&v262.__r_.__value_.__l.__data_ = v243;
        v242->__r_.__value_.__l.__size_ = 0;
        v242->__r_.__value_.__r.__words[2] = 0;
        v242->__r_.__value_.__r.__words[0] = 0;
        v244 = std::string::append(&v262, ") for zeroPoint.");
        v245 = *&v244->__r_.__value_.__l.__data_;
        v263.__r_.__value_.__r.__words[2] = v244->__r_.__value_.__r.__words[2];
        *&v263.__r_.__value_.__l.__data_ = v245;
        v244->__r_.__value_.__l.__size_ = 0;
        v244->__r_.__value_.__r.__words[2] = 0;
        v244->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v241, &v263);
        __cxa_throw(v241, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  MIL::IRTensorValueType::MakeFloat16Value();
}