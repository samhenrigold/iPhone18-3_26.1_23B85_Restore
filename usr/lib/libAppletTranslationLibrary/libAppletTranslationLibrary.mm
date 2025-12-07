id sub_22EEF6CB0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 debugMetroStateValue];
  *a2 = result;
  return result;
}

uint64_t sub_22EEF6CE4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22EEF6DF8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22EEF6E3C()
{
  sub_22EF708C8(v0[2], v0[3]);
  v1 = v0[5];
  if (v1 >> 60 != 15)
  {
    sub_22EF708C8(v0[4], v1);
  }

  v2 = v0[7];
  if (v2 >> 60 != 15)
  {
    sub_22EF708C8(v0[6], v2);
  }

  v3 = v0[9];
  if (v3 >> 60 != 15)
  {
    sub_22EF708C8(v0[8], v3);
  }

  v4 = v0[11];
  if (v4 >> 60 != 15)
  {
    sub_22EF708C8(v0[10], v4);
  }

  v5 = v0[13];
  if (v5 >> 60 != 15)
  {
    sub_22EF708C8(v0[12], v5);
  }

  v6 = v0[15];
  if (v6 >> 60 != 15)
  {
    sub_22EF708C8(v0[14], v6);
  }

  v7 = v0[17];
  if (v7 >> 60 != 15)
  {
    sub_22EF708C8(v0[16], v7);
  }

  v8 = v0[19];
  if (v8 >> 60 != 15)
  {
    sub_22EF708C8(v0[18], v8);
  }

  v9 = v0[21];
  if (v9 >> 60 != 15)
  {
    sub_22EF708C8(v0[20], v9);
  }

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

BOOL sub_22EEF6FB4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_22EEF6FE4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_22EEF7010@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_22EEF70FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_22EFB32B8(a1);

  *a2 = v3;
  return result;
}

void sub_22EEF713C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = -64;
  *(a1 + 40) = MEMORY[0x277D84F90];
}

