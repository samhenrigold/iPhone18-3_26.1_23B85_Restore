void _GLOBAL__sub_I_regression_obj_cc(xgboost::obj::RegLossParam *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  xgboost::obj::RegLossParam::__MANAGER__(a1);
  v1 = dmlc::Registry<xgboost::ObjFunctionReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "reg:squarederror");
  v2 = dmlc::Registry<xgboost::ObjFunctionReg>::__REGISTER__(v1, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Regression with squared error.");
  std::string::operator=(v2 + 1, &__str);
  v27[0] = &unk_2883DD640;
  v28 = v27;
  std::function<xgboost::ObjFunction * ()(void)>::operator=(v2[3].__r_.__value_.__r.__words, v27);
  std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](v27);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF5B90 = v2;
  v3 = dmlc::Registry<xgboost::ObjFunctionReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "reg:squaredlogerror");
  v4 = dmlc::Registry<xgboost::ObjFunctionReg>::__REGISTER__(v3, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Regression with root mean squared logarithmic error.");
  std::string::operator=(v4 + 1, &__str);
  v27[0] = &unk_2883DD770;
  v28 = v27;
  std::function<xgboost::ObjFunction * ()(void)>::operator=(v4[3].__r_.__value_.__r.__words, v27);
  std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](v27);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF5B98 = v4;
  v5 = dmlc::Registry<xgboost::ObjFunctionReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "reg:logistic");
  v6 = dmlc::Registry<xgboost::ObjFunctionReg>::__REGISTER__(v5, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Logistic regression for probability regression task.");
  std::string::operator=(v6 + 1, &__str);
  v27[0] = &unk_2883DD878;
  v28 = v27;
  std::function<xgboost::ObjFunction * ()(void)>::operator=(v6[3].__r_.__value_.__r.__words, v27);
  std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](v27);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF5BA0 = v6;
  v7 = dmlc::Registry<xgboost::ObjFunctionReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "binary:logistic");
  v8 = dmlc::Registry<xgboost::ObjFunctionReg>::__REGISTER__(v7, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Logistic regression for binary classification task.");
  std::string::operator=(v8 + 1, &__str);
  v27[0] = &unk_2883DD980;
  v28 = v27;
  std::function<xgboost::ObjFunction * ()(void)>::operator=(v8[3].__r_.__value_.__r.__words, v27);
  std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](v27);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF5BA8 = v8;
  v9 = dmlc::Registry<xgboost::ObjFunctionReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "binary:logitraw");
  v10 = dmlc::Registry<xgboost::ObjFunctionReg>::__REGISTER__(v9, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Logistic regression for classification, output score before logistic transformation.");
  std::string::operator=(v10 + 1, &__str);
  v27[0] = &unk_2883DDA88;
  v28 = v27;
  std::function<xgboost::ObjFunction * ()(void)>::operator=(v10[3].__r_.__value_.__r.__words, v27);
  std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](v27);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF5BB0 = v10;
  v11 = dmlc::Registry<xgboost::ObjFunctionReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "reg:linear");
  v12 = dmlc::Registry<xgboost::ObjFunctionReg>::__REGISTER__(v11, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Regression with squared error.");
  std::string::operator=(v12 + 1, &__str);
  v27[0] = &unk_2883DDB90;
  v28 = v27;
  std::function<xgboost::ObjFunction * ()(void)>::operator=(v12[3].__r_.__value_.__r.__words, v27);
  std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](v27);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF5BB8 = v12;
  v13 = dmlc::Registry<xgboost::ObjFunctionReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "reg:pseudohubererror");
  v14 = dmlc::Registry<xgboost::ObjFunctionReg>::__REGISTER__(v13, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Regression Pseudo Huber error.");
  std::string::operator=(v14 + 1, &__str);
  v27[0] = &unk_2883DDC10;
  v28 = v27;
  std::function<xgboost::ObjFunction * ()(void)>::operator=(v14[3].__r_.__value_.__r.__words, v27);
  v15 = std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](v27);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF5BC0 = v14;
  xgboost::obj::PoissonRegressionParam::__MANAGER__(v15);
  v16 = dmlc::Registry<xgboost::ObjFunctionReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "count:poisson");
  v17 = dmlc::Registry<xgboost::ObjFunctionReg>::__REGISTER__(v16, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Poisson regression for count data.");
  std::string::operator=(v17 + 1, &__str);
  v27[0] = &unk_2883DDD18;
  v28 = v27;
  std::function<xgboost::ObjFunction * ()(void)>::operator=(v17[3].__r_.__value_.__r.__words, v27);
  std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](v27);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF5BD0 = v17;
  v18 = dmlc::Registry<xgboost::ObjFunctionReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "survival:cox");
  v19 = dmlc::Registry<xgboost::ObjFunctionReg>::__REGISTER__(v18, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Cox regression for censored survival data (negative labels are considered censored).");
  std::string::operator=(v19 + 1, &__str);
  v27[0] = &unk_2883DDE20;
  v28 = v27;
  std::function<xgboost::ObjFunction * ()(void)>::operator=(v19[3].__r_.__value_.__r.__words, v27);
  std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](v27);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF5BD8 = v19;
  v20 = dmlc::Registry<xgboost::ObjFunctionReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "reg:gamma");
  v21 = dmlc::Registry<xgboost::ObjFunctionReg>::__REGISTER__(v20, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Gamma regression for severity data.");
  std::string::operator=(v21 + 1, &__str);
  v27[0] = &unk_2883DDF28;
  v28 = v27;
  std::function<xgboost::ObjFunction * ()(void)>::operator=(v21[3].__r_.__value_.__r.__words, v27);
  v22 = std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](v27);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF5BE0 = v21;
  xgboost::obj::TweedieRegressionParam::__MANAGER__(v22);
  v23 = dmlc::Registry<xgboost::ObjFunctionReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "reg:tweedie");
  v24 = dmlc::Registry<xgboost::ObjFunctionReg>::__REGISTER__(v23, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Tweedie regression for insurance data.");
  std::string::operator=(v24 + 1, &__str);
  v27[0] = &unk_2883DE030;
  v28 = v27;
  std::function<xgboost::ObjFunction * ()(void)>::operator=(v24[3].__r_.__value_.__r.__words, v27);
  std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](v27);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF5BF0 = v24;
}

void sub_274CA50C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

std::string *xgboost::obj::RegLossParam::__MANAGER__(xgboost::obj::RegLossParam *this)
{
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "RegLossParam");
    dmlc::parameter::ParamManagerSingleton<xgboost::obj::RegLossParam>::ParamManagerSingleton(&__p);
  }

  return &stru_280AF5BF8;
}

void sub_274CA525C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&_MergedGlobals);
  _Unwind_Resume(a1);
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

void dmlc::parameter::ParamManagerSingleton<xgboost::obj::RegLossParam>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF5C30 = 0;
  qword_280AF5C38 = 0;
  *&stru_280AF5BF8.__r_.__value_.__l.__data_ = 0u;
  *&stru_280AF5BF8.__r_.__value_.__r.__words[2] = 0u;
  xmmword_280AF5C18 = 0u;
  qword_280AF5C28 = &qword_280AF5C30;
  std::string::operator=(&stru_280AF5BF8, __str);
  std::string::basic_string[abi:ne200100]<0>(&__p, "scale_pos_weight");
  operator new();
}

void sub_274CA54DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  dmlc::parameter::ParamManager::~ParamManager(&stru_280AF5BF8);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::parameter::FieldAccessEntry *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t dmlc::parameter::ParamManager::AddEntry(uint64_t **a1, const void **a2, uint64_t a3)
{
  v6 = (a1 + 3);
  *(a3 + 16) = a1[4] - a1[3];
  if (std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__count_unique<std::string>((a1 + 6), a2))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v30);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/./parameter.h", 499);
    v8 = dmlc::LogMessageFatal::GetEntry(&v30);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "key ", 4);
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
      v12 = a2[1];
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " has already been registered in ", 32);
    v15 = *(a1 + 23);
    if (v15 >= 0)
    {
      v16 = a1;
    }

    else
    {
      v16 = *a1;
    }

    if (v15 >= 0)
    {
      v17 = *(a1 + 23);
    }

    else
    {
      v17 = a1[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
    dmlc::LogMessageFatal::~LogMessageFatal(&v30);
  }

  v19 = a1[4];
  v18 = a1[5];
  if (v19 >= v18)
  {
    v21 = (v19 - *v6) >> 3;
    if ((v21 + 1) >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v22 = v18 - *v6;
    v23 = v22 >> 2;
    if (v22 >> 2 <= (v21 + 1))
    {
      v23 = v21 + 1;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      v24 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v24 = v23;
    }

    if (v24)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::parameter::FieldAccessEntry *>>(v6, v24);
    }

    *(8 * v21) = a3;
    v20 = 8 * v21 + 8;
    v25 = a1[3];
    v26 = a1[4] - v25;
    v27 = (8 * v21 - v26);
    memcpy(v27, v25, v26);
    v28 = a1[3];
    a1[3] = v27;
    a1[4] = v20;
    a1[5] = 0;
    if (v28)
    {
      operator delete(v28);
    }
  }

  else
  {
    *v19 = a3;
    v20 = (v19 + 1);
  }

  a1[4] = v20;
  v32 = a2;
  result = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v6 + 3), a2, &std::piecewise_construct, &v32, &v31);
  *(result + 56) = a3;
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__count_unique<std::string>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = 1;
    do
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a2, v2 + 4))
      {
        if (!std::less<std::string>::operator()[abi:ne200100](a1, v2 + 4, a2))
        {
          return v5;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__find_equal<std::string>(a1, &v6, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

void sub_274CA5938(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__find_equal<std::string>(uint64_t a1, const void ***a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, v4 + 4))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string>::operator()[abi:ne200100](a1, v8 + 4, a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
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

uint64_t dmlc::parameter::FieldEntryNumeric<dmlc::parameter::FieldEntry<float>,float>::set_lower_bound(uint64_t result, float a2)
{
  *(result + 112) = a2;
  *(result + 108) = 1;
  return result;
}

__int128 *dmlc::Registry<xgboost::ObjFunctionReg>::Get()
{
  if ((atomic_load_explicit(&_MergedGlobals_23, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_23))
  {
    qword_280AF7210 = 0;
    *algn_280AF71E8 = 0u;
    unk_280AF71F8 = 0u;
    xmmword_280AF71D8 = 0u;
    qword_280AF7208 = &qword_280AF7210;
    qword_280AF7218 = 0;
    unk_280AF7220 = 850045863;
    unk_280AF7228 = 0u;
    unk_280AF7238 = 0u;
    unk_280AF7248 = 0u;
    qword_280AF7258 = 0;
    __cxa_atexit(dmlc::Registry<xgboost::ObjFunctionReg>::~Registry, &xmmword_280AF71D8, &dword_274CA4000);
    __cxa_guard_release(&_MergedGlobals_23);
  }

  return &xmmword_280AF71D8;
}

uint64_t dmlc::Registry<xgboost::ObjFunctionReg>::__REGISTER__(uint64_t a1, const std::string *a2)
{
  std::mutex::lock((a1 + 72));
  if (!std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__count_unique<std::string>(a1 + 48, &a2->__r_.__value_.__l.__data_))
  {
    operator new();
  }

  v7 = a2;
  v4 = *(std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 48, &a2->__r_.__value_.__l.__data_, &std::piecewise_construct, &v7, &v6) + 56);
  std::mutex::unlock((a1 + 72));
  return v4;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::ObjFunctionReg const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::function<xgboost::ObjFunction * ()(void)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<xgboost::ObjFunction * ()(void)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<xgboost::ObjFunction * ()(void)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<xgboost::ObjFunction * ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<xgboost::ObjFunction * ()(void)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_274CA623C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<xgboost::obj::$_0,std::allocator<xgboost::obj::$_0>,xgboost::ObjFunction * ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2883DD640;
}

{
  *a2 = &unk_2883E17B0;
}

{
  *a2 = &unk_2883E2478;
}

{
  *a2 = &unk_2883E3798;
}

{
  *a2 = &unk_2883E3990;
}

uint64_t std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

BOOL std::less<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

void std::__function::__func<xgboost::obj::$_1,std::allocator<xgboost::obj::$_1>,xgboost::ObjFunction * ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2883DD770;
}

{
  *a2 = &unk_2883E2580;
}

{
  *a2 = &unk_2883E3A98;
}

void std::__function::__func<xgboost::obj::$_2,std::allocator<xgboost::obj::$_2>,xgboost::ObjFunction * ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2883DD878;
}

{
  *a2 = &unk_2883E2688;
}

__int128 *xgboost::obj::PoissonRegressionParam::__MANAGER__(xgboost::obj::PoissonRegressionParam *this)
{
  if ((atomic_load_explicit(&qword_280AF5BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF5BC8))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "PoissonRegressionParam");
    dmlc::parameter::ParamManagerSingleton<xgboost::obj::PoissonRegressionParam>::ParamManagerSingleton(&__p);
  }

  return &xmmword_280AF5C40;
}

void sub_274CA65D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_280AF5BC8);
  _Unwind_Resume(a1);
}

void dmlc::parameter::ParamManagerSingleton<xgboost::obj::PoissonRegressionParam>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF5C78 = 0;
  qword_280AF5C80 = 0;
  xmmword_280AF5C40 = 0u;
  *algn_280AF5C50 = 0u;
  xmmword_280AF5C60 = 0u;
  qword_280AF5C70 = &qword_280AF5C78;
  std::string::operator=(&xmmword_280AF5C40, __str);
  std::string::basic_string[abi:ne200100]<0>(&__p, "max_delta_step");
  operator new();
}

void sub_274CA679C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  dmlc::parameter::ParamManager::~ParamManager(&xmmword_280AF5C40);
  _Unwind_Resume(a1);
}

std::string *xgboost::obj::TweedieRegressionParam::__MANAGER__(xgboost::obj::TweedieRegressionParam *this)
{
  if ((atomic_load_explicit(&qword_280AF5BE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF5BE8))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "TweedieRegressionParam");
    dmlc::parameter::ParamManagerSingleton<xgboost::obj::TweedieRegressionParam>::ParamManagerSingleton(&__p);
  }

  return &stru_280AF5C88;
}

void sub_274CA68F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_280AF5BE8);
  _Unwind_Resume(a1);
}

void dmlc::parameter::ParamManagerSingleton<xgboost::obj::TweedieRegressionParam>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF5CC0 = 0;
  qword_280AF5CC8 = 0;
  *&stru_280AF5C88.__r_.__value_.__l.__data_ = 0u;
  *&stru_280AF5C88.__r_.__value_.__r.__words[2] = 0u;
  xmmword_280AF5CA8 = 0u;
  qword_280AF5CB8 = &qword_280AF5CC0;
  std::string::operator=(&stru_280AF5C88, __str);
  std::string::basic_string[abi:ne200100]<0>(&__p, "tweedie_variance_power");
  operator new();
}

void sub_274CA6AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  dmlc::parameter::ParamManager::~ParamManager(&stru_280AF5C88);
  _Unwind_Resume(a1);
}

uint64_t dmlc::parameter::FieldEntryNumeric<dmlc::parameter::FieldEntry<float>,float>::set_range(uint64_t result, float a2, float a3)
{
  *(result + 112) = a2;
  *(result + 116) = a3;
  *(result + 108) = 257;
  return result;
}

__int128 *dmlc::Registry<xgboost::TreeUpdaterReg>::Get()
{
  {
    qword_280AF73F8 = 0;
    dmlc::Registry<xgboost::TreeUpdaterReg>::Get(void)::inst = 0u;
    *algn_280AF73D0 = 0u;
    xmmword_280AF73E0 = 0u;
    qword_280AF73F0 = &qword_280AF73F8;
    qword_280AF7400 = 0;
    unk_280AF7408 = 850045863;
    xmmword_280AF7410 = 0u;
    unk_280AF7420 = 0u;
    xmmword_280AF7430 = 0u;
    qword_280AF7440 = 0;
    __cxa_atexit(dmlc::Registry<xgboost::TreeUpdaterReg>::~Registry, &dmlc::Registry<xgboost::TreeUpdaterReg>::Get(void)::inst, &dword_274CA4000);
  }

  return &dmlc::Registry<xgboost::TreeUpdaterReg>::Get(void)::inst;
}

void _GLOBAL__sub_I_updater_prune_cc()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v0 = dmlc::Registry<xgboost::TreeUpdaterReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "prune");
  v1 = dmlc::Registry<xgboost::TreeUpdaterReg>::__REGISTER__(v0, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Pruner that prune the tree according to statistics.");
  std::string::operator=(v1 + 1, &__str);
  v4[0] = &unk_2883DE2D8;
  v4[3] = v4;
  std::function<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::operator=(v1[3].__r_.__value_.__r.__words, v4);
  std::__function::__value_func<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::~__value_func[abi:ne200100](v4);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::tree::__make_TreeUpdaterReg_TreePruner__ = v1;
}

void sub_274CA6CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::~__value_func[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t dmlc::Registry<xgboost::TreeUpdaterReg>::__REGISTER__(uint64_t a1, const std::string *a2)
{
  std::mutex::lock((a1 + 72));
  if (!std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__count_unique<std::string>(a1 + 48, &a2->__r_.__value_.__l.__data_))
  {
    operator new();
  }

  v7 = a2;
  v4 = *(std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 48, &a2->__r_.__value_.__l.__data_, &std::piecewise_construct, &v7, &v6) + 56);
  std::mutex::unlock((a1 + 72));
  return v4;
}

uint64_t std::__function::__value_func<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::function<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::__function::__value_func<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_274CA72D4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<xgboost::tree::$_0,std::allocator<xgboost::tree::$_0>,xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2883DE2D8;
}

{
  *a2 = &unk_2883E0B90;
}

{
  *a2 = &unk_2883E3628;
}

{
  *a2 = &unk_2883E38A0;
}

{
  *a2 = &unk_2883E3D88;
}

{
  *a2 = &unk_2883E4768;
}

{
  *a2 = &unk_2883E4D50;
}

uint64_t std::__function::__value_func<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::~__value_func[abi:ne200100](uint64_t a1)
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

std::string *xgboost::gbm::GBLinearTrainParam::__MANAGER__(xgboost::gbm::GBLinearTrainParam *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_0))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "GBLinearTrainParam");
    dmlc::parameter::ParamManagerSingleton<xgboost::gbm::GBLinearTrainParam>::ParamManagerSingleton(&__p);
  }

  return &stru_280AF5CD8;
}

void sub_274CA7500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&_MergedGlobals_0);
  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_gblinear_cc(xgboost::gbm::GBLinearTrainParam *a1)
{
  v5[4] = *MEMORY[0x277D85DE8];
  xgboost::gbm::GBLinearTrainParam::__MANAGER__(a1);
  v1 = dmlc::Registry<xgboost::GradientBoosterReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "gblinear");
  v2 = dmlc::Registry<xgboost::GradientBoosterReg>::__REGISTER__(v1, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Linear booster, implement generalized linear model.");
  std::string::operator=(v2 + 1, &__str);
  v5[0] = &unk_2883DE4A0;
  v5[3] = v5;
  std::function<xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::operator=(v2[3].__r_.__value_.__r.__words, v5);
  std::__function::__value_func<xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::~__value_func[abi:ne200100](v5);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::gbm::__make_GradientBoosterReg_GBLinear__ = v2;
}

void sub_274CA7628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::~__value_func[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void dmlc::parameter::ParamManagerSingleton<xgboost::gbm::GBLinearTrainParam>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF5D10 = 0;
  qword_280AF5D18 = 0;
  *&stru_280AF5CD8.__r_.__value_.__l.__data_ = 0u;
  *&stru_280AF5CD8.__r_.__value_.__r.__words[2] = 0u;
  xmmword_280AF5CF8 = 0u;
  qword_280AF5D08 = &qword_280AF5D10;
  std::string::operator=(&stru_280AF5CD8, __str);
  std::string::basic_string[abi:ne200100]<0>(&__stra, "updater");
  operator new();
}

void sub_274CA7A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  dmlc::parameter::ParamManager::~ParamManager(&stru_280AF5CD8);
  _Unwind_Resume(a1);
}

__int128 *dmlc::Registry<xgboost::GradientBoosterReg>::Get()
{
  {
    qword_280AF72E8 = 0;
    dmlc::Registry<xgboost::GradientBoosterReg>::Get(void)::inst = 0u;
    unk_280AF72C0 = 0u;
    xmmword_280AF72D0 = 0u;
    qword_280AF72E0 = &qword_280AF72E8;
    qword_280AF72F0 = 0;
    unk_280AF72F8 = 850045863;
    xmmword_280AF7300 = 0u;
    unk_280AF7310 = 0u;
    xmmword_280AF7320 = 0u;
    qword_280AF7330 = 0;
    __cxa_atexit(dmlc::Registry<xgboost::GradientBoosterReg>::~Registry, &dmlc::Registry<xgboost::GradientBoosterReg>::Get(void)::inst, &dword_274CA4000);
  }

  return &dmlc::Registry<xgboost::GradientBoosterReg>::Get(void)::inst;
}

uint64_t dmlc::Registry<xgboost::GradientBoosterReg>::__REGISTER__(uint64_t a1, const std::string *a2)
{
  std::mutex::lock((a1 + 72));
  if (!std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__count_unique<std::string>(a1 + 48, &a2->__r_.__value_.__l.__data_))
  {
    operator new();
  }

  v7 = a2;
  v4 = *(std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 48, &a2->__r_.__value_.__l.__data_, &std::piecewise_construct, &v7, &v6) + 56);
  std::mutex::unlock((a1 + 72));
  return v4;
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

