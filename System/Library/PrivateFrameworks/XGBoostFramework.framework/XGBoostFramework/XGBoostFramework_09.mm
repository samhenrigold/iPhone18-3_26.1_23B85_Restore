BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::Entry const&,xgboost::Entry const&),xgboost::Entry*>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v9 = a2 - 1;
        v10 = (*a3)(a1 + 1, a1);
        v11 = (*a3)(v9, a1 + 1);
        if (v10)
        {
          v12 = *a1;
          if (v11)
          {
            *a1 = *v9;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v12;
            if (!(*a3)(v9, a1 + 1))
            {
              return 1;
            }

            v12 = a1[1];
            a1[1] = *v9;
          }

          *v9 = v12;
          return 1;
        }

        if (!v11)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *v9;
        *v9 = v21;
        break;
      case 4:
        v17 = a2 - 1;
        v18 = (*a3)(a1 + 1, a1);
        v19 = (*a3)(a1 + 2, a1 + 1);
        if (v18)
        {
          v20 = *a1;
          if (v19)
          {
            *a1 = a1[2];
            a1[2] = v20;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v20;
            if ((*a3)(a1 + 2, a1 + 1))
            {
              *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
            }
          }
        }

        else if (v19)
        {
          *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
          if ((*a3)(a1 + 1, a1))
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        if (!(*a3)(v17, a1 + 2))
        {
          return 1;
        }

        v28 = a1[2];
        a1[2] = *v17;
        *v17 = v28;
        if (!(*a3)(a1 + 2, a1 + 1))
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        break;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::Entry const&,xgboost::Entry const&),xgboost::Entry*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      default:
        goto LABEL_13;
    }

    if ((*a3)(a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 1;
    if ((*a3)(a2 - 1, a1))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v14 = (*a3)(a1 + 1, a1);
  v15 = (*a3)(a1 + 2, a1 + 1);
  if (v14)
  {
    v16 = *a1;
    if (v15)
    {
      *a1 = a1[2];
      a1[2] = v16;
    }

    else
    {
      *a1 = a1[1];
      a1[1] = v16;
      if ((*a3)(a1 + 2, a1 + 1))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v15)
  {
    *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
    if ((*a3)(a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v22 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v23 = 0;
  v24 = 0;
  while (1)
  {
    if ((*a3)(v22, v13))
    {
      v30 = *v22;
      v25 = v23;
      while (1)
      {
        v26 = (a1 + v25);
        *(a1 + v25 + 24) = *(a1 + v25 + 16);
        if (v25 == -16)
        {
          break;
        }

        v25 -= 8;
        if (((*a3)(&v30, v26 + 1) & 1) == 0)
        {
          v27 = (a1 + v25 + 24);
          goto LABEL_40;
        }
      }

      v27 = a1;
LABEL_40:
      *v27 = v30;
      if (++v24 == 8)
      {
        return v22 + 1 == a2;
      }
    }

    v13 = v22;
    v23 += 8;
    if (++v22 == a2)
    {
      return 1;
    }
  }
}

void std::vector<xgboost::Entry>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<xgboost::Json>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v9);
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

uint64_t *std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<unsigned long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
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

void std::vector<xgboost::Entry>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<xgboost::Json>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::vector<xgboost::Entry>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<xgboost::Entry>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_274D54470(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274D544E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::vector<unsigned long long>>::vector[abi:ne200100](void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<xgboost::Json>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

uint64_t *std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274D5464C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void xgboost::obj::LambdaRankObj<xgboost::obj::PairwiseLambdaWeightComputer>::LoadConfig(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "lambda_rank_param");
  v4 = (*(**a2 + 24))(*a2, __p);
  xgboost::FromJson<xgboost::obj::LambdaRankParam>(v7, *v4, (a1 + 16));
  v8 = v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274D548B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::obj::LambdaRankObj<xgboost::obj::PairwiseLambdaWeightComputer>::SaveConfig(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v5, "rank:pairwise");
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

void xgboost::obj::LambdaRankObj<xgboost::obj::PairwiseLambdaWeightComputer>::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::obj::LambdaRankParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v2, (a1 + 16), a2);
  v3 = v2;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void xgboost::obj::LambdaRankObj<xgboost::obj::PairwiseLambdaWeightComputer>::GetGradient(uint64_t a1, uint64_t **a2, uint64_t a3, int a4, uint64_t **a5)
{
  v143 = *MEMORY[0x277D85DE8];
  __p = (((*a2)[1] - **a2) >> 2);
  v133 = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (__p != v133)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&__p, &v133);
  }

  LODWORD(v141.__ptr_) = 0;
  std::vector<unsigned int>::vector[abi:ne200100](&v133, 2uLL, &v141);
  v10 = (a3 + 48);
  v11 = *(a3 + 48);
  v12 = (*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2;
  v13 = v133;
  *(v133 + 1) = v12;
  v14 = *(a3 + 56);
  if (v14 == v11)
  {
    v10 = &v133;
  }

  else
  {
    v13 = v11;
  }

  v126 = v10;
  if (v14 == v11)
  {
    v15 = v134;
  }

  else
  {
    v15 = (a3 + 56);
  }

  if (*v15 == v13 || v12 != *(*v15 - 1))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v141);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/rank_obj.cu", 768);
    v105 = dmlc::LogMessageFatal::GetEntry(&v141);
    v106 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v105, "Check failed: gptr.size() != 0 && gptr.back() == info.labels.Size()", 67);
    v107 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, ": ", 2);
    v108 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v107, "group structure not consistent with #rows", 41);
    v109 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v108, ", ", 2);
    v110 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v109, "group ponter size: ", 19);
    v111 = MEMORY[0x277C68E50](v110, (*v15 - *v126) >> 2);
    v112 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v111, ", ", 2);
    v113 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v112, "labels size: ", 13);
    v114 = MEMORY[0x277C68E50](v113, (*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
    v115 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v114, ", ", 2);
    v116 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v115, "group pointer back: ", 20);
    if (*v15 == *v126)
    {
      v117 = 0;
    }

    else
    {
      v117 = *(*v15 - 1);
    }

    MEMORY[0x277C68E30](v116, v117);
    dmlc::LogMessageFatal::~LogMessageFatal(&v141);
  }

  if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v8, v9) + 4) >= 3)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/rank_obj.cu");
    xgboost::ConsoleLogger::ConsoleLogger(&v141, &__p, 818, 3);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v141, "Computing ", 10);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "rank:pairwise", 13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " gradients on CPU.", 18);
    xgboost::ConsoleLogger::~ConsoleLogger(&v141, v18, v19);
    if (SHIBYTE(v137) < 0)
    {
      operator delete(__p);
    }
  }

  v20 = v134;
  if (v14 != v11)
  {
    v20 = (a3 + 56);
  }

  v21 = (*v20 - *v126) >> 2;
  v22 = (v21 - 1);
  if (v21 == 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 0.0;
    v24 = **(a3 + 72);
    v25 = (v21 - 1);
    do
    {
      if (*(*(a3 + 72) + 8) == **(a3 + 72))
      {
        v26 = 1.0;
      }

      else
      {
        v26 = *v24;
      }

      v23 = v23 + v26;
      ++v24;
      --v25;
    }

    while (v25);
  }

  v27 = *(*(a3 + 24) + 8);
  v118 = **(a3 + 24);
  v28 = *(a3 + 40);
  v29 = *a5;
  v122 = *a2;
  v30 = (v122[1] - *v122) >> 2;
  v141.__ptr_ = 0;
  v124 = v28;
  v125 = v29;
  std::vector<xgboost::detail::GradientPairInternal<float>>::resize(v29, v30, &v141);
  v141.__ptr_ = 0;
  v142[0].__m_.__sig = 850045863;
  memset(v142[0].__m_.__opaque, 0, sizeof(v142[0].__m_.__opaque));
  v31 = (3 * (1111 * a4 + 1111)) >> 32;
  v32 = 1111 * a4 + 1111 + (((v31 + ((1111 * a4 + 1111 - v31) >> 1)) >> 30) | ((v31 + ((1111 * a4 + 1111 - v31) >> 1)) >> 30 << 31));
  if (v32 <= 1)
  {
    v32 = 1;
  }

  v138 = v32;
  __p = 0;
  v136 = 0;
  v137 = 0;
  if (v22)
  {
    v33 = 0;
    __src = 0;
    v34 = v22;
    v35 = 0;
    v119 = v34;
    v36 = v34 / v23;
    v121 = (v27 - v118) >> 2;
    v123 = 4 * v124;
    do
    {
      v37 = *(*v126 + v33);
      v131 = v33;
      v127 = v33 + 1;
      if (v37 >= *(*v126 + v33 + 1))
      {
        v40 = __src;
      }

      else
      {
        v38 = (v118 + v123 * v37);
        v39 = v124 * (v37 - 1);
        v40 = __src;
        do
        {
          v39 += v124;
          if (v39 >= v121)
          {
            __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
          }

          v41 = v40 - __src;
          v42 = 0xAAAAAAAAAAAAAAABLL * ((v40 - __src) >> 2);
          v43 = v42 + 1;
          if (v42 + 1 > 0x1555555555555555)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * (-__src >> 2) > v43)
          {
            v43 = 0x5555555555555556 * (-__src >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-__src >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v44 = 0x1555555555555555;
          }

          else
          {
            v44 = v43;
          }

          if (v44)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::obj::ListEntry>>(v44);
          }

          v45 = (4 * ((v40 - __src) >> 2));
          v46 = *v38;
          *v45 = *(*v122 + 4 * v37);
          v45[1] = v46;
          v45[2] = v37;
          v40 = (v45 + 3);
          memcpy((12 * v42 + 12 * (v41 / -12)), __src, v41);
          if (__src)
          {
            operator delete(__src);
          }

          __src = 12 * v42 + 12 * (v41 / -12);
          v38 = (v38 + v123);
          *(*v125 + 8 * v37++) = 0;
        }

        while (v37 < *(*v126 + v127));
      }

      v139 = xgboost::obj::ListEntry::CmpPred;
      std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<xgboost::obj::ListEntry *>,BOOL (*)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&)>(__src, v40, &v139);
      std::vector<std::pair<float,unsigned int>>::resize(&__p, 0xAAAAAAAAAAAAAAABLL * ((v40 - __src) >> 2));
      v48 = __p;
      if (v40 != __src)
      {
        v49 = (__p + 4);
        v50 = (__src + 4);
        v51 = 1;
        do
        {
          v52 = *v50;
          v50 += 3;
          v47 = v52;
          *(v49 - 1) = v52;
          *v49 = v51 - 1;
          v49 += 2;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((v40 - __src) >> 2) > v51++);
      }

      v140 = xgboost::common::CmpFirst;
      std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<float,unsigned int> *>,BOOL (*)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&)>(v48, v136, &v140, v47);
      v54 = __p;
      v55 = v136;
      if (v136 == __p)
      {
        v59 = v35;
      }

      else
      {
        v56 = 0;
        v57 = 0;
        v58 = (v136 - __p) >> 3;
        v59 = v35;
        do
        {
          v60 = &v54[2 * v56];
          v61 = v58 - 2;
          v62 = 1;
          do
          {
            v63 = v62;
            v64 = v61;
            v56 = v57 + v62;
            if (v58 <= v56)
            {
              break;
            }

            ++v62;
            --v61;
          }

          while (v54[2 * v56] == *v60);
          if (v64 != -1)
          {
            v65 = *(a1 + 24);
            if (v65)
            {
              v129 = v56;
              do
              {
                v130 = v65;
                if (v57 < v56)
                {
                  v66 = v63;
                  v67 = (8 * v57) | 4;
                  do
                  {
                    LODWORD(v140) = 0;
                    HIDWORD(v140) = v64;
                    v68 = std::uniform_int_distribution<unsigned int>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(&v138, &v140);
                    if (v68 >= v57)
                    {
                      v71 = **(a3 + 72);
                      if (*(*(a3 + 72) + 8) == v71)
                      {
                        v72 = 1.0;
                      }

                      else
                      {
                        v72 = *(v71 + 4 * v131);
                      }

                      v79 = __p + 8 * v63 + 8 * v68;
                      v74 = v36 * v72;
                      v75 = v59 - v35;
                      v80 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v35) >> 2);
                      v81 = v80 + 1;
                      if (v80 + 1 > 0x1555555555555555)
                      {
LABEL_103:
                        std::vector<void *>::__throw_length_error[abi:ne200100]();
                      }

                      if (0x5555555555555556 * (-v35 >> 2) > v81)
                      {
                        v81 = 0x5555555555555556 * (-v35 >> 2);
                      }

                      if (0xAAAAAAAAAAAAAAABLL * (-v35 >> 2) >= 0xAAAAAAAAAAAAAAALL)
                      {
                        v82 = 0x1555555555555555;
                      }

                      else
                      {
                        v82 = v81;
                      }

                      if (v82)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::obj::ListEntry>>(v82);
                      }

                      v83 = 12 * v80;
                      v84 = *(__p + v67);
                      v85 = *(v79 + 1);
                    }

                    else
                    {
                      v69 = **(a3 + 72);
                      if (*(*(a3 + 72) + 8) == v69)
                      {
                        v70 = 1.0;
                      }

                      else
                      {
                        v70 = *(v69 + 4 * v131);
                      }

                      v73 = __p + 8 * v68;
                      v74 = v36 * v70;
                      v75 = v59 - v35;
                      v76 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v35) >> 2);
                      v77 = v76 + 1;
                      if (v76 + 1 > 0x1555555555555555)
                      {
                        goto LABEL_103;
                      }

                      if (0x5555555555555556 * (-v35 >> 2) > v77)
                      {
                        v77 = 0x5555555555555556 * (-v35 >> 2);
                      }

                      if (0xAAAAAAAAAAAAAAABLL * (-v35 >> 2) >= 0xAAAAAAAAAAAAAAALL)
                      {
                        v78 = 0x1555555555555555;
                      }

                      else
                      {
                        v78 = v77;
                      }

                      if (v78)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::obj::ListEntry>>(v78);
                      }

                      v83 = 12 * v76;
                      v84 = *(v73 + 1);
                      v85 = *(__p + v67);
                    }

                    *v83 = v84;
                    *(v83 + 4) = v85;
                    *(v83 + 8) = v74;
                    v59 = (v83 + 12);
                    v86 = v83 - v75;
                    memcpy((v83 - v75), v35, v75);
                    if (v35)
                    {
                      operator delete(v35);
                    }

                    v35 = v86;
                    v67 += 8;
                    --v66;
                  }

                  while (v66);
                }

                v65 = v130 - 1;
                v56 = v129;
              }

              while (v130 != 1);
              v54 = __p;
              v55 = v136;
            }
          }

          v58 = (v55 - v54) >> 3;
          v57 = v56;
        }

        while (v58 > v56);
      }

      v87 = 1.0 / *(a1 + 24);
      v88 = *(a1 + 32);
      if (v88 != 0.0)
      {
        v87 = v87 * (v88 / (*(*v126 + v127) - *(*v126 + v131)));
      }

      if (v35 != v59)
      {
        v89 = *v125;
        v90 = v35;
        do
        {
          v91 = __src + 12 * *v90;
          v92 = __src + 12 * *(v90 + 1);
          v93 = v87 * v90[2];
          v94 = *v91 - *v92;
          if (v94 >= -88.7)
          {
            v95 = -v94;
          }

          else
          {
            v95 = 88.7;
          }

          v96 = 1.0 / ((expf(v95) + 1.0) + 1.0e-16);
          v97 = v96 + -1.0;
          v98 = v96 * (1.0 - v96);
          if (v98 < 1.0e-16)
          {
            v98 = 1.0e-16;
          }

          v99 = (v93 + v93) * v98;
          v100 = (v89 + 8 * *(v91 + 8));
          v101 = v100[1] + v99;
          *v100 = *v100 + (v93 * v97);
          v100[1] = v101;
          v102 = (v89 + 8 * *(v92 + 8));
          v103 = v102[1] + v99;
          *v102 = *v102 - (v93 * v97);
          v102[1] = v103;
          v90 += 3;
        }

        while (v90 != v59);
      }

      v33 = v127;
    }

    while (v127 != v119);
    if (__p)
    {
      v136 = __p;
      operator delete(__p);
    }

    if (__src)
    {
      operator delete(__src);
    }

    if (v35)
    {
      operator delete(v35);
    }
  }

  dmlc::OMPException::Rethrow(&v141);
  std::mutex::~mutex(v142);
  std::exception_ptr::~exception_ptr(&v141);
  if (v133)
  {
    v134[0] = v133;
    operator delete(v133);
  }
}

void sub_274D55710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  if (v36)
  {
    operator delete(v36);
  }

  JUMPOUT(0x274D558A4);
}

void sub_274D55720(void *a1, int a2)
{
  __cxa_end_catch();
  if (v7[0].__ptr_)
  {
    v7[1] = v7[0];
    operator delete(v7[0].__ptr_);
  }

  if (v6)
  {
    operator delete(v6);
  }

  if (v2)
  {
    operator delete(v2);
  }

  if (a2 == v3 || a2 == 2)
  {
    __cxa_begin_catch(a1);
    std::mutex::lock(v9);
    if (!v8.__ptr_)
    {
      std::current_exception();
      std::exception_ptr::operator=(&v8, v7);
      std::exception_ptr::~exception_ptr(v7);
    }

    std::mutex::unlock(v9);
    __cxa_end_catch();
    JUMPOUT(0x274D55580);
  }

  JUMPOUT(0x274D55820);
}

void sub_274D55730(void *a1, int a2)
{
  __cxa_end_catch();
  if (v7[0].__ptr_)
  {
    v7[1] = v7[0];
    operator delete(v7[0].__ptr_);
  }

  if (v6)
  {
    operator delete(v6);
  }

  if (v2)
  {
    operator delete(v2);
  }

  if (a2 == v3 || a2 == 2)
  {
    __cxa_begin_catch(a1);
    std::mutex::lock(v9);
    if (!v8.__ptr_)
    {
      std::current_exception();
      std::exception_ptr::operator=(&v8, v7);
      std::exception_ptr::~exception_ptr(v7);
    }

    std::mutex::unlock(v9);
    __cxa_end_catch();
    JUMPOUT(0x274D55580);
  }

  JUMPOUT(0x274D55820);
}

void sub_274D557F0()
{
  __cxa_end_catch();
  std::mutex::~mutex(&v1);
  std::exception_ptr::~exception_ptr(&v0);
  JUMPOUT(0x274D5585CLL);
}

void sub_274D557FC()
{
  __cxa_end_catch();
  std::mutex::~mutex(&v1);
  std::exception_ptr::~exception_ptr(&v0);
  JUMPOUT(0x274D5585CLL);
}

void sub_274D5580C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (v35)
  {
    operator delete(v35);
  }

  JUMPOUT(0x274D558A4);
}

void sub_274D55814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v38 = a37;
  a37 = 0;
  if (v38)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a37, v38);
  }

  _Unwind_Resume(a1);
}

void sub_274D55838()
{
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274D558A4);
}

void sub_274D55840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float s0_0, __n128 q1_0, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  xgboost::ConsoleLogger::~ConsoleLogger(va, s0_0, q1_0);
  JUMPOUT(0x274D5584CLL);
}

void sub_274D55878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D55884);
}

void sub_274D5589C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x274D558A4);
  }

  __clang_call_terminate(a1);
}

void xgboost::FromJson<xgboost::obj::LambdaRankParam>(void *a1, _DWORD *a2, _BYTE *a3)
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
    xgboost::obj::LambdaRankParam::__MANAGER__(v5);
    dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF6768, a3, v13, v14, 0, a1, 0);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    xgboost::obj::LambdaRankParam::__MANAGER__(v5);
    dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF6768, a3, v13, v14, a1, 0);
    *a3 = 1;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v13, v14[0]);
}

void sub_274D55A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void xgboost::ToJson<xgboost::obj::LambdaRankParam>(uint64_t **a1)
{
  a1[1] = 0x300000000;
  *a1 = &unk_2883E6E50;
  a1[3] = 0;
  a1[2] = (a1 + 3);
  v1 = a1 + 2;
  a1[4] = 0;
  xgboost::obj::LambdaRankParam::__MANAGER__(a1);
  dmlc::parameter::ParamManager::GetDict(v4, &stru_280AF6768);
  std::map<std::string,std::string>::map[abi:ne200100]<std::__wrap_iter<std::pair<std::string,std::string> *>>(&v5, v4[0], v4[1]);
  v8 = v4;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v2 = v5;
  if (v5 != &v6)
  {
    xgboost::JsonString::JsonString(v4, (v5 + 7));
    v8 = (v2 + 4);
    v3 = std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v1, v2 + 4, &std::piecewise_construct, &v8, &v7);
    xgboost::Json::operator=(v3 + 7, v4);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v5, v6);
}

void sub_274D55BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  a21 = &a9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a21);
  *v21 = v22;
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(v23, *(v21 + 24));
  _Unwind_Resume(a1);
}

void xgboost::XGBoostParameter<xgboost::obj::LambdaRankParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(xgboost::obj::LambdaRankParam *a1, _BYTE *a2, uint64_t *a3)
{
  if (*a2 == 1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    xgboost::obj::LambdaRankParam::__MANAGER__(a1);
    dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6768, a2, *a3, a3[1], 0, a1, 0);
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    xgboost::obj::LambdaRankParam::__MANAGER__(a1);
    dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6768, a2, *a3, a3[1], a1, 0);
    *a2 = 1;
  }
}

