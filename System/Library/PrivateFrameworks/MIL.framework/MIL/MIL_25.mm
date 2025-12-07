void sub_21819E00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a15)
  {
    (*(*a15 + 8))(a15, a2, a3, a4, a5, a6, a7, a8);
  }

  __cxa_free_exception(v17);
  _Unwind_Resume(a1);
}

MIL::Operators::Common::ios15::_anonymous_namespace_ *MIL::Operators::Common::ios15::anonymous namespace::GetCompatibleDim(MIL::Operators::Common::ios15::_anonymous_namespace_ *this, const MIL::IRDimension *a2, const MIL::IRDimension *a3)
{
  v3 = a2;
  v5 = (*(*this + 16))(this, a2, a3);
  v6 = (*(*v3 + 16))(v3);
  if (v5)
  {
    v7 = v6;
    if (v6)
    {
      v8 = (*(*v5 + 48))(v5);
      v3 = this;
      if (v8 != (*(*v7 + 48))(v7))
      {
        __cxa_allocate_exception(0x48uLL);
        MIL::UnknownLocation::Make();
      }
    }

    else
    {
      return this;
    }
  }

  return v3;
}

void sub_21819E27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a15)
  {
    (*(*a15 + 8))(a15, a2, a3, a4, a5, a6, a7, a8);
  }

  __cxa_free_exception(v17);
  _Unwind_Resume(a1);
}

char *std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const**>,std::__wrap_iter<MIL::IRDimension const**>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
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
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(a1, v15);
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

void std::__function::__func<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::operator()(MIL::IRObject *a1@<X1>, void *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "val");
  MIL::IRObject::TryGetAttributeSharedPtr(a1, __p, a2);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v6 = LocationPtr[1];
    *&v7 = *LocationPtr;
    *(&v7 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    (*(*a1 + 56))(a1);
    std::operator+<char>();
    MIL::ValidationError::ValidationError(exception, &v7, __p, 321);
  }
}

void sub_21819E6DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
    if ((v19 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v19)
  {
LABEL_8:
    v21 = *(v17 + 8);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v18);
  goto LABEL_8;
}

uint64_t std::__function::__func<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_0,std::allocator<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_1,std::allocator<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_1>,void ()(MIL::IROperation &,std::shared_ptr<MIL::IRValue const>)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "val");
  *&v6 = v5;
  *(&v6 + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::IRObject::SetAttribute(a2, __p, &v6);
  if (*(&v6 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6 + 1));
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_21819E8C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_1,std::allocator<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_1>,void ()(MIL::IROperation &,std::shared_ptr<MIL::IRValue const>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_2,std::allocator<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_2>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::operator()(uint64_t *a1@<X2>, void *a2@<X4>, uint64_t *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v5 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "val");
  v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &__p);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  if (!v7)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    *&v9 = v6;
    *(&v9 + 1) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "Attribute val is undefined for const");
    MIL::ValidationError::ValidationError(exception, &v9, &__p, 315);
  }

  __p = (*(*v7[5] + 32))(v7[5]);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  std::vector<MIL::IRValueType const*>::__init_with_size[abi:ne200100]<MIL::IRValueType const* const*,MIL::IRValueType const* const*>(a3, &__p, &v11, 1uLL);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_21819EB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
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

uint64_t std::__function::__func<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_2,std::allocator<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_2>,std::vector<MIL::IRValueType const*> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_3,std::allocator<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_3>,std::vector<std::shared_ptr<MIL::IRValue const>> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>::operator()(uint64_t *a1@<X2>, void *a2@<X4>, uint64_t *a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v5 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "val");
  v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &__p);
  if ((v13[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  if (!v7)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    *&v10 = v6;
    *(&v10 + 1) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "Attribute val is undefined for const");
    MIL::ValidationError::ValidationError(exception, &v10, &__p, 315);
  }

  v8 = v7[6];
  __p = v7[5];
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<std::shared_ptr<MIL::IRValue const>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRValue const> const*,std::shared_ptr<MIL::IRValue const> const*>(a3, &__p, v13, 1uLL);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_21819EDD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
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

uint64_t std::__function::__func<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_3,std::allocator<MIL::Operators::Common::ios15::Const::Make(MIL::MILContext &,std::string)::$_3>,std::vector<std::shared_ptr<MIL::IRValue const>> ()(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRValue const>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::shared_ptr<MIL::IRBlock>> const&,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MIL::Operators::Common::ios15::Cond::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_21819F1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, __int16 a28, char a29, char a30)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a21, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a27, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Select::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181A0010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  v57 = *(v55 - 112);
  *(v55 - 112) = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57, a2, a3, a4, a5, a6, a7, a8);
  }

  v58 = *v54;
  *v54 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v55 - 120), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::WhileLoop::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181A0CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v54 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateBatchNorm(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this, __p);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = 0;
  while (1)
  {
    v7 = off_2782363A0[v6];
    std::string::basic_string[abi:ne200100]<0>(__p, v7);
    IsParameterSet = MIL::IROperation::IsParameterSet(this, __p);
    v9 = IsParameterSet;
    if ((v19 & 0x80000000) == 0)
    {
      break;
    }

    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_16:
    if (++v6 == 4)
    {
      MIL::ValidationResult::ValidationResult(a2);
      return;
    }
  }

  if (!IsParameterSet)
  {
    goto LABEL_16;
  }

LABEL_8:
  std::string::basic_string[abi:ne200100]<0>(v16, v7);
  v10 = MIL::IROperation::GetParameterType(this, v16);
  v11 = MIL::IRValueType::AsTensorType(v10);
  std::string::basic_string[abi:ne200100]<0>(v14, "x");
  std::string::basic_string[abi:ne200100]<0>(&v12, v7);
  MIL::Validation::VerifyDimSizeIsNumChannels(v5, v11, v14, this, 0, __p);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if ((*(__p[0] + 2))(__p))
  {
    MIL::ValidationResult::~ValidationResult(__p);
    goto LABEL_16;
  }

  MIL::MILResult::MILResult(a2, __p);
  *a2 = &unk_2829E9B70;
  *(a2 + 12) = v20;
  MIL::ValidationResult::~ValidationResult(__p);
}

void MIL::Operators::Common::ios15::BatchNorm::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181A2D38(_Unwind_Exception *a1)
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
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x3E8], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::InstanceNorm::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181A4BBC(_Unwind_Exception *a1)
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
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2C8], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::L2Norm::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181A609C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v66 - 72), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a65, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::LayerNorm::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181A774C(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 136), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::LocalResponseNorm::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181A8F34(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 72), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x278], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateBasePool(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v68, "x");
  ParameterType = MIL::IROperation::GetParameterType(this, &v68);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (((*(*v5 + 104))(v5) & 1) == 0)
  {
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  v6 = MIL::IRTensorValueType::Rank(v5);
  std::string::basic_string[abi:ne200100]<0>(&v68, "pad");
  ParameterValue = MIL::IROperation::GetParameterValue(this, &v68);
  v8 = MIL::IRValue::AsTensor(ParameterValue);
  v9 = v6 - 2;
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  v10 = (*(*v8 + 32))(v8);
  if ((*(*v10 + 16))(v10) != 2 * v9)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v21 = LocationPtr[1];
    *&v67 = *LocationPtr;
    *(&v67 + 1) = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v65, "Attribute 'pad' invalid: should be length of 2 * spatial rank");
    MIL::ValidationResult::ValidationResult(a2, &v67, 315, v65);
    if (v66 < 0)
    {
      operator delete(v65[0]);
    }

    if (*(&v67 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v67 + 1));
    }

    return;
  }

  v11 = MIL::IRValue::AsTensor(v8);
  Data = MIL::IRTensorValue::GetDataView<int>(v11);
  v14 = Data;
  v15 = v13;
  if (!v13)
  {
LABEL_11:
    std::string::basic_string[abi:ne200100]<0>(&v63, "pad_type");
    v18 = MIL::IROperation::GetParameterValue(this, &v63);
    MIL::IRValue::GetScalar<std::string>(v18, &v68);
    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v68.__r_.__value_.__l.__size_ != 5)
      {
        goto LABEL_38;
      }

      v19 = v68.__r_.__value_.__r.__words[0];
      if (!v15)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) != 5)
      {
        goto LABEL_38;
      }

      v19 = &v68;
      if (!v15)
      {
        goto LABEL_38;
      }
    }

    if (!(LODWORD(v19->__r_.__value_.__l.__data_) ^ 0x696C6176 | v19->__r_.__value_.__s.__data_[4] ^ 0x64))
    {
      v30 = 4 * v15;
      v31 = v14;
      while (!*v31)
      {
        ++v31;
        v30 -= 4;
        if (!v30)
        {
          goto LABEL_38;
        }
      }

      v44 = MIL::IRObject::GetLocationPtr(this);
      v45 = v44[1];
      *&v60 = *v44;
      *(&v60 + 1) = v45;
      if (v45)
      {
        atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v58, "Pad values must be 0s for 'valid' pad type.");
      MIL::ValidationResult::ValidationResult(a2, &v60, 315, v58);
      if (v59 < 0)
      {
        operator delete(v58[0]);
      }

      v41 = *(&v60 + 1);
      if (*(&v60 + 1))
      {
LABEL_79:
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      goto LABEL_90;
    }

LABEL_38:
    std::string::basic_string[abi:ne200100]<0>(&v63, "ceil_mode");
    IsParameterSet = MIL::IROperation::IsParameterSet(this, &v63.__r_.__value_.__l.__data_);
    v33 = IsParameterSet;
    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
      if (!v33)
      {
        goto LABEL_89;
      }
    }

    else if (!IsParameterSet)
    {
      goto LABEL_89;
    }

    std::string::basic_string[abi:ne200100]<0>(&v63, "ceil_mode");
    v34 = MIL::IROperation::GetParameterValue(this, &v63);
    v35 = MIL::IRValue::GetScalar<BOOL>(v34);
    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    if (v36 == 1)
    {
      v37 = v14 + 1;
      v38 = v9;
      do
      {
        if (*(v37 - 1) != *v37)
        {
          v46 = MIL::IRObject::GetLocationPtr(this);
          v47 = v46[1];
          *&v57 = *v46;
          *(&v57 + 1) = v47;
          if (v47)
          {
            atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v55, "Padding must be symmetric if ceil_mode is True");
          MIL::ValidationResult::ValidationResult(a2, &v57, 315, v55);
          if (v56 < 0)
          {
            operator delete(v55[0]);
          }

          v41 = *(&v57 + 1);
          if (!*(&v57 + 1))
          {
            goto LABEL_90;
          }

          goto LABEL_79;
        }

        v37 += 2;
        --v38;
      }

      while (v38);
      if (v9 < 3)
      {
        goto LABEL_58;
      }

      v39 = MIL::IRObject::GetLocationPtr(this);
      v40 = v39[1];
      *&v54 = *v39;
      *(&v54 + 1) = v40;
      if (v40)
      {
        atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "ceil_mode must be False when there are 3 spatial dimensions (3D pool)");
      MIL::ValidationResult::ValidationResult(a2, &v54, 315, __p);
      if (v53 < 0)
      {
        operator delete(__p[0]);
      }

      v41 = *(&v54 + 1);
      if (*(&v54 + 1))
      {
        goto LABEL_79;
      }

      goto LABEL_90;
    }

LABEL_58:
    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v68.__r_.__value_.__l.__size_ != 4)
      {
        goto LABEL_83;
      }

      v42 = v68.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) != 4)
      {
        goto LABEL_83;
      }

      v42 = &v68;
    }

    if (LODWORD(v42->__r_.__value_.__l.__data_) == 1701667187)
    {
      if (v35)
      {
        goto LABEL_84;
      }

      goto LABEL_89;
    }

LABEL_83:
    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v68, "same_lower") & v35)
    {
LABEL_84:
      std::operator+<char>();
      v48 = MIL::IRObject::GetLocationPtr(this);
      v49 = v48[1];
      *&v51 = *v48;
      *(&v51 + 1) = v49;
      if (v49)
      {
        atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v50, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
      }

      else
      {
        v50 = v63;
      }

      MIL::ValidationResult::ValidationResult(a2, &v51, 315, &v50);
      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      if (*(&v51 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v51 + 1));
      }

      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      goto LABEL_90;
    }

LABEL_89:
    MIL::ValidationResult::ValidationResult(a2);
LABEL_90:
    if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    v43 = v68.__r_.__value_.__r.__words[0];
    goto LABEL_92;
  }

  v16 = 4 * v13;
  v17 = Data;
  while (*v17 < 0x8000)
  {
    ++v17;
    v16 -= 4;
    if (!v16)
    {
      goto LABEL_11;
    }
  }

  std::to_string(&v63, 0x7FFF);
  v22 = std::string::insert(&v63, 0, "At least one of pad values exceed maximum allowed values (");
  v23 = *&v22->__r_.__value_.__l.__data_;
  v68.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v68.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = std::string::append(&v68, ").");
  v25 = v24->__r_.__value_.__r.__words[0];
  size = v24->__r_.__value_.__l.__size_;
  v64[0] = v24->__r_.__value_.__r.__words[2];
  *(v64 + 3) = *(&v24->__r_.__value_.__r.__words[2] + 3);
  v27 = SHIBYTE(v24->__r_.__value_.__r.__words[2]);
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  v28 = MIL::IRObject::GetLocationPtr(this);
  v29 = v28[1];
  *&v62 = *v28;
  *(&v62 + 1) = v29;
  if (v29)
  {
    atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
  }

  if (v27 < 0)
  {
    std::string::__init_copy_ctor_external(&v61, v25, size);
  }

  else
  {
    v61.__r_.__value_.__r.__words[0] = v25;
    v61.__r_.__value_.__l.__size_ = size;
    LODWORD(v61.__r_.__value_.__r.__words[2]) = v64[0];
    *(&v61.__r_.__value_.__r.__words[2] + 3) = *(v64 + 3);
    *(&v61.__r_.__value_.__s + 23) = v27;
  }

  MIL::ValidationResult::ValidationResult(a2, &v62, 315, &v61);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (*(&v62 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v62 + 1));
  }

  if (v27 < 0)
  {
    v43 = v25;
LABEL_92:
    operator delete(v43);
  }
}

void sub_2181A9C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (*(v48 - 145) < 0)
  {
    operator delete(*(v48 - 168));
  }

  if (*(v48 - 73) < 0)
  {
    operator delete(*(v48 - 96));
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateL2Pool(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this, __p);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if ((*(*v5 + 104))(v5) && MIL::IRTensorValueType::Rank(v5) == 5)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v7 = LocationPtr[1];
    *&v10 = *LocationPtr;
    *(&v10 + 1) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v8, "Unsupported 3D Pooling type.");
    MIL::ValidationResult::ValidationResult(a2, &v10, 315, v8);
    if (v9 < 0)
    {
      operator delete(v8[0]);
    }

    if (*(&v10 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
    }
  }

  else
  {
    MIL::Operators::Common::ios15::CustomValidators::ValidateBasePool(this, a2);
  }
}

void sub_2181A9ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceBasePool(MIL::IRConstantDimension **a1, void x1_0, void *a2)
{
  v52[1] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v50, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, &v50);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  v7 = (*(*v6 + 88))(v6);
  v8 = (*(*v6 + 96))(v6);
  std::string::basic_string[abi:ne200100]<0>(&v50, "pad");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, &v50);
  v10 = MIL::IRValue::AsTensor(SingleValue);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "pad_type");
  v11 = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, &__p);
  MIL::IRValue::GetScalar<std::string>(v11, &v50);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "ceil_mode");
  v12 = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, &__p);
  v13 = MIL::IRValue::GetScalar<BOOL>(v12);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "strides");
  v14 = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, &__p);
  v15 = MIL::IRValue::AsTensor(v14);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "kernel_sizes");
  v16 = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, &__p);
  v17 = MIL::IRValue::AsTensor(v16);
  Data = MIL::IRTensorValue::GetDataView<int>(v17);
  v20 = v19;
  v38 = v8;
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p);
  }

  v21 = v13;
  __p = 0;
  v48 = 0;
  v49 = 0;
  std::vector<std::string const*>::reserve(&__p, v20);
  if (v20)
  {
    v22 = 4 * v20;
    do
    {
      v23 = MIL::IRConstantDimension::Make(*a1, *Data);
      v24 = v48;
      if (v48 >= v49)
      {
        v26 = (v48 - __p) >> 3;
        if ((v26 + 1) >> 61)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v27 = (v49 - __p) >> 2;
        if (v27 <= v26 + 1)
        {
          v27 = v26 + 1;
        }

        if (v49 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v27;
        }

        if (v28)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(&__p, v28);
        }

        v29 = (8 * v26);
        *v29 = v23;
        v25 = 8 * v26 + 8;
        v30 = v29 - (v48 - __p);
        memcpy(v30, __p, v48 - __p);
        v31 = __p;
        __p = v30;
        v48 = v25;
        v49 = 0;
        if (v31)
        {
          operator delete(v31);
        }
      }

      else
      {
        *v48 = v23;
        v25 = (v24 + 8);
      }

      v48 = v25;
      ++Data;
      v22 -= 4;
    }

    while (v22);
  }

  v32 = MIL::IRTensorValue::GetDataView<int>(v15);
  memset(v46, 0, sizeof(v46));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v46, v32, &v32[v33], (4 * v33) >> 2);
  v34 = MIL::IRTensorValue::GetDataView<int>(v10);
  memset(v45, 0, sizeof(v45));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v45, v34, &v34[v35], (4 * v35) >> 2);
  v36 = *a1;
  v37 = (v38[1] - *v38) >> 3;
  MIL::ValueTypeInferenceUtils::SliceShape(v38, 2uLL, v37, &v40);
  v39 = 1;
  std::vector<int>::vector[abi:ne200100](&v51, v37 - 2, &v39);
  MIL::ValueTypeInferenceUtils::GetSpatialDimensionsOutShape(v36, &v40, &__p, v46, &v51, &v50, v45, v21, &v43);
  if (v51)
  {
    *(&v51 + 1) = v51;
    operator delete(v51);
  }

  if (v40)
  {
    __dst = v40;
    operator delete(v40);
  }

  v51 = **v38;
  __dst = 0;
  v42 = 0;
  v40 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(&v40, &v51, v52, 2uLL);
  std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const* const*>,std::__wrap_iter<MIL::IRDimension const* const*>>(&v40, __dst, v43, v44, (v44 - v43) >> 3);
  MIL::IRTensorValueType::MakeWithShape(*a1, v7, &v40);
}

void sub_2181AA3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (*(v32 - 129) < 0)
  {
    operator delete(*(v32 - 152));
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::BasePool::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_2181ABC14(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 88), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2F0], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::BaseAvgPool::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_2181ADBE0(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 88), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x300], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::AvgPool::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseAvgPool::Make();
}

void sub_2181AE4A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::L2Pool::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_2829EA4C8;
  v3[1] = MIL::Operators::Common::ios15::CustomValidators::ValidateL2Pool;
  v3[3] = v3;
  MIL::Operators::Common::ios15::BasePool::Make();
}

void sub_2181AE580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::MaxPool::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BasePool::Make();
}

void sub_2181AE634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2181AE6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[29],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_2181AE79C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateRandomBernoulli(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "shape");
  ParameterType = MIL::IROperation::GetParameterType(this, __p);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  v6 = (*(*v5 + 96))(v5);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v14, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = (*(*this + 56))(this);
  std::string::basic_string[abi:ne200100]<0>(__p, "shape");
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v9 = LocationPtr[1];
  v10 = *LocationPtr;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(&v14, v7, &v10, a2);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_2181AE900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateRandomCategorical(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this, __p);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  v6 = (*(*v5 + 96))(v5);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v14, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = (*(*this + 56))(this);
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v9 = LocationPtr[1];
  v10 = *LocationPtr;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(&v14, v7, &v10, a2);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_2181AEAA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateRandomNormal(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "shape");
  ParameterType = MIL::IROperation::GetParameterType(this, __p);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  v6 = (*(*v5 + 96))(v5);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v14, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = (*(*this + 56))(this);
  std::string::basic_string[abi:ne200100]<0>(__p, "shape");
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v9 = LocationPtr[1];
  v10 = *LocationPtr;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(&v14, v7, &v10, a2);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_2181AEC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateRandomUniform(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "shape");
  ParameterType = MIL::IROperation::GetParameterType(this, __p);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  v6 = (*(*v5 + 96))(v5);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v14, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = (*(*this + 56))(this);
  std::string::basic_string[abi:ne200100]<0>(__p, "shape");
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v9 = LocationPtr[1];
  v10 = *LocationPtr;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(&v14, v7, &v10, a2);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_2181AEDF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceRandomBernoulli(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "random_bernoulli");
  std::string::basic_string[abi:ne200100]<0>(__p, "prob");
}