void *std::function<xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_274CA81CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<xgboost::gbm::$_0,std::allocator<xgboost::gbm::$_0>,xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2883DE4A0;
}

{
  *a2 = &unk_2883E44D0;
}

uint64_t std::__function::__value_func<xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

void _GLOBAL__sub_I_updater_coordinate_cc(xgboost::linear::CoordinateParam *a1)
{
  v5[4] = *MEMORY[0x277D85DE8];
  xgboost::linear::CoordinateParam::__MANAGER__(a1);
  v1 = dmlc::Registry<xgboost::LinearUpdaterReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "coord_descent");
  v2 = dmlc::Registry<xgboost::LinearUpdaterReg>::__REGISTER__(v1, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Update linear model according to coordinate descent algorithm.");
  std::string::operator=(v2 + 1, &__str);
  v5[0] = &unk_2883DE7D8;
  v5[3] = v5;
  std::function<xgboost::LinearUpdater * ()(void)>::operator=(v2[3].__r_.__value_.__r.__words, v5);
  std::__function::__value_func<xgboost::LinearUpdater * ()(void)>::~__value_func[abi:ne200100](v5);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::linear::__make_LinearUpdaterReg_CoordinateUpdater__ = v2;
}

void sub_274CA8398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<xgboost::LinearUpdater * ()(void)>::~__value_func[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void dmlc::parameter::ParamManagerSingleton<xgboost::linear::CoordinateParam>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF5D60 = 0;
  qword_280AF5D68 = 0;
  *&stru_280AF5D28.__r_.__value_.__l.__data_ = 0u;
  *&stru_280AF5D28.__r_.__value_.__r.__words[2] = 0u;
  xmmword_280AF5D48 = 0u;
  qword_280AF5D58 = &qword_280AF5D60;
  std::string::operator=(&stru_280AF5D28, __str);
  std::string::basic_string[abi:ne200100]<0>(&__p, "top_k");
  operator new();
}

void sub_274CA85A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  dmlc::parameter::ParamManager::~ParamManager(&stru_280AF5D28);
  _Unwind_Resume(a1);
}

std::string *xgboost::linear::CoordinateParam::__MANAGER__(xgboost::linear::CoordinateParam *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_1, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_1))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "CoordinateParam");
    dmlc::parameter::ParamManagerSingleton<xgboost::linear::CoordinateParam>::ParamManagerSingleton(&__p);
  }

  return &stru_280AF5D28;
}

void sub_274CA8690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&_MergedGlobals_1);
  _Unwind_Resume(a1);
}

uint64_t dmlc::parameter::FieldEntryNumeric<dmlc::parameter::FieldEntry<int>,int>::set_lower_bound(uint64_t result, int a2)
{
  *(result + 112) = a2;
  *(result + 108) = 1;
  return result;
}

__int128 *dmlc::Registry<xgboost::LinearUpdaterReg>::Get()
{
  {
    qword_280AF7370 = 0;
    dmlc::Registry<xgboost::LinearUpdaterReg>::Get(void)::inst = 0u;
    unk_280AF7348 = 0u;
    xmmword_280AF7358 = 0u;
    qword_280AF7368 = &qword_280AF7370;
    qword_280AF7378 = 0;
    unk_280AF7380 = 850045863;
    xmmword_280AF7388 = 0u;
    unk_280AF7398 = 0u;
    xmmword_280AF73A8 = 0u;
    qword_280AF73B8 = 0;
    __cxa_atexit(dmlc::Registry<xgboost::LinearUpdaterReg>::~Registry, &dmlc::Registry<xgboost::LinearUpdaterReg>::Get(void)::inst, &dword_274CA4000);
  }

  return &dmlc::Registry<xgboost::LinearUpdaterReg>::Get(void)::inst;
}

uint64_t dmlc::Registry<xgboost::LinearUpdaterReg>::__REGISTER__(uint64_t a1, const std::string *a2)
{
  std::mutex::lock((a1 + 72));
  if (!std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__count_unique<std::string>(a1 + 48, &a2->__r_.__value_.__l.__data_))
  {
    operator new();
  }

  v7 = a2;
  v4 = *(std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 48, &a2->__r_.__value_.__l.__data_, &std::piecewise_construct, &v7, &v6) + 56);
  std::mutex::unlock((a1 + 72));
  return v4;
}

void *std::__function::__value_func<xgboost::LinearUpdater * ()(void)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_274CA8C10(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::function<xgboost::LinearUpdater * ()(void)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<xgboost::LinearUpdater * ()(void)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<xgboost::LinearUpdater * ()(void)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<xgboost::LinearUpdater * ()(void)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<xgboost::LinearUpdater * ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__function::__func<xgboost::linear::$_0,std::allocator<xgboost::linear::$_0>,xgboost::LinearUpdater * ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2883DE7D8;
}

{
  *a2 = &unk_2883E0D88;
}

uint64_t std::__function::__value_func<xgboost::LinearUpdater * ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

__int128 *dmlc::Registry<xgboost::MetricReg>::Get()
{
  if ((atomic_load_explicit(&_MergedGlobals_12, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_12))
  {
    qword_280AF6888 = 0;
    xmmword_280AF6860 = 0u;
    unk_280AF6870 = 0u;
    xmmword_280AF6850 = 0u;
    qword_280AF6880 = &qword_280AF6888;
    qword_280AF6890 = 0;
    unk_280AF6898 = 850045863;
    xmmword_280AF68A0 = 0u;
    unk_280AF68B0 = 0u;
    xmmword_280AF68C0 = 0u;
    qword_280AF68D0 = 0;
    __cxa_atexit(dmlc::Registry<xgboost::MetricReg>::~Registry, &xmmword_280AF6850, &dword_274CA4000);
    __cxa_guard_release(&_MergedGlobals_12);
  }

  return &xmmword_280AF6850;
}

void _GLOBAL__sub_I_rank_metric_cc()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = dmlc::Registry<xgboost::MetricReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "ams");
  v1 = dmlc::Registry<xgboost::MetricReg>::__REGISTER__(v0, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "AMS metric for higgs.");
  std::string::operator=(v1 + 1, &__str);
  v12[0] = &unk_2883DEB78;
  v13 = v12;
  std::function<xgboost::Metric * ()(char const*)>::operator=(v1[3].__r_.__value_.__r.__words, v12);
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v12);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::metric::__make_MetricReg_AMS__ = v1;
  v2 = dmlc::Registry<xgboost::MetricReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "pre");
  v3 = dmlc::Registry<xgboost::MetricReg>::__REGISTER__(v2, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "precision@k for rank.");
  std::string::operator=(v3 + 1, &__str);
  v12[0] = &unk_2883DEC80;
  v13 = v12;
  std::function<xgboost::Metric * ()(char const*)>::operator=(v3[3].__r_.__value_.__r.__words, v12);
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v12);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::metric::__make_MetricReg_Precision__ = v3;
  v4 = dmlc::Registry<xgboost::MetricReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "ndcg");
  v5 = dmlc::Registry<xgboost::MetricReg>::__REGISTER__(v4, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "ndcg@k for rank.");
  std::string::operator=(v5 + 1, &__str);
  v12[0] = &unk_2883DEE00;
  v13 = v12;
  std::function<xgboost::Metric * ()(char const*)>::operator=(v5[3].__r_.__value_.__r.__words, v12);
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v12);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::metric::__make_MetricReg_NDCG__ = v5;
  v6 = dmlc::Registry<xgboost::MetricReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "map");
  v7 = dmlc::Registry<xgboost::MetricReg>::__REGISTER__(v6, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "map@k for rank.");
  std::string::operator=(v7 + 1, &__str);
  v12[0] = &unk_2883DEEE8;
  v13 = v12;
  std::function<xgboost::Metric * ()(char const*)>::operator=(v7[3].__r_.__value_.__r.__words, v12);
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v12);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::metric::__make_MetricReg_MAP__ = v7;
  v8 = dmlc::Registry<xgboost::MetricReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "cox-nloglik");
  v9 = dmlc::Registry<xgboost::MetricReg>::__REGISTER__(v8, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Negative log partial likelihood of Cox proportional hazards model.");
  std::string::operator=(v9 + 1, &__str);
  v12[0] = &unk_2883DEFD0;
  v13 = v12;
  std::function<xgboost::Metric * ()(char const*)>::operator=(v9[3].__r_.__value_.__r.__words, v12);
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v12);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::metric::__make_MetricReg_Cox__ = v9;
}

void sub_274CA921C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t dmlc::Registry<xgboost::MetricReg>::__REGISTER__(uint64_t a1, const std::string *a2)
{
  std::mutex::lock((a1 + 72));
  if (!std::__tree<std::__value_type<std::string,xgboost::MetricReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::MetricReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::MetricReg *>>>::__count_unique<std::string>(a1 + 48, &a2->__r_.__value_.__l.__data_))
  {
    operator new();
  }

  v6 = a2;
  v4 = std::__tree<std::__value_type<std::string,xgboost::MetricReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::MetricReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::MetricReg *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 48), &a2->__r_.__value_.__l.__data_, &std::piecewise_construct, &v6)[7];
  std::mutex::unlock((a1 + 72));
  return v4;
}

void *std::__tree<std::__value_type<std::string,xgboost::MetricReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::MetricReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::MetricReg *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  result = *std::__tree<std::__value_type<std::string,xgboost::MetricReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::MetricReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::MetricReg *>>>::__find_equal<std::string>(a1, &v5, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,xgboost::MetricReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::MetricReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::MetricReg *>>>::__count_unique<std::string>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a2 + 23);
    if (v3 >= 0)
    {
      v4 = *(a2 + 23);
    }

    else
    {
      v4 = a2[1];
    }

    if (v3 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v6 = 1;
    do
    {
      v7 = *(v2 + 55);
      if (v7 >= 0)
      {
        v8 = *(v2 + 55);
      }

      else
      {
        v8 = v2[5];
      }

      if (v7 >= 0)
      {
        v9 = (v2 + 4);
      }

      else
      {
        v9 = v2[4];
      }

      if (v8 >= v4)
      {
        v10 = v4;
      }

      else
      {
        v10 = v8;
      }

      v11 = memcmp(v5, v9, v10);
      v12 = v4 < v8;
      if (v11)
      {
        v12 = v11 < 0;
      }

      if (!v12)
      {
        v13 = memcmp(v9, v5, v10);
        v14 = v8 < v4;
        if (v13)
        {
          v14 = v13 < 0;
        }

        if (!v14)
        {
          return v6;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

void *std::__tree<std::__value_type<std::string,xgboost::MetricReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::MetricReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::MetricReg *>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void *std::function<xgboost::Metric * ()(char const*)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::__function::__value_func<xgboost::Metric * ()(char const*)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_274CA9A44(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<xgboost::Metric * ()(char const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__function::__func<xgboost::metric::$_0,std::allocator<xgboost::metric::$_0>,xgboost::Metric * ()(char const*)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2883DEB78;
}

{
  *a2 = &unk_2883E18B8;
}

{
  *a2 = &unk_2883E3270;
}

{
  *a2 = &unk_2883E3B18;
}

{
  *a2 = &unk_2883E7500;
}

uint64_t std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<xgboost::metric::$_1,std::allocator<xgboost::metric::$_1>,xgboost::Metric * ()(char const*)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2883DEC80;
}

{
  *a2 = &unk_2883E1998;
}

{
  *a2 = &unk_2883E3368;
}

{
  *a2 = &unk_2883E3C10;
}

{
  *a2 = &unk_2883E7700;
}

void std::__function::__func<xgboost::metric::$_2,std::allocator<xgboost::metric::$_2>,xgboost::Metric * ()(char const*)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2883DEE00;
}

{
  *a2 = &unk_2883E1A78;
}

void std::__function::__func<xgboost::metric::$_3,std::allocator<xgboost::metric::$_3>,xgboost::Metric * ()(char const*)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2883DEEE8;
}

{
  *a2 = &unk_2883E1B58;
}

void std::__function::__func<xgboost::metric::$_4,std::allocator<xgboost::metric::$_4>,xgboost::Metric * ()(char const*)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2883DEFD0;
}

{
  *a2 = &unk_2883E1C38;
}

void _GLOBAL__sub_I_data_cc(dmlc::data::LibSVMParserParam *a1)
{
  v1 = dmlc::data::LibSVMParserParam::__MANAGER__(a1);
  v2 = dmlc::data::LibFMParserParam::__MANAGER__(v1);
  dmlc::data::CSVParserParam::__MANAGER__(v2);
  dmlc::Registry<dmlc::ParserFactoryReg<unsigned int,float>>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "libsvm");
  v3 = dmlc::Registry<dmlc::ParserFactoryReg<unsigned int,float>>::__REGISTER__(&__p);
  *(v3 + 72) = dmlc::data::CreateLibSVMParser<unsigned int,float>;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF5DB8 = v3;
  dmlc::Registry<dmlc::ParserFactoryReg<unsigned long long,float>>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "libsvm");
  v4 = dmlc::Registry<dmlc::ParserFactoryReg<unsigned long long,float>>::__REGISTER__(&__p);
  *(v4 + 72) = dmlc::data::CreateLibSVMParser<unsigned long long,float>;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF5DC0 = v4;
  dmlc::Registry<dmlc::ParserFactoryReg<unsigned int,float>>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "libfm");
  v5 = dmlc::Registry<dmlc::ParserFactoryReg<unsigned int,float>>::__REGISTER__(&__p);
  *(v5 + 72) = dmlc::data::CreateLibFMParser<unsigned int,float>;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF5DC8 = v5;
  dmlc::Registry<dmlc::ParserFactoryReg<unsigned long long,float>>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "libfm");
  v6 = dmlc::Registry<dmlc::ParserFactoryReg<unsigned long long,float>>::__REGISTER__(&__p);
  *(v6 + 72) = dmlc::data::CreateLibFMParser<unsigned long long,float>;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF5DD0 = v6;
  dmlc::Registry<dmlc::ParserFactoryReg<unsigned int,float>>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "csv");
  v7 = dmlc::Registry<dmlc::ParserFactoryReg<unsigned int,float>>::__REGISTER__(&__p);
  *(v7 + 72) = dmlc::data::CreateCSVParser<unsigned int,float>;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF5DD8 = v7;
  dmlc::Registry<dmlc::ParserFactoryReg<unsigned long long,float>>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "csv");
  v8 = dmlc::Registry<dmlc::ParserFactoryReg<unsigned long long,float>>::__REGISTER__(&__p);
  *(v8 + 72) = dmlc::data::CreateCSVParser<unsigned long long,float>;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF5DE0 = v8;
  dmlc::Registry<dmlc::ParserFactoryReg<unsigned int,int>>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "csv");
  std::mutex::lock(&qword_280AF5FB0);
  v9 = qword_280AF5FA0;
  if (!qword_280AF5FA0)
  {
LABEL_18:
    operator new();
  }

  while (std::less<std::string>::operator()[abi:ne200100](&qword_280AF5F98, &__p.__r_.__value_.__l.__data_, (v9 + 32)))
  {
LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (std::less<std::string>::operator()[abi:ne200100](&qword_280AF5F98, (v9 + 32), &__p.__r_.__value_.__l.__data_))
  {
    v9 += 8;
    goto LABEL_17;
  }

  p_p = &__p;
  v10 = std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,int> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,int> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,int> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&__p.__r_.__value_.__l.__data_, &p_p)[7];
  std::mutex::unlock(&qword_280AF5FB0);
  *(v10 + 72) = dmlc::data::CreateCSVParser<unsigned int,int>;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF5DE8 = v10;
  dmlc::Registry<dmlc::ParserFactoryReg<unsigned long long,int>>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "csv");
  std::mutex::lock(&qword_280AF6148);
  v11 = qword_280AF6138;
  if (!qword_280AF6138)
  {
LABEL_26:
    operator new();
  }

  while (2)
  {
    if (std::less<std::string>::operator()[abi:ne200100](&qword_280AF6130, &__p.__r_.__value_.__l.__data_, (v11 + 32)))
    {
LABEL_25:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_26;
      }

      continue;
    }

    break;
  }

  if (std::less<std::string>::operator()[abi:ne200100](&qword_280AF6130, (v11 + 32), &__p.__r_.__value_.__l.__data_))
  {
    v11 += 8;
    goto LABEL_25;
  }

  p_p = &__p;
  v12 = std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned long long,int> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned long long,int> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned long long,int> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&__p.__r_.__value_.__l.__data_, &p_p)[7];
  std::mutex::unlock(&qword_280AF6148);
  *(v12 + 72) = dmlc::data::CreateCSVParser<unsigned long long,int>;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF5DF0 = v12;
  dmlc::Registry<dmlc::ParserFactoryReg<unsigned int,long long>>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "csv");
  std::mutex::lock(&qword_280AF6038);
  v13 = qword_280AF6028;
  if (!qword_280AF6028)
  {
LABEL_34:
    operator new();
  }

  while (2)
  {
    if (std::less<std::string>::operator()[abi:ne200100](&qword_280AF6020, &__p.__r_.__value_.__l.__data_, (v13 + 32)))
    {
LABEL_33:
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_34;
      }

      continue;
    }

    break;
  }

  if (std::less<std::string>::operator()[abi:ne200100](&qword_280AF6020, (v13 + 32), &__p.__r_.__value_.__l.__data_))
  {
    v13 += 8;
    goto LABEL_33;
  }

  p_p = &__p;
  v14 = std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,long long> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,long long> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,long long> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&__p.__r_.__value_.__l.__data_, &p_p)[7];
  std::mutex::unlock(&qword_280AF6038);
  *(v14 + 72) = dmlc::data::CreateCSVParser<unsigned int,long long>;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF5DF8 = v14;
  dmlc::Registry<dmlc::ParserFactoryReg<unsigned long long,long long>>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "csv");
  std::mutex::lock(&qword_280AF61D0);
  v15 = qword_280AF61C0;
  if (!qword_280AF61C0)
  {
LABEL_42:
    operator new();
  }

  while (2)
  {
    if (std::less<std::string>::operator()[abi:ne200100](&qword_280AF61B8, &__p.__r_.__value_.__l.__data_, (v15 + 32)))
    {
LABEL_41:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_42;
      }

      continue;
    }

    break;
  }

  if (std::less<std::string>::operator()[abi:ne200100](&qword_280AF61B8, (v15 + 32), &__p.__r_.__value_.__l.__data_))
  {
    v15 += 8;
    goto LABEL_41;
  }

  p_p = &__p;
  v16 = std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned long long,long long> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned long long,long long> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned long long,long long> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&__p.__r_.__value_.__l.__data_, &p_p)[7];
  std::mutex::unlock(&qword_280AF61D0);
  *(v16 + 72) = dmlc::data::CreateCSVParser<unsigned long long,long long>;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF5E00 = v16;
}

void sub_274CAAAA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::mutex::unlock(&qword_280AF61D0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *dmlc::data::LibSVMParserParam::__MANAGER__(dmlc::data::LibSVMParserParam *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_2, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_2))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "LibSVMParserParam");
    dmlc::parameter::ParamManagerSingleton<dmlc::data::LibSVMParserParam>::ParamManagerSingleton(&__p);
  }

  return &stru_280AF5E08;
}

void sub_274CAABE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&_MergedGlobals_2);
  _Unwind_Resume(a1);
}

void dmlc::parameter::ParamManagerSingleton<dmlc::data::LibSVMParserParam>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF5E40 = 0;
  qword_280AF5E48 = 0;
  *&stru_280AF5E08.__r_.__value_.__l.__data_ = 0u;
  *&stru_280AF5E08.__r_.__value_.__r.__words[2] = 0u;
  xmmword_280AF5E28 = 0u;
  qword_280AF5E38 = &qword_280AF5E40;
  std::string::operator=(&stru_280AF5E08, __str);
  std::string::basic_string[abi:ne200100]<0>(&__stra, "format");
  operator new();
}

void sub_274CAAECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  dmlc::parameter::ParamManager::~ParamManager(&stru_280AF5E08);
  _Unwind_Resume(a1);
}

void dmlc::parameter::ParamManagerSingleton<dmlc::data::LibFMParserParam>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF5E88 = 0;
  qword_280AF5E90 = 0;
  *&stru_280AF5E50.__r_.__value_.__l.__data_ = 0u;
  *&stru_280AF5E50.__r_.__value_.__r.__words[2] = 0u;
  xmmword_280AF5E70 = 0u;
  qword_280AF5E80 = &qword_280AF5E88;
  std::string::operator=(&stru_280AF5E50, __str);
  std::string::basic_string[abi:ne200100]<0>(&__stra, "format");
  operator new();
}

void sub_274CAB1FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  dmlc::parameter::ParamManager::~ParamManager(&stru_280AF5E50);
  _Unwind_Resume(a1);
}

std::string *dmlc::data::LibFMParserParam::__MANAGER__(dmlc::data::LibFMParserParam *this)
{
  if ((atomic_load_explicit(&qword_280AF5D78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF5D78))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "LibFMParserParam");
    dmlc::parameter::ParamManagerSingleton<dmlc::data::LibFMParserParam>::ParamManagerSingleton(&__p);
  }

  return &stru_280AF5E50;
}

void sub_274CAB314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_280AF5D78);
  _Unwind_Resume(a1);
}

std::string *dmlc::data::CSVParserParam::__MANAGER__(dmlc::data::CSVParserParam *this)
{
  if ((atomic_load_explicit(&qword_280AF5D80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF5D80))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "CSVParserParam");
    dmlc::parameter::ParamManagerSingleton<dmlc::data::CSVParserParam>::ParamManagerSingleton(&__p);
  }

  return &stru_280AF5E98;
}

void sub_274CAB3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_280AF5D80);
  _Unwind_Resume(a1);
}