void sub_274D55CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<float,unsigned int>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::obj::ListEntry>>(unint64_t a1)
{
  if (a1 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<xgboost::obj::ListEntry *>,BOOL (*)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&)>(uint64_t a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (a2 - a1 < 1537)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x277D826F0];
    v8 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
    while (1)
    {
      v9 = operator new(12 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_274D55F8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t), unint64_t a4, uint64_t *a5, int64_t a6)
{
  if (a4 >= 2)
  {
    v8 = result;
    if (a4 == 2)
    {
      v9 = (a2 - 12);
      result = (*a3)(a2 - 12, result, a3, 2, a5, a6);
      if (result)
      {
        v10 = *(v8 + 8);
        v11 = *v8;
        v12 = *(a2 - 1);
        *v8 = *v9;
        *(v8 + 8) = v12;
        *v9 = v11;
        *(a2 - 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v24 = a5;
      v25 = a4 >> 1;
      v26 = (result + 12 * (a4 >> 1));
      v27 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(result, v26, a3, v27, a5);
        v28 = v24 + 12 * v25;
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>((v8 + 12 * (a4 >> 1)), a2, a3, a4 - (a4 >> 1), v28);
        v29 = v24 + 12 * a4;
        v30 = v28;
        while (v30 != v29)
        {
          result = (*a3)(v30, v24);
          if (result)
          {
            v31 = *v30;
            *(v8 + 8) = *(v30 + 8);
            *v8 = v31;
            v30 += 12;
          }

          else
          {
            v32 = *v24;
            *(v8 + 8) = *(v24 + 2);
            *v8 = v32;
            v24 = (v24 + 12);
          }

          v8 += 12;
          if (v24 == v28)
          {
            while (v30 != v29)
            {
              v34 = *v30;
              *(v8 + 8) = *(v30 + 8);
              *v8 = v34;
              v8 += 12;
              v30 += 12;
            }

            return result;
          }
        }

        while (v24 != v28)
        {
          v33 = *v24;
          *(v8 + 8) = *(v24 + 2);
          *v8 = v33;
          v8 += 12;
          v24 = (v24 + 12);
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(result, v26, a3, v27, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(v8 + 12 * (a4 >> 1), a2, a3, a4 - (a4 >> 1), v24, a6);

        return std::__inplace_merge<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(v8, (v8 + 12 * (a4 >> 1)), a2, a3, a4 >> 1, a4 - (a4 >> 1), v24, a6);
      }
    }

    else if (result != a2)
    {
      v14 = result + 12;
      if ((result + 12) != a2)
      {
        v15 = 0;
        v16 = result;
        do
        {
          v17 = v16;
          v16 = v14;
          result = (*a3)(v14, v17);
          if (result)
          {
            v18 = *v16;
            v36 = *(v16 + 8);
            v35 = v18;
            v19 = v15;
            while (1)
            {
              v20 = v8 + v19;
              *(v20 + 12) = *(v8 + v19);
              *(v20 + 20) = *(v8 + v19 + 8);
              if (!v19)
              {
                break;
              }

              v19 -= 12;
              result = (*a3)(&v35, v19 + v8);
              if ((result & 1) == 0)
              {
                v21 = v8 + v19 + 12;
                goto LABEL_16;
              }
            }

            v21 = v8;
LABEL_16:
            v22 = v35;
            *(v21 + 8) = v36;
            *v21 = v22;
          }

          v14 = v16 + 12;
          v15 += 12;
        }

        while ((v16 + 12) != a2);
      }
    }
  }

  return result;
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(uint64_t *result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t), unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5;
    v9 = result;
    if (a4 == 2)
    {
      v11 = (a2 - 12);
      result = (*a3)(a2 - 12, result);
      if (result)
      {
        v12 = *v11;
        *(v5 + 8) = *(v11 + 2);
        *v5 = v12;
        v13 = *v9;
        v14 = *(v9 + 8);
      }

      else
      {
        v23 = *v9;
        *(v5 + 8) = *(v9 + 8);
        *v5 = v23;
        v13 = *v11;
        v14 = *(v11 + 2);
      }

      *(v5 + 20) = v14;
      *(v5 + 12) = v13;
    }

    else if (a4 == 1)
    {
      v10 = *result;
      *(a5 + 8) = *(result + 2);
      *a5 = v10;
    }

    else if (a4 > 8)
    {
      v24 = result + 12 * (a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(result, v24, a3, a4 >> 1, a5, a4 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(v9 + 12 * (a4 >> 1), a2, a3, a4 - (a4 >> 1), (v5 + 12 * (a4 >> 1)), a4 - (a4 >> 1));
      v25 = v9 + 12 * (a4 >> 1);
      while (v25 != a2)
      {
        result = (*a3)(v25, v9);
        if (result)
        {
          v26 = *v25;
          *(v5 + 8) = *(v25 + 8);
          *v5 = v26;
          v25 += 12;
        }

        else
        {
          v27 = *v9;
          *(v5 + 8) = *(v9 + 8);
          *v5 = v27;
          v9 += 12;
        }

        v5 += 12;
        if (v9 == v24)
        {
          while (v25 != a2)
          {
            v29 = *v25;
            *(v5 + 8) = *(v25 + 8);
            *v5 = v29;
            v5 += 12;
            v25 += 12;
          }

          return result;
        }
      }

      while (v9 != v24)
      {
        v28 = *v9;
        *(v5 + 8) = *(v9 + 8);
        *v5 = v28;
        v5 += 12;
        v9 += 12;
      }
    }

    else if (result != a2)
    {
      v15 = *result;
      *(a5 + 8) = *(result + 2);
      *a5 = v15;
      v16 = result + 12;
      if ((result + 12) != a2)
      {
        v17 = 0;
        v18 = a5;
        do
        {
          v19 = v18;
          v18 += 12;
          result = (*a3)(v16, v19);
          v20 = v18;
          if (result)
          {
            *v18 = *v19;
            *(v18 + 8) = *(v19 + 8);
            v20 = v5;
            if (v19 != v5)
            {
              v21 = v17;
              while (1)
              {
                v20 = v5 + v21;
                result = (*a3)(v16, v5 + v21 - 12);
                if (!result)
                {
                  break;
                }

                *v20 = *(v5 + v21 - 12);
                *(v20 + 8) = *(v5 + v21 - 4);
                v21 -= 12;
                if (!v21)
                {
                  v20 = v5;
                  break;
                }
              }
            }
          }

          v22 = *v16;
          *(v20 + 8) = *(v16 + 8);
          *v20 = v22;
          v16 += 12;
          v17 += 12;
        }

        while (v16 != a2);
      }
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(uint64_t result, char *a2, char *a3, uint64_t (**a4)(char *, uint64_t), int64_t a5, int64_t a6, uint64_t a7, int64_t a8)
{
  v83 = a6;
  if (a6)
  {
    while (a5 > a8 && v83 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v12 = 0;
      v13 = -a5;
      while (1)
      {
        v14 = result;
        v15 = &v12[result];
        v16 = a2;
        result = (*a4)(a2, &v12[result]);
        if (result)
        {
          break;
        }

        v12 += 12;
        v17 = __CFADD__(v13++, 1);
        result = v14;
        a2 = v16;
        if (v17)
        {
          return result;
        }
      }

      v18 = v83;
      v80 = a3;
      v81 = a7;
      if (-v13 >= v83)
      {
        v22 = v14;
        v20 = v16;
        if (v13 == -1)
        {
          v75 = &v12[v14];
          v94 = *&v12[v14 + 8];
          v90 = *&v12[v14];
          v76 = *v16;
          *(v75 + 2) = *(v16 + 2);
          *v75 = v76;
          *v16 = v90;
          *(v16 + 2) = v94;
          return result;
        }

        v26 = -v13 / 2;
        v21 = v16;
        if (v16 != a3)
        {
          v84 = v14 + 12 * v26;
          v86 = a4;
          v27 = *a4;
          v28 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v16) >> 2);
          v21 = v16;
          do
          {
            v29 = &v21[12 * (v28 >> 1)];
            v30 = v27(v29, &v12[v84]);
            if (v30)
            {
              v28 += ~(v28 >> 1);
            }

            else
            {
              v28 >>= 1;
            }

            if (v30)
            {
              v21 = v29 + 12;
            }
          }

          while (v28);
          a4 = v86;
          v22 = v14;
          v20 = v16;
          v18 = v83;
          v26 = -v13 / 2;
        }

        v19 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 2);
        v23 = &v12[12 * v26 + v22];
        v25 = v26;
      }

      else
      {
        v19 = v83 / 2;
        v20 = v16;
        v21 = &v16[12 * (v83 / 2)];
        v22 = v14;
        v23 = v16;
        if (&v16[-v14] != v12)
        {
          v85 = a4;
          v24 = 0xAAAAAAAAAAAAAAABLL * ((&v16[-v14] - v12) >> 2);
          v23 = v15;
          do
          {
            if ((*v85)(v21, &v23[12 * (v24 >> 1)]))
            {
              v24 >>= 1;
            }

            else
            {
              v23 += 12 * (v24 >> 1) + 12;
              v24 += ~(v24 >> 1);
            }
          }

          while (v24);
          v19 = v83 / 2;
          a4 = v85;
          v22 = v14;
          v20 = v16;
          v18 = v83;
        }

        v25 = 0xAAAAAAAAAAAAAAABLL * ((&v23[-v22] - v12) >> 2);
      }

      v31 = v21;
      v32 = v20 - v23;
      if (v20 != v23)
      {
        v31 = v23;
        v33 = v21 - v20;
        if (v21 != v20)
        {
          if (v23 + 12 == v20)
          {
            v87 = *v23;
            v91 = *(v23 + 2);
            v34 = v19;
            memmove(v23, v20, v21 - v20);
            v19 = v34;
            v18 = v83;
            v22 = v14;
            v31 = &v23[v33];
            *v31 = v87;
            *(v31 + 8) = v91;
          }

          else if (v20 + 12 == v21)
          {
            v31 = (v23 + 12);
            v88 = *(v21 - 12);
            v92 = *(v21 - 1);
            if (v21 - 12 != v23)
            {
              v35 = v19;
              memmove(v23 + 12, v23, v21 - 12 - v23);
              v31 = (v23 + 12);
              v19 = v35;
              v18 = v83;
              v22 = v14;
            }

            *v23 = v88;
            *(v23 + 2) = v92;
          }

          else
          {
            v36 = 0xAAAAAAAAAAAAAAABLL * (v33 >> 2);
            if (0xAAAAAAAAAAAAAAABLL * (v32 >> 2) == v36)
            {
              v37 = v23 + 12;
              v38 = v20 + 12;
              do
              {
                v39 = *(v37 - 1);
                v40 = *(v37 - 12);
                v41 = *(v38 - 1);
                *(v37 - 12) = *(v38 - 12);
                *(v37 - 1) = v41;
                *(v38 - 12) = v40;
                *(v38 - 1) = v39;
                if (v37 == v20)
                {
                  break;
                }

                v37 += 12;
                v62 = v38 == v21;
                v38 += 12;
              }

              while (!v62);
              v31 = v20;
            }

            else
            {
              v42 = 0xAAAAAAAAAAAAAAABLL * (v32 >> 2);
              do
              {
                v43 = v42;
                v42 = v36;
                v36 = v43 % v36;
              }

              while (v36);
              v44 = &v23[12 * v42];
              do
              {
                v45 = *(v44 - 12);
                v44 -= 12;
                v89 = v45;
                v93 = *(v44 + 2);
                v46 = &v44[v32];
                v47 = v44;
                do
                {
                  v48 = v46;
                  v49 = *v46;
                  *(v47 + 2) = *(v48 + 2);
                  *v47 = v49;
                  v46 = v48 + 4 * (v32 >> 2);
                  if (v32 >= v21 - v48)
                  {
                    v46 = &v20[-(v21 - v48)];
                  }

                  v47 = v48;
                }

                while (v46 != v44);
                *(v48 + 2) = v93;
                *v48 = v89;
              }

              while (v44 != v23);
              v31 = &v23[v33];
            }
          }
        }
      }

      a5 = -(v25 + v13);
      v50 = v18 - v19;
      if (v25 + v19 >= v18 - (v25 + v19) - v13)
      {
        v51 = v19;
        v52 = v31;
        std::__inplace_merge<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(v31, v21, v80, a4, -(v25 + v13), v18 - v19, v81, a8);
        v21 = v23;
        v50 = v51;
        a5 = v25;
        a3 = v52;
      }

      else
      {
        v15 = v31;
        std::__inplace_merge<std::_ClassicAlgPolicy,BOOL (*&)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&),std::__wrap_iter<xgboost::obj::ListEntry*>>(&v12[v22], v23, v31, a4, v25, v19, v81, a8);
        a3 = v80;
      }

      v83 = v50;
      result = v15;
      a2 = v21;
      a7 = v81;
      if (!v50)
      {
        return result;
      }
    }

    if (a5 <= v83)
    {
      if (a2 != result)
      {
        v65 = -a7;
        v66 = a7;
        v67 = result;
        do
        {
          v68 = *v67;
          *(v66 + 8) = *(v67 + 8);
          *v66 = v68;
          v66 += 12;
          v67 += 12;
          v65 -= 12;
        }

        while (v67 != a2);
        while (a2 != a3)
        {
          v69 = a3;
          v70 = result;
          v71 = a2;
          if ((*a4)(a2, a7))
          {
            v72 = *v71;
            v73 = v70;
            *(v70 + 8) = *(v71 + 2);
            *v70 = v72;
            a2 = v71 + 12;
          }

          else
          {
            v74 = *a7;
            v73 = v70;
            *(v70 + 8) = *(a7 + 8);
            *v70 = v74;
            a7 += 12;
            a2 = v71;
          }

          result = v73 + 12;
          a3 = v69;
          if (v66 == a7)
          {
            return result;
          }
        }

        return memmove(result, a7, -(a7 + v65));
      }
    }

    else if (a2 != a3)
    {
      v53 = 0;
      do
      {
        v54 = a7 + v53;
        v55 = *&a2[v53];
        *(v54 + 8) = *&a2[v53 + 8];
        *v54 = v55;
        v53 += 12;
      }

      while (&a2[v53] != a3);
      v56 = a7 + v53;
      while (a2 != result)
      {
        v57 = a2 - 12;
        v58 = result;
        v59 = a3;
        v60 = a2;
        v61 = (*a4)((v56 - 12), (a2 - 12));
        a2 = v60;
        v62 = v61 == 0;
        result = v58;
        if (v62)
        {
          v63 = (v56 - 12);
        }

        else
        {
          v63 = v57;
        }

        v64 = *(v63 + 2);
        *(v59 - 12) = *v63;
        a3 = v59 - 12;
        if (v62)
        {
          v56 -= 12;
        }

        else
        {
          a2 = v57;
        }

        *(v59 - 1) = v64;
        if (v56 == a7)
        {
          return result;
        }
      }

      if (v56 != a7)
      {
        v77 = -12;
        do
        {
          v78 = *(v56 - 12);
          v56 -= 12;
          v79 = &a3[v77];
          *(v79 + 2) = *(v56 + 8);
          *v79 = v78;
          v77 -= 12;
        }

        while (v56 != a7);
      }
    }
  }

  return result;
}

uint64_t std::uniform_int_distribution<unsigned int>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(uint64_t a1, _DWORD *a2)
{
  result = a2[1];
  v5 = result - *a2;
  if (result != *a2)
  {
    v6 = v5 + 1;
    if (v5 == -1)
    {
      std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__independent_bits_engine(v10, a1, 0x20uLL);
      return std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__eval(v10);
    }

    else
    {
      v7 = __clz(v6);
      v8 = 31;
      if (((v6 << v7) & 0x7FFFFFFF) != 0)
      {
        v8 = 32;
      }

      std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__independent_bits_engine(v10, a1, v8 - v7);
      do
      {
        v9 = std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__eval(v10);
      }

      while (v9 >= v6);
      return *a2 + v9;
    }
  }

  return result;
}

uint64_t std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__independent_bits_engine(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (a3 % 0x1E)
  {
    v3 = a3 / 0x1E + 1;
  }

  else
  {
    v3 = a3 / 0x1E;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  LODWORD(v5) = (-1 << (a3 / v3)) & 0x7FFFFFFE;
  if (a3 / v3 >= 0x20)
  {
    v5 = 0;
  }

  else
  {
    v5 = v5;
  }

  *(result + 40) = v5;
  if (v5 / v3 < (v5 ^ 0x7FFFFFFE))
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x1F)
    {
      *(result + 40) = 0;
      *(result + 32) = v3 + v4 * v3 - a3;
      LODWORD(v4) = 32;
      goto LABEL_15;
    }

    *(result + 40) = (-1 << v4) & 0x7FFFFFFE;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 > 0x1E)
  {
LABEL_15:
    v8 = -v4;
    v7 = -1;
    *(result + 44) = 0;
    *(result + 48) = 0xFFFFFFFF >> v8;
    goto LABEL_16;
  }

  v6 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v6 = 0;
  }

  *(result + 44) = 0x3FFFFFFFu >> v4 << (v4 + 1);
  *(result + 48) = v6;
  v7 = 0xFFFFFFFF >> ~v4;
LABEL_16:
  *(result + 52) = v7;
  return result;
}

uint64_t std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__eval(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    LODWORD(result) = 0;
    v4 = 0;
    v5 = *(a1 + 16);
    v6 = **a1;
    do
    {
      do
      {
        v7 = v6 / 0xADC8;
        v8 = 48271 * (v6 % 0xADC8);
        v7 *= 3399;
        v9 = v8 >= v7;
        v10 = v8 - v7;
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0x7FFFFFFF;
        }

        v6 = v11 + v10;
      }

      while (v6 - 1 >= *(a1 + 40));
      v12 = result << v5;
      if (v5 >= 0x20)
      {
        v12 = 0;
      }

      result = ((v6 - 1) & *(a1 + 48)) + v12;
      ++v4;
    }

    while (v4 != v2);
    **a1 = v6;
  }

  else
  {
    result = 0;
  }

  v13 = *(a1 + 24);
  if (v2 < v13)
  {
    v14 = *a1;
    v15 = *(a1 + 44);
    v16 = *(a1 + 16);
    v17 = *(a1 + 52);
    v18 = *v14;
    while (1)
    {
      v19 = v18 / 0xADC8;
      v20 = 48271 * (v18 % 0xADC8);
      v19 *= 3399;
      v9 = v20 >= v19;
      v21 = v20 - v19;
      if (v9)
      {
        v22 = 0;
      }

      else
      {
        v22 = 0x7FFFFFFF;
      }

      v18 = v22 + v21;
      if (v18 - 1 < v15)
      {
        v23 = result << (v16 + 1);
        if (v16 >= 0x1F)
        {
          v23 = 0;
        }

        result = ((v18 - 1) & v17) + v23;
        if (++v2 == v13)
        {
          break;
        }
      }
    }

    *v14 = v18;
  }

  return result;
}

void xgboost::obj::LambdaRankObj<xgboost::obj::NDCGLambdaWeightComputer>::LoadConfig(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "lambda_rank_param");
  v4 = (*(**a2 + 24))(*a2, __p);
  xgboost::FromJson<xgboost::obj::LambdaRankParam>(v7, *v4, (a1 + 16));
  v8 = v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274D56FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::obj::LambdaRankObj<xgboost::obj::NDCGLambdaWeightComputer>::SaveConfig(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v5, "rank:ndcg");
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