void sub_2181AEF10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::anonymous namespace::ValueTypeInferenceRandomOpHelper(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v31[4] = *MEMORY[0x277D85DE8];
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, a5);
  v11 = MIL::IRValueType::AsTensorType(SingleValueType);
  v12 = (*(*v11 + 88))(v11);
  std::string::basic_string[abi:ne200100]<0>(__p, "shape");
  v13 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v14 = MIL::IRValueType::AsTensorType(v13);
  v15 = (*(*v14 + 96))(v14);
  memset(v31, 0, 24);
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v31, *v15, *(v15 + 8), (*(v15 + 8) - *v15) >> 3);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(&v26, "shape");
  v16 = a2[1];
  v24 = *a2;
  v25 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(v31, a4, &v24, __p);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v27 < 0)
  {
    operator delete(v26);
  }

  if (MIL::ValidationResult::IsGood(__p))
  {
    std::string::basic_string[abi:ne200100]<0>(&v26, "shape");
    SingleValue = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, &v26);
    if (v27 < 0)
    {
      operator delete(v26);
    }

    v18 = *a1;
    v19 = a2[1];
    v21[0] = *a2;
    v21[1] = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    MIL::ValueTypeInferenceUtils::GetRandomOpOutShape(SingleValue, a1, v31, v21, &v26);
    MIL::IRTensorValueType::MakeWithShape(v18, v12, &v26);
  }

  exception = __cxa_allocate_exception(0x48uLL);
  MIL::MILResult::MILResult(v22, __p);
  v22[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
  v23 = v30;
  MIL::ValidationError::ValidationError(exception, v22);
}

void sub_2181AF220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  MIL::ValidationResult::~ValidationResult(&a11);
  MIL::ValidationResult::~ValidationResult(&a26);
  v33 = *(v31 - 104);
  if (v33)
  {
    *(v31 - 96) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceRandomCategorical(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v8 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = (*(*v8 + 88))(v8);
  v10 = (*(*v8 + 96))(v8);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v32, *v10, *(v10 + 8), (*(v10 + 8) - *v10) >> 3);
  if ((v33 - v32) > 8)
  {
    std::string::basic_string[abi:ne200100]<0>(&v25, "random_categorical");
    std::string::basic_string[abi:ne200100]<0>(&v35, "x");
    v11 = a2[1];
    v23 = *a2;
    v24 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(&v32, &v25, &v23, __p);
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    if (v36 < 0)
    {
      operator delete(v35);
    }

    if (v26 < 0)
    {
      operator delete(v25);
    }

    if (MIL::ValidationResult::IsGood(__p))
    {
      std::string::basic_string[abi:ne200100]<0>(&v25, "size");
      SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v25);
      v13 = MIL::IRValue::AsTensor(SingleValue);
      v14 = MIL::IRValue::GetScalar<int>(v13);
      if (v26 < 0)
      {
        operator delete(v25);
      }

      v15 = *a1;
      v16 = a2[1];
      v20[0] = *a2;
      v20[1] = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      MIL::ValueTypeInferenceUtils::GetRandomCategoricalOutShape(a1, v20, &v32, v14, &v25);
      MIL::IRTensorValueType::MakeWithShape(v15, v9, &v25);
    }

    exception = __cxa_allocate_exception(0x48uLL);
    MIL::MILResult::MILResult(v21, __p);
    v21[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
    v22 = v29;
    MIL::ValidationError::ValidationError(exception, v21);
  }

  v17 = __cxa_allocate_exception(0x48uLL);
  v18 = a2[1];
  *&v31 = *a2;
  *(&v31 + 1) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v30, "Parameter x must have a minimum rank of 2. The last dimension represents vector of probabilities and remaining dimensions represent specific distributions.");
  MIL::ValidationError::ValidationError(v17, &v31, v30, 315);
}

void sub_2181AF670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  MIL::ValidationResult::~ValidationResult(&a12);
  MIL::ValidationResult::~ValidationResult(&a27);
  v34 = *(v32 - 120);
  if (v34)
  {
    *(v32 - 112) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceRandomNormal(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v6 = a2[1];
  v9[0] = *a2;
  v9[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "random_normal");
  std::string::basic_string[abi:ne200100]<0>(__p, "mean");
}

void sub_2181AF860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceRandomUniform(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v6 = a2[1];
  v9[0] = *a2;
  v9[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "random_uniform");
  std::string::basic_string[abi:ne200100]<0>(__p, "low");
}

void sub_2181AF960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::RandomBernoulli::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181B04A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void **a46)
{
  v49 = *(v47 - 80);
  *(v47 - 80) = 0;
  if (v49)
  {
    (*(*v49 + 8))(v49, a2, a3, a4, a5, a6, a7, a8);
  }

  v50 = *v46;
  *v46 = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a46, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v47 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::RandomCategorical::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181B1278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  if (a53)
  {
    (*(*a53 + 8))(a53, a2, a3, a4, a5, a6, a7, a8);
  }

  v60 = *v57;
  *v57 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 248), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::RandomNormal::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181B22D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void **a54)
{
  v57 = *(v55 - 80);
  *(v55 - 80) = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57, a2, a3, a4, a5, a6, a7, a8);
  }

  v58 = *v54;
  *v54 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v55 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::RandomUniform::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181B3424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void **a54)
{
  v57 = *(v55 - 80);
  *(v55 - 80) = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57, a2, a3, a4, a5, a6, a7, a8);
  }

  v58 = *v54;
  *v54 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a54, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v55 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateGru(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, uint64_t x8_0@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this, __p);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "initial_h");
  v7 = MIL::IROperation::GetParameterType(this, __p);
  v8 = MIL::IRValueType::AsTensorType(v7);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "weight_ih");
  v9 = MIL::IROperation::GetParameterType(this, __p);
  v10 = MIL::IRValueType::AsTensorType(v9);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "weight_hh");
  v11 = MIL::IROperation::GetParameterType(this, __p);
  v12 = MIL::IRValueType::AsTensorType(v11);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "bias");
  v13 = MIL::IROperation::TryGetParameterType(this, __p, 0);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "bias");
  v14 = MIL::IROperation::TryGetParameterType(this, __p, 0);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v16 = LocationPtr[1];
  v19[0] = *LocationPtr;
  v19[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v17, "GRU");
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_2181B3AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::anonymous namespace::ValidateGruRnnHelper(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, MIL::IRValueType *a6@<X5>, MIL::IRValueType *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = (*(*a2 + 96))(a2);
  v17 = (*(*a4 + 96))(a4);
  v18 = (*(*a5 + 96))(a5);
  if (!(*(*a2 + 104))(a2) || !(*(*a3 + 104))(a3) || !(*(*a4 + 104))(a4) || ((*(*a5 + 104))(a5) & 1) == 0)
  {
    v46 = a1[1];
    *&v136 = *a1;
    *(&v136 + 1) = v46;
    if (v46)
    {
      atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    MIL::ValidationResult::ValidationResult(a9, &v136, 315, &v134);
    if (v135 < 0)
    {
      operator delete(v134);
    }

    v45 = *(&v136 + 1);
    if (*(&v136 + 1))
    {
      goto LABEL_59;
    }

    return;
  }

  std::string::basic_string[abi:ne200100]<0>(&v131, "weight_ih");
  v19 = a1[1];
  v129 = *a1;
  v130 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(v17, a8, &v129, &v132);
  if (v130)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v130);
  }

  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  if (((*(v132.__r_.__value_.__r.__words[0] + 16))(&v132) & 1) == 0)
  {
    MIL::MILResult::MILResult(a9, &v132);
LABEL_63:
    *a9 = &unk_2829E9B70;
    *(a9 + 48) = v133;
    MIL::ValidationResult::~ValidationResult(&v132.__r_.__value_.__l.__data_);
    return;
  }

  MIL::ValidationResult::~ValidationResult(&v132.__r_.__value_.__l.__data_);
  std::string::basic_string[abi:ne200100]<0>(&v131, "weight_hh");
  v20 = a1[1];
  v127 = *a1;
  v128 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(v18, a8, &v127, &v132);
  if (v128)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v128);
  }

  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  if (((*(v132.__r_.__value_.__r.__words[0] + 16))(&v132) & 1) == 0)
  {
    MIL::MILResult::MILResult(a9, &v132);
    goto LABEL_63;
  }

  MIL::ValidationResult::~ValidationResult(&v132.__r_.__value_.__l.__data_);
  v21 = MIL::IRDimension::AsConstant(*(*v17 + 8));
  v22 = (*(*v21 + 48))(v21);
  v23 = MIL::IRDimension::AsConstant(*(*v18 + 8));
  v24 = (*(*v23 + 48))(v23);
  v25 = MIL::IRDimension::AsConstant(**v18);
  v26 = (*(*v25 + 48))(v25);
  if ((*(**(*v16 + 16) + 16))(*(*v16 + 16)) && (v27 = MIL::IRDimension::AsConstant(*(*v16 + 16)), v22 != (*(*v27 + 48))(v27)))
  {
    v48 = a1[1];
    *&v126 = *a1;
    *(&v126 + 1) = v48;
    if (v48)
    {
      atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
    }

    std::to_string(&v123, v22);
    v49 = std::string::insert(&v123, 0, "Input size from weight_ih: ");
    v50 = *&v49->__r_.__value_.__l.__data_;
    v131.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
    *&v131.__r_.__value_.__l.__data_ = v50;
    v49->__r_.__value_.__l.__size_ = 0;
    v49->__r_.__value_.__r.__words[2] = 0;
    v49->__r_.__value_.__r.__words[0] = 0;
    v51 = std::string::append(&v131, " does not match with input shape for op: ");
    v52 = *&v51->__r_.__value_.__l.__data_;
    v132.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
    *&v132.__r_.__value_.__l.__data_ = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    v53 = *(a8 + 23);
    if (v53 >= 0)
    {
      v54 = a8;
    }

    else
    {
      v54 = *a8;
    }

    if (v53 >= 0)
    {
      v55 = *(a8 + 23);
    }

    else
    {
      v55 = *(a8 + 8);
    }

    v56 = std::string::append(&v132, v54, v55);
    v57 = *&v56->__r_.__value_.__l.__data_;
    v125 = v56->__r_.__value_.__r.__words[2];
    *v124 = v57;
    v56->__r_.__value_.__l.__size_ = 0;
    v56->__r_.__value_.__r.__words[2] = 0;
    v56->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationResult::ValidationResult(a9, &v126, 315, v124);
    if (SHIBYTE(v125) < 0)
    {
      operator delete(v124[0]);
    }

    if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v132.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v131.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
    }

    v45 = *(&v126 + 1);
    if (*(&v126 + 1))
    {
      goto LABEL_59;
    }
  }

  else
  {
    v28 = MIL::IRDimension::AsConstant(**v17);
    if (v26 == (*(*v28 + 48))(v28))
    {
      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a8, "GRU") && 3 * v24 != v26)
      {
        v29 = a1[1];
        *&v119 = *a1;
        *(&v119 + 1) = v29;
        if (v29)
        {
          atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
        }

        std::to_string(&v115, v24);
        v30 = std::string::insert(&v115, 0, "Hidden dimension must be of shape 3*HiddenSize. Provided hiddenSize: ");
        v31 = *&v30->__r_.__value_.__l.__data_;
        v116.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&v116.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        v32 = std::string::append(&v116, "hiddenDim: ");
        v33 = *&v32->__r_.__value_.__l.__data_;
        v123.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
        *&v123.__r_.__value_.__l.__data_ = v33;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v114, v26);
        if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = &v114;
        }

        else
        {
          v34 = v114.__r_.__value_.__r.__words[0];
        }

        if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v114.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v114.__r_.__value_.__l.__size_;
        }

        v36 = std::string::append(&v123, v34, size);
        v37 = *&v36->__r_.__value_.__l.__data_;
        v131.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
        *&v131.__r_.__value_.__l.__data_ = v37;
        v36->__r_.__value_.__l.__size_ = 0;
        v36->__r_.__value_.__r.__words[2] = 0;
        v36->__r_.__value_.__r.__words[0] = 0;
        v38 = std::string::append(&v131, "for op: ");
        v39 = *&v38->__r_.__value_.__l.__data_;
        v132.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
        *&v132.__r_.__value_.__l.__data_ = v39;
        v38->__r_.__value_.__l.__size_ = 0;
        v38->__r_.__value_.__r.__words[2] = 0;
        v38->__r_.__value_.__r.__words[0] = 0;
        v40 = *(a8 + 23);
        if (v40 >= 0)
        {
          v41 = a8;
        }

        else
        {
          v41 = *a8;
        }

        if (v40 >= 0)
        {
          v42 = *(a8 + 23);
        }

        else
        {
          v42 = *(a8 + 8);
        }

        v43 = std::string::append(&v132, v41, v42);
        v44 = *&v43->__r_.__value_.__l.__data_;
        v118 = v43->__r_.__value_.__r.__words[2];
        *__p = v44;
        v43->__r_.__value_.__l.__size_ = 0;
        v43->__r_.__value_.__r.__words[2] = 0;
        v43->__r_.__value_.__r.__words[0] = 0;
        MIL::ValidationResult::ValidationResult(a9, &v119, 315, __p);
        if (SHIBYTE(v118) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v132.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v131.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v114.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v123.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v116.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v115.__r_.__value_.__l.__data_);
        }

        v45 = *(&v119 + 1);
        if (!*(&v119 + 1))
        {
          return;
        }

LABEL_59:
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        return;
      }

      if (a6)
      {
        v58 = MIL::IRValueType::AsTensorType(a6);
        v59 = (*(*v58 + 96))(v58);
        memset(&v131, 0, sizeof(v131));
        std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v131, *v59, *(v59 + 8), (*(v59 + 8) - *v59) >> 3);
        std::string::basic_string[abi:ne200100]<0>(&v123, "bias");
        v60 = a1[1];
        v112 = *a1;
        v113 = v60;
        if (v60)
        {
          atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(&v131, a8, &v112, &v132);
        if (v113)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v113);
        }

        if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v123.__r_.__value_.__l.__data_);
        }

        if (((*(v132.__r_.__value_.__r.__words[0] + 16))(&v132) & 1) == 0)
        {
          MIL::MILResult::MILResult(a9, &v132);
          goto LABEL_113;
        }

        MIL::ValidationResult::~ValidationResult(&v132.__r_.__value_.__l.__data_);
        v61 = MIL::IRDimension::AsConstant(*v131.__r_.__value_.__l.__data_);
        v62 = (*(*v61 + 48))(v61);
        if (v62 != v26)
        {
          v68 = a1[1];
          *&v111 = *a1;
          *(&v111 + 1) = v68;
          if (v68)
          {
            atomic_fetch_add_explicit((v68 + 8), 1uLL, memory_order_relaxed);
          }

          std::to_string(&v114, v62);
          v69 = std::string::insert(&v114, 0, "Incorrect bias shape (");
          v70 = *&v69->__r_.__value_.__l.__data_;
          v115.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
          *&v115.__r_.__value_.__l.__data_ = v70;
          v69->__r_.__value_.__l.__size_ = 0;
          v69->__r_.__value_.__r.__words[2] = 0;
          v69->__r_.__value_.__r.__words[0] = 0;
          v71 = std::string::append(&v115, ") but expecting: ");
          v72 = *&v71->__r_.__value_.__l.__data_;
          v116.__r_.__value_.__r.__words[2] = v71->__r_.__value_.__r.__words[2];
          *&v116.__r_.__value_.__l.__data_ = v72;
          v71->__r_.__value_.__l.__size_ = 0;
          v71->__r_.__value_.__r.__words[2] = 0;
          v71->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v108, v26);
          if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v73 = &v108;
          }

          else
          {
            v73 = v108.__r_.__value_.__r.__words[0];
          }

          if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v74 = HIBYTE(v108.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v74 = v108.__r_.__value_.__l.__size_;
          }

          v75 = std::string::append(&v116, v73, v74);
          v76 = *&v75->__r_.__value_.__l.__data_;
          v123.__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
          *&v123.__r_.__value_.__l.__data_ = v76;
          v75->__r_.__value_.__l.__size_ = 0;
          v75->__r_.__value_.__r.__words[2] = 0;
          v75->__r_.__value_.__r.__words[0] = 0;
          v77 = std::string::append(&v123, " for op: ");
          v78 = *&v77->__r_.__value_.__l.__data_;
          v132.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
          *&v132.__r_.__value_.__l.__data_ = v78;
          v77->__r_.__value_.__l.__size_ = 0;
          v77->__r_.__value_.__r.__words[2] = 0;
          v77->__r_.__value_.__r.__words[0] = 0;
          v79 = *(a8 + 23);
          if (v79 >= 0)
          {
            v80 = a8;
          }

          else
          {
            v80 = *a8;
          }

          if (v79 >= 0)
          {
            v81 = *(a8 + 23);
          }

          else
          {
            v81 = *(a8 + 8);
          }

          v82 = std::string::append(&v132, v80, v81);
          v83 = *&v82->__r_.__value_.__l.__data_;
          v110 = v82->__r_.__value_.__r.__words[2];
          *v109 = v83;
          v82->__r_.__value_.__l.__size_ = 0;
          v82->__r_.__value_.__r.__words[2] = 0;
          v82->__r_.__value_.__r.__words[0] = 0;
          MIL::ValidationResult::ValidationResult(a9, &v111, 315, v109);
          if (SHIBYTE(v110) < 0)
          {
            operator delete(v109[0]);
          }

          if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v132.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v123.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v108.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v116.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v115.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v114.__r_.__value_.__l.__data_);
          }

          v84 = *(&v111 + 1);
          if (!*(&v111 + 1))
          {
            goto LABEL_144;
          }

          goto LABEL_143;
        }

        if (v131.__r_.__value_.__r.__words[0])
        {
          v131.__r_.__value_.__l.__size_ = v131.__r_.__value_.__r.__words[0];
          operator delete(v131.__r_.__value_.__l.__data_);
        }
      }

      if (!a7)
      {
LABEL_110:
        MIL::ValidationResult::ValidationResult(a9);
        return;
      }

      v63 = MIL::IRValueType::AsTensorType(a7);
      v64 = (*(*v63 + 96))(v63);
      memset(&v131, 0, sizeof(v131));
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v131, *v64, *(v64 + 8), (*(v64 + 8) - *v64) >> 3);
      std::string::basic_string[abi:ne200100]<0>(&v123, "input_bias");
      v65 = a1[1];
      v106 = *a1;
      v107 = v65;
      if (v65)
      {
        atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(&v131, a8, &v106, &v132);
      if (v107)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v107);
      }

      if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v123.__r_.__value_.__l.__data_);
      }

      if ((*(v132.__r_.__value_.__r.__words[0] + 16))(&v132))
      {
        MIL::ValidationResult::~ValidationResult(&v132.__r_.__value_.__l.__data_);
        v66 = MIL::IRDimension::AsConstant(*v131.__r_.__value_.__l.__data_);
        v67 = (*(*v66 + 48))(v66);
        if (v67 == v26)
        {
          if (v131.__r_.__value_.__r.__words[0])
          {
            v131.__r_.__value_.__l.__size_ = v131.__r_.__value_.__r.__words[0];
            operator delete(v131.__r_.__value_.__l.__data_);
          }

          goto LABEL_110;
        }

        v85 = a1[1];
        *&v105 = *a1;
        *(&v105 + 1) = v85;
        if (v85)
        {
          atomic_fetch_add_explicit((v85 + 8), 1uLL, memory_order_relaxed);
        }

        std::to_string(&v114, v67);
        v86 = std::string::insert(&v114, 0, "Incorrect input_bias shape (");
        v87 = *&v86->__r_.__value_.__l.__data_;
        v115.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
        *&v115.__r_.__value_.__l.__data_ = v87;
        v86->__r_.__value_.__l.__size_ = 0;
        v86->__r_.__value_.__r.__words[2] = 0;
        v86->__r_.__value_.__r.__words[0] = 0;
        v88 = std::string::append(&v115, ") but expecting: ");
        v89 = *&v88->__r_.__value_.__l.__data_;
        v116.__r_.__value_.__r.__words[2] = v88->__r_.__value_.__r.__words[2];
        *&v116.__r_.__value_.__l.__data_ = v89;
        v88->__r_.__value_.__l.__size_ = 0;
        v88->__r_.__value_.__r.__words[2] = 0;
        v88->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v108, v26);
        if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v90 = &v108;
        }

        else
        {
          v90 = v108.__r_.__value_.__r.__words[0];
        }

        if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v91 = HIBYTE(v108.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v91 = v108.__r_.__value_.__l.__size_;
        }

        v92 = std::string::append(&v116, v90, v91);
        v93 = *&v92->__r_.__value_.__l.__data_;
        v123.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
        *&v123.__r_.__value_.__l.__data_ = v93;
        v92->__r_.__value_.__l.__size_ = 0;
        v92->__r_.__value_.__r.__words[2] = 0;
        v92->__r_.__value_.__r.__words[0] = 0;
        v94 = std::string::append(&v123, " for op: ");
        v95 = *&v94->__r_.__value_.__l.__data_;
        v132.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
        *&v132.__r_.__value_.__l.__data_ = v95;
        v94->__r_.__value_.__l.__size_ = 0;
        v94->__r_.__value_.__r.__words[2] = 0;
        v94->__r_.__value_.__r.__words[0] = 0;
        v96 = *(a8 + 23);
        if (v96 >= 0)
        {
          v97 = a8;
        }

        else
        {
          v97 = *a8;
        }

        if (v96 >= 0)
        {
          v98 = *(a8 + 23);
        }

        else
        {
          v98 = *(a8 + 8);
        }

        v99 = std::string::append(&v132, v97, v98);
        v100 = *&v99->__r_.__value_.__l.__data_;
        v104 = v99->__r_.__value_.__r.__words[2];
        *v103 = v100;
        v99->__r_.__value_.__l.__size_ = 0;
        v99->__r_.__value_.__r.__words[2] = 0;
        v99->__r_.__value_.__r.__words[0] = 0;
        MIL::ValidationResult::ValidationResult(a9, &v105, 315, v103);
        if (SHIBYTE(v104) < 0)
        {
          operator delete(v103[0]);
        }

        if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v132.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v123.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v108.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v116.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v115.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v114.__r_.__value_.__l.__data_);
        }

        v84 = *(&v105 + 1);
        if (!*(&v105 + 1))
        {
          goto LABEL_144;
        }