void dmlc::parameter::ParamManagerSingleton<dmlc::data::CSVParserParam>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF5ED0 = 0;
  qword_280AF5ED8 = 0;
  *&stru_280AF5E98.__r_.__value_.__l.__data_ = 0u;
  *&stru_280AF5E98.__r_.__value_.__r.__words[2] = 0u;
  xmmword_280AF5EB8 = 0u;
  qword_280AF5EC8 = &qword_280AF5ED0;
  std::string::operator=(&stru_280AF5E98, __str);
  std::string::basic_string[abi:ne200100]<0>(&__stra, "format");
  operator new();
}

void sub_274CAB95C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  if (*(v23 - 41) < 0)
  {
    operator delete(*(v23 - 64));
  }

  dmlc::data::CSVParserParam::~CSVParserParam(&a10);
  dmlc::parameter::ParamManager::~ParamManager(&stru_280AF5E98);
  _Unwind_Resume(a1);
}

__int128 *dmlc::Registry<dmlc::ParserFactoryReg<unsigned int,float>>::Get()
{
  if ((atomic_load_explicit(&qword_280AF5D88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF5D88))
  {
    xmmword_280AF5EE0 = 0u;
    *&qword_280AF5EF0 = 0u;
    xmmword_280AF5F00 = 0u;
    qword_280AF5F10 = &qword_280AF5F18;
    qword_280AF5F18 = 0;
    qword_280AF5F20 = 0;
    unk_280AF5F28 = 850045863;
    qword_280AF5F60 = 0;
    xmmword_280AF5F30 = 0u;
    unk_280AF5F40 = 0u;
    xmmword_280AF5F50 = 0u;
    __cxa_atexit(dmlc::Registry<dmlc::ParserFactoryReg<unsigned int,float>>::~Registry, &xmmword_280AF5EE0, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF5D88);
  }

  return &xmmword_280AF5EE0;
}

uint64_t dmlc::Registry<dmlc::ParserFactoryReg<unsigned int,float>>::__REGISTER__(std::string *a1)
{
  std::mutex::lock(&unk_280AF5F28);
  v2 = qword_280AF5F18;
  if (!qword_280AF5F18)
  {
LABEL_6:
    operator new();
  }

  while (std::less<std::string>::operator()[abi:ne200100](&qword_280AF5F10, &a1->__r_.__value_.__l.__data_, (v2 + 32)))
  {
LABEL_5:
    v2 = *v2;
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  if (std::less<std::string>::operator()[abi:ne200100](&qword_280AF5F10, (v2 + 32), &a1->__r_.__value_.__l.__data_))
  {
    v2 += 8;
    goto LABEL_5;
  }

  v5 = a1;
  v3 = std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&a1->__r_.__value_.__l.__data_, &v5)[7];
  std::mutex::unlock(&unk_280AF5F28);
  return v3;
}

uint64_t *std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(const void **a1, __int128 **a2)
{
  v2 = qword_280AF5F18;
  if (!qword_280AF5F18)
  {
    goto LABEL_8;
  }

  v4 = &qword_280AF5F18;
  while (1)
  {
    while (1)
    {
      v5 = v2;
      if (!std::less<std::string>::operator()[abi:ne200100](&qword_280AF5F10, a1, (v2 + 32)))
      {
        break;
      }

      v2 = *v5;
      v4 = v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (!std::less<std::string>::operator()[abi:ne200100](&qword_280AF5F10, (v5 + 32), a1))
    {
      break;
    }

    v4 = (v5 + 8);
    v2 = *(v5 + 8);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  if (!*v4)
  {
LABEL_8:
    operator new();
  }

  return *v4;
}

__int128 *dmlc::Registry<dmlc::ParserFactoryReg<unsigned long long,float>>::Get()
{
  if ((atomic_load_explicit(&qword_280AF5DA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF5DA0))
  {
    qword_280AF60B8 = 0;
    qword_280AF60B0 = 0;
    xmmword_280AF6078 = 0u;
    *&qword_280AF6088 = 0u;
    xmmword_280AF6098 = 0u;
    qword_280AF60A8 = &qword_280AF60B0;
    qword_280AF60C0 = 850045863;
    qword_280AF60F8 = 0;
    xmmword_280AF60C8 = 0u;
    unk_280AF60D8 = 0u;
    xmmword_280AF60E8 = 0u;
    __cxa_atexit(dmlc::Registry<dmlc::ParserFactoryReg<unsigned long long,float>>::~Registry, &xmmword_280AF6078, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF5DA0);
  }

  return &xmmword_280AF6078;
}

uint64_t dmlc::Registry<dmlc::ParserFactoryReg<unsigned long long,float>>::__REGISTER__(std::string *a1)
{
  std::mutex::lock(&qword_280AF60C0);
  v2 = qword_280AF60B0;
  if (!qword_280AF60B0)
  {
LABEL_6:
    operator new();
  }

  while (std::less<std::string>::operator()[abi:ne200100](&qword_280AF60A8, &a1->__r_.__value_.__l.__data_, (v2 + 32)))
  {
LABEL_5:
    v2 = *v2;
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  if (std::less<std::string>::operator()[abi:ne200100](&qword_280AF60A8, (v2 + 32), &a1->__r_.__value_.__l.__data_))
  {
    v2 += 8;
    goto LABEL_5;
  }

  v5 = a1;
  v3 = std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned long long,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned long long,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned long long,float> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&a1->__r_.__value_.__l.__data_, &v5)[7];
  std::mutex::unlock(&qword_280AF60C0);
  return v3;
}

uint64_t *std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned long long,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned long long,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned long long,float> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(const void **a1, __int128 **a2)
{
  v2 = qword_280AF60B0;
  if (!qword_280AF60B0)
  {
    goto LABEL_8;
  }

  v4 = &qword_280AF60B0;
  while (1)
  {
    while (1)
    {
      v5 = v2;
      if (!std::less<std::string>::operator()[abi:ne200100](&qword_280AF60A8, a1, (v2 + 32)))
      {
        break;
      }

      v2 = *v5;
      v4 = v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (!std::less<std::string>::operator()[abi:ne200100](&qword_280AF60A8, (v5 + 32), a1))
    {
      break;
    }

    v4 = (v5 + 8);
    v2 = *(v5 + 8);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  if (!*v4)
  {
LABEL_8:
    operator new();
  }

  return *v4;
}

__int128 *dmlc::Registry<dmlc::ParserFactoryReg<unsigned int,int>>::Get()
{
  if ((atomic_load_explicit(&qword_280AF5D90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF5D90))
  {
    qword_280AF5FA8 = 0;
    qword_280AF5FA0 = 0;
    xmmword_280AF5F68 = 0u;
    *&qword_280AF5F78 = 0u;
    xmmword_280AF5F88 = 0u;
    qword_280AF5F98 = &qword_280AF5FA0;
    qword_280AF5FB0 = 850045863;
    qword_280AF5FE8 = 0;
    xmmword_280AF5FB8 = 0u;
    unk_280AF5FC8 = 0u;
    xmmword_280AF5FD8 = 0u;
    __cxa_atexit(dmlc::Registry<dmlc::ParserFactoryReg<unsigned int,int>>::~Registry, &xmmword_280AF5F68, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF5D90);
  }

  return &xmmword_280AF5F68;
}

uint64_t *std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,int> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,int> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,int> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(const void **a1, __int128 **a2)
{
  v2 = qword_280AF5FA0;
  if (!qword_280AF5FA0)
  {
    goto LABEL_8;
  }

  v4 = &qword_280AF5FA0;
  while (1)
  {
    while (1)
    {
      v5 = v2;
      if (!std::less<std::string>::operator()[abi:ne200100](&qword_280AF5F98, a1, (v2 + 32)))
      {
        break;
      }

      v2 = *v5;
      v4 = v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (!std::less<std::string>::operator()[abi:ne200100](&qword_280AF5F98, (v5 + 32), a1))
    {
      break;
    }

    v4 = (v5 + 8);
    v2 = *(v5 + 8);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  if (!*v4)
  {
LABEL_8:
    operator new();
  }

  return *v4;
}

__int128 *dmlc::Registry<dmlc::ParserFactoryReg<unsigned long long,int>>::Get()
{
  if ((atomic_load_explicit(&qword_280AF5DA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF5DA8))
  {
    qword_280AF6140 = 0;
    qword_280AF6138 = 0;
    xmmword_280AF6100 = 0u;
    *&qword_280AF6110 = 0u;
    xmmword_280AF6120 = 0u;
    qword_280AF6130 = &qword_280AF6138;
    qword_280AF6148 = 850045863;
    qword_280AF6180 = 0;
    xmmword_280AF6150 = 0u;
    unk_280AF6160 = 0u;
    xmmword_280AF6170 = 0u;
    __cxa_atexit(dmlc::Registry<dmlc::ParserFactoryReg<unsigned long long,int>>::~Registry, &xmmword_280AF6100, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF5DA8);
  }

  return &xmmword_280AF6100;
}

uint64_t *std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned long long,int> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned long long,int> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned long long,int> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(const void **a1, __int128 **a2)
{
  v2 = qword_280AF6138;
  if (!qword_280AF6138)
  {
    goto LABEL_8;
  }

  v4 = &qword_280AF6138;
  while (1)
  {
    while (1)
    {
      v5 = v2;
      if (!std::less<std::string>::operator()[abi:ne200100](&qword_280AF6130, a1, (v2 + 32)))
      {
        break;
      }

      v2 = *v5;
      v4 = v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (!std::less<std::string>::operator()[abi:ne200100](&qword_280AF6130, (v5 + 32), a1))
    {
      break;
    }

    v4 = (v5 + 8);
    v2 = *(v5 + 8);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  if (!*v4)
  {
LABEL_8:
    operator new();
  }

  return *v4;
}

__int128 *dmlc::Registry<dmlc::ParserFactoryReg<unsigned int,long long>>::Get()
{
  if ((atomic_load_explicit(&qword_280AF5D98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF5D98))
  {
    qword_280AF6030 = 0;
    qword_280AF6028 = 0;
    xmmword_280AF5FF0 = 0u;
    *&qword_280AF6000 = 0u;
    xmmword_280AF6010 = 0u;
    qword_280AF6020 = &qword_280AF6028;
    qword_280AF6038 = 850045863;
    qword_280AF6070 = 0;
    xmmword_280AF6040 = 0u;
    unk_280AF6050 = 0u;
    xmmword_280AF6060 = 0u;
    __cxa_atexit(dmlc::Registry<dmlc::ParserFactoryReg<unsigned int,long long>>::~Registry, &xmmword_280AF5FF0, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF5D98);
  }

  return &xmmword_280AF5FF0;
}

uint64_t *std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,long long> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,long long> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,long long> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(const void **a1, __int128 **a2)
{
  v2 = qword_280AF6028;
  if (!qword_280AF6028)
  {
    goto LABEL_8;
  }

  v4 = &qword_280AF6028;
  while (1)
  {
    while (1)
    {
      v5 = v2;
      if (!std::less<std::string>::operator()[abi:ne200100](&qword_280AF6020, a1, (v2 + 32)))
      {
        break;
      }

      v2 = *v5;
      v4 = v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (!std::less<std::string>::operator()[abi:ne200100](&qword_280AF6020, (v5 + 32), a1))
    {
      break;
    }

    v4 = (v5 + 8);
    v2 = *(v5 + 8);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  if (!*v4)
  {
LABEL_8:
    operator new();
  }

  return *v4;
}

__int128 *dmlc::Registry<dmlc::ParserFactoryReg<unsigned long long,long long>>::Get()
{
  if ((atomic_load_explicit(&qword_280AF5DB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF5DB0))
  {
    qword_280AF61C8 = 0;
    qword_280AF61C0 = 0;
    xmmword_280AF6188 = 0u;
    *&qword_280AF6198 = 0u;
    xmmword_280AF61A8 = 0u;
    qword_280AF61B8 = &qword_280AF61C0;
    qword_280AF61D0 = 850045863;
    qword_280AF6208 = 0;
    xmmword_280AF61D8 = 0u;
    unk_280AF61E8 = 0u;
    xmmword_280AF61F8 = 0u;
    __cxa_atexit(dmlc::Registry<dmlc::ParserFactoryReg<unsigned long long,long long>>::~Registry, &xmmword_280AF6188, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF5DB0);
  }

  return &xmmword_280AF6188;
}

uint64_t *std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned long long,long long> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned long long,long long> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned long long,long long> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(const void **a1, __int128 **a2)
{
  v2 = qword_280AF61C0;
  if (!qword_280AF61C0)
  {
    goto LABEL_8;
  }

  v4 = &qword_280AF61C0;
  while (1)
  {
    while (1)
    {
      v5 = v2;
      if (!std::less<std::string>::operator()[abi:ne200100](&qword_280AF61B8, a1, (v2 + 32)))
      {
        break;
      }

      v2 = *v5;
      v4 = v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (!std::less<std::string>::operator()[abi:ne200100](&qword_280AF61B8, (v5 + 32), a1))
    {
      break;
    }

    v4 = (v5 + 8);
    v2 = *(v5 + 8);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  if (!*v4)
  {
LABEL_8:
    operator new();
  }

  return *v4;
}

void _GLOBAL__sub_I_updater_colmaker_cc(xgboost::tree::ColMakerTrainParam *a1)
{
  v5[4] = *MEMORY[0x277D85DE8];
  xgboost::tree::ColMakerTrainParam::__MANAGER__(a1);
  v1 = dmlc::Registry<xgboost::TreeUpdaterReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "grow_colmaker");
  v2 = dmlc::Registry<xgboost::TreeUpdaterReg>::__REGISTER__(v1, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Grow tree with parallelization over columns.");
  std::string::operator=(v2 + 1, &__str);
  v5[0] = &unk_2883E0B90;
  v5[3] = v5;
  std::function<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::operator=(v2[3].__r_.__value_.__r.__words, v5);
  std::__function::__value_func<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::~__value_func[abi:ne200100](v5);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::tree::__make_TreeUpdaterReg_ColMaker__ = v2;
}

void sub_274CACCA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::~__value_func[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

std::string *xgboost::tree::ColMakerTrainParam::__MANAGER__(xgboost::tree::ColMakerTrainParam *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_3, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_3))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ColMakerTrainParam");
    dmlc::parameter::ParamManagerSingleton<xgboost::tree::ColMakerTrainParam>::ParamManagerSingleton(&__p);
  }

  return &stru_280AF6218;
}

void sub_274CACD98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&_MergedGlobals_3);
  _Unwind_Resume(a1);
}

void dmlc::parameter::ParamManagerSingleton<xgboost::tree::ColMakerTrainParam>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF6250 = 0;
  qword_280AF6258 = 0;
  *&stru_280AF6218.__r_.__value_.__l.__data_ = 0u;
  *&stru_280AF6218.__r_.__value_.__r.__words[2] = 0u;
  xmmword_280AF6238 = 0u;
  qword_280AF6248 = &qword_280AF6250;
  std::string::operator=(&stru_280AF6218, __str);
  std::string::basic_string[abi:ne200100]<0>(&__stra, "opt_dense_col");
  operator new();
}

void sub_274CAD138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  if (*(v27 - 41) < 0)
  {
    operator delete(*(v27 - 64));
  }

  dmlc::parameter::ParamManager::~ParamManager(&stru_280AF6218);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__find_equal<std::string>(a1, &v6, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

uint64_t dmlc::parameter::FieldEntry<int>::add_enum(uint64_t a1, const void **a2, uint64_t a3)
{
  v33 = a3;
  if (*(a1 + 144) && std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__count_unique<std::string>(a1 + 128, a2))
  {
LABEL_9:
    std::ostringstream::basic_ostringstream[abi:ne200100](v32);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Enum ", 5);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "(", 1);
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = a2[1];
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ": ", 2);
    v17 = MEMORY[0x277C68E20](v16, a3);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " exisit!", 8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ")\n", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Enums: ", 7);
    v19 = *(a1 + 128);
    if (v19 != (a1 + 136))
    {
      do
      {
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "(", 1);
        v22 = *(v19 + 55);
        if (v22 >= 0)
        {
          v23 = (v19 + 4);
        }

        else
        {
          v23 = v19[4];
        }

        if (v22 >= 0)
        {
          v24 = *(v19 + 55);
        }

        else
        {
          v24 = v19[5];
        }

        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ": ", 2);
        v27 = MEMORY[0x277C68E20](v26, *(v19 + 14));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "), ", 3);
        v28 = v19[1];
        if (v28)
        {
          do
          {
            v29 = v28;
            v28 = *v28;
          }

          while (v28);
        }

        else
        {
          do
          {
            v29 = v19[2];
            v30 = *v29 == v19;
            v19 = v29;
          }

          while (!v30);
        }

        v19 = v29;
      }

      while (v29 != (a1 + 136));
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v31);
    exception->__vftable = &unk_2883DE2B0;
  }

  for (i = *(a1 + 160); i; i = *i)
  {
    v7 = *(i + 8);
    if (v7 <= a3)
    {
      if (v7 >= a3)
      {
        goto LABEL_9;
      }

      ++i;
    }
  }

  v32[0] = a2;
  *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 128), a2, &std::piecewise_construct, v32, &v31) + 14) = a3;
  v32[0] = &v33;
  v8 = std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 152, &v33, &std::piecewise_construct, v32);
  std::string::operator=((v8 + 5), a2);
  *(a1 + 120) = 1;
  return a1;
}

void sub_274CAD518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_274CAD600(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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
      v7 = *(v4 + 32);
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

void _GLOBAL__sub_I_updater_shotgun_cc()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v0 = dmlc::Registry<xgboost::LinearUpdaterReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "shotgun");
  v1 = dmlc::Registry<xgboost::LinearUpdaterReg>::__REGISTER__(v0, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Update linear model according to shotgun coordinate descent algorithm.");
  std::string::operator=(v1 + 1, &__str);
  v4[0] = &unk_2883E0D88;
  v4[3] = v4;
  std::function<xgboost::LinearUpdater * ()(void)>::operator=(v1[3].__r_.__value_.__r.__words, v4);
  std::__function::__value_func<xgboost::LinearUpdater * ()(void)>::~__value_func[abi:ne200100](v4);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::linear::__make_LinearUpdaterReg_ShotgunUpdater__ = v1;
}

void sub_274CAD7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<xgboost::LinearUpdater * ()(void)>::~__value_func[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

std::string *xgboost::linear::LinearTrainParam::__MANAGER__(xgboost::linear::LinearTrainParam *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_4, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_4))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "LinearTrainParam");
    dmlc::parameter::ParamManagerSingleton<xgboost::linear::LinearTrainParam>::ParamManagerSingleton(&__p);
  }

  return &stru_280AF6268;
}

void sub_274CAD8E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&_MergedGlobals_4);
  _Unwind_Resume(a1);
}

void dmlc::parameter::ParamManagerSingleton<xgboost::linear::LinearTrainParam>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF62A0 = 0;
  qword_280AF62A8 = 0;
  *&stru_280AF6268.__r_.__value_.__l.__data_ = 0u;
  *&stru_280AF6268.__r_.__value_.__r.__words[2] = 0u;
  xmmword_280AF6288 = 0u;
  qword_280AF6298 = &qword_280AF62A0;
  std::string::operator=(&stru_280AF6268, __str);
  std::string::basic_string[abi:ne200100]<0>(&__stra, "learning_rate");
  operator new();
}

void sub_274CAE068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (*(v33 - 17) < 0)
  {
    operator delete(*(v33 - 40));
  }

  dmlc::parameter::ParamManager::~ParamManager(&stru_280AF6268);
  _Unwind_Resume(a1);
}

uint64_t dmlc::parameter::ParamManager::AddAlias(uint64_t **a1, const void **a2, const void **a3)
{
  if (!std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__count_unique<std::string>((a1 + 6), a2))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v31);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/./parameter.h", 512);
    v7 = dmlc::LogMessageFatal::GetEntry(&v31);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "key ", 4);
    v9 = *(a2 + 23);
    if (v9 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (v9 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = a2[1];
    }

    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " has not been registered in ", 28);
    v14 = *(a1 + 23);
    if (v14 >= 0)
    {
      v15 = a1;
    }

    else
    {
      v15 = *a1;
    }

    if (v14 >= 0)
    {
      v16 = *(a1 + 23);
    }

    else
    {
      v16 = a1[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
    dmlc::LogMessageFatal::~LogMessageFatal(&v31);
  }

  if (std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__count_unique<std::string>((a1 + 6), a3))
  {
    v17 = dmlc::LogMessageFatal::GetEntry(&v31);
    dmlc::LogMessageFatal::Entry::Init(v17, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/./parameter.h", 515);
    v18 = dmlc::LogMessageFatal::GetEntry(&v31);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Alias ", 6);
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
      v22 = a3[1];
    }

    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " has already been registered in ", 32);
    v25 = *(a1 + 23);
    if (v25 >= 0)
    {
      v26 = a1;
    }

    else
    {
      v26 = *a1;
    }

    if (v25 >= 0)
    {
      v27 = *(a1 + 23);
    }

    else
    {
      v27 = a1[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
    dmlc::LogMessageFatal::~LogMessageFatal(&v31);
  }

  v31 = a2;
  v28 = *(std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 6), a2, &std::piecewise_construct, &v31, &v30) + 56);
  v31 = a3;
  result = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 6), a3, &std::piecewise_construct, &v31, &v30);
  *(result + 56) = v28;
  return result;
}

void sub_274CAE33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