void xgboost::obj::LambdaRankObj<xgboost::obj::NDCGLambdaWeightComputer>::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::obj::LambdaRankParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v2, (a1 + 16), a2);
  v3 = v2;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void xgboost::obj::LambdaRankObj<xgboost::obj::NDCGLambdaWeightComputer>::GetGradient(uint64_t a1, uint64_t **a2, uint64_t a3, int a4, uint64_t **a5)
{
  v186 = *MEMORY[0x277D85DE8];
  __p = (((*a2)[1] - **a2) >> 2);
  v175.__ptr_ = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (__p != v175.__ptr_)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&__p, &v175);
  }

  LODWORD(v184.__ptr_) = 0;
  std::vector<unsigned int>::vector[abi:ne200100](&v173, 2uLL, &v184);
  v11 = (a3 + 48);
  v12 = *(a3 + 48);
  v13 = (*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2;
  v14 = v173;
  *(v173 + 1) = v13;
  v15 = *(a3 + 56);
  if (v15 == v12)
  {
    v11 = &v173;
  }

  else
  {
    v14 = v12;
  }

  v166 = v11;
  if (v15 == v12)
  {
    v16 = v174;
  }

  else
  {
    v16 = (a3 + 56);
  }

  if (*v16 == v14 || v13 != *(*v16 - 1))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v184);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/rank_obj.cu", 768);
    v143 = dmlc::LogMessageFatal::GetEntry(&v184);
    v144 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v143, "Check failed: gptr.size() != 0 && gptr.back() == info.labels.Size()", 67);
    v145 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v144, ": ", 2);
    v146 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v145, "group structure not consistent with #rows", 41);
    v147 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v146, ", ", 2);
    v148 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v147, "group ponter size: ", 19);
    v149 = MEMORY[0x277C68E50](v148, (*v16 - *v166) >> 2);
    v150 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v149, ", ", 2);
    v151 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v150, "labels size: ", 13);
    v152 = MEMORY[0x277C68E50](v151, (*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
    v153 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v152, ", ", 2);
    v154 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v153, "group pointer back: ", 20);
    if (*v16 == *v166)
    {
      v155 = 0;
    }

    else
    {
      v155 = *(*v16 - 1);
    }

    MEMORY[0x277C68E30](v154, v155);
    dmlc::LogMessageFatal::~LogMessageFatal(&v184);
  }

  if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v9, v10) + 4) >= 3)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/rank_obj.cu");
    xgboost::ConsoleLogger::ConsoleLogger(&v184, &__p, 818, 3);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v184, "Computing ", 10);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "rank:ndcg", 9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " gradients on CPU.", 18);
    xgboost::ConsoleLogger::~ConsoleLogger(&v184, v19, v20);
    if (v183 < 0)
    {
      operator delete(__p);
    }
  }

  v21 = v174;
  if (v15 != v12)
  {
    v21 = (a3 + 56);
  }

  v22 = (*v21 - *v166) >> 2;
  v23 = (v22 - 1);
  if (v22 == 1)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = 0.0;
    v25 = **(a3 + 72);
    v26 = (v22 - 1);
    do
    {
      if (*(*(a3 + 72) + 8) == **(a3 + 72))
      {
        v27 = 1.0;
      }

      else
      {
        v27 = *v25;
      }

      v24 = v24 + v27;
      ++v25;
      --v26;
    }

    while (v26);
  }

  v28 = *(*(a3 + 24) + 8);
  v156 = **(a3 + 24);
  v29 = *(a3 + 40);
  v30 = *a5;
  v162 = *a2;
  v31 = (v162[1] - *v162) >> 2;
  v184.__ptr_ = 0;
  v164 = v29;
  v165 = v30;
  std::vector<xgboost::detail::GradientPairInternal<float>>::resize(v30, v31, &v184);
  v184.__ptr_ = 0;
  v185[0].__m_.__sig = 850045863;
  memset(v185[0].__m_.__opaque, 0, sizeof(v185[0].__m_.__opaque));
  v32 = (3 * (1111 * a4 + 1111)) >> 32;
  v33 = 1111 * a4 + 1111 + (((v32 + ((1111 * a4 + 1111 - v32) >> 1)) >> 30) | ((v32 + ((1111 * a4 + 1111 - v32) >> 1)) >> 30 << 31));
  if (v33 <= 1)
  {
    v33 = 1;
  }

  v178 = v33;
  v175.__ptr_ = 0;
  v176 = 0;
  v177 = 0;
  if (v23)
  {
    v172 = a3;
    v34 = 0;
    __src = 0;
    v35 = 0;
    v157 = v23;
    v161 = (v28 - v156) >> 2;
    v36 = v23 / v24;
    v163 = 4 * v164;
    v37 = -1.0;
    while (1)
    {
      v38 = *(*v166 + v34);
      v171 = v34;
      v167 = v34 + 1;
      if (v38 >= *(*v166 + v34 + 1))
      {
        v41 = __src;
      }

      else
      {
        v39 = (v156 + v163 * v38);
        v40 = v164 * (v38 - 1);
        v41 = __src;
        do
        {
          v40 += v164;
          if (v40 >= v161)
          {
            __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
          }

          v42 = v41 - __src;
          v43 = 0xAAAAAAAAAAAAAAABLL * ((v41 - __src) >> 2);
          v44 = v43 + 1;
          if (v43 + 1 > 0x1555555555555555)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * (-__src >> 2) > v44)
          {
            v44 = 0x5555555555555556 * (-__src >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-__src >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v45 = 0x1555555555555555;
          }

          else
          {
            v45 = v44;
          }

          if (v45)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::obj::ListEntry>>(v45);
          }

          v46 = 12 * v43;
          v47 = *v39;
          *v46 = *(*v162 + 4 * v38);
          *(v46 + 4) = v47;
          *(v46 + 8) = v38;
          v41 = (12 * v43 + 12);
          v48 = (v46 + 12 * (v42 / -12));
          memcpy(v48, __src, v42);
          if (__src)
          {
            operator delete(__src);
          }

          __src = v48;
          v39 = (v39 + v163);
          *(*v165 + 8 * v38++) = 0;
        }

        while (v38 < *(*v166 + v167));
      }

      v179 = xgboost::obj::ListEntry::CmpPred;
      std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<xgboost::obj::ListEntry *>,BOOL (*)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&)>(__src, v41, &v179);
      std::vector<std::pair<float,unsigned int>>::resize(&v175, 0xAAAAAAAAAAAAAAABLL * ((v41 - __src) >> 2));
      ptr = v175.__ptr_;
      if (v41 != __src)
      {
        v51 = (v175.__ptr_ + 4);
        v52 = (__src + 4);
        v53 = 1;
        do
        {
          v54 = *v52;
          v52 += 3;
          v49 = v54;
          *(v51 - 1) = v54;
          *v51 = v53 - 1;
          v51 += 2;
          v55 = 0xAAAAAAAAAAAAAAABLL * ((v41 - __src) >> 2) > v53++;
        }

        while (v55);
      }

      v180 = xgboost::common::CmpFirst;
      std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<float,unsigned int> *>,BOOL (*)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&)>(ptr, v176, &v180, v49);
      v158 = 0xAAAAAAAAAAAAAAABLL * ((v41 - __src) >> 2);
      v159 = v41;
      v56 = v175.__ptr_;
      v57 = v176;
      if (v176 == v175.__ptr_)
      {
        v61 = v35;
      }

      else
      {
        v58 = 0;
        v59 = 0;
        v60 = (v176 - v175.__ptr_) >> 3;
        v61 = v35;
        do
        {
          v62 = &v56[2 * v58];
          v63 = v60 - 2;
          v64 = 1;
          do
          {
            v65 = v64;
            v66 = v63;
            v58 = v59 + v64;
            if (v60 <= v58)
            {
              break;
            }

            ++v64;
            --v63;
          }

          while (v56[2 * v58] == *v62);
          if (v66 != -1)
          {
            v67 = *(a1 + 24);
            if (v67)
            {
              v169 = v58;
              do
              {
                v170 = v67;
                if (v59 < v58)
                {
                  v68 = v65;
                  v69 = (8 * v59) | 4;
                  do
                  {
                    LODWORD(v180) = 0;
                    HIDWORD(v180) = v66;
                    v70 = std::uniform_int_distribution<unsigned int>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(&v178, &v180);
                    if (v70 >= v59)
                    {
                      v73 = **(v172 + 72);
                      if (*(*(v172 + 72) + 8) == v73)
                      {
                        v74 = 1.0;
                      }

                      else
                      {
                        v74 = *(v73 + 4 * v171);
                      }

                      v81 = v175.__ptr_ + 8 * v65 + 8 * v70;
                      v76 = v36 * v74;
                      v77 = v61 - v35;
                      v82 = 0xAAAAAAAAAAAAAAABLL * ((v61 - v35) >> 2);
                      v83 = v82 + 1;
                      if (v82 + 1 > 0x1555555555555555)
                      {
LABEL_140:
                        std::vector<void *>::__throw_length_error[abi:ne200100]();
                      }

                      if (0x5555555555555556 * (-v35 >> 2) > v83)
                      {
                        v83 = 0x5555555555555556 * (-v35 >> 2);
                      }

                      if (0xAAAAAAAAAAAAAAABLL * (-v35 >> 2) >= 0xAAAAAAAAAAAAAAALL)
                      {
                        v84 = 0x1555555555555555;
                      }

                      else
                      {
                        v84 = v83;
                      }

                      if (v84)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::obj::ListEntry>>(v84);
                      }

                      v85 = 12 * v82;
                      v86 = *(v175.__ptr_ + v69);
                      v87 = *(v81 + 1);
                    }

                    else
                    {
                      v71 = **(v172 + 72);
                      if (*(*(v172 + 72) + 8) == v71)
                      {
                        v72 = 1.0;
                      }

                      else
                      {
                        v72 = *(v71 + 4 * v171);
                      }

                      v75 = v175.__ptr_ + 8 * v70;
                      v76 = v36 * v72;
                      v77 = v61 - v35;
                      v78 = 0xAAAAAAAAAAAAAAABLL * ((v61 - v35) >> 2);
                      v79 = v78 + 1;
                      if (v78 + 1 > 0x1555555555555555)
                      {
                        goto LABEL_140;
                      }

                      if (0x5555555555555556 * (-v35 >> 2) > v79)
                      {
                        v79 = 0x5555555555555556 * (-v35 >> 2);
                      }

                      if (0xAAAAAAAAAAAAAAABLL * (-v35 >> 2) >= 0xAAAAAAAAAAAAAAALL)
                      {
                        v80 = 0x1555555555555555;
                      }

                      else
                      {
                        v80 = v79;
                      }

                      if (v80)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::obj::ListEntry>>(v80);
                      }

                      v85 = 12 * v78;
                      v86 = *(v75 + 1);
                      v87 = *(v175.__ptr_ + v69);
                    }

                    *v85 = v86;
                    *(v85 + 4) = v87;
                    *(v85 + 8) = v76;
                    v61 = (v85 + 12);
                    v88 = v85 - v77;
                    memcpy((v85 - v77), v35, v77);
                    if (v35)
                    {
                      operator delete(v35);
                    }

                    v35 = v88;
                    v69 += 8;
                    --v68;
                  }

                  while (v68);
                }

                v67 = v170 - 1;
                v58 = v169;
              }

              while (v170 != 1);
              v56 = v175.__ptr_;
              v57 = v176;
            }
          }

          v60 = (v57 - v56) >> 3;
          v59 = v58;
        }

        while (v60 > v58);
      }

      std::vector<float>::vector[abi:ne200100](&__p, v158);
      v90 = __p;
      if (v159 != __src)
      {
        if (v158 <= 1)
        {
          v91 = 1;
        }

        else
        {
          v91 = v158;
        }

        v92 = (__src + 4);
        v93 = __p;
        do
        {
          v94 = *v92;
          v92 += 3;
          v89 = v94;
          *v93++ = v94;
          --v91;
        }

        while (v91);
      }

      v95 = v182;
      v96 = v182 - v90;
      v97 = MEMORY[0x277D826F0];
      if (v96 < 129)
      {
        v100 = 0;
LABEL_102:
        std::__stable_sort<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(v90, v95, v96, 0, v100, v89);
      }

      else
      {
        v98 = v182 - v90;
        while (1)
        {
          v99 = operator new(4 * v98, v97);
          if (v99)
          {
            break;
          }

          v100 = v98 >> 1;
          v55 = v98 > 1;
          v98 >>= 1;
          if (!v55)
          {
            goto LABEL_102;
          }
        }

        v101 = v99;
        std::__stable_sort<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(v90, v95, v96, v99, v98, v89);
        operator delete(v101);
      }

      v102 = __p;
      if (((v182 - __p) & 0x3FFFFFFFCLL) == 0)
      {
        break;
      }

      v103 = 0;
      v104 = ((v182 - __p) >> 2);
      v105 = 0.0;
      do
      {
        v106 = v102[v103];
        v107 = 0.0;
        if (v106)
        {
          v107 = (~(-1 << v106) / log2f((v103 + 2)));
        }

        v105 = v105 + v107;
        ++v103;
      }

      while (v104 != v103);
      v108 = v105;
      v182 = v102;
      operator delete(v102);
      if (v108 == 0.0)
      {
        goto LABEL_118;
      }

      if (v35 != v61)
      {
        v109 = v35;
        v110 = 1.0 / v108;
        do
        {
          v111 = *(v109 + 1);
          v112 = *(__src + 12 * *v109 + 4);
          v113 = *(__src + 12 * v111 + 4);
          v114 = 1.0 / log2f(*v109 + 2.0);
          v37 = -1.0;
          v115 = log2f(v111 + 2.0);
          v116 = v110 * ((((1.0 / v115) * ~(-1 << v113)) + (~(-1 << v112) * v114)) - (((1.0 / v115) * ~(-1 << v112)) + (~(-1 << v113) * v114)));
          v117 = -v116;
          if (v116 >= 0.0)
          {
            v117 = v116;
          }

          v109[2] = v109[2] * v117;
          v109 += 3;
        }

        while (v109 != v61);
      }

LABEL_127:
      v125 = 1.0 / *(a1 + 24);
      v126 = *(a1 + 32);
      if (v126 != 0.0)
      {
        v125 = v125 * (v126 / (*(*v166 + v167) - *(*v166 + v171)));
      }

      if (v35 != v61)
      {
        v127 = *v165;
        v128 = v35;
        do
        {
          v129 = __src + 12 * *v128;
          v130 = __src + 12 * *(v128 + 1);
          v131 = v125 * v128[2];
          v132 = *v129 - *v130;
          if (v132 >= -88.7)
          {
            v133 = -v132;
          }

          else
          {
            v133 = 88.7;
          }

          v134 = 1.0 / ((expf(v133) + 1.0) + 1.0e-16);
          v135 = v134 + v37;
          v136 = v134 * (1.0 - v134);
          if (v136 < 1.0e-16)
          {
            v136 = 1.0e-16;
          }

          v137 = (v131 + v131) * v136;
          v138 = (v127 + 8 * *(v129 + 8));
          v139 = v138[1] + v137;
          *v138 = *v138 + (v131 * v135);
          v138[1] = v139;
          v140 = (v127 + 8 * *(v130 + 8));
          v141 = v140[1] + v137;
          *v140 = *v140 - (v131 * v135);
          v140[1] = v141;
          v128 += 3;
        }

        while (v128 != v61);
      }

      v34 = v167;
      if (v167 == v157)
      {
        if (v175.__ptr_)
        {
          v176 = v175.__ptr_;
          operator delete(v175.__ptr_);
        }

        if (__src)
        {
          operator delete(__src);
        }

        if (v35)
        {
          operator delete(v35);
        }

        goto LABEL_148;
      }
    }

    if (__p)
    {
      v182 = __p;
      operator delete(__p);
    }

LABEL_118:
    if (v35 != v61)
    {
      v118 = 0;
      v119 = (v61 - v35 - 12) / 0xC;
      v120 = (v119 + 4) & 0x3FFFFFFFFFFFFFFCLL;
      v121 = vdupq_n_s64(v119);
      v122 = (v35 + 32);
      do
      {
        v123 = vdupq_n_s64(v118);
        v124 = vmovn_s64(vcgeq_u64(v121, vorrq_s8(v123, xmmword_274E1F3B0)));
        if (vuzp1_s16(v124, *v121.i8).u8[0])
        {
          *(v122 - 6) = 0;
        }

        if (vuzp1_s16(v124, *&v121).i8[2])
        {
          *(v122 - 3) = 0;
        }

        if (vuzp1_s16(*&v121, vmovn_s64(vcgeq_u64(v121, vorrq_s8(v123, xmmword_274E1FC60)))).i32[1])
        {
          *v122 = 0;
          v122[3] = 0;
        }

        v118 += 4;
        v122 += 12;
      }

      while (v120 != v118);
    }

    goto LABEL_127;
  }

LABEL_148:
  dmlc::OMPException::Rethrow(&v184);
  std::mutex::~mutex(v185);
  std::exception_ptr::~exception_ptr(&v184);
  if (v173)
  {
    v174[0] = v173;
    operator delete(v173);
  }
}

void sub_274D580E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  if (v46)
  {
    operator delete(v46);
  }

  JUMPOUT(0x274D58274);
}

void sub_274D580F0(void *a1, int a2)
{
  __cxa_end_catch();
  if (v7[0].__ptr_)
  {
    v7[1] = v7[0];
    operator delete(v7[0].__ptr_);
  }

  if (v6)
  {
    operator delete(v6);
  }

  if (v3)
  {
    operator delete(v3);
  }

  if (a2 == v2 || a2 == 2)
  {
    __cxa_begin_catch(a1);
    std::mutex::lock(v9);
    if (!v8.__ptr_)
    {
      std::current_exception();
      std::exception_ptr::operator=(&v8, v7);
      std::exception_ptr::~exception_ptr(v7);
    }

    std::mutex::unlock(v9);
    __cxa_end_catch();
    JUMPOUT(0x274D57F54);
  }

  JUMPOUT(0x274D581F0);
}

void sub_274D58100(void *a1, int a2)
{
  __cxa_end_catch();
  if (v7[0].__ptr_)
  {
    v7[1] = v7[0];
    operator delete(v7[0].__ptr_);
  }

  if (v6)
  {
    operator delete(v6);
  }

  if (v3)
  {
    operator delete(v3);
  }

  if (a2 == v2 || a2 == 2)
  {
    __cxa_begin_catch(a1);
    std::mutex::lock(v9);
    if (!v8.__ptr_)
    {
      std::current_exception();
      std::exception_ptr::operator=(&v8, v7);
      std::exception_ptr::~exception_ptr(v7);
    }

    std::mutex::unlock(v9);
    __cxa_end_catch();
    JUMPOUT(0x274D57F54);
  }

  JUMPOUT(0x274D581F0);
}

void sub_274D581C0()
{
  __cxa_end_catch();
  std::mutex::~mutex(&v1);
  std::exception_ptr::~exception_ptr(&v0);
  JUMPOUT(0x274D5822CLL);
}

void sub_274D581CC()
{
  __cxa_end_catch();
  std::mutex::~mutex(&v1);
  std::exception_ptr::~exception_ptr(&v0);
  JUMPOUT(0x274D5822CLL);
}

void sub_274D581DC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (v49)
  {
    operator delete(v49);
  }

  JUMPOUT(0x274D58274);
}

void sub_274D581E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v48 = a47;
  a47 = 0;
  if (v48)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a47, v48);
  }

  _Unwind_Resume(a1);
}

void sub_274D58208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float s0_0, __n128 q1_0, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  xgboost::ConsoleLogger::~ConsoleLogger(va, s0_0, q1_0);
  JUMPOUT(0x274D58214);
}

void sub_274D58248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D58254);
}