LABEL_143:
        std::__shared_weak_count::__release_shared[abi:ne200100](v84);
LABEL_144:
        if (v131.__r_.__value_.__r.__words[0])
        {
          v131.__r_.__value_.__l.__size_ = v131.__r_.__value_.__r.__words[0];
          operator delete(v131.__r_.__value_.__l.__data_);
        }

        return;
      }

      MIL::MILResult::MILResult(a9, &v132);
LABEL_113:
      *a9 = &unk_2829E9B70;
      *(a9 + 48) = v133;
      MIL::ValidationResult::~ValidationResult(&v132.__r_.__value_.__l.__data_);
      goto LABEL_144;
    }

    v47 = a1[1];
    *&v122 = *a1;
    *(&v122 + 1) = v47;
    if (v47)
    {
      atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    MIL::ValidationResult::ValidationResult(a9, &v122, 315, &v120);
    if (v121 < 0)
    {
      operator delete(v120);
    }

    v45 = *(&v122 + 1);
    if (*(&v122 + 1))
    {
      goto LABEL_59;
    }
  }
}

void sub_2181B4908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v65 - 169) < 0)
  {
    operator delete(*(v65 - 192));
  }

  if (a65 < 0)
  {
    operator delete(a64);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  v67 = *(v65 - 224);
  if (v67)
  {
    *(v65 - 216) = v67;
    operator delete(v67);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateLstm(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, uint64_t x8_0@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v28, "x");
  ParameterType = MIL::IROperation::GetParameterType(this, &v28);
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v28, "initial_h");
  v7 = MIL::IROperation::GetParameterType(this, &v28);
  v8 = MIL::IRValueType::AsTensorType(v7);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v28, "weight_ih");
  v9 = MIL::IROperation::GetParameterType(this, &v28);
  v10 = MIL::IRValueType::AsTensorType(v9);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v28, "weight_hh");
  v11 = MIL::IROperation::GetParameterType(this, &v28);
  v12 = MIL::IRValueType::AsTensorType(v11);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v28, "weight_ih_back");
  v21 = MIL::IROperation::TryGetParameterType(this, &v28, 0);
  v22 = v12;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v28, "weight_hh_back");
  v13 = MIL::IROperation::TryGetParameterType(this, &v28, 0);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "direction");
  ParameterValue = MIL::IROperation::GetParameterValue(this, __p);
  MIL::IRValue::GetScalar<std::string>(ParameterValue, &v28);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "bias");
  v15 = MIL::IROperation::TryGetParameterType(this, __p, 0);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "bias_back");
  v16 = MIL::IROperation::TryGetParameterType(this, __p, 0);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "peephole");
  v17 = MIL::IROperation::TryGetParameterType(this, __p, 0);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "peephole_back");
  v18 = MIL::IROperation::TryGetParameterType(this, __p, 0);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v20 = LocationPtr[1];
  v24 = *LocationPtr;
  v25 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    v23 = v28;
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}

void sub_2181B4FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (*(v29 - 81) < 0)
  {
    operator delete(*(v29 - 104));
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::anonymous namespace::ValidateLSTMHelper(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, MIL::IRValueType *a6@<X5>, MIL::IRValueType *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, MIL::IRValueType *a10, MIL::IRValueType *a11, MIL::IRValueType *a12, MIL::IRValueType *a13)
{
  v22 = (*(*a2 + 96))(a2);
  if (*(*a2 + 104))(a2) && (*(*a3 + 104))(a3) && ((*(*a3 + 104))(a3))
  {
    v96[0] = a1;
    v96[1] = v22;
    memset(&v95, 0, sizeof(v95));
    memset(&v94, 0, sizeof(v94));
    std::string::basic_string[abi:ne200100]<0>(&v91, "weight_ih");
    std::string::basic_string[abi:ne200100]<0>(&__p, "weight_hh");
    if (SHIBYTE(__p.__end_cap_.__value_) < 0)
    {
      operator delete(__p.__begin_);
    }

    if (SHIBYTE(v91.__end_cap_.__value_) < 0)
    {
      operator delete(v91.__begin_);
    }

    if (((*(v92.__r_.__value_.__r.__words[0] + 16))(&v92) & 1) == 0)
    {
      MIL::MILResult::MILResult(a9, &v92);
LABEL_68:
      *a9 = &unk_2829E9B70;
      *(a9 + 48) = v93;
      MIL::ValidationResult::~ValidationResult(&v92.__r_.__value_.__l.__data_);
      goto LABEL_69;
    }

    MIL::ValidationResult::~ValidationResult(&v92.__r_.__value_.__l.__data_);
    v23 = v95.__begin_[1];
    v25 = *v94.__begin_;
    v24 = v94.__begin_[1];
    v26 = *(a8 + 23);
    if (v26 < 0)
    {
      if (a8[1] != 13)
      {
        goto LABEL_26;
      }

      a8 = *a8;
    }

    else if (v26 != 13)
    {
      goto LABEL_26;
    }

    if (*a8 != 0x7463657269646962 || *(a8 + 5) != 0x6C616E6F69746365)
    {
LABEL_26:
      __p.__begin_ = a1;
      if (a10)
      {
        v29 = MIL::IRValueType::AsTensorType(a10);
        std::string::basic_string[abi:ne200100]<0>(&v91, "bias");
        if (SHIBYTE(v91.__end_cap_.__value_) < 0)
        {
          operator delete(v91.__begin_);
        }

        if (((*(v92.__r_.__value_.__r.__words[0] + 16))(&v92) & 1) == 0)
        {
          goto LABEL_67;
        }

        MIL::ValidationResult::~ValidationResult(&v92.__r_.__value_.__l.__data_);
      }

      if (a11)
      {
        v30 = MIL::IRValueType::AsTensorType(a11);
        std::string::basic_string[abi:ne200100]<0>(&v91, "bias_back");
        if (SHIBYTE(v91.__end_cap_.__value_) < 0)
        {
          operator delete(v91.__begin_);
        }

        if (((*(v92.__r_.__value_.__r.__words[0] + 16))(&v92) & 1) == 0)
        {
          goto LABEL_67;
        }

        MIL::ValidationResult::~ValidationResult(&v92.__r_.__value_.__l.__data_);
      }

      v31 = 3 * v24;
      if (!a12)
      {
LABEL_41:
        if (!a13)
        {
LABEL_46:
          MIL::ValidationResult::ValidationResult(a9);
LABEL_69:
          if (v94.__begin_)
          {
            v94.__end_ = v94.__begin_;
            operator delete(v94.__begin_);
          }

          if (v95.__begin_)
          {
            v95.__end_ = v95.__begin_;
            operator delete(v95.__begin_);
          }

          return;
        }

        v33 = MIL::IRValueType::AsTensorType(a13);
        std::string::basic_string[abi:ne200100]<0>(&v91, "peephole_back");
        if (SHIBYTE(v91.__end_cap_.__value_) < 0)
        {
          operator delete(v91.__begin_);
        }

        if ((*(v92.__r_.__value_.__r.__words[0] + 16))(&v92))
        {
          MIL::ValidationResult::~ValidationResult(&v92.__r_.__value_.__l.__data_);
          goto LABEL_46;
        }

        goto LABEL_67;
      }

      v32 = MIL::IRValueType::AsTensorType(a12);
      std::string::basic_string[abi:ne200100]<0>(&v91, "peephole");
      if (SHIBYTE(v91.__end_cap_.__value_) < 0)
      {
        operator delete(v91.__begin_);
      }

      if ((*(v92.__r_.__value_.__r.__words[0] + 16))(&v92))
      {
        MIL::ValidationResult::~ValidationResult(&v92.__r_.__value_.__l.__data_);
        goto LABEL_41;
      }

LABEL_67:
      MIL::MILResult::MILResult(a9, &v92);
      goto LABEL_68;
    }

    memset(&v91, 0, sizeof(v91));
    memset(&__p, 0, sizeof(__p));
    if (a6 && a7)
    {
      v34 = MIL::IRValueType::AsTensorType(a6);
      v35 = MIL::IRValueType::AsTensorType(a7);
      std::string::basic_string[abi:ne200100]<0>(&v89, "weight_ih_back");
      std::string::basic_string[abi:ne200100]<0>(&v88, "weight_hh_back");
      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      if (((*(v92.__r_.__value_.__r.__words[0] + 16))(&v92) & 1) == 0)
      {
        MIL::MILResult::MILResult(a9, &v92);
        *a9 = &unk_2829E9B70;
        *(a9 + 48) = v93;
        MIL::ValidationResult::~ValidationResult(&v92.__r_.__value_.__l.__data_);
        goto LABEL_74;
      }

      MIL::ValidationResult::~ValidationResult(&v92.__r_.__value_.__l.__data_);
      v36 = v91.__begin_[1];
      if (v36 == v23)
      {
        v37 = __p.__begin_[1];
        if (v37 == v24)
        {
          v38 = *v91.__begin_;
          if (*v91.__begin_ == v25)
          {
            __p.__end_ = __p.__begin_;
            operator delete(__p.__begin_);
            if (v91.__begin_)
            {
              v91.__end_ = v91.__begin_;
              operator delete(v91.__begin_);
            }

            goto LABEL_26;
          }

          v63 = a1[1];
          *&v79 = *a1;
          *(&v79 + 1) = v63;
          if (v63)
          {
            atomic_fetch_add_explicit((v63 + 8), 1uLL, memory_order_relaxed);
          }

          std::to_string(&v84, v25);
          v64 = std::string::insert(&v84, 0, "Hidden dimensions for forward and reverse weight differs. forward hidden dim: ");
          v65 = *&v64->__r_.__value_.__l.__data_;
          v88.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
          *&v88.__r_.__value_.__l.__data_ = v65;
          v64->__r_.__value_.__l.__size_ = 0;
          v64->__r_.__value_.__r.__words[2] = 0;
          v64->__r_.__value_.__r.__words[0] = 0;
          v66 = std::string::append(&v88, " reverse hidden dim: ");
          v67 = *&v66->__r_.__value_.__l.__data_;
          v89.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
          *&v89.__r_.__value_.__l.__data_ = v67;
          v66->__r_.__value_.__l.__size_ = 0;
          v66->__r_.__value_.__r.__words[2] = 0;
          v66->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v83, v38);
          if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v68 = &v83;
          }

          else
          {
            v68 = v83.__r_.__value_.__r.__words[0];
          }

          if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v83.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v83.__r_.__value_.__l.__size_;
          }

          v70 = std::string::append(&v89, v68, size);
          v71 = *&v70->__r_.__value_.__l.__data_;
          v92.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
          *&v92.__r_.__value_.__l.__data_ = v71;
          v70->__r_.__value_.__l.__size_ = 0;
          v70->__r_.__value_.__r.__words[2] = 0;
          v70->__r_.__value_.__r.__words[0] = 0;
          v72 = std::string::append(&v92, " for LSTM op.");
          v73 = *&v72->__r_.__value_.__l.__data_;
          v78 = v72->__r_.__value_.__r.__words[2];
          *v77 = v73;
          v72->__r_.__value_.__l.__size_ = 0;
          v72->__r_.__value_.__r.__words[2] = 0;
          v72->__r_.__value_.__r.__words[0] = 0;
          MIL::ValidationResult::ValidationResult(a9, &v79, 315, v77);
          if (SHIBYTE(v78) < 0)
          {
            operator delete(v77[0]);
          }

          if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v92.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v83.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v89.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v88.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v84.__r_.__value_.__l.__data_);
          }

          v40 = *(&v79 + 1);
          if (!*(&v79 + 1))
          {
LABEL_74:
            if (__p.__begin_)
            {
              __p.__end_ = __p.__begin_;
              operator delete(__p.__begin_);
            }

            if (v91.__begin_)
            {
              v91.__end_ = v91.__begin_;
              operator delete(v91.__begin_);
            }

            goto LABEL_69;
          }
        }

        else
        {
          v52 = a1[1];
          *&v82 = *a1;
          *(&v82 + 1) = v52;
          if (v52)
          {
            atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
          }

          std::to_string(&v84, v24);
          v53 = std::string::insert(&v84, 0, "Hidden size for forward and reverse weight differs. forward hidden size: ");
          v54 = *&v53->__r_.__value_.__l.__data_;
          v88.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
          *&v88.__r_.__value_.__l.__data_ = v54;
          v53->__r_.__value_.__l.__size_ = 0;
          v53->__r_.__value_.__r.__words[2] = 0;
          v53->__r_.__value_.__r.__words[0] = 0;
          v55 = std::string::append(&v88, " reverse hidden size: ");
          v56 = *&v55->__r_.__value_.__l.__data_;
          v89.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
          *&v89.__r_.__value_.__l.__data_ = v56;
          v55->__r_.__value_.__l.__size_ = 0;
          v55->__r_.__value_.__r.__words[2] = 0;
          v55->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v83, v37);
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

          v59 = std::string::append(&v89, v57, v58);
          v60 = *&v59->__r_.__value_.__l.__data_;
          v92.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
          *&v92.__r_.__value_.__l.__data_ = v60;
          v59->__r_.__value_.__l.__size_ = 0;
          v59->__r_.__value_.__r.__words[2] = 0;
          v59->__r_.__value_.__r.__words[0] = 0;
          v61 = std::string::append(&v92, " for LSTM op.");
          v62 = *&v61->__r_.__value_.__l.__data_;
          v81 = v61->__r_.__value_.__r.__words[2];
          *v80 = v62;
          v61->__r_.__value_.__l.__size_ = 0;
          v61->__r_.__value_.__r.__words[2] = 0;
          v61->__r_.__value_.__r.__words[0] = 0;
          MIL::ValidationResult::ValidationResult(a9, &v82, 315, v80);
          if (SHIBYTE(v81) < 0)
          {
            operator delete(v80[0]);
          }

          if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v92.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v83.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v89.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v88.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v84.__r_.__value_.__l.__data_);
          }

          v40 = *(&v82 + 1);
          if (!*(&v82 + 1))
          {
            goto LABEL_74;
          }
        }
      }

      else
      {
        v41 = a1[1];
        *&v87 = *a1;
        *(&v87 + 1) = v41;
        if (v41)
        {
          atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
        }

        std::to_string(&v84, v23);
        v42 = std::string::insert(&v84, 0, "Input size for forward and reverse weight differs. forward input size: ");
        v43 = *&v42->__r_.__value_.__l.__data_;
        v88.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
        *&v88.__r_.__value_.__l.__data_ = v43;
        v42->__r_.__value_.__l.__size_ = 0;
        v42->__r_.__value_.__r.__words[2] = 0;
        v42->__r_.__value_.__r.__words[0] = 0;
        v44 = std::string::append(&v88, " reverse input size: ");
        v45 = *&v44->__r_.__value_.__l.__data_;
        v89.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
        *&v89.__r_.__value_.__l.__data_ = v45;
        v44->__r_.__value_.__l.__size_ = 0;
        v44->__r_.__value_.__r.__words[2] = 0;
        v44->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v83, v36);
        if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = &v83;
        }

        else
        {
          v46 = v83.__r_.__value_.__r.__words[0];
        }

        if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v47 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v47 = v83.__r_.__value_.__l.__size_;
        }

        v48 = std::string::append(&v89, v46, v47);
        v49 = *&v48->__r_.__value_.__l.__data_;
        v92.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
        *&v92.__r_.__value_.__l.__data_ = v49;
        v48->__r_.__value_.__l.__size_ = 0;
        v48->__r_.__value_.__r.__words[2] = 0;
        v48->__r_.__value_.__r.__words[0] = 0;
        v50 = std::string::append(&v92, " for LSTM op.");
        v51 = *&v50->__r_.__value_.__l.__data_;
        v86 = v50->__r_.__value_.__r.__words[2];
        v85 = v51;
        v50->__r_.__value_.__l.__size_ = 0;
        v50->__r_.__value_.__r.__words[2] = 0;
        v50->__r_.__value_.__r.__words[0] = 0;
        MIL::ValidationResult::ValidationResult(a9, &v87, 315, &v85);
        if (SHIBYTE(v86) < 0)
        {
          operator delete(v85);
        }

        if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v92.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v83.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }

        v40 = *(&v87 + 1);
        if (!*(&v87 + 1))
        {
          goto LABEL_74;
        }
      }
    }

    else
    {
      v39 = a1[1];
      *&v76 = *a1;
      *(&v76 + 1) = v39;
      if (v39)
      {
        atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v74, "Parameter weight_ih_back and weight_hh_back must be provided when direction is bidirectional for LSTM op.");
      MIL::ValidationResult::ValidationResult(a9, &v76, 316, v74);
      if (v75 < 0)
      {
        operator delete(v74[0]);
      }

      v40 = *(&v76 + 1);
      if (!*(&v76 + 1))
      {
        goto LABEL_74;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    goto LABEL_74;
  }

  v27 = a1[1];
  *&v99 = *a1;
  *(&v99 + 1) = v27;
  if (v27)
  {
    atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v97, "Variadic input / initial_h / initial_c not supported for LSTM op.");
  MIL::ValidationResult::ValidationResult(a9, &v99, 315, v97);
  if (v98 < 0)
  {
    operator delete(v97[0]);
  }

  if (*(&v99 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v99 + 1));
  }
}

void sub_2181B5BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v65 - 233) < 0)
  {
    operator delete(*(v65 - 256));
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a62)
  {
    operator delete(a62);
  }

  if (a65)
  {
    operator delete(a65);
  }

  v67 = *(v65 - 200);
  if (v67)
  {
    *(v65 - 192) = v67;
    operator delete(v67);
  }

  v68 = *(v65 - 176);
  if (v68)
  {
    *(v65 - 168) = v68;
    operator delete(v68);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateRnn(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this, __p);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "initial_h");
  v6 = MIL::IROperation::GetParameterType(this, __p);
  v7 = MIL::IRValueType::AsTensorType(v6);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "weight_ih");
  v8 = MIL::IROperation::GetParameterType(this, __p);
  v9 = MIL::IRValueType::AsTensorType(v8);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "weight_hh");
  v10 = MIL::IROperation::GetParameterType(this, __p);
  v11 = MIL::IRValueType::AsTensorType(v10);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "bias");
  v12 = MIL::IROperation::TryGetParameterType(this, __p, 0);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v14 = LocationPtr[1];
  v17[0] = *LocationPtr;
  v17[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v15, "RNN");
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void sub_2181B60F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceGru(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "GRU");
}