std::string *xgboost::gbm::DeprecatedGBLinearModelParam::__MANAGER__(xgboost::gbm::DeprecatedGBLinearModelParam *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_5, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_5))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "DeprecatedGBLinearModelParam");
    dmlc::parameter::ParamManagerSingleton<xgboost::gbm::DeprecatedGBLinearModelParam>::ParamManagerSingleton(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __cxa_atexit(dmlc::parameter::ParamManagerSingleton<xgboost::gbm::DeprecatedGBLinearModelParam>::~ParamManagerSingleton, &stru_280AF62B8, &dword_274CA4000);
    __cxa_guard_release(&_MergedGlobals_5);
  }

  return &stru_280AF62B8;
}

void sub_274CAE40C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&_MergedGlobals_5);
  _Unwind_Resume(a1);
}

std::string *dmlc::parameter::ParamManagerSingleton<xgboost::gbm::DeprecatedGBLinearModelParam>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF62F0 = 0;
  qword_280AF62F8 = 0;
  *&stru_280AF62B8.__r_.__value_.__l.__data_ = 0u;
  *&stru_280AF62B8.__r_.__value_.__r.__words[2] = 0u;
  xmmword_280AF62D8 = 0u;
  qword_280AF62E8 = &qword_280AF62F0;
  return std::string::operator=(&stru_280AF62B8, __str);
}

void _GLOBAL__sub_I_aft_obj_cc()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v0 = dmlc::Registry<xgboost::ObjFunctionReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "survival:aft");
  v1 = dmlc::Registry<xgboost::ObjFunctionReg>::__REGISTER__(v0, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "AFT loss function");
  std::string::operator=(v1 + 1, &__str);
  v4[0] = &unk_2883E17B0;
  v4[3] = v4;
  std::function<xgboost::ObjFunction * ()(void)>::operator=(v1[3].__r_.__value_.__r.__words, v4);
  std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](v4);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::obj::__make_ObjFunctionReg_AFTObj__ = v1;
}

void sub_274CAE590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_elementwise_metric_cc()
{
  v26 = *MEMORY[0x277D85DE8];
  v0 = dmlc::Registry<xgboost::MetricReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "rmse");
  v1 = dmlc::Registry<xgboost::MetricReg>::__REGISTER__(v0, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Rooted mean square error.");
  std::string::operator=(v1 + 1, &__str);
  v24[0] = &unk_2883E18B8;
  v25 = v24;
  std::function<xgboost::Metric * ()(char const*)>::operator=(v1[3].__r_.__value_.__r.__words, v24);
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v24);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::metric::__make_MetricReg_RMSE__ = v1;
  v2 = dmlc::Registry<xgboost::MetricReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "rmsle");
  v3 = dmlc::Registry<xgboost::MetricReg>::__REGISTER__(v2, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Rooted mean square log error.");
  std::string::operator=(v3 + 1, &__str);
  v24[0] = &unk_2883E1998;
  v25 = v24;
  std::function<xgboost::Metric * ()(char const*)>::operator=(v3[3].__r_.__value_.__r.__words, v24);
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v24);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::metric::__make_MetricReg_RMSLE__ = v3;
  v4 = dmlc::Registry<xgboost::MetricReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "mae");
  v5 = dmlc::Registry<xgboost::MetricReg>::__REGISTER__(v4, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Mean absolute error.");
  std::string::operator=(v5 + 1, &__str);
  v24[0] = &unk_2883E1A78;
  v25 = v24;
  std::function<xgboost::Metric * ()(char const*)>::operator=(v5[3].__r_.__value_.__r.__words, v24);
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v24);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::metric::__make_MetricReg_MAE__ = v5;
  v6 = dmlc::Registry<xgboost::MetricReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "mape");
  v7 = dmlc::Registry<xgboost::MetricReg>::__REGISTER__(v6, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Mean absolute percentage error.");
  std::string::operator=(v7 + 1, &__str);
  v24[0] = &unk_2883E1B58;
  v25 = v24;
  std::function<xgboost::Metric * ()(char const*)>::operator=(v7[3].__r_.__value_.__r.__words, v24);
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v24);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::metric::__make_MetricReg_MAPE__ = v7;
  v8 = dmlc::Registry<xgboost::MetricReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "logloss");
  v9 = dmlc::Registry<xgboost::MetricReg>::__REGISTER__(v8, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Negative loglikelihood for logistic regression.");
  std::string::operator=(v9 + 1, &__str);
  v24[0] = &unk_2883E1C38;
  v25 = v24;
  std::function<xgboost::Metric * ()(char const*)>::operator=(v9[3].__r_.__value_.__r.__words, v24);
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v24);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::metric::__make_MetricReg_LogLoss__ = v9;
  v10 = dmlc::Registry<xgboost::MetricReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "mphe");
  v11 = dmlc::Registry<xgboost::MetricReg>::__REGISTER__(v10, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Mean Pseudo-huber error.");
  std::string::operator=(v11 + 1, &__str);
  v24[0] = &unk_2883E1D18;
  v25 = v24;
  std::function<xgboost::Metric * ()(char const*)>::operator=(v11[3].__r_.__value_.__r.__words, v24);
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v24);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::metric::__make_MetricReg_PseudoErrorLoss__ = v11;
  v12 = dmlc::Registry<xgboost::MetricReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "poisson-nloglik");
  v13 = dmlc::Registry<xgboost::MetricReg>::__REGISTER__(v12, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Negative loglikelihood for poisson regression.");
  std::string::operator=(v13 + 1, &__str);
  v24[0] = &unk_2883E1DF8;
  v25 = v24;
  std::function<xgboost::Metric * ()(char const*)>::operator=(v13[3].__r_.__value_.__r.__words, v24);
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v24);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::metric::__make_MetricReg_PossionNegLoglik__ = v13;
  v14 = dmlc::Registry<xgboost::MetricReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "gamma-deviance");
  v15 = dmlc::Registry<xgboost::MetricReg>::__REGISTER__(v14, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Residual deviance for gamma regression.");
  std::string::operator=(v15 + 1, &__str);
  v24[0] = &unk_2883E1ED8;
  v25 = v24;
  std::function<xgboost::Metric * ()(char const*)>::operator=(v15[3].__r_.__value_.__r.__words, v24);
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v24);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::metric::__make_MetricReg_GammaDeviance__ = v15;
  v16 = dmlc::Registry<xgboost::MetricReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "gamma-nloglik");
  v17 = dmlc::Registry<xgboost::MetricReg>::__REGISTER__(v16, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Negative log-likelihood for gamma regression.");
  std::string::operator=(v17 + 1, &__str);
  v24[0] = &unk_2883E1FB8;
  v25 = v24;
  std::function<xgboost::Metric * ()(char const*)>::operator=(v17[3].__r_.__value_.__r.__words, v24);
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v24);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::metric::__make_MetricReg_GammaNLogLik__ = v17;
  v18 = dmlc::Registry<xgboost::MetricReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "error");
  v19 = dmlc::Registry<xgboost::MetricReg>::__REGISTER__(v18, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Binary classification error.");
  std::string::operator=(v19 + 1, &__str);
  v24[0] = &unk_2883E2098;
  v25 = v24;
  std::function<xgboost::Metric * ()(char const*)>::operator=(v19[3].__r_.__value_.__r.__words, v24);
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v24);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::metric::__make_MetricReg_Error__ = v19;
  v20 = dmlc::Registry<xgboost::MetricReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "tweedie-nloglik");
  v21 = dmlc::Registry<xgboost::MetricReg>::__REGISTER__(v20, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "tweedie-nloglik@rho for tweedie regression.");
  std::string::operator=(v21 + 1, &__str);
  v24[0] = &unk_2883E2178;
  v25 = v24;
  std::function<xgboost::Metric * ()(char const*)>::operator=(v21[3].__r_.__value_.__r.__words, v24);
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v24);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::metric::__make_MetricReg_TweedieNLogLik__ = v21;
}

void sub_274CAED3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_rank_obj_cc(xgboost::obj::LambdaRankParam *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  xgboost::obj::LambdaRankParam::__MANAGER__(a1);
  v1 = dmlc::Registry<xgboost::ObjFunctionReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "rank:pairwise");
  v2 = dmlc::Registry<xgboost::ObjFunctionReg>::__REGISTER__(v1, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Pairwise rank objective.");
  std::string::operator=(v2 + 1, &__str);
  v9[0] = &unk_2883E2478;
  v10 = v9;
  std::function<xgboost::ObjFunction * ()(void)>::operator=(v2[3].__r_.__value_.__r.__words, v9);
  std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](v9);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF6750 = v2;
  v3 = dmlc::Registry<xgboost::ObjFunctionReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "rank:ndcg");
  v4 = dmlc::Registry<xgboost::ObjFunctionReg>::__REGISTER__(v3, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "LambdaRank with NDCG as objective.");
  std::string::operator=(v4 + 1, &__str);
  v9[0] = &unk_2883E2580;
  v10 = v9;
  std::function<xgboost::ObjFunction * ()(void)>::operator=(v4[3].__r_.__value_.__r.__words, v9);
  std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](v9);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF6758 = v4;
  v5 = dmlc::Registry<xgboost::ObjFunctionReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "rank:map");
  v6 = dmlc::Registry<xgboost::ObjFunctionReg>::__REGISTER__(v5, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "LambdaRank with MAP as objective.");
  std::string::operator=(v6 + 1, &__str);
  v9[0] = &unk_2883E2688;
  v10 = v9;
  std::function<xgboost::ObjFunction * ()(void)>::operator=(v6[3].__r_.__value_.__r.__words, v9);
  std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](v9);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF6760 = v6;
}

void sub_274CAF144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

std::string *xgboost::obj::LambdaRankParam::__MANAGER__(xgboost::obj::LambdaRankParam *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_9, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_9))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "LambdaRankParam");
    dmlc::parameter::ParamManagerSingleton<xgboost::obj::LambdaRankParam>::ParamManagerSingleton(&__p);
  }

  return &stru_280AF6768;
}

void sub_274CAF258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&_MergedGlobals_9);
  _Unwind_Resume(a1);
}

void dmlc::parameter::ParamManagerSingleton<xgboost::obj::LambdaRankParam>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF67A0 = 0;
  qword_280AF67A8 = 0;
  *&stru_280AF6768.__r_.__value_.__l.__data_ = 0u;
  *&stru_280AF6768.__r_.__value_.__r.__words[2] = 0u;
  xmmword_280AF6788 = 0u;
  qword_280AF6798 = &qword_280AF67A0;
  std::string::operator=(&stru_280AF6768, __str);
  std::string::basic_string[abi:ne200100]<0>(&__p, "num_pairsample");
  operator new();
}

void sub_274CAF560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  dmlc::parameter::ParamManager::~ParamManager(&stru_280AF6768);
  _Unwind_Resume(a1);
}

uint64_t dmlc::parameter::FieldEntryNumeric<dmlc::parameter::FieldEntry<unsigned long>,unsigned long>::set_lower_bound(uint64_t result, uint64_t a2)
{
  *(result + 120) = a2;
  *(result + 112) = 1;
  return result;
}

void _GLOBAL__sub_I_auc_cc()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = dmlc::Registry<xgboost::MetricReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "auc");
  v1 = dmlc::Registry<xgboost::MetricReg>::__REGISTER__(v0, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Receiver Operating Characteristic Area Under the Curve.");
  std::string::operator=(v1 + 1, &__str);
  v6[0] = &unk_2883E3270;
  v7 = v6;
  std::function<xgboost::Metric * ()(char const*)>::operator=(v1[3].__r_.__value_.__r.__words, v6);
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v6);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::metric::__make_MetricReg_EvalAUC__ = v1;
  v2 = dmlc::Registry<xgboost::MetricReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "aucpr");
  v3 = dmlc::Registry<xgboost::MetricReg>::__REGISTER__(v2, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Area under PR curve for both classification and rank.");
  std::string::operator=(v3 + 1, &__str);
  v6[0] = &unk_2883E3368;
  v7 = v6;
  std::function<xgboost::Metric * ()(char const*)>::operator=(v3[3].__r_.__value_.__r.__words, v6);
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v6);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::metric::__make_MetricReg_AUCPR__ = v3;
}

void sub_274CAF760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

std::string *xgboost::PesudoHuberParam::__MANAGER__(xgboost::PesudoHuberParam *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_11, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_11))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "PesudoHuberParam");
    dmlc::parameter::ParamManagerSingleton<xgboost::PesudoHuberParam>::ParamManagerSingleton(&__p);
  }

  return &stru_280AF67F8;
}

void sub_274CAF868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&_MergedGlobals_11);
  _Unwind_Resume(a1);
}

void dmlc::parameter::ParamManagerSingleton<xgboost::PesudoHuberParam>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF6830 = 0;
  qword_280AF6838 = 0;
  *&stru_280AF67F8.__r_.__value_.__l.__data_ = 0u;
  *&stru_280AF67F8.__r_.__value_.__r.__words[2] = 0u;
  xmmword_280AF6818 = 0u;
  qword_280AF6828 = &qword_280AF6830;
  std::string::operator=(&stru_280AF67F8, __str);
  std::string::basic_string[abi:ne200100]<0>(&__p, "huber_slope");
  operator new();
}

void sub_274CAFA00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  dmlc::parameter::ParamManager::~ParamManager(&stru_280AF67F8);
  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_cpu_predictor_cc()
{
  v20[3] = *MEMORY[0x277D85DE8];
  v0 = dmlc::Registry<xgboost::PredictorReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__str, "cpu_predictor");
  std::mutex::lock((v0 + 72));
  v1 = *(v0 + 7);
  if (!v1)
  {
LABEL_25:
    operator new();
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  while (1)
  {
    v4 = *(v1 + 55);
    if (v4 >= 0)
    {
      v5 = *(v1 + 55);
    }

    else
    {
      v5 = v1[5];
    }

    if (v4 >= 0)
    {
      v6 = (v1 + 4);
    }

    else
    {
      v6 = v1[4];
    }

    if (v5 >= size)
    {
      v7 = size;
    }

    else
    {
      v7 = v5;
    }

    v8 = memcmp(p_str, v6, v7);
    v9 = size < v5;
    if (v8)
    {
      v9 = v8 < 0;
    }

    if (v9)
    {
      goto LABEL_24;
    }

    v10 = memcmp(v6, p_str, v7);
    v11 = v5 < size;
    if (v10)
    {
      v11 = v10 < 0;
    }

    if (!v11)
    {
      break;
    }

    ++v1;
LABEL_24:
    v1 = *v1;
    if (!v1)
    {
      goto LABEL_25;
    }
  }

  v18[0] = &__str;
  v12 = std::__tree<std::__value_type<std::string,xgboost::PredictorReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::PredictorReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::PredictorReg *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v0 + 6, &__str.__r_.__value_.__l.__data_, v18)[7];
  std::mutex::unlock((v0 + 72));
  std::string::basic_string[abi:ne200100]<0>(&__p, "Make predictions using CPU.");
  std::string::operator=((v12 + 24), &__p);
  v17[0] = &unk_2883E3460;
  v17[3] = v17;
  v13 = v12 + 72;
  v19 = v18;
  v18[0] = &unk_2883E3460;
  if (v18 != (v12 + 72))
  {
    v14 = *(v12 + 96);
    if (v14 == v13)
    {
      v20[0] = &unk_2883E3460;
      v19 = 0;
      (*(*v14 + 3))(v14, v18);
      (*(**(v12 + 96) + 32))(*(v12 + 96));
      *(v12 + 96) = 0;
      v19 = v18;
      (*(v20[0] + 24))(v20, v12 + 72);
      (*(v20[0] + 32))(v20);
    }

    else
    {
      *(v12 + 72) = &unk_2883E3460;
      v19 = v14;
    }

    *(v12 + 96) = v13;
  }

  std::__function::__value_func<xgboost::Predictor * ()(xgboost::GenericParameter const*)>::~__value_func[abi:ne200100](v18);
  std::__function::__value_func<xgboost::Predictor * ()(xgboost::GenericParameter const*)>::~__value_func[abi:ne200100](v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  xgboost::predictor::__make_PredictorReg_CPUPredictor__ = v12;
}

void sub_274CAFF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  std::mutex::unlock((v20 + 72));
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__int128 *dmlc::Registry<xgboost::PredictorReg>::Get()
{
  {
    qword_280AF7480 = 0;
    dmlc::Registry<xgboost::PredictorReg>::Get(void)::inst = 0u;
    unk_280AF7458 = 0u;
    xmmword_280AF7468 = 0u;
    qword_280AF7478 = &qword_280AF7480;
    qword_280AF7488 = 0;
    unk_280AF7490 = 850045863;
    xmmword_280AF7498 = 0u;
    unk_280AF74A8 = 0u;
    xmmword_280AF74B8 = 0u;
    qword_280AF74C8 = 0;
    __cxa_atexit(dmlc::Registry<xgboost::PredictorReg>::~Registry, &dmlc::Registry<xgboost::PredictorReg>::Get(void)::inst, &dword_274CA4000);
  }

  return &dmlc::Registry<xgboost::PredictorReg>::Get(void)::inst;
}

uint64_t *std::__tree<std::__value_type<std::string,xgboost::PredictorReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::PredictorReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::PredictorReg *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, __int128 **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_26:
    operator new();
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v7 = v3;
      v10 = v3[4];
      v8 = v3 + 4;
      v9 = v10;
      v11 = *(v8 + 23);
      if (v11 >= 0)
      {
        v12 = *(v8 + 23);
      }

      else
      {
        v12 = v8[1];
      }

      if (v11 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      if (v12 >= v5)
      {
        v14 = v5;
      }

      else
      {
        v14 = v12;
      }

      v15 = memcmp(v6, v13, v14);
      v16 = v5 < v12;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (!v16)
      {
        break;
      }

      v3 = *v7;
      if (!*v7)
      {
        goto LABEL_26;
      }
    }

    v17 = memcmp(v13, v6, v14);
    v18 = v12 < v5;
    if (v17)
    {
      v18 = v17 < 0;
    }

    if (!v18)
    {
      return v7;
    }

    v3 = v7[1];
    if (!v3)
    {
      goto LABEL_26;
    }
  }
}

uint64_t std::__function::__value_func<xgboost::Predictor * ()(xgboost::GenericParameter const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

void _GLOBAL__sub_I_updater_refresh_cc()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v0 = dmlc::Registry<xgboost::TreeUpdaterReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "refresh");
  v1 = dmlc::Registry<xgboost::TreeUpdaterReg>::__REGISTER__(v0, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Refresher that refreshes the weight and statistics according to data.");
  std::string::operator=(v1 + 1, &__str);
  v4[0] = &unk_2883E3628;
  v4[3] = v4;
  std::function<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::operator=(v1[3].__r_.__value_.__r.__words, v4);
  std::__function::__value_func<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::~__value_func[abi:ne200100](v4);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::tree::__make_TreeUpdaterReg_TreeRefresher__ = v1;
}

void sub_274CB0368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::~__value_func[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_hinge_cc()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v0 = dmlc::Registry<xgboost::ObjFunctionReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "binary:hinge");
  v1 = dmlc::Registry<xgboost::ObjFunctionReg>::__REGISTER__(v0, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Hinge loss. Expects labels to be in [0,1f]");
  std::string::operator=(v1 + 1, &__str);
  v4[0] = &unk_2883E3798;
  v4[3] = v4;
  std::function<xgboost::ObjFunction * ()(void)>::operator=(v1[3].__r_.__value_.__r.__words, v4);
  std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](v4);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::obj::__make_ObjFunctionReg_HingeObj__ = v1;
}

void sub_274CB04AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_updater_sync_cc()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v0 = dmlc::Registry<xgboost::TreeUpdaterReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "sync");
  v1 = dmlc::Registry<xgboost::TreeUpdaterReg>::__REGISTER__(v0, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Syncher that synchronize the tree in all distributed nodes.");
  std::string::operator=(v1 + 1, &__str);
  v4[0] = &unk_2883E38A0;
  v4[3] = v4;
  std::function<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::operator=(v1[3].__r_.__value_.__r.__words, v4);
  std::__function::__value_func<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::~__value_func[abi:ne200100](v4);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::tree::__make_TreeUpdaterReg_TreeSyncher__ = v1;
}

void sub_274CB05F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::~__value_func[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_multiclass_obj_cc(xgboost::obj::SoftmaxMultiClassParam *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  xgboost::obj::SoftmaxMultiClassParam::__MANAGER__(a1);
  v1 = dmlc::Registry<xgboost::ObjFunctionReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "multi:softmax");
  v2 = dmlc::Registry<xgboost::ObjFunctionReg>::__REGISTER__(v1, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Softmax for multi-class classification, output class index.");
  std::string::operator=(v2 + 1, &__str);
  v7[0] = &unk_2883E3990;
  v8 = v7;
  std::function<xgboost::ObjFunction * ()(void)>::operator=(v2[3].__r_.__value_.__r.__words, v7);
  std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](v7);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF6968 = v2;
  v3 = dmlc::Registry<xgboost::ObjFunctionReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "multi:softprob");
  v4 = dmlc::Registry<xgboost::ObjFunctionReg>::__REGISTER__(v3, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Softmax for multi-class classification, output probability distribution.");
  std::string::operator=(v4 + 1, &__str);
  v7[0] = &unk_2883E3A98;
  v8 = v7;
  std::function<xgboost::ObjFunction * ()(void)>::operator=(v4[3].__r_.__value_.__r.__words, v7);
  std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](v7);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF6970 = v4;
}

void sub_274CB07DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

std::string *xgboost::obj::SoftmaxMultiClassParam::__MANAGER__(xgboost::obj::SoftmaxMultiClassParam *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_13, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_13))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "SoftmaxMultiClassParam");
    dmlc::parameter::ParamManagerSingleton<xgboost::obj::SoftmaxMultiClassParam>::ParamManagerSingleton(&__p);
  }

  return &stru_280AF6978;
}