void sub_274D5826C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x274D58274);
  }

  __clang_call_terminate(a1);
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(float *result, float *a2, unint64_t a3, float *a4, int64_t a5, float a6)
{
  if (a3 >= 2)
  {
    v7 = result;
    if (a3 == 2)
    {
      v8 = *(a2 - 1);
      v9 = *result;
      if (v8 > *result)
      {
        *result = v8;
        *(a2 - 1) = v9;
      }
    }

    else if (a3 > 128)
    {
      v19 = a4;
      v20 = a3 >> 1;
      v21 = &result[a3 >> 1];
      v22 = a3 >> 1;
      if (a3 <= a5)
      {
        v23 = std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(result, v21, v22, a4, a6);
        v24 = &v19[v20];
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(&v7[a3 >> 1], a2, a3 - (a3 >> 1), v24, v23);
        v25 = &v19[a3];
        v26 = v24;
        while (v26 != v25)
        {
          v27 = *v26;
          v28 = *v26 > *v19;
          if (*v26 <= *v19)
          {
            v27 = *v19;
          }

          v19 += *v26 <= *v19;
          v26 += v28;
          *v7++ = v27;
          if (v19 == v24)
          {
            while (v26 != v25)
            {
              v30 = *v26++;
              *v7++ = v30;
            }

            return;
          }
        }

        while (v19 != v24)
        {
          v29 = *v19++;
          *v7++ = v29;
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(result, v21, v22, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(&v7[a3 >> 1], a2, a3 - (a3 >> 1), v19, a5);

        std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(v7, &v7[a3 >> 1], a2, a3 >> 1, a3 - (a3 >> 1), v19, a5);
      }
    }

    else if (result != a2)
    {
      v11 = result + 1;
      if (result + 1 != a2)
      {
        v12 = 0;
        v13 = result;
        do
        {
          v14 = *v13;
          v13 = v11;
          v15 = *v11;
          if (*v11 > v14)
          {
            v16 = v12;
            while (1)
            {
              *(result + v16 + 4) = v14;
              if (!v16)
              {
                break;
              }

              v14 = *(result + v16 - 4);
              v16 -= 4;
              if (v15 <= v14)
              {
                v17 = (result + v16 + 4);
                goto LABEL_16;
              }
            }

            v17 = result;
LABEL_16:
            *v17 = v15;
          }

          v11 = v13 + 1;
          v12 += 4;
        }

        while (v13 + 1 != a2);
      }
    }
  }
}

float std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(float *a1, float *a2, unint64_t a3, float *a4, float result)
{
  if (a3)
  {
    v5 = a4;
    v7 = a1;
    if (a3 == 1)
    {
LABEL_9:
      result = *v7;
      *v5 = *v7;
      return result;
    }

    if (a3 == 2)
    {
      v9 = *(a2 - 1);
      v10 = v9 <= *a1;
      if (v9 <= *a1)
      {
        v9 = *a1;
      }

      *a4 = v9;
      v5 = a4 + 1;
      if (v10)
      {
        v7 = a2 - 1;
      }

      goto LABEL_9;
    }

    if (a3 > 8)
    {
      v19 = &a1[a3 >> 1];
      std::__stable_sort<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(a1, v19, a3 >> 1, a4, a3 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(&v7[a3 >> 1], a2, a3 - (a3 >> 1), &v5[a3 >> 1], a3 - (a3 >> 1));
      v20 = &v7[a3 >> 1];
      while (v20 != a2)
      {
        result = *v20;
        v21 = *v20 <= *v7;
        if (*v20 <= *v7)
        {
          result = *v7;
        }

        v20 += *v20 > *v7;
        v7 += v21;
        *v5++ = result;
        if (v7 == v19)
        {
          while (v20 != a2)
          {
            v23 = *v20++;
            result = v23;
            *v5++ = v23;
          }

          return result;
        }
      }

      while (v7 != v19)
      {
        v22 = *v7++;
        result = v22;
        *v5++ = v22;
      }
    }

    else if (a1 != a2)
    {
      v11 = a1 + 1;
      result = *a1;
      *a4 = *a1;
      if (a1 + 1 != a2)
      {
        v12 = 0;
        v13 = a4;
        v14 = a4;
        do
        {
          v15 = *v14++;
          result = v15;
          if (*v11 <= v15)
          {
            *v14 = *v11;
          }

          else
          {
            v13[1] = result;
            v16 = a4;
            if (v13 != a4)
            {
              v17 = v12;
              while (1)
              {
                v16 = (a4 + v17);
                v18 = *(a4 + v17 - 4);
                if (*v11 <= v18)
                {
                  break;
                }

                *v16 = v18;
                v17 -= 4;
                if (!v17)
                {
                  v16 = a4;
                  break;
                }
              }
            }

            result = *v11;
            *v16 = *v11;
          }

          ++v11;
          v12 += 4;
          v13 = v14;
        }

        while (v11 != a2);
      }
    }
  }

  return result;
}

float *std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(float *result, float *a2, float *a3, uint64_t a4, uint64_t a5, float *a6, uint64_t a7)
{
  if (a5)
  {
    v7 = a5;
    v10 = result;
    while (a4 > a7 && v7 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v11 = 0;
      v12 = *a2;
      v13 = -a4;
      while (1)
      {
        v14 = *(v11 + v10);
        if (v12 > v14)
        {
          break;
        }

        ++v11;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v16 = -v13;
      v17 = (v11 + v10);
      if (-v13 >= v7)
      {
        if (v13 == -1)
        {
          *(v11 + v10) = v12;
          *a2 = v14;
          return result;
        }

        v26 = v16 / 2;
        v27 = &v10[v16 / 2];
        v19 = a2;
        if (a2 != a3)
        {
          v28 = a3 - a2;
          v19 = a2;
          do
          {
            v29 = v28 >> 1;
            v30 = &v19[v28 >> 1];
            v32 = *v30;
            v31 = v30 + 1;
            v28 += ~(v28 >> 1);
            if (v32 > *(v11 + v27))
            {
              v19 = v31;
            }

            else
            {
              v28 = v29;
            }
          }

          while (v28);
        }

        v18 = v19 - a2;
        v20 = (v11 + v27);
      }

      else
      {
        v18 = v7 / 2;
        v19 = &a2[v7 / 2];
        v20 = a2;
        if ((a2 - v10) != v11)
        {
          v21 = (a2 - v10 - v11) >> 2;
          v20 = (v11 + v10);
          do
          {
            v22 = v21 >> 1;
            v23 = &v20[v21 >> 1];
            v25 = *v23;
            v24 = v23 + 1;
            v21 += ~(v21 >> 1);
            if (*v19 > v25)
            {
              v21 = v22;
            }

            else
            {
              v20 = v24;
            }
          }

          while (v21);
        }

        v26 = (v20 - v10 - v11) >> 2;
      }

      v33 = v19;
      v34 = a2 - v20;
      if (a2 != v20)
      {
        v33 = v20;
        v35 = v19 - a2;
        if (v19 != a2)
        {
          if (v20 + 1 == a2)
          {
            v36 = *v20;
            v81 = a6;
            v83 = a7;
            v37 = a3;
            v79 = v18;
            v38 = v26;
            memmove(v20, a2, v19 - a2);
            v26 = v38;
            v18 = v79;
            a6 = v81;
            v17 = (v11 + v10);
            a7 = v83;
            a3 = v37;
            v33 = (v20 + v35);
            *(v20 + v35) = v36;
          }

          else if (a2 + 1 == v19)
          {
            v39 = *(v19 - 1);
            v33 = v20 + 1;
            if (v19 - 1 != v20)
            {
              v82 = a6;
              v84 = a7;
              v40 = a3;
              v80 = v18;
              v41 = v26;
              memmove(v20 + 1, v20, (v19 - 1) - v20);
              v26 = v41;
              v18 = v80;
              a6 = v82;
              v17 = (v11 + v10);
              a7 = v84;
              a3 = v40;
            }

            *v20 = v39;
          }

          else
          {
            v42 = v34 >> 2;
            if (v34 >> 2 == v35 >> 2)
            {
              v43 = v20 + 1;
              v44 = a2 + 1;
              do
              {
                v45 = *(v43 - 1);
                *(v43 - 1) = *(v44 - 1);
                *(v44 - 1) = v45;
                if (v43 == a2)
                {
                  break;
                }

                ++v43;
              }

              while (v44++ != v19);
              v33 = a2;
            }

            else
            {
              v47 = v35 >> 2;
              v48 = v34 >> 2;
              do
              {
                v49 = v48;
                v48 = v47;
                v47 = v49 % v47;
              }

              while (v47);
              v50 = &v20[v48];
              do
              {
                v51 = *(v50-- - 1);
                v52 = v51;
                v53 = (v50 + v34);
                v54 = v50;
                do
                {
                  v55 = v53;
                  *v54 = *v53;
                  v56 = &v53[v42];
                  v57 = __OFSUB__(v42, v19 - v53);
                  v59 = v42 - (v19 - v53);
                  v58 = (v59 < 0) ^ v57;
                  v53 = &v20[v59];
                  if (v58)
                  {
                    v53 = v56;
                  }

                  v54 = v55;
                }

                while (v53 != v50);
                *v55 = v52;
              }

              while (v50 != v20);
              v33 = (v20 + v35);
            }
          }
        }
      }

      a4 = -(v26 + v13);
      v60 = v7 - v18;
      if (v26 + v18 >= v7 - (v26 + v18) - v13)
      {
        v65 = v26;
        v66 = -(v26 + v13);
        v67 = v18;
        v62 = a6;
        v63 = a7;
        v10 = v17;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(v33, v19, a3, v66, v60, a6, a7);
        v19 = v20;
        v60 = v67;
        a4 = v65;
        a3 = v33;
      }

      else
      {
        v61 = (v11 + v10);
        v62 = a6;
        v63 = a7;
        v64 = a3;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<void> &,std::__wrap_iter<float *>>(v61, v20, v33, v26, v18, a6, a7);
        a3 = v64;
        v10 = v33;
      }

      v7 = v60;
      a2 = v19;
      a6 = v62;
      a7 = v63;
      if (!v60)
      {
        return result;
      }
    }

    if (a4 <= v7)
    {
      if (a2 != v10)
      {
        v71 = -a6;
        v72 = a6;
        v73 = v10;
        do
        {
          v74 = *v73++;
          *v72++ = v74;
          v71 -= 4;
        }

        while (v73 != a2);
        while (a2 != a3)
        {
          v75 = *a2;
          v76 = *a2 <= *a6;
          if (*a2 <= *a6)
          {
            v75 = *a6;
          }

          a2 += *a2 > *a6;
          a6 += v76;
          *v10++ = v75;
          if (v72 == a6)
          {
            return result;
          }
        }

        return memmove(v10, a6, -(a6 + v71));
      }
    }

    else if (a2 != a3)
    {
      v68 = 0;
      do
      {
        a6[v68] = a2[v68];
        ++v68;
      }

      while (&a2[v68] != a3);
      v69 = &a6[v68];
      while (a2 != v10)
      {
        v70 = *(v69 - 1);
        if (v70 <= *(a2 - 1))
        {
          --v69;
        }

        else
        {
          v70 = *--a2;
        }

        *--a3 = v70;
        if (v69 == a6)
        {
          return result;
        }
      }

      if (v69 != a6)
      {
        v77 = 0x3FFFFFFFFFFFFFFFLL;
        do
        {
          v78 = *--v69;
          a3[v77--] = v78;
        }

        while (v69 != a6);
      }
    }
  }

  return result;
}

void xgboost::obj::LambdaRankObj<xgboost::obj::MAPLambdaWeightComputer>::LoadConfig(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "lambda_rank_param");
  v4 = (*(**a2 + 24))(*a2, __p);
  xgboost::FromJson<xgboost::obj::LambdaRankParam>(v7, *v4, (a1 + 16));
  v8 = v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274D58CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::obj::LambdaRankObj<xgboost::obj::MAPLambdaWeightComputer>::SaveConfig(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v5, "rank:map");
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

void xgboost::obj::LambdaRankObj<xgboost::obj::MAPLambdaWeightComputer>::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::obj::LambdaRankParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v2, (a1 + 16), a2);
  v3 = v2;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void xgboost::obj::LambdaRankObj<xgboost::obj::MAPLambdaWeightComputer>::GetGradient(uint64_t a1, uint64_t **a2, uint64_t a3, int a4, uint64_t **a5)
{
  v162 = *MEMORY[0x277D85DE8];
  __p = (((*a2)[1] - **a2) >> 2);
  v152 = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (__p != v152)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&__p, &v152);
  }

  LODWORD(v160.__ptr_) = 0;
  std::vector<unsigned int>::vector[abi:ne200100](&v152, 2uLL, &v160);
  v11 = *(a3 + 48);
  v12 = (*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2;
  v13 = v152;
  *(v152 + 1) = v12;
  v14 = *(a3 + 56);
  if (v14 == v11)
  {
    v15 = &v152;
  }

  else
  {
    v13 = v11;
    v15 = (a3 + 48);
  }

  if (v14 == v11)
  {
    v16 = v153;
  }

  else
  {
    v16 = (a3 + 56);
  }

  if (*v16 == v13 || v12 != *(*v16 - 1))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v160);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/rank_obj.cu", 768);
    v122 = dmlc::LogMessageFatal::GetEntry(&v160);
    v123 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, "Check failed: gptr.size() != 0 && gptr.back() == info.labels.Size()", 67);
    v124 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v123, ": ", 2);
    v125 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v124, "group structure not consistent with #rows", 41);
    v126 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v125, ", ", 2);
    v127 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v126, "group ponter size: ", 19);
    v128 = MEMORY[0x277C68E50](v127, (*v16 - *v15) >> 2);
    v129 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v128, ", ", 2);
    v130 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v129, "labels size: ", 13);
    v131 = MEMORY[0x277C68E50](v130, (*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
    v132 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v131, ", ", 2);
    v133 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v132, "group pointer back: ", 20);
    if (*v16 == *v15)
    {
      v134 = 0;
    }

    else
    {
      v134 = *(*v16 - 1);
    }

    MEMORY[0x277C68E30](v133, v134);
    dmlc::LogMessageFatal::~LogMessageFatal(&v160);
  }

  if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v9, v10) + 4) >= 3)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/rank_obj.cu");
    xgboost::ConsoleLogger::ConsoleLogger(&v160, &__p, 818, 3);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v160, "Computing ", 10);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "rank:map", 8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " gradients on CPU.", 18);
    xgboost::ConsoleLogger::~ConsoleLogger(&v160, v19, v20);
    if (SHIBYTE(v156) < 0)
    {
      operator delete(__p);
    }
  }

  v21 = v153;
  if (v14 != v11)
  {
    v21 = (a3 + 56);
  }

  v22 = (*v21 - *v15) >> 2;
  v23 = (v22 - 1);
  if (v22 == 1)
  {
    v26 = 0;
    v24 = 0.0;
  }

  else
  {
    v24 = 0.0;
    v25 = **(a3 + 72);
    v26 = (v22 - 1);
    do
    {
      if (*(*(a3 + 72) + 8) == **(a3 + 72))
      {
        v27 = 1.0;
      }

      else
      {
        v27 = *v25;
      }

      v24 = v24 + v27;
      ++v25;
      --v23;
    }

    while (v23);
  }

  v28 = *(*(a3 + 24) + 8);
  v135 = **(a3 + 24);
  v29 = *(a3 + 40);
  v30 = *a5;
  v143 = *a2;
  v31 = (v143[1] - *v143) >> 2;
  v160.__ptr_ = 0;
  v145 = v29;
  v146 = v30;
  std::vector<xgboost::detail::GradientPairInternal<float>>::resize(v30, v31, &v160);
  v160.__ptr_ = 0;
  v161[0].__m_.__sig = 850045863;
  memset(v161[0].__m_.__opaque, 0, sizeof(v161[0].__m_.__opaque));
  v32 = (3 * (1111 * a4 + 1111)) >> 32;
  v33 = 1111 * a4 + 1111 + (((v32 + ((1111 * a4 + 1111 - v32) >> 1)) >> 30) | ((v32 + ((1111 * a4 + 1111 - v32) >> 1)) >> 30 << 31));
  if (v33 <= 1)
  {
    v33 = 1;
  }

  v157 = v33;
  __p = 0;
  v155 = 0;
  v156 = 0;
  if (v26)
  {
    __src = 0;
    v34 = 0;
    v136 = v26;
    v35 = v26 / v24;
    v142 = (v28 - v135) >> 2;
    v144 = 4 * v145;
    v150 = a3;
    v36 = 0;
    v138 = v15;
    do
    {
      v37 = *(*v15 + v36);
      v151 = v36;
      v140 = v36 + 1;
      if (v37 >= *(*v15 + v36 + 1))
      {
        v40 = __src;
      }

      else
      {
        v38 = (v135 + v144 * v37);
        v39 = v145 * (v37 - 1);
        v40 = __src;
        do
        {
          v39 += v145;
          if (v39 >= v142)
          {
            __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
          }

          v41 = v40 - __src;
          v42 = 0xAAAAAAAAAAAAAAABLL * ((v40 - __src) >> 2);
          v43 = v42 + 1;
          if (v42 + 1 > 0x1555555555555555)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * (-__src >> 2) > v43)
          {
            v43 = 0x5555555555555556 * (-__src >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-__src >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v44 = 0x1555555555555555;
          }

          else
          {
            v44 = v43;
          }

          if (v44)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::obj::ListEntry>>(v44);
          }

          v45 = (4 * ((v40 - __src) >> 2));
          v46 = *v38;
          *v45 = *(*v143 + 4 * v37);
          v45[1] = v46;
          v45[2] = v37;
          v40 = (v45 + 3);
          v47 = 12 * v42 + 12 * (v41 / -12);
          memcpy(&v45[3 * (v41 / -12)], __src, v41);
          if (__src)
          {
            operator delete(__src);
          }

          __src = v47;
          v38 = (v38 + v144);
          *(*v146 + 8 * v37++) = 0;
        }

        while (v37 < *(*v15 + v140));
      }

      v158 = xgboost::obj::ListEntry::CmpPred;
      std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<xgboost::obj::ListEntry *>,BOOL (*)(xgboost::obj::ListEntry const&,xgboost::obj::ListEntry const&)>(__src, v40, &v158);
      std::vector<std::pair<float,unsigned int>>::resize(&__p, 0xAAAAAAAAAAAAAAABLL * ((v40 - __src) >> 2));
      v49 = __p;
      if (v40 != __src)
      {
        v50 = (__p + 4);
        v51 = (__src + 4);
        v52 = 1;
        do
        {
          v53 = *v51;
          v51 += 3;
          v48 = v53;
          *(v50 - 1) = v53;
          *v50 = v52 - 1;
          v50 += 2;
          v94 = 0xAAAAAAAAAAAAAAABLL * ((v40 - __src) >> 2) > v52++;
        }

        while (v94);
      }

      v159 = xgboost::common::CmpFirst;
      std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<float,unsigned int> *>,BOOL (*)(std::pair<float,unsigned int> const&,std::pair<float,unsigned int> const&)>(v49, v155, &v159, v48);
      v137 = 0xAAAAAAAAAAAAAAABLL * ((v40 - __src) >> 2);
      v139 = v40;
      v54 = __p;
      v55 = v155;
      if (v155 == __p)
      {
        v59 = v34;
      }

      else
      {
        v56 = 0;
        v57 = 0;
        v58 = (v155 - __p) >> 3;
        v59 = v34;
        v60 = v150;
        do
        {
          v61 = &v54[2 * v56];
          v62 = v58 - 2;
          v63 = 1;
          do
          {
            v64 = v63;
            v65 = v62;
            v56 = v57 + v63;
            if (v58 <= v56)
            {
              break;
            }

            ++v63;
            --v62;
          }

          while (v54[2 * v56] == *v61);
          if (v65 != -1)
          {
            v66 = *(a1 + 24);
            if (v66)
            {
              v148 = v56;
              do
              {
                v149 = v66;
                if (v57 < v56)
                {
                  v67 = v64;
                  v68 = (8 * v57) | 4;
                  do
                  {
                    LODWORD(v159) = 0;
                    HIDWORD(v159) = v65;
                    v69 = std::uniform_int_distribution<unsigned int>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(&v157, &v159);
                    if (v69 >= v57)
                    {
                      v72 = **(v60 + 72);
                      if (*(*(v60 + 72) + 8) == v72)
                      {
                        v73 = 1.0;
                      }

                      else
                      {
                        v73 = *(v72 + 4 * v151);
                      }

                      v80 = __p + 8 * v64 + 8 * v69;
                      v75 = v35 * v73;
                      v76 = v59 - v34;
                      v81 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v34) >> 2);
                      v82 = v81 + 1;
                      if (v81 + 1 > 0x1555555555555555)
                      {
LABEL_138:
                        std::vector<void *>::__throw_length_error[abi:ne200100]();
                      }

                      if (0x5555555555555556 * (-v34 >> 2) > v82)
                      {
                        v82 = 0x5555555555555556 * (-v34 >> 2);
                      }

                      if (0xAAAAAAAAAAAAAAABLL * (-v34 >> 2) >= 0xAAAAAAAAAAAAAAALL)
                      {
                        v83 = 0x1555555555555555;
                      }

                      else
                      {
                        v83 = v82;
                      }

                      if (v83)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::obj::ListEntry>>(v83);
                      }

                      v84 = 12 * v81;
                      v85 = *(__p + v68);
                      v86 = *(v80 + 1);
                    }

                    else
                    {
                      v70 = **(v60 + 72);
                      if (*(*(v60 + 72) + 8) == v70)
                      {
                        v71 = 1.0;
                      }

                      else
                      {
                        v71 = *(v70 + 4 * v151);
                      }

                      v74 = __p + 8 * v69;
                      v75 = v35 * v71;
                      v76 = v59 - v34;
                      v77 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v34) >> 2);
                      v78 = v77 + 1;
                      if (v77 + 1 > 0x1555555555555555)
                      {
                        goto LABEL_138;
                      }

                      if (0x5555555555555556 * (-v34 >> 2) > v78)
                      {
                        v78 = 0x5555555555555556 * (-v34 >> 2);
                      }

                      if (0xAAAAAAAAAAAAAAABLL * (-v34 >> 2) >= 0xAAAAAAAAAAAAAAALL)
                      {
                        v79 = 0x1555555555555555;
                      }

                      else
                      {
                        v79 = v78;
                      }

                      if (v79)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::obj::ListEntry>>(v79);
                      }

                      v84 = 12 * v77;
                      v85 = *(v74 + 1);
                      v86 = *(__p + v68);
                    }

                    *v84 = v85;
                    *(v84 + 4) = v86;
                    *(v84 + 8) = v75;
                    v59 = (v84 + 12);
                    v87 = v84 - v76;
                    memcpy((v84 - v76), v34, v76);
                    if (v34)
                    {
                      operator delete(v34);
                    }

                    v34 = v87;
                    v60 = v150;
                    v68 += 8;
                    --v67;
                  }

                  while (v67);
                }

                v66 = v149 - 1;
                v56 = v148;
              }

              while (v149 != 1);
              v54 = __p;
              v55 = v155;
            }
          }

          v58 = (v55 - v54) >> 3;
          v57 = v56;
        }

        while (v58 > v56);
      }

      if (v139 != __src)
      {
        if (!(v137 >> 60))
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v36 = v140;
      if (v34 != v59)
      {
        v88 = v34;
        do
        {
          v89 = *v88;
          v90 = *(v88 + 4);
          v91 = 0.0;
          if (*v88 != v90 && MEMORY[0xFFFFFFFFC] != 0.0)
          {
            v92 = *(__src + 12 * v89 + 4);
            v93 = *(__src + 12 * v90 + 4);
            v94 = v89 <= v90;
            if (v89 > v90)
            {
              v95 = *(v88 + 4);
            }

            else
            {
              v95 = *v88;
            }

            if (v89 <= v90)
            {
              v89 = *(v88 + 4);
            }

            if (v94)
            {
              v96 = v92;
            }

            else
            {
              v96 = *(__src + 12 * v90 + 4);
            }

            if (!v94)
            {
              v93 = v92;
            }

            v97 = (16 * v89);
            v98 = *v97;
            if (v95)
            {
              v98 = v98 - *(16 * v95 - 16);
            }

            v94 = v96 <= 0.0;
            v91 = 0.0;
            if (v94)
            {
              v99 = 0.0;
            }

            else
            {
              v99 = 1.0;
            }

            if (v93 <= 0.0)
            {
              v100 = 0.0;
            }

            else
            {
              v100 = 1.0;
            }

            if (v99 != v100)
            {
              if (v99 >= v100)
              {
                v101 = *(v97 - 3) - *(16 * v95 + 4);
                v102 = *(16 * v89 + 0xC);
                v95 = v89;
              }

              else
              {
                v101 = *(v97 - 2) - *(16 * v95 + 8);
                v102 = *(16 * v95 + 0xC) + 1.0;
              }

              v103 = (((v101 + 0.0) + (v102 / (v95 + 1))) - v98) / MEMORY[0xFFFFFFFFC];
              if (v103 >= 0.0)
              {
                v91 = (((v101 + 0.0) + (v102 / (v95 + 1))) - v98) / MEMORY[0xFFFFFFFFC];
              }

              else
              {
                v91 = -v103;
              }
            }
          }

          *(v88 + 8) = v91 * *(v88 + 8);
          v88 += 12;
        }

        while (v88 != v59);
      }

      v104 = 1.0 / *(a1 + 24);
      v105 = *(a1 + 32);
      if (v105 != 0.0)
      {
        v104 = v104 * (v105 / (*(*v138 + v140) - *(*v138 + v151)));
      }

      if (v34 == v59)
      {
        v15 = v138;
      }

      else
      {
        v106 = *v146;
        v107 = v34;
        do
        {
          v108 = __src + 12 * *v107;
          v109 = __src + 12 * *(v107 + 1);
          v110 = v104 * v107[2];
          v111 = *v108 - *v109;
          if (v111 >= -88.7)
          {
            v112 = -v111;
          }

          else
          {
            v112 = 88.7;
          }

          v113 = 1.0 / ((expf(v112) + 1.0) + 1.0e-16);
          v114 = v113 + -1.0;
          v115 = v113 * (1.0 - v113);
          if (v115 < 1.0e-16)
          {
            v115 = 1.0e-16;
          }

          v116 = (v110 + v110) * v115;
          v117 = (v106 + 8 * *(v108 + 8));
          v118 = v117[1] + v116;
          *v117 = *v117 + (v110 * v114);
          v117[1] = v118;
          v119 = (v106 + 8 * *(v109 + 8));
          v120 = v119[1] + v116;
          *v119 = *v119 - (v110 * v114);
          v119[1] = v120;
          v107 += 3;
        }

        while (v107 != v59);
        v15 = v138;
      }
    }

    while (v140 != v136);
    if (__p)
    {
      v155 = __p;
      operator delete(__p);
    }

    if (__src)
    {
      operator delete(__src);
    }

    if (v34)
    {
      operator delete(v34);
    }
  }

  dmlc::OMPException::Rethrow(&v160);
  std::mutex::~mutex(v161);
  std::exception_ptr::~exception_ptr(&v160);
  if (v152)
  {
    v153[0] = v152;
    operator delete(v152);
  }
}

void sub_274D59D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  if (v38)
  {
    operator delete(v38);
  }

  JUMPOUT(0x274D59EC4);
}

void sub_274D59D3C(void *a1, int a2)
{
  __cxa_end_catch();
  if (v7[0].__ptr_)
  {
    v7[1] = v7[0];
    operator delete(v7[0].__ptr_);
  }

  if (v6)
  {
    operator delete(v6);
  }

  if (v3)
  {
    operator delete(v3);
  }

  if (a2 == v2 || a2 == 2)
  {
    __cxa_begin_catch(a1);
    std::mutex::lock(v9);
    if (!v8.__ptr_)
    {
      std::current_exception();
      std::exception_ptr::operator=(&v8, v7);
      std::exception_ptr::~exception_ptr(v7);
    }

    std::mutex::unlock(v9);
    __cxa_end_catch();
    JUMPOUT(0x274D59BA8);
  }

  JUMPOUT(0x274D59E40);
}

void sub_274D59D50(void *a1, int a2)
{
  __cxa_end_catch();
  if (v7[0].__ptr_)
  {
    v7[1] = v7[0];
    operator delete(v7[0].__ptr_);
  }

  if (v6)
  {
    operator delete(v6);
  }

  if (v3)
  {
    operator delete(v3);
  }

  if (a2 == v2 || a2 == 2)
  {
    __cxa_begin_catch(a1);
    std::mutex::lock(v9);
    if (!v8.__ptr_)
    {
      std::current_exception();
      std::exception_ptr::operator=(&v8, v7);
      std::exception_ptr::~exception_ptr(v7);
    }

    std::mutex::unlock(v9);
    __cxa_end_catch();
    JUMPOUT(0x274D59BA8);
  }

  JUMPOUT(0x274D59E40);
}