void sub_2181B61E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::anonymous namespace::ValueTypeInferenceGruRnnHelper(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v47 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  v9 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (!v9)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  ValueType = MIL::IRTypedArgument::GetValueType(*v9[5]);
  v11 = MIL::IRValueType::AsTensorType(ValueType);
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "initial_h");
  v12 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (!v12)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v13 = MIL::IRTypedArgument::GetValueType(*v12[5]);
  v14 = MIL::IRValueType::AsTensorType(v13);
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "weight_ih");
  v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (!v15)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v16 = MIL::IRTypedArgument::GetValueType(*v15[5]);
  v17 = MIL::IRValueType::AsTensorType(v16);
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "weight_hh");
  v18 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (!v18)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v19 = MIL::IRTypedArgument::GetValueType(*v18[5]);
  v20 = MIL::IRValueType::AsTensorType(v19);
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "bias");
  v21 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  v22 = v21;
  if (v41 < 0)
  {
    operator delete(__p[0]);
    if (!v22)
    {
      goto LABEL_20;
    }
  }

  else if (!v21)
  {
    goto LABEL_20;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "bias");
  v23 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (!v23)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v22 = MIL::IRTypedArgument::GetValueType(*v23[5]);
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_20:
  v24 = *a2;
  v25 = a2[1];
  v39[0] = v24;
  v39[1] = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v38, *a4, *(a4 + 8));
  }

  else
  {
    v38 = *a4;
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (MIL::ValidationResult::IsGood(__p))
  {
    std::string::basic_string[abi:ne200100]<0>(&v32, "output_sequence");
    SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v32);
    v27 = MIL::IRValue::GetScalar<BOOL>(SingleValue);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v32);
    }

    v28 = v33;
    v29 = v32;
    v44 = v34;
    v45 = v32;
    v46 = v33;
    memset(v31, 0, sizeof(v31));
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(v31, &v44, &v47, 3uLL);
    v43[0] = v29;
    v43[1] = v28;
    v45 = 0;
    v46 = 0;
    v44 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(&v44, v43, &v44, 2uLL);
    MIL::IRTensorValueType::MakeWithShape(*a1, v35, v31);
  }

  exception = __cxa_allocate_exception(0x48uLL);
  MIL::MILResult::MILResult(v36, __p);
  v36[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
  v37 = v42;
  MIL::ValidationError::ValidationError(exception, v36);
}

void sub_2181B6684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  MIL::ValidationResult::~ValidationResult(&a19);
  MIL::ValidationResult::~ValidationResult(&a35);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceRnn(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "RNN");
}

void sub_2181B680C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceLstm(MIL::IRConstantDimension **a1, uint64_t *a2, void *a3)
{
  v77 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  ValueType = MIL::IRTypedArgument::GetValueType(*v7[5]);
  v9 = MIL::IRValueType::AsTensorType(ValueType);
  if (v66 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "initial_h");
  v10 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = MIL::IRTypedArgument::GetValueType(*v10[5]);
  v12 = MIL::IRValueType::AsTensorType(v11);
  if (v66 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "weight_ih");
  v13 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (!v13)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v14 = MIL::IRTypedArgument::GetValueType(*v13[5]);
  v55 = MIL::IRValueType::AsTensorType(v14);
  if (v66 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "weight_hh");
  v15 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (!v15)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v16 = MIL::IRTypedArgument::GetValueType(*v15[5]);
  v17 = MIL::IRValueType::AsTensorType(v16);
  if (v66 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "weight_ih_back");
  v18 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  v19 = v18;
  if (v66 < 0)
  {
    operator delete(__p[0]);
    if (v19)
    {
      goto LABEL_15;
    }
  }

  else if (v18)
  {
LABEL_15:
    std::string::basic_string[abi:ne200100]<0>(__p, "weight_ih_back");
    v20 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
    if (!v20)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v54 = MIL::IRTypedArgument::GetValueType(*v20[5]);
    if (v66 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_20:
    std::string::basic_string[abi:ne200100]<0>(__p, "weight_hh_back");
    v21 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
    v22 = v21;
    if (v66 < 0)
    {
      operator delete(__p[0]);
      if (v22)
      {
        goto LABEL_22;
      }
    }

    else if (v21)
    {
LABEL_22:
      std::string::basic_string[abi:ne200100]<0>(__p, "weight_hh_back");
      v23 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
      if (!v23)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v53 = MIL::IRTypedArgument::GetValueType(*v23[5]);
      if (v66 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_27:
      std::string::basic_string[abi:ne200100]<0>(__p, "direction");
      SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
      MIL::IRValue::GetScalar<std::string>(SingleValue, &v68);
      if (v66 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "bias");
      v25 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
      v26 = v25;
      if (v66 < 0)
      {
        operator delete(__p[0]);
        if (v26)
        {
          goto LABEL_31;
        }
      }

      else if (v25)
      {
LABEL_31:
        std::string::basic_string[abi:ne200100]<0>(__p, "bias");
        v27 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
        if (!v27)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v28 = MIL::IRTypedArgument::GetValueType(*v27[5]);
        if (v66 < 0)
        {
          operator delete(__p[0]);
        }

LABEL_36:
        std::string::basic_string[abi:ne200100]<0>(__p, "bias_back");
        v29 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
        v30 = v29;
        if (v66 < 0)
        {
          operator delete(__p[0]);
          if (v30)
          {
            goto LABEL_38;
          }
        }

        else if (v29)
        {
LABEL_38:
          v31 = v9;
          std::string::basic_string[abi:ne200100]<0>(__p, "bias_back");
          v32 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
          if (!v32)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v33 = MIL::IRTypedArgument::GetValueType(*v32[5]);
          if (v66 < 0)
          {
            operator delete(__p[0]);
          }

LABEL_43:
          std::string::basic_string[abi:ne200100]<0>(__p, "peephole");
          v34 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
          v35 = v34;
          if (v66 < 0)
          {
            operator delete(__p[0]);
            if (!v35)
            {
              goto LABEL_50;
            }
          }

          else if (!v34)
          {
            goto LABEL_50;
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "peephole");
          v36 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
          if (!v36)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v35 = MIL::IRTypedArgument::GetValueType(*v36[5]);
          if (v66 < 0)
          {
            operator delete(__p[0]);
          }

LABEL_50:
          std::string::basic_string[abi:ne200100]<0>(__p, "peephole_back");
          v37 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
          v38 = v37;
          if (v66 < 0)
          {
            operator delete(__p[0]);
            if (!v38)
            {
              goto LABEL_57;
            }
          }

          else if (!v37)
          {
            goto LABEL_57;
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "peephole_back");
          v39 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
          if (!v39)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v38 = MIL::IRTypedArgument::GetValueType(*v39[5]);
          if (v66 < 0)
          {
            operator delete(__p[0]);
          }

LABEL_57:
          v40 = a2[1];
          v63 = *a2;
          v64 = v40;
          if (v40)
          {
            atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v62, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
          }

          else
          {
            v62 = v68;
          }

          if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v62.__r_.__value_.__l.__data_);
          }

          if (v64)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v64);
          }

          if (!MIL::ValidationResult::IsGood(__p))
          {
            exception = __cxa_allocate_exception(0x48uLL);
            MIL::MILResult::MILResult(v60, __p);
            v60[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
            v61 = v67;
            MIL::ValidationError::ValidationError(exception, v60);
          }

          std::string::basic_string[abi:ne200100]<0>(v57, "output_sequence");
          v41 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, v57);
          v42 = MIL::IRValue::GetScalar<BOOL>(v41);
          if (SHIBYTE(v58) < 0)
          {
            operator delete(v57[0]);
          }

          if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
          {
            if (v68.__r_.__value_.__l.__size_ == 13)
            {
              v43 = v68.__r_.__value_.__r.__words[0];
              goto LABEL_74;
            }
          }

          else if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) == 13)
          {
            v43 = &v68;
LABEL_74:
            v44 = v43->__r_.__value_.__r.__words[0];
            v45 = *(v43->__r_.__value_.__r.__words + 5);
            v47 = v44 == 0x7463657269646962 && v45 == 0x6C616E6F69746365;
LABEL_81:
            v48 = MIL::IRDimension::AsConstant(v57[1]);
            v49 = (*(*v48 + 48))(v48);
            v50 = MIL::IRConstantDimension::Make(*a1, (v49 << v47));
            v51 = v57[0];
            v74 = v58;
            v75 = v57[0];
            v76 = v50;
            memset(v56, 0, sizeof(v56));
            std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(v56, &v74, &v77, 3uLL);
            v71 = v51;
            v72 = v50;
            v75 = 0;
            v76 = 0;
            v74 = 0;
            std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(&v74, &v71, &v73, 2uLL);
            v69[0] = v51;
            v69[1] = v50;
            v72 = 0;
            v73 = 0;
            v71 = 0;
            std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(&v71, v69, &v70, 2uLL);
            MIL::IRTensorValueType::MakeWithShape(*a1, v59, v56);
          }

          v47 = 0;
          goto LABEL_81;
        }

        v31 = v9;
        v33 = 0;
        goto LABEL_43;
      }

      v28 = 0;
      goto LABEL_36;
    }

    v53 = 0;
    goto LABEL_27;
  }

  v54 = 0;
  goto LABEL_20;
}

void sub_2181B70B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  MIL::ValidationResult::~ValidationResult(&a27);
  MIL::ValidationResult::~ValidationResult(&a42);
  if (*(v47 - 169) < 0)
  {
    operator delete(*(v47 - 192));
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::Operators::Common::ios15::anonymous namespace::GetRecurrentOpOutputDimensions@<X0>(MIL::IRConstantDimension **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = (*(*a2 + 88))(a2);
  v11 = (*(*a2 + 96))(a2);
  v12 = **v11;
  v13 = (*v11)[1];
  result = (*(*a3 + 96))(a3);
  v15 = *(*result + 8);
  if ((a4 & 1) == 0)
  {
    result = MIL::IRConstantDimension::Make(*a1, 1);
    v12 = result;
  }

  *a5 = v13;
  *(a5 + 8) = v15;
  *(a5 + 16) = v12;
  *(a5 + 24) = v10;
  return result;
}

void MIL::Operators::Common::ios15::anonymous namespace::ValidateLSTMHelper(std::shared_ptr<MIL::Location const>,MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,MIL::IRValueType const*,MIL::IRValueType const*,std::string,MIL::IRValueType const*,MIL::IRValueType const*,MIL::IRValueType const*,MIL::IRValueType const*)::$_0::operator()(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, std::vector<unsigned int> *a6@<X5>, std::vector<unsigned int> *a7@<X6>, uint64_t a8@<X8>)
{
  v15 = (*(*a2 + 96))(a2);
  v16 = (*(*a3 + 96))(a3);
  if (!(*(*a2 + 104))(a2) || ((*(*a3 + 104))(a3) & 1) == 0)
  {
    v23 = (*a1)[1];
    *&v89 = **a1;
    *(&v89 + 1) = v23;
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v87, "Variadic weights not supported for LSTM op.");
    MIL::ValidationResult::ValidationResult(a8, &v89, 315, v87);
    if (v88 < 0)
    {
      operator delete(v87[0]);
    }

    v24 = *(&v89 + 1);
    if (!*(&v89 + 1))
    {
      return;
    }

LABEL_25:
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(&v84, "LSTM");
  v17 = (*a1)[1];
  v82 = **a1;
  v83 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(v15, &v84, &v82, &v85);
  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (((*(v85.__r_.__value_.__r.__words[0] + 16))(&v85) & 1) == 0)
  {
    MIL::MILResult::MILResult(a8, &v85);
LABEL_28:
    *a8 = &unk_2829E9B70;
    *(a8 + 48) = v86;
    MIL::ValidationResult::~ValidationResult(&v85.__r_.__value_.__l.__data_);
    return;
  }

  MIL::ValidationResult::~ValidationResult(&v85.__r_.__value_.__l.__data_);
  std::string::basic_string[abi:ne200100]<0>(&v84, "LSTM");
  v18 = (*a1)[1];
  v80 = **a1;
  v81 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(v16, &v84, &v80, &v85);
  if (v81)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v81);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (((*(v85.__r_.__value_.__r.__words[0] + 16))(&v85) & 1) == 0)
  {
    MIL::MILResult::MILResult(a8, &v85);
    goto LABEL_28;
  }

  MIL::ValidationResult::~ValidationResult(&v85.__r_.__value_.__l.__data_);
  std::vector<int>::reserve(a6, 2uLL);
  v20 = *v15;
  v19 = v15[1];
  while (v20 != v19)
  {
    v21 = *v20++;
    v22 = MIL::IRDimension::AsConstant(v21);
    LODWORD(v85.__r_.__value_.__l.__data_) = (*(*v22 + 48))(v22);
    std::vector<int>::push_back[abi:ne200100](&a6->__begin_, &v85);
  }

  std::vector<int>::reserve(a7, 2uLL);
  v26 = *v16;
  v25 = v16[1];
  while (v26 != v25)
  {
    v27 = *v26++;
    v28 = MIL::IRDimension::AsConstant(v27);
    LODWORD(v85.__r_.__value_.__l.__data_) = (*(*v28 + 48))(v28);
    std::vector<int>::push_back[abi:ne200100](&a7->__begin_, &v85);
  }

  v29 = *(*a1[1] + 16);
  if ((*(*v29 + 16))(v29))
  {
    v30 = a6->__begin_[1];
    v31 = MIL::IRDimension::AsConstant(*(*a1[1] + 16));
    if (v30 != (*(*v31 + 48))(v31))
    {
      v35 = (*a1)[1];
      *&v79 = **a1;
      *(&v79 + 1) = v35;
      if (v35)
      {
        atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
      }

      v36 = MIL::IRDimension::AsConstant(*(*a1[1] + 16));
      v37 = (*(*v36 + 48))(v36);
      std::to_string(&v73, v37);
      v38 = std::string::insert(&v73, 0, "Different input size for input: ");
      v39 = *&v38->__r_.__value_.__l.__data_;
      v74.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
      *&v74.__r_.__value_.__l.__data_ = v39;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      v40 = std::string::append(&v74, " and input weight: ");
      v41 = *&v40->__r_.__value_.__l.__data_;
      v75.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
      *&v75.__r_.__value_.__l.__data_ = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v72, a6->__begin_[1]);
      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = &v72;
      }

      else
      {
        v42 = v72.__r_.__value_.__r.__words[0];
      }

      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v72.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v72.__r_.__value_.__l.__size_;
      }

      v44 = std::string::append(&v75, v42, size);
      v45 = *&v44->__r_.__value_.__l.__data_;
      v76.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
      *&v76.__r_.__value_.__l.__data_ = v45;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      v46 = std::string::append(&v76, " for ");
      v47 = *&v46->__r_.__value_.__l.__data_;
      v84.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
      *&v84.__r_.__value_.__l.__data_ = v47;
      v46->__r_.__value_.__l.__size_ = 0;
      v46->__r_.__value_.__r.__words[2] = 0;
      v46->__r_.__value_.__r.__words[0] = 0;
      v48 = *(a4 + 23);
      if (v48 >= 0)
      {
        v49 = a4;
      }

      else
      {
        v49 = *a4;
      }

      if (v48 >= 0)
      {
        v50 = *(a4 + 23);
      }

      else
      {
        v50 = *(a4 + 8);
      }

      v51 = std::string::append(&v84, v49, v50);
      v52 = *&v51->__r_.__value_.__l.__data_;
      v85.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
      *&v85.__r_.__value_.__l.__data_ = v52;
      v51->__r_.__value_.__l.__size_ = 0;
      v51->__r_.__value_.__r.__words[2] = 0;
      v51->__r_.__value_.__r.__words[0] = 0;
      v53 = std::string::append(&v85, " parameter of LSTM op.");
      v54 = *&v53->__r_.__value_.__l.__data_;
      v78 = v53->__r_.__value_.__r.__words[2];
      *v77 = v54;
      v53->__r_.__value_.__l.__size_ = 0;
      v53->__r_.__value_.__r.__words[2] = 0;
      v53->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a8, &v79, 315, v77);
      if (SHIBYTE(v78) < 0)
      {
        operator delete(v77[0]);
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v74.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      v24 = *(&v79 + 1);
      if (!*(&v79 + 1))
      {
        return;
      }

      goto LABEL_25;
    }
  }

  v32 = *a7->__begin_;
  if (v32 != *a6->__begin_)
  {
    v34 = (*a1)[1];
    *&v71 = **a1;
    *(&v71 + 1) = v34;
    if (v34)
    {
      atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Input and Hidden weights hidden dimensions mismatch for LSTM op.");
    MIL::ValidationResult::ValidationResult(a8, &v71, 315, __p);
    if (v70 < 0)
    {
      operator delete(__p[0]);
    }

    v24 = *(&v71 + 1);
    if (!*(&v71 + 1))
    {
      return;
    }

    goto LABEL_25;
  }

  v33 = a7->__begin_[1];
  if (v32 == 4 * v33)
  {
    MIL::ValidationResult::ValidationResult(a8);
    return;
  }

  v55 = (*a1)[1];
  *&v68 = **a1;
  *(&v68 + 1) = v55;
  if (v55)
  {
    atomic_fetch_add_explicit((v55 + 8), 1uLL, memory_order_relaxed);
    v33 = a7->__begin_[1];
  }

  std::to_string(&v75, v33);
  v56 = std::string::insert(&v75, 0, "Hidden dimension must be of shape 4*HiddenSize. Provided hiddenSize: ");
  v57 = *&v56->__r_.__value_.__l.__data_;
  v76.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
  *&v76.__r_.__value_.__l.__data_ = v57;
  v56->__r_.__value_.__l.__size_ = 0;
  v56->__r_.__value_.__r.__words[2] = 0;
  v56->__r_.__value_.__r.__words[0] = 0;
  v58 = std::string::append(&v76, " hiddenDim: ");
  v59 = *&v58->__r_.__value_.__l.__data_;
  v84.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
  *&v84.__r_.__value_.__l.__data_ = v59;
  v58->__r_.__value_.__l.__size_ = 0;
  v58->__r_.__value_.__r.__words[2] = 0;
  v58->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v74, *a7->__begin_);
  if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v60 = &v74;
  }

  else
  {
    v60 = v74.__r_.__value_.__r.__words[0];
  }

  if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v61 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v61 = v74.__r_.__value_.__l.__size_;
  }

  v62 = std::string::append(&v84, v60, v61);
  v63 = *&v62->__r_.__value_.__l.__data_;
  v85.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
  *&v85.__r_.__value_.__l.__data_ = v63;
  v62->__r_.__value_.__l.__size_ = 0;
  v62->__r_.__value_.__r.__words[2] = 0;
  v62->__r_.__value_.__r.__words[0] = 0;
  v64 = std::string::append(&v85, "for LSTM op.");
  v65 = *&v64->__r_.__value_.__l.__data_;
  v67 = v64->__r_.__value_.__r.__words[2];
  *v66 = v65;
  v64->__r_.__value_.__l.__size_ = 0;
  v64->__r_.__value_.__r.__words[2] = 0;
  v64->__r_.__value_.__r.__words[0] = 0;
  MIL::ValidationResult::ValidationResult(a8, &v68, 315, v66);
  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66[0]);
  }

  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  v24 = *(&v68 + 1);
  if (*(&v68 + 1))
  {
    goto LABEL_25;
  }
}