uint64_t sub_22EEF7164()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22EEF71BC()
{
  sub_22EF708C8(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22EEF71F4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t _s24AppletTranslationLibrary9ASN1ErrorOwCP_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

void *sub_22EEF726C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22EEF729C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void OVM::InterpreterImpl::RunSubroutine(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>>>::find<std::string>(a1[6], a2);
  if (a1[6] + 8 == v8)
  {
    *(&v20.__r_.__value_.__s + 23) = 17;
    strcpy(&v20, "No script named <");
    v10 = *(a2 + 23);
    if (v10 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    if (v10 >= 0)
    {
      v12 = *(a2 + 23);
    }

    else
    {
      v12 = *(a2 + 8);
    }

    v13 = std::string::append(&v20, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = std::string::append(&v21, "> found", 7uLL);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v23 = v15->__r_.__value_.__r.__words[2];
    *__p = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    OVM::Error::Error<>(&v25, __p);
    v17 = v26;
    v18 = v25;
    v26 = 0;
    v25 = 0uLL;
    v27 = &v25;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v27);
    *a4 = v18;
    *(a4 + 16) = v17;
    memset(v24, 0, 24);
    *(a4 + 24) = 0;
    *&v25 = v24;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v25);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v9 = *(v8 + 64);
    v19[0] = *(v8 + 56);
    v19[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    OVM::InterpreterImpl::RunSubroutine(a1, v19, a3, &v25);
    *a4 = v25;
    *(a4 + 16) = v26;
    *(a4 + 24) = 1;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_22EEFDC90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EEFDCDC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::string *a21, __int128 a22)
{
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (a2 == 1)
  {
    v25 = __cxa_begin_catch(a1);
    a13 = (*(*v25 + 16))(v25);
    operator new();
  }

  JUMPOUT(0x22EEFDCD4);
}

void sub_22EEFDE08(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 89) < 0)
  {
    operator delete(*(v26 - 112));
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x22EEFDCD4);
}

uint64_t OVM::InterpreterImpl::RunSubroutine@<X0>(OVM::InterpreterImpl *a1@<X0>, const char *a2@<X1>, uint64_t *a3@<X2>, _DWORD *a4@<X8>)
{
  v6 = **a2;
  v7 = (*(*a2 + 8) - v6) >> 5;
  v9 = *a3;
  v8 = a3[1];
  if (v7 != 0xAAAAAAAAAAAAAAABLL * ((v8 - *a3) >> 3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    StringUtil::Format(__p, "Expected %zu parameters but passed %zu", v20, (*(*a2 + 8) - **a2) >> 5, 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
    MEMORY[0x2318FB7C0](exception, __p);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v8 != v9)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(v9 + 24 * v11);
      if (*(v6 + 32 * v11) != v13)
      {
        v16 = v6 + 32 * v11;
        v17 = (v16 + 8);
        if (*(v16 + 31) < 0)
        {
          v17 = *v17;
        }

        StringUtil::Format(__p, "Parameter %u (%s) expected type %d, got type %d", a2, v12, v17, *(v6 + 32 * v11), v13);
        v18 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2318FB7C0](v18, __p);
        __cxa_throw(v18, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v11 = (v12 + 1);
      v12 = v11;
    }

    while (v7 > v11);
  }

  std::deque<std::map<std::string,std::shared_ptr<OVM::Var>>>::emplace_back<>(a1);
  if (a3[1] != *a3)
  {
    operator new();
  }

  *a4 = 1;
  a4[4] = 0;
  v14 = *(*a2 + 24);
  v15 = *(*a2 + 32);
  while (v14 != v15)
  {
    OVM::InterpreterImpl::Evaluate(&v23, a1, *v14);
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    ++v14;
  }

  return std::deque<std::map<std::string,std::shared_ptr<OVM::Var>>>::pop_back(a1);
}

void OVM::Error::Unexpected<char const*,std::string>(char **a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, *a1);
  OVM::Error::Error<std::string>(&v7, __p, a2);
  *a3 = v7;
  *(a3 + 16) = v8;
  v8 = 0;
  v7 = 0uLL;
  v9 = &v7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22EEFE24C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void StringUtil::Format(uint64_t *__return_ptr a1@<X8>, StringUtil *this@<X0>, const char *a3@<X1>, ...)
{
  va_start(va, a3);
  __s = 0;
  vasprintf(&__s, this, va);
  if (__s)
  {
    std::string::basic_string[abi:ne200100]<0>(a1, __s);
    free(__s);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a1, "<FAILED TO VASPRINTF>");
  }
}

void OVM::InterpreterImpl::Evaluate(uint64_t *__return_ptr a1@<X8>, OVM::InterpreterImpl *this@<X0>, const OVM::Expression **a3@<X1>)
{
  switch(*(a3 + 2))
  {
    case 0:

      OVM::InterpreterImpl::Evaluate(this, a3);
    case 1:

      OVM::InterpreterImpl::Evaluate(this, a3, a1);
      break;
    case 2:

      OVM::InterpreterImpl::Evaluate(this, a3, a1);
    case 3:

      OVM::InterpreterImpl::Evaluate(this, a3);
    case 4:

      OVM::InterpreterImpl::Evaluate(this, a3);
    case 5:
      OVM::InterpreterImpl::Evaluate(this, a3);
    case 6:

      OVM::InterpreterImpl::Evaluate(this, a3);
    case 7:

      OVM::InterpreterImpl::Evaluate(this, a3);
    case 8:

      OVM::InterpreterImpl::Evaluate(this, a3);
    case 9:
      operator new();
    case 0xA:

      OVM::InterpreterImpl::Evaluate(this, a3, a1);
      break;
    case 0xB:

      OVM::InterpreterImpl::Evaluate(this, a3, a1);
      break;
    case 0xC:

      OVM::InterpreterImpl::Evaluate(this, a3);
    case 0xD:

      OVM::InterpreterImpl::Evaluate(this, a3);
    case 0xE:
      operator new();
    case 0xF:

      OVM::InterpreterImpl::Evaluate(this, a3, a1);
      break;
    default:
      printf("EVALUATE %d\n", *(a3 + 2));
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2318FB7B0](exception, ":shrug:");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

uint64_t *OVM::InterpreterImpl::Evaluate@<X0>(OVM::InterpreterImpl *a1@<X0>, const OVM::Expression **a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  if (!v4)
  {
    OVM::InterpreterImpl::Evaluate();
  }

  return OVM::InterpreterImpl::Evaluate(a3, a1, v4);
}

void OVM::InterpreterImpl::Evaluate(OVM::InterpreterImpl *this, const OVM::Expression **a2)
{
  v5 = a2 + 6;
  if (a2[6])
  {
    OVM::InterpreterImpl::Evaluate(this, a2 + 6, &v15);
    v6 = *(this + 5) + *(this + 4) - 1;
    v7 = a2 + 2;
    v8 = std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>>>::find<std::string>(*(*(this + 1) + 8 * (v6 / 0xAA)) + 24 * (v6 % 0xAA), a2 + 16);
    v10 = *(this + 5) + *(this + 4) - 1;
    if (*(*(this + 1) + 8 * (v10 / 0xAA)) + 24 * (v10 % 0xAA) + 8 == v8)
    {
      if (!*v5 || (v11 = *(a2 + 10), *v15 == v11))
      {
        operator new();
      }

      if (*(a2 + 39) < 0)
      {
        v7 = *v7;
      }

      StringUtil::Format(v14, "Initializing expr for variable %s is %d expected %d", v9, v7, *v15, v11);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2318FB7C0](exception, v14);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v12 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    MEMORY[0x2318FB7C0](v12, v14);
    __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  operator new();
}

{
  OVM::InterpreterImpl::Evaluate(this, a2 + 2, &v12);
  v5 = OVM::InterpreterImpl::EvaluateTruthiness(&v12);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v6 = 6;
  if (v5)
  {
    v6 = 3;
  }

  v7 = &a2[v6];
  v8 = *v7;
  v9 = v7[1];
  while (v8 != v9)
  {
    OVM::InterpreterImpl::Evaluate(this, v8, &v10);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    ++v8;
  }

  operator new();
}

{
  exception = __cxa_allocate_exception(0x18uLL);
  OVM::InterpreterImpl::Evaluate(this, a2 + 2, &v5);
  *exception = &unk_2843B5BA0;
  *(exception + 8) = v5;
}

void sub_22EEFE954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OVM::InterpreterImpl::Evaluate@<X0>(OVM::InterpreterImpl *this@<X0>, const OVM::Value *a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 5) + *(this + 4) - 1;
  v7 = a2 + 16;
  result = std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>>>::find<std::string>(*(*(this + 1) + 8 * (v6 / 0xAA)) + 24 * (v6 % 0xAA), a2 + 16);
  v9 = *(this + 5) + *(this + 4) - 1;
  if (*(*(this + 1) + 8 * (v9 / 0xAA)) + 24 * (v9 % 0xAA) + 8 == result)
  {
    v11 = *(this + 8);
    if (v11 && *(this + 8) + 8 != std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>>>::find<std::string>(v11, v7))
    {
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    if (*(a2 + 39) < 0)
    {
      v7 = *v7;
    }

    StringUtil::Format(v14, "NameError, cannot resolve reference to %s", v12, v7);
    MEMORY[0x2318FB7C0](exception, v14);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = *(result + 64);
  *a3 = *(result + 56);
  a3[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_22EEFEB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

void OVM::InterpreterImpl::Evaluate(OVM::InterpreterImpl *this@<X0>, const OVM::Expression **a2@<X1>, void *a3@<X8>)
{
  OVM::InterpreterImpl::Evaluate(this, a2 + 2, &v29);
  if (*v29 == 3)
  {
    if (*(v29 + 16) == 2)
    {
      v6 = (a2 + 7);
      if (*(a2 + 79) < 0)
      {
        v6 = *v6;
      }

      v24 = *(v29 + 8);
      Uid = sel_getUid(v6);
      v23 = Uid;
      __src = 0;
      v27 = 0;
      v28 = 0;
      v8 = a2[3];
      for (i = a2[4]; v8 != i; ++v8)
      {
        Uid = OVM::InterpreterImpl::Evaluate(this, v8, &v25);
        v10 = v27;
        if (v27 >= v28)
        {
          v12 = __src;
          v13 = v27 - __src;
          v14 = (v27 - __src) >> 4;
          v15 = v14 + 1;
          if ((v14 + 1) >> 60)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v16 = v28 - __src;
          if ((v28 - __src) >> 3 > v15)
          {
            v15 = v16 >> 3;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF0)
          {
            v17 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          v30[4] = &__src;
          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<OVM::Var>>>(&__src, v17);
          }

          *(16 * v14) = v25;
          v11 = 16 * v14 + 16;
          memcpy(0, v12, v13);
          v18 = __src;
          v19 = v28;
          __src = 0;
          v27 = v11;
          v28 = 0;
          v30[2] = v18;
          v30[3] = v19;
          v30[0] = v18;
          v30[1] = v18;
          Uid = std::__split_buffer<std::shared_ptr<OVM::Var>>::~__split_buffer(v30);
        }

        else
        {
          *v27 = v25;
          v11 = (v10 + 16);
        }

        v27 = v11;
      }

      *a3 = 0;
      a3[1] = 0;
      v20 = *(a2 + 12);
      if (*(a2 + 20))
      {
        if (v20 == 3)
        {
          OVM::InterpreterImpl::EvaluateObjCMessageVariadicNSObjectReturn(Uid, v24, v23, *(a2 + 20), &__src);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2318FB7B0](exception, "Variadic ObjC methods only support returning NSObject");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (v20 == 3)
      {
        OVM::InterpreterImpl::EvaluateObjCMessageNSObjectReturn(Uid, v24, v23, &__src);
      }

      OVM::InterpreterImpl::EvaluateObjCMessageNonobjectReturn(Uid, v24, v23, v20, &__src);
    }

    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v21 = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2318FB7B0](v21, "Attempting to send to a non NSObj");
  __cxa_throw(v21, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_22EEFEE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  a13 = &a16;
  std::vector<std::shared_ptr<OVM::Var>>::__destroy_vector::operator()[abi:ne200100](&a13);
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(a1);
}

void OVM::InterpreterImpl::Evaluate(OVM::InterpreterImpl *this, const OVM::ObjCClass *a2)
{
  v4 = (a2 + 16);
  if ((***(this + 9))(*(this + 9), a2 + 16))
  {
    if (*(a2 + 39) < 0)
    {
      v5 = *v4;
    }

    else
    {
      v5 = v4;
    }

    if (objc_getClass(v5))
    {
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *(&v13.__r_.__value_.__s + 23) = 16;
    strcpy(&v13, "Cannot get class");
    v8 = *(a2 + 39);
    if (v8 >= 0)
    {
      v9 = v4;
    }

    else
    {
      v9 = *(a2 + 2);
    }

    if (v8 >= 0)
    {
      v10 = *(a2 + 39);
    }

    else
    {
      v10 = *(a2 + 3);
    }

    v11 = std::string::append(&v13, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v15 = v11->__r_.__value_.__r.__words[2];
    v14 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x2318FB7C0](exception, &v14);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = __cxa_allocate_exception(0x10uLL);
  std::operator+<char>();
  MEMORY[0x2318FB7C0](v6, &v14);
  __cxa_throw(v6, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_22EEFF0A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (v22)
  {
    __cxa_free_exception(v21);
  }

  _Unwind_Resume(exception_object);
}

void OVM::InterpreterImpl::Evaluate(OVM::InterpreterImpl *this, const OVM::FunctionCall *a2)
{
  __p = 0;
  v24 = 0;
  v25 = 0;
  v4 = *(a2 + 2);
  for (i = *(a2 + 3); v4 != i; ++v4)
  {
    OVM::InterpreterImpl::Evaluate(this, v4, &v21);
    v6 = v24;
    if (v24 >= v25)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * ((v24 - __p) >> 3);
      v10 = v9 + 1;
      if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v25 - __p) >> 3) > v10)
      {
        v10 = 0x5555555555555556 * ((v25 - __p) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v25 - __p) >> 3) >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      if (v11)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<OVM::Var>>(&__p, v11);
      }

      v12 = 8 * ((v24 - __p) >> 3);
      v13 = *v21;
      *(v12 + 16) = *(v21 + 2);
      *v12 = v13;
      v8 = 24 * v9 + 24;
      v14 = (v12 - (v24 - __p));
      memcpy(v14, __p, v24 - __p);
      v15 = __p;
      __p = v14;
      v24 = v8;
      v25 = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      v7 = *v21;
      *(v24 + 16) = *(v21 + 2);
      *v6 = v7;
      v8 = v6 + 24;
    }

    v24 = v8;
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }
  }

  v16 = std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>>>::find<std::string>(*(this + 6), a2 + 40);
  if (*(this + 6) + 8 != v16)
  {
    v17 = *(v16 + 64);
    v20[0] = *(v16 + 56);
    v20[1] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    OVM::InterpreterImpl::RunSubroutine(this, v20, &__p, &v21);
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::operator+<char>();
  MEMORY[0x2318FB7C0](exception, &v21);
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_22EEFF394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      if (a19)
      {
        operator delete(a19);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

void OVM::InterpreterImpl::Evaluate(void x0_0, const OVM::StringLiteral *a1)
{
  v2 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v2 = *v2;
  }

  [MEMORY[0x277CCACA8] stringWithCString:v2 encoding:1];
  operator new();
}

void sub_22EEFF594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void OVM::InterpreterImpl::Evaluate(OVM::InterpreterImpl *this@<X0>, const OVM::Expression **a2@<X1>, uint64_t *a3@<X8>)
{
  OVM::InterpreterImpl::Evaluate(this, a2 + 2, &v29);
  OVM::InterpreterImpl::Evaluate(this, a2 + 3, &v27);
  *a3 = 0;
  a3[1] = 0;
  switch(*(a2 + 8))
  {
    case 0:
      v6 = *(v27 + 16);
      v8 = v29;
      v7 = v30;
      *v29 = *v27;
      *(v8 + 16) = v6;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *a3 = v8;
      a3[1] = v7;
      break;
    case 1:
      if (*(v29 + 16) == 1 && *(v27 + 16) == 1)
      {
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 2:
      if (*(v29 + 16) == 1 && *(v27 + 16) == 1)
      {
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 3:
      if (*(v29 + 16) == 1 && *(v27 + 16) == 1)
      {
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 4:
      if (*(v29 + 16) == 1 && *(v27 + 16) == 1)
      {
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 5:
      if (*(v29 + 16) == 1 && *(v27 + 16) == 1)
      {
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 6:
      if (*(v29 + 16) == 1 && *(v27 + 16) == 1)
      {
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 7:
      if (*(v29 + 16) == 1 && *(v27 + 16) == 1)
      {
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 8:
      v21 = v29;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = *(v21 + 16);
      if (v22 != -1)
      {
        v32 = &v31;
        (*(&off_2843B5C28 + v22))(&v32, v21 + 8);
        v23 = v27;
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(v23 + 16);
        if (v24 != -1)
        {
          v32 = &v31;
          (*(&off_2843B5C28 + v24))(&v32, v23 + 8);
          operator new();
        }

        std::__throw_bad_variant_access[abi:ne200100]();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 9:
      v13 = v29;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = *(v13 + 16);
      if (v14 != -1)
      {
        v32 = &v31;
        (*(&off_2843B5C28 + v14))(&v32, v13 + 8);
        v15 = v27;
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = *(v15 + 16);
        if (v16 != -1)
        {
          v32 = &v31;
          (*(&off_2843B5C28 + v16))(&v32, v15 + 8);
          operator new();
        }

        std::__throw_bad_variant_access[abi:ne200100]();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 0xA:
      if (*(v29 + 16) == 1 && *(v27 + 16) == 1)
      {
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 0xB:
      if (*(v29 + 16) == 1 && *(v27 + 16) == 1)
      {
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 0xC:
      if (*(v29 + 16) == 1 && *(v27 + 16) == 1)
      {
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 0xD:
      if (*(v29 + 16) == 1 && *(v27 + 16) == 1)
      {
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 0xE:
      v9 = v29;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *(v9 + 16);
      if (v10 != -1)
      {
        v32 = &v31;
        if ((*(&off_2843B5C28 + v10))(&v32, v9 + 8))
        {
          v11 = v27;
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v12 = *(v11 + 16);
          if (v12 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v32 = &v31;
          (*(&off_2843B5C28 + v12))(&v32, v11 + 8);
        }

        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 0xF:
      v17 = v29;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = *(v17 + 16);
      if (v18 != -1)
      {
        v32 = &v31;
        if (!(*(&off_2843B5C28 + v18))(&v32, v17 + 8))
        {
          v25 = v27;
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v26 = *(v25 + 16);
          if (v26 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v32 = &v31;
          (*(&off_2843B5C28 + v26))(&v32, v25 + 8);
        }

        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 0x10:
      if (*(v29 + 16) == 1 && *(v27 + 16) == 1)
      {
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    case 0x11:
      if (*(v29 + 16) == 1 && *(v27 + 16) == 1)
      {
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    default:
      v8 = 0;
      break;
  }

  if (*(a2 + 36) == 1)
  {
    v19 = v29;
    v20 = *(v8 + 16);
    *v29 = *v8;
    *(v19 + 16) = v20;
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }
}

{
  OVM::InterpreterImpl::Evaluate(this, a2 + 2, &v11);
  v5 = *(a2 + 3);
  if (v5 > 3)
  {
    if (v5 <= 5)
    {
      if (v5 != 4)
      {
        if (*(v11 + 16) == 1)
        {
          operator new();
        }

        std::__throw_bad_variant_access[abi:ne200100]();
      }

      if (*(v11 + 16) == 1)
      {
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    }

    if (v5 == 6)
    {
      v10[0] = v11;
      v10[1] = v12;
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      OVM::InterpreterImpl::EvaluateTruthiness(v10);
      operator new();
    }

    if (v5 == 7)
    {
      if (*(v11 + 16) == 1)
      {
        operator new();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    }

    goto LABEL_29;
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        operator new();
      }

LABEL_29:
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2318FB7B0](exception, "Unsupported unary operator");
      goto LABEL_33;
    }

    if (*v11 != 4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2318FB7B0](exception, "Deref a not-pointer?");
LABEL_33:
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (*(v11 + 16) == 3)
    {
      *a3 = *(v11 + 8);
      operator new();
    }

LABEL_28:
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  if (v5 == 2)
  {
    v6 = v11;
    if (*(v11 + 16) != 1)
    {
      goto LABEL_28;
    }

    v7 = *(v11 + 8) - 1;
  }

  else
  {
    v6 = v11;
    if (*(v11 + 16) != 1)
    {
      goto LABEL_28;
    }

    v7 = *(v11 + 8) + 1;
  }

  *(v6 + 8) = v7;
  v8 = v12;
  *a3 = v6;
  a3[1] = v8;
  v11 = 0;
  v12 = 0;
}

void sub_22EF000D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v16 = *(v12 + 8);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

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

void sub_22EF00674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  __cxa_free_exception(v12);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_22EF006BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void OVM::InterpreterImpl::Evaluate(OVM::InterpreterImpl *this, const OVM::Loop *a2)
{
  v6 = *(a2 + 2);
  v5 = (a2 + 16);
  if (v6)
  {
    OVM::InterpreterImpl::Evaluate(this, v5, &v16);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  if (*(a2 + 16) == 1)
  {
    v7 = *(a2 + 5);
    v8 = *(a2 + 6);
    while (v7 != v8)
    {
      OVM::InterpreterImpl::Evaluate(this, v7, &v18);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      ++v7;
    }
  }

  while (1)
  {
    OVM::InterpreterImpl::Evaluate(this, a2 + 3, &v14);
    v11 = OVM::InterpreterImpl::EvaluateTruthiness(&v14);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (!v11)
    {
      operator new();
    }

    v9 = *(a2 + 5);
    v10 = *(a2 + 6);
    while (v9 != v10)
    {
      OVM::InterpreterImpl::Evaluate(this, v9, &v18);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      ++v9;
    }

    if (*(a2 + 4))
    {
      OVM::InterpreterImpl::Evaluate(this, a2 + 4, &v12);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }
  }
}

void sub_22EF0085C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void OVM::InterpreterImpl::Evaluate(OVM::InterpreterImpl *this, const OVM::DictionaryLiteral *a2)
{
  v6 = *(a2 + 2);
  v5 = *(a2 + 3);
  v7 = (v5 - v6) >> 3;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
  if (v5 != v6)
  {
    v10 = 0;
    v11 = 0;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      OVM::InterpreterImpl::Evaluate(this, (*(a2 + 2) + v10), &v14);
      if (*v14 != 3)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2318FB7B0](exception, "Adding a non-nsobject to a dictinoary?");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (*(v14 + 16) != 2)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      if (v11)
      {
        v12 = v9;
      }

      else
      {
        v12 = v8;
      }

      [v12 addObject:*(v14 + 8)];
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      ++v11;
      v10 += 8;
    }

    while (v7 != v11);
  }

  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8];
  operator new();
}

void sub_22EF00A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void OVM::InterpreterImpl::Evaluate(OVM::InterpreterImpl *this, const OVM::ArrayLiteral *a2)
{
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:(*(a2 + 3) - *(a2 + 2)) >> 3];
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  while (v6 != v7)
  {
    OVM::InterpreterImpl::Evaluate(this, v6, &v9);
    if (*v9 != 3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2318FB7B0](exception, "Adding a non-nsobject to an array?");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (*(v9 + 16) != 2)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    [v5 addObject:*(v9 + 8)];
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    ++v6;
  }

  [MEMORY[0x277CBEA60] arrayWithArray:v5];
  operator new();
}

void sub_22EF00B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t *OVM::InterpreterImpl::Evaluate@<X0>(OVM::InterpreterImpl *this@<X0>, const OVM::CompoundExpression *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  while (v6 != v7)
  {
    OVM::InterpreterImpl::Evaluate(this, v6, &v9);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    ++v6;
  }

  return OVM::InterpreterImpl::Evaluate(this, a2 + 5, a3);
}

void OVM::InterpreterImpl::EarlyReturn::~EarlyReturn(std::exception *this)
{
  this->__vftable = &unk_2843B5BA0;
  v2 = this[2].__vftable;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_2843B5BA0;
  v2 = this[2].__vftable;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::exception::~exception(this);

  JUMPOUT(0x2318FB870);
}

void OVM::InterpreterImpl::EvaluateObjCMessageVariadicNSObjectReturn(uint64_t a1, void *a2, const char *a3, int a4, char **a5)
{
  if (a4 != 2)
  {
    if (a4 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2318FB7B0](exception, "No support (yet) for variadics with more than 2 fixed argument");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v9 = *a5;
    v10 = (a5[1] - *a5) >> 4;
    if (v10 <= 2)
    {
      if (v10 != 1)
      {
        if (v10 == 2)
        {
          v11 = *v9;
          v12 = *(v9 + 1);
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v13 = *(v11 + 16);
          if (v13 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v100[0] = &v101;
          v14 = (*(&off_2843B5C28 + v13))(v100, v11 + 8);
          v15 = *(*a5 + 2);
          v16 = *(*a5 + 3);
          if (v16)
          {
            atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
          }

          v17 = *(v15 + 16);
          if (v17 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v100[0] = &v101;
          [a2 a3];
LABEL_73:
          if (!v16)
          {
            goto LABEL_112;
          }

          v50 = v16;
          goto LABEL_111;
        }

LABEL_117:
        v94 = __cxa_allocate_exception(0x10uLL);
        StringUtil::Format(v100, "No support (yet) for variadics %u > 1/4 arguments", v95, (a5[1] - *a5) >> 4);
        MEMORY[0x2318FB7C0](v94, v100);
        __cxa_throw(v94, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v81 = *v9;
      v12 = *(v9 + 1);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v82 = *(v81 + 16);
      if (v82 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v100[0] = &v101;
      [a2 a3];
LABEL_112:
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      operator new();
    }

    if (v10 != 3)
    {
      if (v10 != 4)
      {
        goto LABEL_117;
      }

      v51 = *v9;
      v12 = *(v9 + 1);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v52 = *(v51 + 16);
      if (v52 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v100[0] = &v101;
      v53 = (*(&off_2843B5C28 + v52))(v100, v51 + 8);
      v54 = *(*a5 + 2);
      v24 = *(*a5 + 3);
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      v55 = *(v54 + 16);
      if (v55 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v100[0] = &v101;
      v56 = (*(&off_2843B5C28 + v55))(v100, v54 + 8);
      v57 = *(*a5 + 4);
      v58 = *(*a5 + 5);
      if (v58)
      {
        atomic_fetch_add_explicit((v58 + 8), 1uLL, memory_order_relaxed);
      }

      v59 = *(v57 + 16);
      if (v59 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v100[0] = &v101;
      v60 = (*(&off_2843B5C28 + v59))(v100, v57 + 8);
      v61 = *(*a5 + 6);
      v62 = *(*a5 + 7);
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v63 = *(v61 + 16);
      if (v63 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v100[0] = &v101;
      [a2 a3];
      goto LABEL_88;
    }

    v83 = *v9;
    v12 = *(v9 + 1);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v84 = *(v83 + 16);
    if (v84 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v100[0] = &v101;
    v85 = (*(&off_2843B5C28 + v84))(v100, v83 + 8);
    v86 = *(*a5 + 2);
    v24 = *(*a5 + 3);
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    v87 = *(v86 + 16);
    if (v87 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v100[0] = &v101;
    v88 = (*(&off_2843B5C28 + v87))(v100, v86 + 8);
    v89 = *(*a5 + 4);
    v28 = *(*a5 + 5);
    if (v28)
    {
      atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
    }

    v90 = *(v89 + 16);
    if (v90 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v100[0] = &v101;
    [a2 a3];
LABEL_106:
    if (!v28)
    {
LABEL_109:
      if (!v24)
      {
        goto LABEL_112;
      }

      v50 = v24;
      goto LABEL_111;
    }

    v80 = v28;
LABEL_108:
    std::__shared_weak_count::__release_shared[abi:ne200100](v80);
    goto LABEL_109;
  }

  v18 = *a5;
  v19 = (a5[1] - *a5) >> 4;
  if (v19 > 3)
  {
    if (v19 == 4)
    {
      v69 = *v18;
      v12 = *(v18 + 1);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v70 = *(v69 + 16);
      if (v70 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v100[0] = &v101;
      v71 = (*(&off_2843B5C28 + v70))(v100, v69 + 8);
      v72 = *(*a5 + 2);
      v24 = *(*a5 + 3);
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      v73 = *(v72 + 16);
      if (v73 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v100[0] = &v101;
      v74 = (*(&off_2843B5C28 + v73))(v100, v72 + 8);
      v75 = *(*a5 + 4);
      v58 = *(*a5 + 5);
      if (v58)
      {
        atomic_fetch_add_explicit((v58 + 8), 1uLL, memory_order_relaxed);
      }

      v76 = *(v75 + 16);
      if (v76 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v100[0] = &v101;
      v77 = (*(&off_2843B5C28 + v76))(v100, v75 + 8);
      v78 = *(*a5 + 6);
      v62 = *(*a5 + 7);
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v79 = *(v78 + 16);
      if (v79 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v100[0] = &v101;
      [a2 a3];
LABEL_88:
      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      if (!v58)
      {
        goto LABEL_109;
      }

      v80 = v58;
      goto LABEL_108;
    }

    if (v19 == 5)
    {
      v30 = *v18;
      v12 = *(v18 + 1);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v31 = *(v30 + 16);
      if (v31 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v100[0] = &v101;
      v32 = (*(&off_2843B5C28 + v31))(v100, v30 + 8);
      v33 = *(*a5 + 2);
      v34 = *(*a5 + 3);
      if (v34)
      {
        atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
      }

      v35 = *(v33 + 16);
      v97 = v34;
      if (v35 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v100[0] = &v101;
      v36 = (*(&off_2843B5C28 + v35))(v100, v33 + 8);
      v37 = *(*a5 + 4);
      v38 = *(*a5 + 5);
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v39 = *(v37 + 16);
      if (v39 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v96 = v36;
      v100[0] = &v101;
      v40 = (*(&off_2843B5C28 + v39))(v100, v37 + 8);
      v41 = a3;
      v42 = *(*a5 + 6);
      v43 = *(*a5 + 7);
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v44 = *(v42 + 16);
      if (v44 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v45 = v32;
      v100[0] = &v101;
      v46 = (*(&off_2843B5C28 + v44))(v100, v42 + 8);
      v47 = *(*a5 + 8);
      v48 = *(*a5 + 9);
      if (v48)
      {
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v49 = *(v47 + 16);
      if (v49 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v100[0] = &v101;
      [a2 v41];
      if (v48)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v48);
      }

      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
      }

      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }

      v50 = v97;
      if (v97)
      {
LABEL_111:
        std::__shared_weak_count::__release_shared[abi:ne200100](v50);
        goto LABEL_112;
      }

      goto LABEL_112;
    }
  }

  else
  {
    if (v19 == 2)
    {
      v64 = *v18;
      v12 = *(v18 + 1);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v65 = *(v64 + 16);
      if (v65 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v100[0] = &v101;
      v66 = (*(&off_2843B5C28 + v65))(v100, v64 + 8);
      v67 = *(*a5 + 2);
      v16 = *(*a5 + 3);
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v68 = *(v67 + 16);
      if (v68 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v100[0] = &v101;
      [a2 a3];
      goto LABEL_73;
    }

    if (v19 == 3)
    {
      v20 = *v18;
      v12 = *(v18 + 1);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = *(v20 + 16);
      if (v21 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v100[0] = &v101;
      v22 = (*(&off_2843B5C28 + v21))(v100, v20 + 8);
      v23 = *(*a5 + 2);
      v24 = *(*a5 + 3);
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      v25 = *(v23 + 16);
      if (v25 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v100[0] = &v101;
      v26 = (*(&off_2843B5C28 + v25))(v100, v23 + 8);
      v27 = *(*a5 + 4);
      v28 = *(*a5 + 5);
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
      }

      v29 = *(v27 + 16);
      if (v29 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v100[0] = &v101;
      [a2 a3];
      goto LABEL_106;
    }
  }

  v92 = __cxa_allocate_exception(0x10uLL);
  StringUtil::Format(v100, "No support (yet) for variadics %u > 2/5 variadic arguments", v93, (a5[1] - *a5) >> 4);
  MEMORY[0x2318FB7C0](v92, v100);
  __cxa_throw(v92, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_22EF016F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

void OVM::InterpreterImpl::EvaluateObjCMessageNSObjectReturn(uint64_t a4, id a2, SEL a3, char **a5)
{
  v8 = *a5;
  v9 = (a5[1] - *a5) >> 4;
  if (v9 <= 4)
  {
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v162 = *v8;
        v11 = *(v8 + 1);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v163 = *(v162 + 16);
        if (v163 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v231[0] = &v232;
        v164 = (*(&off_2843B5C28 + v163))(v231, v162 + 8);
        v165 = *(*a5 + 2);
        v166 = *(*a5 + 3);
        if (v166)
        {
          atomic_fetch_add_explicit((v166 + 8), 1uLL, memory_order_relaxed);
        }

        v167 = *(v165 + 16);
        if (v167 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v231[0] = &v232;
        [a2 a3];
        if (!v166)
        {
          goto LABEL_186;
        }

        v127 = v166;
        goto LABEL_185;
      }

      if (v9 == 3)
      {
        v118 = *v8;
        v11 = *(v8 + 1);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v119 = *(v118 + 16);
        if (v119 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v231[0] = &v232;
        v120 = (*(&off_2843B5C28 + v119))(v231, v118 + 8);
        v121 = *(*a5 + 2);
        v16 = *(*a5 + 3);
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
        }

        v122 = *(v121 + 16);
        if (v122 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v231[0] = &v232;
        v123 = (*(&off_2843B5C28 + v122))(v231, v121 + 8);
        v124 = *(*a5 + 4);
        v125 = *(*a5 + 5);
        if (v125)
        {
          atomic_fetch_add_explicit((v125 + 8), 1uLL, memory_order_relaxed);
        }

        v126 = *(v124 + 16);
        if (v126 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v231[0] = &v232;
        [a2 a3];
        if (!v125)
        {
          goto LABEL_134;
        }

        v26 = v125;
      }

      else
      {
        v10 = *v8;
        v11 = *(v8 + 1);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(v10 + 16);
        if (v12 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v231[0] = &v232;
        v14 = (*(&off_2843B5C28 + v12))(v231, v10 + 8);
        v15 = *(*a5 + 2);
        v16 = *(*a5 + 3);
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
        }

        v17 = *(v15 + 16);
        if (v17 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v231[0] = &v232;
        v18 = (*(&off_2843B5C28 + v17))(v231, v15 + 8);
        v19 = *(*a5 + 4);
        v20 = *(*a5 + 5);
        if (v20)
        {
          atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
        }

        v21 = *(v19 + 16);
        if (v21 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v231[0] = &v232;
        v22 = (*(&off_2843B5C28 + v21))(v231, v19 + 8);
        v23 = *(*a5 + 6);
        v24 = *(*a5 + 7);
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v25 = *(v23 + 16);
        if (v25 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v231[0] = &v232;
        [a2 a3];
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        if (!v20)
        {
          goto LABEL_134;
        }

        v26 = v20;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
LABEL_134:
      if (!v16)
      {
LABEL_186:
        if (!v11)
        {
          goto LABEL_223;
        }

        v69 = v11;
        goto LABEL_222;
      }

      v127 = v16;
LABEL_185:
      std::__shared_weak_count::__release_shared[abi:ne200100](v127);
      goto LABEL_186;
    }

    if (!v9)
    {
      [a2 a3];
      goto LABEL_223;
    }

    if (v9 == 1)
    {
      v66 = *v8;
      v67 = *(v8 + 1);
      if (v67)
      {
        atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v68 = *(v66 + 16);
      if (v68 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v231[0] = &v232;
      [a2 a3];
      if (v67)
      {
        v69 = v67;
LABEL_222:
        std::__shared_weak_count::__release_shared[abi:ne200100](v69);
      }

LABEL_223:
      operator new();
    }

LABEL_269:
    exception = __cxa_allocate_exception(0x10uLL);
    Name = sel_getName(a3);
    StringUtil::Format(v231, "Arity %s %zu too high for me", v199, Name, (a5[1] - *a5) >> 4);
    MEMORY[0x2318FB7C0](exception, v231);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v9 <= 6)
  {
    if (v9 == 5)
    {
      v96 = *v8;
      v97 = *(v8 + 1);
      if (v97)
      {
        atomic_fetch_add_explicit((v97 + 8), 1uLL, memory_order_relaxed);
      }

      v98 = *(v96 + 16);
      v222 = v97;
      if (v98 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v231[0] = &v232;
      v99 = (*(&off_2843B5C28 + v98))(v231, v96 + 8);
      v228 = a2;
      v100 = *(*a5 + 2);
      v101 = *(*a5 + 3);
      if (v101)
      {
        atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
      }

      v102 = *(v100 + 16);
      if (v102 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v103 = a3;
      v231[0] = &v232;
      v104 = (*(&off_2843B5C28 + v102))(v231, v100 + 8);
      v105 = *(*a5 + 4);
      v106 = *(*a5 + 5);
      if (v106)
      {
        atomic_fetch_add_explicit(&v106->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v107 = *(v105 + 16);
      if (v107 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v231[0] = &v232;
      v108 = (*(&off_2843B5C28 + v107))(v231, v105 + 8);
      v109 = *(*a5 + 6);
      v110 = *(*a5 + 7);
      if (v110)
      {
        atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v111 = *(v109 + 16);
      if (v111 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v112 = v99;
      v231[0] = &v232;
      v113 = (*(&off_2843B5C28 + v111))(v231, v109 + 8);
      v114 = *(*a5 + 8);
      v115 = *(*a5 + 9);
      if (v115)
      {
        atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v116 = *(v114 + 16);
      if (v116 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v231[0] = &v232;
      [v228 v103];
      if (v115)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v115);
      }

      if (v110)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v110);
      }

      if (v106)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v106);
      }

      v62 = v222;
      if (v101)
      {
        v117 = v101;
        goto LABEL_175;
      }

      goto LABEL_220;
    }

    v70 = *v8;
    v71 = *(v8 + 1);
    if (v71)
    {
      atomic_fetch_add_explicit(v71 + 1, 1uLL, memory_order_relaxed);
    }

    v72 = *(v70 + 16);
    v227 = v71;
    if (v72 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v231[0] = &v232;
    v73 = (*(&off_2843B5C28 + v72))(v231, v70 + 8);
    v74 = *(*a5 + 2);
    v75 = *(*a5 + 3);
    if (v75)
    {
      atomic_fetch_add_explicit((v75 + 8), 1uLL, memory_order_relaxed);
    }

    v76 = *(v74 + 16);
    v221 = v75;
    if (v76 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v231[0] = &v232;
    v77 = (*(&off_2843B5C28 + v76))(v231, v74 + 8);
    v78 = *(*a5 + 4);
    v79 = *(*a5 + 5);
    if (v79)
    {
      atomic_fetch_add_explicit((v79 + 8), 1uLL, memory_order_relaxed);
    }

    v80 = *(v78 + 16);
    if (v80 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v213 = v77;
    v217 = v73;
    v231[0] = &v232;
    v81 = (*(&off_2843B5C28 + v80))(v231, v78 + 8);
    v82 = a2;
    v83 = *(*a5 + 6);
    v84 = *(*a5 + 7);
    if (v84)
    {
      atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v85 = *(v83 + 16);
    if (v85 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v86 = a3;
    v231[0] = &v232;
    v87 = (*(&off_2843B5C28 + v85))(v231, v83 + 8);
    v88 = *(*a5 + 8);
    v89 = *(*a5 + 9);
    if (v89)
    {
      atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v90 = *(v88 + 16);
    if (v90 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v231[0] = &v232;
    v91 = (*(&off_2843B5C28 + v90))(v231, v88 + 8);
    v92 = *(*a5 + 10);
    v93 = *(*a5 + 11);
    if (v93)
    {
      atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v94 = *(v92 + 16);
    if (v94 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v231[0] = &v232;
    [v82 v86];
    if (v93)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v93);
    }

    if (v89)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v89);
    }

    if (v84)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v84);
    }

    v63 = v221;
    v62 = v227;
    if (!v79)
    {
      goto LABEL_173;
    }

    v95 = v79;
    goto LABEL_172;
  }

  switch(v9)
  {
    case 7:
      v168 = *v8;
      v169 = *(v8 + 1);
      if (v169)
      {
        atomic_fetch_add_explicit(&v169->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v170 = *(v168 + 16);
      v219 = v169;
      if (v170 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v231[0] = &v232;
      v171 = (*(&off_2843B5C28 + v170))(v231, v168 + 8);
      v172 = *(*a5 + 2);
      v173 = *(*a5 + 3);
      if (v173)
      {
        atomic_fetch_add_explicit((v173 + 8), 1uLL, memory_order_relaxed);
      }

      v174 = *(v172 + 16);
      v215 = v173;
      if (v174 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v231[0] = &v232;
      v175 = (*(&off_2843B5C28 + v174))(v231, v172 + 8);
      v176 = *(*a5 + 4);
      v177 = *(*a5 + 5);
      if (v177)
      {
        atomic_fetch_add_explicit((v177 + 8), 1uLL, memory_order_relaxed);
      }

      v178 = *(v176 + 16);
      v211 = v177;
      if (v178 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v231[0] = &v232;
      v179 = (*(&off_2843B5C28 + v178))(v231, v176 + 8);
      v180 = *(*a5 + 6);
      v181 = *(*a5 + 7);
      if (v181)
      {
        atomic_fetch_add_explicit(&v181->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v208 = v175;
      v230 = a2;
      v182 = *(v180 + 16);
      if (v182 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v224 = a3;
      v231[0] = &v232;
      v183 = (*(&off_2843B5C28 + v182))(v231, v180 + 8);
      v184 = *(*a5 + 8);
      v185 = *(*a5 + 9);
      if (v185)
      {
        atomic_fetch_add_explicit(&v185->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v186 = *(v184 + 16);
      if (v186 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v187 = v179;
      v188 = v171;
      v231[0] = &v232;
      v189 = (*(&off_2843B5C28 + v186))(v231, v184 + 8);
      v190 = *(*a5 + 10);
      v191 = *(*a5 + 11);
      if (v191)
      {
        atomic_fetch_add_explicit(&v191->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v192 = *(v190 + 16);
      if (v192 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v231[0] = &v232;
      v193 = (*(&off_2843B5C28 + v192))(v231, v190 + 8);
      v194 = *(*a5 + 12);
      v195 = *(*a5 + 13);
      if (v195)
      {
        atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v196 = *(v194 + 16);
      if (v196 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v231[0] = &v232;
      [v230 v224];
      if (v195)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v195);
      }

      if (v191)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v191);
      }

      if (v185)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v185);
      }

      v63 = v215;
      if (v181)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v181);
      }

      if (v211)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v211);
      }

      v62 = v219;
      if (v215)
      {
        goto LABEL_174;
      }

      goto LABEL_220;
    case 8:
      v128 = *v8;
      v129 = *(v8 + 1);
      if (v129)
      {
        atomic_fetch_add_explicit(v129 + 1, 1uLL, memory_order_relaxed);
      }

      v130 = *(v128 + 16);
      v229 = v129;
      if (v130 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v231[0] = &v232;
      v131 = (*(&off_2843B5C28 + v130))(v231, v128 + 8);
      v132 = *(*a5 + 2);
      v133 = *(*a5 + 3);
      if (v133)
      {
        atomic_fetch_add_explicit((v133 + 8), 1uLL, memory_order_relaxed);
      }

      v134 = *(v132 + 16);
      v223 = v133;
      if (v134 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v231[0] = &v232;
      v135 = (*(&off_2843B5C28 + v134))(v231, v132 + 8);
      v136 = *(*a5 + 4);
      v137 = *(*a5 + 5);
      if (v137)
      {
        atomic_fetch_add_explicit((v137 + 8), 1uLL, memory_order_relaxed);
      }

      v138 = *(v136 + 16);
      v218 = v137;
      if (v138 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v231[0] = &v232;
      v139 = (*(&off_2843B5C28 + v138))(v231, v136 + 8);
      v140 = *(*a5 + 6);
      v141 = *(*a5 + 7);
      if (v141)
      {
        atomic_fetch_add_explicit((v141 + 8), 1uLL, memory_order_relaxed);
      }

      v142 = *(v140 + 16);
      v214 = v141;
      if (v142 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v207 = v139;
      v231[0] = &v232;
      v143 = (*(&off_2843B5C28 + v142))(v231, v140 + 8);
      v144 = *(*a5 + 8);
      v145 = *(*a5 + 9);
      if (v145)
      {
        atomic_fetch_add_explicit((v145 + 8), 1uLL, memory_order_relaxed);
      }

      v210 = v145;
      v205 = v143;
      v146 = *(v144 + 16);
      if (v146 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v231[0] = &v232;
      v147 = (*(&off_2843B5C28 + v146))(v231, v144 + 8);
      v203 = v135;
      v148 = *(*a5 + 10);
      v149 = *(*a5 + 11);
      if (v149)
      {
        atomic_fetch_add_explicit(&v149->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v150 = *(v148 + 16);
      if (v150 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v151 = v131;
      v152 = a2;
      v153 = a3;
      v231[0] = &v232;
      v154 = (*(&off_2843B5C28 + v150))(v231, v148 + 8);
      v155 = *(*a5 + 12);
      v156 = *(*a5 + 13);
      if (v156)
      {
        atomic_fetch_add_explicit(&v156->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v157 = *(v155 + 16);
      if (v157 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v231[0] = &v232;
      v158 = (*(&off_2843B5C28 + v157))(v231, v155 + 8);
      v159 = *(*a5 + 14);
      v160 = *(*a5 + 15);
      if (v160)
      {
        atomic_fetch_add_explicit(&v160->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v161 = *(v159 + 16);
      if (v161 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v231[0] = &v232;
      [v152 v153];
      if (v160)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v160);
      }

      if (v156)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v156);
      }

      if (v149)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v149);
      }

      if (v210)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v210);
      }

      v63 = v223;
      v62 = v229;
      v65 = v214;
      v64 = v218;
      if (!v214)
      {
        goto LABEL_170;
      }

      break;
    case 9:
      v27 = *v8;
      v28 = *(v8 + 1);
      if (v28)
      {
        atomic_fetch_add_explicit(v28 + 1, 1uLL, memory_order_relaxed);
      }

      v29 = *(v27 + 16);
      v226 = v28;
      if (v29 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v231[0] = &v232;
      v30 = (*(&off_2843B5C28 + v29))(v231, v27 + 8);
      v31 = *(*a5 + 2);
      v32 = *(*a5 + 3);
      if (v32)
      {
        atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
      }

      v33 = *(v31 + 16);
      v216 = v32;
      if (v33 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v231[0] = &v232;
      v34 = (*(&off_2843B5C28 + v33))(v231, v31 + 8);
      v35 = *(*a5 + 4);
      v36 = *(*a5 + 5);
      if (v36)
      {
        atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
      }

      v37 = *(v35 + 16);
      v212 = v36;
      if (v37 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v231[0] = &v232;
      v38 = (*(&off_2843B5C28 + v37))(v231, v35 + 8);
      v39 = *(*a5 + 6);
      v40 = *(*a5 + 7);
      if (v40)
      {
        atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
      }

      v204 = v38;
      v41 = *(v39 + 16);
      v209 = v40;
      if (v41 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v231[0] = &v232;
      v42 = (*(&off_2843B5C28 + v41))(v231, v39 + 8);
      v43 = *(*a5 + 8);
      v44 = *(*a5 + 9);
      if (v44)
      {
        atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
      }

      v202 = v42;
      v206 = v44;
      v45 = *(v43 + 16);
      if (v45 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v220 = a3;
      v231[0] = &v232;
      v46 = (*(&off_2843B5C28 + v45))(v231, v43 + 8);
      v47 = *(*a5 + 10);
      v48 = *(*a5 + 11);
      if (v48)
      {
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v200 = v46;
      v201 = v34;
      v49 = *(v47 + 16);
      if (v49 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v231[0] = &v232;
      v50 = (*(&off_2843B5C28 + v49))(v231, v47 + 8);
      v51 = *(*a5 + 12);
      v52 = *(*a5 + 13);
      if (v52)
      {
        atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v53 = *(v51 + 16);
      if (v53 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v231[0] = &v232;
      v54 = (*(&off_2843B5C28 + v53))(v231, v51 + 8);
      v55 = *(*a5 + 14);
      v56 = *(*a5 + 15);
      if (v56)
      {
        atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v57 = *(v55 + 16);
      if (v57 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v231[0] = &v232;
      v58 = (*(&off_2843B5C28 + v57))(v231, v55 + 8);
      v59 = *(*a5 + 16);
      v60 = *(*a5 + 17);
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v61 = *(v59 + 16);
      if (v61 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v231[0] = &v232;
      [a2 v220];
      if (v60)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v60);
      }

      if (v56)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v56);
      }

      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v52);
      }

      v62 = v226;
      v64 = v212;
      v63 = v216;
      if (v48)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v48);
      }

      if (v206)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v206);
      }

      if (!v209)
      {
        goto LABEL_170;
      }

      v65 = v209;
      break;
    default:
      goto LABEL_269;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v65);
LABEL_170:
  if (!v64)
  {
    goto LABEL_173;
  }

  v95 = v64;
LABEL_172:
  std::__shared_weak_count::__release_shared[abi:ne200100](v95);
LABEL_173:
  if (v63)
  {
LABEL_174:
    v117 = v63;
LABEL_175:
    std::__shared_weak_count::__release_shared[abi:ne200100](v117);
    if (!v62)
    {
      goto LABEL_223;
    }

LABEL_221:
    v69 = v62;
    goto LABEL_222;
  }

LABEL_220:
  if (!v62)
  {
    goto LABEL_223;
  }

  goto LABEL_221;
}

void sub_22EF02A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((v28 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v29);
  goto LABEL_6;
}

void sub_22EF02DE4()
{
  if (v0)
  {
    JUMPOUT(0x22EF02DD8);
  }

  JUMPOUT(0x22EF02DDCLL);
}

void OVM::InterpreterImpl::EvaluateObjCMessageNonobjectReturn(uint64_t a4, id a2, SEL a3, int a5, char **a6)
{
  v9 = *a6;
  v10 = (a6[1] - *a6) >> 4;
  if (v10 <= 4)
  {
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        if (v10 == 3)
        {
          v118 = *v9;
          v12 = *(v9 + 1);
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v119 = *(v118 + 16);
          if (v119 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v226[0] = v227;
          v120 = (*(&off_2843B5C28 + v119))(v226, v118 + 8);
          v121 = *(*a6 + 2);
          v122 = *(*a6 + 3);
          if (v122)
          {
            atomic_fetch_add_explicit((v122 + 8), 1uLL, memory_order_relaxed);
          }

          v123 = *(v121 + 16);
          if (v123 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v226[0] = v227;
          v124 = (*(&off_2843B5C28 + v123))(v226, v121 + 8);
          v125 = *(*a6 + 4);
          v126 = *(*a6 + 5);
          if (v126)
          {
            atomic_fetch_add_explicit(&v126->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v127 = *(v125 + 16);
          if (v127 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v226[0] = v227;
          [a2 a3];
          if (v126)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v126);
          }

          if (!v122)
          {
            goto LABEL_139;
          }

          v28 = v122;
        }

        else
        {
          v11 = *v9;
          v12 = *(v9 + 1);
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v13 = *(v11 + 16);
          if (v13 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v226[0] = v227;
          v14 = (*(&off_2843B5C28 + v13))(v226, v11 + 8);
          v15 = a2;
          v16 = *(*a6 + 2);
          v17 = *(*a6 + 3);
          if (v17)
          {
            atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
          }

          v18 = *(v16 + 16);
          if (v18 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v19 = a3;
          v226[0] = v227;
          v20 = (*(&off_2843B5C28 + v18))(v226, v16 + 8);
          v21 = *(*a6 + 4);
          v22 = *(*a6 + 5);
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v23 = *(v21 + 16);
          if (v23 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v226[0] = v227;
          v24 = (*(&off_2843B5C28 + v23))(v226, v21 + 8);
          v25 = *(*a6 + 6);
          v26 = *(*a6 + 7);
          if (v26)
          {
            atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v27 = *(v25 + 16);
          if (v27 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v226[0] = v227;
          [v15 v19];
          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }

          if (!v17)
          {
            goto LABEL_139;
          }

          v28 = v17;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
LABEL_139:
        if (!v12)
        {
          goto LABEL_229;
        }

        v117 = v12;
        goto LABEL_228;
      }

      v159 = *v9;
      v68 = *(v9 + 1);
      if (v68)
      {
        atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v160 = *(v159 + 16);
      if (v160 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v226[0] = v227;
      v161 = (*(&off_2843B5C28 + v160))(v226, v159 + 8);
      v162 = *(*a6 + 2);
      v163 = *(*a6 + 3);
      if (v163)
      {
        atomic_fetch_add_explicit(&v163->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v164 = *(v162 + 16);
      if (v164 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v226[0] = v227;
      [a2 a3];
      if (v163)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v163);
      }

LABEL_189:
      if (!v68)
      {
        goto LABEL_229;
      }

      v117 = v68;
      goto LABEL_228;
    }

    if (!v10)
    {
      [a2 a3];
      goto LABEL_229;
    }

    if (v10 == 1)
    {
      v67 = *v9;
      v68 = *(v9 + 1);
      if (v68)
      {
        atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v69 = *(v67 + 16);
      if (v69 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v226[0] = v227;
      [a2 a3];
      goto LABEL_189;
    }

LABEL_275:
    exception = __cxa_allocate_exception(0x10uLL);
    Name = sel_getName(a3);
    StringUtil::Format(v226, "Arity %s %zu too high for me", v195, Name, (a6[1] - *a6) >> 4);
    MEMORY[0x2318FB7C0](exception, v226);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v10 <= 6)
  {
    if (v10 == 5)
    {
      v96 = *v9;
      v97 = *(v9 + 1);
      if (v97)
      {
        atomic_fetch_add_explicit((v97 + 8), 1uLL, memory_order_relaxed);
      }

      v98 = *(v96 + 16);
      v223 = v97;
      if (v98 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v226[0] = v227;
      v99 = (*(&off_2843B5C28 + v98))(v226, v96 + 8);
      v100 = *(*a6 + 2);
      v101 = *(*a6 + 3);
      if (v101)
      {
        atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
      }

      v102 = *(v100 + 16);
      v218 = v101;
      if (v102 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v226[0] = v227;
      v103 = (*(&off_2843B5C28 + v102))(v226, v100 + 8);
      v104 = *(*a6 + 4);
      v105 = *(*a6 + 5);
      if (v105)
      {
        atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v106 = *(v104 + 16);
      if (v106 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v107 = a2;
      v108 = a3;
      v226[0] = v227;
      v109 = (*(&off_2843B5C28 + v106))(v226, v104 + 8);
      v110 = *(*a6 + 6);
      v111 = *(*a6 + 7);
      if (v111)
      {
        atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v112 = *(v110 + 16);
      if (v112 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v226[0] = v227;
      v113 = (*(&off_2843B5C28 + v112))(v226, v110 + 8);
      v114 = *(*a6 + 8);
      v115 = *(*a6 + 9);
      if (v115)
      {
        atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v116 = *(v114 + 16);
      if (v116 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v226[0] = v227;
      [v107 v108];
      if (v115)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v115);
      }

      if (v111)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v111);
      }

      if (v105)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v105);
      }

      if (v218)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v218);
      }

      v117 = v223;
      if (v223)
      {
        goto LABEL_228;
      }

      goto LABEL_229;
    }

    v70 = *v9;
    v71 = *(v9 + 1);
    if (v71)
    {
      atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v72 = *(v70 + 16);
    v213 = v71;
    if (v72 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v226[0] = v227;
    v73 = (*(&off_2843B5C28 + v72))(v226, v70 + 8);
    v74 = *(*a6 + 2);
    v75 = *(*a6 + 3);
    if (v75)
    {
      atomic_fetch_add_explicit((v75 + 8), 1uLL, memory_order_relaxed);
    }

    v76 = *(v74 + 16);
    v209 = v75;
    if (v76 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v226[0] = v227;
    v77 = (*(&off_2843B5C28 + v76))(v226, v74 + 8);
    v78 = *(*a6 + 4);
    v79 = *(*a6 + 5);
    if (v79)
    {
      atomic_fetch_add_explicit((v79 + 8), 1uLL, memory_order_relaxed);
    }

    v217 = a2;
    v80 = *(v78 + 16);
    if (v80 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v222 = a3;
    v226[0] = v227;
    v81 = (*(&off_2843B5C28 + v80))(v226, v78 + 8);
    v82 = *(*a6 + 6);
    v83 = *(*a6 + 7);
    if (v83)
    {
      atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v84 = *(v82 + 16);
    if (v84 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v85 = v77;
    v226[0] = v227;
    v86 = (*(&off_2843B5C28 + v84))(v226, v82 + 8);
    v87 = *(*a6 + 8);
    v88 = *(*a6 + 9);
    if (v88)
    {
      atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v89 = *(v87 + 16);
    if (v89 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v90 = v73;
    v226[0] = v227;
    v91 = (*(&off_2843B5C28 + v89))(v226, v87 + 8);
    v92 = *(*a6 + 10);
    v93 = *(*a6 + 11);
    if (v93)
    {
      atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v94 = *(v92 + 16);
    if (v94 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v226[0] = v227;
    [v217 v222];
    if (v93)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v93);
    }

    if (v88)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v88);
    }

    if (v83)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v83);
    }

    v65 = v209;
    v30 = v213;
    if (!v79)
    {
      goto LABEL_224;
    }

    v95 = v79;
  }

  else
  {
    switch(v10)
    {
      case 7:
        v165 = *v9;
        v166 = *(v9 + 1);
        if (v166)
        {
          atomic_fetch_add_explicit(v166 + 1, 1uLL, memory_order_relaxed);
        }

        v167 = *(v165 + 16);
        v220 = v166;
        if (v167 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v226[0] = v227;
        v168 = (*(&off_2843B5C28 + v167))(v226, v165 + 8);
        v169 = *(*a6 + 2);
        v170 = *(*a6 + 3);
        if (v170)
        {
          atomic_fetch_add_explicit((v170 + 8), 1uLL, memory_order_relaxed);
        }

        v171 = *(v169 + 16);
        v215 = v170;
        if (v171 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v226[0] = v227;
        v172 = (*(&off_2843B5C28 + v171))(v226, v169 + 8);
        v173 = *(*a6 + 4);
        v174 = *(*a6 + 5);
        if (v174)
        {
          atomic_fetch_add_explicit((v174 + 8), 1uLL, memory_order_relaxed);
        }

        v175 = *(v173 + 16);
        v211 = v174;
        if (v175 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v225 = a3;
        v226[0] = v227;
        v176 = (*(&off_2843B5C28 + v175))(v226, v173 + 8);
        v177 = *(*a6 + 6);
        v178 = *(*a6 + 7);
        if (v178)
        {
          atomic_fetch_add_explicit(&v178->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v179 = *(v177 + 16);
        if (v179 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v204 = v176;
        v207 = v172;
        v226[0] = v227;
        v180 = (*(&off_2843B5C28 + v179))(v226, v177 + 8);
        v181 = *(*a6 + 8);
        v182 = *(*a6 + 9);
        if (v182)
        {
          atomic_fetch_add_explicit(&v182->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v183 = *(v181 + 16);
        if (v183 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v226[0] = v227;
        v184 = (*(&off_2843B5C28 + v183))(v226, v181 + 8);
        v185 = *(*a6 + 10);
        v186 = *(*a6 + 11);
        if (v186)
        {
          atomic_fetch_add_explicit(&v186->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v187 = *(v185 + 16);
        if (v187 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v188 = v168;
        v226[0] = v227;
        v189 = (*(&off_2843B5C28 + v187))(v226, v185 + 8);
        v190 = *(*a6 + 12);
        v191 = *(*a6 + 13);
        if (v191)
        {
          atomic_fetch_add_explicit(&v191->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v192 = *(v190 + 16);
        if (v192 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v226[0] = v227;
        [a2 v225];
        if (v191)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v191);
        }

        if (v186)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v186);
        }

        if (v182)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v182);
        }

        v66 = v211;
        v65 = v215;
        if (v178)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v178);
        }

        v30 = v220;
        break;
      case 8:
        v128 = *v9;
        v129 = *(v9 + 1);
        if (v129)
        {
          atomic_fetch_add_explicit(v129 + 1, 1uLL, memory_order_relaxed);
        }

        v219 = v129;
        v130 = *(v128 + 16);
        if (v130 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v226[0] = v227;
        v131 = (*(&off_2843B5C28 + v130))(v226, v128 + 8);
        v132 = *(*a6 + 2);
        v133 = *(*a6 + 3);
        if (v133)
        {
          atomic_fetch_add_explicit((v133 + 8), 1uLL, memory_order_relaxed);
        }

        v134 = *(v132 + 16);
        v214 = v133;
        if (v134 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v226[0] = v227;
        v135 = (*(&off_2843B5C28 + v134))(v226, v132 + 8);
        v136 = *(*a6 + 4);
        v137 = *(*a6 + 5);
        if (v137)
        {
          atomic_fetch_add_explicit((v137 + 8), 1uLL, memory_order_relaxed);
        }

        v138 = *(v136 + 16);
        v210 = v137;
        if (v138 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v226[0] = v227;
        v139 = (*(&off_2843B5C28 + v138))(v226, v136 + 8);
        v140 = *(*a6 + 6);
        v141 = *(*a6 + 7);
        if (v141)
        {
          atomic_fetch_add_explicit(&v141->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v142 = *(v140 + 16);
        if (v142 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v206 = v139;
        v226[0] = v227;
        v143 = (*(&off_2843B5C28 + v142))(v226, v140 + 8);
        v144 = *(*a6 + 8);
        v145 = *(*a6 + 9);
        if (v145)
        {
          atomic_fetch_add_explicit(&v145->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v201 = v143;
        v203 = v135;
        v146 = *(v144 + 16);
        if (v146 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v199 = v131;
        v226[0] = v227;
        v147 = (*(&off_2843B5C28 + v146))(v226, v144 + 8);
        v148 = *(*a6 + 10);
        v149 = *(*a6 + 11);
        if (v149)
        {
          atomic_fetch_add_explicit(&v149->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v150 = *(v148 + 16);
        if (v150 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v226[0] = v227;
        v151 = (*(&off_2843B5C28 + v150))(v226, v148 + 8);
        v152 = *(*a6 + 12);
        v153 = *(*a6 + 13);
        if (v153)
        {
          atomic_fetch_add_explicit(&v153->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v154 = *(v152 + 16);
        if (v154 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v226[0] = v227;
        v155 = (*(&off_2843B5C28 + v154))(v226, v152 + 8);
        v156 = *(*a6 + 14);
        v157 = *(*a6 + 15);
        if (v157)
        {
          atomic_fetch_add_explicit(&v157->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v158 = *(v156 + 16);
        if (v158 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v226[0] = v227;
        [a2 a3];
        if (v157)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v157);
        }

        if (v153)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v153);
        }

        if (v149)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v149);
        }

        if (v145)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v145);
        }

        if (v141)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v141);
        }

        if (v210)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v210);
        }

        if (v214)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v214);
        }

        if (v219)
        {
          v117 = v219;
LABEL_228:
          std::__shared_weak_count::__release_shared[abi:ne200100](v117);
        }

LABEL_229:
        operator new();
      case 9:
        v29 = *v9;
        v30 = *(v9 + 1);
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v31 = *(v29 + 16);
        if (v31 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v226[0] = v227;
        v32 = (*(&off_2843B5C28 + v31))(v226, v29 + 8);
        v33 = *(*a6 + 2);
        v34 = *(*a6 + 3);
        if (v34)
        {
          atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
        }

        v35 = *(v33 + 16);
        v221 = v34;
        if (v35 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v226[0] = v227;
        v36 = (*(&off_2843B5C28 + v35))(v226, v33 + 8);
        v37 = *(*a6 + 4);
        v38 = *(*a6 + 5);
        if (v38)
        {
          atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
        }

        v39 = *(v37 + 16);
        v212 = v38;
        if (v39 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v226[0] = v227;
        v40 = (*(&off_2843B5C28 + v39))(v226, v37 + 8);
        v41 = *(*a6 + 6);
        v42 = *(*a6 + 7);
        if (v42)
        {
          atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
        }

        v202 = v40;
        v43 = *(v41 + 16);
        v208 = v42;
        if (v43 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v200 = v36;
        v226[0] = v227;
        v44 = (*(&off_2843B5C28 + v43))(v226, v41 + 8);
        v45 = *(*a6 + 8);
        v46 = *(*a6 + 9);
        if (v46)
        {
          atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
        }

        v198 = v44;
        v47 = *(v45 + 16);
        v205 = v46;
        if (v47 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v197 = v32;
        v226[0] = v227;
        v48 = (*(&off_2843B5C28 + v47))(v226, v45 + 8);
        v216 = a2;
        v49 = *(*a6 + 10);
        v50 = *(*a6 + 11);
        if (v50)
        {
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v196 = v48;
        v51 = *(v49 + 16);
        if (v51 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v52 = a3;
        v226[0] = v227;
        v53 = (*(&off_2843B5C28 + v51))(v226, v49 + 8);
        v54 = *(*a6 + 12);
        v55 = *(*a6 + 13);
        if (v55)
        {
          atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v56 = *(v54 + 16);
        if (v56 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v226[0] = v227;
        v57 = (*(&off_2843B5C28 + v56))(v226, v54 + 8);
        v58 = *(*a6 + 14);
        v59 = *(*a6 + 15);
        if (v59)
        {
          atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v60 = *(v58 + 16);
        if (v60 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v226[0] = v227;
        v61 = (*(&off_2843B5C28 + v60))(v226, v58 + 8);
        v62 = *(*a6 + 16);
        v63 = *(*a6 + 17);
        if (v63)
        {
          atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v64 = *(v62 + 16);
        if (v64 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v226[0] = v227;
        [v216 v52];
        if (v63)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v63);
        }

        if (v59)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v59);
        }

        if (v55)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v55);
        }

        v65 = v221;
        v66 = v212;
        if (v50)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v50);
        }

        if (v205)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v205);
        }

        if (v208)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v208);
        }

        break;
      default:
        goto LABEL_275;
    }

    if (!v66)
    {
LABEL_224:
      if (v65)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v65);
      }

      if (v30)
      {
        v117 = v30;
        goto LABEL_228;
      }

      goto LABEL_229;
    }

    v95 = v66;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v95);
  goto LABEL_224;
}

void sub_22EF03FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
    if ((v30 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v29);
  goto LABEL_6;
}

uint64_t OVM::InterpreterImpl::EvaluateTruthiness(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v4;
  return (*(&off_2843B5BB8 + v2))(&v5, v1 + 8);
}

void OVM::Interpreter::RunSubroutine(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(v10, 0, sizeof(v10));
  v11 = v6;
  v12 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a5;
  v14 = v8;
  v15 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  OVM::InterpreterImpl::RunSubroutine(v10, a2, a3, a6);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::deque<std::map<std::string,std::shared_ptr<OVM::Var>>>::~deque[abi:ne200100](v10);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_22EF04518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OVM::InterpreterImpl::~InterpreterImpl(&a9);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

uint64_t *OVM::Error::Error<>(uint64_t *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(a1, &__p, &v5, 1uLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278874850, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t *std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22EF04804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
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

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

uint64_t *OVM::Error::Error<std::string>(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(a1, &__p, &v7, 1uLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::vector<std::string>::push_back[abi:ne200100](a1, a3);
  return a1;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
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

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::deque<std::map<std::string,std::shared_ptr<OVM::Var>>>::emplace_back<>(unint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = 170 * ((v3 - v2) >> 3) - 1;
  if (v3 == v2)
  {
    v4 = 0;
  }

  if (v4 == a1[5] + a1[4])
  {
    std::deque<std::map<std::string,std::shared_ptr<OVM::Var>>>::__add_back_capacity(a1);
    v2 = a1[1];
    v3 = a1[2];
  }

  if (v3 == v2)
  {
    v6 = 0;
  }

  else
  {
    v5 = a1[5] + a1[4];
    v6 = (*(v2 + 8 * (v5 / 0xAA)) + 24 * (v5 % 0xAA));
  }

  v6[2] = 0;
  v6[1] = 0;
  *v6 = v6 + 1;
  v7 = a1[4];
  v8 = a1[5] + 1;
  a1[5] = v8;
  v9 = v7 + v8;
  v10 = a1[1];
  v11 = (v10 + 8 * (v9 / 0xAA));
  v12 = *v11 + 24 * (v9 % 0xAA);
  if (a1[2] == v10)
  {
    v12 = 0;
  }

  if (v12 == *v11)
  {
    v12 = *(v11 - 1) + 4080;
  }

  return v12 - 24;
}

void std::deque<std::map<std::string,std::shared_ptr<OVM::Var>>>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<std::map<std::string,std::shared_ptr<OVM::Var>> *,std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *>>::emplace_back<std::map<std::string,std::shared_ptr<OVM::Var>> *&>(a1, &v9);
}

void sub_22EF05174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__split_buffer<std::map<std::string,std::shared_ptr<OVM::Var>> *,std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *>>::emplace_back<std::map<std::string,std::shared_ptr<OVM::Var>> *&>(unint64_t *a1, void *a2)
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
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *>>(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<std::map<std::string,std::shared_ptr<OVM::Var>> *,std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *>>::emplace_front<std::map<std::string,std::shared_ptr<OVM::Var>> *>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *>>(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<std::map<std::string,std::shared_ptr<OVM::Var>> *,std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *> &>::emplace_back<std::map<std::string,std::shared_ptr<OVM::Var>> *>(unint64_t *a1, void *a2)
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
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *>>(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<std::map<std::string,std::shared_ptr<OVM::Var>> *,std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *> &>::emplace_front<std::map<std::string,std::shared_ptr<OVM::Var>> *&>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *>>(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<OVM::Var>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::shared_ptr<OVM::Var>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<OVM::Var>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<OVM::Var>>::clear[abi:ne200100](uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  while (v1 != v2)
  {
    *(result + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(result + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void std::vector<std::shared_ptr<OVM::Var>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<OVM::Var>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<OVM::Var>>::clear[abi:ne200100](uint64_t *result)
{
  v2 = *result;
  for (i = result[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  result[1] = v2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<OVM::Var>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::bad_variant_access::~bad_variant_access);
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<OVM::InterpreterImpl::EvaluateTruthiness(std::shared_ptr<OVM::Var>)::$_0,OVM::InterpreterImpl::EvaluateTruthiness(std::shared_ptr<OVM::Var>)::$_1,OVM::InterpreterImpl::EvaluateTruthiness(std::shared_ptr<OVM::Var>)::$_2,OVM::InterpreterImpl::EvaluateTruthiness(std::shared_ptr<OVM::Var>)::$_3>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::monostate,long,NSObject *,OVM::Var*> &>()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::bad_variant_access::~bad_variant_access);
}

void OVM::InterpreterImpl::~InterpreterImpl(OVM::InterpreterImpl *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::deque<std::map<std::string,std::shared_ptr<OVM::Var>>>::~deque[abi:ne200100](this);
}

uint64_t std::deque<std::map<std::string,std::shared_ptr<OVM::Var>>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0xAA];
    v7 = *v6 + 24 * (v5 % 0xAA);
    v8 = v2[(a1[5] + v5) / 0xAA] + 24 * ((a1[5] + v5) % 0xAA);
    if (v7 != v8)
    {
      do
      {
        std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Var>>>>::destroy(v7, *(v7 + 8));
        v7 += 24;
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 85;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 170;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return std::__split_buffer<std::map<std::string,std::shared_ptr<OVM::Var>> *,std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *>>::~__split_buffer(a1);
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Var>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Var>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Var>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<OVM::Var>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<OVM::Var>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::__split_buffer<std::map<std::string,std::shared_ptr<OVM::Var>> *,std::allocator<std::map<std::string,std::shared_ptr<OVM::Var>> *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>>>::find<std::string>(uint64_t a1, char *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t ***a1, char *a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = a2[23];
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    v6 = *(a2 + 1);
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Var>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Var>>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Var>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

char *std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Var>>>>::__find_equal<std::string>(uint64_t a1, char **a2, uint64_t ***a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v4 + 32) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 8;
      v4 = *(v7 + 1);
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t *std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Var>>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<OVM::Var>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__shared_ptr_emplace<OVM::Var>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2843B5BE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318FB870);
}

uint64_t std::deque<std::map<std::string,std::shared_ptr<OVM::Var>>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  v3 = *(a1[1] + 8 * (v2 / 0xAA)) + 24 * (v2 % 0xAA);
  std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Var>>>>::destroy(v3, *(v3 + 8));
  --a1[5];

  return std::deque<std::map<std::string,std::shared_ptr<OVM::Var>>>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<std::map<std::string,std::shared_ptr<OVM::Var>>>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 170 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0xAA)
  {
    a2 = 1;
  }

  if (v5 < 0x154)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<void * OVM::InterpreterImpl::GetUnsafe<std::shared_ptr<OVM::Var>>(std::shared_ptr<OVM::Var>)::{lambda(std::monostate)#1},void * OVM::InterpreterImpl::GetUnsafe<std::shared_ptr<OVM::Var>>(std::shared_ptr<OVM::Var>)::{lambda(long)#1},void * OVM::InterpreterImpl::GetUnsafe<std::shared_ptr<OVM::Var>>(std::shared_ptr<OVM::Var>)::{lambda(NSObject *)#1},void * OVM::InterpreterImpl::GetUnsafe<std::shared_ptr<OVM::Var>>(std::shared_ptr<OVM::Var>)::{lambda(OVM::Var*)#1}>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::monostate,long,NSObject *,OVM::Var*> &>()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::bad_variant_access::~bad_variant_access);
}

void std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<void * OVM::InterpreterImpl::GetUnsafe<std::shared_ptr<OVM::Var>>(std::shared_ptr<OVM::Var>)::{lambda(std::monostate)#1},void * OVM::InterpreterImpl::GetUnsafe<std::shared_ptr<OVM::Var>>(std::shared_ptr<OVM::Var>)::{lambda(long)#1},void * OVM::InterpreterImpl::GetUnsafe<std::shared_ptr<OVM::Var>>(std::shared_ptr<OVM::Var>)::{lambda(NSObject *)#1},void * OVM::InterpreterImpl::GetUnsafe<std::shared_ptr<OVM::Var>>(std::shared_ptr<OVM::Var>)::{lambda(OVM::Var*)#1}>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::monostate,long,NSObject *,OVM::Var*> &>(uint64_t a1, int **a2)
{
  v2 = **a2;
  if (v2 > 2)
  {
    if (v2 != 4)
    {
      return;
    }

LABEL_5:
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x277D82900] + 16;
    __cxa_throw(exception, MEMORY[0x277D82768], std::bad_variant_access::~bad_variant_access);
  }

  if (v2 == 1)
  {
    goto LABEL_5;
  }
}

void std::__shared_ptr_pointer<OVM::Var *,OVM::InterpreterImpl::Evaluate(OVM::UnaryOperator const*)::$_0,std::allocator<OVM::Var>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318FB870);
}

uint64_t std::__shared_ptr_pointer<OVM::Var *,OVM::InterpreterImpl::Evaluate(OVM::UnaryOperator const*)::$_0,std::allocator<OVM::Var>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void sub_22EF069E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22EF06BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OVM::Deserialize(OVM *this@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v15 = this;
  if ([(OVM *)v15 length]<= 4)
  {
    OVM::Error::Unexpected<char const(&)[37]>(&v23, "Deserialize less than 5 bytes data?!");
LABEL_3:
    *a2 = v23;
    *(a2 + 16) = v24;
    v24 = 0;
    v23 = 0uLL;
    *(a2 + 24) = 0;
    v20 = &v23;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v20);
    goto LABEL_4;
  }

  v2 = [(OVM *)v15 bytes];
  if (*v2 == 2)
  {
    v4 = *([(OVM *)v15 bytes]+ 1);
    if (v4 > 0x100000)
    {
      OVM::Error::Unexpected<char const(&)[40]>(&v23, "Desrialized plugins should not be > 1MB");
      goto LABEL_3;
    }

    v13 = [MEMORY[0x277CBEB28] dataWithLength:v4];
    if (compression_decode_buffer([v13 bytes], objc_msgSend(v13, "length"), (-[OVM bytes](v15, "bytes") + 5), -[OVM length](v15, "length") - 5, 0, COMPRESSION_LZ4) == v4)
    {
      v18 = 0;
      v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v13 options:0 error:&v18];
      v7 = v18;
      v11 = v7;
      v12 = v6;
      if (!v6 || v7)
      {
        v8 = [v7 localizedFailureReason];
        v9 = v8;
        if (v8)
        {
          objc_msgSend_asCXXString(v8);
        }

        else
        {
          v25[0] = 0;
          v25[1] = 0;
          v26 = 0;
        }

        OVM::Error::Error<>(&v23, v25);
        v10 = v24;
        *v17 = v23;
        v24 = 0;
        v23 = 0uLL;
        v19 = &v23;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
        *a2 = *v17;
        *(a2 + 16) = v10;
        v21 = 0;
        *&v22 = 0;
        v20 = 0;
        *(a2 + 24) = 0;
        *&v23 = &v20;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25[0]);
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          operator new();
        }

        OVM::Error::Unexpected<char const(&)[21]>(&v23, "Wrong top-level type");
        *a2 = v23;
        *(a2 + 16) = v24;
        v24 = 0;
        v23 = 0uLL;
        *(a2 + 24) = 0;
        v20 = &v23;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v20);
      }
    }

    else
    {
      OVM::Error::Unexpected<char const(&)[21]>(&v23, "Decompression failed");
      *a2 = v23;
      *(a2 + 16) = v24;
      v24 = 0;
      v23 = 0uLL;
      *(a2 + 24) = 0;
      v20 = &v23;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v20);
    }
  }

  else
  {
    StringUtil::Format(v25, "Bad version %d", v3, *v2);
    OVM::Error::Error<>(&v23, v25);
    v5 = v24;
    *v16 = v23;
    v24 = 0;
    v23 = 0uLL;
    v19 = &v23;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
    *a2 = *v16;
    *(a2 + 16) = v5;
    v21 = 0;
    *&v22 = 0;
    v20 = 0;
    *(a2 + 24) = 0;
    *&v23 = &v20;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }
  }

LABEL_4:
}

void sub_22EF074F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](a10);

  _Unwind_Resume(a1);
}

void OVM::Error::Unexpected<char const(&)[37]>(uint64_t *__return_ptr a1@<X8>, char *__s@<X0>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  OVM::Error::Error<>(&v5, __p);
  *a1 = v5;
  a1[2] = v6;
  v6 = 0;
  v5 = 0uLL;
  v7 = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22EF07954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OVM::Error::Unexpected<char const(&)[40]>(uint64_t *__return_ptr a1@<X8>, char *__s@<X0>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  OVM::Error::Error<>(&v5, __p);
  *a1 = v5;
  a1[2] = v6;
  v6 = 0;
  v5 = 0uLL;
  v7 = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22EF079E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OVM::Error::Unexpected<char const(&)[21]>(uint64_t *__return_ptr a1@<X8>, char *__s@<X0>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  OVM::Error::Error<>(&v5, __p);
  *a1 = v5;
  a1[2] = v6;
  v6 = 0;
  v5 = 0uLL;
  v7 = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22EF07A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OVM::Error::Unexpected<char const(&)[22]>(uint64_t *__return_ptr a1@<X8>, char *__s@<X0>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  OVM::Error::Error<>(&v5, __p);
  *a1 = v5;
  a1[2] = v6;
  v6 = 0;
  v5 = 0uLL;
  v7 = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22EF07B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OVM::Error::Unexpected<char const*>(char **a1@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, *a1);
  OVM::Error::Error<>(&v5, __p);
  *a2 = v5;
  *(a2 + 16) = v6;
  v6 = 0;
  v5 = 0uLL;
  v7 = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22EF07BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OVM::AssertKeys(void *a1, uint64_t **a2)
{
  v14 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2318FB7B0](exception, "Expected a dictionary");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = a2[1];
  if (v3)
  {
    v4 = *a2;
    v5 = 24 * v3;
    do
    {
      v6 = [MEMORY[0x277CCACA8] stringWithCXXString:v4];
      v7 = [v14 objectForKeyedSubscript:v6];

      if (!v7)
      {
        v8 = __cxa_allocate_exception(0x10uLL);
        v10 = v4;
        v11 = v8;
        v12 = v10;
        if (*(v10 + 23) < 0)
        {
          v12 = *v10;
        }

        StringUtil::Format(v15, "Missing mandatory key %s", v9, v12);
        MEMORY[0x2318FB7C0](v11, v15);
        __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v4 += 3;
      v5 -= 24;
    }

    while (v5);
  }
}

void sub_22EF07D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __cxa_free_exception(v17);

  _Unwind_Resume(a1);
}

uint64_t std::vector<OVM::Param>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<OVM::Param>::__emplace_back_slow_path<OVM::Param>(a1, a2);
  }

  else
  {
    std::vector<OVM::Param>::__construct_one_at_end[abi:ne200100]<OVM::Param>(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

void OVM::DeserializeExpressions(const void **__return_ptr a1@<X8>, OVM *this@<X0>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = this;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  memset(v5, 0, sizeof(v5));
  v4 = v3;
  if ([(OVM *)v4 countByEnumeratingWithState:v5 objects:v6 count:16])
  {
    OVM::DeserializeExprsesion(**(&v5[0] + 1));
  }
}

void sub_22EF07FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<OVM::Subroutine>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2843B5CB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318FB870);
}

void std::__shared_ptr_emplace<OVM::Subroutine>::__on_zero_shared(uint64_t a1)
{
  v1 = (a1 + 24);
  v2 = (a1 + 48);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<OVM::Param>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<OVM::Param>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<OVM::Param>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<OVM::Param>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void std::vector<OVM::Param>::__construct_one_at_end[abi:ne200100]<OVM::Param>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  v4 = (v3 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  *(a1 + 8) = v3 + 32;
}

uint64_t std::vector<OVM::Param>::__emplace_back_slow_path<OVM::Param>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
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

  v20 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OVM::Param>>(a1, v7);
  }

  v8 = 32 * v2;
  v17 = 0;
  v18 = 32 * v2;
  v19 = (32 * v2);
  *(32 * v2) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((32 * v2 + 8), *(a2 + 8), *(a2 + 16));
    v8 = v18;
    v10 = v19;
  }

  else
  {
    v9 = *(a2 + 8);
    *(32 * v2 + 0x18) = *(a2 + 24);
    *(32 * v2 + 8) = v9;
    v10 = 32 * v2;
  }

  *&v19 = v10 + 32;
  v11 = a1[1];
  v12 = v8 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OVM::Param>,OVM::Param*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<OVM::Param>::~__split_buffer(&v17);
  return v16;
}

void sub_22EF08300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<OVM::Param>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<OVM::Param>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OVM::Param>,OVM::Param*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *a4 = *(v6 - 2);
      v8 = (a4 + 8);
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v6, *(v6 + 1));
        a4 = v14;
      }

      else
      {
        v9 = *v6;
        *(a4 + 24) = *(v6 + 2);
        *&v8->__r_.__value_.__l.__data_ = v9;
      }

      a4 += 32;
      v14 = a4;
      v6 += 2;
    }

    while (v7 + 32 != a3);
    v12 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<OVM::Param>,OVM::Param*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<OVM::Param>,OVM::Param*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<OVM::Param>,OVM::Param*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<OVM::Param>,OVM::Param*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 32;
  }
}

uint64_t std::__split_buffer<OVM::Param>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<OVM::Param>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<OVM::Param>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t OVM::TypeInfo::ToType(uint64_t this)
{
  if ((this - 1) > 3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v2 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v2, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return this;
}

void OVM::DeserializeExprsesion(OVM *this)
{
  v67[3] = *MEMORY[0x277D85DE8];
  v2 = this;
  std::string::basic_string[abi:ne200100]<0>(__p, "etype");
  v60[0] = __p;
  v60[1] = 1;
  OVM::AssertKeys(v2, v60);
  if (SHIBYTE(v64) < 0)
  {
    operator delete(__p[0]);
  }

  v3 = [(OVM *)v2 objectForKeyedSubscript:@"etype"];
  v4 = OVM::Expression::ToKind([v3 intValue]);

  switch(v4)
  {
    case 1:
      v37 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "varName");
      v60[0] = __p;
      v60[1] = 1;
      OVM::AssertKeys(v37, v60);
      if (SHIBYTE(v64) < 0)
      {
        operator delete(__p[0]);
      }

      v38 = [(OVM *)v37 objectForKeyedSubscript:@"varName"];
      if (v38)
      {
        objc_msgSend_asCXXString(v38);
      }

      else
      {
        __p[0] = 0;
        __p[1] = 0;
        v64 = 0;
      }

      operator new();
    case 2:
      v20 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "receiver");
      std::string::basic_string[abi:ne200100]<0>(v65, "parameters");
      std::string::basic_string[abi:ne200100]<0>(v66, "selector");
      std::string::basic_string[abi:ne200100]<0>(v67, "returntype");
      v60[0] = __p;
      v60[1] = 4;
      OVM::AssertKeys(v20, v60);
      v21 = 0;
      while (1)
      {
        if (SHIBYTE(v67[v21 + 2]) < 0)
        {
          operator delete(v67[v21]);
        }

        v21 -= 3;
        if (v21 == -12)
        {
          v22 = [(OVM *)v20 objectForKeyedSubscript:@"receiver"];
          OVM::DeserializeExprsesion(&v57, v22);
          v23 = [(OVM *)v20 objectForKeyedSubscript:@"parameters"];
          OVM::DeserializeExpressions(__p, v23);
          v24 = [(OVM *)v20 objectForKeyedSubscript:@"selector"];
          if (v24)
          {
            objc_msgSend_asCXXString(v24);
          }

          else
          {
            v60[0] = 0;
            v60[1] = 0;
            v61 = 0;
          }

          [(OVM *)v20 objectForKeyedSubscript:@"returntype"];
          v56 = [objc_claimAutoreleasedReturnValue() intValue];
          LODWORD(v62) = OVM::TypeInfo::ToType(v56);
          [(OVM *)v20 objectForKeyedSubscript:@"isVariadic"];
          LODWORD(v59) = [objc_claimAutoreleasedReturnValue() unsignedIntValue];
          std::make_unique[abi:ne200100]<OVM::ObjCMessage,std::unique_ptr<OVM::Expression>,std::vector<std::unique_ptr<OVM::Expression>>,std::string,OVM::TypeInfo::Type,unsigned int,0>();
        }
      }

    case 3:
      v29 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "classname");
      v60[0] = __p;
      v60[1] = 1;
      OVM::AssertKeys(v29, v60);
      if (SHIBYTE(v64) < 0)
      {
        operator delete(__p[0]);
      }

      v30 = [(OVM *)v29 objectForKeyedSubscript:@"classname"];
      if (v30)
      {
        objc_msgSend_asCXXString(v30);
      }

      else
      {
        __p[0] = 0;
        __p[1] = 0;
        v64 = 0;
      }

      operator new();
    case 4:
      v14 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "funcName");
      std::string::basic_string[abi:ne200100]<0>(v65, "parameters");
      v60[0] = __p;
      v60[1] = 2;
      OVM::AssertKeys(v14, v60);
      v15 = 0;
      while (1)
      {
        if (SHIBYTE(v65[v15 + 2]) < 0)
        {
          operator delete(v65[v15]);
        }

        v15 -= 3;
        if (v15 == -6)
        {
          v16 = [(OVM *)v14 objectForKeyedSubscript:@"funcName"];
          if (v16)
          {
            objc_msgSend_asCXXString(v16);
          }

          else
          {
            __p[0] = 0;
            __p[1] = 0;
            v64 = 0;
          }

          v55 = [(OVM *)v14 objectForKeyedSubscript:@"parameters"];
          OVM::DeserializeExpressions(v60, v55);
          std::make_unique[abi:ne200100]<OVM::FunctionCall,std::string,std::vector<std::unique_ptr<OVM::Expression>>,0>();
        }
      }

    case 5:
      v39 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "expr");
      v60[0] = __p;
      v60[1] = 1;
      OVM::AssertKeys(v39, v60);
      if (SHIBYTE(v64) < 0)
      {
        operator delete(__p[0]);
      }

      v40 = [(OVM *)v39 objectForKeyedSubscript:@"expr"];
      OVM::DeserializeExprsesion(__p, v40);
      operator new();
    case 6:
      v43 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "condition");
      std::string::basic_string[abi:ne200100]<0>(v65, "ifBranch");
      std::string::basic_string[abi:ne200100]<0>(v66, "ifBranch");
      v60[0] = __p;
      v60[1] = 3;
      OVM::AssertKeys(v43, v60);
      v44 = 0;
      while (1)
      {
        if (SHIBYTE(v66[v44 + 2]) < 0)
        {
          operator delete(v66[v44]);
        }

        v44 -= 3;
        if (v44 == -9)
        {
          v45 = [(OVM *)v43 objectForKeyedSubscript:@"condition"];
          OVM::DeserializeExprsesion(&v59, v45);
          v46 = [(OVM *)v43 objectForKeyedSubscript:@"ifBranch"];
          OVM::DeserializeExpressions(&v58, v46);
          v47 = [(OVM *)v43 objectForKeyedSubscript:@"elseBranch"];
          OVM::DeserializeExpressions(&v57, v47);
          operator new();
        }
      }

    case 7:
      v31 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "body");
      std::string::basic_string[abi:ne200100]<0>(v65, "behavior");
      v60[0] = __p;
      v60[1] = 2;
      OVM::AssertKeys(v31, v60);
      for (i = 0; i != -6; i -= 3)
      {
        if (SHIBYTE(v65[i + 2]) < 0)
        {
          operator delete(v65[i]);
        }
      }

      v33 = [(OVM *)v31 objectForKeyedSubscript:@"init"];
      v34 = [(OVM *)v31 objectForKeyedSubscript:@"cond"];
      v35 = [(OVM *)v31 objectForKeyedSubscript:@"incr"];
      v36 = [(OVM *)v31 objectForKeyedSubscript:@"body"];
      if (v33)
      {
        OVM::DeserializeExprsesion(&v57, v33);
        if (v34)
        {
          goto LABEL_50;
        }
      }

      else
      {
        *&v57 = 0;
        if (v34)
        {
LABEL_50:
          OVM::DeserializeExprsesion(&v62, v34);
          if (v35)
          {
LABEL_51:
            OVM::DeserializeExprsesion(&v59, v35);
            goto LABEL_87;
          }

LABEL_86:
          v59 = 0;
LABEL_87:
          OVM::DeserializeExpressions(v60, v36);
          [(OVM *)v31 objectForKeyedSubscript:@"behavior"];
          [objc_claimAutoreleasedReturnValue() intValue];
          operator new();
        }
      }

      v62 = 0;
      if (v35)
      {
        goto LABEL_51;
      }

      goto LABEL_86;
    case 8:
      v53 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "value");
      v60[0] = __p;
      v60[1] = 1;
      OVM::AssertKeys(v53, v60);
      if (SHIBYTE(v64) < 0)
      {
        operator delete(__p[0]);
      }

      v54 = [(OVM *)v53 objectForKeyedSubscript:@"value"];
      if (v54)
      {
        objc_msgSend_asCXXString(v54);
      }

      else
      {
        __p[0] = 0;
        __p[1] = 0;
        v64 = 0;
      }

      operator new();
    case 9:
      v19 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "value");
      v60[0] = __p;
      v60[1] = 1;
      OVM::AssertKeys(v19, v60);
      if (SHIBYTE(v64) < 0)
      {
        operator delete(__p[0]);
      }

      [(OVM *)v19 objectForKeyedSubscript:@"value"];
      [objc_claimAutoreleasedReturnValue() longLongValue];
      operator new();
    case 10:
      v48 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "lhs");
      std::string::basic_string[abi:ne200100]<0>(v65, "rhs");
      std::string::basic_string[abi:ne200100]<0>(v66, "kind");
      std::string::basic_string[abi:ne200100]<0>(v67, "compound");
      v60[0] = __p;
      v60[1] = 4;
      OVM::AssertKeys(v48, v60);
      v49 = 0;
      while (1)
      {
        if (SHIBYTE(v67[v49 + 2]) < 0)
        {
          operator delete(v67[v49]);
        }

        v49 -= 3;
        if (v49 == -12)
        {
          v50 = [(OVM *)v48 objectForKeyedSubscript:@"lhs"];
          OVM::DeserializeExprsesion(__p, v50);
          v51 = [(OVM *)v48 objectForKeyedSubscript:@"rhs"];
          OVM::DeserializeExprsesion(v60, v51);
          [(OVM *)v48 objectForKeyedSubscript:@"kind"];
          v52 = [objc_claimAutoreleasedReturnValue() intValue];
          OVM::BinaryOperator::ToKind(v52);
          [(OVM *)v48 objectForKeyedSubscript:@"compound"];
          [objc_claimAutoreleasedReturnValue() BOOLValue];
          operator new();
        }
      }

    case 11:
      v10 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "rhs");
      std::string::basic_string[abi:ne200100]<0>(v65, "kind");
      v60[0] = __p;
      v60[1] = 2;
      OVM::AssertKeys(v10, v60);
      v11 = 0;
      while (1)
      {
        if (SHIBYTE(v65[v11 + 2]) < 0)
        {
          operator delete(v65[v11]);
        }

        v11 -= 3;
        if (v11 == -6)
        {
          v12 = [(OVM *)v10 objectForKeyedSubscript:@"rhs"];
          OVM::DeserializeExprsesion(__p, v12);
          [(OVM *)v10 objectForKeyedSubscript:@"kind"];
          v13 = [objc_claimAutoreleasedReturnValue() intValue];
          OVM::UnaryOperator::ToKind(v13);
          operator new();
        }
      }

    case 12:
      v17 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "keysAndValues");
      v60[0] = __p;
      v60[1] = 1;
      OVM::AssertKeys(v17, v60);
      if (SHIBYTE(v64) < 0)
      {
        operator delete(__p[0]);
      }

      v18 = [(OVM *)v17 objectForKeyedSubscript:@"keysAndValues"];
      OVM::DeserializeExpressions(__p, v18);
      operator new();
    case 13:
      v41 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "values");
      v60[0] = __p;
      v60[1] = 1;
      OVM::AssertKeys(v41, v60);
      if (SHIBYTE(v64) < 0)
      {
        operator delete(__p[0]);
      }

      v42 = [(OVM *)v41 objectForKeyedSubscript:@"values"];
      OVM::DeserializeExpressions(__p, v42);
      operator new();
    case 14:
      operator new();
    case 15:
      v25 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "exprs");
      std::string::basic_string[abi:ne200100]<0>(v65, "retVal");
      v60[0] = __p;
      v60[1] = 2;
      OVM::AssertKeys(v25, v60);
      v26 = 0;
      while (1)
      {
        if (SHIBYTE(v65[v26 + 2]) < 0)
        {
          operator delete(v65[v26]);
        }

        v26 -= 3;
        if (v26 == -6)
        {
          v27 = [(OVM *)v25 objectForKeyedSubscript:@"exprs"];
          OVM::DeserializeExpressions(v60, v27);
          v28 = [(OVM *)v25 objectForKeyedSubscript:@"retVal"];
          OVM::DeserializeExprsesion(&v57, v28);
          operator new();
        }
      }

    default:
      v5 = v2;
      std::string::basic_string[abi:ne200100]<0>(__p, "type");
      std::string::basic_string[abi:ne200100]<0>(v65, "name");
      v60[0] = __p;
      v60[1] = 2;
      OVM::AssertKeys(v5, v60);
      for (j = 0; j != -6; j -= 3)
      {
        if (SHIBYTE(v65[j + 2]) < 0)
        {
          operator delete(v65[j]);
        }
      }

      v7 = [(OVM *)v5 objectForKeyedSubscript:@"initializer"];
      [(OVM *)v5 objectForKeyedSubscript:@"type"];
      v8 = [objc_claimAutoreleasedReturnValue() intValue];
      OVM::TypeInfo::ToType(v8);
      v9 = [(OVM *)v5 objectForKeyedSubscript:@"name"];
      if (v9)
      {
        objc_msgSend_asCXXString(v9);
        if (v7)
        {
LABEL_10:
          OVM::DeserializeExprsesion(v60, v7);
          goto LABEL_90;
        }
      }

      else
      {
        __p[0] = 0;
        __p[1] = 0;
        v64 = 0;
        if (v7)
        {
          goto LABEL_10;
        }
      }

      v60[0] = 0;
LABEL_90:
      operator new();
  }
}

void sub_22EF098F0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (v35)
  {
    OVM::DeserializeExprsesion();
  }

  MEMORY[0x2318FB870](v34, 0x10B3C40558ED239, a3, a4, a5, a6, a7, a8);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::unique_ptr<OVM::Expression>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<OVM::Expression>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<OVM::Expression>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
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

uint64_t OVM::Expression::ToKind(uint64_t this)
{
  if (this > 0xF)
  {
    exception = __cxa_allocate_exception(8uLL);
    v2 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v2, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return this;
}

void OVM::Declaration::~Declaration(OVM::Declaration *this)
{
  *this = &unk_2843B5D08;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  *this = &unk_2843B5D08;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  JUMPOUT(0x2318FB870);
}

void OVM::Value::~Value(void **this)
{
  *this = &unk_2843B5D50;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_2843B5D50;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x2318FB870);
}

void sub_22EF0A674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::make_unique[abi:ne200100]<OVM::ObjCMessage,std::unique_ptr<OVM::Expression>,std::vector<std::unique_ptr<OVM::Expression>>,std::string,OVM::TypeInfo::Type,unsigned int,0>(&a16, &a20);
  MEMORY[0x2318FB870](v21, v20);
  _Unwind_Resume(a1);
}

uint64_t OVM::ObjCMessage::ObjCMessage(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4, int a5, int a6)
{
  *(a1 + 8) = 2;
  *a1 = &unk_2843B5D88;
  v8 = *a2;
  *a2 = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *a3;
  *(a1 + 40) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a1 + 48) = a5;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 72) = *(a4 + 2);
    *(a1 + 56) = v9;
  }

  *(a1 + 80) = a6;
  return a1;
}

void sub_22EF0A764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](va);
  v5 = *(v3 + 16);
  *(v3 + 16) = 0;
  if (v5)
  {
    OVM::DeserializeExprsesion();
  }

  _Unwind_Resume(a1);
}

void OVM::ObjCMessage::~ObjCMessage(void **this)
{
  *this = &unk_2843B5D88;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  v3 = this + 3;
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = this[2];
  this[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_2843B5D88;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  v3 = this + 3;
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = this[2];
  this[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  MEMORY[0x2318FB870](this, 0x10B3C40DFF08849);
}

void OVM::ObjCClass::~ObjCClass(void **this)
{
  *this = &unk_2843B5DC0;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_2843B5DC0;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x2318FB870);
}

void sub_22EF0AA50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x2318FB870](v20, v19);
  _Unwind_Resume(a1);
}

uint64_t OVM::FunctionCall::FunctionCall(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *(a1 + 8) = 4;
  *a1 = &unk_2843B5DF8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = *a3;
  *(a1 + 32) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 56) = *(a2 + 2);
    *(a1 + 40) = v4;
  }

  return a1;
}

void sub_22EF0AB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void OVM::FunctionCall::~FunctionCall(void **this)
{
  *this = &unk_2843B5DF8;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  v2 = this + 2;
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_2843B5DF8;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  v2 = this + 2;
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x2318FB870](this, 0x10B3C406AA0CD03);
}

void OVM::StringLiteral::~StringLiteral(void **this)
{
  *this = &unk_2843B5E30;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_2843B5E30;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x2318FB870);
}

void OVM::Conditional::~Conditional(OVM::Conditional *this)
{
  *this = &unk_2843B5E68;
  v3 = (this + 48);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 24);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_2843B5E68;
  v3 = (this + 48);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 24);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  MEMORY[0x2318FB870](this, 0x10A1C402F18DB2ELL);
}

uint64_t OVM::BinaryOperator::ToKind(uint64_t this)
{
  if (this > 0x11)
  {
    exception = __cxa_allocate_exception(8uLL);
    v2 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v2, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return this;
}

void OVM::BinaryOperator::~BinaryOperator(OVM::BinaryOperator *this)
{
  *this = &unk_2843B5ED8;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  *this = &unk_2843B5ED8;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x2318FB870);
}

uint64_t OVM::UnaryOperator::ToKind(uint64_t this)
{
  if (this > 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v2 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v2, MEMORY[0x277D82780], MEMORY[0x277D826D8]);
  }

  return this;
}

void OVM::UnaryOperator::~UnaryOperator(OVM::UnaryOperator *this)
{
  *this = &unk_2843B5F10;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_2843B5F10;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x2318FB870);
}

void OVM::Return::~Return(OVM::Return *this)
{
  *this = &unk_2843B5F48;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_2843B5F48;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x2318FB870);
}

void OVM::Loop::~Loop(OVM::Loop *this)
{
  *this = &unk_2843B5F80;
  v5 = (this + 40);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

{
  *this = &unk_2843B5F80;
  v5 = (this + 40);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  MEMORY[0x2318FB870](this, 0x10A1C407AE6A5FBLL);
}

void OVM::DictionaryLiteral::~DictionaryLiteral(OVM::DictionaryLiteral *this)
{
  *this = &unk_2843B5FB8;
  v1 = (this + 16);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_2843B5FB8;
  v2 = (this + 16);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x2318FB870](this, 0x10A1C4037ACD87BLL);
}

void OVM::ArrayLiteral::~ArrayLiteral(OVM::ArrayLiteral *this)
{
  *this = &unk_2843B5FF0;
  v1 = (this + 16);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_2843B5FF0;
  v2 = (this + 16);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x2318FB870](this, 0x10A1C4037ACD87BLL);
}

void OVM::CompoundExpression::~CompoundExpression(OVM::CompoundExpression *this)
{
  *this = &unk_2843B6060;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = (this + 16);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

{
  *this = &unk_2843B6060;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = (this + 16);
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v3);
  MEMORY[0x2318FB870](this, 0x10A1C409BA56AB0);
}

void std::vector<std::unique_ptr<OVM::Expression>>::__vdeallocate(void **a1)
{
  if (*a1)
  {
    std::vector<std::unique_ptr<OVM::Expression>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *std::vector<std::unique_ptr<OVM::Expression>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<OVM::Expression>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<OVM::Script>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2843B6098;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318FB870);
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Subroutine const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, _OWORD **a4)
{
  v4 = *std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Var>>>>::__find_equal<std::string>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void sub_22EF0E2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22EF0F36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EF0FB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SelectByNameCmd(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = malloc_type_calloc(v2 + 6, 1uLL, 0x4FE168A1uLL);
  *v3 = 304128;
  v3[4] = [v1 length];
  v4 = [v1 bytes];
  v5 = [v1 length];

  memcpy(v3 + 5, v4, v5);
  v6 = MEMORY[0x277CBEA90];

  return [v6 dataWithBytesNoCopy:v3 length:v2 + 6 freeWhenDone:1];
}

id EndOfTransactionCmd(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v3 length];
  v6 = v5 + [v4 length];
  v7 = malloc_type_calloc(v6 + 7, 1uLL, 0x93AF27CAuLL);
  v8 = [v4 length] + 6;
  *v7 = 44672;
  v7[4] = 0;
  v7[4] = v5 + [v4 length] + 2;
  v7[5] = [v4 length];
  v9 = [v4 bytes];
  v10 = [v4 length];

  memcpy(v7 + 6, v9, v10);
  v11 = &v7[v8];
  *v11 = v5;
  if ([v3 length])
  {
    memcpy(v11 + 1, [v3 bytes], objc_msgSend(v3, "length"));
  }

  v12 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v7 length:v6 + 7 freeWhenDone:1];

  return v12;
}

uint64_t GetSW(void *a1)
{
  v1 = a1;
  if ([v1 length] < 2)
  {
    U16BE = 0;
  }

  else
  {
    U16BE = ReadU16BE(([v1 bytes] + objc_msgSend(v1, "length") - 2));
  }

  return U16BE;
}

id Find(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

id Filter(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          [v5 addObject:{v11, v13}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

void *CircularBufferInit(void *a1, size_t a2)
{
  bzero(a1, a2);
  a1[2] = a1 + a2;
  a1[3] = a2 - 32;
  *a1 = a1 + 4;
  return a1;
}

void *CircularBufferAdd(const void **a1, uint64_t a2, unsigned int a3)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = a2;
  v4[1] = a3;
  return CircularBufferAddScattered(a1, v4, 1);
}

void *CircularBufferAddScattered(const void **a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = 0;
  if (a3)
  {
    v7 = (a2 + 8);
    v8 = a3;
    do
    {
      v9 = *v7;
      v7 += 8;
      v6 += v9;
      --v8;
    }

    while (v8);
  }

  __src = v6;
  v10 = v6;
  v11 = v6 + 2;
  if (a1[2] - (a1 + 4) <= v11)
  {
    CircularBufferAddScattered_cold_1();
  }

  v12 = a1[1];
  if (!v12)
  {
    v12 = *a1;
    a1[1] = *a1;
  }

  __dst = 0;
  for (i = a1[3]; i < v11; a1[3] = i)
  {
    ReadCircular(a1, v12, &__dst, 2uLL);
    v14 = __dst;
    v15 = a1[2];
    v16 = a1[1] + __dst + 2;
    if (v16 <= v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = a1 - v15 + 32;
    }

    v12 = &v17[v16];
    a1[1] = &v17[v16];
    i = a1[3] + v14 + 2;
  }

  result = CircularWrite(a1, &__src, 2uLL);
  if (v3)
  {
    v19 = (a2 + 8);
    do
    {
      result = CircularWrite(a1, *(v19 - 1), *v19);
      v19 += 2;
      --v3;
    }

    while (v3);
  }

  a1[3] = a1[3] - v10 - 2;
  return result;
}

void *ReadCircular(uint64_t a1, const void *a2, char *__dst, size_t __n)
{
  v6 = *(a1 + 16);
  if (a2 + __n <= v6)
  {
    v10 = __dst;
    v9 = __n;
  }

  else
  {
    v7 = v6 - a2;
    if ((v6 - a2) < 0)
    {
      ReadCircular_cold_1();
    }

    memcpy(__dst, a2, v6 - a2);
    v9 = __n - v7;
    v10 = &__dst[v7];
    a2 = (a1 + 32);
  }

  return memcpy(v10, a2, v9);
}

void *CircularWrite(uint64_t a1, char *__src, size_t __n)
{
  v6 = *a1;
  v7 = *(a1 + 16);
  if (v6 + __n <= v7)
  {
    result = memcpy(v6, __src, __n);
    v11 = *a1 + __n;
  }

  else
  {
    v8 = v7 - v6;
    if ((v7 - v6) < 0)
    {
      CircularWrite_cold_1();
    }

    memcpy(v6, __src, v7 - v6);
    v9 = __n - v8;
    result = memcpy((a1 + 32), &__src[v8], v9);
    v11 = a1 + 32 + v9;
  }

  *a1 = v11;
  return result;
}

void CircularBufferDump(char **a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    LOWORD(v5) = 0;
    __dst = 0;
    v6 = (a1 + 4);
    do
    {
      ReadCircular(a1, v2, &__dst, 2uLL);
      if (v5 <= __dst)
      {
        v5 = __dst;
      }

      else
      {
        v5 = v5;
      }

      v7 = &v2[__dst + 2];
      v8 = a1[2];
      if (v7 <= v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = v6 - v8;
      }

      v2 = (v7 + v9);
    }

    while ((v7 + v9) != *a1);
    v10 = malloc_type_malloc(v5, 0x100004077774924uLL);
    if (v10)
    {
      v11 = v10;
      bzero(v10, v5);
      v12 = a1[1];
      do
      {
        ReadCircular(a1, v12, &__dst, 2uLL);
        v13 = v12 + 2;
        v14 = a1[2];
        if (v12 + 2 <= v14)
        {
          v15 = 0;
        }

        else
        {
          v15 = v6 - v14;
        }

        v16 = &v13[v15];
        ReadCircular(a1, &v13[v15], v11, __dst);
        v17 = &v16[__dst];
        v18 = a1[2];
        if (v17 <= v18)
        {
          v19 = 0;
        }

        else
        {
          v19 = v6 - v18;
        }

        v12 = (v17 + v19);
        (*(a2 + 16))(a2);
      }

      while (v12 != *a1);
      free(v11);
    }
  }
}

__CFString *DecodeTransactionDetail(unsigned __int8 *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = (*a1 << 16) | (a1[1] << 8) | a1[2];
  if (v2 < 0x20000)
  {
    if (v2 <= 66559)
    {
      if (v2 > 66303)
      {
        switch(v2)
        {
          case 66304:
            return @"TransitTrain";
          case 66305:
            return @"TransitTrainMaglev";
          case 66306:
            return @"TransitTrainShinkansen";
        }
      }

      else
      {
        switch(v2)
        {
          case 65536:
            return @"Transit";
          case 65792:
            return @"TransitMetro";
          case 66048:
            return @"TransitBus";
        }
      }
    }

    else
    {
      if (v2 <= 66562)
      {
        if (v2 == 66560)
        {
          return @"TransitOther";
        }

        if (v2 == 66561)
        {
          return @"TransitOtherTaxi";
        }

        return @"TransitOtherFerry";
      }

      if (v2 > 66816)
      {
        if (v2 == 66817)
        {
          return @"TransitSpecialGreenCarUsed";
        }

        if (v2 == 66818)
        {
          return @"TransitSpecialGreenCarSeated";
        }
      }

      else
      {
        if (v2 == 66563)
        {
          return @"TransitOtherBike";
        }

        if (v2 == 66816)
        {
          return @"TransitSpecial";
        }
      }
    }
  }

  else if (v2 > 131839)
  {
    if (v2 < 196608)
    {
      switch(v2)
      {
        case 131840:
          return @"PurchaseRefund";
        case 131841:
          return @"PurchaseRefundReturn";
        case 131842:
          return @"PurchaseRefundCancellation";
      }
    }

    else if (v2 > 197119)
    {
      if (v2 == 197120)
      {
        return @"TopUpServer";
      }

      if (v2 == 0x40000)
      {
        return @"CardRead";
      }
    }

    else
    {
      if (v2 == 196608)
      {
        return @"TopUp";
      }

      if (v2 == 196864)
      {
        return @"TopUpContactless";
      }
    }
  }

  else if (v2 <= 131329)
  {
    switch(v2)
    {
      case 131072:
        return @"Purchase";
      case 131328:
        return @"PurchaseRetail";
      case 131329:
        return @"PurchaseRetailMerchant";
    }
  }

  else if (v2 > 131584)
  {
    if (v2 == 131585)
    {
      return @"PurchaseAdmissionParking";
    }

    if (v2 == 131586)
    {
      return @"PurchaseAdmissionGarden";
    }
  }

  else
  {
    if (v2 == 131330)
    {
      return @"PurchaseRetailGasStation";
    }

    if (v2 == 131584)
    {
      return @"PurchaseAdmission";
    }
  }

  v4 = ATLLogObject(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    v6 = a1[1];
    v7 = a1[2];
    v8[0] = 67109632;
    v8[1] = v5;
    v9 = 1024;
    v10 = v6;
    v11 = 1024;
    v12 = v7;
    _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_ERROR, "Bogus transaction type 0x%X | 0x%X | 0x%X, returning unknown", v8, 0x14u);
  }

  return @"Unknown";
}

uint64_t DecodeBCD(const unsigned __int8 *a1, uint64_t a2)
{
  for (i = 0; a2; --a2)
  {
    v3 = *a1++;
    i = (v3 & 0xF) + 100 * i + 10 * (v3 >> 4);
  }

  return i;
}

uint64_t DecodeBCD(const DERItem *a1)
{
  length = a1->length;
  if (!length)
  {
    return 0;
  }

  result = 0;
  data = a1->data;
  do
  {
    v5 = *data++;
    result = (v5 & 0xF) + 100 * result + 10 * (v5 >> 4);
    --length;
  }

  while (length);
  return result;
}

uint64_t DecodeBCD(char *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  result = 0;
  v5 = &a1[a2];
  do
  {
    v6 = *v5++;
    result = (v6 & 0xF) + 100 * result + 10 * (v6 >> 4);
    --a3;
  }

  while (a3);
  return result;
}

uint64_t EncodeBCD(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  v3 = a2;
  do
  {
    v4 = *a1++;
    v2 = v4 | (v2 << 8);
    --v3;
  }

  while (v3);
  result = 0;
  do
  {
    result += ((v2 % 0x64 % 0xA) | (16 * (v2 % 0x64 / 0xA))) << v3;
    v3 += 8;
    v2 /= 0x64uLL;
    --a2;
  }

  while (a2);
  return result;
}

dispatch_time_t OUTLINED_FUNCTION_0_0(double a1, double a2)
{

  return dispatch_time(0, (a1 * a2));
}

void sub_22EF49BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v30 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22EF49EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEFAULT, a4, a5, 2u);
}

BOOL OUTLINED_FUNCTION_5(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void OUTLINED_FUNCTION_6(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  _os_log_impl(a1, v14, OS_LOG_TYPE_DEFAULT, a4, va, 0x16u);
}

id FelicaGetDataFileSystemCommand(__int16 a1, __int16 a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = 0x5FE07070000C280;
  v5 = a1;
  v6 = a2;
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:&v4 length:12];

  return v2;
}

id FeliCaGetBlockDataFromGetDataCommand(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 length];
  if (v2 != 21)
  {
    v8 = ATLLogObject(v2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 67109120;
      v13 = [v1 length];
      _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_DEFAULT, "GET DATA response length if unexpected: %u", &v12, 8u);
    }

    goto LABEL_13;
  }

  v3 = [v1 bytes];
  v4 = v3;
  if (*(v3 + 3))
  {
    v5 = ATLLogObject(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(v4 + 3);
      v12 = 67109120;
      v13 = v6;
      v7 = "GET DATA response returned an unexpected Status Flag 1 %d";
LABEL_11:
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_DEFAULT, v7, &v12, 8u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (*(v3 + 4))
  {
    v5 = ATLLogObject(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v4 + 4);
      v12 = 67109120;
      v13 = v9;
      v7 = "GET DATA response returned an unexpected Status Flag 2 %d";
      goto LABEL_11;
    }

LABEL_12:

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v10 = [MEMORY[0x277CBEA90] dataWithBytes:v3 + 5 length:16];
LABEL_14:

  return v10;
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1)
{

  return objc_opt_isKindOfClass();
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return [v17 countByEnumeratingWithState:&a9 objects:va count:{16, a6, a7, a8}];
}

void sub_22EF5CA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v12 = v11;

  caulk::__expected_detail::base<std::shared_ptr<OVM::Script>,OVM::Error>::~base(va);
  _Unwind_Resume(a1);
}

uint64_t caulk::expected<std::shared_ptr<OVM::Script>,OVM::Error>::value(uint64_t result)
{
  v1 = result;
  if ((*(result + 24) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    memset(v3, 0, 24);
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v3, *v1, v1[1], 0xAAAAAAAAAAAAAAABLL * ((v1[1] - *v1) >> 3));
    caulk::bad_expected_access<OVM::Error>::bad_expected_access(exception, v3);
  }

  return result;
}

void sub_22EF5CB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_22EF5D22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if ((*(v53 - 200) & 1) == 0)
  {
    a41 = (v53 - 224);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a41);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22EF5DB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if ((*(v54 - 224) & 1) == 0)
  {
    a41 = (v54 - 248);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a41);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22EF5E374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if ((*(v53 - 200) & 1) == 0)
  {
    a41 = (v53 - 224);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a41);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22EF5EBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if ((*(v53 - 200) & 1) == 0)
  {
    a41 = (v53 - 224);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a41);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22EF5F430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, char a51)
{
  v60 = v58;

  if ((a51 & 1) == 0)
  {
    a41 = &a48;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a41);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22EF5FC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if ((*(v23 - 184) & 1) == 0)
  {
    *(v23 - 240) = v23 - 208;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v23 - 240));
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22EF60810(_Unwind_Exception *a1)
{
  v5 = (v3 + 2663);
  v6 = -2688;
  v7 = v5;
  while (1)
  {
    v8 = *v7;
    v7 -= 48;
    if (v8 < 0)
    {
      operator delete(*(v5 - 23));
    }

    v5 = v7;
    v6 += 48;
    if (!v6)
    {
      MEMORY[0x2318FB870](v2, v1);
      _Unwind_Resume(a1);
    }
  }
}

void sub_22EF60F30(_Unwind_Exception *a1)
{
  v5 = (v3 + 1559);
  v6 = -1560;
  v7 = v5;
  while (1)
  {
    v8 = *v7;
    v7 -= 24;
    if (v8 < 0)
    {
      operator delete(*(v5 - 23));
    }

    v5 = v7;
    v6 += 24;
    if (!v6)
    {
      MEMORY[0x2318FB870](v2, v1);
      _Unwind_Resume(a1);
    }
  }
}

std::string *ctu::join<std::__wrap_iter<std::string const*>>@<X0>(std::string *__return_ptr a1@<X8>, std::string *__str@<X0>, std::string *a3@<X1>, const void *a4@<X2>, size_t a5@<X3>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  if (__str != a3)
  {
    v8 = __str;
    __str = std::string::operator=(a1, __str);
    for (i = v8 + 1; i != a3; ++i)
    {
      if (a4)
      {
        if (a5 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (a5 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v21) = a5;
        if (a5)
        {
          memmove(&__dst, a4, a5);
        }

        *(&__dst + a5) = 0;
        v13 = HIBYTE(v21);
        v12 = __dst;
        v11 = v20;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        __dst = 0;
        v20 = 0;
        v21 = 0;
      }

      if ((v13 & 0x80u) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = v12;
      }

      if ((v13 & 0x80u) == 0)
      {
        v15 = v13;
      }

      else
      {
        v15 = v11;
      }

      std::string::append(a1, p_dst, v15);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__dst);
      }

      v16 = SHIBYTE(i->__r_.__value_.__r.__words[2]);
      if (v16 >= 0)
      {
        v17 = i;
      }

      else
      {
        v17 = i->__r_.__value_.__r.__words[0];
      }

      if (v16 >= 0)
      {
        size = HIBYTE(i->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = i->__r_.__value_.__l.__size_;
      }

      __str = std::string::append(a1, v17, size);
    }
  }

  return __str;
}

void sub_22EF6125C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void caulk::bad_expected_access<OVM::Error>::~bad_expected_access(std::exception *a1)
{
  a1->__vftable = &unk_2843B6658;
  v2 = a1 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::exception::~exception(a1);
}

uint64_t *std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22EF61360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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

void *caulk::bad_expected_access<OVM::Error>::bad_expected_access(void *a1, void *a2)
{
  *a1 = &unk_2843B6658;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  return a1;
}

uint64_t caulk::bad_expected_access<OVM::Error>::~bad_expected_access(std::exception *a1)
{
  a1->__vftable = &unk_2843B6658;
  v3 = a1 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::exception::~exception(a1);
  return MEMORY[0x2318FB870]();
}

uint64_t caulk::__expected_detail::base<std::shared_ptr<OVM::Script>,OVM::Error>::~base(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  else
  {
    v4 = a1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  return a1;
}

uint64_t *std::vector<OVM::Var>::__init_with_size[abi:ne200100]<OVM::Var const*,OVM::Var const*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<OVM::Var>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22EF615E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<OVM::Var>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OVM::Var>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

uint64_t **std::map<std::string,OVM::Var>::map[abi:ne200100](uint64_t **a1, char *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,OVM::Var>,std::__map_value_compare<std::string,std::__value_type<std::string,OVM::Var>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,OVM::Var>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,OVM::Var> const&>(a1, v4, a2, a2);
      a2 += 48;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,OVM::Var>,std::__map_value_compare<std::string,std::__value_type<std::string,OVM::Var>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,OVM::Var>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,OVM::Var> const&>(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  result = *std::__tree<std::__value_type<std::string,OVM::Var>,std::__map_value_compare<std::string,std::__value_type<std::string,OVM::Var>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,OVM::Var>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,OVM::Var>,std::__map_value_compare<std::string,std::__value_type<std::string,OVM::Var>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,OVM::Var>>>::__construct_node<std::pair<std::string const,OVM::Var> const&>();
  }

  return result;
}

char *std::__tree<std::__value_type<std::string,OVM::Var>,std::__map_value_compare<std::string,std::__value_type<std::string,OVM::Var>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,OVM::Var>>>::__find_equal<std::string>(uint64_t **a1, uint64_t *a2, char **a3, uint64_t *a4, char *a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, a2 + 32) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2];
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12 + 4, a5) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 4, a5) & 0x80) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = a2 + 1;
  v13 = a2[1];
  if (v13)
  {
    v14 = a2[1];
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, v15 + 32) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return std::__tree<std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<OVM::Var>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<OVM::Var>>>>::__find_equal<std::string>(a1, a3, a5);
}

void sub_22EF619DC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,OVM::Var>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,OVM::Var>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__tree<std::__value_type<std::string,OVM::Var>,std::__map_value_compare<std::string,std::__value_type<std::string,OVM::Var>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,OVM::Var>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,OVM::Var>,std::__map_value_compare<std::string,std::__value_type<std::string,OVM::Var>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,OVM::Var>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,OVM::Var>,std::__map_value_compare<std::string,std::__value_type<std::string,OVM::Var>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,OVM::Var>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t **std::set<std::string>::set[abi:ne200100](uint64_t **a1, char *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(a1, v4, a2, a2);
      a2 += 24;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

void *std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  result = *std::__tree<std::__value_type<std::string,OVM::Var>,std::__map_value_compare<std::string,std::__value_type<std::string,OVM::Var>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,OVM::Var>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

void sub_22EF61C5C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,OVM::Var>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AllowlistClassChecker>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2843B6680;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318FB870);
}

id ATLLogObject(uint64_t a1)
{
  if (ATLLogObject_onceToken != -1)
  {
    ATLLogObject_cold_1();
  }

  v2 = ATLLogObject_logObject;

  return v2;
}

uint64_t __ATLLogObject_block_invoke()
{
  ATLLogObject_logObject = os_log_create("com.apple.nfc", "atl");

  return MEMORY[0x2821F96F8]();
}

void LogBinary(os_log_type_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36 = *MEMORY[0x277D85DE8];
  v14 = a6;
  v15 = MEMORY[0x277CCAB68];
  v31 = v14;
  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v14 arguments:&a9];
  v17 = [v15 stringWithFormat:@"%s/%d : %@", a2, a3, v16];

  v18 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:a4 length:a5 freeWhenDone:0];
  v19 = [v17 length];
  v20 = [v18 length];
  v21 = v19 + v20 + 1;
  v22 = ATLLogObject(v20);
  v23 = os_log_type_enabled(v22, a1);
  if (v21 > 0x1FF)
  {
    if (v23)
    {
      *buf = 138412290;
      v33 = v17;
      _os_log_impl(&dword_22EEF5000, v22, a1, "%@", buf, 0xCu);
    }

    if ([v18 length])
    {
      v25 = 0;
      v26 = 0;
      do
      {
        if (([v18 length] + v25) > 0x1FF)
        {
          v27 = 512;
        }

        else
        {
          v27 = [v18 length] + v25;
        }

        v28 = [v18 subdataWithRange:{v26, v27}];
        v29 = ATLLogObject(v28);
        if (os_log_type_enabled(v29, a1))
        {
          v30 = [v28 base64EncodedStringWithOptions:0];
          *buf = 138412290;
          v33 = v30;
          _os_log_impl(&dword_22EEF5000, v29, a1, "%@", buf, 0xCu);
        }

        v26 += 512;
        v25 -= 512;
      }

      while (v26 < [v18 length]);
    }
  }

  else
  {
    if (v23)
    {
      v24 = [v18 base64EncodedStringWithOptions:0];
      *buf = 138412546;
      v33 = v17;
      v34 = 2112;
      v35 = v24;
      _os_log_impl(&dword_22EEF5000, v22, a1, "%@ %@", buf, 0x16u);
    }
  }
}

uint64_t DERParseSequenceSpec(uint64_t *a1, uint64_t a2, char *a3, size_t a4)
{
  v8 = objc_alloc_init(DERLogContext);
  v9 = *(a2 + 16);
  v10 = *(a2 + 8);
  if (*(a2 + 18) == 1)
  {
    v11 = DERParseUnsortedSequenceC(a1, v9, v10, a3, a4, *(a2 + 19));
  }

  else
  {
    v11 = DERParseSequenceC(a1, v9, v10, a3, a4);
  }

  v14 = v11;
  if (v11)
  {
    LogBinary(OS_LOG_TYPE_ERROR, "DERParseSequenceSpec", 37, *a1, a1[1], @"parse %s failed with %d", v12, v13, *a2);
    v15 = ATLLogObject([(DERLogContext *)v8 dumpLogs]);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v15, OS_LOG_TYPE_ERROR, "------ END OF DER DUMP -----", buf, 2u);
    }
  }

  return v14;
}

uint64_t DERParseSequenceSpec(void *a1, uint64_t a2, char *a3, size_t a4)
{
  v7 = a1;
  v8 = [v7 length];

  v10[1] = v8;
  return DERParseSequenceSpec(v10, a2, a3, a4);
}

uint64_t DERDecodeItemCtx(unsigned __int8 **a1, unint64_t *a2)
{
  v4 = objc_alloc_init(DERLogContext);
  v5 = DERDecodeItem(a1, a2);
  v8 = v5;
  if (v5)
  {
    LogBinary(OS_LOG_TYPE_ERROR, "DERDecodeItemCtx", 62, *a1, a1[1], @"parse failed with %d", v6, v7, v5);
    v9 = ATLLogObject([(DERLogContext *)v4 dumpLogs]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_ERROR, "------ END OF DER DUMP -----", buf, 2u);
    }
  }

  return v8;
}

void sub_22EF66700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_22EF68724()
{
  v0 = sub_22EFB626C();
  __swift_allocate_value_buffer(v0, qword_27DA9E328);
  __swift_project_value_buffer(v0, qword_27DA9E328);
  return sub_22EFB625C();
}

uint64_t sub_22EF687F8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, unint64_t *a5)
{
  result = sub_22EF7E630(a2, a3);
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *a4 = result;
    *a5 = v8;
  }

  return result;
}

uint64_t sub_22EF68840()
{
  sub_22EF70EBC(0, &qword_27DA9E3F8, 0x277CCABB0);
  result = sub_22EFB660C();
  qword_27DAA03F0 = result;
  return result;
}

uint64_t sub_22EF68888()
{
  sub_22EF70EBC(0, &qword_27DA9E3F8, 0x277CCABB0);
  result = sub_22EFB660C();
  qword_27DAA03F8 = result;
  return result;
}

id sub_22EF688D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E3F0, &unk_22EFBBC40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22EFBB8B0;
  if (qword_27DA9E350 != -1)
  {
    swift_once();
  }

  v1 = qword_27DAA03F0;
  *(v0 + 32) = qword_27DAA03F0;
  v2 = qword_27DA9E358;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_27DAA03F8;
  *(v0 + 40) = qword_27DAA03F8;
  qword_27DAA0400 = v0;

  return v4;
}

uint64_t static LyonSystemConfiguration.AssociatedReader.< infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (sub_22EF6E8C0(*a1, v5, *a2, v7))
  {
    v8 = a1[2] < a2[2];
  }

  else
  {
    v8 = sub_22EF71F2C(v4, v5, v6, v7);
  }

  return v8 & 1;
}

uint64_t sub_22EF68B18(uint64_t a1)
{
  v2 = v1;
  v3 = sub_22EFB651C();
  v5 = v4;
  sub_22EFB66DC();
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x4920726564616552, 0xEB00000000203A44);
  sub_22EF83154(*v2, v2[1]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
  sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180, MEMORY[0x277D83958]);
  v6 = sub_22EFB646C();
  v8 = v7;

  MEMORY[0x2318FB260](v6, v8);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x797469726F697250, 0xEA0000000000203ALL);
  v9 = sub_22EFB683C();
  MEMORY[0x2318FB260](v9);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x4B2063696C627550, 0xEC000000203A7965);
  sub_22EF83154(v2[3], v2[4]);
  v10 = sub_22EFB646C();
  v12 = v11;

  MEMORY[0x2318FB260](v10, v12);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v3, v5);

  MEMORY[0x2318FB260](0x746E696F70646E45, 0xED0000203A444920);
  sub_22EF83154(v2[5], v2[6]);
  v13 = sub_22EFB646C();
  v15 = v14;

  MEMORY[0x2318FB260](v13, v15);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  return 0;
}

uint64_t LyonSystemConfiguration.AssociatedReader.hashValue.getter()
{
  sub_22EFB68DC();
  sub_22EFB61EC();
  MEMORY[0x2318FB660](*(v0 + 16));
  return sub_22EFB691C();
}

uint64_t sub_22EF68E84(_BOOL8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (sub_22EF6E8C0(*a1, v3, *a2, v6))
  {
    v8 = v4 < v7;
  }

  else
  {
    v8 = sub_22EF71F2C(v2, v3, v5, v6);
  }

  return v8 & 1;
}

BOOL sub_22EF68F60(uint64_t *a1, _BOOL8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (sub_22EF6E8C0(*a2, v6, *a1, v3))
  {
    v8 = v7 < v4;
  }

  else
  {
    v8 = sub_22EF71F2C(v5, v6, v2, v3);
  }

  return (v8 & 1) == 0;
}

BOOL sub_22EF69040(_BOOL8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (sub_22EF6E8C0(*a1, v3, *a2, v6))
  {
    v8 = v4 < v7;
  }

  else
  {
    v8 = sub_22EF71F2C(v2, v3, v5, v6);
  }

  return (v8 & 1) == 0;
}

uint64_t sub_22EF69120(uint64_t *a1, _BOOL8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (sub_22EF6E8C0(*a2, v6, *a1, v3))
  {
    v8 = v7 < v4;
  }

  else
  {
    v8 = sub_22EF71F2C(v5, v6, v2, v3);
  }

  return v8 & 1;
}

uint64_t sub_22EF691FC()
{
  v1 = *(v0 + 16);
  sub_22EFB68DC();
  sub_22EFB61EC();
  MEMORY[0x2318FB660](v1);
  return sub_22EFB691C();
}

uint64_t sub_22EF69260(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_22EFB61EC();
  return MEMORY[0x2318FB660](v2);
}

uint64_t sub_22EF69298(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_22EFB68DC();
  sub_22EFB61EC();
  MEMORY[0x2318FB660](v2);
  return sub_22EFB691C();
}

uint64_t sub_22EF692F8(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  return sub_22EF6E8C0(*a1, a1[1], *a2, a2[1]) & (v2 == v3);
}

BOOL static LyonSystemConfiguration.associatedReadersConflict(pass1Readers:pass2Readers:)(uint64_t a1, uint64_t a2)
{

  v4 = *(sub_22EF6B780(a2, a1) + 2);

  return v4 != 0;
}

void sub_22EF693A4(void *a1, char *a2)
{
  v212 = *MEMORY[0x277D85DE8];
  v5 = sub_22EFB63EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v165 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22EFB62DC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22EF6F3F8(a1);
  if (v2)
  {
    return;
  }

  v195 = a2;
  v180 = v8;
  v181 = v5;
  sub_22EF708C8(v13, v14);
  v15 = sub_22EF6F704(a1);
  if (!v15[2])
  {

    if (qword_27DA9E320 != -1)
    {
      goto LABEL_145;
    }

    goto LABEL_86;
  }

  v179 = v15;
  v166 = v6;
  v167 = a1;
  v202 = v195;

  sub_22EF6B444(&v202);
  v165 = 0;
  v16 = v202;
  v17 = sub_22EFAB164(&unk_2843B6790);
  v206 = v17;
  v207 = v18;
  v20 = v181;
  v21 = v180;
  v178 = *(v16 + 2);
  if (!v178)
  {
    v116 = v17;
    v117 = v18;

LABEL_91:
    sub_22EF70AE8(&qword_27DA9E418, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    sub_22EFB62BC();
    sub_22EF70B68(v116, v117);
    v118 = v165;
    sub_22EFA9AB8(v116, v117, v21);
    v195 = v118;
    sub_22EF708C8(v116, v117);
    sub_22EFB62AC();
    (*(v166 + 8))(v21, v20);
    v204 = v9;
    v205 = sub_22EF70AE8(&qword_27DA9E420, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v202);
    (*(v10 + 16))(boxed_opaque_existential_1, v12, v9);
    __swift_project_boxed_opaque_existential_1(&v202, v204);
    v120 = v195;
    sub_22EFB608C();
    (*(v10 + 8))(v12, v9);
    v121 = __dst;
    __swift_destroy_boxed_opaque_existential_0Tm(&v202);
    v122 = sub_22EF6A9E4(v167, v121, *(&v121 + 1));
    if (v120)
    {
      sub_22EF708C8(v121, *(&v121 + 1));
      sub_22EF708C8(v206, v207);
      return;
    }

    if ((v122 & 1) == 0)
    {
      if (qword_27DA9E320 != -1)
      {
        swift_once();
      }

      v126 = sub_22EFB626C();
      __swift_project_value_buffer(v126, qword_27DA9E328);
      v127 = sub_22EFB624C();
      v128 = sub_22EFB65EC();
      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        *v129 = 0;
        _os_log_impl(&dword_22EEF5000, v127, v128, "Applet configuration has not changed", v129, 2u);
        MEMORY[0x2318FC200](v129, -1, -1);
      }

      sub_22EF708C8(v121, *(&v121 + 1));
      sub_22EF708C8(v206, v207);
      return;
    }

    __dst = xmmword_22EFBB8D0;
    v123 = v206;
    v124 = v207 >> 62;
    v195 = 0;
    if ((v207 >> 62) > 1)
    {
      if (v124 != 2)
      {
        v125 = 0;
        goto LABEL_109;
      }

      v131 = *(v206 + 16);
      v130 = *(v206 + 24);
      v125 = v130 - v131;
      if (!__OFSUB__(v130, v131))
      {
LABEL_109:
        sub_22EFB02C8(v125, &__dst);
        v199 = sub_22EFAB164(&unk_2843B67B8);
        v200 = v132;
        sub_22EFB61FC();
        sub_22EFB61FC();
        v197 = sub_22EFAB164(&unk_2843B67E0);
        v198 = v133;
        v134 = v199;
        v135 = v200 >> 62;
        if ((v200 >> 62) > 1)
        {
          if (v135 != 2)
          {
            goto LABEL_121;
          }

          v138 = *(v199 + 16);
          v137 = *(v199 + 24);
          v139 = __OFSUB__(v137, v138);
          v136 = v137 - v138;
          if (!v139)
          {
LABEL_118:
            if (v136 < -32768)
            {
              __break(1u);
              goto LABEL_147;
            }

            if (v136 < 0x8000)
            {
LABEL_122:
              LOWORD(v202) = bswap32(v136) >> 16;
              v140 = sub_22EFA845C(&v202, &v202 + 2);
              v142 = v141;
              sub_22EFB61FC();
              sub_22EF708C8(v140, v142);
              sub_22EFB61FC();
              if (qword_27DA9E320 == -1)
              {
LABEL_123:
                v143 = sub_22EFB626C();
                __swift_project_value_buffer(v143, qword_27DA9E328);
                v144 = v197;
                v145 = v198;
                sub_22EF70B68(v197, v198);
                v146 = sub_22EFB624C();
                v147 = sub_22EFB65BC();
                sub_22EF708C8(v144, v145);
                if (os_log_type_enabled(v146, v147))
                {
                  v148 = swift_slowAlloc();
                  *&v194 = swift_slowAlloc();
                  v202 = v194;
                  *v148 = 136315138;
                  v149 = v195;
                  v150 = sub_22EF83154(v144, v145);
                  v195 = v149;
                  v196 = v150;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
                  sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180, MEMORY[0x277D83958]);
                  v151 = sub_22EFB646C();
                  v153 = v152;

                  v154 = sub_22EF9447C(v151, v153, &v202);

                  *(v148 + 4) = v154;
                  _os_log_impl(&dword_22EEF5000, v146, v147, "Auxiliary Elements Command: %s", v148, 0xCu);
                  v155 = v194;
                  __swift_destroy_boxed_opaque_existential_0Tm(v194);
                  MEMORY[0x2318FC200](v155, -1, -1);
                  MEMORY[0x2318FC200](v148, -1, -1);
                }

                swift_beginAccess();
                v156 = sub_22EFB61BC();
                if (qword_27DA9E360 != -1)
                {
                  swift_once();
                }

                sub_22EF70EBC(0, &qword_27DA9E3F8, 0x277CCABB0);
                v157 = sub_22EFB653C();
                v196 = 0;
                v158 = [v167 transceiveAndCheckSW:v156 inArray:v157 error:&v196];

                v159 = v196;
                if (v158)
                {
                  v160 = sub_22EFB61DC();
                  sub_22EF708C8(v160, v161);

                  v162 = *(v174 + 16);
                  v163 = *(v174 + 24);
                  *(v174 + 16) = v121;
                  sub_22EF708B4(v162, v163);
                }

                else
                {
                  v164 = v159;
                  sub_22EFB60EC();

                  swift_willThrow();
                  sub_22EF708C8(v121, *(&v121 + 1));
                }

                sub_22EF708C8(v197, v198);
                sub_22EF708C8(__dst, *(&__dst + 1));
                sub_22EF708C8(v199, v200);
                sub_22EF708C8(v206, v207);
                return;
              }

LABEL_147:
              swift_once();
              goto LABEL_123;
            }

            __break(1u);
LABEL_121:
            LODWORD(v136) = 0;
            goto LABEL_122;
          }

          __break(1u);
        }

        else if (!v135)
        {
          LODWORD(v136) = BYTE6(v200);
          goto LABEL_122;
        }

        LODWORD(v136) = HIDWORD(v134) - v134;
        if (__OFSUB__(HIDWORD(v134), v134))
        {
          goto LABEL_151;
        }

        v136 = v136;
        goto LABEL_118;
      }

      __break(1u);
    }

    else if (!v124)
    {
      v125 = BYTE6(v207);
      goto LABEL_109;
    }

    if (__OFSUB__(HIDWORD(v123), v123))
    {
      goto LABEL_150;
    }

    v125 = HIDWORD(v123) - v123;
    goto LABEL_109;
  }

  v22 = 0;
  v177 = v16 + 32;
  *&v19 = 136315138;
  v175 = v19;
  v194 = xmmword_22EFBB8C0;
  v189 = v9;
  v193 = v10;
  v195 = v12;
  v176 = v16;
  while (1)
  {
    if (v22 >= *(v16 + 2))
    {
      goto LABEL_139;
    }

    v186 = v22;
    v23 = &v177[56 * v22];
    v24 = *v23;
    v25 = *(v23 + 1);
    v26 = *(v23 + 2);
    v211 = *(v23 + 6);
    v209 = v25;
    v210 = v26;
    v208 = v24;
    sub_22EF70CC4(&v208, &v202);
    if (qword_27DA9E320 != -1)
    {
      swift_once();
    }

    v27 = sub_22EFB626C();
    __swift_project_value_buffer(v27, qword_27DA9E328);
    sub_22EF70CC4(&v208, &v202);
    v28 = sub_22EFB624C();
    v29 = sub_22EFB65BC();
    sub_22EF70CFC(&v208);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v202 = v31;
      *v30 = v175;
      v32 = sub_22EF68B18(0);
      v34 = sub_22EF9447C(v32, v33, &v202);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_22EEF5000, v28, v29, "%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      v35 = v31;
      v12 = v195;
      MEMORY[0x2318FC200](v35, -1, -1);
      MEMORY[0x2318FC200](v30, -1, -1);
    }

    v36 = v179;
    v38 = *(&v210 + 1);
    v37 = v211;
    if (v179[2])
    {
      sub_22EF70B68(*(&v210 + 1), v211);
      v39 = sub_22EFA9434(v38, v37);
      if (v40)
      {
        v41 = v38;
        v42 = *(v36[7] + v39);
        sub_22EF708C8(v41, v37);
        v43 = sub_22EFB618C();
        v45 = v44;
        sub_22EFB61FC();
        sub_22EF708C8(v43, v45);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E430, &unk_22EFBD190);
        v46 = swift_allocObject();
        *(v46 + 16) = v194;
        *(v46 + 32) = v42;
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E438, &qword_22EFBBC60);
        v204 = v47;
        v48 = sub_22EF70E20(&qword_281477D60, &qword_27DA9E438, &qword_22EFBBC60, MEMORY[0x277CC9C28]);
        v205 = v48;
        v202 = v46;
        v49 = __swift_project_boxed_opaque_existential_1(&v202, v47);
        v50 = *v49;
        v51 = *(*v49 + 16);
        if (v51)
        {
          if (v51 <= 0xE)
          {
            *(&__dst + 6) = 0;
            *&__dst = 0;
            BYTE14(__dst) = v51;
            memcpy(&__dst, (v50 + 32), v51);
            v54 = __dst;
            v55 = v169 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
            v169 = v55;
          }

          else
          {
            sub_22EFB607C();
            swift_allocObject();
            v52 = sub_22EFB602C();
            v53 = v52;
            if (v51 >= 0x7FFFFFFF)
            {
              sub_22EFB614C();
              v54 = swift_allocObject();
              *(v54 + 16) = 0;
              *(v54 + 24) = v51;
              v55 = v53 | 0x8000000000000000;
            }

            else
            {
              v54 = v51 << 32;
              v55 = v52 | 0x4000000000000000;
            }
          }
        }

        else
        {
          v54 = 0;
          v55 = 0xC000000000000000;
        }

        v92 = *(&v209 + 1);
        v93 = v210;
        __swift_destroy_boxed_opaque_existential_0Tm(&v202);
        sub_22EFB61FC();
        sub_22EF708C8(v54, v55);
        v94 = v93 >> 62;
        if ((v93 >> 62) > 1)
        {
          v10 = v193;
          if (v94 != 2)
          {
            __break(1u);

            __break(1u);
            return;
          }

          v95 = *(v92 + 16);
          v96 = *(v92 + 24);
        }

        else
        {
          v10 = v193;
          if (v94)
          {
            v95 = v92;
            v96 = v92 >> 32;
          }

          else
          {
            v95 = 0;
            v96 = BYTE6(v93);
          }
        }

        if (v95 == v96)
        {
          goto LABEL_140;
        }

        if (v94 == 2)
        {
          v97 = *(v92 + 24);
        }

        else if (v94 == 1)
        {
          v97 = v92 >> 32;
        }

        else
        {
          v97 = BYTE6(v93);
        }

        if (__OFSUB__(v97, 1))
        {
          goto LABEL_141;
        }

        v98 = sub_22EFB619C() & 1 | 2;
        v99 = swift_allocObject();
        *(v99 + 16) = v194;
        *(v99 + 32) = v98;
        v204 = v47;
        v205 = v48;
        v202 = v99;
        v100 = __swift_project_boxed_opaque_existential_1(&v202, v47);
        v101 = *v100;
        v102 = *(*v100 + 16);
        if (v102)
        {
          v12 = v195;
          if (v102 <= 0xE)
          {
            *(&__dst + 6) = 0;
            *&__dst = 0;
            BYTE14(__dst) = v102;
            memcpy(&__dst, (v101 + 32), v102);
            v105 = __dst;
            v106 = v168 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
            v168 = v106;
          }

          else
          {
            sub_22EFB607C();
            swift_allocObject();
            v103 = sub_22EFB602C();
            v104 = v103;
            if (v102 >= 0x7FFFFFFF)
            {
              sub_22EFB614C();
              v105 = swift_allocObject();
              *(v105 + 16) = 0;
              *(v105 + 24) = v102;
              v106 = v104 | 0x8000000000000000;
            }

            else
            {
              v105 = v102 << 32;
              v106 = v103 | 0x4000000000000000;
            }
          }
        }

        else
        {
          v105 = 0;
          v106 = 0xC000000000000000;
          v12 = v195;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v202);
        v202 = v105;
        v203 = v106;
        v107 = sub_22EFB620C();
        v109 = v108;
        sub_22EFB61FC();
        sub_22EF708C8(v107, v109);
        v110 = v202;
        v111 = v203;
        sub_22EFB61FC();
        sub_22EF708C8(v110, v111);
        goto LABEL_8;
      }

      sub_22EF708C8(v38, v37);
    }

    v188 = v38;
    sub_22EF70CC4(&v208, &v202);
    v56 = sub_22EFB624C();
    v57 = sub_22EFB65CC();
    sub_22EF70CFC(&v208);
    if (os_log_type_enabled(v56, v57))
    {
      break;
    }

LABEL_8:
    sub_22EF70CFC(&v208);
    v20 = v181;
    v21 = v180;
    v16 = v176;
    v22 = v186 + 1;
    if (v186 + 1 == v178)
    {

      v116 = v206;
      v117 = v207;
      goto LABEL_91;
    }
  }

  v58 = swift_slowAlloc();
  v59 = swift_slowAlloc();
  *&__dst = v59;
  *v58 = v175;
  v60 = v37 >> 62;
  v187 = HIDWORD(v188);
  v173 = v56;
  v172 = v57;
  v171 = v58;
  v170 = v59;
  if ((v37 >> 62) <= 1)
  {
    if (v60)
    {
      v66 = v187 - v188;
      if (__OFSUB__(v187, v188))
      {
        goto LABEL_143;
      }

      v61 = v66;
      if (v66)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v61 = BYTE6(v37);
      if (BYTE6(v37))
      {
        goto LABEL_29;
      }
    }

    goto LABEL_36;
  }

  if (v60 != 2)
  {
    goto LABEL_36;
  }

  v63 = *(v188 + 16);
  v62 = *(v188 + 24);
  v61 = v62 - v63;
  if (__OFSUB__(v62, v63))
  {
    goto LABEL_144;
  }

  if (!v61)
  {
LABEL_36:
    v67 = MEMORY[0x277D84F90];
LABEL_37:
    v202 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
    sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180, MEMORY[0x277D83958]);
    v68 = sub_22EFB646C();
    v70 = v69;

    v71 = sub_22EF9447C(v68, v70, &__dst);

    v72 = v171;
    *(v171 + 1) = v71;
    v73 = v173;
    _os_log_impl(&dword_22EEF5000, v173, v172, "Endpoint %s not found for in Lyon Instance, skipping", v72, 0xCu);
    v74 = v170;
    __swift_destroy_boxed_opaque_existential_0Tm(v170);
    MEMORY[0x2318FC200](v74, -1, -1);
    MEMORY[0x2318FC200](v72, -1, -1);

    goto LABEL_8;
  }

LABEL_29:
  v199 = MEMORY[0x277D84F90];
  v191 = v37 >> 62;
  sub_22EF9AAC8(0, v61 & ~(v61 >> 63), 0);
  v64 = v191;
  v185 = v188;
  if (v191)
  {
    if (v191 == 2)
    {
      v65 = *(v188 + 16);
    }

    else
    {
      v65 = v185;
    }
  }

  else
  {
    v65 = 0;
  }

  v192 = v65;
  if (v61 < 0)
  {
    goto LABEL_142;
  }

  v75 = 0;
  v67 = v199;
  v183 = v188 >> 32;
  v184 = BYTE6(v37);
  v182 = &v202 + v192;
  v190 = v61;
  while (2)
  {
    if (v75 < v61)
    {
      v76 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        goto LABEL_132;
      }

      v77 = v192 + v75;
      if (v64 != 2)
      {
        if (v64 == 1)
        {
          if (v77 < v185 || v77 >= v183)
          {
            goto LABEL_135;
          }

          v78 = sub_22EFB603C();
          if (!v78)
          {
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
          }

          v79 = v78;
          v80 = sub_22EFB605C();
          v81 = v77 - v80;
          if (__OFSUB__(v77, v80))
          {
            goto LABEL_137;
          }

LABEL_56:
          v84 = *(v79 + v81);
        }

        else
        {
          if (v77 >= v184)
          {
            goto LABEL_133;
          }

          LODWORD(v202) = v188;
          BYTE4(v202) = v187;
          *(&v202 + 5) = *(&v188 + 5);
          HIBYTE(v202) = HIBYTE(v188);
          LOWORD(v203) = v37;
          BYTE2(v203) = BYTE2(v37);
          BYTE3(v203) = BYTE3(v37);
          BYTE4(v203) = BYTE4(v37);
          BYTE5(v203) = BYTE5(v37);
          v84 = v182[v75];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
        v85 = swift_allocObject();
        *(v85 + 16) = v194;
        *(v85 + 56) = MEMORY[0x277D84B78];
        *(v85 + 64) = MEMORY[0x277D84BC0];
        *(v85 + 32) = v84;
        v86 = sub_22EFB649C();
        v88 = v87;
        v199 = v67;
        v90 = *(v67 + 16);
        v89 = *(v67 + 24);
        if (v90 >= v89 >> 1)
        {
          sub_22EF9AAC8((v89 > 1), v90 + 1, 1);
          v67 = v199;
        }

        *(v67 + 16) = v90 + 1;
        v91 = v67 + 16 * v90;
        *(v91 + 32) = v86;
        *(v91 + 40) = v88;
        ++v75;
        v61 = v190;
        v9 = v189;
        v10 = v193;
        v12 = v195;
        v64 = v191;
        if (v76 == v190)
        {
          goto LABEL_37;
        }

        continue;
      }

      if (v77 < *(v188 + 16))
      {
        goto LABEL_134;
      }

      if (v77 >= *(v188 + 24))
      {
        goto LABEL_136;
      }

      v82 = sub_22EFB603C();
      if (!v82)
      {
        goto LABEL_149;
      }

      v79 = v82;
      v83 = sub_22EFB605C();
      v81 = v77 - v83;
      if (__OFSUB__(v77, v83))
      {
        goto LABEL_138;
      }

      goto LABEL_56;
    }

    break;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  swift_once();
LABEL_86:
  v112 = sub_22EFB626C();
  __swift_project_value_buffer(v112, qword_27DA9E328);
  v113 = sub_22EFB624C();
  v114 = sub_22EFB65CC();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    *v115 = 0;
    _os_log_impl(&dword_22EEF5000, v113, v114, "No endpoints available on device, skip auxiliary elements", v115, 2u);
    MEMORY[0x2318FC200](v115, -1, -1);
  }
}