void sub_274D59E10()
{
  __cxa_end_catch();
  std::mutex::~mutex(&v1);
  std::exception_ptr::~exception_ptr(&v0);
  JUMPOUT(0x274D59E7CLL);
}

void sub_274D59E1C()
{
  __cxa_end_catch();
  std::mutex::~mutex(&v1);
  std::exception_ptr::~exception_ptr(&v0);
  JUMPOUT(0x274D59E7CLL);
}

void sub_274D59E2C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (v37)
  {
    operator delete(v37);
  }

  JUMPOUT(0x274D59EC4);
}

void sub_274D59E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v40 = a39;
  a39 = 0;
  if (v40)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a39, v40);
  }

  _Unwind_Resume(a1);
}

void sub_274D59E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float s0_0, __n128 q1_0, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  xgboost::ConsoleLogger::~ConsoleLogger(va, s0_0, q1_0);
  JUMPOUT(0x274D59E64);
}

void sub_274D59E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D59EA4);
}

void sub_274D59EBC(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x274D59EC4);
  }

  __clang_call_terminate(a1);
}

uint64_t rabit::c_api::Allreduce(rabit::engine *a1, const char *a2, uint64_t a3, int a4)
{
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      if (a3 > 3)
      {
        if (a3 < 8)
        {
          goto LABEL_36;
        }
      }

      else if (a3 >= 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_12;
      }

      if (a3 > 3)
      {
        if (a3 <= 5)
        {
          goto LABEL_36;
        }

        if (a3 == 6 || a3 == 7)
        {
          v4 = "DataType does not support bitwise or operation";
          goto LABEL_33;
        }
      }

      else if (a3 >= 0)
      {
        goto LABEL_36;
      }
    }

LABEL_32:
    v4 = "unknown data_type";
LABEL_33:

    rabit::utils::Error(v4, a2, a3);
  }

  if (!a4)
  {
    if (a3 > 3)
    {
      if (a3 < 8)
      {
        goto LABEL_36;
      }
    }

    else if (a3 >= 0)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (a4 != 1)
  {
LABEL_12:
    v4 = "unknown enum_op";
    goto LABEL_33;
  }

  if (a3 <= 3)
  {
    if (a3 >= 0)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (a3 > 6 && a3 != 7)
  {
    goto LABEL_32;
  }

LABEL_36:
  v5 = *(*rabit::engine::GetEngine(a1, a2, a3) + 8);

  return v5();
}

void sub_274D5A6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a12);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void rabit::c_api::Allgather(rabit::c_api *this, const char *a2, uint64_t a3, unint64_t a4, unint64_t a5, int a6)
{
  if (a6 > 3)
  {
    if (a6 < 8)
    {
      goto LABEL_5;
    }

LABEL_8:

    rabit::utils::Error("unknown data_type", a2);
  }

  if (a6 < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v6 = **rabit::engine::GetEngine(this, a2, a3);

  v6();
}

uint64_t RabitInit(rabit::engine *a1, uint64_t a2, char **a3)
{
  v3 = rabit::engine::Init(a1, a2, a3);
  if ((v3 & 1) == 0)
  {
    XGBAPISetLastError("Failed to initialize RABIT.");
  }

  return v3;
}

uint64_t RabitFinalize(rabit::engine *a1, uint64_t a2, uint64_t a3)
{
  v3 = rabit::engine::Finalize(a1, a2, a3);
  if ((v3 & 1) == 0)
  {
    XGBAPISetLastError("Failed to shutdown RABIT worker.");
  }

  return v3;
}

uint64_t RabitGetRingPrevRank(rabit::engine *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*rabit::engine::GetEngine(a1, a2, a3) + 56);

  return v3();
}

uint64_t RabitGetRank(rabit::engine *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*rabit::engine::GetEngine(a1, a2, a3) + 64);

  return v3();
}

uint64_t RabitGetWorldSize(rabit::engine *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*rabit::engine::GetEngine(a1, a2, a3) + 72);

  return v3();
}

uint64_t RabitTrackerPrint(char *__s)
{
  v1 = std::string::basic_string[abi:ne200100]<0>(__p, __s);
  Engine = rabit::engine::GetEngine(v1, v2, v3);
  (*(*Engine + 96))(Engine, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_274D5AA64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::runtime_error a10, std::string *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2 == 2)
  {
    v16 = __cxa_begin_catch(exception_object);
    v17 = (*(*v16 + 16))(v16);
    XGBAPISetLastError(v17);
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(exception_object);
    }

    v18 = __cxa_begin_catch(exception_object);
    v19 = (*(*v18 + 16))(v18);
    std::string::basic_string[abi:ne200100]<0>(&a11, v19);
    std::runtime_error::runtime_error(&a10, &a11);
    a10.__vftable = &unk_2883DE270;
    v20 = std::runtime_error::what(&a10);
    XGBAPISetLastError(v20);
    std::runtime_error::~runtime_error(&a10);
    if (a16 < 0)
    {
      operator delete(a11);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D5AA54);
}

void RabitGetProcessorName(rabit::engine *a1, std::string::size_type *a2, std::string::size_type a3)
{
  Engine = rabit::engine::GetEngine(a1, a2, a3);
  (*(*Engine + 88))(&v10);
  size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  v8 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v10.__r_.__value_.__l.__size_;
  }

  if (size > a3)
  {
    std::string::resize(&v10, a3 - 1, 0);
    v8 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  }

  if ((v8 & 0x80) != 0)
  {
    v9 = v10.__r_.__value_.__r.__words[0];
    strcpy(a1, v10.__r_.__value_.__l.__data_);
    *a2 = v10.__r_.__value_.__l.__size_;
    operator delete(v9);
  }

  else
  {
    strcpy(a1, &v10);
    *a2 = v8;
  }
}

void sub_274D5AC78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RabitBroadcast(rabit::engine *a1, uint64_t a2, uint64_t a3)
{
  Engine = rabit::engine::GetEngine(a1, a2, a3);
  (*(*Engine + 16))(Engine, a1, a2, a3);
  return 0;
}

uint64_t RabitLoadCheckPoint(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4)
{
  v6 = a2;
  v7 = a1;
  if ((atomic_load_explicit(&_MergedGlobals_10, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&_MergedGlobals_10);
    if (a1)
    {
      qword_280AF67C8 = 0;
      unk_280AF67D0 = 0;
      qword_280AF67C0 = 0;
      __cxa_atexit(MEMORY[0x277D82640], &qword_280AF67C0, &dword_274CA4000);
      __cxa_guard_release(&_MergedGlobals_10);
    }
  }

  if ((atomic_load_explicit(&qword_280AF67B8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_280AF67B8);
    if (a1)
    {
      qword_280AF67E0 = 0;
      unk_280AF67E8 = 0;
      qword_280AF67D8 = 0;
      __cxa_atexit(MEMORY[0x277D82640], &qword_280AF67D8, &dword_274CA4000);
      __cxa_guard_release(&qword_280AF67B8);
    }
  }

  v21[0] = &unk_2883E2790;
  v21[1] = &qword_280AF67C0;
  v20[0] = &unk_2883E2790;
  v20[1] = &qword_280AF67D8;
  Engine = rabit::engine::GetEngine(a1, a2, a3);
  v10 = *(*Engine + 24);
  if (a3)
  {
    result = v10(Engine, v21, v20, v9);
    if (byte_280AF67D7 < 0)
    {
      if (qword_280AF67C8)
      {
        v12 = qword_280AF67C0;
      }

      else
      {
        v12 = 0;
      }
    }

    else if (byte_280AF67D7)
    {
      v12 = &qword_280AF67C0;
    }

    else
    {
      v12 = 0;
    }

    *v7 = v12;
    v14 = byte_280AF67D7;
    if (byte_280AF67D7 < 0)
    {
      v14 = qword_280AF67C8;
    }

    *v6 = v14;
    if (byte_280AF67EF < 0)
    {
      v15 = qword_280AF67D8;
      if (!qword_280AF67E0)
      {
        v15 = 0;
      }
    }

    else if (byte_280AF67EF)
    {
      v15 = &qword_280AF67D8;
    }

    else
    {
      v15 = 0;
    }

    *a3 = v15;
    v16 = &qword_280AF67E0;
    v17 = &byte_280AF67EF;
    v6 = a4;
  }

  else
  {
    result = v10(Engine, v21, 0, v9);
    if (byte_280AF67D7 < 0)
    {
      if (qword_280AF67C8)
      {
        v13 = qword_280AF67C0;
      }

      else
      {
        v13 = 0;
      }
    }

    else if (byte_280AF67D7)
    {
      v13 = &qword_280AF67C0;
    }

    else
    {
      v13 = 0;
    }

    *v7 = v13;
    v16 = &qword_280AF67C8;
    v17 = &byte_280AF67D7;
  }

  v18 = *v17;
  v19 = *v16;
  if ((v18 & 0x80u) == 0)
  {
    v19 = v18;
  }

  *v6 = v19;
  return result;
}

uint64_t RabitCheckPoint(rabit::engine *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[0] = &unk_2883E27E8;
  v9[1] = a1;
  v9[2] = a2;
  v8[0] = &unk_2883E27E8;
  v8[1] = a3;
  v8[2] = a4;
  Engine = rabit::engine::GetEngine(a1, a2, a3);
  if (a3)
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  return (*(*Engine + 32))(Engine, v9, v6);
}

uint64_t RabitVersionNumber(rabit::engine *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*rabit::engine::GetEngine(a1, a2, a3) + 48);

  return v3();
}

void rabit::c_api::ReadWrapper::Load(uint64_t a1, uint64_t (***a2)(void, std::string::size_type *, uint64_t))
{
  __n = 0;
  v4 = (**a2)(a2, &__n, 8) != 0;
  rabit::utils::Assert(v4, "Read pickle string", v5);
  std::string::resize(*(a1 + 8), __n, 0);
  if (__n)
  {
    v6 = *(a1 + 8);
    if (*(v6 + 23) < 0)
    {
      v6 = *v6;
    }

    v7 = (**a2)(a2, v6) != 0;
    rabit::utils::Assert(v7, "Read pickle string", v8);
  }
}

uint64_t rabit::c_api::WriteWrapper::Save(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  (*(*a2 + 8))(a2, &v5, 8);
  return (*(*a2 + 8))(a2, *(a1 + 8), *(a1 + 16));
}

char *rabit::op::Reducer<rabit::op::Max,char>(char *result, _BYTE *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (*a2 < v5)
      {
        *a2 = v4;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

unsigned __int8 *rabit::op::Reducer<rabit::op::Max,unsigned char>(unsigned __int8 *result, _BYTE *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (*a2 < v5)
      {
        *a2 = v4;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

int *rabit::op::Reducer<rabit::op::Max,int>(int *result, _DWORD *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (*a2 < v5)
      {
        *a2 = v4;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

unsigned int *rabit::op::Reducer<rabit::op::Max,unsigned int>(unsigned int *result, unsigned int *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (*a2 < v5)
      {
        *a2 = v4;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t *rabit::op::Reducer<rabit::op::Max,long>(uint64_t *result, void *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (*a2 < v5)
      {
        *a2 = v4;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

float *rabit::op::Reducer<rabit::op::Max,float>(float *result, float *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      if (*a2 < *result)
      {
        *a2 = *result;
      }

      ++result;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

double *rabit::op::Reducer<rabit::op::Max,double>(double *result, double *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      if (*a2 < *result)
      {
        *a2 = *result;
      }

      ++result;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

char *rabit::op::Reducer<rabit::op::Min,char>(char *result, _BYTE *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (*a2 > v5)
      {
        *a2 = v4;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

unsigned __int8 *rabit::op::Reducer<rabit::op::Min,unsigned char>(unsigned __int8 *result, _BYTE *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (*a2 > v5)
      {
        *a2 = v4;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

int *rabit::op::Reducer<rabit::op::Min,int>(int *result, _DWORD *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (*a2 > v5)
      {
        *a2 = v4;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

unsigned int *rabit::op::Reducer<rabit::op::Min,unsigned int>(unsigned int *result, unsigned int *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (*a2 > v5)
      {
        *a2 = v4;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t *rabit::op::Reducer<rabit::op::Min,long>(uint64_t *result, void *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (*a2 > v5)
      {
        *a2 = v4;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t *rabit::op::Reducer<rabit::op::Min,unsigned long>(unint64_t *result, unint64_t *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (*a2 > v5)
      {
        *a2 = v4;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

float *rabit::op::Reducer<rabit::op::Min,float>(float *result, float *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      if (*a2 > *result)
      {
        *a2 = *result;
      }

      ++result;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

double *rabit::op::Reducer<rabit::op::Min,double>(double *result, double *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      if (*a2 > *result)
      {
        *a2 = *result;
      }

      ++result;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

char *rabit::op::Reducer<rabit::op::Sum,char>(char *result, _BYTE *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ += v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

char *rabit::op::Reducer<rabit::op::Sum,unsigned char>(char *result, _BYTE *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ += v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

int *rabit::op::Reducer<rabit::op::Sum,int>(int *result, _DWORD *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ += v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

int *rabit::op::Reducer<rabit::op::Sum,unsigned int>(int *result, _DWORD *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ += v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t *rabit::op::Reducer<rabit::op::Sum,long>(uint64_t *result, void *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ += v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

char *rabit::op::Reducer<rabit::op::BitOR,char>(char *result, _BYTE *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ |= v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

char *rabit::op::Reducer<rabit::op::BitOR,unsigned char>(char *result, _BYTE *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ |= v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

int *rabit::op::Reducer<rabit::op::BitOR,int>(int *result, _DWORD *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ |= v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

int *rabit::op::Reducer<rabit::op::BitOR,unsigned int>(int *result, _DWORD *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ |= v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t *rabit::op::Reducer<rabit::op::BitOR,long>(uint64_t *result, void *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ |= v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t *rabit::op::Reducer<rabit::op::BitOR,unsigned long>(uint64_t *result, void *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ |= v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t dmlc::RecordIOWriter::WriteRecord(dmlc::RecordIOWriter *this, char *a2, unint64_t a3)
{
  v3 = a3;
  if (a3 >> 29)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v18);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/recordio.cc", 12);
    v7 = dmlc::LogMessageFatal::GetEntry(&v18);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Check failed: size < (1 << 29U)", 31);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "RecordIO only accept record less than 2^29 bytes", 48);
    dmlc::LogMessageFatal::~LogMessageFatal(&v18);
  }

  v18 = -824761590;
  if (v3 <= 3)
  {
    goto LABEL_17;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    if (a2[v10] == v18 && __PAIR64__(a2[v10 + 2], a2[v10 + 1]) == __PAIR64__(BYTE2(v18), BYTE1(v18)) && a2[v10 + 3] == HIBYTE(v18))
    {
      if (v11)
      {
        v12 = 0x40000000;
      }

      else
      {
        v12 = 0x20000000;
      }

      v17 = v12 | (v10 - v11);
      (*(**this + 8))(*this, &v18, 4);
      (*(**this + 8))(*this, &v17, 4);
      if (v10 != v11)
      {
        (*(**this + 8))(*this, &a2[v11], (v10 - v11));
      }

      ++*(this + 2);
      v11 = v10 + 4;
    }

    v10 += 4;
  }

  while (v10 < (v3 & 0xFFFFFFFC));
  if (v11)
  {
    v13 = 1610612736;
  }

  else
  {
LABEL_17:
    v11 = 0;
    v13 = 0;
  }

  v14 = (v3 + 3) & 0xFFFFFFFC;
  v17 = v13 | (v3 - v11);
  (*(**this + 8))(*this, &v18, 4);
  result = (*(**this + 8))(*this, &v17, 4);
  if (v3 != v11)
  {
    result = (*(**this + 8))(*this, &a2[v11], v3 - v11);
  }

  v16 = 0;
  if (v14 != v3)
  {
    return (*(**this + 8))(*this, &v16, v14 - v3);
  }

  return result;
}

uint64_t dmlc::RecordIOReader::NextRecord(void *a1, std::string *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a1[2])
  {
    return 0;
  }

  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    *a2->__r_.__value_.__l.__data_ = 0;
    a2->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    a2->__r_.__value_.__s.__data_[0] = 0;
    *(&a2->__r_.__value_.__s + 23) = 0;
  }

  v5 = 0;
  while (1)
  {
    result = (***a1)(*a1, &v26, 8);
    if (result == 8)
    {
      goto LABEL_10;
    }

    if (!result)
    {
      break;
    }

    Entry = dmlc::LogMessageFatal::GetEntry(&v25);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/recordio.cc", 64);
    v7 = dmlc::LogMessageFatal::GetEntry(&v25);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Check failed: nread == sizeof(header)", 37);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Inavlid RecordIO File", 21);
    dmlc::LogMessageFatal::~LogMessageFatal(&v25);
LABEL_10:
    if (v26 != -824761590)
    {
      v10 = dmlc::LogMessageFatal::GetEntry(&v25);
      dmlc::LogMessageFatal::Entry::Init(v10, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/recordio.cc", 65);
      v11 = dmlc::LogMessageFatal::GetEntry(&v25);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: header[0] == RecordIOWriter::kMagic", 49);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Invalid RecordIO File", 21);
      dmlc::LogMessageFatal::~LogMessageFatal(&v25);
    }

    v14 = v27;
    v15 = v27 & 0x1FFFFFFF;
    v16 = ((v27 & 0x1FFFFFFF) + 3) & 0x3FFFFFFC;
    std::string::resize(a2, v5 + v16, 0);
    if (v16)
    {
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        v17 = a2->__r_.__value_.__l.__size_ ? a2->__r_.__value_.__r.__words[0] : 0;
      }

      else
      {
        v17 = *(&a2->__r_.__value_.__s + 23) ? a2 : 0;
      }

      if ((***a1)(*a1, v17 + v5, v16) != v16)
      {
        v18 = dmlc::LogMessageFatal::GetEntry(&v25);
        dmlc::LogMessageFatal::Entry::Init(v18, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/recordio.cc", 71);
        v19 = dmlc::LogMessageFatal::GetEntry(&v25);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Check failed: stream_->Read(BeginPtr(*out_rec) + size, upper_align) == upper_align", 82);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ": ", 2);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Invalid RecordIO File upper_align=", 34);
        MEMORY[0x277C68E30](v22, v16);
        dmlc::LogMessageFatal::~LogMessageFatal(&v25);
      }
    }

    v23 = v5 + v15;
    std::string::resize(a2, v23, 0);
    if (!(v14 >> 29) || v14 >> 29 == 3)
    {
      return 1;
    }

    v5 = v23 + 4;
    std::string::resize(a2, v23 + 4, 0);
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      if (a2->__r_.__value_.__l.__size_)
      {
        v24 = a2->__r_.__value_.__r.__words[0];
      }

      else
      {
        v24 = 0;
      }
    }

    else if (*(&a2->__r_.__value_.__s + 23))
    {
      v24 = a2;
    }

    else
    {
      v24 = 0;
    }

    *(&v24->__r_.__value_.__l.__data_ + v23) = -824761590;
  }

  *(a1 + 16) = 1;
  return result;
}

void *dmlc::RecordIOChunkReader::RecordIOChunkReader(void *a1, uint64_t a2, char *a3, unsigned int a4, unsigned int a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v9 = (&a3[a5 - 1] / a5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v10 = v9 * a4;
  if (v10 >= a3)
  {
    v10 = a3;
  }

  NextRecordIOHead = dmlc::FindNextRecordIOHead((a2 + v10), &a3[a2], a3);
  v13 = v9 * (a4 + 1);
  if (v13 >= a3)
  {
    v13 = a3;
  }

  a1[3] = NextRecordIOHead;
  a1[4] = dmlc::FindNextRecordIOHead((a2 + v13), &a3[a2], v12);
  return a1;
}

void sub_274D5C148(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *dmlc::FindNextRecordIOHead(dmlc *this, char *a2, char *a3)
{
  v3 = a2;
  v6 = 0;
  v7 = this & 3;
  if ((this & 3) != 0)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v7, &v6);
  }

  v6 = 0;
  v7 = a2 & 3;
  if ((a2 & 3) != 0)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v7, &v6);
  }

  v4 = (this + 4);
  if (this + 4 < a2)
  {
    while (*(v4 - 1) != -824761590 || *v4 >> 30)
    {
      if (++v4 >= a2)
      {
        return v3;
      }
    }

    return (v4 - 1);
  }

  return v3;
}

void sub_274D5C33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

BOOL dmlc::RecordIOChunkReader::NextRecord(std::string *this, void *a2)
{
  data = this[1].__r_.__value_.__l.__data_;
  size = this[1].__r_.__value_.__l.__size_;
  if (data < size)
  {
    if (*data != -824761590)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v40);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/recordio.cc", 117);
      v7 = dmlc::LogMessageFatal::GetEntry(&v40);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Check failed: p[0] == RecordIOWriter::kMagic", 44);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v40);
    }

    v9 = *(data + 1);
    if (v9 >> 29 != 1)
    {
      if (!(v9 >> 29))
      {
        v10 = v9 & 0x1FFFFFFF;
        v11 = this[1].__r_.__value_.__l.__size_;
        v12 = this[1].__r_.__value_.__r.__words[0] + 8;
        *a2 = v12;
        v13 = v12 + ((v10 + 3) & 0x3FFFFFFC);
        this[1].__r_.__value_.__r.__words[0] = v13;
        if (v13 > v11)
        {
          v14 = dmlc::LogMessageFatal::GetEntry(&v39);
          dmlc::LogMessageFatal::Entry::Init(v14, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/recordio.cc", 125);
          v15 = dmlc::LogMessageFatal::GetEntry(&v39);
          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Check failed: pbegin_ <= pend_", 30);
          v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ": ", 2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Invalid RecordIO Format", 23);
          dmlc::LogMessageFatal::~LogMessageFatal(&v39);
        }

        v18 = v10;
LABEL_44:
        a2[1] = v18;
        return data < size;
      }

      v19 = dmlc::LogMessageFatal::GetEntry(&v38);
      dmlc::LogMessageFatal::Entry::Init(v19, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/recordio.cc", 131);
      v20 = dmlc::LogMessageFatal::GetEntry(&v38);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Check failed: cflag == 1U", 25);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Invalid RecordIO Format", 23);
      dmlc::LogMessageFatal::~LogMessageFatal(&v38);
    }

    std::string::resize(this, 0, 0);
    while (1)
    {
      v23 = this[1].__r_.__value_.__l.__data_;
      if ((v23 + 8) > this[1].__r_.__value_.__l.__size_)
      {
        v24 = dmlc::LogMessageFatal::GetEntry(&v37);
        dmlc::LogMessageFatal::Entry::Init(v24, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/recordio.cc", 134);
        v25 = dmlc::LogMessageFatal::GetEntry(&v37);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Check failed: pbegin_ + 2 * sizeof(uint32_t) <= pend_", 53);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(&v37);
        v23 = this[1].__r_.__value_.__l.__data_;
      }

      if (*v23 != -824761590)
      {
        v27 = dmlc::LogMessageFatal::GetEntry(&v36);
        dmlc::LogMessageFatal::Entry::Init(v27, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/recordio.cc", 136);
        v28 = dmlc::LogMessageFatal::GetEntry(&v36);
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Check failed: p[0] == RecordIOWriter::kMagic", 44);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(&v36);
      }

      v30 = *(v23 + 1);
      v31 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((v31 & 0x8000000000000000) != 0)
      {
        v31 = this->__r_.__value_.__l.__size_;
      }

      std::string::resize(this, v31 + (v30 & 0x1FFFFFFF), 0);
      if ((v30 & 0x1FFFFFFF) != 0)
      {
        if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
        {
          if (this->__r_.__value_.__l.__size_)
          {
            v32 = this->__r_.__value_.__r.__words[0];
          }

          else
          {
            v32 = 0;
          }
        }

        else if (*(&this->__r_.__value_.__s + 23))
        {
          v32 = this;
        }

        else
        {
          v32 = 0;
        }

        memcpy(v32 + v31, (this[1].__r_.__value_.__r.__words[0] + 8), v30 & 0x1FFFFFFF);
        v31 += v30 & 0x1FFFFFFF;
      }

      this[1].__r_.__value_.__r.__words[0] += (((v30 & 0x1FFFFFFF) + 3) & 0x3FFFFFFC) + 8;
      if (v30 >> 29 == 3)
      {
        break;
      }

      std::string::resize(this, v31 + 4, 0);
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        if (this->__r_.__value_.__l.__size_)
        {
          v33 = this->__r_.__value_.__r.__words[0];
        }

        else
        {
          v33 = 0;
        }
      }

      else if (*(&this->__r_.__value_.__s + 23))
      {
        v33 = this;
      }

      else
      {
        v33 = 0;
      }

      *(&v33->__r_.__value_.__l.__data_ + v31) = -824761590;
    }

    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      if (this->__r_.__value_.__l.__size_)
      {
        v34 = this->__r_.__value_.__r.__words[0];
      }

      else
      {
        v34 = 0;
      }
    }

    else if (*(&this->__r_.__value_.__s + 23))
    {
      v34 = this;
    }

    else
    {
      v34 = 0;
    }

    *a2 = v34;
    v18 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v18 & 0x8000000000000000) != 0)
    {
      v18 = this->__r_.__value_.__l.__size_;
    }

    goto LABEL_44;
  }

  return data < size;
}

uint64_t xgboost::Version::Load(xgboost::Version *this, const xgboost::Json *a2)
{
  v3 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*this);
  std::string::basic_string[abi:ne200100]<0>(__p, "version");
  v4 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(v3 + 16, __p);
  v5 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*this) + 24;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 == v4)
  {
    return -1;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "version");
  v6 = (*(**this + 24))(*this, __p);
  v7 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v6);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = v7[2];
  if (v7[3] == v8 || (v9 = xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*v8), v10 = v7[2], (v7[3] - v10) < 9) || (v11 = v9, v12 = xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*(v10 + 8)), v13 = v7[2], (v7[3] - v13) <= 0x10))
  {
    std::vector<xgboost::Json>::__throw_out_of_range[abi:ne200100]();
  }

  v14 = v12;
  xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*(v13 + 16));
  return v11[4] | (v14[2] << 32);
}

void sub_274D5C8A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    Entry = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/version.cc", 31);
    v17 = dmlc::LogMessageFatal::GetEntry(&__p);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Invaid version format in loaded JSON object: ", 45);
    xgboost::operator<<(v18, *v15);
    dmlc::LogMessageFatal::~LogMessageFatal(&__p);
    __cxa_end_catch();
    JUMPOUT(0x274D5C888);
  }

  _Unwind_Resume(a1);
}

void *xgboost::operator<<(void *a1, atomic_uint *a2)
{
  memset(&__p, 0, sizeof(__p));
  v7 = a2;
  if (a2)
  {
    atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
  }

  xgboost::Json::Dump(&v7, &__p, 16);
  if (a2 && atomic_fetch_add_explicit(a2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*a2 + 8))(a2);
  }

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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_274D5CA40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::Version::Load(uint64_t (***a1)(void, std::string *, std::string::size_type))
{
  v47 = 0;
  v46 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v43, "Incorrect version format found in binary file.  Binary file from XGBoost < 1.0.0 is no longer supported. Please generate it again.");
  std::string::basic_string[abi:ne200100]<0>(&__p, "version:");
  memset(&v39, 0, sizeof(v39));
  if ((v42 & 0x80u) == 0)
  {
    v2 = v42;
  }

  else
  {
    v2 = v41;
  }

  std::string::resize(&v39, v2, 0);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v39;
  }

  else
  {
    v3 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v42 & 0x80u) == 0)
  {
    v4 = v42;
  }

  else
  {
    v4 = v41;
  }

  v5 = (**a1)(a1, v3, v4);
  v6 = v42;
  if ((v42 & 0x80u) != 0)
  {
    v6 = v41;
  }

  v36 = v6;
  v37 = v5;
  if (v5 != v6)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v37, &v36);
  }

  if ((v42 & 0x80u) == 0)
  {
    v7 = v42;
  }

  else
  {
    v7 = v41;
  }

  size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v39.__r_.__value_.__l.__size_;
  }

  if (v7 != size || ((v42 & 0x80u) == 0 ? (p_p = &__p) : (p_p = __p), (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v10 = &v39) : (v10 = v39.__r_.__value_.__r.__words[0]), memcmp(p_p, v10, v7)))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v38);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/version.cc", 49);
    v12 = dmlc::LogMessageFatal::GetEntry(&v38);
    if ((v45 & 0x80u) == 0)
    {
      v13 = &v43;
    }

    else
    {
      v13 = v43;
    }

    if ((v45 & 0x80u) == 0)
    {
      v14 = v45;
    }

    else
    {
      v14 = v44;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    dmlc::LogMessageFatal::~LogMessageFatal(&v38);
  }

  if ((**a1)(a1, (&v47 + 4), 4) != 4)
  {
    v18 = dmlc::LogMessageFatal::GetEntry(&v38);
    dmlc::LogMessageFatal::Entry::Init(v18, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/version.cc", 52);
    v19 = dmlc::LogMessageFatal::GetEntry(&v38);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Check failed: fi->Read(&major)", 30);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ": ", 2);
    if ((v45 & 0x80u) == 0)
    {
      v22 = &v43;
    }

    else
    {
      v22 = v43;
    }

    if ((v45 & 0x80u) == 0)
    {
      v23 = v45;
    }

    else
    {
      v23 = v44;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
    dmlc::LogMessageFatal::~LogMessageFatal(&v38);
  }

  if ((**a1)(a1, &v47, 4) != 4)
  {
    v24 = dmlc::LogMessageFatal::GetEntry(&v38);
    dmlc::LogMessageFatal::Entry::Init(v24, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/version.cc", 53);
    v25 = dmlc::LogMessageFatal::GetEntry(&v38);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Check failed: fi->Read(&minor)", 30);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ": ", 2);
    if ((v45 & 0x80u) == 0)
    {
      v28 = &v43;
    }

    else
    {
      v28 = v43;
    }

    if ((v45 & 0x80u) == 0)
    {
      v29 = v45;
    }

    else
    {
      v29 = v44;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
    dmlc::LogMessageFatal::~LogMessageFatal(&v38);
  }

  if ((**a1)(a1, &v46, 4) != 4)
  {
    v30 = dmlc::LogMessageFatal::GetEntry(&v38);
    dmlc::LogMessageFatal::Entry::Init(v30, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/version.cc", 54);
    v31 = dmlc::LogMessageFatal::GetEntry(&v38);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Check failed: fi->Read(&patch)", 30);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ": ", 2);
    if ((v45 & 0x80u) == 0)
    {
      v34 = &v43;
    }

    else
    {
      v34 = v43;
    }

    if ((v45 & 0x80u) == 0)
    {
      v35 = v45;
    }

    else
    {
      v35 = v44;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v34, v35);
    dmlc::LogMessageFatal::~LogMessageFatal(&v38);
  }

  v16 = v47;
  v15 = HIDWORD(v47);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (v42 < 0)
  {
    operator delete(__p);
  }

  if (v45 < 0)
  {
    operator delete(v43);
  }

  return v15 | (v16 << 32);
}

void sub_274D5CF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_274D5D384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v20 - 144) = v19;
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100]((v20 - 144));
  *(v20 - 144) = &a19;
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100]((v20 - 144));
  v22 = 16;
  while (1)
  {
    v23 = *(v20 - 96 + v22);
    if (v23 && atomic_fetch_add_explicit(v23 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*v23 + 8))(v23);
    }

    v22 -= 8;
    if (v22 == -8)
    {
      _Unwind_Resume(a1);
    }
  }
}

void xgboost::Version::Save(uint64_t a1)
{
  v7 = 6;
  v8 = 1;
  v6 = 1;
  std::string::basic_string[abi:ne200100]<0>(__p, "version:");
  if ((v5 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v5 & 0x80u) == 0)
  {
    v3 = v5;
  }

  else
  {
    v3 = __p[1];
  }

  (*(*a1 + 8))(a1, v2, v3);
  (*(*a1 + 8))(a1, &v8, 4);
  (*(*a1 + 8))(a1, &v7, 4);
  (*(*a1 + 8))(a1, &v6, 4);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274D5D5CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::Version::String(unsigned int *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v9);
  v3 = MEMORY[0x277C68E20](&v10, *a1);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ".", 1);
  v5 = MEMORY[0x277C68E20](v4, a1[1]);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ".", 1);
  MEMORY[0x277C68E20](v6, a1[2]);
  std::stringbuf::str();
  v9[0] = *MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v10 = v7;
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return MEMORY[0x277C690D0](&v14);
}

void sub_274D5D7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x277D82818]);
  MEMORY[0x277C690D0](v3 + 128);
  _Unwind_Resume(a1);
}

uint64_t xgboost::data::SparsePageDMatrix::Info(xgboost::data::SparsePageDMatrix *this)
{
  return this + 8;
}

{
  return this + 8;
}

uint64_t xgboost::data::detail::NSamplesDevice(xgboost::data::detail *this, xgboost::data::DMatrixProxy *a2)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v5);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./../common/common.h", 239);
  v3 = dmlc::LogMessageFatal::GetEntry(&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "XGBoost version not compiled with GPU support.", 46);
  dmlc::LogMessageFatal::~LogMessageFatal(&v5);
  return 0;
}

uint64_t xgboost::data::detail::NFeaturesDevice(xgboost::data::detail *this, xgboost::data::DMatrixProxy *a2)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v5);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./../common/common.h", 239);
  v3 = dmlc::LogMessageFatal::GetEntry(&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "XGBoost version not compiled with GPU support.", 46);
  dmlc::LogMessageFatal::~LogMessageFatal(&v5);
  return 0;
}

void xgboost::data::SparsePageDMatrix::SparsePageDMatrix(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, __int128 *a7, float a8)
{
  v8 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2883E2830;
  xgboost::MetaInfo::MetaInfo((a1 + 1));
}

void sub_274D5E0D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xgboost::MetaInfo *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  v31 = *(a13 + 472);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = *(a13 + 456);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v33 = *(a13 + 440);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v34 = *(a13 + 424);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  v35 = *(a13 + 408);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v36 = *(a13 + 392);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (*(a13 + 375) < 0)
  {
    operator delete(*(a13 + 352));
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>>>::destroy(*a10);
  xgboost::MetaInfo::~MetaInfo(a15);
}

uint64_t xgboost::data::MakeProxy(xgboost::data *this, void *a2)
{
  if (!this)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v8);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./proxy_dmatrix.h", 119);
    v5 = dmlc::LogMessageFatal::GetEntry(&v8);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: proxy_handle", 26);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Invalid proxy handle.", 21);
    dmlc::LogMessageFatal::~LogMessageFatal(&v8);
  }

  return *this;
}