void sub_2181B7B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v47 - 169) < 0)
  {
    operator delete(*(v47 - 192));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v47 - 201) < 0)
  {
    operator delete(*(v47 - 224));
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::anonymous namespace::ValidateLSTMHelper(std::shared_ptr<MIL::Location const>,MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,MIL::IRValueType const*,MIL::IRValueType const*,std::string,MIL::IRValueType const*,MIL::IRValueType const*,MIL::IRValueType const*,MIL::IRValueType const*)::$_1::operator()(uint64_t **a1@<X0>, uint64_t a2@<X1>, int a4@<W3>, MIL::ValidationResult *a5@<X8>)
{
  v8 = (*(*a2 + 96))(a2);
  v41 = 0;
  v42 = 0;
  v40 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v40, *v8, *(v8 + 8), (*(v8 + 8) - *v8) >> 3);
  std::string::basic_string[abi:ne200100]<0>(&v37, "LSTM");
  v9 = (*a1)[1];
  v35 = **a1;
  v36 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::EnsureShapeIsConstant(&v40, &v37, &v35, &v38);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if ((*(v38.__r_.__value_.__r.__words[0] + 16))(&v38))
  {
    MIL::ValidationResult::~ValidationResult(&v38.__r_.__value_.__l.__data_);
    v10 = MIL::IRDimension::AsConstant(*v40);
    v11 = (*(*v10 + 48))(v10);
    if (v11 == a4)
    {
      MIL::ValidationResult::ValidationResult(a5);
    }

    else
    {
      v12 = (*a1)[1];
      *&v34 = **a1;
      *(&v34 + 1) = v12;
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      std::operator+<char>();
      v13 = std::string::append(&v29, " elements: ");
      v14 = *&v13->__r_.__value_.__l.__data_;
      v30.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v30.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v28, v11);
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v28;
      }

      else
      {
        v15 = v28.__r_.__value_.__r.__words[0];
      }

      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v28.__r_.__value_.__l.__size_;
      }

      v17 = std::string::append(&v30, v15, size);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v31.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v31.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      v19 = std::string::append(&v31, ".");
      v20 = *&v19->__r_.__value_.__l.__data_;
      v37.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
      *&v37.__r_.__value_.__l.__data_ = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      v21 = std::string::append(&v37, " Expecting ");
      v22 = *&v21->__r_.__value_.__l.__data_;
      v38.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v38.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v27, a4);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v27;
      }

      else
      {
        v23 = v27.__r_.__value_.__r.__words[0];
      }

      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v24 = v27.__r_.__value_.__l.__size_;
      }

      v25 = std::string::append(&v38, v23, v24);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v33 = v25->__r_.__value_.__r.__words[2];
      __p = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      MIL::ValidationResult::ValidationResult(a5, &v34, 315, &__p);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (*(&v34 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v34 + 1));
      }
    }
  }

  else
  {
    MIL::MILResult::MILResult(a5, &v38);
    *a5 = &unk_2829E9B70;
    *(a5 + 12) = v39;
    MIL::ValidationResult::~ValidationResult(&v38.__r_.__value_.__l.__data_);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }
}

void sub_2181B8104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, std::__shared_weak_count *a50)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v50 - 105) < 0)
  {
    operator delete(*(v50 - 128));
  }

  if (*(v50 - 137) < 0)
  {
    operator delete(*(v50 - 160));
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a50);
  }

  v52 = *(v50 - 72);
  if (v52)
  {
    *(v50 - 64) = v52;
    operator delete(v52);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::Gru::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181BAC9C(_Unwind_Exception *a1)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x658], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Lstm::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181C05EC(_Unwind_Exception *a1)
{
  v5 = *(v2 - 80);
  *(v2 - 80) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0xB88], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Rnn::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2181C4718(_Unwind_Exception *a1)
{
  v5 = *(v2 - 80);
  *(v2 - 80) = 0;
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x5D8], 0);
  _Unwind_Resume(a1);
}

void sub_2181C5510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[16],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_2181C55F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2181C5670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[21],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_2181C5758(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateBaseReduction(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v45, "axes");
  IsParameterSet = MIL::IROperation::IsParameterSet(this, &v45.__r_.__value_.__l.__data_);
  v5 = IsParameterSet;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else if (!IsParameterSet)
  {
    goto LABEL_15;
  }

  std::string::basic_string[abi:ne200100]<0>(&v45, "x");
  ParameterType = MIL::IROperation::GetParameterType(this, &v45);
  v7 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (((*(*v7 + 104))(v7) & 1) == 0)
  {
    goto LABEL_15;
  }

  v8 = MIL::IRTensorValueType::Rank(v7);
  std::string::basic_string[abi:ne200100]<0>(&v45, "axes");
  ParameterValue = MIL::IROperation::GetParameterValue(this, &v45);
  v10 = MIL::IRValue::AsTensor(ParameterValue);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  v11 = MIL::IRValue::AsTensor(v10);
  Data = MIL::IRTensorValue::GetDataView<int>(v11);
  if (v13)
  {
    v14 = Data;
    v15 = 4 * v13;
    while (1)
    {
      v16 = *v14;
      if (!MIL::Validation::IsAxisValidForRank(*v14, v8))
      {
        break;
      }

      ++v14;
      v15 -= 4;
      if (!v15)
      {
        goto LABEL_14;
      }
    }

    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v21 = LocationPtr[1];
    *&v44 = *LocationPtr;
    *(&v44 + 1) = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    (*(*this + 56))(this);
    std::operator+<char>();
    v23 = *&v22->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v38, v16);
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v38;
    }

    else
    {
      v24 = v38.__r_.__value_.__r.__words[0];
    }

    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v38.__r_.__value_.__l.__size_;
    }

    v26 = std::string::append(&v40, v24, size);
    v27 = *&v26->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = std::string::append(&v41, "for input with rank: ");
    v29 = *&v28->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v37, v8);
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v37;
    }

    else
    {
      v30 = v37.__r_.__value_.__r.__words[0];
    }

    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v31 = v37.__r_.__value_.__l.__size_;
    }

    v32 = std::string::append(&v45, v30, v31);
    v33 = *&v32->__r_.__value_.__l.__data_;
    v43 = v32->__r_.__value_.__r.__words[2];
    v42 = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationResult::ValidationResult(a2, &v44, 315, &v42);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    v19 = *(&v44 + 1);
    if (*(&v44 + 1))
    {
      goto LABEL_52;
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

  v17 = MIL::IRObject::GetLocationPtr(this);
  v18 = v17[1];
  *&v36 = *v17;
  *(&v36 + 1) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  (*(*this + 56))(this);
  std::operator+<char>();
  MIL::ValidationResult::ValidationResult(a2, &v36, 315, &__p);
  if (v35 < 0)
  {
    operator delete(__p);
  }

  v19 = *(&v36 + 1);
  if (*(&v36 + 1))
  {
LABEL_52:
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }
}

void sub_2181C5B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v47 - 121) < 0)
  {
    operator delete(*(v47 - 144));
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (*(v47 - 73) < 0)
  {
    operator delete(*(v47 - 96));
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  v49 = *(v47 - 104);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceBaseArgReduction(MIL::IRConstantDimension **a1, void *a2, void *a3, uint64_t x3_0, uint64_t a5)
{
  v6 = a2[1];
  v7[0] = *a2;
  v7[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::ValueTypeInferenceUtils::ValueTypeInferenceBaseArgReductionCommon(a1, v7, a3, x3_0, a5, 11);
}

void sub_2181C5CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceBaseReduction(MIL::IRConstantDimension **a1, void x1_0, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, &__p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  v7 = (*(*v6 + 88))(v6);
  if (v45 < 0)
  {
    operator delete(__p);
  }

  v8 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  v9 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, &__p);
  v10 = MIL::IRValueType::AsTensorType(v9);
  if (v45 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "keep_dims");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, &__p);
  v12 = MIL::IRValue::GetScalar<BOOL>(SingleValue);
  if (v45 < 0)
  {
    operator delete(__p);
  }

  v13 = (*(*v10 + 96))(v10);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "axes");
  v14 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &__p);
  v15 = v14;
  if (v45 < 0)
  {
    operator delete(__p);
    if (v15)
    {
      goto LABEL_9;
    }
  }

  else if (v14)
  {
LABEL_9:
    std::string::basic_string[abi:ne200100]<0>(&__p, "axes");
    v16 = MIL::ValueTypeInferenceUtils::GetSingleValue(a2, &__p);
    v17 = MIL::IRValue::AsTensor(v16);
    Data = MIL::IRTensorValue::GetDataView<int>(v17);
    v20 = v19;
    if (v45 < 0)
    {
      operator delete(__p);
    }

    MIL::ValueTypeInferenceUtils::ConvertAxesToNonNeg(Data, v20, (v13[1] - *v13) >> 3, &v42);
    std::unordered_set<unsigned long>::unordered_set<std::__wrap_iter<unsigned long *>>(&__p, v42, v43);
    v41 = 0;
    if (v13[1] != *v13)
    {
      while (std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(&__p, &v41))
      {
        if (v12)
        {
          v21 = MIL::IRConstantDimension::Make(v8, 1);
          v22 = v39;
          if (v39 < v40)
          {
            *v39 = v21;
            v23 = v22 + 8;
LABEL_36:
            v39 = v23;
            goto LABEL_37;
          }

          v29 = (v39 - v38) >> 3;
          if ((v29 + 1) >> 61)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v30 = (v40 - v38) >> 2;
          if (v30 <= v29 + 1)
          {
            v30 = v29 + 1;
          }

          if (v40 - v38 >= 0x7FFFFFFFFFFFFFF8)
          {
            v31 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v31 = v30;
          }

          if (v31)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(&v38, v31);
          }

          *(8 * v29) = v21;
          v23 = (8 * v29 + 8);
          memcpy((8 * v29 - (v39 - v38)), v38, v39 - v38);
          v34 = v38;
          v38 = (8 * v29 - (v39 - v38));
          v39 = v23;
          v40 = 0;
          if (!v34)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

LABEL_37:
        if (++v41 >= (v13[1] - *v13) >> 3)
        {
          goto LABEL_41;
        }
      }

      v24 = *v13;
      v25 = v39;
      if (v39 < v40)
      {
        *v39 = *(v24 + 8 * v41);
        v23 = v25 + 8;
        goto LABEL_36;
      }

      v26 = (v39 - v38) >> 3;
      if ((v26 + 1) >> 61)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v27 = (v40 - v38) >> 2;
      if (v27 <= v26 + 1)
      {
        v27 = v26 + 1;
      }

      if (v40 - v38 >= 0x7FFFFFFFFFFFFFF8)
      {
        v28 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v27;
      }

      if (v28)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(&v38, v28);
      }

      v32 = (8 * v26);
      *v32 = *(v24 + 8 * v41);
      v23 = (8 * v26 + 8);
      v33 = v32 - (v39 - v38);
      memcpy(v33, v38, v39 - v38);
      v34 = v38;
      v38 = v33;
      v39 = v23;
      v40 = 0;
      if (!v34)
      {
        goto LABEL_36;
      }

LABEL_35:
      operator delete(v34);
      goto LABEL_36;
    }

LABEL_41:
    std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&__p);
    if (v42)
    {
      v43 = v42;
      operator delete(v42);
    }

    v7 = v7;
LABEL_47:
    MIL::IRTensorValueType::MakeWithShape(*a1, v7, &v38);
  }

  if (v12)
  {
    v37 = v13;
    v36 = *v13;
    v35 = v37[1];
    __p = MIL::IRConstantDimension::Make(v8, 1);
    std::vector<MIL::IRDimension const*>::insert(&v38, v39, (v35 - v36) >> 3, &__p);
  }

  goto LABEL_47;
}

void sub_2181C6114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<MIL::IRDimension const*>::insert(void *a1, char *__src, unint64_t a3, char *a4)
{
  if (!a3)
  {
    return __src;
  }

  v5 = a4;
  v8 = a1[1];
  v9 = a1[2];
  if (a3 <= (v9 - v8) >> 3)
  {
    v15 = v8 - __src;
    if (a3 <= (v8 - __src) >> 3)
    {
      v18 = a1[1];
      v17 = a3;
    }

    else
    {
      v16 = 0;
      v17 = v15 >> 3;
      v18 = &v8[8 * (a3 - (v15 >> 3))];
      v19 = *a4;
      v20 = (8 * a3 - v15 - 8) >> 3;
      v21 = vdupq_n_s64(v20);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(vdupq_n_s64(v16), xmmword_218583C30)));
        if (v22.i8[0])
        {
          *&v8[8 * v16] = v19;
        }

        if (v22.i8[4])
        {
          *&v8[8 * v16 + 8] = v19;
        }

        v16 += 2;
      }

      while (((v20 + 2) & 0x3FFFFFFFFFFFFFFELL) != v16);
      a1[1] = v18;
      if (v8 == __src)
      {
        return __src;
      }
    }

    v23 = &__src[8 * a3];
    v24 = &v18[-8 * a3];
    v25 = v18;
    if (v24 < v8)
    {
      v25 = v18;
      do
      {
        v26 = *v24;
        v24 += 8;
        *v25 = v26;
        v25 += 8;
      }

      while (v24 < v8);
    }

    a1[1] = v25;
    if (v18 != v23)
    {
      memmove(&__src[8 * a3], __src, v18 - v23);
    }

    if (__src <= v5)
    {
      if (a1[1] <= v5)
      {
        v27 = 0;
      }

      else
      {
        v27 = a3;
      }

      v5 += 8 * v27;
    }

    v28 = 0;
    v29 = *v5;
    v30 = vdupq_n_s64(v17 - 1);
    v31 = __src + 8;
    do
    {
      v32 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v28), xmmword_218583C30)));
      if (v32.i8[0])
      {
        *(v31 - 1) = v29;
      }

      if (v32.i8[4])
      {
        *v31 = v29;
      }

      v28 += 2;
      v31 += 16;
    }

    while (((v17 + 1) & 0xFFFFFFFFFFFFFFFELL) != v28);
    return __src;
  }

  v10 = *a1;
  v11 = a3 + (&v8[-*a1] >> 3);
  if (v11 >> 61)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v12 = __src - v10;
  v13 = v9 - v10;
  if (v13 >> 2 > v11)
  {
    v11 = v13 >> 2;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    v14 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(a1, v14);
  }

  v34 = 0;
  v33 = 8 * (v12 >> 3);
  v35 = *a4;
  v36 = (a3 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
  v37 = v36 - ((a3 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
  v38 = vdupq_n_s64(v36);
  v39 = (v33 + 8);
  do
  {
    v40 = vmovn_s64(vcgeq_u64(v38, vorrq_s8(vdupq_n_s64(v34), xmmword_218583C30)));
    if (v40.i8[0])
    {
      *(v39 - 1) = v35;
    }

    if (v40.i8[4])
    {
      *v39 = v35;
    }

    v34 += 2;
    v39 += 2;
  }

  while (v37 != v34);
  memcpy((v33 + 8 * a3), __src, a1[1] - __src);
  v41 = *a1;
  v42 = v33 + 8 * a3 + a1[1] - __src;
  a1[1] = __src;
  v43 = (__src - v41);
  v44 = (v33 - (__src - v41));
  memcpy(v44, v41, v43);
  v45 = *a1;
  *a1 = v44;
  a1[1] = v42;
  a1[2] = 0;
  if (v45)
  {
    operator delete(v45);
  }

  return v33;
}

uint64_t std::unordered_set<unsigned long>::unordered_set<std::__wrap_iter<unsigned long *>>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(a1, v5, v5);
      ++v5;
    }

    while (v5 != a3);
  }

  return a1;
}

void *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(void *a1, unint64_t *a2, void *a3)
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
    if (v3 >= *&v4)
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

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void MIL::Operators::Common::ios15::BaseArgReduction::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_2181C7204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v54 = *(v52 - 96);
  *(v52 - 96) = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54, a2, a3, a4, a5, a6, a7, a8);
  }

  v55 = *v51;
  *v51 = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a45, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReduceArgmax::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseArgReduction::Make();
}

void sub_2181C7620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReduceArgmin::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseArgReduction::Make();
}

void sub_2181C76D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::BaseReduction::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_2181C84B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
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

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 184), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReduceL1Norm::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseReduction::Make();
}

void sub_2181C8A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReduceL2Norm::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseReduction::Make();
}

void sub_2181C8ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReduceLogSum::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseReduction::Make();
}

void sub_2181C8B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReduceLogSumExp::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseReduction::Make();
}

void sub_2181C8C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReduceMax::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseReduction::Make();
}

void sub_2181C8CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReduceMean::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseReduction::Make();
}

void sub_2181C8D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReduceMin::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseReduction::Make();
}

void sub_2181C8E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReduceProd::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseReduction::Make();
}

void sub_2181C8EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReduceSum::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseReduction::Make();
}

void sub_2181C8FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ReduceSumSquare::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseReduction::Make();
}

void sub_2181C905C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateBaseScatterWithAxis(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v33, "axis");
  IsParameterSet = MIL::IROperation::IsParameterSet(this, &v33.__r_.__value_.__l.__data_);
  v5 = IsParameterSet;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
    if (!v5)
    {
LABEL_11:
      MIL::ValidationResult::ValidationResult(a2);
      return;
    }
  }

  else if (!IsParameterSet)
  {
    goto LABEL_11;
  }

  std::string::basic_string[abi:ne200100]<0>(&v33, "data");
  ParameterType = MIL::IROperation::GetParameterType(this, &v33);
  v7 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (((*(*v7 + 104))(v7) & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = MIL::IRTensorValueType::Rank(v7);
  std::string::basic_string[abi:ne200100]<0>(&v33, "axis");
  ParameterValue = MIL::IROperation::GetParameterValue(this, &v33);
  v10 = MIL::IRValue::GetScalar<int>(ParameterValue);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (MIL::Validation::IsAxisValidForRank(v10, v8))
  {
    goto LABEL_11;
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v12 = LocationPtr[1];
  *&v32 = *LocationPtr;
  *(&v32 + 1) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  (*(*this + 56))(this);
  std::operator+<char>();
  v13 = std::string::append(&v27, ", 'axis' must be within range (-data_rank - 1, data_rank) (exclusive). Provided axis: ");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v26, v10);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v26;
  }

  else
  {
    v15 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v26.__r_.__value_.__l.__size_;
  }

  v17 = std::string::append(&v28, v15, size);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v29, "for input 'data' with rank: ");
  v20 = *&v19->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v25, v8);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v25;
  }

  else
  {
    v21 = v25.__r_.__value_.__r.__words[0];
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = v25.__r_.__value_.__l.__size_;
  }

  v23 = std::string::append(&v33, v21, v22);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v31 = v23->__r_.__value_.__r.__words[2];
  v30 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  MIL::ValidationResult::ValidationResult(a2, &v32, 315, &v30);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (*(&v32 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v32 + 1));
  }
}

void sub_2181C938C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 105) < 0)
  {
    operator delete(*(v40 - 128));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  v42 = *(v40 - 88);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::BaseScatter::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_2181CA828(_Unwind_Exception *a1)
{
  v4 = STACK[0x238];
  STACK[0x238] = 0;
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
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x260], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::BaseScatterWithAxis::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_2181CC3E0(_Unwind_Exception *a1)
{
  v4 = STACK[0x248];
  STACK[0x248] = 0;
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
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x270], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Scatter::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseScatterWithAxis::Make();
}

void sub_2181CCBB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ScatterAlongAxis::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseScatterWithAxis::Make();
}

void sub_2181CCC64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ScatterNd::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  MIL::Operators::Common::ios15::BaseScatter::Make();
}

void sub_2181CCD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateArgsort(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v30, "x");
  ParameterType = MIL::IROperation::GetParameterType(this, v30);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (((*(*v5 + 104))(v5) & 1) == 0)
  {
    goto LABEL_17;
  }

  v6 = MIL::IRTensorValueType::Rank(v5);
  std::string::basic_string[abi:ne200100]<0>(v30, "axis");
  ParameterValue = MIL::IROperation::GetParameterValue(this, v30);
  v8 = MIL::IRValue::GetScalar<int>(ParameterValue);
  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (v8 >= v6 || v8 < -v6)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v18 = LocationPtr[1];
    *&v29 = *LocationPtr;
    *(&v29 + 1) = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v27, "'axis' must be within range (-input_rank - 1, input_rank) (exclusive)");
    MIL::ValidationResult::ValidationResult(a2, &v29, 315, v27);
    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    v16 = *(&v29 + 1);
    if (*(&v29 + 1))
    {
      goto LABEL_23;
    }
  }

  else
  {
    OutputType = MIL::IROperation::GetOutputType(this, 0);
    v10 = (*(*OutputType + 24))(OutputType);
    if (v10)
    {
      v11 = (*(*v10 + 96))(v10);
      v12 = (*(*v5 + 96))(v5);
      v13 = *(v11 + 8) - *v11;
      if (v13 != *(v12 + 8) - *v12 || memcmp(*v11, *v12, v13))
      {
        v14 = MIL::IRObject::GetLocationPtr(this);
        v15 = v14[1];
        *&v23 = *v14;
        *(&v23 + 1) = v15;
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "Output type should be same as input type");
        MIL::ValidationResult::ValidationResult(a2, &v23, 313, __p);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        v16 = *(&v23 + 1);
        if (!*(&v23 + 1))
        {
          return;
        }

LABEL_23:
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        return;
      }

LABEL_17:
      MIL::ValidationResult::ValidationResult(a2);
      return;
    }

    v19 = MIL::IRObject::GetLocationPtr(this);
    v20 = v19[1];
    *&v26 = *v19;
    *(&v26 + 1) = v20;
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v24, "Output type should be a tensor");
    MIL::ValidationResult::ValidationResult(a2, &v26, 313, v24);
    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    v16 = *(&v26 + 1);
    if (*(&v26 + 1))
    {
      goto LABEL_23;
    }
  }
}