void sub_274CB08E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&_MergedGlobals_13);
  _Unwind_Resume(a1);
}

void dmlc::parameter::ParamManagerSingleton<xgboost::obj::SoftmaxMultiClassParam>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF69B0 = 0;
  qword_280AF69B8 = 0;
  *&stru_280AF6978.__r_.__value_.__l.__data_ = 0u;
  *&stru_280AF6978.__r_.__value_.__r.__words[2] = 0u;
  xmmword_280AF6998 = 0u;
  qword_280AF69A8 = &qword_280AF69B0;
  std::string::operator=(&stru_280AF6978, __str);
  std::string::basic_string[abi:ne200100]<0>(&__p, "num_class");
  operator new();
}

void sub_274CB0ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  dmlc::parameter::ParamManager::~ParamManager(&stru_280AF6978);
  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_multiclass_metric_cc()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = dmlc::Registry<xgboost::MetricReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "merror");
  v1 = dmlc::Registry<xgboost::MetricReg>::__REGISTER__(v0, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Multiclass classification error.");
  std::string::operator=(v1 + 1, &__str);
  v6[0] = &unk_2883E3B18;
  v7 = v6;
  std::function<xgboost::Metric * ()(char const*)>::operator=(v1[3].__r_.__value_.__r.__words, v6);
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v6);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::metric::__make_MetricReg_MatchError__ = v1;
  v2 = dmlc::Registry<xgboost::MetricReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "mlogloss");
  v3 = dmlc::Registry<xgboost::MetricReg>::__REGISTER__(v2, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Multiclass negative loglikelihood.");
  std::string::operator=(v3 + 1, &__str);
  v6[0] = &unk_2883E3C10;
  v7 = v6;
  std::function<xgboost::Metric * ()(char const*)>::operator=(v3[3].__r_.__value_.__r.__words, v6);
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v6);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::metric::__make_MetricReg_MultiLogLoss__ = v3;
}

void sub_274CB0CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void dmlc::parameter::ParamManagerSingleton<xgboost::common::AFTParam>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF6A00 = 0;
  qword_280AF6A08 = 0;
  *&stru_280AF69C8.__r_.__value_.__l.__data_ = 0u;
  *&stru_280AF69C8.__r_.__value_.__r.__words[2] = 0u;
  xmmword_280AF69E8 = 0u;
  qword_280AF69F8 = &qword_280AF6A00;
  std::string::operator=(&stru_280AF69C8, __str);
  std::string::basic_string[abi:ne200100]<0>(&__stra, "aft_loss_distribution");
  operator new();
}

void sub_274CB1038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  if (*(v27 - 41) < 0)
  {
    operator delete(*(v27 - 64));
  }

  dmlc::parameter::ParamManager::~ParamManager(&stru_280AF69C8);
  _Unwind_Resume(a1);
}

std::string *xgboost::common::AFTParam::__MANAGER__(xgboost::common::AFTParam *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "AFTParam");
    dmlc::parameter::ParamManagerSingleton<xgboost::common::AFTParam>::ParamManagerSingleton(&__p);
  }

  return &stru_280AF69C8;
}

void sub_274CB1188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&_MergedGlobals_14);
  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_updater_histmaker_cc()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v0 = dmlc::Registry<xgboost::TreeUpdaterReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "grow_local_histmaker");
  v1 = dmlc::Registry<xgboost::TreeUpdaterReg>::__REGISTER__(v0, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Tree constructor that uses approximate histogram construction.");
  std::string::operator=(v1 + 1, &__str);
  v4[0] = &unk_2883E3D88;
  v4[3] = v4;
  std::function<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::operator=(v1[3].__r_.__value_.__r.__words, v4);
  std::__function::__value_func<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::~__value_func[abi:ne200100](v4);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::tree::__make_TreeUpdaterReg_LocalHistMaker__ = v1;
}

void sub_274CB12AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::~__value_func[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_gbtree_cc(xgboost::gbm::GBTreeModelParam *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = xgboost::gbm::GBTreeModelParam::__MANAGER__(a1);
  v2 = xgboost::gbm::GBTreeTrainParam::__MANAGER__(v1);
  xgboost::gbm::DartTrainParam::__MANAGER__(v2);
  v3 = dmlc::Registry<xgboost::GradientBoosterReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "gbtree");
  v4 = dmlc::Registry<xgboost::GradientBoosterReg>::__REGISTER__(v3, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Tree booster, gradient boosted trees.");
  std::string::operator=(v4 + 1, &__str);
  v9[0] = &unk_2883E44D0;
  v10 = v9;
  std::function<xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::operator=(v4[3].__r_.__value_.__r.__words, v9);
  std::__function::__value_func<xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::~__value_func[abi:ne200100](v9);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF6A68 = v4;
  v5 = dmlc::Registry<xgboost::GradientBoosterReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "dart");
  v6 = dmlc::Registry<xgboost::GradientBoosterReg>::__REGISTER__(v5, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Tree booster, dart.");
  std::string::operator=(v6 + 1, &__str);
  v9[0] = &unk_2883E4550;
  v10 = v9;
  std::function<xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::operator=(v6[3].__r_.__value_.__r.__words, v9);
  std::__function::__value_func<xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::~__value_func[abi:ne200100](v9);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF6A70 = v6;
}

void sub_274CB14A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::~__value_func[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

std::string *xgboost::gbm::GBTreeModelParam::__MANAGER__(xgboost::gbm::GBTreeModelParam *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_16, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_16))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "GBTreeModelParam");
    dmlc::parameter::ParamManagerSingleton<xgboost::gbm::GBTreeModelParam>::ParamManagerSingleton(&__p);
  }

  return &stru_280AF6A78;
}

void sub_274CB15A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&_MergedGlobals_16);
  _Unwind_Resume(a1);
}

void dmlc::parameter::ParamManagerSingleton<xgboost::gbm::GBTreeModelParam>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF6AB0 = 0;
  qword_280AF6AB8 = 0;
  *&stru_280AF6A78.__r_.__value_.__l.__data_ = 0u;
  *&stru_280AF6A78.__r_.__value_.__r.__words[2] = 0u;
  xmmword_280AF6A98 = 0u;
  qword_280AF6AA8 = &qword_280AF6AB0;
  std::string::operator=(&stru_280AF6A78, __str);
  std::string::basic_string[abi:ne200100]<0>(&__p, "num_trees");
  operator new();
}

void sub_274CB1A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  dmlc::parameter::ParamManager::~ParamManager(&stru_280AF6A78);
  _Unwind_Resume(a1);
}

void dmlc::parameter::ParamManagerSingleton<xgboost::gbm::GBTreeTrainParam>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF6AF8 = 0;
  qword_280AF6B00 = 0;
  xmmword_280AF6AC0 = 0u;
  *algn_280AF6AD0 = 0u;
  xmmword_280AF6AE0 = 0u;
  qword_280AF6AF0 = &qword_280AF6AF8;
  std::string::operator=(&xmmword_280AF6AC0, __str);
  std::string::basic_string[abi:ne200100]<0>(&__stra, "updater_seq");
  operator new();
}

void sub_274CB2260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v33 - 65) < 0)
  {
    operator delete(*(v33 - 88));
  }

  if (*(v33 - 17) < 0)
  {
    operator delete(*(v33 - 40));
  }

  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  dmlc::parameter::ParamManager::~ParamManager(&xmmword_280AF6AC0);
  _Unwind_Resume(a1);
}

__int128 *xgboost::gbm::GBTreeTrainParam::__MANAGER__(xgboost::gbm::GBTreeTrainParam *this)
{
  if ((atomic_load_explicit(&qword_280AF6A58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6A58))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "GBTreeTrainParam");
    dmlc::parameter::ParamManagerSingleton<xgboost::gbm::GBTreeTrainParam>::ParamManagerSingleton(&__p);
  }

  return &xmmword_280AF6AC0;
}

void sub_274CB2464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_280AF6A58);
  _Unwind_Resume(a1);
}

void dmlc::parameter::ParamManagerSingleton<xgboost::gbm::DartTrainParam>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF6B40 = 0;
  qword_280AF6B48 = 0;
  *&stru_280AF6B08.__r_.__value_.__l.__data_ = 0u;
  *&stru_280AF6B08.__r_.__value_.__r.__words[2] = 0u;
  xmmword_280AF6B28 = 0u;
  qword_280AF6B38 = &qword_280AF6B40;
  std::string::operator=(&stru_280AF6B08, __str);
  std::string::basic_string[abi:ne200100]<0>(&__stra, "sample_type");
  operator new();
}

void sub_274CB2D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 17) < 0)
  {
    operator delete(*(v26 - 40));
  }

  dmlc::parameter::ParamManager::~ParamManager(&stru_280AF6B08);
  _Unwind_Resume(a1);
}

std::string *xgboost::gbm::DartTrainParam::__MANAGER__(xgboost::gbm::DartTrainParam *this)
{
  if ((atomic_load_explicit(&qword_280AF6A60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6A60))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "DartTrainParam");
    dmlc::parameter::ParamManagerSingleton<xgboost::gbm::DartTrainParam>::ParamManagerSingleton(&__p);
  }

  return &stru_280AF6B08;
}

void sub_274CB2F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_280AF6A60);
  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_updater_approx_cc()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v0 = dmlc::Registry<xgboost::TreeUpdaterReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "grow_histmaker");
  v1 = dmlc::Registry<xgboost::TreeUpdaterReg>::__REGISTER__(v0, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Tree constructor that uses approximate histogram construction for each node.");
  std::string::operator=(v1 + 1, &__str);
  v4[0] = &unk_2883E4768;
  v4[3] = v4;
  std::function<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::operator=(v1[3].__r_.__value_.__r.__words, v4);
  std::__function::__value_func<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::~__value_func[abi:ne200100](v4);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::tree::__make_TreeUpdaterReg_GlobalHistMaker__ = v1;
}

void sub_274CB304C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::~__value_func[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

__int128 *dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::GHistIndexMatrix>>::Get()
{
  if ((atomic_load_explicit(&qword_280AF6498, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6498))
  {
    qword_280AF6700 = 0;
    qword_280AF66F8 = 0;
    xmmword_280AF66C0 = 0u;
    *algn_280AF66D0 = 0u;
    xmmword_280AF66E0 = 0u;
    qword_280AF66F0 = &qword_280AF66F8;
    qword_280AF6708 = 850045863;
    qword_280AF6740 = 0;
    xmmword_280AF6710 = 0u;
    unk_280AF6720 = 0u;
    xmmword_280AF6730 = 0u;
    __cxa_atexit(dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::GHistIndexMatrix>>::~Registry, &xmmword_280AF66C0, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6498);
  }

  return &xmmword_280AF66C0;
}

void _GLOBAL__sub_I_gradient_index_format_cc()
{
  v20[3] = *MEMORY[0x277D85DE8];
  v0 = dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::GHistIndexMatrix>>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__str, "raw");
  std::mutex::lock((v0 + 72));
  v1 = *(v0 + 7);
  if (!v1)
  {
LABEL_25:
    operator new();
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  while (1)
  {
    v4 = *(v1 + 55);
    if (v4 >= 0)
    {
      v5 = *(v1 + 55);
    }

    else
    {
      v5 = v1[5];
    }

    if (v4 >= 0)
    {
      v6 = (v1 + 4);
    }

    else
    {
      v6 = v1[4];
    }

    if (v5 >= size)
    {
      v7 = size;
    }

    else
    {
      v7 = v5;
    }

    v8 = memcmp(p_str, v6, v7);
    v9 = size < v5;
    if (v8)
    {
      v9 = v8 < 0;
    }

    if (v9)
    {
      goto LABEL_24;
    }

    v10 = memcmp(v6, p_str, v7);
    v11 = v5 < size;
    if (v10)
    {
      v11 = v10 < 0;
    }

    if (!v11)
    {
      break;
    }

    ++v1;
LABEL_24:
    v1 = *v1;
    if (!v1)
    {
      goto LABEL_25;
    }
  }

  v18[0] = &__str;
  v12 = std::__tree<std::__value_type<std::string,xgboost::data::SparsePageFormatReg<xgboost::GHistIndexMatrix> *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::data::SparsePageFormatReg<xgboost::GHistIndexMatrix> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::data::SparsePageFormatReg<xgboost::GHistIndexMatrix> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v0 + 6, &__str.__r_.__value_.__l.__data_, v18)[7];
  std::mutex::unlock((v0 + 72));
  std::string::basic_string[abi:ne200100]<0>(&__p, "Raw GHistIndex binary data format.");
  std::string::operator=((v12 + 24), &__p);
  v17[0] = &unk_2883E49D0;
  v17[3] = v17;
  v13 = v12 + 72;
  v19 = v18;
  v18[0] = &unk_2883E49D0;
  if (v18 != (v12 + 72))
  {
    v14 = *(v12 + 96);
    if (v14 == v13)
    {
      v20[0] = &unk_2883E49D0;
      v19 = 0;
      (*(*v14 + 3))(v14, v18);
      (*(**(v12 + 96) + 32))(*(v12 + 96));
      *(v12 + 96) = 0;
      v19 = v18;
      (*(v20[0] + 24))(v20, v12 + 72);
      (*(v20[0] + 32))(v20);
    }

    else
    {
      *(v12 + 72) = &unk_2883E49D0;
      v19 = v14;
    }

    *(v12 + 96) = v13;
  }

  std::__function::__value_func<xgboost::data::SparsePageFormat<xgboost::GHistIndexMatrix> * ()(void)>::~__value_func[abi:ne200100](v18);
  std::__function::__value_func<xgboost::data::SparsePageFormat<xgboost::GHistIndexMatrix> * ()(void)>::~__value_func[abi:ne200100](v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  xgboost::data::__make_GHistIndexPageFmt_raw__ = v12;
}

void sub_274CB363C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  std::mutex::unlock((v20 + 72));
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,xgboost::data::SparsePageFormatReg<xgboost::GHistIndexMatrix> *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::data::SparsePageFormatReg<xgboost::GHistIndexMatrix> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::data::SparsePageFormatReg<xgboost::GHistIndexMatrix> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, __int128 **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_26:
    operator new();
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v7 = v3;
      v10 = v3[4];
      v8 = v3 + 4;
      v9 = v10;
      v11 = *(v8 + 23);
      if (v11 >= 0)
      {
        v12 = *(v8 + 23);
      }

      else
      {
        v12 = v8[1];
      }

      if (v11 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      if (v12 >= v5)
      {
        v14 = v5;
      }

      else
      {
        v14 = v12;
      }

      v15 = memcmp(v6, v13, v14);
      v16 = v5 < v12;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (!v16)
      {
        break;
      }

      v3 = *v7;
      if (!*v7)
      {
        goto LABEL_26;
      }
    }

    v17 = memcmp(v13, v6, v14);
    v18 = v12 < v5;
    if (v17)
    {
      v18 = v17 < 0;
    }

    if (!v18)
    {
      return v7;
    }

    v3 = v7[1];
    if (!v3)
    {
      goto LABEL_26;
    }
  }
}

uint64_t std::__function::__value_func<xgboost::data::SparsePageFormat<xgboost::GHistIndexMatrix> * ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void _GLOBAL__sub_I_updater_quantile_hist_cc()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v0 = dmlc::Registry<xgboost::TreeUpdaterReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "grow_quantile_histmaker");
  v1 = dmlc::Registry<xgboost::TreeUpdaterReg>::__REGISTER__(v0, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Grow tree using quantized histogram.");
  std::string::operator=(v1 + 1, &__str);
  v4[0] = &unk_2883E4D50;
  v4[3] = v4;
  std::function<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::operator=(v1[3].__r_.__value_.__r.__words, v4);
  std::__function::__value_func<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::~__value_func[abi:ne200100](v4);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::tree::__make_TreeUpdaterReg_QuantileHistMaker__ = v1;
}

void sub_274CB39C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::~__value_func[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t _GLOBAL__sub_I_learner_cc(xgboost::LearnerModelParamLegacy *a1)
{
  v1 = xgboost::LearnerModelParamLegacy::__MANAGER__(a1);
  v2 = xgboost::LearnerTrainParam::__MANAGER__(v1);
  xgboost::GenericParameter::__MANAGER__(v2);
  std::string::basic_string[abi:ne200100]<0>(&xgboost::LearnerConfiguration::kEvalMetric, "eval_metric");
  v3 = MEMORY[0x277D82640];

  return __cxa_atexit(v3, &xgboost::LearnerConfiguration::kEvalMetric, &dword_274CA4000);
}

std::string *xgboost::LearnerModelParamLegacy::__MANAGER__(xgboost::LearnerModelParamLegacy *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_17, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_17))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "LearnerModelParamLegacy");
    dmlc::parameter::ParamManagerSingleton<xgboost::LearnerModelParamLegacy>::ParamManagerSingleton(&__p);
  }

  return &stru_280AF6B68;
}

void sub_274CB3B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&_MergedGlobals_17);
  _Unwind_Resume(a1);
}

void dmlc::parameter::ParamManagerSingleton<xgboost::LearnerModelParamLegacy>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF6BA0 = 0;
  qword_280AF6BA8 = 0;
  *&stru_280AF6B68.__r_.__value_.__l.__data_ = 0u;
  *&stru_280AF6B68.__r_.__value_.__r.__words[2] = 0u;
  xmmword_280AF6B88 = 0u;
  qword_280AF6B98 = &qword_280AF6BA0;
  std::string::operator=(&stru_280AF6B68, __str);
  std::string::basic_string[abi:ne200100]<0>(&__p, "base_score");
  operator new();
}

void sub_274CB4074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  dmlc::parameter::ParamManager::~ParamManager(&stru_280AF6B68);
  _Unwind_Resume(a1);
}

uint64_t dmlc::parameter::FieldEntryNumeric<dmlc::parameter::FieldEntry<unsigned int>,unsigned int>::set_lower_bound(uint64_t result, int a2)
{
  *(result + 112) = a2;
  *(result + 108) = 1;
  return result;
}

std::string *xgboost::LearnerTrainParam::__MANAGER__(xgboost::LearnerTrainParam *this)
{
  if ((atomic_load_explicit(&qword_280AF6B58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6B58))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "LearnerTrainParam");
    dmlc::parameter::ParamManagerSingleton<xgboost::LearnerTrainParam>::ParamManagerSingleton(&__p);
  }

  return &stru_280AF6BB0;
}

void sub_274CB41A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_280AF6B58);
  _Unwind_Resume(a1);
}

void dmlc::parameter::ParamManagerSingleton<xgboost::LearnerTrainParam>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF6BE8 = 0;
  qword_280AF6BF0 = 0;
  *&stru_280AF6BB0.__r_.__value_.__l.__data_ = 0u;
  *&stru_280AF6BB0.__r_.__value_.__r.__words[2] = 0u;
  xmmword_280AF6BD0 = 0u;
  qword_280AF6BE0 = &qword_280AF6BE8;
  std::string::operator=(&stru_280AF6BB0, __str);
  std::string::basic_string[abi:ne200100]<0>(&__stra, "dsplit");
  operator new();
}

void sub_274CB4784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (*(v29 - 65) < 0)
  {
    operator delete(*(v29 - 88));
  }

  if (*(v29 - 17) < 0)
  {
    operator delete(*(v29 - 40));
  }

  if (*(v29 - 41) < 0)
  {
    operator delete(*(v29 - 64));
  }

  xgboost::LearnerTrainParam::~LearnerTrainParam(&a10);
  dmlc::parameter::ParamManager::~ParamManager(&stru_280AF6BB0);
  _Unwind_Resume(a1);
}

void dmlc::parameter::ParamManagerSingleton<xgboost::GenericParameter>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF6C30 = 0;
  qword_280AF6C38 = 0;
  *&stru_280AF6BF8.__r_.__value_.__l.__data_ = 0u;
  *&stru_280AF6BF8.__r_.__value_.__r.__words[2] = 0u;
  xmmword_280AF6C18 = 0u;
  qword_280AF6C28 = &qword_280AF6C30;
  std::string::operator=(&stru_280AF6BF8, __str);
  std::string::basic_string[abi:ne200100]<0>(&__p, "seed");
  operator new();
}

void sub_274CB5040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  dmlc::parameter::ParamManager::~ParamManager(&stru_280AF6BF8);
  _Unwind_Resume(a1);
}

std::string *xgboost::GenericParameter::__MANAGER__(xgboost::GenericParameter *this)
{
  if ((atomic_load_explicit(&qword_280AF6B60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6B60))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "GenericParameter");
    dmlc::parameter::ParamManagerSingleton<xgboost::GenericParameter>::ParamManagerSingleton(&__p);
  }

  return &stru_280AF6BF8;
}