void xgboost::data::SparsePageDMatrix::GetRowBatchesImpl(uint64_t *__return_ptr a1@<X8>, xgboost::data::SparsePageDMatrix *this@<X0>)
{
  xgboost::data::SparsePageDMatrix::InitializeSparsePage(this);
  v5 = *(this + 48);
  v4 = *(this + 49);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *a1 = v5;
  a1[1] = v4;
}

void xgboost::data::SparsePageDMatrix::InitializeSparsePage(xgboost::data::SparsePageDMatrix *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, ".row.page");
  if (*(this + 375) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(this + 44), *(this + 45));
  }

  else
  {
    v8 = *(this + 352);
  }

  xgboost::data::MakeCache(v11, this, __p, &v8, this + 256);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (**std::map<std::string,xgboost::Json>::at(this + 256, v11) != 1)
  {
    xgboost::data::MakeProxy(*(this + 35), v2);
    v4 = *(this + 49);
    *(this + 48) = 0;
    *(this + 49) = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    std::map<std::string,xgboost::Json>::at(this + 256, v11);
    operator new();
  }

  v3 = *(this + 48);
  if (!v3)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v13);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/sparse_page_dmatrix.cc", 106);
    v6 = dmlc::LogMessageFatal::GetEntry(&v13);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: sparse_page_source_", 33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v13);
    v3 = *(this + 48);
  }

  (*(*v3 + 56))(v3);
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }
}

void sub_274D5E87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a31);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void xgboost::data::MakeCache(std::locale::__imp *a1, uint64_t a2, const void **a3, uint64_t a4, uint64_t a5)
{
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a4, *(a4 + 8));
  }

  else
  {
    v17 = *a4;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v23);
  MEMORY[0x277C68DE0](&v24, a2);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v17.__r_.__value_.__l.__size_;
  }

  v10 = &v22;
  std::string::basic_string[abi:ne200100](&v22, size + 1);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = v22.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v17;
    }

    else
    {
      v11 = v17.__r_.__value_.__r.__words[0];
    }

    memmove(v10, v11, size);
  }

  *(&v10->__r_.__value_.__l.__data_ + size) = 45;
  std::stringbuf::str();
  if ((v21 & 0x80u) == 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v13 = v21;
  }

  else
  {
    v13 = __p[1];
  }

  v14 = std::string::append(&v22, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v19 = v14->__r_.__value_.__r.__words[2];
  *v18 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v23[0] = *MEMORY[0x277D82818];
  v16 = *(MEMORY[0x277D82818] + 72);
  *(v23 + *(v23[0] - 3)) = *(MEMORY[0x277D82818] + 64);
  v24 = v16;
  v25 = MEMORY[0x277D82878] + 16;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  v25 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v26);
  std::iostream::~basic_iostream();
  MEMORY[0x277C690D0](&v28);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v18, a3, a1);
  if (a5 + 8 == std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(a5, a1))
  {
    v23[0] = a1;
    std::__tree<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a5, a1, v23);
    operator new();
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }
}

void sub_274D5EF20(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, std::locale a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x277C69180](v51, 0x1012C40982C4C30, a3, a4, a5, a6, a7, a8);
  if (*(v50 + 23) < 0)
  {
    operator delete(*v50);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

void xgboost::data::SparsePageDMatrix::GetColumnBatches(xgboost::data::SparsePageDMatrix *this@<X0>, void *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, ".col.page");
  if (*(this + 375) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *(this + 44), *(this + 45));
  }

  else
  {
    v11 = *(this + 352);
  }

  xgboost::data::MakeCache(v14, this, __p, &v11, this + 256);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = (**this)(this);
  v6 = *(v4 + 8);
  v5 = (v4 + 8);
  v10 = 0;
  if (!v6)
  {
    dmlc::LogCheckFormat<unsigned long long,int>(v5, &v10);
  }

  xgboost::data::SparsePageDMatrix::InitializeSparsePage(this);
  v7 = *(this + 52);
  if (!v7)
  {
    (**this)(this);
    std::map<std::string,xgboost::Json>::at(this + 256, v14);
    operator new();
  }

  (*(*v7 + 56))(v7);
  v9 = *(this + 52);
  v8 = *(this + 53);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a2 = v9;
  a2[1] = v8;
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_274D5F4C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  xgboost::data::PageSourceIncMixIn<xgboost::CSCPage>::~PageSourceIncMixIn(v33);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    if (!v31)
    {
      goto LABEL_4;
    }
  }

  else if (!v31)
  {
LABEL_4:
    std::__shared_weak_count::~__shared_weak_count(v30);
    operator delete(v35);
    if (a30 < 0)
    {
      operator delete(a25);
    }

    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  goto LABEL_4;
}

void xgboost::data::SparsePageDMatrix::GetSortedColumnBatches(xgboost::data::SparsePageDMatrix *this@<X0>, void *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, ".sorted.col.page");
  if (*(this + 375) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *(this + 44), *(this + 45));
  }

  else
  {
    v11 = *(this + 352);
  }

  xgboost::data::MakeCache(v14, this, __p, &v11, this + 256);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = (**this)(this);
  v6 = *(v4 + 8);
  v5 = (v4 + 8);
  v10 = 0;
  if (!v6)
  {
    dmlc::LogCheckFormat<unsigned long long,int>(v5, &v10);
  }

  xgboost::data::SparsePageDMatrix::InitializeSparsePage(this);
  v7 = *(this + 54);
  if (!v7)
  {
    (**this)(this);
    std::map<std::string,xgboost::Json>::at(this + 256, v14);
    operator new();
  }

  (*(*v7 + 56))(v7);
  v9 = *(this + 54);
  v8 = *(this + 55);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a2 = v9;
  a2[1] = v8;
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_274D5F9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  xgboost::data::PageSourceIncMixIn<xgboost::SortedCSCPage>::~PageSourceIncMixIn(v33);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    if (!v31)
    {
      goto LABEL_4;
    }
  }

  else if (!v31)
  {
LABEL_4:
    std::__shared_weak_count::~__shared_weak_count(v30);
    operator delete(v35);
    if (a30 < 0)
    {
      operator delete(a25);
    }

    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  goto LABEL_4;
}

void xgboost::data::SparsePageDMatrix::GetGradientIndex(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  LODWORD(v39[0]) = *(a2 + 1);
  LODWORD(__p[0]) = 2;
  if (SLODWORD(v39[0]) < 2)
  {
    dmlc::LogCheckFormat<int,int>(v39, __p);
  }

  std::string::basic_string[abi:ne200100]<0>(v37, ".gradient_index.page");
  if (*(a1 + 375) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, *(a1 + 352), *(a1 + 360));
  }

  else
  {
    v36 = *(a1 + 352);
  }

  xgboost::data::MakeCache(v39, a1, v37, &v36, a1 + 256);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  xgboost::data::SparsePageDMatrix::InitializeSparsePage(a1);
  if (**std::map<std::string,xgboost::Json>::at(a1 + 256, v39) != 1)
  {
    goto LABEL_25;
  }

  v8 = *(a1 + 216);
  v6.n128_u64[0] = *(a1 + 248);
  v9 = *a2;
  v7.n128_u64[0] = a2[4];
  v10 = HIDWORD(*a2);
  if (a2[1])
  {
    if (v10 || v9 != -1 || a2[2])
    {
      goto LABEL_18;
    }
  }

  else if (v10 || v9 != -1)
  {
LABEL_18:
    if ((a2[3] & 1) == 0 && v8 == v9 && !((v9 ^ v8) >> 32) && v6.n128_f64[0] == v7.n128_f64[0])
    {
      goto LABEL_22;
    }

LABEL_25:
    v12 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(a1 + 256, v39);
    if (a1 + 264 != v12)
    {
      v13 = v12;
      v14 = *(v12 + 8);
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        v16 = v12;
        do
        {
          v15 = v16[2];
          v17 = *v15 == v16;
          v16 = v15;
        }

        while (!v17);
      }

      if (*(a1 + 256) == v12)
      {
        *(a1 + 256) = v15;
      }

      v18 = *(a1 + 264);
      --*(a1 + 272);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v18, v13);
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<xgboost::data::Cache>>,0>((v13 + 4));
      operator delete(v13);
    }

    std::string::basic_string[abi:ne200100]<0>(v32, ".gradient_index.page");
    if (*(a1 + 375) < 0)
    {
      std::string::__init_copy_ctor_external(&v31, *(a1 + 352), *(a1 + 360));
    }

    else
    {
      v31 = *(a1 + 352);
    }

    xgboost::data::MakeCache(&v34, a1, v32, &v31, a1 + 256);
    if (v35 < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v19, v20) + 4) >= 2)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/sparse_page_dmatrix.cc");
      xgboost::ConsoleLogger::ConsoleLogger(&v30, __p, 167, 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "Generating new Gradient Index.", 30);
      xgboost::ConsoleLogger::~ConsoleLogger(&v30, v21, v22);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }
    }

    xgboost::common::SketchOnDMatrix(&v30);
  }

LABEL_22:
  v11 = *(a1 + 464);
  if (!v11)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v30);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/sparse_page_dmatrix.cc", 182);
    v26 = dmlc::LogMessageFatal::GetEntry(&v30);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Check failed: ghist_index_source_", 33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v30);
    v11 = *(a1 + 464);
  }

  (*(*v11 + 56))(v11, v6, v7);
  v23 = *(a1 + 464);
  v24 = *(a1 + 472);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *a3 = v23;
  a3[1] = v24;
  if (v40 < 0)
  {
    operator delete(v39[0]);
  }
}

void sub_274D6031C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  if (*(v24 - 113) < 0)
  {
    operator delete(*(v24 - 136));
  }

  _Unwind_Resume(a1);
}

void sub_274D60AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, __n128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::~SketchContainerImpl(va, a9, a10);
  v19 = *(v18 - 136);
  if (v19)
  {
    *(v18 - 128) = v19;
    operator delete(v19);
  }

  *(v18 - 136) = v18 - 112;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100]((v18 - 136));
  xgboost::common::HistogramCuts::~HistogramCuts(v17);
}