void sub_2181CD008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidatePad(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v134, "x");
  ParameterType = MIL::IROperation::GetParameterType(this, &v134);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v135) < 0)
  {
    operator delete(v134);
  }

  v6 = (*(*v5 + 96))(v5);
  v143 = 0;
  v144 = 0;
  v142 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v142, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
  std::string::basic_string[abi:ne200100]<0>(&v134, "pad");
  v7 = MIL::IROperation::GetParameterType(this, &v134);
  v8 = MIL::IRValueType::AsTensorType(v7);
  if (SHIBYTE(v135) < 0)
  {
    operator delete(v134);
  }

  v9 = (*(*v8 + 96))(v8);
  v139 = 0;
  v140 = 0;
  v141 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v139, *v9, *(v9 + 8), (*(v9 + 8) - *v9) >> 3);
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v11 = LocationPtr[1];
  v133[0] = *LocationPtr;
  v133[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (!MIL::ValidationResult::IsGood(&v134))
  {
    v15 = v136;
    *(a2 + 8) = v135;
    v135 = 0uLL;
    *(a2 + 24) = v15;
    *(a2 + 40) = v137;
    v136 = 0uLL;
    v137 = 0;
    *a2 = &unk_2829E9B70;
    *(a2 + 48) = v138;
    goto LABEL_96;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "mode");
  ParameterValue = MIL::IROperation::GetParameterValue(this, &__p);
  MIL::IRValue::GetScalar<std::string>(ParameterValue, &v132);
  if (SHIBYTE(v131) < 0)
  {
    operator delete(__p);
  }

  v13 = MIL::IRDimension::AsConstant(*v139);
  if ((*(*v13 + 48))(v13) < 5)
  {
    goto LABEL_34;
  }

  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v132.__r_.__value_.__l.__size_ == 8)
    {
      v14 = v132.__r_.__value_.__r.__words[0];
LABEL_19:
      if (v14->__r_.__value_.__r.__words[0] == 0x746E6174736E6F63)
      {
        goto LABEL_34;
      }
    }
  }

  else if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) == 8)
  {
    v14 = &v132;
    goto LABEL_19;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "pad");
  v16 = MIL::IROperation::TryGetParameterValue(this, &__p, 0);
  v17 = v16;
  if (SHIBYTE(v131) < 0)
  {
    operator delete(__p);
    if (!v17)
    {
LABEL_82:
      v54 = MIL::IRObject::GetLocationPtr(this);
      v55 = v54[1];
      *&v128 = *v54;
      *(&v128 + 1) = v55;
      if (v55)
      {
        atomic_fetch_add_explicit((v55 + 8), 1uLL, memory_order_relaxed);
      }

      MIL::ValidationResult::ValidationResult(a2, &v128, 315, v126);
      if (v127 < 0)
      {
        operator delete(v126[0]);
      }

      if (*(&v128 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v128 + 1));
      }

      goto LABEL_94;
    }
  }

  else if (!v16)
  {
    goto LABEL_82;
  }

  v18 = MIL::IRDimension::AsConstant(*v139);
  v19 = (*(*v18 + 48))(v18);
  std::vector<int>::vector[abi:ne200100](&__p, v19);
  if (v130 == __p)
  {
    v20 = 0;
  }

  else
  {
    v20 = __p;
  }

  MIL::IRValueUtils::CopyTensorTo<int>(v17, v20, (v130 - __p) >> 2);
  if ((v130 - __p) >> 2 != 4)
  {
    v21 = 0;
    while (!*(__p + v21))
    {
      if (((v130 - __p) >> 2) - 4 == ++v21)
      {
        goto LABEL_33;
      }
    }

    v130 = __p;
    operator delete(__p);
    goto LABEL_82;
  }

  if (__p)
  {
LABEL_33:
    v130 = __p;
    operator delete(__p);
  }

LABEL_34:
  OutputType = MIL::IROperation::GetOutputType(this, 0);
  v23 = MIL::IRValueType::AsTensorType(OutputType);
  if ((*(*v5 + 104))(v5) && (*(*v23 + 104))(v23))
  {
    v24 = (*(*v23 + 96))(v23);
    __p = 0;
    v130 = 0;
    v131 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v24, *(v24 + 8), (*(v24 + 8) - *v24) >> 3);
    v25 = MIL::IRTensorValueType::Rank(v5);
    if (v25 != MIL::IRTensorValueType::Rank(v23))
    {
      v51 = MIL::IRObject::GetLocationPtr(this);
      v52 = v51[1];
      *&v125 = *v51;
      *(&v125 + 1) = v52;
      if (v52)
      {
        atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v123, "Input and output should have the same rank");
      MIL::ValidationResult::ValidationResult(a2, &v125, 313, v123);
      if (v124 < 0)
      {
        operator delete(v123[0]);
      }

      v53 = *(&v125 + 1);
      if (*(&v125 + 1))
      {
LABEL_80:
        std::__shared_weak_count::__release_shared[abi:ne200100](v53);
      }

LABEL_89:
      if (__p)
      {
        v130 = __p;
        operator delete(__p);
      }

      goto LABEL_94;
    }

    v26 = (*(*v8 + 16))(v8);
    std::string::basic_string[abi:ne200100]<0>(&v122, "pad");
    v27 = MIL::IROperation::TryGetParameterValue(this, &v122, 0);
    if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v122.__r_.__value_.__l.__data_);
    }

    if (!v27)
    {
      MIL::ValidationResult::ValidationResult(a2);
      goto LABEL_89;
    }

    v28 = MIL::IRValue::AsTensor(v27);
    v29 = 0;
    v102 = v26 >> 1;
    for (i = MIL::IRTensorValue::GetDataView<int>(v28) + 8 * (v26 >> 1); ; i += 8)
    {
      if (v29 >= MIL::IRTensorValueType::Rank(v5))
      {
        if (__p)
        {
          v130 = __p;
          operator delete(__p);
        }

        break;
      }

      v31 = v142[v29];
      v32 = *(__p + v29);
      v33 = (*(*v31 + 16))(v31);
      v34 = (*(*v32 + 16))(v32);
      if ((v33 == 0) == (v34 != 0))
      {
        v56 = MIL::IRObject::GetLocationPtr(this);
        v57 = v56[1];
        *&v121 = *v56;
        *(&v121 + 1) = v57;
        if (v57)
        {
          atomic_fetch_add_explicit((v57 + 8), 1uLL, memory_order_relaxed);
        }

        std::to_string(&v118, v29);
        v58 = std::string::insert(&v118, 0, "Dim ");
        v59 = *&v58->__r_.__value_.__l.__data_;
        v122.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
        *&v122.__r_.__value_.__l.__data_ = v59;
        v58->__r_.__value_.__l.__size_ = 0;
        v58->__r_.__value_.__r.__words[2] = 0;
        v58->__r_.__value_.__r.__words[0] = 0;
        v60 = std::string::append(&v122, " for both input and output should have matching dimension type");
        v61 = *&v60->__r_.__value_.__l.__data_;
        v120 = v60->__r_.__value_.__r.__words[2];
        v119 = v61;
        v60->__r_.__value_.__l.__size_ = 0;
        v60->__r_.__value_.__r.__words[2] = 0;
        v60->__r_.__value_.__r.__words[0] = 0;
        MIL::ValidationResult::ValidationResult(a2, &v121, 313, &v119);
        if (SHIBYTE(v120) < 0)
        {
          operator delete(v119);
        }

        if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v122.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v118.__r_.__value_.__l.__data_);
        }

        v53 = *(&v121 + 1);
        if (*(&v121 + 1))
        {
          goto LABEL_80;
        }

        goto LABEL_89;
      }

      if (v29 < MIL::IRTensorValueType::Rank(v5) - v102)
      {
        if (v31 != v32)
        {
          v62 = MIL::IRObject::GetLocationPtr(this);
          v63 = v62[1];
          *&v105 = *v62;
          *(&v105 + 1) = v63;
          if (v63)
          {
            atomic_fetch_add_explicit((v63 + 8), 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v103, "Output shape dimensions should match input when no padding is added");
          MIL::ValidationResult::ValidationResult(a2, &v105, 313, v103);
          if (v104 < 0)
          {
            operator delete(v103[0]);
          }

          v53 = *(&v105 + 1);
          if (*(&v105 + 1))
          {
            goto LABEL_80;
          }

          goto LABEL_89;
        }

        goto LABEL_74;
      }

      if (!v33)
      {
        goto LABEL_74;
      }

      v35 = MIL::IRTensorValueType::Rank(v5);
      v36 = v35;
      if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v132.__r_.__value_.__l.__size_ == 7 && *v132.__r_.__value_.__l.__data_ == 1818649970 && *(v132.__r_.__value_.__r.__words[0] + 3) == 1952671084)
        {
LABEL_71:
          v45 = (i - 8 * v35);
          v101 = *v45;
          if ((*(*v33 + 48))(v33) <= v101 || (v46 = v45[1], (*(*v33 + 48))(v33) <= v46))
          {
            v87 = MIL::IRObject::GetLocationPtr(this);
            v88 = v87[1];
            *&v117 = *v87;
            *(&v117 + 1) = v88;
            if (v88)
            {
              atomic_fetch_add_explicit((v88 + 8), 1uLL, memory_order_relaxed);
            }

            std::to_string(&v113, v29);
            v89 = std::string::insert(&v113, 0, "Padding size for dim");
            v90 = *&v89->__r_.__value_.__l.__data_;
            v114.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
            *&v114.__r_.__value_.__l.__data_ = v90;
            v89->__r_.__value_.__l.__size_ = 0;
            v89->__r_.__value_.__r.__words[2] = 0;
            v89->__r_.__value_.__r.__words[0] = 0;
            v91 = std::string::append(&v114, " is too big for mode reflect. ");
            v92 = *&v91->__r_.__value_.__l.__data_;
            v118.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
            *&v118.__r_.__value_.__l.__data_ = v92;
            v91->__r_.__value_.__l.__size_ = 0;
            v91->__r_.__value_.__r.__words[2] = 0;
            v91->__r_.__value_.__r.__words[0] = 0;
            v93 = std::string::append(&v118, " It can a maximum of (dim_size - 1) ");
            v94 = *&v93->__r_.__value_.__l.__data_;
            v122.__r_.__value_.__r.__words[2] = v93->__r_.__value_.__r.__words[2];
            *&v122.__r_.__value_.__l.__data_ = v94;
            v93->__r_.__value_.__l.__size_ = 0;
            v93->__r_.__value_.__r.__words[2] = 0;
            v93->__r_.__value_.__r.__words[0] = 0;
            v95 = (*(*v33 + 48))(v33);
            std::to_string(&v112, v95 - 1);
            if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v96 = &v112;
            }

            else
            {
              v96 = v112.__r_.__value_.__r.__words[0];
            }

            if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v112.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v112.__r_.__value_.__l.__size_;
            }

            v98 = std::string::append(&v122, v96, size);
            v99 = *&v98->__r_.__value_.__l.__data_;
            v116 = v98->__r_.__value_.__r.__words[2];
            v115 = v99;
            v98->__r_.__value_.__l.__size_ = 0;
            v98->__r_.__value_.__r.__words[2] = 0;
            v98->__r_.__value_.__r.__words[0] = 0;
            MIL::ValidationResult::ValidationResult(a2, &v117, 315, &v115);
            if (SHIBYTE(v116) < 0)
            {
              operator delete(v115);
            }

            if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v112.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v122.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v118.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v114.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v113.__r_.__value_.__l.__data_);
            }

            v53 = *(&v117 + 1);
            if (*(&v117 + 1))
            {
              goto LABEL_80;
            }

            goto LABEL_89;
          }

          goto LABEL_73;
        }

        if (v132.__r_.__value_.__l.__size_ == 9)
        {
          v37 = v132.__r_.__value_.__r.__words[0];
LABEL_58:
          v39 = v37->__r_.__value_.__r.__words[0];
          v40 = v37->__r_.__value_.__s.__data_[8];
          if (v39 == 0x746163696C706572 && v40 == 101)
          {
            v42 = (i - 8 * v35);
            v100 = *v42;
            if ((*(*v33 + 48))(v33) < v100 || (v43 = v42[1], (*(*v33 + 48))(v33) < v43))
            {
              v74 = MIL::IRObject::GetLocationPtr(this);
              v75 = v74[1];
              *&v111 = *v74;
              *(&v111 + 1) = v75;
              if (v75)
              {
                atomic_fetch_add_explicit((v75 + 8), 1uLL, memory_order_relaxed);
              }

              std::to_string(&v113, v29);
              v76 = std::string::insert(&v113, 0, "Padding size for dim");
              v77 = *&v76->__r_.__value_.__l.__data_;
              v114.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
              *&v114.__r_.__value_.__l.__data_ = v77;
              v76->__r_.__value_.__l.__size_ = 0;
              v76->__r_.__value_.__r.__words[2] = 0;
              v76->__r_.__value_.__r.__words[0] = 0;
              v78 = std::string::append(&v114, " is too big for mode replicate. ");
              v79 = *&v78->__r_.__value_.__l.__data_;
              v118.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
              *&v118.__r_.__value_.__l.__data_ = v79;
              v78->__r_.__value_.__l.__size_ = 0;
              v78->__r_.__value_.__r.__words[2] = 0;
              v78->__r_.__value_.__r.__words[0] = 0;
              v80 = std::string::append(&v118, " It can a maximum of (dim_size) ");
              v81 = *&v80->__r_.__value_.__l.__data_;
              v122.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
              *&v122.__r_.__value_.__l.__data_ = v81;
              v80->__r_.__value_.__l.__size_ = 0;
              v80->__r_.__value_.__r.__words[2] = 0;
              v80->__r_.__value_.__r.__words[0] = 0;
              v82 = (*(*v33 + 48))(v33);
              std::to_string(&v112, v82 - 1);
              if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v83 = &v112;
              }

              else
              {
                v83 = v112.__r_.__value_.__r.__words[0];
              }

              if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v84 = HIBYTE(v112.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v84 = v112.__r_.__value_.__l.__size_;
              }

              v85 = std::string::append(&v122, v83, v84);
              v86 = *&v85->__r_.__value_.__l.__data_;
              v110 = v85->__r_.__value_.__r.__words[2];
              *v109 = v86;
              v85->__r_.__value_.__l.__size_ = 0;
              v85->__r_.__value_.__r.__words[2] = 0;
              v85->__r_.__value_.__r.__words[0] = 0;
              MIL::ValidationResult::ValidationResult(a2, &v111, 315, v109);
              if (SHIBYTE(v110) < 0)
              {
                operator delete(v109[0]);
              }

              if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v112.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v122.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v118.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v114.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v113.__r_.__value_.__l.__data_);
              }

              v53 = *(&v111 + 1);
              if (*(&v111 + 1))
              {
                goto LABEL_80;
              }

              goto LABEL_89;
            }
          }
        }
      }

      else
      {
        if (HIBYTE(v132.__r_.__value_.__r.__words[2]) != 7)
        {
          if (HIBYTE(v132.__r_.__value_.__r.__words[2]) != 9)
          {
            goto LABEL_73;
          }

          v37 = &v132;
          goto LABEL_58;
        }

        if (LODWORD(v132.__r_.__value_.__l.__data_) == 1818649970 && *(v132.__r_.__value_.__r.__words + 3) == 1952671084)
        {
          goto LABEL_71;
        }
      }

LABEL_73:
      v47 = (i - 8 * v36);
      v48 = *v47;
      v49 = v47[1];
      v50 = (*(*v33 + 48))(v33) + v49 + v48;
      if (v50 != (*(*v34 + 48))(v34))
      {
        v64 = MIL::IRObject::GetLocationPtr(this);
        v65 = v64[1];
        *&v108 = *v64;
        *(&v108 + 1) = v65;
        if (v65)
        {
          atomic_fetch_add_explicit((v65 + 8), 1uLL, memory_order_relaxed);
        }

        std::to_string(&v114, v29);
        v66 = std::string::insert(&v114, 0, "Output dim");
        v67 = *&v66->__r_.__value_.__l.__data_;
        v118.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
        *&v118.__r_.__value_.__l.__data_ = v67;
        v66->__r_.__value_.__l.__size_ = 0;
        v66->__r_.__value_.__r.__words[2] = 0;
        v66->__r_.__value_.__r.__words[0] = 0;
        v68 = std::string::append(&v118, " size incorrect. Expected ");
        v69 = *&v68->__r_.__value_.__l.__data_;
        v122.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
        *&v122.__r_.__value_.__l.__data_ = v69;
        v68->__r_.__value_.__l.__size_ = 0;
        v68->__r_.__value_.__r.__words[2] = 0;
        v68->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v113, v50);
        if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v70 = &v113;
        }

        else
        {
          v70 = v113.__r_.__value_.__r.__words[0];
        }

        if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v71 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v71 = v113.__r_.__value_.__l.__size_;
        }

        v72 = std::string::append(&v122, v70, v71);
        v73 = *&v72->__r_.__value_.__l.__data_;
        v107 = v72->__r_.__value_.__r.__words[2];
        *v106 = v73;
        v72->__r_.__value_.__l.__size_ = 0;
        v72->__r_.__value_.__r.__words[2] = 0;
        v72->__r_.__value_.__r.__words[0] = 0;
        MIL::ValidationResult::ValidationResult(a2, &v108, 313, v106);
        if (SHIBYTE(v107) < 0)
        {
          operator delete(v106[0]);
        }

        if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v113.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v122.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v118.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v114.__r_.__value_.__l.__data_);
        }

        v53 = *(&v108 + 1);
        if (*(&v108 + 1))
        {
          goto LABEL_80;
        }

        goto LABEL_89;
      }

LABEL_74:
      ++v29;
    }
  }

  MIL::ValidationResult::ValidationResult(a2);
LABEL_94:
  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v132.__r_.__value_.__l.__data_);
  }

LABEL_96:
  MIL::ValidationResult::~ValidationResult(&v134);
  if (v139)
  {
    v140 = v139;
    operator delete(v139);
  }

  if (v142)
  {
    v143 = v142;
    operator delete(v142);
  }
}

void sub_2181CDF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, std::__shared_weak_count *a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (a53 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a66 < 0)
  {
    operator delete(a65);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a56);
  }

  if (a67)
  {
    operator delete(a67);
  }

  if (*(v67 - 217) < 0)
  {
    operator delete(*(v67 - 240));
  }

  MIL::ValidationResult::~ValidationResult((v67 - 200));
  v69 = *(v67 - 144);
  if (v69)
  {
    *(v67 - 136) = v69;
    operator delete(v69);
  }

  v70 = *(v67 - 120);
  if (v70)
  {
    *(v67 - 112) = v70;
    operator delete(v70);
  }

  _Unwind_Resume(a1);
}

void sub_2181CE2E0()
{
  if (*(v0 - 177) < 0)
  {
    JUMPOUT(0x2181CE2D4);
  }

  JUMPOUT(0x2181CE2D8);
}