void sub_274CB51A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_280AF6B60);
  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_tree_model_cc(xgboost::TreeParam *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = xgboost::TreeParam::__MANAGER__(a1);
  xgboost::tree::TrainParam::__MANAGER__(v1);
  dmlc::Registry<xgboost::TreeGenReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "text");
  v2 = dmlc::Registry<xgboost::TreeGenReg>::__REGISTER__(&__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Dump text representation of tree");
  std::string::operator=(v2 + 1, &__str);
  v8[0] = &unk_2883E61B8;
  v9 = v8;
  std::function<xgboost::TreeGenerator * ()(xgboost::FeatureMap const&,std::string,BOOL)>::operator=(&v2[3], v8);
  std::__function::__value_func<xgboost::TreeGenerator * ()(xgboost::FeatureMap const&,std::string,BOOL)>::~__value_func[abi:ne200100](v8);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF6C58 = v2;
  dmlc::Registry<xgboost::TreeGenReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "json");
  v3 = dmlc::Registry<xgboost::TreeGenReg>::__REGISTER__(&__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Dump json representation of tree");
  std::string::operator=(v3 + 1, &__str);
  v8[0] = &unk_2883E6350;
  v9 = v8;
  std::function<xgboost::TreeGenerator * ()(xgboost::FeatureMap const&,std::string,BOOL)>::operator=(&v3[3], v8);
  v4 = std::__function::__value_func<xgboost::TreeGenerator * ()(xgboost::FeatureMap const&,std::string,BOOL)>::~__value_func[abi:ne200100](v8);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF6C60 = v3;
  xgboost::GraphvizParam::__MANAGER__(v4);
  dmlc::Registry<xgboost::TreeGenReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "dot");
  v5 = dmlc::Registry<xgboost::TreeGenReg>::__REGISTER__(&__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Dump graphviz representation of tree");
  std::string::operator=(v5 + 1, &__str);
  v8[0] = &unk_2883E6458;
  v9 = v8;
  std::function<xgboost::TreeGenerator * ()(xgboost::FeatureMap const&,std::string,BOOL)>::operator=(&v5[3], v8);
  std::__function::__value_func<xgboost::TreeGenerator * ()(xgboost::FeatureMap const&,std::string,BOOL)>::~__value_func[abi:ne200100](v8);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  qword_280AF6C70 = v5;
}

void sub_274CB5404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<xgboost::TreeGenerator * ()(xgboost::FeatureMap const&,std::string,BOOL)>::~__value_func[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

std::string *xgboost::TreeParam::__MANAGER__(xgboost::TreeParam *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_18))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "TreeParam");
    dmlc::parameter::ParamManagerSingleton<xgboost::TreeParam>::ParamManagerSingleton(&__p);
  }

  return &stru_280AF6FE8;
}

void sub_274CB5518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&_MergedGlobals_18);
  _Unwind_Resume(a1);
}

void dmlc::parameter::ParamManagerSingleton<xgboost::TreeParam>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF7020 = 0;
  qword_280AF7028 = 0;
  *&stru_280AF6FE8.__r_.__value_.__l.__data_ = 0u;
  *&stru_280AF6FE8.__r_.__value_.__r.__words[2] = 0u;
  xmmword_280AF7008 = 0u;
  qword_280AF7018 = &qword_280AF7020;
  std::string::operator=(&stru_280AF6FE8, __str);
  std::string::basic_string[abi:ne200100]<0>(&__p, "num_nodes");
  operator new();
}

void sub_274CB5A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  dmlc::parameter::ParamManager::~ParamManager(&stru_280AF6FE8);
  _Unwind_Resume(a1);
}

std::string *xgboost::tree::TrainParam::__MANAGER__(xgboost::tree::TrainParam *this)
{
  if ((atomic_load_explicit(&qword_280AF6C48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6C48))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "TrainParam");
    dmlc::parameter::ParamManagerSingleton<xgboost::tree::TrainParam>::ParamManagerSingleton(&__p);
  }

  return &stru_280AF7030;
}

void sub_274CB5B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_280AF6C48);
  _Unwind_Resume(a1);
}

void sub_274CB7AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 17) < 0)
  {
    operator delete(*(v26 - 40));
  }

  _Unwind_Resume(exception_object);
}

void dmlc::parameter::ParamManagerSingleton<xgboost::tree::TrainParam>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF7068 = 0;
  qword_280AF7070 = 0;
  *&stru_280AF7030.__r_.__value_.__l.__data_ = 0u;
  *&stru_280AF7030.__r_.__value_.__r.__words[2] = 0u;
  xmmword_280AF7050 = 0u;
  qword_280AF7060 = &qword_280AF7068;
  std::string::operator=(&stru_280AF7030, __str);
  xgboost::tree::TrainParam::__DECLARE__();
}

void sub_274CB7D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  xgboost::tree::TrainParam::~TrainParam(va);
  dmlc::parameter::ParamManager::~ParamManager(&stru_280AF7030);
  _Unwind_Resume(a1);
}

void **std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<xgboost::TreeUpdaterReg const*>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t dmlc::parameter::FieldEntryNumeric<dmlc::parameter::FieldEntry<double>,double>::set_range(uint64_t result, double a2, double a3)
{
  *(result + 120) = a2;
  *(result + 128) = a3;
  *(result + 112) = 257;
  return result;
}

__int128 *dmlc::Registry<xgboost::TreeGenReg>::Get()
{
  if ((atomic_load_explicit(&qword_280AF6C50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6C50))
  {
    qword_280AF7100 = 0;
    qword_280AF70F8 = 0;
    xmmword_280AF70C0 = 0u;
    xmmword_280AF70D0 = 0u;
    xmmword_280AF70E0 = 0u;
    qword_280AF70F0 = &qword_280AF70F8;
    qword_280AF7108 = 850045863;
    xmmword_280AF7110 = 0u;
    xmmword_280AF7120 = 0u;
    xmmword_280AF7130 = 0u;
    qword_280AF7140 = 0;
    __cxa_atexit(dmlc::Registry<xgboost::TreeGenReg>::~Registry, &xmmword_280AF70C0, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6C50);
  }

  return &xmmword_280AF70C0;
}

uint64_t dmlc::Registry<xgboost::TreeGenReg>::__REGISTER__(std::string *a1)
{
  std::mutex::lock(&qword_280AF7108);
  v2 = qword_280AF70F8;
  if (!qword_280AF70F8)
  {
LABEL_6:
    operator new();
  }

  while (std::less<std::string>::operator()[abi:ne200100](&qword_280AF70F0, &a1->__r_.__value_.__l.__data_, (v2 + 32)))
  {
LABEL_5:
    v2 = *v2;
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  if (std::less<std::string>::operator()[abi:ne200100](&qword_280AF70F0, (v2 + 32), &a1->__r_.__value_.__l.__data_))
  {
    v2 += 8;
    goto LABEL_5;
  }

  v5 = a1;
  v3 = std::__tree<std::__value_type<std::string,xgboost::TreeGenReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::TreeGenReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::TreeGenReg *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&a1->__r_.__value_.__l.__data_, &v5)[7];
  std::mutex::unlock(&qword_280AF7108);
  return v3;
}

uint64_t *std::__tree<std::__value_type<std::string,xgboost::TreeGenReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::TreeGenReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::TreeGenReg *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(const void **a1, __int128 **a2)
{
  v2 = qword_280AF70F8;
  if (!qword_280AF70F8)
  {
    goto LABEL_8;
  }

  v4 = &qword_280AF70F8;
  while (1)
  {
    while (1)
    {
      v5 = v2;
      if (!std::less<std::string>::operator()[abi:ne200100](&qword_280AF70F0, a1, (v2 + 32)))
      {
        break;
      }

      v2 = *v5;
      v4 = v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (!std::less<std::string>::operator()[abi:ne200100](&qword_280AF70F0, (v5 + 32), a1))
    {
      break;
    }

    v4 = (v5 + 8);
    v2 = *(v5 + 8);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  if (!*v4)
  {
LABEL_8:
    operator new();
  }

  return *v4;
}

uint64_t std::function<xgboost::TreeGenerator * ()(xgboost::FeatureMap const&,std::string,BOOL)>::operator=(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v8 = v7;
      (*(*v3 + 24))(v3, v7);
    }

    else
    {
      v8 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v7 != a1)
  {
    v4 = v8;
    v5 = *(a1 + 24);
    if (v8 == v7)
    {
      if (v5 == a1)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v7);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v5 == a1)
    {
      (*(*v5 + 24))(*(a1 + 24), v7);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 24);
      *(a1 + 24) = v4;
    }
  }

  std::__function::__value_func<xgboost::TreeGenerator * ()(xgboost::FeatureMap const&,std::string,BOOL)>::~__value_func[abi:ne200100](v7);
  return a1;
}

void sub_274CB865C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<xgboost::TreeGenerator * ()(xgboost::FeatureMap const&,std::string,BOOL)>::~__value_func[abi:ne200100](uint64_t a1)
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

void dmlc::parameter::ParamManagerSingleton<xgboost::GraphvizParam>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF70B8 = 0;
  qword_280AF70B0 = 0;
  *&stru_280AF7078.__r_.__value_.__l.__data_ = 0u;
  *&stru_280AF7078.__r_.__value_.__r.__words[2] = 0u;
  xmmword_280AF7098 = 0u;
  qword_280AF70A8 = &qword_280AF70B0;
  std::string::operator=(&stru_280AF7078, __str);
  std::string::basic_string[abi:ne200100]<0>(&__stra, "yes_color");
  operator new();
}

void sub_274CB8F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 - 81) < 0)
  {
    operator delete(*(v9 - 104));
  }

  if (*(v9 - 33) < 0)
  {
    operator delete(*(v9 - 56));
  }

  if (*(v9 - 57) < 0)
  {
    operator delete(*(v9 - 80));
  }

  xgboost::GraphvizParam::~GraphvizParam(&a9);
  dmlc::parameter::ParamManager::~ParamManager(&stru_280AF7078);
  _Unwind_Resume(a1);
}

std::string *xgboost::GraphvizParam::__MANAGER__(xgboost::GraphvizParam *this)
{
  if ((atomic_load_explicit(&qword_280AF6C68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6C68))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "GraphvizParam");
    dmlc::parameter::ParamManagerSingleton<xgboost::GraphvizParam>::ParamManagerSingleton(&__p);
  }

  return &stru_280AF7078;
}

void sub_274CB907C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_280AF6C68);
  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_survival_metric_cc()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = dmlc::Registry<xgboost::MetricReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "aft-nloglik");
  v1 = dmlc::Registry<xgboost::MetricReg>::__REGISTER__(v0, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Negative log likelihood of Accelerated Failure Time model.");
  std::string::operator=(v1 + 1, &__str);
  v6[0] = &unk_2883E7500;
  v7 = v6;
  std::function<xgboost::Metric * ()(char const*)>::operator=(v1[3].__r_.__value_.__r.__words, v6);
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v6);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::metric::__make_MetricReg_AFTNLogLik__ = v1;
  v2 = dmlc::Registry<xgboost::MetricReg>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__p, "interval-regression-accuracy");
  v3 = dmlc::Registry<xgboost::MetricReg>::__REGISTER__(v2, &__p);
  std::string::basic_string[abi:ne200100]<0>(&__str, &unk_274E44C6E);
  std::string::operator=(v3 + 1, &__str);
  v6[0] = &unk_2883E7700;
  v7 = v6;
  std::function<xgboost::Metric * ()(char const*)>::operator=(v3[3].__r_.__value_.__r.__words, v6);
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v6);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xgboost::metric::__make_MetricReg_IntervalRegressionAccuracy__ = v3;
}

void sub_274CB9268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

__int128 *xgboost::tree::CPUHistMakerTrainParam::__MANAGER__(xgboost::tree::CPUHistMakerTrainParam *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_20))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "CPUHistMakerTrainParam");
    dmlc::parameter::ParamManagerSingleton<xgboost::tree::CPUHistMakerTrainParam>::ParamManagerSingleton(&__p);
  }

  return &xmmword_280AF7160;
}

void sub_274CB936C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&_MergedGlobals_20);
  _Unwind_Resume(a1);
}

void dmlc::parameter::ParamManagerSingleton<xgboost::tree::CPUHistMakerTrainParam>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF7198 = 0;
  qword_280AF71A0 = 0;
  xmmword_280AF7160 = 0u;
  *algn_280AF7170 = 0u;
  xmmword_280AF7180 = 0u;
  qword_280AF7190 = &qword_280AF7198;
  std::string::operator=(&xmmword_280AF7160, __str);
  std::string::basic_string[abi:ne200100]<0>(&__p, "single_precision_histogram");
  operator new();
}

void sub_274CB94FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  dmlc::parameter::ParamManager::~ParamManager(&xmmword_280AF7160);
  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_sparse_page_raw_format_cc()
{
  v21[3] = *MEMORY[0x277D85DE8];
  v0 = dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::SparsePage>>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__str, "raw");
  std::mutex::lock((v0 + 72));
  v1 = *(v0 + 7);
  if (!v1)
  {
LABEL_6:
    operator new();
  }

  while (std::less<std::string>::operator()[abi:ne200100]((v0 + 3), &__str.__r_.__value_.__l.__data_, v1 + 4))
  {
LABEL_5:
    v1 = *v1;
    if (!v1)
    {
      goto LABEL_6;
    }
  }

  if (std::less<std::string>::operator()[abi:ne200100]((v0 + 3), v1 + 4, &__str.__r_.__value_.__l.__data_))
  {
    ++v1;
    goto LABEL_5;
  }

  v19[0] = &__str;
  v2 = std::__tree<std::__value_type<std::string,xgboost::data::SparsePageFormatReg<xgboost::SparsePage> *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::data::SparsePageFormatReg<xgboost::SparsePage> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::data::SparsePageFormatReg<xgboost::SparsePage> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v0 + 3), &__str.__r_.__value_.__l.__data_, v19)[7];
  std::mutex::unlock((v0 + 72));
  std::string::basic_string[abi:ne200100]<0>(&__p, "Raw binary data format.");
  std::string::operator=((v2 + 24), &__p);
  v17[0] = &unk_2883E77E0;
  v18 = v17;
  v3 = v2 + 72;
  v20 = v19;
  v19[0] = &unk_2883E77E0;
  if (v19 != (v2 + 72))
  {
    v4 = *(v2 + 96);
    if (v4 == v3)
    {
      v21[0] = &unk_2883E77E0;
      v20 = 0;
      (*(*v4 + 3))(v4, v19);
      (*(**(v2 + 96) + 32))(*(v2 + 96));
      *(v2 + 96) = 0;
      v20 = v19;
      (*(v21[0] + 24))(v21, v2 + 72);
      (*(v21[0] + 32))(v21);
    }

    else
    {
      *(v2 + 72) = &unk_2883E77E0;
      v20 = v4;
    }

    *(v2 + 96) = v3;
  }

  std::__function::__value_func<xgboost::data::SparsePageFormat<xgboost::SparsePage> * ()(void)>::~__value_func[abi:ne200100](v19);
  std::__function::__value_func<xgboost::data::SparsePageFormat<xgboost::SparsePage> * ()(void)>::~__value_func[abi:ne200100](v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  _MergedGlobals_21 = v2;
  v5 = dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::CSCPage>>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__str, "raw");
  std::mutex::lock((v5 + 72));
  v6 = *(v5 + 7);
  if (!v6)
  {
LABEL_21:
    operator new();
  }

  while (2)
  {
    if (std::less<std::string>::operator()[abi:ne200100]((v5 + 3), &__str.__r_.__value_.__l.__data_, v6 + 4))
    {
LABEL_20:
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_21;
      }

      continue;
    }

    break;
  }

  if (std::less<std::string>::operator()[abi:ne200100]((v5 + 3), v6 + 4, &__str.__r_.__value_.__l.__data_))
  {
    ++v6;
    goto LABEL_20;
  }

  v19[0] = &__str;
  v7 = std::__tree<std::__value_type<std::string,xgboost::data::SparsePageFormatReg<xgboost::CSCPage> *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::data::SparsePageFormatReg<xgboost::CSCPage> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::data::SparsePageFormatReg<xgboost::CSCPage> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v5 + 3), &__str.__r_.__value_.__l.__data_, v19)[7];
  std::mutex::unlock((v5 + 72));
  std::string::basic_string[abi:ne200100]<0>(&__p, "Raw binary data format.");
  std::string::operator=((v7 + 24), &__p);
  v17[0] = &unk_2883E78C8;
  v18 = v17;
  v8 = v7 + 72;
  v20 = v19;
  v19[0] = &unk_2883E78C8;
  if (v19 != (v7 + 72))
  {
    v9 = *(v7 + 96);
    if (v9 == v8)
    {
      v21[0] = &unk_2883E78C8;
      v20 = 0;
      (*(*v9 + 3))(v9, v19);
      (*(**(v7 + 96) + 32))(*(v7 + 96));
      *(v7 + 96) = 0;
      v20 = v19;
      (*(v21[0] + 24))(v21, v7 + 72);
      (*(v21[0] + 32))(v21);
    }

    else
    {
      *(v7 + 72) = &unk_2883E78C8;
      v20 = v9;
    }

    *(v7 + 96) = v8;
  }

  std::__function::__value_func<xgboost::data::SparsePageFormat<xgboost::CSCPage> * ()(void)>::~__value_func[abi:ne200100](v19);
  std::__function::__value_func<xgboost::data::SparsePageFormat<xgboost::CSCPage> * ()(void)>::~__value_func[abi:ne200100](v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  qword_280AF71B0 = v7;
  v10 = dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::SortedCSCPage>>::Get();
  std::string::basic_string[abi:ne200100]<0>(&__str, "raw");
  std::mutex::lock((v10 + 72));
  v11 = *(v10 + 7);
  if (!v11)
  {
LABEL_36:
    operator new();
  }

  while (2)
  {
    if (std::less<std::string>::operator()[abi:ne200100]((v10 + 3), &__str.__r_.__value_.__l.__data_, v11 + 4))
    {
LABEL_35:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_36;
      }

      continue;
    }

    break;
  }

  if (std::less<std::string>::operator()[abi:ne200100]((v10 + 3), v11 + 4, &__str.__r_.__value_.__l.__data_))
  {
    ++v11;
    goto LABEL_35;
  }

  v19[0] = &__str;
  v12 = std::__tree<std::__value_type<std::string,xgboost::data::SparsePageFormatReg<xgboost::SortedCSCPage> *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::data::SparsePageFormatReg<xgboost::SortedCSCPage> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::data::SparsePageFormatReg<xgboost::SortedCSCPage> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v10 + 3), &__str.__r_.__value_.__l.__data_, v19)[7];
  std::mutex::unlock((v10 + 72));
  std::string::basic_string[abi:ne200100]<0>(&__p, "Raw binary data format.");
  std::string::operator=((v12 + 24), &__p);
  v17[0] = &unk_2883E79B0;
  v18 = v17;
  v13 = v12 + 72;
  v20 = v19;
  v19[0] = &unk_2883E79B0;
  if (v19 != (v12 + 72))
  {
    v14 = *(v12 + 96);
    if (v14 == v13)
    {
      v21[0] = &unk_2883E79B0;
      v20 = 0;
      (*(*v14 + 3))(v14, v19);
      (*(**(v12 + 96) + 32))(*(v12 + 96));
      *(v12 + 96) = 0;
      v20 = v19;
      (*(v21[0] + 24))(v21, v12 + 72);
      (*(v21[0] + 32))(v21);
    }

    else
    {
      *(v12 + 72) = &unk_2883E79B0;
      v20 = v14;
    }

    *(v12 + 96) = v13;
  }

  std::__function::__value_func<xgboost::data::SparsePageFormat<xgboost::SortedCSCPage> * ()(void)>::~__value_func[abi:ne200100](v19);
  std::__function::__value_func<xgboost::data::SparsePageFormat<xgboost::SortedCSCPage> * ()(void)>::~__value_func[abi:ne200100](v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  qword_280AF71B8 = v12;
}

void sub_274CBA1FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  std::mutex::unlock((v20 + 72));
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__int128 *dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::SparsePage>>::Get()
{
  if ((atomic_load_explicit(&_MergedGlobals_8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_8))
  {
    qword_280AF64D8 = 0;
    unk_280AF64B0 = 0u;
    unk_280AF64C0 = 0u;
    xmmword_280AF64A0 = 0u;
    qword_280AF64D0 = &qword_280AF64D8;
    qword_280AF64E0 = 0;
    unk_280AF64E8 = 850045863;
    unk_280AF64F0 = 0u;
    unk_280AF6500 = 0u;
    unk_280AF6510 = 0u;
    qword_280AF6520 = 0;
    __cxa_atexit(dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::SparsePage>>::~Registry, &xmmword_280AF64A0, &dword_274CA4000);
    __cxa_guard_release(&_MergedGlobals_8);
  }

  return &xmmword_280AF64A0;
}

uint64_t *std::__tree<std::__value_type<std::string,xgboost::data::SparsePageFormatReg<xgboost::SparsePage> *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::data::SparsePageFormatReg<xgboost::SparsePage> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::data::SparsePageFormatReg<xgboost::SparsePage> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2, __int128 **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v7 = v4;
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a2, v4 + 4))
      {
        break;
      }

      v4 = *v7;
      v5 = v7;
      if (!*v7)
      {
        goto LABEL_7;
      }
    }

    if (!std::less<std::string>::operator()[abi:ne200100](a1, v7 + 4, a2))
    {
      break;
    }

    v5 = v7 + 1;
    v4 = v7[1];
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  if (!*v5)
  {
LABEL_7:
    operator new();
  }

  return *v5;
}

uint64_t std::__function::__value_func<xgboost::data::SparsePageFormat<xgboost::SparsePage> * ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

__int128 *dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::CSCPage>>::Get()
{
  if ((atomic_load_explicit(&qword_280AF6480, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6480))
  {
    qword_280AF6560 = 0;
    unk_280AF6538 = 0u;
    unk_280AF6548 = 0u;
    xmmword_280AF6528 = 0u;
    qword_280AF6558 = &qword_280AF6560;
    qword_280AF6568 = 0;
    unk_280AF6570 = 850045863;
    unk_280AF6578 = 0u;
    qword_280AF65A8 = 0;
    xmmword_280AF6588 = 0u;
    unk_280AF6598 = 0u;
    __cxa_atexit(dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::CSCPage>>::~Registry, &xmmword_280AF6528, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6480);
  }

  return &xmmword_280AF6528;
}

uint64_t *std::__tree<std::__value_type<std::string,xgboost::data::SparsePageFormatReg<xgboost::CSCPage> *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::data::SparsePageFormatReg<xgboost::CSCPage> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::data::SparsePageFormatReg<xgboost::CSCPage> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2, __int128 **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v7 = v4;
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a2, v4 + 4))
      {
        break;
      }

      v4 = *v7;
      v5 = v7;
      if (!*v7)
      {
        goto LABEL_7;
      }
    }

    if (!std::less<std::string>::operator()[abi:ne200100](a1, v7 + 4, a2))
    {
      break;
    }

    v5 = v7 + 1;
    v4 = v7[1];
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  if (!*v5)
  {
LABEL_7:
    operator new();
  }

  return *v5;
}