BOOL xgboost::DMatrix::IsDense(xgboost::DMatrix *this)
{
  v2 = *((*(*this + 24))(this) + 16);
  v3 = *(*(*this + 24))(this);
  return v2 == *((*(*this + 24))(this) + 8) * v3;
}

void xgboost::data::SparsePageDMatrix::GetEllpackBatches(uint64_t a1@<X0>, void *a2@<X8>)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v8);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./../common/common.h", 239);
  v5 = dmlc::LogMessageFatal::GetEntry(&v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "XGBoost version not compiled with GPU support.", 46);
  dmlc::LogMessageFatal::~LogMessageFatal(&v8);
  v7 = *(a1 + 400);
  v6 = *(a1 + 408);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a2 = v7;
  a2[1] = v6;
}

void xgboost::data::SparsePageDMatrix::~SparsePageDMatrix(xgboost::data::SparsePageDMatrix *this, float a2, __n128 a3)
{
  xgboost::data::SparsePageDMatrix::~SparsePageDMatrix(this, a2, a3);
}

{
  *this = &unk_2883E2830;
  v4 = *(this + 49);
  *(this + 48) = 0;
  *(this + 49) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 51);
  *(this + 50) = 0;
  *(this + 51) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 53);
  *(this + 52) = 0;
  *(this + 53) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 55);
  *(this + 54) = 0;
  *(this + 55) = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 59);
  *(this + 58) = 0;
  *(this + 59) = 0;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 32);
  if (v9 != (this + 264))
  {
    v10 = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(a2, a3);
    do
    {
      v11 = *(v9 + 7);
      if (!v11)
      {
        Entry = dmlc::LogMessageFatal::GetEntry(v37);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./sparse_page_dmatrix.h", 95);
        v25 = dmlc::LogMessageFatal::GetEntry(v37);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Check failed: kv.second", 23);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(v37);
        v11 = *(v9 + 7);
      }

      xgboost::data::Cache::ShardName(v11, v33);
      if ((v34 & 0x80u) == 0)
      {
        v13 = v33;
      }

      else
      {
        v13 = v33[0];
      }

      if (remove(v13, v12) && *(v10 + 4) >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./sparse_page_source.h");
        xgboost::ConsoleLogger::ConsoleLogger(v37, __p, 32, 1);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Couldn't remove external memory cache file ", 43);
        v16 = (v34 & 0x80u) == 0 ? v33 : v33[0];
        v17 = (v34 & 0x80u) == 0 ? v34 : v33[1];
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "; you may want to remove it manually", 36);
        xgboost::ConsoleLogger::~ConsoleLogger(v37, v19, v20);
        if (v36 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (v34 < 0)
      {
        operator delete(v33[0]);
      }

      v21 = *(v9 + 1);
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = *(v9 + 2);
          v23 = *v22 == v9;
          v9 = v22;
        }

        while (!v23);
      }

      v9 = v22;
    }

    while (v22 != (this + 264));
  }

  v27 = *(this + 59);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = *(this + 57);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  v29 = *(this + 55);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v30 = *(this + 53);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(this + 51);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = *(this + 49);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (*(this + 375) < 0)
  {
    operator delete(*(this + 44));
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>>>::destroy(*(this + 33));
  xgboost::MetaInfo::~MetaInfo((this + 8));
}

uint64_t xgboost::data::SparsePageDMatrix::Slice()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v3);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./sparse_page_dmatrix.h", 107);
  v1 = dmlc::LogMessageFatal::GetEntry(&v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "Slicing DMatrix is not supported for external memory.", 53);
  dmlc::LogMessageFatal::~LogMessageFatal(&v3);
  return 0;
}

void dmlc::any::~any(dmlc::any *this)
{
  if (*this)
  {
    v2 = **this;
    if (v2)
    {
      v2(this + 8);
    }

    *this = 0;
  }
}

void dmlc::any::check_type<std::shared_ptr<xgboost::data::CSRArrayAdapter>>(uint64_t *a1)
{
  v2 = *a1;
  if (!*a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v22);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/././././any.h", 319);
    v4 = dmlc::LogMessageFatal::GetEntry(&v22);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: type_ != nullptr", 30);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "The any container is empty", 26);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " requested=", 11);
    v9 = strlen((0x8000000274E237C3 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, 0x8000000274E237C3 & 0x7FFFFFFFFFFFFFFFLL, v9);
    dmlc::LogMessageFatal::~LogMessageFatal(&v22);
    v2 = *a1;
  }

  {
    v10 = dmlc::LogMessageFatal::GetEntry(&v21);
    dmlc::LogMessageFatal::Entry::Init(v10, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/././././any.h", 322);
    v11 = dmlc::LogMessageFatal::GetEntry(&v21);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: *(type_->ptype_info) == typeid(T)", 47);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "The stored type mismatch", 24);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " stored=", 8);
    v16 = *(*(*a1 + 16) + 8);
    v17 = strlen((v16 & 0x7FFFFFFFFFFFFFFFLL));
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16 & 0x7FFFFFFFFFFFFFFFLL, v17);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " requested=", 11);
    v20 = strlen((0x8000000274E237C3 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x8000000274E237C3 & 0x7FFFFFFFFFFFFFFFLL, v20);
    dmlc::LogMessageFatal::~LogMessageFatal(&v21);
  }
}

void dmlc::any::check_type<std::shared_ptr<xgboost::data::ArrayAdapter>>(uint64_t *a1)
{
  v2 = *a1;
  if (!*a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v22);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/././././any.h", 319);
    v4 = dmlc::LogMessageFatal::GetEntry(&v22);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: type_ != nullptr", 30);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "The any container is empty", 26);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " requested=", 11);
    v9 = strlen((0x8000000274E237FALL & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, 0x8000000274E237FALL & 0x7FFFFFFFFFFFFFFFLL, v9);
    dmlc::LogMessageFatal::~LogMessageFatal(&v22);
    v2 = *a1;
  }

  {
    v10 = dmlc::LogMessageFatal::GetEntry(&v21);
    dmlc::LogMessageFatal::Entry::Init(v10, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/././././any.h", 322);
    v11 = dmlc::LogMessageFatal::GetEntry(&v21);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: *(type_->ptype_info) == typeid(T)", 47);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "The stored type mismatch", 24);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " stored=", 8);
    v16 = *(*(*a1 + 16) + 8);
    v17 = strlen((v16 & 0x7FFFFFFFFFFFFFFFLL));
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16 & 0x7FFFFFFFFFFFFFFFLL, v17);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " requested=", 11);
    v20 = strlen((0x8000000274E237FALL & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x8000000274E237FALL & 0x7FFFFFFFFFFFFFFFLL, v20);
    dmlc::LogMessageFatal::~LogMessageFatal(&v21);
  }
}

void xgboost::data::Cache::ShardName(xgboost::data::Cache *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *(this + 1), *(this + 2));
  }

  else
  {
    v5 = *(this + 8);
  }

  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 4), *(this + 5));
  }

  else
  {
    __p = *(this + 32);
  }

  xgboost::data::Cache::ShardName(&v5.__r_.__value_.__l.__data_, &__p.__r_.__value_.__l.__data_, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_274D6135C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2, __int128 **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__find_equal<std::string>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

char **std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<xgboost::data::Cache>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<xgboost::data::Cache>>,0>(uint64_t a1)
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

void std::__shared_ptr_pointer<xgboost::data::Cache *,std::shared_ptr<xgboost::data::Cache>::__shared_ptr_default_delete<xgboost::data::Cache,xgboost::data::Cache>,std::allocator<xgboost::data::Cache>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__shared_ptr_pointer<xgboost::data::Cache *,std::shared_ptr<xgboost::data::Cache>::__shared_ptr_default_delete<xgboost::data::Cache,xgboost::data::Cache>,std::allocator<xgboost::data::Cache>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::default_delete<xgboost::data::Cache>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 56);
    if (v2)
    {
      *(v1 + 64) = v2;
      operator delete(v2);
    }

    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    JUMPOUT(0x277C69180);
  }

  return result;
}

char *xgboost::data::Cache::ShardName@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2;
  if (*(a2 + 23) < 0)
  {
    v4 = *a2;
  }

  v6 = 46;
  if (*v4 != 46)
  {
    dmlc::LogCheckFormat<char,char>(v4, &v6);
  }

  return std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a2, a3);
}

void sub_274D61754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::SortedSketchContainer::SortedSketchContainer(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(__p, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  v8 = **(a3 + 168);
  v9 = *(*(a3 + 168) + 8) - v8;
  v10 = v8;
  xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::SketchContainerImpl();
}

void sub_274D61950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9, __n128 q1_0, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v23 = *v21;
  if (*v21)
  {
    *(v20 + 184) = v23;
    operator delete(v23);
  }

  xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::~SketchContainerImpl(v20, a9, q1_0);
  _Unwind_Resume(a1);
}

void std::vector<xgboost::common::SortedQuantile>::resize(void *result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<xgboost::common::SortedQuantile>::__append(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 48 * a2;
  }
}

uint64_t xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::~SketchContainerImpl(uint64_t a1, float a2, __n128 a3)
{
  xgboost::common::Monitor::~Monitor((a1 + 112), a2, a3);
  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    *(a1 + 56) = v5;
    operator delete(v5);
  }

  v7 = (a1 + 24);
  std::vector<std::set<float>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = a1;
  std::vector<xgboost::common::WXQuantileSketch<float,float>>::__destroy_vector::operator()[abi:ne200100](&v7);
  return a1;
}

void std::vector<xgboost::common::SortedQuantile>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = 48 * ((48 * a2 - 48) / 0x30) + 48;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x555555555555555)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::SortedQuantile>>(a1, v9);
    }

    v11 = 48 * v6;
    v12 = 48 * ((48 * a2 - 48) / 0x30) + 48;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::SortedQuantile>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::LimitSizeLevel(unint64_t a1, unint64_t *a2, unint64_t *a3, double a4)
{
  v4 = 1;
  do
  {
    *a2 = v4;
    v5 = vcvtpd_u64_f64(v4 / a4);
    if (v5 + 1 < a1)
    {
      v6 = v5 + 1;
    }

    else
    {
      v6 = a1;
    }

    *a3 = v6;
    v4 = *a2 + 1;
  }

  while (v6 << *a2 < a1);
  v7 = (v6 * a4);
  if (v7 <= 1)
  {
    v7 = 1;
  }

  if (*a2 > v7)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v12);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./../common/quantile.h", 568);
    v9 = dmlc::LogMessageFatal::GetEntry(&v12);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Check failed: nlevel <= std::max(static_cast<size_t>(1), static_cast<size_t>(limit_size * eps))", 95);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "invalid init parameter", 22);
    dmlc::LogMessageFatal::~LogMessageFatal(&v12);
  }
}

void xgboost::common::SortedSketchContainer::~SortedSketchContainer(xgboost::common::SortedSketchContainer *this, float a2, __n128 a3)
{
  v4 = *(this + 22);
  if (v4)
  {
    *(this + 23) = v4;
    operator delete(v4);
  }

  xgboost::common::Monitor::~Monitor(this + 14, a2, a3);
  v5 = *(this + 9);
  if (v5)
  {
    *(this + 10) = v5;
    operator delete(v5);
  }

  v6 = *(this + 6);
  if (v6)
  {
    *(this + 7) = v6;
    operator delete(v6);
  }

  v7 = (this + 24);
  std::vector<std::set<float>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = this;
  std::vector<xgboost::common::WXQuantileSketch<float,float>>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void xgboost::common::HistogramCuts::HistogramCuts(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 4) = -1082130432;
  xgboost::HostDeviceVector<float>::HostDeviceVector();
}

uint64_t xgboost::data::PageSourceIncMixIn<xgboost::GHistIndexMatrix>::~PageSourceIncMixIn(void *a1)
{
  *a1 = &unk_2883E2970;
  v2 = a1[19];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return xgboost::data::SparsePageSourceImpl<xgboost::GHistIndexMatrix>::~SparsePageSourceImpl(a1);
}

uint64_t xgboost::data::SparsePageSourceImpl<xgboost::GHistIndexMatrix>::operator*(uint64_t a1)
{
  result = *(a1 + 72);
  if (!result)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v6);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./sparse_page_source.h", 190);
    v4 = dmlc::LogMessageFatal::GetEntry(&v6);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: page_", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v6);
    return *(a1 + 72);
  }

  return result;
}

uint64_t xgboost::data::PageSourceIncMixIn<xgboost::GHistIndexMatrix>::operator++(uint64_t a1)
{
  xgboost::data::TryLockGuard::TryLockGuard(&v11, (a1 + 8));
  if (*(a1 + 160) == 1)
  {
    xgboost::data::SparsePageSource::operator++(*(a1 + 144));
  }

  v2 = *(a1 + 104) + 1;
  *(a1 + 104) = v2;
  v7 = v2 == *(a1 + 108);
  *(a1 + 88) = v7;
  if (v7)
  {
    v3 = *(a1 + 112);
    if ((*v3 & 1) == 0)
    {
      v5 = *(v3 + 56);
      v4 = *(v3 + 64);
      v6 = v5 + 1;
      v7 = v5 == v4 || v6 == v4;
      if (!v7)
      {
        v8 = *v5;
        do
        {
          v8 += *v6;
          *v6++ = v8;
        }

        while (v6 != v4);
      }

      *v3 = 1;
    }

    v10 = 1;
    if (!v2)
    {
      dmlc::LogCheckFormat<unsigned int,int>((a1 + 104), &v10);
    }
  }

  else
  {
    (*(*a1 + 48))(a1);
  }

  if (*(a1 + 160) == 1)
  {
    v10 = *(*(a1 + 144) + 104);
    if (v10 != *(a1 + 104))
    {
      dmlc::LogCheckFormat<unsigned int,unsigned int>(&v10, (a1 + 104));
    }
  }

  std::mutex::unlock(v11);
  return a1;
}

uint64_t xgboost::data::SparsePageSourceImpl<xgboost::GHistIndexMatrix>::Page@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 80);
  *a2 = *(result + 72);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void xgboost::data::SparsePageSourceImpl<xgboost::GHistIndexMatrix>::Reset(uint64_t a1)
{
  xgboost::data::TryLockGuard::TryLockGuard(&v2, (a1 + 8));
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  (*(*a1 + 48))(a1);
  std::mutex::unlock(v2);
}

uint64_t xgboost::data::SparsePageSource::operator++(uint64_t a1)
{
  xgboost::data::TryLockGuard::TryLockGuard(&v14, (a1 + 8));
  v2 = *(a1 + 104) + 1;
  *(a1 + 104) = v2;
  if (**(a1 + 112))
  {
    v8 = v2 == *(a1 + 108);
    *(a1 + 88) = v8;
    if (!v8)
    {
LABEL_6:
      xgboost::data::SparsePageSource::Fetch(a1);
    }
  }

  else
  {
    v3 = (*(a1 + 160))(*(a1 + 144));
    *(a1 + 88) = v3 == 0;
    if (v3)
    {
      goto LABEL_6;
    }

    v4 = *(a1 + 112);
    if ((*v4 & 1) == 0)
    {
      v6 = *(v4 + 56);
      v5 = *(v4 + 64);
      v7 = v6 + 1;
      v8 = v6 == v5 || v7 == v5;
      if (!v8)
      {
        v9 = *v6;
        do
        {
          v9 += *v7;
          *v7++ = v9;
        }

        while (v7 != v5);
      }

      *v4 = 1;
    }
  }

  v10 = *(a1 + 108);
  v11 = *(a1 + 104);
  if (v10)
  {
    if (v11 != v10)
    {
      dmlc::LogCheckFormat<unsigned int,unsigned int>((a1 + 104), (a1 + 108));
    }

    v11 = *(a1 + 104);
  }

  v13 = 1;
  if (!v11)
  {
    dmlc::LogCheckFormat<unsigned int,int>((a1 + 104), &v13);
  }

  *(a1 + 168) = 0;
  std::mutex::unlock(v14);
  return a1;
}

xgboost::data::TryLockGuard *xgboost::data::TryLockGuard::TryLockGuard(xgboost::data::TryLockGuard *this, std::mutex *a2)
{
  *this = a2;
  if (!std::mutex::try_lock(a2))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v8);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./sparse_page_source.h", 74);
    v5 = dmlc::LogMessageFatal::GetEntry(&v8);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: lock_.try_lock()", 30);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Multiple threads attempting to use Sparse DMatrix.", 50);
    dmlc::LogMessageFatal::~LogMessageFatal(&v8);
  }

  return this;
}

uint64_t xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v26);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./sparse_page_source.h", 107);
    v24 = dmlc::LogMessageFatal::GetEntry(&v26);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Check failed: !at_end_", 22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v26);
  }

  v2 = **(a1 + 112);
  if (v2 == 1)
  {
    v3 = *(a1 + 128);
    if (v3)
    {
      *(a1 + 128) = 0;
      (*(*v3 + 24))(v3);
      std::vector<std::future<std::shared_ptr<xgboost::SparsePage>>>::resize(*(a1 + 136), *(a1 + 108));
    }

    v4 = *(a1 + 108);
    if (v4 >= 4)
    {
      v5 = 4;
    }

    else
    {
      v5 = v4;
    }

    v29 = v5;
    LODWORD(v28) = 0;
    if (!v4)
    {
      dmlc::LogCheckFormat<unsigned long,int>(&v29, &v28);
    }

    v6 = *(a1 + 104);
    v28 = v6;
    v7 = v29;
    if (v29)
    {
      v8 = 0;
      do
      {
        v9 = v6 % *(a1 + 108);
        v28 = v9;
        v10 = **(a1 + 136);
        if (v9 >= (*(*(a1 + 136) + 8) - v10) >> 3)
        {
          std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_out_of_range[abi:ne200100]();
        }

        if (!*(v10 + 8 * v9))
        {
          v27 = (*(*(a1 + 112) + 64) - *(*(a1 + 112) + 56)) >> 3;
          if (v9 >= v27)
          {
            dmlc::LogCheckFormat<unsigned long,unsigned long>(&v28, &v27);
          }

          *&v26 = v28;
          *(&v26 + 1) = a1;
          std::async[abi:ne200100]<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>(1, &v27);
          v11 = **(a1 + 136);
          if (v28 >= (*(*(a1 + 136) + 8) - v11) >> 3)
          {
            std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_out_of_range[abi:ne200100]();
          }

          v12 = v27;
          v27 = 0;
          v13 = *(v11 + 8 * v28);
          *(v11 + 8 * v28) = v12;
          if (v13 && !atomic_fetch_add(v13 + 1, 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(*v13 + 16))(v13);
          }

          v14 = v27;
          if (v27 && !atomic_fetch_add((v27 + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(*v14 + 16))(v14);
          }

          v9 = v28;
          v7 = v29;
        }

        ++v8;
        v6 = v9 + 1;
        v28 = v6;
      }

      while (v8 < v7);
    }

    v15 = *(a1 + 136);
    v16 = *v15;
    v17 = *(v15 + 8);
    if (v16 == v17)
    {
      v18 = 0;
    }

    else
    {
      v18 = 0;
      do
      {
        if (*v16++)
        {
          ++v18;
        }
      }

      while (v16 != v17);
    }

    v27 = v18;
    if (v18 != v7)
    {
      dmlc::LogCheckFormat<long,unsigned long>(&v27, &v29);
    }

    std::future<std::shared_ptr<xgboost::SparsePage>>::get((**(a1 + 136) + 8 * *(a1 + 104)), &v26);
    v20 = v26;
    v26 = 0uLL;
    v21 = *(a1 + 80);
    *(a1 + 72) = v20;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      if (*(&v26 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
      }
    }
  }

  return v2;
}

void _ZN7xgboost4data19HostAdapterDispatchIZNS0_16SparsePageSource5FetchEvEUlRKT_E_EEDcPKNS0_12DMatrixProxyES3_Pb(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 216);
  v37 = v5;
  if (v5)
  {
    (*(v5 + 8))(&v38, a1 + 224);
    v6 = *(v37 + 16);
  }

  else
  {
    v6 = MEMORY[0x277D827F0];
  }

  if (v37 && *v37)
  {
    (*v37)(&v38);
  }

  if (v7)
  {
    v8 = *(a1 + 216);
    v35 = v8;
    if (v8)
    {
      (v8[1])(v36, a1 + 224);
    }

    dmlc::any::check_type<std::shared_ptr<xgboost::data::CSRArrayAdapter>>(&v35);
    v9 = (*(*v36[0] + 32))(v36[0]);
    v10 = *(v9 + 8);
    v37 = *v9;
    v38 = v10;
    v11 = *(v9 + 16);
    v12 = *(v9 + 32);
    LOWORD(v41) = *(v9 + 48);
    v40 = v12;
    v39 = v11;
    v13 = *(v9 + 64);
    *(&v41 + 1) = *(v9 + 56);
    v42 = v13;
    v14 = *(v9 + 104);
    v15 = *(v9 + 88);
    v43 = *(v9 + 72);
    v44 = v15;
    v45 = v14;
    v16 = *(v9 + 120);
    v46 = *(v9 + 112);
    v47 = v16;
    v17 = *(v9 + 128);
    v18 = *(v9 + 144);
    v50 = *(v9 + 160);
    v49 = v18;
    v48 = v17;
    v51 = *(v9 + 168);
    if (v35 && *v35)
    {
      (*v35)(v36);
    }

    if (a3)
    {
      *a3 = 0;
    }

    xgboost::SparsePage::Push<xgboost::data::CSRArrayAdapterBatch>();
  }

  v19 = *(a1 + 216);
  v37 = v19;
  if (v19)
  {
    (*(v19 + 8))(&v38, a1 + 224);
    v20 = *(v37 + 16);
  }

  else
  {
    v20 = MEMORY[0x277D827F0];
  }

  if (v37 && *v37)
  {
    (*v37)(&v38);
  }

  if (v21)
  {
    v22 = *(a1 + 216);
    v35 = v22;
    if (v22)
    {
      (v22[1])(v36, a1 + 224);
    }

    dmlc::any::check_type<std::shared_ptr<xgboost::data::ArrayAdapter>>(&v35);
    v23 = (*(*v36[0] + 32))(v36[0]);
    v24 = *(v23 + 8);
    v37 = *v23;
    v38 = v24;
    v26 = *(v23 + 32);
    v25 = *(v23 + 48);
    v27 = *(v23 + 16);
    LOWORD(v42) = *(v23 + 64);
    v41 = v25;
    v39 = v27;
    v40 = v26;
    if (v35 && *v35)
    {
      (*v35)(v36);
    }

    if (a3)
    {
      *a3 = 0;
    }

    xgboost::SparsePage::Push<xgboost::data::ArrayAdapterBatch>();
  }

  if (a3)
  {
    *a3 = 1;
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v35);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./proxy_dmatrix.h", 144);
    v29 = dmlc::LogMessageFatal::GetEntry(&v35);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Unknown type: ", 14);
    v31 = *(a1 + 216);
    v37 = v31;
    if (v31 && ((*(v31 + 8))(&v38, a1 + 224), v37))
    {
      v32 = *(v37 + 16);
    }

    else
    {
      v32 = MEMORY[0x277D827F0];
    }

    v33 = *(v32 + 8);
    v34 = strlen((v33 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v33 & 0x7FFFFFFFFFFFFFFFLL, v34);
    if (v37 && *v37)
    {
      (*v37)(&v38);
    }

    dmlc::LogMessageFatal::~LogMessageFatal(&v35);
  }
}