void anonymous namespace::ValidatePadInputs(MIL::IRTensorValueType *a1@<X0>, MIL::IRTensorValueType *a2@<X1>, void *a3@<X2>, MIL::ValidationResult *a4@<X8>)
{
  v8 = (*(*a1 + 96))(a1);
  v30 = 0;
  v31 = 0;
  v29 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v29, *v8, *(v8 + 8), (*(v8 + 8) - *v8) >> 3);
  v9 = (*(*a2 + 96))(a2);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v26, *v9, *(v9 + 8), (*(v9 + 8) - *v9) >> 3);
  if (MIL::IRTensorValueType::Rank(a2) == 1)
  {
    v10 = MIL::IRDimension::AsConstant(*v26);
    if ((*(*a1 + 104))(a1))
    {
      v11 = (*(*v10 + 48))(v10);
      if (v11 > 2 * MIL::IRTensorValueType::Rank(a1))
      {
        v12 = a3[1];
        *&v22 = *a3;
        *(&v22 + 1) = v12;
        if (v12)
        {
          atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "Pad can have a maximum size of 2 * (input x rank)");
        MIL::ValidationResult::ValidationResult(a4, &v22, 315, __p);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        v13 = *(&v22 + 1);
        if (!*(&v22 + 1))
        {
          goto LABEL_24;
        }

LABEL_23:
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        goto LABEL_24;
      }
    }

    v15 = MIL::IRDimension::AsConstant(*v26);
    if (((*(*v15 + 48))(v15) & 1) == 0)
    {
      MIL::ValidationResult::ValidationResult(a4);
      goto LABEL_24;
    }

    v16 = a3[1];
    *&v19 = *a3;
    *(&v19 + 1) = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v17, "Padding must be even! Provided odd number of padding");
    MIL::ValidationResult::ValidationResult(a4, &v19, 315, v17);
    if (v18 < 0)
    {
      operator delete(v17[0]);
    }

    v13 = *(&v19 + 1);
    if (*(&v19 + 1))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v14 = a3[1];
    *&v25 = *a3;
    *(&v25 + 1) = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v23, "Padding must be rank 1");
    MIL::ValidationResult::ValidationResult(a4, &v25, 315, v23);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    v13 = *(&v25 + 1);
    if (*(&v25 + 1))
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }
}

void sub_2181CE5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  v33 = *(v31 - 80);
  if (v33)
  {
    *(v31 - 72) = v33;
    operator delete(v33);
  }

  v34 = *(v31 - 56);
  if (v34)
  {
    *(v31 - 48) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::IRValueUtils::CopyTensorTo<int>(MIL::IRValue *a1, void *a2, unint64_t a3)
{
  v5 = MIL::IRValue::AsTensor(a1);
  result = MIL::IRTensorValue::GetDataView<int>(v5);
  if (a3 < v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Insufficient destination buffer size.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v7)
  {

    return memmove(a2, result, 4 * v7);
  }

  return result;
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateFill(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v26, "shape");
  ParameterValue = MIL::IROperation::TryGetParameterValue(this, &v26, 0);
  v5 = ParameterValue;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
    if (!v5)
    {
      goto LABEL_19;
    }
  }

  else if (!ParameterValue)
  {
    goto LABEL_19;
  }

  v6 = (*(*v5 + 32))(v5);
  v7 = MIL::IRValueType::AsTensorType(v6);
  v8 = (*(*v7 + 16))(v7);
  if (v8 >= 6)
  {
    std::to_string(&v26, v8);
    v9 = std::string::insert(&v26, 0, "'shape' parameter must have size less than equal to 5. Instead, size is ");
    v10 = v9->__r_.__value_.__r.__words[0];
    size = v9->__r_.__value_.__l.__size_;
    v25[0] = v9->__r_.__value_.__r.__words[2];
    *(v25 + 3) = *(&v9->__r_.__value_.__r.__words[2] + 3);
    v12 = SHIBYTE(v9->__r_.__value_.__r.__words[2]);
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v14 = LocationPtr[1];
    *&v24 = *LocationPtr;
    *(&v24 + 1) = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    if (v12 < 0)
    {
      std::string::__init_copy_ctor_external(&v23, v10, size);
    }

    else
    {
      v23.__r_.__value_.__r.__words[0] = v10;
      v23.__r_.__value_.__l.__size_ = size;
      LODWORD(v23.__r_.__value_.__r.__words[2]) = v25[0];
      *(&v23.__r_.__value_.__r.__words[2] + 3) = *(v25 + 3);
      *(&v23.__r_.__value_.__s + 23) = v12;
    }

    MIL::ValidationResult::ValidationResult(a2, &v24, 315, &v23);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    v20 = *(&v24 + 1);
    if (!*(&v24 + 1))
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v15 = MIL::IRTensorValueType::Rank(v7);
  if (v15 < 2)
  {
LABEL_19:
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  std::to_string(&v26, v15);
  v16 = std::string::insert(&v26, 0, "'shape' parameter must have 1 dimension (rank 1). Instead, rank is ");
  v10 = v16->__r_.__value_.__r.__words[0];
  v17 = v16->__r_.__value_.__l.__size_;
  v25[0] = v16->__r_.__value_.__r.__words[2];
  *(v25 + 3) = *(&v16->__r_.__value_.__r.__words[2] + 3);
  v12 = SHIBYTE(v16->__r_.__value_.__r.__words[2]);
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v18 = MIL::IRObject::GetLocationPtr(this);
  v19 = v18[1];
  *&v22 = *v18;
  *(&v22 + 1) = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  if (v12 < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v10, v17);
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = v10;
    __p.__r_.__value_.__l.__size_ = v17;
    LODWORD(__p.__r_.__value_.__r.__words[2]) = v25[0];
    *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v25 + 3);
    *(&__p.__r_.__value_.__s + 23) = v12;
  }

  MIL::ValidationResult::ValidationResult(a2, &v22, 315, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v20 = *(&v22 + 1);
  if (!*(&v22 + 1))
  {
    goto LABEL_25;
  }

LABEL_24:
  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
LABEL_25:
  if (v12 < 0)
  {
    operator delete(v10);
  }
}

void sub_2181CE9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateFlatten2D(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this, __p);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "axis");
  IsParameterSet = MIL::IROperation::IsParameterSet(this, __p);
  v7 = IsParameterSet;
  if (v14 < 0)
  {
    operator delete(__p[0]);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_12:
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  if (!IsParameterSet)
  {
    goto LABEL_12;
  }

LABEL_5:
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

void sub_2181CEB58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::ValidateFlatten2DInputs(MIL::IRTensorValueType *a1@<X0>, int a2@<W1>, void *a3@<X2>, MIL::ValidationResult *a4@<X8>)
{
  if (((*(*a1 + 104))(a1) & 1) != 0 && ((v8 = MIL::IRTensorValueType::Rank(a1), v8 < a2) || -v8 > a2))
  {
    v9 = a3[1];
    *&v12 = *a3;
    *(&v12 + 1) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "'axis'' must be within range [-input_rank, input_rank]");
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

void sub_2181CEC90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
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

void MIL::Operators::Common::ios15::CustomValidators::ValidateNonMaximumSuppression(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v35, "boxes");
  ParameterType = MIL::IROperation::GetParameterType(this, &v35);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
  }

  std::string::basic_string[abi:ne200100]<0>(&v35, "scores");
  v6 = MIL::IROperation::GetParameterType(this, &v35);
  v7 = MIL::IRValueType::AsTensorType(v6);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
  }

  if (*(*v5 + 104))(v5) && ((*(*v7 + 104))(v7))
  {
    v8 = (*(*v5 + 96))(v5);
    v36 = 0;
    v37 = 0;
    v35 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v35, *v8, *(v8 + 8), (*(v8 + 8) - *v8) >> 3);
    v9 = (*(*v7 + 96))(v7);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v29, *v9, *(v9 + 8), (*(v9 + 8) - *v9) >> 3);
    if (*v35 == *v29)
    {
      if (v35[1] == *(v29 + 1))
      {
        v17 = (*(*v35[2] + 16))(v35[2]);
        if ((*(*v17 + 48))(v17) == 4)
        {
          MIL::ValidationResult::ValidationResult(a2);
LABEL_35:
          if (v29)
          {
            v30 = v29;
            operator delete(v29);
          }

          if (v35)
          {
            v36 = v35;
            operator delete(v35);
          }

          return;
        }

        LocationPtr = MIL::IRObject::GetLocationPtr(this);
        v19 = LocationPtr[1];
        *&v22 = *LocationPtr;
        *(&v22 + 1) = v19;
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v20, "Invalid boxes coordinate");
        MIL::ValidationResult::ValidationResult(a2, &v22, 315, v20);
        if (v21 < 0)
        {
          operator delete(v20[0]);
        }

        v12 = *(&v22 + 1);
        if (!*(&v22 + 1))
        {
          goto LABEL_35;
        }
      }

      else
      {
        v15 = MIL::IRObject::GetLocationPtr(this);
        v16 = v15[1];
        *&v25 = *v15;
        *(&v25 + 1) = v16;
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v23, "Boxes don't match between boxes and scores");
        MIL::ValidationResult::ValidationResult(a2, &v25, 315, v23);
        if (v24 < 0)
        {
          operator delete(v23[0]);
        }

        v12 = *(&v25 + 1);
        if (!*(&v25 + 1))
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v10 = MIL::IRObject::GetLocationPtr(this);
      v11 = v10[1];
      *&v28 = *v10;
      *(&v28 + 1) = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Batch doesn't match between boxes and scores");
      MIL::ValidationResult::ValidationResult(a2, &v28, 315, __p);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      v12 = *(&v28 + 1);
      if (!*(&v28 + 1))
      {
        goto LABEL_35;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    goto LABEL_35;
  }

  v13 = MIL::IRObject::GetLocationPtr(this);
  v14 = v13[1];
  *&v34 = *v13;
  *(&v34 + 1) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v32, "Non-fixed rank not supported");
  MIL::ValidationResult::ValidationResult(a2, &v34, 315, v32);
  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (*(&v34 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v34 + 1));
  }
}

void sub_2181CF078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a33)
  {
    operator delete(a33);
  }

  v36 = *(v34 - 72);
  if (v36)
  {
    *(v34 - 64) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateTile(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *x8_0@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "reps");
  ParameterValue = MIL::IROperation::TryGetParameterValue(this, __p, 0);
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v7 = LocationPtr[1];
  v8[0] = *LocationPtr;
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2181CF210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::ValidateTileInputs(MIL::IRValue *a1@<X0>, void *a2@<X1>, MIL::ValidationResult *a3@<X8>)
{
  if (a1 && (v5 = MIL::IRValue::AsTensor(a1), Data = MIL::IRTensorValue::GetDataView<int>(v5), v7))
  {
    v8 = 4 * v7;
    while (*Data > 0)
    {
      ++Data;
      v8 -= 4;
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    v9 = a2[1];
    *&v12 = *a2;
    *(&v12 + 1) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "All values of reps must be at least 1");
    MIL::ValidationResult::ValidationResult(a3, &v12, 315, __p);
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
LABEL_6:

    MIL::ValidationResult::ValidationResult(a3);
  }
}

void sub_2181CF314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
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

void MIL::Operators::Common::ios15::CustomValidators::ValidateTopk(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  ParameterType = MIL::IROperation::GetParameterType(this, &__p);
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "axis");
  if (MIL::IROperation::TryGetParameterValue(this, &__p, 0))
  {
    std::string::basic_string[abi:ne200100]<0>(v19, "axis");
    ParameterValue = MIL::IROperation::GetParameterValue(this, v19);
    v7 = MIL::IRValue::GetScalar<int>(ParameterValue);
    if (v20 < 0)
    {
      operator delete(v19[0]);
    }
  }

  else
  {
    v7 = -1;
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "k");
  v8 = MIL::IROperation::TryGetParameterValue(this, &__p, 0);
  v9 = v8;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
    if (v9)
    {
      goto LABEL_11;
    }
  }

  else if (v8)
  {
LABEL_11:
    v10 = MIL::IRValue::GetScalar<int>(v9);
    goto LABEL_14;
  }

  v10 = 1;
LABEL_14:
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v12 = LocationPtr[1];
  v13[0] = *LocationPtr;
  v13[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (MIL::ValidationResult::IsGood(&__p))
  {
    MIL::ValidationResult::ValidationResult(a2);
  }

  else
  {
    *(a2 + 8) = v15;
    v15 = 0uLL;
    *(a2 + 24) = v16;
    *(a2 + 40) = v17;
    v16 = 0uLL;
    v17 = 0;
    *a2 = &unk_2829E9B70;
    *(a2 + 48) = v18;
  }

  MIL::ValidationResult::~ValidationResult(&__p);
}

void sub_2181CF528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::ValidateTopkInputs(MIL::IRTensorValueType *a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X3>, MIL::ValidationResult *a5@<X8>)
{
  v10 = (*(*a1 + 96))(a1);
  v63 = 0;
  v64 = 0;
  v62 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v62, *v10, *(v10 + 8), (*(v10 + 8) - *v10) >> 3);
  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_9;
  }

  v11 = a2;
  if (a2 < 0)
  {
    v11 = MIL::IRTensorValueType::Rank(a1) + a2;
  }

  v12 = MIL::IRTensorValueType::Rank(a1);
  if (v11 < 0 || v12 <= v11)
  {
    v16 = a4[1];
    *&v61 = *a4;
    *(&v61 + 1) = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    std::to_string(&v53, a2);
    v17 = std::string::insert(&v53, 0, "Provided axis (");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v54.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v54.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v54, ") is not within range [-");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v55.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v55.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = MIL::IRTensorValueType::Rank(a1);
    std::to_string(&v52, v21);
    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v52;
    }

    else
    {
      v22 = v52.__r_.__value_.__r.__words[0];
    }

    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v52.__r_.__value_.__l.__size_;
    }

    v24 = std::string::append(&v55, v22, size);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v56.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v56.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v26 = std::string::append(&v56, ", ");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v57.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v57.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = MIL::IRTensorValueType::Rank(a1);
    std::to_string(&v51, v28 - 1);
    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v51;
    }

    else
    {
      v29 = v51.__r_.__value_.__r.__words[0];
    }

    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v30 = v51.__r_.__value_.__l.__size_;
    }

    v31 = std::string::append(&v57, v29, v30);
    v32 = *&v31->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    v33 = std::string::append(&v58, "] for TopK");
    v34 = *&v33->__r_.__value_.__l.__data_;
    v60 = v33->__r_.__value_.__r.__words[2];
    v59 = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationResult::ValidationResult(a5, &v61, 315, &v59);
    if (SHIBYTE(v60) < 0)
    {
      operator delete(v59);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    v35 = *(&v61 + 1);
    if (!*(&v61 + 1))
    {
      goto LABEL_45;
    }

LABEL_44:
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    goto LABEL_45;
  }

  v13 = (*(*v62[v11] + 16))(v62[v11]);
  v14 = v13;
  if (!v13 || (v15 = (*(*v13 + 48))(v13), a3 >= 1) && v15 >= a3)
  {
LABEL_9:
    MIL::ValidationResult::ValidationResult(a5);
    goto LABEL_45;
  }

  v36 = a4[1];
  *&v50 = *a4;
  *(&v50 + 1) = v36;
  if (v36)
  {
    atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
  }

  std::to_string(&v55, a3);
  v37 = std::string::insert(&v55, 0, "Provided k (");
  v38 = *&v37->__r_.__value_.__l.__data_;
  v56.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
  *&v56.__r_.__value_.__l.__data_ = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  v39 = std::string::append(&v56, ") is not within range [1, ");
  v40 = *&v39->__r_.__value_.__l.__data_;
  v57.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
  *&v57.__r_.__value_.__l.__data_ = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  v41 = (*(*v14 + 48))(v14);
  std::to_string(&v54, v41);
  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = &v54;
  }

  else
  {
    v42 = v54.__r_.__value_.__r.__words[0];
  }

  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v43 = v54.__r_.__value_.__l.__size_;
  }

  v44 = std::string::append(&v57, v42, v43);
  v45 = *&v44->__r_.__value_.__l.__data_;
  v58.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
  *&v58.__r_.__value_.__l.__data_ = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  v46 = std::string::append(&v58, "] for TopK");
  v47 = *&v46->__r_.__value_.__l.__data_;
  v49 = v46->__r_.__value_.__r.__words[2];
  *__p = v47;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  MIL::ValidationResult::ValidationResult(a5, &v50, 315, __p);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  v35 = *(&v50 + 1);
  if (*(&v50 + 1))
  {
    goto LABEL_44;
  }

LABEL_45:
  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }
}

void sub_2181CFAA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v54 - 137) < 0)
  {
    operator delete(*(v54 - 160));
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (*(v54 - 169) < 0)
  {
    operator delete(*(v54 - 192));
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  v56 = *(v54 - 88);
  if (v56)
  {
    *(v54 - 80) = v56;
    operator delete(v56);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceArgsort(uint64_t *a1, void x1_0, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, &__p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  v7 = (*(*v6 + 96))(v6);
  memset(v8, 0, sizeof(v8));
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(v8, *v7, *(v7 + 8), (*(v7 + 8) - *v7) >> 3);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  MIL::IRTensorValueType::MakeWithShape(*a1, 11, v8);
}

void sub_2181CFD70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceFill(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "value");
  v7 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (v7)
  {
    ValueType = MIL::IRTypedArgument::GetValueType(*v7[5]);
    v9 = MIL::IRValueType::AsTensorType(ValueType);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    v10 = (*(*v9 + 88))(v9);
    std::string::basic_string[abi:ne200100]<0>(__p, "shape");
    SingleValue = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, __p);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    __p[0] = 0;
    __p[1] = 0;
    v31 = 0;
    if (SingleValue)
    {
      v12 = MIL::IRValue::AsTensor(SingleValue);
      v13 = (*(*v12 + 32))(v12);
      v14 = (*(*v13 + 16))(v13);
      std::vector<std::string const*>::reserve(__p, v14);
      Data = MIL::IRTensorValue::GetDataView<int>(v12);
      if (v16)
      {
        v17 = Data;
        v18 = 4 * v16;
        do
        {
          v19 = *v17;
          if (v19 <= 0)
          {
            exception = __cxa_allocate_exception(0x48uLL);
            v27 = a2[1];
            *&v29 = *a2;
            *(&v29 + 1) = v27;
            if (v27)
            {
              atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(v28, "Cannot fill tensor of shape with negative elements.");
            MIL::ValidationError::ValidationError(exception, &v29, v28, 315);
          }

          v32 = MIL::IRConstantDimension::Make(*a1, v19);
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, &v32);
          ++v17;
          v18 -= 4;
        }

        while (v18);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v32, "shape");
      v20 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &v32);
      if (!v20)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v21 = MIL::IRTypedArgument::GetValueType(*v20[5]);
      v22 = MIL::IRValueType::AsTensorType(v21);
      v23 = **(*(*v22 + 96))(v22);
      if (v33 < 0)
      {
        operator delete(v32);
      }

      if ((*(*v23 + 24))(v23))
      {
        v32 = MIL::IRUnknownDimension::Make(*a1, 1);
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, &v32);
      }

      else
      {
        v24 = MIL::IRDimension::AsConstant(v23);
        v25 = (*(*v24 + 48))(v24);
        std::vector<std::string const*>::reserve(__p, v25);
        for (; v25; --v25)
        {
          v32 = MIL::IRUnknownDimension::Make(*a1, 0);
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, &v32);
        }
      }
    }

    MIL::IRTensorValueType::MakeWithShape(*a1, v10, __p);
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2181D0164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceFlatten2D(MIL::IRUnknownDimension **a1, uint64_t *a2, void *a3)
{
  v31[1] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v8 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = (*(*v8 + 96))(v8);
  std::string::basic_string[abi:ne200100]<0>(__p, "axis");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v11 = MIL::IRValue::GetScalar<int>(SingleValue);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = *a2;
  v13 = a2[1];
  v27[0] = v12;
  v27[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (!MIL::ValidationResult::IsGood(__p))
  {
    exception = __cxa_allocate_exception(0x48uLL);
    MIL::MILResult::MILResult(v25, __p);
    v25[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
    v26 = v30;
    MIL::ValidationError::ValidationError(exception, v25);
  }

  if (v11 < 0)
  {
    v11 += (v9[1] - *v9) >> 3;
  }

  memset(v24, 0, sizeof(v24));
  std::vector<std::string const*>::reserve(v24, 2uLL);
  if ((*(*v8 + 104))(v8))
  {
    v14 = v11;
    if (v11)
    {
      v15 = 0;
      v16 = 1;
      while ((*(**(*v9 + 8 * v15) + 16))(*(*v9 + 8 * v15)))
      {
        v17 = MIL::IRDimension::AsConstant(*(*v9 + 8 * v15));
        v16 *= (*(*v17 + 48))(v17);
        if (v14 == ++v15)
        {
          goto LABEL_20;
        }
      }

      v31[0] = MIL::IRUnknownDimension::Make(*a1, 0);
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v24, v31);
    }

    else
    {
      v16 = 1;
LABEL_20:
      v31[0] = MIL::IRConstantDimension::Make(*a1, v16);
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v24, v31);
    }

    v18 = (v9[1] - *v9) >> 3;
    v19 = 1;
    if (v18 <= v14)
    {
LABEL_25:
      v31[0] = MIL::IRConstantDimension::Make(*a1, v19);
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v24, v31);
    }

    else
    {
      while ((*(**(*v9 + 8 * v14) + 16))(*(*v9 + 8 * v14)))
      {
        v20 = MIL::IRDimension::AsConstant(*(*v9 + 8 * v14));
        v19 *= (*(*v20 + 48))(v20);
        if (v18 == ++v14)
        {
          goto LABEL_25;
        }
      }

      v31[0] = MIL::IRUnknownDimension::Make(*a1, 0);
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v24, v31);
    }
  }

  else
  {
    v31[0] = MIL::IRUnknownDimension::Make(*a1, 0);
    std::vector<MIL::IRDimension const*>::assign(v24, 2uLL, v31);
  }

  v21 = *a1;
  v22 = (*(*v8 + 88))(v8);
  MIL::IRTensorValueType::MakeWithShape(v21, v22, v24);
}