uint64_t std::__function::__value_func<xgboost::data::SparsePageFormat<xgboost::CSCPage> * ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

__int128 *dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::SortedCSCPage>>::Get()
{
  if ((atomic_load_explicit(&qword_280AF6488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6488))
  {
    xmmword_280AF65B0 = 0u;
    unk_280AF65C0 = 0u;
    xmmword_280AF65D0 = 0u;
    qword_280AF65E0 = &qword_280AF65E8;
    qword_280AF65E8 = 0;
    qword_280AF65F0 = 0;
    unk_280AF65F8 = 850045863;
    qword_280AF6630 = 0;
    xmmword_280AF6600 = 0u;
    unk_280AF6610 = 0u;
    xmmword_280AF6620 = 0u;
    __cxa_atexit(dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::SortedCSCPage>>::~Registry, &xmmword_280AF65B0, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6488);
  }

  return &xmmword_280AF65B0;
}

uint64_t *std::__tree<std::__value_type<std::string,xgboost::data::SparsePageFormatReg<xgboost::SortedCSCPage> *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::data::SparsePageFormatReg<xgboost::SortedCSCPage> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::data::SparsePageFormatReg<xgboost::SortedCSCPage> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2, __int128 **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v7 = v4;
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a2, v4 + 4))
      {
        break;
      }

      v4 = *v7;
      v5 = v7;
      if (!*v7)
      {
        goto LABEL_7;
      }
    }

    if (!std::less<std::string>::operator()[abi:ne200100](a1, v7 + 4, a2))
    {
      break;
    }

    v5 = v7 + 1;
    v4 = v7[1];
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  if (!*v5)
  {
LABEL_7:
    operator new();
  }

  return *v5;
}

uint64_t std::__function::__value_func<xgboost::data::SparsePageFormat<xgboost::SortedCSCPage> * ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

std::string *xgboost::GlobalConfiguration::__MANAGER__(xgboost::GlobalConfiguration *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_24, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_24))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "GlobalConfiguration");
    dmlc::parameter::ParamManagerSingleton<xgboost::GlobalConfiguration>::ParamManagerSingleton(&__p);
  }

  return &stru_280AF7268;
}

void sub_274CBAA7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&_MergedGlobals_24);
  _Unwind_Resume(a1);
}

void dmlc::parameter::ParamManagerSingleton<xgboost::GlobalConfiguration>::ParamManagerSingleton(std::string *__str)
{
  qword_280AF72A0 = 0;
  qword_280AF72A8 = 0;
  *&stru_280AF7268.__r_.__value_.__l.__data_ = 0u;
  *&stru_280AF7268.__r_.__value_.__r.__words[2] = 0u;
  xmmword_280AF7288 = 0u;
  qword_280AF7298 = &qword_280AF72A0;
  std::string::operator=(&stru_280AF7268, __str);
  std::string::basic_string[abi:ne200100]<0>(&__p, "verbosity");
  operator new();
}

void sub_274CBAD78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  dmlc::parameter::ParamManager::~ParamManager(&stru_280AF7268);
  _Unwind_Resume(a1);
}

uint64_t dmlc::parameter::FieldEntryNumeric<dmlc::parameter::FieldEntry<int>,int>::set_range(uint64_t result, int a2, int a3)
{
  *(result + 112) = a2;
  *(result + 116) = a3;
  *(result + 108) = 257;
  return result;
}

void dmlc::parameter::ParamManager::~ParamManager(dmlc::parameter::ParamManager *this)
{
  v3 = *(this + 3);
  v2 = *(this + 4);
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        (*(*v5 + 8))(v5);
        v3 = *(this + 3);
        v2 = *(this + 4);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::destroy(this + 48, *(this + 7));
  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279EF9A70, MEMORY[0x277D825F0]);
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

void dmlc::parameter::FieldEntry<float>::~FieldEntry(void **a1)
{
  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(a1);

  JUMPOUT(0x277C69180);
}

float dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<float>,float>::SetDefault(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v19);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Required parameter ", 19);
    v5 = *(a1 + 47);
    if (v5 >= 0)
    {
      v6 = a1 + 24;
    }

    else
    {
      v6 = *(a1 + 24);
    }

    if (v5 >= 0)
    {
      v7 = *(a1 + 47);
    }

    else
    {
      v7 = *(a1 + 32);
    }

    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " of ", 4);
    v12 = *(a1 + 48);
    v11 = a1 + 48;
    v10 = v12;
    v13 = *(v11 + 23);
    if (v13 >= 0)
    {
      v14 = v11;
    }

    else
    {
      v14 = v10;
    }

    if (v13 >= 0)
    {
      v15 = *(v11 + 23);
    }

    else
    {
      v15 = *(v11 + 8);
    }

    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v14, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " is not presented", 17);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v18);
    exception->__vftable = &unk_2883DE2B0;
  }

  result = *(a1 + 104);
  *(a2 + *(a1 + 96)) = result;
  return result;
}

void sub_274CBB158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
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

void dmlc::parameter::FieldEntry<float>::Set(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  *(a2 + *(a1 + 96)) = dmlc::stof(a3, &v13);
  v4 = *(a3 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a3 + 8);
  }

  __p.__r_.__value_.__r.__words[0] = v4;
  if (v13 > v4)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v13, &__p);
  }

  v5 = *(a3 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a3 + 8);
  }

  if (v13 < v5)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v12);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Some trailing characters could not be parsed: '", 47);
    std::string::basic_string(&__p, a3, v13, 0xFFFFFFFFFFFFFFFFLL, &v14);
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

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, p_p, size);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "'", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &__p);
    exception->__vftable = &unk_2883DE2B0;
  }
}

void sub_274CBB65C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v16)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a15);
    __cxa_end_catch();
    JUMPOUT(0x274CBB71CLL);
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t dmlc::parameter::FieldEntryNumeric<dmlc::parameter::FieldEntry<float>,float>::Check(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + *(result + 96));
  if (*(result + 108))
  {
    v3 = *(result + 112);
    if (*(result + 109))
    {
      if (v2 < v3 || v2 > *(result + 116))
      {
        v4 = result;
        std::ostringstream::basic_ostringstream[abi:ne200100](v67);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "value ", 6);
        v5 = std::ostream::operator<<();
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " for Parameter ", 15);
        v7 = *(v4 + 47);
        if (v7 >= 0)
        {
          v8 = v4 + 24;
        }

        else
        {
          v8 = *(v4 + 24);
        }

        if (v7 >= 0)
        {
          v9 = *(v4 + 47);
        }

        else
        {
          v9 = *(v4 + 32);
        }

        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " exceed bound [", 15);
        v11 = std::ostream::operator<<();
        v66.__r_.__value_.__s.__data_[0] = 44;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, &v66, 1);
        v12 = std::ostream::operator<<();
        v66.__r_.__value_.__s.__data_[0] = 93;
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v66, 1);
        v66.__r_.__value_.__s.__data_[0] = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v66, 1);
        v14 = *(v4 + 47);
        if (v14 >= 0)
        {
          v15 = v4 + 24;
        }

        else
        {
          v15 = *(v4 + 24);
        }

        if (v14 >= 0)
        {
          v16 = *(v4 + 47);
        }

        else
        {
          v16 = *(v4 + 32);
        }

        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, v15, v16);
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ": ", 2);
        v21 = *(v4 + 72);
        v20 = v4 + 72;
        v19 = v21;
        v22 = *(v20 + 23);
        if (v22 >= 0)
        {
          v23 = v20;
        }

        else
        {
          v23 = v19;
        }

        if (v22 >= 0)
        {
          v24 = *(v20 + 23);
        }

        else
        {
          v24 = *(v20 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v23, v24);
        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::runtime_error::runtime_error(exception, &v66);
        exception->__vftable = &unk_2883DE2B0;
      }
    }

    else if (v2 < v3)
    {
      v46 = result;
      std::ostringstream::basic_ostringstream[abi:ne200100](v67);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "value ", 6);
      v47 = std::ostream::operator<<();
      v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, " for Parameter ", 15);
      v49 = *(v46 + 47);
      if (v49 >= 0)
      {
        v50 = v46 + 24;
      }

      else
      {
        v50 = *(v46 + 24);
      }

      if (v49 >= 0)
      {
        v51 = *(v46 + 47);
      }

      else
      {
        v51 = *(v46 + 32);
      }

      v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, v50, v51);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " should be greater equal to ", 28);
      v53 = std::ostream::operator<<();
      v66.__r_.__value_.__s.__data_[0] = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, &v66, 1);
      v54 = *(v46 + 47);
      if (v54 >= 0)
      {
        v55 = v46 + 24;
      }

      else
      {
        v55 = *(v46 + 24);
      }

      if (v54 >= 0)
      {
        v56 = *(v46 + 47);
      }

      else
      {
        v56 = *(v46 + 32);
      }

      v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, v55, v56);
      v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, ": ", 2);
      v61 = *(v46 + 72);
      v60 = v46 + 72;
      v59 = v61;
      v62 = *(v60 + 23);
      if (v62 >= 0)
      {
        v63 = v60;
      }

      else
      {
        v63 = v59;
      }

      if (v62 >= 0)
      {
        v64 = *(v60 + 23);
      }

      else
      {
        v64 = *(v60 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, v63, v64);
      v65 = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::runtime_error::runtime_error(v65, &v66);
      v65->__vftable = &unk_2883DE2B0;
    }
  }

  else if ((*(result + 109) & 1) != 0 && v2 > *(result + 116))
  {
    v26 = result;
    std::ostringstream::basic_ostringstream[abi:ne200100](v67);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "value ", 6);
    v27 = std::ostream::operator<<();
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " for Parameter ", 15);
    v29 = *(v26 + 47);
    if (v29 >= 0)
    {
      v30 = v26 + 24;
    }

    else
    {
      v30 = *(v26 + 24);
    }

    if (v29 >= 0)
    {
      v31 = *(v26 + 47);
    }

    else
    {
      v31 = *(v26 + 32);
    }

    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " should be smaller equal to ", 28);
    v33 = std::ostream::operator<<();
    v66.__r_.__value_.__s.__data_[0] = 10;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, &v66, 1);
    v34 = *(v26 + 47);
    if (v34 >= 0)
    {
      v35 = v26 + 24;
    }

    else
    {
      v35 = *(v26 + 24);
    }

    if (v34 >= 0)
    {
      v36 = *(v26 + 47);
    }

    else
    {
      v36 = *(v26 + 32);
    }

    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, v35, v36);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ": ", 2);
    v41 = *(v26 + 72);
    v40 = v26 + 72;
    v39 = v41;
    v42 = *(v40 + 23);
    if (v42 >= 0)
    {
      v43 = v40;
    }

    else
    {
      v43 = v39;
    }

    if (v42 >= 0)
    {
      v44 = *(v40 + 23);
    }

    else
    {
      v44 = *(v40 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v43, v44);
    v45 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(v45, &v66);
    v45->__vftable = &unk_2883DE2B0;
  }

  return result;
}

void sub_274CBBBAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a17);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<float>,float>::GetStringValue(void *a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  (*(*a1 + 64))(a1, &v6, *(a2 + a1[12]));
  std::stringbuf::str();
  v6 = *MEMORY[0x277D82828];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x277D82828] + 24);
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v10);
}

void sub_274CBBD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<float>,float>::GetFieldInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  std::string::operator=(a2, (a1 + 24));
  std::string::operator=((a2 + 24), (a1 + 48));
  v4 = *(a1 + 71);
  if (v4 >= 0)
  {
    v5 = a1 + 48;
  }

  else
  {
    v5 = *(a1 + 48);
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 71);
  }

  else
  {
    v6 = *(a1 + 56);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v5, v6);
  if (*(a1 + 8) == 1)
  {
    LOBYTE(v9) = 44;
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, &v9, 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " optional, default=", 19);
    (*(*a1 + 56))(a1, &v11);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, ", required", 10);
  }

  std::stringbuf::str();
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  *(a2 + 48) = v9;
  *(a2 + 64) = v10;
  std::string::operator=((a2 + 72), (a1 + 72));
  v11 = *MEMORY[0x277D82828];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v15);
}

void sub_274CBBFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::ostringstream::~ostringstream(va);
  dmlc::ParamFieldInfo::~ParamFieldInfo(v7);
  _Unwind_Resume(a1);
}

void dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(void **this)
{
  *this = &unk_2883DE1F8;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_274CBC210(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x277C690D0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x277C690D0](a1 + 112);
  return a1;
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x277C69050](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_274CBC4F8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277C68DB0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x277C68DC0](v13);
  return a1;
}

void sub_274CBC660(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x277C68DC0](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x274CBC640);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_274CBC894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::ParamError::~ParamError(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x277C69180);
}

void dmlc::Error::~Error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x277C69180);
}

float dmlc::stof(unsigned __int8 *a1, void *a2)
{
  if ((a1[23] & 0x80u) == 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v10 = 0;
  v4 = dmlc::ParseFloat<float,true>(v3, &v10);
  if (*__error() == 34 && v4 == INFINITY)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Out of range value");
    v8 = off_279EF9A78;
    v9 = MEMORY[0x277D825F8];
    goto LABEL_14;
  }

  if (v10 == v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "No conversion could be performed");
    v8 = off_279EF9A80;
    v9 = MEMORY[0x277D82610];
LABEL_14:
    __cxa_throw(exception, v8, v9);
  }

  if (a2)
  {
    *a2 = v10 - v3;
  }

  return v4;
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828F8] + 16);
  return result;
}

float dmlc::ParseFloat<float,true>(unsigned __int8 *a1, unsigned __int8 **a2)
{
  while (1)
  {
    v3 = *a1;
    if (v3 > 0x2D)
    {
      break;
    }

    if (((1 << v3) & 0x100003600) == 0)
    {
      if (v3 == 43)
      {
        ++a1;
      }

      else if (v3 == 45)
      {
        v4 = 0;
        ++a1;
        goto LABEL_9;
      }

      break;
    }

    ++a1;
  }

  v4 = 1;
LABEL_9:
  v5 = 0;
  v6 = a1 + 8;
  while ((a1[v5] | 0x20) == aInfinity[v5])
  {
    if (++v5 == 8)
    {
      goto LABEL_15;
    }
  }

  v6 = &a1[v5];
  if (v5 == 8 || v5 == 3)
  {
LABEL_15:
    if (a2)
    {
      *a2 = v6;
    }

    result = -INFINITY;
    if (v4)
    {
      return INFINITY;
    }

    return result;
  }

  v8 = 0;
  v9 = a1 + 3;
  while ((a1[v8] | 0x20) == aNan[v8])
  {
    if (++v8 == 3)
    {
      if (*v9 == 40)
      {
        for (i = (a1 + 4); ; ++i)
        {
          v11 = *i;
          if ((v11 - 48) >= 0xA && v11 != 95 && (v11 & 0xFFFFFFDF) - 65 > 0x19)
          {
            break;
          }
        }

        v33 = 41;
        if (v11 != 41)
        {
          dmlc::LogCheckFormat<char,char>(i, &v33);
        }

        v9 = (i + 1);
      }

      if (a2)
      {
        *a2 = v9;
      }

      return NAN;
    }
  }

  v13 = *a1;
  result = 0.0;
  if (v13 - 48 <= 9)
  {
    v14 = 0;
    do
    {
      v14 = 10 * v14 + v13 - 48;
      v15 = *++a1;
      v13 = v15;
    }

    while (v15 - 48 < 0xA);
    result = v14;
  }

  if (v13 == 46)
  {
    v16 = *++a1;
    v13 = v16;
    v17 = 0.0;
    if (v16 - 48 <= 9)
    {
      v18 = 0;
      v19 = 0;
      v20 = 1;
      do
      {
        v21 = 10 * v19 + v13 - 48;
        if (v18 < 0x13)
        {
          v20 *= 10;
          v19 = v21;
        }

        ++v18;
        v22 = *++a1;
        v13 = v22;
      }

      while (v22 - 48 < 0xA);
      v17 = v19 / v20;
    }

    result = result + v17;
  }

  if ((v13 | 0x20) != 0x65)
  {
    v26 = a1;
    goto LABEL_78;
  }

  v23 = a1[1];
  v24 = v23 == 45 || v23 == 43;
  v25 = 1;
  if (v24)
  {
    v25 = 2;
    v26 = a1 + 2;
  }

  else
  {
    v26 = a1 + 1;
  }

  v13 = a1[v25];
  v27 = 1.0;
  if (v13 - 48 <= 9)
  {
    v28 = 0;
    do
    {
      v28 = v13 + 10 * v28 - 48;
      v29 = *++v26;
      v13 = v29;
    }

    while (v29 - 48 < 0xA);
    if (v28 >= 0x27)
    {
LABEL_54:
      *__error() = 34;
      if (a2)
      {
        *a2 = v26;
      }

      return INFINITY;
    }

    if (v28 == 38)
    {
      v31 = result > 3.4028;
      if (v23 == 45)
      {
        v31 = result < 1.1755;
      }

      if (v31)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v27 = 1.0;
      if (v28 <= 7)
      {
        goto LABEL_73;
      }
    }

    v27 = 1.0;
    do
    {
      v27 = v27 * 100000000.0;
      v28 -= 8;
    }

    while (v28 > 7);
LABEL_73:
    while (v28)
    {
      v27 = v27 * 10.0;
      --v28;
    }
  }

  if (v23 == 45)
  {
    result = result / v27;
  }

  else
  {
    result = result * v27;
  }

LABEL_78:
  if ((v13 | 0x20) == 0x66)
  {
    v32 = v26 + 1;
  }

  else
  {
    v32 = v26;
  }

  if (a2)
  {
    *a2 = v32;
  }

  if (!v4)
  {
    return -result;
  }

  return result;
}

void sub_274CBCEB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::LogCheckFormat<char,char>(char *a1, char *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " (", 2);
  v10 = *a1;
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v10, 1);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " vs. ", 5);
  v10 = *a2;
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v10, 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
  operator new();
}

void sub_274CBD0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x277C69180](v9, 0x1012C40EC159624, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a9);
  _Unwind_Resume(a1);
}

void dmlc::LogCheckFormat<unsigned long,unsigned long>(void *a1, void *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " (", 2);
  v6 = MEMORY[0x277C68E50](v5, *a1);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " vs. ", 5);
  v8 = MEMORY[0x277C68E50](v7, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
  operator new();
}

void sub_274CBD298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x277C69180](v3, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void *dmlc::LogMessageFatal::Entry::Init(std::string *this, const char *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, &unk_274E44C6E);
  std::string::operator=(this + 3, &__p);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](&this->__r_.__value_.__l.__size_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::ios_base::clear((this + *(this->__r_.__value_.__r.__words[0] - 24)), 0);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this, "[", 1);
  v7 = dmlc::DateLogger::HumanDate(v17);
  v8 = strlen(v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "] ", 2);
  v11 = strlen(a2);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, a2, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ":", 1);
  v14 = MEMORY[0x277C68E20](v13, a3);
  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ": ", 2);
}

void sub_274CBD414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t dmlc::LogMessageFatal::Entry::ThreadLocal(dmlc::LogMessageFatal::Entry *this)
{
  {
    v3 = dmlc::LogMessageFatal::Entry::ThreadLocal(void)::result(&dmlc::LogMessageFatal::Entry::ThreadLocal(void)::result);
    std::ostringstream::basic_ostringstream[abi:ne200100](v3);
    _tlv_atexit(dmlc::LogMessageFatal::Entry::~Entry, v3);
  }

  return dmlc::LogMessageFatal::Entry::ThreadLocal(void)::result(&dmlc::LogMessageFatal::Entry::ThreadLocal(void)::result);
}

void dmlc::LogMessageFatal::Entry::~Entry(std::locale *this)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  this->__locale_ = *MEMORY[0x277D82828];
  *(this + *(v3 - 24)) = v2[3];
  this[1].__locale_ = (MEMORY[0x277D82878] + 16);
  if (SHIBYTE(this[11].__locale_) < 0)
  {
    operator delete(this[9].__locale_);
  }

  this[1].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(this + 2);
  std::ostream::~ostream();
  MEMORY[0x277C690D0](&this[14]);
}

dmlc::DateLogger *dmlc::DateLogger::HumanDate(dmlc::DateLogger *this)
{
  v5 = time(0);
  v2 = localtime_r(&v5, &v4);
  snprintf(this, 9uLL, "%02d:%02d:%02d", v2->tm_hour, v2->tm_min, v2->tm_sec);
  return this;
}

void dmlc::LogMessageFatal::~LogMessageFatal(dmlc::LogMessageFatal *this)
{
  Entry = dmlc::LogMessageFatal::GetEntry(this);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Entry, "\n", 1);
  v4 = getenv("DMLC_LOG_STACK_TRACE_DEPTH");
  if (v4 && (v12 = 0, sscanf(v4, "%zu", &v12) == 1))
  {
    v5 = v12 + 1;
  }

  else
  {
    v5 = 10;
  }

  dmlc::StackTrace(1uLL, v5);
  if ((v11 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "\n", 1);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  dmlc::LogMessageFatal::GetEntry(this);
  dmlc::LogMessageFatal::Entry::Finalize(exception);
}