void sub_274D631F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::WriteCache(uint64_t a1)
{
  if (**(a1 + 112) == 1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./sparse_page_source.h", 153);
    v19 = dmlc::LogMessageFatal::GetEntry(__p);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Check failed: !cache_info_->written", 35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(__p);
  }

  std::chrono::steady_clock::now();
  v2.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  std::string::basic_string[abi:ne200100]<0>(__p, "raw");
  v3 = xgboost::data::CreatePageFormat<xgboost::SparsePage>(__p);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *(a1 + 128);
  if (!v4)
  {
    xgboost::data::Cache::ShardName(*(a1 + 112), __p);
    if (v24 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    v6 = dmlc::Stream::Create(v5, "w", 0);
    v7 = *(a1 + 128);
    *(a1 + 128) = v6;
    if (v7)
    {
      (*(*v7 + 24))(v7);
    }

    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    v4 = *(a1 + 128);
  }

  v8 = (*(*v3 + 24))(v3, *(a1 + 72), v4);
  v25 = v8;
  v9.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v10, v11) + 4) >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(v21, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./sparse_page_source.h");
    xgboost::ConsoleLogger::ConsoleLogger(__p, v21, 164, 2);
    v12 = MEMORY[0x277C68E00](__p, vcvtd_n_f64_u64(v8, 0xAuLL) * 0.0009765625);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " MB written in ", 15);
    v14 = MEMORY[0x277C68E00](v13, (v9.__d_.__rep_ - v2.__d_.__rep_) / 1000000000.0);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " seconds.", 9);
    xgboost::ConsoleLogger::~ConsoleLogger(__p, v15, v16);
    if (v22 < 0)
    {
      operator delete(v21[0]);
    }
  }

  std::vector<unsigned long>::push_back[abi:ne200100]((*(a1 + 112) + 56), &v25);
  return (*(*v3 + 8))(v3);
}

void _ZNSt3__120__shared_ptr_emplaceIN7xgboost10SparsePageENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2883E2A50;
  xgboost::SparsePage::SparsePage((a1 + 3));
}

void std::__shared_ptr_emplace<xgboost::SparsePage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883E2A50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

void std::vector<std::future<std::shared_ptr<xgboost::SparsePage>>>::resize(atomic_ullong *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      std::vector<std::future<std::shared_ptr<xgboost::SparsePage>>>::__base_destruct_at_end[abi:ne200100](result, *result + 8 * a2);
    }
  }

  else
  {
    std::vector<std::future<std::shared_ptr<xgboost::SparsePage>>>::__append(result, a2 - v2);
  }
}

void *std::async[abi:ne200100]<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>@<X0>(void *result@<X0>, void *a3@<X8>)
{
  if (result)
  {
    std::__make_async_assoc_state[abi:ne200100]<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>();
  }

  if ((result & 2) != 0)
  {
    std::__make_deferred_assoc_state[abi:ne200100]<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>();
  }

  *a3 = 0;
  return result;
}

void std::future<std::shared_ptr<xgboost::SparsePage>>::get(atomic_ullong **a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1;
  *a1 = 0;
  std::__assoc_state<std::shared_ptr<xgboost::SparsePage>>::move(v2, a2);
  if (v2 && !atomic_fetch_add(v2 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = *(*v2 + 16);

    v3(v2);
  }
}

void sub_274D63850(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (!atomic_fetch_add(v1 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v1 + 16))(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::future<std::shared_ptr<xgboost::SparsePage>>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += a2;
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
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v4 - v6;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    v17 = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::parameter::FieldAccessEntry *>>(a1, v11);
    }

    v14 = 0;
    v15 = 8 * v9;
    bzero((8 * v9), 8 * a2);
    v16 = 8 * v9 + 8 * a2;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::future<std::shared_ptr<xgboost::SparsePage>>>,std::future<std::shared_ptr<xgboost::SparsePage>>*>(a1, v6, v5, 0);
    v12 = *a1;
    *a1 = 0;
    v13 = *(a1 + 16);
    *(a1 + 8) = v16;
    *&v16 = v12;
    *(&v16 + 1) = v13;
    v14 = v12;
    v15 = v12;
    std::__split_buffer<std::future<std::shared_ptr<xgboost::SparsePage>>>::~__split_buffer(&v14);
  }
}

void sub_274D639C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::future<std::shared_ptr<xgboost::SparsePage>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::future<std::shared_ptr<xgboost::SparsePage>>>,std::future<std::shared_ptr<xgboost::SparsePage>>*>(uint64_t a1, atomic_ullong **a2, atomic_ullong **a3, atomic_ullong **a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4++ = *v6;
      *v6++ = 0;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    do
    {
      v7 = *v5;
      if (*v5 && !atomic_fetch_add(v7 + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        (*(*v7 + 16))(v7);
      }

      ++v5;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::future<std::shared_ptr<xgboost::SparsePage>>>,std::future<std::shared_ptr<xgboost::SparsePage>>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::future<std::shared_ptr<xgboost::SparsePage>>>,std::future<std::shared_ptr<xgboost::SparsePage>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::future<std::shared_ptr<xgboost::SparsePage>>>,std::future<std::shared_ptr<xgboost::SparsePage>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

atomic_ullong *std::_AllocatorDestroyRangeReverse<std::allocator<std::future<std::shared_ptr<xgboost::SparsePage>>>,std::future<std::shared_ptr<xgboost::SparsePage>>*>::operator()[abi:ne200100](atomic_ullong *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  while (v3 != v4)
  {
    v5 = *(v3 - 8);
    v3 -= 8;
    result = v5;
    if (v5)
    {
      if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        result = (*(*result + 16))(result);
      }
    }
  }

  return result;
}

atomic_ullong *std::__split_buffer<std::future<std::shared_ptr<xgboost::SparsePage>>>::~__split_buffer(atomic_ullong *a1)
{
  std::__split_buffer<std::future<std::shared_ptr<xgboost::SparsePage>>>::__destruct_at_end[abi:ne200100](a1, a1[1]);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

atomic_ullong *std::__split_buffer<std::future<std::shared_ptr<xgboost::SparsePage>>>::__destruct_at_end[abi:ne200100](atomic_ullong *result, uint64_t a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      result = *(v2 - 8);
      v4[2] = v2 - 8;
      if (result)
      {
        if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          result = (*(*result + 16))(result);
        }
      }

      v2 = v4[2];
    }

    while (v2 != a2);
  }

  return result;
}

atomic_ullong *std::vector<std::future<std::shared_ptr<xgboost::SparsePage>>>::__base_destruct_at_end[abi:ne200100](atomic_ullong *result, atomic_ullong a2)
{
  v3 = result;
  for (i = result[1]; i != a2; i -= 8)
  {
    v5 = *(i - 8);
    result = v5;
    if (v5 && !atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      result = (*(*result + 16))(result);
    }
  }

  v3[1] = a2;
  return result;
}

void sub_274D63DBC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::thread a12)
{
  if (!atomic_fetch_add(v13, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v12 + 16))(v12, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_274D63F10(_Unwind_Exception *exception_object)
{
  if (!atomic_fetch_add(v2, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>::~__async_assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>::__on_zero_shared(std::__assoc_sub_state *a1)
{
  std::__assoc_sub_state::wait(a1);

  return std::__assoc_state<std::shared_ptr<xgboost::SparsePage>>::__on_zero_shared(a1);
}

void sub_274D640E8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  __cxa_begin_catch(a1);
  std::current_exception();
  v14.__ptr_ = &a10;
  std::__assoc_sub_state::set_exception(v12, v14);
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  JUMPOUT(0x274D640D8);
}

void sub_274D6412C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t std::__assoc_state<std::shared_ptr<xgboost::SparsePage>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v2 = *(a1 + 152);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  v3 = *(*a1 + 8);

  return v3(a1);
}

void std::__assoc_state<std::shared_ptr<xgboost::SparsePage>>::set_value<std::shared_ptr<xgboost::SparsePage>>(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 144) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x277C68C80](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x277D82710], MEMORY[0x277D82648]);
}

void xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}::operator()(void *a1)
{
  std::chrono::steady_clock::now();
  std::chrono::steady_clock::now();
  std::string::basic_string[abi:ne200100]<0>(__p, "raw");
  xgboost::data::CreatePageFormat<xgboost::SparsePage>(__p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  xgboost::data::Cache::ShardName(*(a1[1] + 112), v10);
  v3 = *(*(a1[1] + 112) + 56);
  if (*a1 < ((*(*(a1[1] + 112) + 64) - v3) >> 3))
  {
    v9 = *(v3 + 8 * *a1);
    if (v11 >= 0)
    {
      v4 = v10;
    }

    else
    {
      v4 = v10[0];
    }

    v5 = dmlc::SeekStream::CreateForRead(v4, 0);
    (*(*v5 + 32))(v5, v9);
    v6 = (*(*v5 + 40))(v5);
    if (v6 != v9)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v6, &v9);
    }

    _ZNSt3__115allocate_sharedB8ne200100IN7xgboost10SparsePageENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
}

void sub_274D645F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a16);
  v25 = *(v23 - 72);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  (*(*v22 + 24))(v22);
  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  _Unwind_Resume(a1);
}

void sub_274D646F8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D64704);
}

uint64_t xgboost::data::CreatePageFormat<xgboost::SparsePage>(uint64_t a1)
{
  dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::SparsePage>>::Get();
  v2 = dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::SparsePage>>::Get();
  v3 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>((v2 + 3), a1);
  if ((v2 + 56) == v3 || (v4 = *(v3 + 56)) == 0)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./sparse_page_writer.h", 60);
    v9 = dmlc::LogMessageFatal::GetEntry(&v14);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Unknown format type ", 20);
    v11 = *(a1 + 23);
    if (v11 >= 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    if (v11 >= 0)
    {
      v13 = *(a1 + 23);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
    return 0;
  }

  else
  {
    v5 = *(v4 + 96);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = *(*v5 + 48);

    return v6();
  }
}

void sub_274D64914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>::*)(void),std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>*>>(const void **a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v8[1];
  v5 = v8[2];
  v6 = (v8[3] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>::*)(void),std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>*>>::~unique_ptr[abi:ne200100](&v8);
  return 0;
}

void sub_274D649E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>::*)(void),std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>*>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>::*)(void),std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>*>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x277C69180](v3, 0xA0C40F20CD8FBLL);
  }

  return a1;
}

void std::__assoc_sub_state::__attach_future[abi:ne200100](uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  v2 = *(a1 + 136);
  if ((v2 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit((a1 + 8), 1uLL, memory_order_relaxed);
  *(a1 + 136) = v2 | 2;

  std::mutex::unlock((a1 + 24));
}

void std::__deferred_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>::~__deferred_assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x277C69180);
}

void sub_274D64BF0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  __cxa_begin_catch(a1);
  std::current_exception();
  v14.__ptr_ = &a10;
  std::__assoc_sub_state::set_exception(v12, v14);
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  JUMPOUT(0x274D64BE0);
}

void sub_274D64C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void dmlc::LogCheckFormat<long,unsigned long>(void *a1, void *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " (", 2);
  v6 = MEMORY[0x277C68E40](v5, *a1);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " vs. ", 5);
  v8 = MEMORY[0x277C68E50](v7, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
  operator new();
}

void sub_274D64E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x277C69180](v3, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void std::__assoc_state<std::shared_ptr<xgboost::SparsePage>>::move(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v4 = *(a1 + 16);
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v6, (a1 + 16));
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 144);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_274D64EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t xgboost::data::SparsePageSourceImpl<xgboost::GHistIndexMatrix>::~SparsePageSourceImpl(uint64_t a1)
{
  *a1 = &unk_2883E2A00;
  v2 = *(a1 + 136);
  v3 = *v2;
  v4 = v2[1];
  if (*v2 == v4)
  {
    *(a1 + 136) = 0;
LABEL_9:
    v10 = v2;
    std::vector<std::future<std::shared_ptr<xgboost::GHistIndexMatrix>>>::__destroy_vector::operator()[abi:ne200100](&v10);
    MEMORY[0x277C69180](v2, 0x20C40960023A9);
    goto LABEL_10;
  }

  do
  {
    if (*v3)
    {
      std::future<std::shared_ptr<xgboost::GHistIndexMatrix>>::get(v3, &v9);
      if (*(&v9 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
      }
    }

    ++v3;
  }

  while (v3 != v4);
  v2 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v2)
  {
    goto LABEL_9;
  }

LABEL_10:
  v5 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(a1 + 120);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::mutex::~mutex((a1 + 8));
  return a1;
}

void std::future<std::shared_ptr<xgboost::GHistIndexMatrix>>::get(atomic_ullong **a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1;
  *a1 = 0;
  std::__assoc_state<std::shared_ptr<xgboost::GHistIndexMatrix>>::move(v2, a2);
  if (v2 && !atomic_fetch_add(v2 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = *(*v2 + 16);

    v3(v2);
  }
}

void sub_274D650A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (!atomic_fetch_add(v1 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v1 + 16))(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::__assoc_state<std::shared_ptr<xgboost::GHistIndexMatrix>>::move(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v4 = *(a1 + 16);
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v6, (a1 + 16));
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 144);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_274D65190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::future<std::shared_ptr<xgboost::GHistIndexMatrix>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::future<std::shared_ptr<xgboost::SparsePage>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_274D654C0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  __clang_call_terminate(a1);
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<xgboost::data::Cache>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<xgboost::data::Cache>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__shared_ptr_emplace<xgboost::data::SparsePageSource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883E2B48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::~SparsePageSourceImpl(uint64_t a1)
{
  *a1 = &unk_2883E2C28;
  v2 = *(a1 + 136);
  v3 = *v2;
  v4 = v2[1];
  if (*v2 == v4)
  {
    *(a1 + 136) = 0;
    if (!v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  do
  {
    if (*v3)
    {
      std::future<std::shared_ptr<xgboost::SparsePage>>::get(v3, &v9);
      if (*(&v9 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
      }
    }

    ++v3;
  }

  while (v3 != v4);
  v2 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v2)
  {
    v3 = *v2;
    if (!*v2)
    {
LABEL_9:
      MEMORY[0x277C69180](v2, 0x20C40960023A9);
      goto LABEL_10;
    }

LABEL_8:
    std::vector<std::future<std::shared_ptr<xgboost::SparsePage>>>::__base_destruct_at_end[abi:ne200100](v2, v3);
    operator delete(*v2);
    goto LABEL_9;
  }

LABEL_10:
  v5 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(a1 + 120);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::mutex::~mutex((a1 + 8));
  return a1;
}

void xgboost::data::SparsePageSource::~SparsePageSource(xgboost::data::SparsePageSource *this)
{
  xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::~SparsePageSourceImpl(this);

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::operator*(uint64_t a1)
{
  result = *(a1 + 72);
  if (!result)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v6);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./sparse_page_source.h", 190);
    v4 = dmlc::LogMessageFatal::GetEntry(&v6);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: page_", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v6);
    return *(a1 + 72);
  }

  return result;
}

uint64_t xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::Page@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 80);
  *a2 = *(result + 72);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void xgboost::data::SparsePageSource::Reset(xgboost::data::SparsePageSource *this)
{
  if (*(this + 21))
  {
    xgboost::data::TryLockGuard::TryLockGuard(&v2, (this + 8));
    (*(this + 19))(*(this + 18));
    std::mutex::unlock(v2);
  }

  xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::Reset(this);
  xgboost::data::TryLockGuard::TryLockGuard(&v2, (this + 8));
  *(this + 22) = 0;
  std::mutex::unlock(v2);
}

void xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::Reset(uint64_t a1)
{
  xgboost::data::TryLockGuard::TryLockGuard(&v2, (a1 + 8));
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  (*(*a1 + 48))(a1);
  std::mutex::unlock(v2);
}

void std::__shared_ptr_emplace<xgboost::data::CSCPageSource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883E2C78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

void xgboost::data::CSCPageSource::Fetch(xgboost::data::CSCPageSource *this)
{
  if (*(this + 88) == 1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./sparse_page_source.h", 107);
    v25 = dmlc::LogMessageFatal::GetEntry(__p);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Check failed: !at_end_", 22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(__p);
  }

  if (**(this + 14) != 1)
  {
    (*(**(this + 18) + 40))(&v27);
    operator new();
  }

  v2 = *(this + 16);
  if (v2)
  {
    *(this + 16) = 0;
    (*(*v2 + 24))(v2);
    v3 = *(this + 17);
    v4 = *(this + 27);
    v5 = *v3;
    v6 = v3[1];
    v7 = (v6 - *v3) >> 3;
    if (v4 <= v7)
    {
      if (v4 < v7)
      {
        std::vector<std::future<std::shared_ptr<xgboost::SparsePage>>>::__base_destruct_at_end[abi:ne200100](*(this + 17), v5 + 8 * v4);
      }
    }

    else
    {
      v8 = v4 - v7;
      v9 = v3[2];
      if (v8 > (v9 - v6) >> 3)
      {
        v10 = v9 - v5;
        if (v10 >> 2 > v4)
        {
          v4 = v10 >> 2;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v4;
        }

        if (!(v11 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      bzero(v3[1], 8 * v8);
      v3[1] = v6 + 8 * v8;
    }
  }

  v12 = *(this + 27);
  if (v12 >= 4)
  {
    v13 = 4;
  }

  else
  {
    v13 = v12;
  }

  v31[0] = v13;
  LODWORD(v29[0]) = 0;
  if (!v12)
  {
    dmlc::LogCheckFormat<unsigned long,int>(v31, v29);
  }

  v14 = *(this + 26);
  v28 = v14;
  if (v31[0])
  {
    v15 = 0;
    do
    {
      v16 = v14 % *(this + 27);
      v28 = v16;
      v17 = **(this + 17);
      if (v16 >= (*(*(this + 17) + 8) - v17) >> 3)
      {
        std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_out_of_range[abi:ne200100]();
      }

      if (!*(v17 + 8 * v16))
      {
        v29[0] = ((*(*(this + 14) + 64) - *(*(this + 14) + 56)) >> 3);
        if (v16 >= v29[0])
        {
          dmlc::LogCheckFormat<unsigned long,unsigned long>(&v28, v29);
        }

        operator new();
      }

      ++v15;
      v14 = v16 + 1;
      v28 = v14;
    }

    while (v15 < v31[0]);
  }

  v18 = *(this + 17);
  v19 = *v18;
  v20 = *(v18 + 8);
  if (v19 == v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0;
    do
    {
      if (*v19++)
      {
        ++v21;
      }
    }

    while (v19 != v20);
  }

  v29[0] = v21;
  if (v21 != v31[0])
  {
    dmlc::LogCheckFormat<long,unsigned long>(v29, v31);
  }

  std::future<std::shared_ptr<xgboost::CSCPage>>::get(__p, (**(this + 17) + 8 * *(this + 26)));
  v23 = *(this + 10);
  *(this + 72) = *__p;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }
}

void sub_274D665B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D665C4);
}

uint64_t xgboost::data::PageSourceIncMixIn<xgboost::CSCPage>::~PageSourceIncMixIn(void *a1)
{
  *a1 = &unk_2883E2D70;
  v2 = a1[19];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return xgboost::data::SparsePageSourceImpl<xgboost::CSCPage>::~SparsePageSourceImpl(a1);
}

void xgboost::data::CSCPageSource::~CSCPageSource(xgboost::data::CSCPageSource *this)
{
  *this = &unk_2883E2D70;
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  xgboost::data::SparsePageSourceImpl<xgboost::CSCPage>::~SparsePageSourceImpl(this);
}

{
  *this = &unk_2883E2D70;
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  xgboost::data::SparsePageSourceImpl<xgboost::CSCPage>::~SparsePageSourceImpl(this);

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::SparsePageSourceImpl<xgboost::CSCPage>::operator*(uint64_t a1)
{
  result = *(a1 + 72);
  if (!result)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v6);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./sparse_page_source.h", 190);
    v4 = dmlc::LogMessageFatal::GetEntry(&v6);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: page_", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v6);
    return *(a1 + 72);
  }

  return result;
}

uint64_t xgboost::data::PageSourceIncMixIn<xgboost::CSCPage>::operator++(uint64_t a1)
{
  xgboost::data::TryLockGuard::TryLockGuard(&v11, (a1 + 8));
  if (*(a1 + 160) == 1)
  {
    xgboost::data::SparsePageSource::operator++(*(a1 + 144));
  }

  v2 = *(a1 + 104) + 1;
  *(a1 + 104) = v2;
  v7 = v2 == *(a1 + 108);
  *(a1 + 88) = v7;
  if (v7)
  {
    v3 = *(a1 + 112);
    if ((*v3 & 1) == 0)
    {
      v5 = *(v3 + 56);
      v4 = *(v3 + 64);
      v6 = v5 + 1;
      v7 = v5 == v4 || v6 == v4;
      if (!v7)
      {
        v8 = *v5;
        do
        {
          v8 += *v6;
          *v6++ = v8;
        }

        while (v6 != v4);
      }

      *v3 = 1;
    }

    v10 = 1;
    if (!v2)
    {
      dmlc::LogCheckFormat<unsigned int,int>((a1 + 104), &v10);
    }
  }

  else
  {
    (*(*a1 + 48))(a1);
  }

  if (*(a1 + 160) == 1)
  {
    v10 = *(*(a1 + 144) + 104);
    if (v10 != *(a1 + 104))
    {
      dmlc::LogCheckFormat<unsigned int,unsigned int>(&v10, (a1 + 104));
    }
  }

  std::mutex::unlock(v11);
  return a1;
}