void sub_2181D064C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  MIL::ValidationResult::~ValidationResult(&a13);
  MIL::ValidationResult::~ValidationResult(&a22);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceNonMaximumSuppression(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v40[2] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v38, "max_boxes");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v38);
  v8 = MIL::IRValue::GetScalar<int>(SingleValue);
  if (SHIBYTE(v40[0]) < 0)
  {
    operator delete(v38);
  }

  if (v8 > 0)
  {
    v9 = MIL::IRConstantDimension::Make(*a1, v8);
    std::string::basic_string[abi:ne200100]<0>(&v38, "boxes");
    SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &v38);
    v11 = MIL::IRValueType::AsTensorType(SingleValueType);
    if (SHIBYTE(v40[0]) < 0)
    {
      operator delete(v38);
    }

    std::string::basic_string[abi:ne200100]<0>(&v38, "scores");
    v12 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &v38);
    v13 = MIL::IRValueType::AsTensorType(v12);
    if (SHIBYTE(v40[0]) < 0)
    {
      operator delete(v38);
    }

    v14 = (*(*v11 + 96))(v11);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v33, *v14, *(v14 + 8), (*(v14 + 8) - *v14) >> 3);
    if ((v34 - v33) >= 9)
    {
      *(v33 + 1) = v9;
      v15 = (*(*v13 + 96))(v13);
      v28 = 0;
      v29 = 0;
      v30 = 0;
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v28, *v15, *(v15 + 8), (*(v15 + 8) - *v15) >> 3);
      if ((v29 - v28) >= 9)
      {
        *(v28 + 1) = v9;
        if (v34 != v33)
        {
          v38 = *v33;
          v39 = v9;
          memset(v25, 0, sizeof(v25));
          std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(v25, &v38, v40, 2uLL);
          if (v34 != v33)
          {
            v38 = *v33;
            memset(__p, 0, sizeof(__p));
            std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(__p, &v38, &v39, 1uLL);
            v16 = *a1;
            v17 = (*(*v11 + 88))(v11);
            MIL::IRTensorValueType::MakeWithShape(v16, v17, &v33);
          }

          std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
        }

        std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
      }

      exception = __cxa_allocate_exception(0x48uLL);
      v23 = a2[1];
      *&v27 = *a2;
      *(&v27 + 1) = v23;
      if (v23)
      {
        atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v26, "Scores param should have a rank of 3");
      MIL::ValidationError::ValidationError(exception, &v27, v26, 315);
    }

    v20 = __cxa_allocate_exception(0x48uLL);
    v21 = a2[1];
    *&v32 = *a2;
    *(&v32 + 1) = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v31, "Boxes param should have a rank of 3");
    MIL::ValidationError::ValidationError(v20, &v32, v31, 315);
  }

  v18 = __cxa_allocate_exception(0x48uLL);
  v19 = a2[1];
  *&v37 = *a2;
  *(&v37 + 1) = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v36, "Max_boxes parameter needs to be greater than zero always.");
  MIL::ValidationError::ValidationError(v18, &v37, v36, 315);
}

void sub_2181D0BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::__shared_weak_count *a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (v36)
  {
    __cxa_free_exception(v35);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a34)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceNonZero(MIL::IRUnknownDimension **a1, void x1_0, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = (*(*v6 + 96))(v6);
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  std::vector<std::string const*>::reserve(__p, 2uLL);
  v10[0] = MIL::IRUnknownDimension::Make(*a1, 0);
  std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, v10);
  if (MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(v7))
  {
    v10[0] = MIL::IRUnknownDimension::Make(*a1, 0);
  }

  else
  {
    v10[0] = MIL::IRConstantDimension::Make(*a1, ((v7[1] - *v7) >> 3));
  }

  std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, v10);
  MIL::IRTensorValueType::MakeWithShape(*a1, 11, __p);
}

void sub_2181D0E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceOneHot(void *a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "indices");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  v8 = MIL::IRValueType::AsTensorType(SingleValueType);
  v9 = (*(*v8 + 96))(v8);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v44, *v9, *(v9 + 8), (*(v9 + 8) - *v9) >> 3);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "on_value");
  v10 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  v11 = MIL::IRValueType::AsTensorType(v10);
  v12 = (*(*v11 + 88))(v11);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "off_value");
  v13 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  v14 = MIL::IRValueType::AsTensorType(v13);
  v15 = (*(*v14 + 88))(v14);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p);
  }

  if (v12 != v15)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    v30 = a2[1];
    *&v43 = *a2;
    *(&v43 + 1) = v30;
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v42, "The dtype of on_value and off_value must match with each other.");
    MIL::ValidationError::ValidationError(exception, &v43, v42, 315);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "one_hot_vector_size");
  SingleValue = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, &__p);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p);
  }

  v41 = -1;
  if (SingleValue)
  {
    v41 = MIL::IRValue::GetScalar<int>(SingleValue);
    if ((v41 & 0x80000000) != 0)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "The value of one_hot_vector_size must be non-negative but is ", 61);
      v32 = MEMORY[0x21CEAFB20](v31, v41);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ".", 1);
      v33 = __cxa_allocate_exception(0x48uLL);
      v34 = a2[1];
      *&v37 = *a2;
      *(&v37 + 1) = v34;
      if (v34)
      {
        atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
      }

      std::stringbuf::str();
      MIL::ValidationError::ValidationError(v33, &v37, v36, 315);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "axis");
  v17 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, &__p);
  v18 = v17;
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p);
    if (v18)
    {
LABEL_14:
      std::string::basic_string[abi:ne200100]<0>(&__p, "axis");
      v19 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &__p);
      v20 = MIL::IRValue::GetScalar<int>(v19);
      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p);
      }

      __p = a1;
      v39 = &v44;
      v40 = &v41;
      memset(v35, 0, sizeof(v35));
      if ((v20 & 0x80000000) == 0)
      {
        MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceOneHot(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)::$_0::operator()(&__p, &v44, v20, v47);
        *v35 = *v47;
        v35[2] = *&v47[16];
        goto LABEL_33;
      }

LABEL_20:
      if (v44 != v45)
      {
        v21 = (v45 - 8);
        if (v45 - 8 > v44)
        {
          v22 = v44 + 8;
          do
          {
            v23 = *(v22 - 8);
            *(v22 - 8) = *v21;
            *v21-- = v23;
            v24 = v22 >= v21;
            v22 += 8;
          }

          while (!v24);
        }
      }

      MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceOneHot(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)::$_0::operator()(&__p, &v44, ~v20, v47);
      v35[0] = *v47;
      *&v35[1] = *&v47[8];
      v25 = (*&v47[8] - 8);
      if (*v47 != *&v47[8] && v25 > *v47)
      {
        v27 = *v47 + 8;
        do
        {
          v28 = *(v27 - 8);
          *(v27 - 8) = *v25;
          *v25-- = v28;
          v24 = v27 >= v25;
          v27 += 8;
        }

        while (!v24);
      }

LABEL_33:
      MIL::IRTensorValueType::MakeWithShape(*a1, v12, v35);
    }
  }

  else if (v17)
  {
    goto LABEL_14;
  }

  __p = a1;
  v39 = &v44;
  v40 = &v41;
  v20 = -1;
  goto LABEL_20;
}

void sub_2181D1370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (v38)
  {
    __cxa_free_exception(v37);
  }

  std::ostringstream::~ostringstream(&a20, MEMORY[0x277D82828]);
  MEMORY[0x21CEAFDA0](&a37);
  v41 = *(v39 - 120);
  if (v41)
  {
    *(v39 - 112) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(a1);
}

void sub_2181D148C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    JUMPOUT(0x2181D1480);
  }

  JUMPOUT(0x2181D1484);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceOneHot(std::shared_ptr<MIL::MILContext> const&,std::shared_ptr<MIL::Location const>,std::unordered_map<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>> const&,std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>> const&,std::vector<std::vector<MIL::IRValueType const*>> const&)::$_0::operator()(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a2[1] != *a2)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      if (a3 == v9)
      {
        v10 = **(a1 + 16);
        if ((v10 & 0x80000000) != 0)
        {
          v12 = MIL::IRUnknownDimension::Make(**a1, 0);
        }

        else
        {
          v12 = MIL::IRConstantDimension::Make(**a1, v10);
        }

        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a4, &v12);
      }

      v11 = *(**(a1 + 8) + 8 * v9);
      if ((*(*v11 + 32))(v11))
      {
        break;
      }

      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a4, (*a2 + v8));
      ++v9;
      v8 += 8;
      if (v9 >= (a2[1] - *a2) >> 3)
      {
        return;
      }
    }

    v12 = MIL::IRUnknownDimension::Make(**a1, 1);
    std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a4, &v12);
  }
}

void sub_2181D15D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferencePad(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v8 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = (*(*v8 + 88))(v8);
  v10 = (*(*v8 + 96))(v8);
  v53 = 0;
  v54 = 0;
  v52 = 0;
  std::vector<std::string const*>::reserve(&v52, (v10[1] - *v10) >> 3);
  std::string::basic_string[abi:ne200100]<0>(__p, "pad");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  ValueType = MIL::IRTypedArgument::GetValueType(*v11[5]);
  v13 = MIL::IRValueType::AsTensorType(ValueType);
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = a2[1];
  v48[0] = *a2;
  v48[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (!MIL::ValidationResult::IsGood(__p))
  {
    exception = __cxa_allocate_exception(0x48uLL);
    MIL::MILResult::MILResult(v46, __p);
    v46[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
    v47 = v51;
    MIL::ValidationError::ValidationError(exception, v46);
  }

  v15 = (*(*v13 + 16))(v13);
  v16 = (v10[1] - *v10) >> 3;
  v17 = v16 - (v15 >> 1);
  if (v16 != v15 >> 1)
  {
    v18 = 0;
    do
    {
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v52, (*v10 + v18));
      v18 += 8;
      --v17;
    }

    while (v17);
  }

  std::string::basic_string[abi:ne200100]<0>(&v55, "pad");
  SingleValue = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, &v55);
  v20 = SingleValue;
  v21 = v15 >> 1;
  if (SHIBYTE(v57) < 0)
  {
    operator delete(v55);
    if (v20)
    {
      goto LABEL_16;
    }
  }

  else if (SingleValue)
  {
LABEL_16:
    v22 = MIL::IRValue::AsTensor(v20);
    Data = MIL::IRTensorValue::GetDataView<int>(v22);
    v55 = 0;
    v56 = 0;
    v57 = 0;
    std::vector<std::string const*>::reserve(&v55, v15 >> 1);
    if (v21 >= 1)
    {
      v24 = v15 >> 1;
      v25 = 8 * v16 - 8 * v21 - 8;
      v26 = (Data + 8 * v24 - 4);
LABEL_19:
      v27 = *(*v10 + v25 + 8 * v24);
      if ((*(*v27 + 16))(v27))
      {
        v28 = MIL::IRDimension::AsConstant(*(*v10 + v25 + 8 * v24));
        v29 = (*(*v28 + 48))(v28);
        v30 = *(v26 - 1) + *v26;
        if (v30 + v29 < 0)
        {
          v40 = __cxa_allocate_exception(0x48uLL);
          v41 = a2[1];
          *&v44 = *a2;
          *(&v44 + 1) = v41;
          if (v41)
          {
            atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v43, "Negative padded dimension is not allowed.");
          MIL::ValidationError::ValidationError(v40, &v44, v43, 315);
        }

        v45 = MIL::IRConstantDimension::Make(*a1, (v30 + v29));
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v55, &v45);
        if (v24 > 1)
        {
          v31 = 0;
          goto LABEL_18;
        }
      }

      else
      {
        v32 = *a1;
        v33 = MIL::IRDimension::AsUnknown(*(*v10 + v25 + 8 * v24));
        v34 = (*(*v33 + 32))(v33);
        v45 = MIL::IRUnknownDimension::Make(v32, v34);
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v55, &v45);
        v35 = MIL::IRDimension::AsUnknown(*(*v10 + v25 + 8 * v24));
        v31 = (*(*v35 + 32))(v35);
        while (v24 >= 2)
        {
LABEL_18:
          v26 -= 2;
          --v24;
          if ((v31 & 1) == 0)
          {
            goto LABEL_19;
          }

          v45 = MIL::IRUnknownDimension::Make(*a1, 0);
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v55, &v45);
          v31 = 1;
        }

        if ((v31 & 1) != 0 && v53 != v52)
        {
          v36 = MIL::IRUnknownDimension::Make(*a1, 0);
          *(v53 - 1) = v36;
        }
      }
    }

    std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::reverse_iterator<std::__wrap_iter<MIL::IRDimension const**>>,std::reverse_iterator<std::__wrap_iter<MIL::IRDimension const**>>>(&v52, v53, v56, v56, v55, v55, (v56 - v55) >> 3);
    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }

LABEL_38:
    MIL::IRTensorValueType::MakeWithShape(*a1, v9, &v52);
  }

  if (v15 >= 2)
  {
    v37 = 8 * v16 - 8 * v21;
    do
    {
      if ((*(**(*v10 + v37) + 24))(*(*v10 + v37)))
      {
        v38 = MIL::IRDimension::AsUnknown(*(*v10 + v37));
        v39 = (*(*v38 + 32))(v38);
      }

      else
      {
        v39 = 0;
      }

      v55 = MIL::IRUnknownDimension::Make(*a1, v39);
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v52, &v55);
      v37 += 8;
      --v21;
    }

    while (v21);
  }

  goto LABEL_38;
}

void sub_2181D1C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  v34 = *(v32 - 120);
  if (v34)
  {
    *(v32 - 112) = v34;
    operator delete(v34);
  }

  MIL::ValidationResult::~ValidationResult(&a27);
  v35 = *(v32 - 144);
  if (v35)
  {
    *(v32 - 136) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceRange1D(MIL::IRConstantDimension **a1, void x1_0, void *a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "start");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, __p);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  v7 = (*(*v6 + 88))(v6);
  std::string::basic_string[abi:ne200100]<0>(__p, "start");
  SingleValue = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a2, __p);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "end");
  v9 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a2, __p);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "step");
  v10 = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a2, __p);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = 0;
  __p[1] = 0;
  v21 = 0;
  std::vector<std::string const*>::reserve(__p, 1uLL);
  if (SingleValue && v9 && v10)
  {
    v11 = MIL::IRValue::AsTensor(SingleValue);
    FloatScalarValue = MIL::ValueTypeInferenceUtils::GetFloatScalarValue(v11, v12);
    v14 = MIL::IRValue::AsTensor(v9);
    v16 = MIL::ValueTypeInferenceUtils::GetFloatScalarValue(v14, v15);
    v17 = MIL::IRValue::AsTensor(v10);
    v19 = MIL::ValueTypeInferenceUtils::GetFloatScalarValue(v17, v18);
    v22[0] = MIL::IRConstantDimension::Make(*a1, vcvtps_u32_f32((v16 - FloatScalarValue) / v19));
    std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, v22);
  }

  else
  {
    v22[0] = MIL::IRUnknownDimension::Make(*a1, 0);
    std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, v22);
  }

  MIL::IRTensorValueType::MakeWithShape(*a1, v7, __p);
}

void sub_2181D1FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceShape(MIL::IRUnknownDimension **a1, void x1_0, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a2, &__p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  v7 = (*(*v6 + 96))(v6);
  __p = 0;
  v14 = 0;
  v15 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v7, *(v7 + 8), (*(v7 + 8) - *v7) >> 3);
  HasVariadicUnknownDims = MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(&__p);
  v9 = *a1;
  if (HasVariadicUnknownDims)
  {
    v10 = MIL::IRUnknownDimension::Make(v9, 0);
  }

  else
  {
    v10 = MIL::IRConstantDimension::Make(v9, ((v14 - __p) >> 3));
  }

  v11 = *a1;
  v16 = v10;
  memset(v12, 0, sizeof(v12));
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(v12, &v16, v17, 1uLL);
  MIL::IRTensorValueType::MakeWithShape(v11, 11, v12);
}

void sub_2181D219C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceTile(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v49, "reps");
  SingleValue = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, v49);
  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  v8 = a2[1];
  v48[0] = *a2;
  v48[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (MIL::ValidationResult::IsGood(v49))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "x");
    SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
    v10 = MIL::IRValueType::AsTensorType(SingleValueType);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p);
    }

    v11 = (*(*v10 + 96))(v10);
    __p = 0;
    v44 = 0;
    v45 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v11, *(v11 + 8), (*(v11 + 8) - *v11) >> 3);
    if (!MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(&__p))
    {
      v13 = __p;
      v12 = v44;
      std::string::basic_string[abi:ne200100]<0>(v38, "reps");
      v14 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, v38);
      v15 = (*(*v14 + 16))(v14);
      v16 = (v12 - v13) >> 3;
      if (SHIBYTE(v39) < 0)
      {
        operator delete(v38[0]);
      }

      if (v16 == v15)
      {
        v38[0] = 0;
        v38[1] = 0;
        v39 = 0;
        std::vector<std::string const*>::reserve(v38, (v44 - __p) >> 3);
        if (SingleValue)
        {
          v17 = MIL::IRValue::AsTensor(SingleValue);
          Data = MIL::IRTensorValue::GetDataView<int>(v17);
          v19 = __p;
          if (v44 != __p)
          {
            v20 = Data;
            v21 = 0;
            do
            {
              v22 = (*(*v19[v21] + 16))(v19[v21]);
              if (v22)
              {
                v23 = *a1;
                v24 = (*(*v22 + 48))(v22);
                *&v52 = MIL::IRConstantDimension::Make(v23, (v24 * *(v20 + 4 * v21)));
              }

              else
              {
                *&v52 = MIL::IRUnknownDimension::Make(*a1, 0);
              }

              std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](v38, &v52);
              ++v21;
              v19 = __p;
            }

            while (v21 < (v44 - __p) >> 3);
          }
        }

        else
        {
          v26 = __p;
          v25 = v44;
          v34 = MIL::IRUnknownDimension::Make(*a1, 0);
          std::vector<MIL::IRDimension const*>::vector[abi:ne200100](&v52, (v25 - v26) >> 3, &v34);
          if (v38[0])
          {
            v38[1] = v38[0];
            operator delete(v38[0]);
          }

          *v38 = v52;
          v39 = v53;
        }

        v27 = *a1;
        v28 = (*(*v10 + 88))(v10);
        MIL::IRTensorValueType::MakeWithShape(v27, v28, v38);
      }

      exception = __cxa_allocate_exception(0x48uLL);
      v33 = a2[1];
      *&v36 = *a2;
      *(&v36 + 1) = v33;
      if (v33)
      {
        atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v35, "Reps 1-D Length must be the same as the number of dimensions in input.");
      MIL::ValidationResult::ValidationResult(v37, &v36, 315, v35);
      MIL::ValidationError::ValidationError(exception, v37);
    }

    v30 = __cxa_allocate_exception(0x48uLL);
    v31 = a2[1];
    *&v41 = *a2;
    *(&v41 + 1) = v31;
    if (v31)
    {
      atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v40, "Variadic shape is not supported for tile type inference.");
    MIL::ValidationResult::ValidationResult(v42, &v41, 315, v40);
    MIL::ValidationError::ValidationError(v30, v42);
  }

  v29 = __cxa_allocate_exception(0x48uLL);
  MIL::MILResult::MILResult(v46, v49);
  v46[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
  v47 = v51;
  MIL::ValidationError::ValidationError(v29, v46);
}