uint64_t *dmlc::StackTrace(unint64_t this, unint64_t a3)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  std::vector<void *>::vector[abi:ne200100](v20, a3);
  v5 = backtrace(v20[0], a3);
  if (v5 > this)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "Stack trace:\n", 13);
  }

  v6 = backtrace_symbols(v20[0], v5);
  v7 = v6;
  if (v6)
  {
    v8 = v5 - this;
    if (v5 > this)
    {
      v9 = this - this;
      v10 = &v6[this];
      do
      {
        dmlc::Demangle(__p, *v10);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "  [bt] (", 8);
        v12 = MEMORY[0x277C68E50](v11, v9);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ") ", 2);
        if ((v19 & 0x80u) == 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }

        if ((v19 & 0x80u) == 0)
        {
          v15 = v19;
        }

        else
        {
          v15 = __p[1];
        }

        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n", 1);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }

        ++v9;
        ++v10;
        --v8;
      }

      while (v8);
    }
  }

  free(v7);
  std::stringbuf::str();
  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }

  v21 = *MEMORY[0x277D82828];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x277D82828] + 24);
  v22 = MEMORY[0x277D82878] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v25);
}

void dmlc::LogMessageFatal::Entry::Finalize(std::runtime_error *a2@<X8>)
{
  std::stringbuf::str();
  std::runtime_error::runtime_error(a2, &v3);
  a2->__vftable = &unk_2883DE270;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_274CBDAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::Demangle(uint64_t *__return_ptr a1@<X8>, dmlc *this@<X0>)
{
  std::string::basic_string[abi:ne200100]<0>(&__str, this);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size >= 2)
  {
    v6 = p_str + size;
    v7 = size;
    v8 = p_str;
    do
    {
      v9 = memchr(v8, 95, v7 - 1);
      if (!v9)
      {
        break;
      }

      if (*v9 == 23135)
      {
        if (v9 == v6)
        {
          break;
        }

        v10 = v9 - p_str;
        if (v9 - p_str == -1)
        {
          break;
        }

        if (size <= v10)
        {
          goto LABEL_24;
        }

        v11 = v9 - p_str;
        while (1)
        {
          v12 = p_str->__r_.__value_.__s.__data_[v11];
          if (v12 == 32 || v12 == 43)
          {
            break;
          }

          if (size == ++v11)
          {
            goto LABEL_24;
          }
        }

        if (size == v11)
        {
LABEL_24:
          v11 = -1;
        }

        else if (!v11)
        {
          break;
        }

        std::string::basic_string(&v36, &__str, 0, v10, &v24);
        std::string::basic_string(&v35, &__str, v10, v11 - v10, &v24);
        std::string::basic_string[abi:ne200100](__dst, &__str, v11);
        status = 0;
        outlen = -1;
        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &v35;
        }

        else
        {
          v13 = v35.__r_.__value_.__r.__words[0];
        }

        v14 = __cxa_demangle(v13, 0, &outlen, &status);
        v15 = v14;
        if (v14 && !status && outlen)
        {
          std::string::basic_string[abi:ne200100]<0>(v29, v14);
          std::ostringstream::basic_ostringstream[abi:ne200100](&v24);
          if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = &v36;
          }

          else
          {
            v16 = v36.__r_.__value_.__r.__words[0];
          }

          if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v17 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v17 = v36.__r_.__value_.__l.__size_;
          }

          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, v16, v17);
          if ((v30 & 0x80u) == 0)
          {
            v19 = v29;
          }

          else
          {
            v19 = v29[0];
          }

          if ((v30 & 0x80u) == 0)
          {
            v20 = v30;
          }

          else
          {
            v20 = v29[1];
          }

          v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
          if ((v34 & 0x80u) == 0)
          {
            v22 = __dst;
          }

          else
          {
            v22 = __dst[0];
          }

          if ((v34 & 0x80u) == 0)
          {
            v23 = v34;
          }

          else
          {
            v23 = __dst[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
          std::stringbuf::str();
          v24 = *MEMORY[0x277D82828];
          *(&v24 + *(v24 - 24)) = *(MEMORY[0x277D82828] + 24);
          v25 = MEMORY[0x277D82878] + 16;
          if (v27 < 0)
          {
            operator delete(v26[7].__locale_);
          }

          v25 = MEMORY[0x277D82868] + 16;
          std::locale::~locale(v26);
          std::ostream::~ostream();
          MEMORY[0x277C690D0](&v28);
          if (v30 < 0)
          {
            operator delete(v29[0]);
          }

          free(v15);
          if (v34 < 0)
          {
            operator delete(__dst[0]);
          }

          if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v35.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v36.__r_.__value_.__l.__data_);
          }

          goto LABEL_68;
        }

        if (v14)
        {
          free(v14);
        }

        if (v34 < 0)
        {
          operator delete(__dst[0]);
        }

        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v35.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        break;
      }

      v8 = (v9 + 1);
      v7 = v6 - v8;
    }

    while (v6 - v8 >= 2);
  }

  std::string::basic_string[abi:ne200100]<0>(a1, this);
LABEL_68:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_274CBDE88(_Unwind_Exception *a1)
{
  if (*(v2 - 177) < 0)
  {
    operator delete(*(v2 - 200));
  }

  free(v1);
  if (*(v2 - 137) < 0)
  {
    operator delete(*(v2 - 160));
  }

  if (*(v2 - 113) < 0)
  {
    operator delete(*(v2 - 136));
  }

  if (*(v2 - 89) < 0)
  {
    operator delete(*(v2 - 112));
  }

  if (*(v2 - 65) < 0)
  {
    operator delete(*(v2 - 88));
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<void *>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<void *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_274CBDF84(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<void *>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<void *>>(a1, a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279EF9A78, MEMORY[0x277D825F8]);
}

void *std::string::basic_string[abi:ne200100](void *__dst, uint64_t *a2, unint64_t a3)
{
  v3 = a2;
  v5 = *(a2 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = a2[1];
    if (v5 < a3)
    {
      goto LABEL_13;
    }

    v3 = *a2;
  }

  else if (v5 < a3)
  {
LABEL_13:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v6 = v5 - a3;
  if (v5 - a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = v6;
  if (v5 != a3)
  {
    memmove(__dst, v3 + a3, v6);
  }

  *(__dst + v6) = 0;
  return __dst;
}

void std::default_delete<std::string>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x277C69180);
  }
}

void dmlc::ParamFieldInfo::~ParamFieldInfo(void **this)
{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
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

void std::__function::__func<xgboost::obj::$_0,std::allocator<xgboost::obj::$_0>,xgboost::ObjFunction * ()(void)>::~__func()
{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

void std::__function::__func<xgboost::obj::$_0,std::allocator<xgboost::obj::$_0>,xgboost::ObjFunction * ()(void)>::__clone()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void std::__function::__func<xgboost::obj::$_0,std::allocator<xgboost::obj::$_0>,xgboost::ObjFunction * ()(void)>::operator()()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

uint64_t std::__function::__func<xgboost::obj::$_0,std::allocator<xgboost::obj::$_0>,xgboost::ObjFunction * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<xgboost::obj::$_0,std::allocator<xgboost::obj::$_0>,xgboost::ObjFunction * ()(void)>::target_type()
{
}

{
}

{
}

{
}

{
}

void xgboost::obj::RegLossObj<xgboost::obj::LinearSquareLoss>::~RegLossObj(void *a1)
{
  *a1 = &unk_2883DD6C0;
  xgboost::HostDeviceVector<float>::~HostDeviceVector();
}

{
  *a1 = &unk_2883DD6C0;
  xgboost::HostDeviceVector<float>::~HostDeviceVector();
}

void xgboost::obj::RegLossObj<xgboost::obj::LinearSquareLoss>::LoadConfig(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "reg_loss_param");
  v4 = (*(**a2 + 24))(*a2, __p);
  xgboost::FromJson<xgboost::obj::RegLossParam>(v7, *v4, (a1 + 24));
  v8 = v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274CBE534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::obj::RegLossObj<xgboost::obj::LinearSquareLoss>::SaveConfig(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v5, "reg:squarederror");
  v7[0] = &unk_2883E6F38;
  v7[1] = 0;
  *v8 = *v5;
  v9 = v6;
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v3 = (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=(v3, v7);
}

void xgboost::obj::RegLossObj<xgboost::obj::LinearSquareLoss>::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::obj::RegLossParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v2, (a1 + 24), a2);
  v3 = v2;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void xgboost::obj::RegLossObj<xgboost::obj::LinearSquareLoss>::GetGradient(uint64_t a1, uint64_t **a2, void *a3, uint64_t a4, uint64_t **a5)
{
  v48 = *MEMORY[0x277D85DE8];
  v9 = ((*a2)[1] - **a2) >> 2;
  v46.__ptr_ = 0;
  std::vector<xgboost::detail::GradientPairInternal<float>>::resize(*a5, v9, &v46);
  v10 = *(*(a1 + 8) + 24);
  v11 = **(a1 + 16);
  *v11 = 1065353216;
  v12 = 0.0;
  if (*(a3[9] + 8) == *a3[9])
  {
    v12 = 1.0;
  }

  *(v11 + 4) = *(a1 + 28);
  *(v11 + 8) = v12;
  if (v9 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v9;
  }

  if (v10 < 0)
  {
    v13 = 1;
  }

  v14 = v9 / v13;
  if (v9 % v13)
  {
    ++v14;
  }

  v15 = a3[5];
  if (v15 <= 1)
  {
    v15 = 1;
  }

  if (v10 < 0)
  {
    v19 = 0;
    v46.__ptr_ = 0;
    v47.__m_.__sig = 850045863;
    memset(v47.__m_.__opaque, 0, sizeof(v47.__m_.__opaque));
    do
    {
      v20 = *(a1 + 16);
      v21 = *v20;
      v22 = v20[1];
      if (*v20)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22 == 0;
      }

      if (!v23)
      {
        goto LABEL_56;
      }

      v24 = **a5;
      if (!v24 && (*a5)[1] != 0)
      {
        goto LABEL_56;
      }

      v26 = **a2;
      if (!v26 && (*a2)[1] != 0)
      {
        goto LABEL_56;
      }

      v28 = a3[3];
      v29 = *v28;
      v30 = v28[1];
      if (!v29 && v30 != 0)
      {
        goto LABEL_56;
      }

      v32 = a3[9];
      v34 = *v32;
      v33 = v32[1];
      if (!v34 && v33 != 0)
      {
        goto LABEL_56;
      }

      v36 = v22 - v21;
      v37 = v19 * v14;
      v38 = v19 * v14 + v14;
      if (v38 >= v9)
      {
        v38 = v9;
      }

      if (v36 <= 4 || v36 == 8)
      {
LABEL_56:
        std::terminate();
      }

      if (v37 < v38)
      {
        v39 = *(v21 + 4);
        v40 = *(v21 + 8);
        do
        {
          v41 = 1.0;
          if (v40 == 0.0)
          {
            v41 = *(v34 + 4 * (v37 / v15));
          }

          v42 = *(v29 + 4 * v37);
          if (v42 == 1.0)
          {
            v41 = v39 * v41;
          }

          v43 = (v24 + 8 * v37);
          *v43 = (*(v26 + 4 * v37) - v42) * v41;
          v43[1] = v41;
          ++v37;
        }

        while (v37 != v38);
      }

      ++v19;
    }

    while (v19 != v13);
    dmlc::OMPException::Rethrow(&v46);
    std::mutex::~mutex(&v47);
    std::exception_ptr::~exception_ptr(&v46);
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v46);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/../common/transform.h", 160);
    v17 = dmlc::LogMessageFatal::GetEntry(&v46);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Not part of device code. WITH_CUDA: ", 36);
    MEMORY[0x277C68DF0](v18, 0);
    dmlc::LogMessageFatal::~LogMessageFatal(&v46);
  }

  if (***(a1 + 16) == 0.0)
  {
    v44 = dmlc::LogMessageFatal::GetEntry(&v46);
    dmlc::LogMessageFatal::Entry::Init(v44, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/regression_obj.cu", 138);
    v45 = dmlc::LogMessageFatal::GetEntry(&v46);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, &unk_274E44C6E, 0);
    dmlc::LogMessageFatal::~LogMessageFatal(&v46);
  }
}

void sub_274CBEA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::mutex::~mutex((v9 + 8));
  std::exception_ptr::~exception_ptr(&a9);
  _Unwind_Resume(a1);
}

void xgboost::obj::RegLossObj<xgboost::obj::LinearSquareLoss>::PredTransform(uint64_t a1, uint64_t **a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = **a2;
  v3 = (*a2)[1];
  v6.__ptr_ = 0;
  v7.__m_.__sig = 850045863;
  memset(v7.__m_.__opaque, 0, sizeof(v7.__m_.__opaque));
  if (v3 != v2 && v2 == 0 && v3 != 0)
  {
    std::terminate();
  }

  dmlc::OMPException::Rethrow(&v6);
  std::mutex::~mutex(&v7);
  std::exception_ptr::~exception_ptr(&v6);
}

void sub_274CBEB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9, uint64_t a10)
{
  std::mutex::~mutex(&a10);
  std::exception_ptr::~exception_ptr(&a9);
  _Unwind_Resume(a1);
}

uint64_t xgboost::obj::RegLossObj<xgboost::obj::LinearSquareLoss>::Targets(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) <= 1uLL)
  {
    return 1;
  }

  else
  {
    return *(a2 + 40);
  }
}

uint64_t xgboost::ObjFunction::Targets(xgboost::ObjFunction *this, const xgboost::MetaInfo *a2)
{
  if (*(a2 + 5) >= 2uLL)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v5);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/objective.h", 86);
    v3 = dmlc::LogMessageFatal::GetEntry(&v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "multioutput is not supported by current objective function", 58);
    dmlc::LogMessageFatal::~LogMessageFatal(&v5);
  }

  return 1;
}

void xgboost::FromJson<xgboost::obj::RegLossParam>(void *a1, _DWORD *a2, _BYTE *a3)
{
  v5 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(a2);
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v6 = *(v5 + 2);
  v7 = (v5 + 24);
  if (v6 != (v5 + 24))
  {
    do
    {
      v8 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v6[7]);
      v16 = v6 + 4;
      v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v13, v6 + 4, &std::piecewise_construct, &v16, &v15);
      v5 = std::string::operator=((v9 + 7), (v8 + 16));
      v10 = v6[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != v7);
  }

  if (*a3 == 1)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    xgboost::obj::RegLossParam::__MANAGER__(v5);
    dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF5BF8, a3, v13, v14, 0, a1, 0);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    xgboost::obj::RegLossParam::__MANAGER__(v5);
    dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF5BF8, a3, v13, v14, a1, 0);
    *a3 = 1;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v13, v14[0]);
}

void sub_274CBEDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va1);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(va, v6);
  _Unwind_Resume(a1);
}

void *xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(_DWORD *a1)
{
  if (a1[3] == 3)
  {
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v25);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/json.h", 79);
    v4 = dmlc::LogMessageFatal::GetEntry(&v25);
    xgboost::Value::TypeStr(a1, &v20);
    v5 = std::string::insert(&v20, 0, "Invalid cast, from ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v21, " to ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v15[1] = 0x300000000;
    v17[0] = 0;
    v17[1] = 0;
    v15[0] = &unk_2883E6E50;
    v16 = v17;
    xgboost::Value::TypeStr(v15, __p);
    if ((v19 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v10 = v19;
    }

    else
    {
      v10 = __p[1];
    }

    v11 = std::string::append(&v22, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v24 = v11->__r_.__value_.__r.__words[2];
    v23 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (v24 >= 0)
    {
      v13 = &v23;
    }

    else
    {
      v13 = v23;
    }

    if (v24 >= 0)
    {
      v14 = HIBYTE(v24);
    }

    else
    {
      v14 = *(&v23 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v13, v14);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    v15[0] = &unk_2883E6E50;
    std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(&v16, v17[0]);
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

    dmlc::LogMessageFatal::~LogMessageFatal(&v25);
  }
}

void sub_274CBF06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(v32 + 16, a13);
  if (*(v33 - 89) < 0)
  {
    operator delete(*(v33 - 112));
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  dmlc::LogMessageFatal::~LogMessageFatal((v33 - 49));
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(a1, *(a2 + 1));
    v4 = *(a2 + 7);
    if (v4 && atomic_fetch_add_explicit(v4 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*v4 + 8))(v4);
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void *xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(xgboost::Value *a1)
{
  if (*(a1 + 3))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v26);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/json.h", 79);
    v3 = dmlc::LogMessageFatal::GetEntry(&v26);
    xgboost::Value::TypeStr(a1, &v21);
    v4 = std::string::insert(&v21, 0, "Invalid cast, from ");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v22, " to ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    *v16 = 0u;
    v17 = 0;
    v18 = 0;
    v15 = &unk_2883E6F38;
    xgboost::Value::TypeStr(&v15, __p);
    if ((v20 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v9 = v20;
    }

    else
    {
      v9 = __p[1];
    }

    v10 = std::string::append(&v23, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v25 = v10->__r_.__value_.__r.__words[2];
    v24 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v25 >= 0)
    {
      v12 = &v24;
    }

    else
    {
      v12 = v24;
    }

    if (v25 >= 0)
    {
      v13 = HIBYTE(v25);
    }

    else
    {
      v13 = *(&v24 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v12, v13);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    v15 = &unk_2883E6F38;
    if (SHIBYTE(v18) < 0)
    {
      operator delete(v16[1]);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    dmlc::LogMessageFatal::~LogMessageFatal(&v26);
  }

  else
  {
  }
}

void sub_274CBF428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (*(v35 - 73) < 0)
  {
    operator delete(*(v35 - 96));
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  dmlc::LogMessageFatal::~LogMessageFatal((v35 - 33));
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

char **std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5, uint64_t a6, uint64_t a7)
{
  if (a3 != a4)
  {
    v9 = a3;
    v11 = a1 + 56;
    while (1)
    {
      v12 = v9 + 4;
      v13 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(a1 + 48, v9 + 4);
      if (v11 == v13)
      {
        break;
      }

      v14 = *(v13 + 56);
      v43[0] = v14;
      if (!v14)
      {
        goto LABEL_8;
      }

      (*(*v14 + 24))(v14, a2, v9 + 7);
      (*(*v43[0] + 32))(v43[0], a2);
      if (a7)
      {
        std::__tree<dmlc::parameter::FieldAccessEntry *>::__emplace_unique_key_args<dmlc::parameter::FieldAccessEntry *,dmlc::parameter::FieldAccessEntry * const&>(a7, v43, v43);
      }

LABEL_46:
      v28 = v9[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v9[2];
          v26 = *v29 == v9;
          v9 = v29;
        }

        while (!v26);
      }

      v9 = v29;
      if (v29 == a4)
      {
        return;
      }
    }

    v43[0] = 0;
LABEL_8:
    if (a6)
    {
      std::pair<std::string,std::string>::pair[abi:ne200100]<std::string const,std::string,0>(&v40, v9 + 2);
      std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](a6, &v40);
      if (v42 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }
    }

    else if (a5)
    {
      if (a5 != 2)
      {
        goto LABEL_53;
      }

      v15 = *(v9 + 55);
      if (v15 < 0)
      {
        v17 = v9[5];
        if (v17 <= 4)
        {
          goto LABEL_53;
        }

        v18 = *v12;
        v16 = (*v12 + v17);
      }

      else
      {
        if (v15 < 5)
        {
          goto LABEL_53;
        }

        v16 = v12 + v15;
        v17 = *(v9 + 55);
        v18 = v9 + 4;
      }

      v19 = v18;
      while (1)
      {
        v20 = memchr(v19, 95, v17 - 1);
        if (!v20)
        {
          goto LABEL_53;
        }

        if (*v20 == 24415)
        {
          break;
        }

        v19 = v20 + 1;
        v17 = v16 - v19;
        if (v16 - v19 < 2)
        {
          goto LABEL_53;
        }
      }

      if (v20 != v18)
      {
        goto LABEL_53;
      }

      if ((v15 & 0x80000000) != 0)
      {
        v21 = v9[4];
        v22 = v9[5];
      }

      else
      {
        v21 = v9 + 4;
        v22 = v15;
      }

      v23 = &v21[v22];
      if (v22)
      {
        v24 = v21;
        v25 = &v21[v22];
        while (1)
        {
          ++v24;
          while (*(v24 - 1) != 95)
          {
            v26 = v24++ == v23;
            if (v26)
            {
              goto LABEL_41;
            }
          }

          if (v24 == v23)
          {
            break;
          }

          if (*v24 == 95)
          {
            v25 = v24 - 1;
          }
        }
      }

      else
      {
        v25 = v21;
      }

LABEL_41:
      v27 = v25 - v21;
      if (v25 == v23)
      {
        v27 = -1;
      }

      if ((v15 & 0x80000000) != 0)
      {
        v15 = v9[5];
      }

      if (v27 != v15 - 2)
      {
LABEL_53:
        std::ostringstream::basic_ostringstream[abi:ne200100](&v40);
        v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "Cannot find argument '", 22);
        v31 = *(v9 + 55);
        if (v31 >= 0)
        {
          v32 = (v9 + 4);
        }

        else
        {
          v32 = v9[4];
        }

        if (v31 >= 0)
        {
          v33 = *(v9 + 55);
        }

        else
        {
          v33 = v9[5];
        }

        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v32, v33);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "', Possible Arguments:\n", 23);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "----------------\n", 17);
        dmlc::parameter::ParamManager::PrintDocString(a1, &v40);
        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::runtime_error::runtime_error(exception, &v39);
        exception->__vftable = &unk_2883DE2B0;
      }
    }

    goto LABEL_46;
  }
}