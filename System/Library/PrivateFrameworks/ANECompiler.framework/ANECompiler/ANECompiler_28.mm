void sub_23CA74768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20, char a21, void *__p)
{
  if (a21)
  {
    operator delete(__p);
    if ((*(v22 - 104) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((*(v22 - 104) & 1) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v22 - 96));
  goto LABEL_6;
}

void operations_research::sat::PostsolveIntMod(uint64_t a1, void *a2)
{
  v4 = *(a1 + 60);
  v5 = *(a1 + 48);
  if (v4 == 8)
  {
    v6 = *(a1 + 48);
  }

  else
  {
    v6 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v8 = v6[3];
  v7 = v6 + 3;
  v9 = (v8 + 7);
  if (v8)
  {
    v7 = v9;
  }

  v10 = *v7;
  v11 = (*v7)[8];
  if (*(*v7 + 4) >= 1)
  {
    v12 = 0;
    do
    {
      v13 = *(v10[3] + v12);
      if (~v13 <= v13)
      {
        v14 = *(v10[3] + v12);
      }

      else
      {
        v14 = ~v13;
      }

      v15 = *(v10[6] + v12) * operations_research::Domain::Min((*a2 + 24 * v14));
      if (v13 < 0)
      {
        v15 = -v15;
      }

      v11 += v15;
      ++v12;
    }

    while (v12 < *(v10 + 4));
    v4 = *(a1 + 60);
    v5 = *(a1 + 48);
  }

  if (v4 == 8)
  {
    v16 = v5;
  }

  else
  {
    v16 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v18 = v16[3];
  v17 = v16 + 3;
  v19 = (v18 + 15);
  if (v18)
  {
    v17 = v19;
  }

  v20 = *v17;
  v21 = (*v17)[8];
  if (*(*v17 + 4) >= 1)
  {
    v22 = 0;
    do
    {
      v23 = *(v20[3] + v22);
      if (~v23 <= v23)
      {
        v24 = *(v20[3] + v22);
      }

      else
      {
        v24 = ~v23;
      }

      v25 = *(v20[6] + v22) * operations_research::Domain::Min((*a2 + 24 * v24));
      if (v23 < 0)
      {
        v25 = -v25;
      }

      v21 = (v21 + v25);
      ++v22;
    }

    while (v22 < *(v20 + 4));
  }

  if (!v21)
  {
    operations_research::sat::PostsolveIntMod(&v34);
  }

  if (*(a1 + 60) == 8)
  {
    v26 = *(a1 + 48);
  }

  else
  {
    v26 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v27 = v26[6];
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v29 = *(v28 + 4);
  if (v29 != 1)
  {
    operations_research::sat::PostsolveIntMod(v29, &v34);
  }

  v30 = v11 % v21 - v28[8];
  v31 = *v28[6];
  v32 = v30 / v31;
  if (v30 % v31)
  {
    operations_research::sat::PostsolveIntMod(v30 % v31, &v34);
  }

  if (!operations_research::Domain::Contains((*a2 + 24 * *v28[3]), v32))
  {
    operations_research::sat::PostsolveIntMod(&v34);
  }

  operations_research::Domain::Domain(&v34, v32);
  v33 = *a2 + 24 * *v28[3];
  if (v33 == &v34)
  {
    operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(&v34);
  }

  else
  {
    if (*v33)
    {
      operator delete(*(v33 + 8));
    }

    *v33 = v34;
    *(v33 + 8) = v35;
  }
}

void operations_research::sat::PostsolveResponse(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4, __n128 a5)
{
  v7 = (a4[1] - *a4) >> 3;
  v8 = *a3;
  v9 = a3[1];
  v10 = (v9 - *a3) >> 2;
  if (v7 != v10)
  {
    operations_research::sat::PostsolveResponse(v7, v10, &__p);
  }

  v13 = *(a2 + 32);
  v49 = 0;
  v50 = 0;
  __p = 0;
  v47.__r_.__value_.__r.__words[0] = &__p;
  v47.__r_.__value_.__s.__data_[8] = 0;
  if (v13)
  {
    if ((v13 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v21 = 0;
  if (v9 == v8)
  {
    goto LABEL_32;
  }

  v22 = 0;
  v23 = 1;
  do
  {
    v24 = *(v8 + 4 * v22);
    v25 = 0xAAAAAAAAAAAAAAABLL * ((v49 - __p) >> 3);
    if (v25 < v24)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,unsigned long long>(v24, v25, "postsolve_mapping[i] <= domains.size()");
    }

    operations_research::Domain::Domain(&v47, *(*a4 + v22));
    v26 = (__p + 24 * *(*a3 + 4 * v22));
    if (v26 == &v47)
    {
      if (v47.__r_.__value_.__s.__data_[0])
      {
        operator delete(v47.__r_.__value_.__l.__size_);
      }
    }

    else
    {
      if (v26->__r_.__value_.__s.__data_[0])
      {
        operator delete(v26->__r_.__value_.__l.__size_);
      }

      v26->__r_.__value_.__r.__words[0] = v47.__r_.__value_.__r.__words[0];
      a5 = *&v47.__r_.__value_.__r.__words[1];
      *&v26->__r_.__value_.__r.__words[1] = *&v47.__r_.__value_.__r.__words[1];
    }

    v22 = v23;
    v8 = *a3;
    ++v23;
  }

  while (v22 < (a3[1] - *a3) >> 2);
  v21 = __p;
  if (v49 == __p)
  {
LABEL_32:
    v20 = v21;
  }

  else
  {
    v14 = 0;
    v15 = (a2 + 24);
    v16 = 1;
    do
    {
      if (operations_research::Domain::IsEmpty(&v21[24 * v14]))
      {
        if (*v15)
        {
          v18 = *v15 + 8 * v14 + 7;
        }

        else
        {
          v18 = a2 + 24;
        }

        operations_research::Domain::FromFlatSpanOfIntervals(*(*v18 + 24), *(*v18 + 16), &v47, v17);
        v19 = (__p + 24 * v14);
        if (v19 == &v47)
        {
          if (v47.__r_.__value_.__s.__data_[0])
          {
            operator delete(v47.__r_.__value_.__l.__size_);
          }
        }

        else
        {
          if (v19->__r_.__value_.__s.__data_[0])
          {
            operator delete(v19->__r_.__value_.__l.__size_);
          }

          *v19 = v47;
        }
      }

      if (operations_research::Domain::IsEmpty((__p + 24 * v14)))
      {
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v47, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_postsolve.cc", 350);
        absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v47);
      }

      v14 = v16;
      v21 = __p;
      v20 = v49;
      ++v16;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v49 - __p) >> 3) > v14);
  }

  v27 = *(a2 + 56);
  v28 = (v27 - 1);
  if (v27 - 1 >= 0)
  {
    v29 = (a2 + 48);
    do
    {
      if (*v29)
      {
        v31 = *v29 + 8 * v28 + 7;
      }

      else
      {
        v31 = v29;
      }

      v32 = *v31;
      v33 = *(*v31 + 16);
      if (v33)
      {
        v34 = *(v32 + 24);
        v35 = 4 * v33;
        while (1)
        {
          v36 = *v34;
          v37 = ~*v34 <= *v34 ? *v34 : ~v36;
          if (operations_research::Domain::IsFixed((__p + 24 * v37)) && v36 >= 0 != (operations_research::Domain::Min((__p + 24 * v37)) != 0))
          {
            break;
          }

          ++v34;
          v35 -= 4;
          if (!v35)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
LABEL_49:
        v38 = *(v32 + 60);
        if (v38 > 13)
        {
          switch(v38)
          {
            case 14:
              operations_research::sat::PostsolveElement(v32, &__p);
              break;
            case 27:
              operations_research::sat::PostsolveLinMax(v32, &__p);
              break;
            case 29:
              operations_research::sat::PostsolveExactlyOne(v32, &__p);
              break;
            default:
LABEL_80:
              absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v46, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_postsolve.cc", 395);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v46, "Unsupported constraint: ", 0x18uLL);
              google::protobuf::Message::ShortDebugString(&v47);
          }
        }

        else
        {
          switch(v38)
          {
            case 3:
              operations_research::sat::PostsolveClause(v32, &__p);
              break;
            case 8:
              operations_research::sat::PostsolveIntMod(v32, &__p);
              break;
            case 12:
              operations_research::sat::PostsolveLinear(v32, &__p, a5);
              break;
            default:
              goto LABEL_80;
          }
        }
      }
    }

    while (v28-- > 0);
    v21 = __p;
    v20 = v49;
  }

  a4[1] = *a4;
  v39 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v21) >> 3);
  if (v39 < a1)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,unsigned long long>(a1, v39, "num_variables_in_original_model <= domains.size()");
  }

  if (a1 >= 1)
  {
    v40 = 0;
    v41 = 1;
    do
    {
      v47.__r_.__value_.__r.__words[0] = operations_research::Domain::SmallestValue((__p + 24 * v40));
      std::vector<long long>::push_back[abi:ne200100](a4, &v47);
      v40 = v41++;
    }

    while (v40 < a1);
    v21 = __p;
  }

  if (v21)
  {
    v42 = v49;
    v43 = v21;
    if (v49 != v21)
    {
      v44 = v49;
      do
      {
        v45 = *(v44 - 24);
        v44 -= 3;
        if (v45)
        {
          operator delete(*(v42 - 2));
        }

        v42 = v44;
      }

      while (v44 != v21);
      v43 = __p;
    }

    v49 = v21;
    operator delete(v43);
  }
}

void sub_23CA75044(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&a9);
}

void sub_23CA7506C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__exception_guard_exceptions<std::vector<operations_research::Domain>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CA75080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CA75094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CA750A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CA750BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CA750D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CA750E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CA750F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CA7510C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CA75120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CA75134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CA75148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CA7515C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<operations_research::Domain>::__emplace_back_slow_path<operations_research::Domain>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3) + 1;
  if (v5 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v2) >> 3) > v5)
  {
    v5 = 0x5555555555555556 * ((*(a1 + 16) - v2) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v2) >> 3) >= 0x555555555555555)
  {
    v7 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v8 = 8 * (v4 >> 3);
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *a2 = 0;
  v9 = v8 + 24;
  v10 = v8 - v4;
  if (v2 != v3)
  {
    v11 = v2;
    v12 = v10;
    do
    {
      *v12 = *v11;
      *(v12 + 8) = *(v11 + 1);
      *v11 = 0;
      v11 += 3;
      v12 += 24;
    }

    while (v11 != v3);
    do
    {
      if (*v2)
      {
        operator delete(v2[1]);
      }

      v2 += 3;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v10;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v9;
}

void ***std::__exception_guard_exceptions<std::vector<operations_research::Domain>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v2[1];
        do
        {
          v7 = *(v6 - 24);
          v6 -= 3;
          if (v7)
          {
            operator delete(*(v4 - 2));
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void operations_research::sat::CpModelPresolver::RemoveEmptyConstraints(operations_research::sat::CpModelPresolver *this, google::protobuf::Message *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = **(this + 1);
  v3 = *(v2 + 56);
  v5 = 0;
  v6 = 0;
  __p = 0;
  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23CA75654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<int>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, unsigned int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_23CA7575C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(int *)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

BOOL operations_research::sat::CpModelPresolver::PresolveEnforcementLiteral(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  v2 = *(this + 1);
  if (*(v2 + 416))
  {
    return 0;
  }

  v4 = *(a2 + 4);
  if (!v4)
  {
    return 0;
  }

  v6 = *(v2 + 104);
  if (v6 <= 1)
  {
    *(v2 + 112) = 0;
    v7 = (a2 + 24);
    v8 = *(a2 + 3);
    v9 = &v8[v4];
    goto LABEL_8;
  }

  absl::lts_20240722::container_internal::ClearBackingArray((v2 + 104), &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value, v6 < 0x80, 1u);
  v7 = (a2 + 24);
  v8 = *(a2 + 3);
  v11 = *(a2 + 4);
  if (v11)
  {
    v9 = &v8[v11];
LABEL_8:
    v12 = 0;
    do
    {
      v46 = *v8;
      if (operations_research::sat::PresolveContext::LiteralIsTrue(*(this + 1), v46))
      {
        operator new();
      }

      if (operations_research::sat::PresolveContext::LiteralIsFalse(*(this + 1), v46))
      {
        operator new();
      }

      if (operations_research::sat::PresolveContext::VariableIsUniqueAndRemovable(*(this + 1), v46))
      {
        operator new();
      }

      if (operations_research::sat::PresolveContext::VariableWithCostIsUniqueAndRemovable(*(this + 1), v46))
      {
        v15 = *(this + 1);
        if (~v46 <= v46)
        {
          v16 = v46;
        }

        else
        {
          v16 = ~v46;
        }

        v17 = v15[64];
        if (v17 > 1)
        {
          v19 = 0;
          _X11 = v15[66];
          __asm { PRFM            #4, [X11] }

          v26 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v16) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v16));
          v27 = vdup_n_s8(v26 & 0x7F);
          v28 = ((v26 >> 7) ^ (_X11 >> 12)) & v17;
          v29 = *(_X11 + v28);
          v30 = vceq_s8(v29, v27);
          if (!v30)
          {
            goto LABEL_28;
          }

LABEL_25:
          v31 = v15[67];
          while (1)
          {
            v32 = (v28 + (__clz(__rbit64(v30)) >> 3)) & v17;
            if (*(v31 + 16 * v32) == v16)
            {
              break;
            }

            v30 &= ((v30 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v30)
            {
LABEL_28:
              while (!*&vceq_s8(v29, 0x8080808080808080))
              {
                v19 += 8;
                v28 = (v19 + v28) & v17;
                v29 = *(_X11 + v28);
                v30 = vceq_s8(v29, v27);
                if (v30)
                {
                  goto LABEL_25;
                }
              }

LABEL_55:
              absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", v14);
            }
          }

          v18 = (v31 + 16 * v32);
          if (!(_X11 + v32))
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v15[65] < 2uLL)
          {
            goto LABEL_55;
          }

          if (*(v15 + 132) != v16)
          {
            goto LABEL_55;
          }

          v18 = v15 + 66;
          if (!&absl::lts_20240722::container_internal::kSooControl)
          {
            goto LABEL_55;
          }
        }

        if (v46 >= 0 != v18[1] < 1)
        {
          operator new();
        }
      }

      if (v4 <= 1)
      {
        v13 = v46;
      }

      else
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>((*(this + 1) + 104), &v46, __p);
        if ((v45 & 1) == 0)
        {
          operator new();
        }

        v13 = v46;
        *__p[1] = v46;
        v33 = *(this + 1);
        v34 = ~v13;
        v35 = v33[13];
        if (v35 > 1)
        {
          v36 = 0;
          _X12 = v33[15];
          __asm { PRFM            #4, [X12] }

          v39 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v34) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v34));
          v40 = vdup_n_s8(v39 & 0x7F);
          v41 = ((v39 >> 7) ^ (_X12 >> 12)) & v35;
          v42 = *(_X12 + v41);
          v43 = vceq_s8(v42, v40);
          if (!v43)
          {
            goto LABEL_44;
          }

          do
          {
LABEL_42:
            if (*(v33[16] + 4 * ((v41 + (__clz(__rbit64(v43)) >> 3)) & v35)) == v34)
            {
              goto LABEL_47;
            }

            v43 &= ((v43 & 0x8080808080808080) - 1) & 0x8080808080808080;
          }

          while (v43);
LABEL_44:
          while (!*&vceq_s8(v42, 0x8080808080808080))
          {
            v36 += 8;
            v41 = (v36 + v41) & v35;
            v42 = *(_X12 + v41);
            v43 = vceq_s8(v42, v40);
            if (v43)
            {
              goto LABEL_42;
            }
          }
        }

        else if (v33[14] >= 2uLL && *(v33 + 30) == v34)
        {
LABEL_47:
          operator new();
        }
      }

      *(*v7 + 4 * v12++) = v13;
      ++v8;
    }

    while (v8 != v9);
    goto LABEL_49;
  }

  v12 = 0;
LABEL_49:
  if (*(a2 + 4) > v12)
  {
    *(a2 + 4) = v12;
  }

  return v12 != v4;
}

void sub_23CA75E40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::at<int,absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>>(void *a1, const char *a2)
{
  v2 = *a1;
  if (*a1 > 1uLL)
  {
    v3 = 0;
    _X9 = a1[2];
    __asm { PRFM            #4, [X9] }

    v9 = *a2;
    v10 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9));
    v11 = vdup_n_s8(v10 & 0x7F);
    v12 = ((v10 >> 7) ^ (_X9 >> 12)) & v2;
    v13 = *(_X9 + v12);
    v14 = vceq_s8(v13, v11);
    if (!v14)
    {
      goto LABEL_8;
    }

LABEL_5:
    v15 = a1[3];
    while (1)
    {
      v16 = (v12 + (__clz(__rbit64(v14)) >> 3)) & v2;
      if (*(v15 + 16 * v16) == v9)
      {
        break;
      }

      v14 &= ((v14 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v14)
      {
LABEL_8:
        while (!*&vceq_s8(v13, 0x8080808080808080))
        {
          v3 += 8;
          v12 = (v3 + v12) & v2;
          v13 = *(_X9 + v12);
          v14 = vceq_s8(v13, v11);
          if (v14)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", a2);
      }
    }

    v17 = (v15 + 16 * v16);
    if (!(_X9 + v16))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[1] < 2uLL)
    {
      goto LABEL_20;
    }

    v20 = *(a1 + 4);
    v19 = (a1 + 2);
    _ZF = v20 == *a2;
    v17 = &absl::lts_20240722::container_internal::kSooControl;
    v22 = v20 == *a2 ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v17 = v19;
    }

    if (!v22)
    {
      goto LABEL_20;
    }
  }

  return v17 + 8;
}

BOOL absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::contains<int>(void *a1, _DWORD *a2)
{
  v2 = *a1;
  if (*a1 > 1uLL)
  {
    v4 = 0;
    _X10 = a1[2];
    __asm { PRFM            #4, [X10] }

    v11 = *a2;
    v12 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v11) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v11));
    v13 = vdup_n_s8(v12 & 0x7F);
    v14 = ((v12 >> 7) ^ (_X10 >> 12)) & v2;
    v15 = *(_X10 + v14);
    v16 = vceq_s8(v15, v13);
    if (!v16)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      if (*(a1[3] + 4 * ((v14 + (__clz(__rbit64(v16)) >> 3)) & v2)) == v11)
      {
        return 1;
      }

      v16 &= ((v16 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v16);
LABEL_7:
    while (!*&vceq_s8(v15, 0x8080808080808080))
    {
      v4 += 8;
      v14 = (v4 + v14) & v2;
      v15 = *(_X10 + v14);
      v16 = vceq_s8(v15, v13);
      if (v16)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  if (a1[1] < 2uLL)
  {
    return 0;
  }

  return *(a1 + 4) == *a2;
}

uint64_t operations_research::sat::CpModelPresolver::PresolveBoolXor(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  if ((*(*(this + 1) + 416) & 1) != 0 || *(a2 + 4))
  {
    IsUnsat = 0;
    return IsUnsat & 1;
  }

  if (*(a2 + 15) == 5)
  {
    v5 = *(a2 + 6);
    v6 = *(v5 + 4);
    if (!v6)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = &operations_research::sat::_BoolArgumentProto_default_instance_;
    v6 = dword_2810BF048;
    if (!dword_2810BF048)
    {
      goto LABEL_33;
    }
  }

  v7 = 0;
  IsUnsat = 0;
  v8 = 0;
  v9 = v5[3];
  v10 = 4 * v6;
  v39 = 0x80000000;
  do
  {
    v11 = *v9;
    if (operations_research::sat::PresolveContext::VariableIsUniqueAndRemovable(*(this + 1), *v9))
    {
      operator new();
    }

    if (operations_research::sat::PresolveContext::LiteralIsFalse(*(this + 1), v11))
    {
      operator new();
    }

    if (operations_research::sat::PresolveContext::LiteralIsTrue(*(this + 1), v11))
    {
      ++v8;
      v39 = v11;
    }

    else
    {
      if (*(a2 + 15) == 5)
      {
        v14 = *(a2 + 6);
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(a2);
        *(a2 + 15) = 5;
        v15 = *(a2 + 1);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v15);
        *(a2 + 6) = v14;
      }

      *(v14[3] + 4 * v7++) = v11;
    }

    ++v9;
    v10 -= 4;
  }

  while (v10);
  switch(v7)
  {
    case 0:
      if (v8)
      {
        v23 = *(this + 1);
        v42 = 21;
        strcpy(__p, "BOOL_xor: always true");
        operations_research::sat::PresolveContext::UpdateRuleStats(v23, __p, 1, v12, v13);
        goto LABEL_73;
      }

LABEL_33:
      v19 = *(this + 1);
      v20 = "BOOL_xor: always false";
LABEL_34:
      v21 = 22;
LABEL_35:
      IsUnsat = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(v19, v20, v21);
      return IsUnsat & 1;
    case 1:
      v17 = *(this + 1);
      v18 = *(a2 + 15);
      if (v8)
      {
        if (v18 == 5)
        {
          v29 = *(a2 + 6);
        }

        else
        {
          v29 = &operations_research::sat::_BoolArgumentProto_default_instance_;
        }

        if ((operations_research::sat::PresolveContext::SetLiteralToFalse(v17, *v29[3]) & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v18 == 5)
        {
          v28 = *(a2 + 6);
        }

        else
        {
          v28 = &operations_research::sat::_BoolArgumentProto_default_instance_;
        }

        if ((operations_research::sat::PresolveContext::SetLiteralToTrue(v17, *v28[3]) & 1) == 0)
        {
LABEL_52:
          v19 = *(this + 1);
          v20 = "BOOL_xor: cannot fix last literal";
          v21 = 33;
          goto LABEL_35;
        }
      }

      operator new();
    case 2:
      if (*(a2 + 15) == 5)
      {
        v16 = *(a2 + 6);
      }

      else
      {
        v16 = &operations_research::sat::_BoolArgumentProto_default_instance_;
      }

      v24 = v16[3];
      v25 = *v24;
      v26 = *(v24 + 1);
      v27 = *(this + 1);
      if (v25 == v26)
      {
        if (v8)
        {
          goto LABEL_72;
        }

        goto LABEL_50;
      }

      if (v25 == ~v26)
      {
        if ((v8 & 0x80000001) != 1)
        {
LABEL_72:
          std::string::basic_string[abi:ne200100]<0>(__p, "BOOL_xor: always true");
          operations_research::sat::PresolveContext::UpdateRuleStats(v27, __p, 1, v37, v38);
          goto LABEL_73;
        }

LABEL_50:
        v20 = "BOOL_xor: always false";
        v19 = *(this + 1);
        goto LABEL_34;
      }

      if (v8)
      {
        v30 = v26;
      }

      else
      {
        v30 = ~v26;
      }

      operations_research::sat::PresolveContext::StoreBooleanEqualityRelation(*(this + 1), v25, v30);
      operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
      v31 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(__p, "BOOL_xor: two active literals");
      operations_research::sat::PresolveContext::UpdateRuleStats(v31, __p, 1, v32, v33);
LABEL_73:
      if (v42 < 0)
      {
        operator delete(*__p);
      }

      operations_research::sat::ConstraintProto::Clear(a2);
      IsUnsat = 1;
      return IsUnsat & 1;
  }

  if ((v8 & 0x80000001) == 1)
  {
    if (v39 == 0x80000000)
    {
      operations_research::sat::CpModelPresolver::PresolveBoolXor(__p);
    }

    if (*(a2 + 15) == 5)
    {
      v22 = *(a2 + 6);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(a2);
      *(a2 + 15) = 5;
      v34 = *(a2 + 1);
      if (v34)
      {
        v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v34);
      *(a2 + 6) = v22;
    }

    *(v22[3] + 4 * v7++) = v39;
  }

  if (v8 >= 2)
  {
    operator new();
  }

  if (*(a2 + 15) == 5)
  {
    v35 = *(a2 + 6);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(a2);
    *(a2 + 15) = 5;
    v36 = *(a2 + 1);
    if (v36)
    {
      v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
    }

    v35 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v36);
    *(a2 + 6) = v35;
  }

  if (*(v35 + 4) > v7)
  {
    *(v35 + 4) = v7;
  }

  return IsUnsat & 1;
}

void sub_23CA76670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveBoolOr(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v5 = *(this + 1);
  if (*(v5 + 416))
  {
    goto LABEL_2;
  }

  v9 = (a2 + 16);
  if (*(a2 + 4))
  {
    operator new();
  }

  v10 = *(v5 + 104);
  *(v5 + 40) = *(v5 + 32);
  if (v10 <= 1)
  {
    *(v5 + 112) = 0;
    if (*(a2 + 15) != 3)
    {
      goto LABEL_7;
    }

LABEL_35:
    v11 = *(a2 + 6);
    v12 = *(v11 + 4);
    if (v12)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

  absl::lts_20240722::container_internal::ClearBackingArray((v5 + 104), &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value, v10 < 0x80, 1u);
  if (*(a2 + 15) == 3)
  {
    goto LABEL_35;
  }

LABEL_7:
  v11 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  v12 = dword_2810BF048;
  if (dword_2810BF048)
  {
LABEL_8:
    IsUnsat = 0;
    v13 = v11[3];
    v14 = &v13[v12];
    while (1)
    {
      v72 = *v13;
      if (operations_research::sat::PresolveContext::LiteralIsFalse(*(this + 1), v72))
      {
        goto LABEL_10;
      }

      IsTrue = operations_research::sat::PresolveContext::LiteralIsTrue(*(this + 1), v72);
      v16 = *(this + 1);
      if (IsTrue)
      {
        goto LABEL_42;
      }

      IsUniqueAndRemovable = operations_research::sat::PresolveContext::VariableIsUniqueAndRemovable(v16, v72);
      v16 = *(this + 1);
      if (IsUniqueAndRemovable)
      {
        v74 = 18;
        strcpy(__p, "BOOL_or: singleton");
        operations_research::sat::PresolveContext::UpdateRuleStats(v16, __p, 1, a4, a5);
        if (v74 < 0)
        {
          operator delete(*__p);
        }

        if (operations_research::sat::PresolveContext::SetLiteralToTrue(*(this + 1), v72))
        {
          goto LABEL_44;
        }

LABEL_45:
        IsUnsat = 1;
        return IsUnsat & 1;
      }

      v18 = v16[13];
      v19 = ~v72;
      if (v18 > 1)
      {
        v21 = 0;
        _X11 = v16[15];
        __asm { PRFM            #4, [X11] }

        v28 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v19) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v19));
        v29 = vdup_n_s8(v28 & 0x7F);
        v30 = ((_X11 >> 12) ^ (v28 >> 7)) & v18;
        v31 = *(_X11 + v30);
        v32 = vceq_s8(v31, v29);
        if (!v32)
        {
          goto LABEL_25;
        }

LABEL_23:
        while (*(v16[16] + 4 * ((v30 + (__clz(__rbit64(v32)) >> 3)) & v18)) != v19)
        {
          v32 &= ((v32 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v32)
          {
LABEL_25:
            while (!*&vceq_s8(v31, 0x8080808080808080))
            {
              v21 += 8;
              v30 = (v21 + v30) & v18;
              v31 = *(_X11 + v30);
              v32 = vceq_s8(v31, v29);
              if (v32)
              {
                goto LABEL_23;
              }
            }

            v33 = 0;
            __asm { PRFM            #4, [X11] }

            v35 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v72) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v72));
            v36 = vdup_n_s8(v35 & 0x7F);
            v37 = ((_X11 >> 12) ^ (v35 >> 7)) & v18;
            v38 = *(_X11 + v37);
            v39 = vceq_s8(v38, v36);
            if (!v39)
            {
              goto LABEL_31;
            }

LABEL_29:
            while (*(v16[16] + 4 * ((v37 + (__clz(__rbit64(v39)) >> 3)) & v18)) != v72)
            {
              v39 &= ((v39 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v39)
              {
LABEL_31:
                while (!*&vceq_s8(v38, 0x8080808080808080))
                {
                  v33 += 8;
                  v37 = (v33 + v37) & v18;
                  v38 = *(_X11 + v37);
                  v39 = vceq_s8(v38, v36);
                  if (v39)
                  {
                    goto LABEL_29;
                  }
                }

                goto LABEL_18;
              }
            }

            goto LABEL_10;
          }
        }

LABEL_42:
        v74 = 20;
        strcpy(__p, "BOOL_or: always true");
        operations_research::sat::PresolveContext::UpdateRuleStats(v16, __p, 1, a4, a5);
        if (v74 < 0)
        {
          operator delete(*__p);
        }

LABEL_44:
        operations_research::sat::ConstraintProto::Clear(a2);
        goto LABEL_45;
      }

      if (v16[14] < 2)
      {
        goto LABEL_18;
      }

      v20 = *(v16 + 30);
      if (v20 == v19)
      {
        goto LABEL_42;
      }

      if (v20 == v72)
      {
LABEL_10:
        IsUnsat = 1;
        if (++v13 == v14)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_18:
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v16 + 13, &v72, __p);
        if (__p[16] == 1)
        {
          **&__p[8] = v72;
        }

        std::vector<int>::push_back[abi:ne200100](*(this + 1) + 32, &v72);
        if (++v13 == v14)
        {
          goto LABEL_37;
        }
      }
    }
  }

LABEL_36:
  IsUnsat = 0;
LABEL_37:
  v40 = *(this + 1);
  v41 = v40[13];
  if (v41 <= 1)
  {
    v40[14] = 0;
    v42 = v40[4];
    v43 = v40[5];
    if (v42 != v43)
    {
      goto LABEL_39;
    }

LABEL_47:
    v74 = 14;
    strcpy(__p, "BOOL_or: empty");
    operations_research::sat::PresolveContext::UpdateRuleStats(v40, __p, 1, a4, a5);
    if (v74 < 0)
    {
      operator delete(*__p);
    }

    IsUnsat = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(*(this + 1), &byte_23CE7F131, 0);
    return IsUnsat & 1;
  }

  absl::lts_20240722::container_internal::ClearBackingArray(v40 + 13, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value, v41 < 0x80, 1u);
  v40 = *(this + 1);
  v42 = v40[4];
  v43 = v40[5];
  if (v42 == v43)
  {
    goto LABEL_47;
  }

LABEL_39:
  v44 = (v43 - v42) >> 2;
  if (v44 == 2)
  {
    v74 = 21;
    strcpy(__p, "BOOL_or: implications");
    operations_research::sat::PresolveContext::UpdateRuleStats(v40, __p, 1, a4, a5);
    if (v74 < 0)
    {
      operator delete(*__p);
    }

    v45 = ~**(*(this + 1) + 32);
    v46 = HIDWORD(*v9);
    v47 = *v9;
    if (v47 == v46)
    {
      google::protobuf::RepeatedField<int>::Grow(v9, v46, (v46 + 1));
      v47 = *v9;
    }

    v48 = *(a2 + 3);
    *(a2 + 4) = v47 + 1;
    *(v48 + 4 * v47) = v45;
    if (*(a2 + 15) == 4)
    {
      v49 = *(a2 + 6);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(a2);
      *(a2 + 15) = 4;
      v64 = *(a2 + 1);
      if (v64)
      {
        v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
      }

      v49 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v64);
      *(a2 + 6) = v49;
    }

    v65 = *(*(*(this + 1) + 32) + 4);
    v66 = (v49 + 2);
    v67 = v49[2];
    v68 = v67;
    if (v67 == HIDWORD(v67))
    {
      v71 = v49;
      google::protobuf::RepeatedField<int>::Grow((v49 + 2), HIDWORD(v67), (HIDWORD(v67) + 1));
      v49 = v71;
      v68 = *v66;
    }

    v69 = v49[3];
    *(v49 + 4) = v68 + 1;
    *(v69 + 4 * v68) = v65;
    return IsUnsat & 1;
  }

  if (v44 == 1)
  {
    operator new();
  }

  if ((IsUnsat & 1) == 0)
  {
LABEL_2:
    IsUnsat = 0;
    return IsUnsat & 1;
  }

  v50 = v40;
  std::string::basic_string[abi:ne200100]<0>(__p, "BOOL_or: fixed literals");
  operations_research::sat::PresolveContext::UpdateRuleStats(v50, __p, 1, v51, v52);
  if (v74 < 0)
  {
    operator delete(*__p);
  }

  *(operations_research::sat::ConstraintProto::mutable_BOOL_or(a2) + 4) = 0;
  v53 = *(this + 1);
  v54 = *(v53 + 32);
  v55 = *(v53 + 40);
  if (v54 == v55)
  {
    goto LABEL_45;
  }

  do
  {
    v56 = *v54;
    if (*(a2 + 15) == 3)
    {
      v57 = *(a2 + 6);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(a2);
      *(a2 + 15) = 3;
      v58 = *(a2 + 1);
      if (v58)
      {
        v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
      }

      v57 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v58);
      *(a2 + 6) = v57;
    }

    v59 = (v57 + 2);
    v60 = v57[2];
    v61 = v60;
    if (v60 == HIDWORD(v60))
    {
      v63 = v57;
      google::protobuf::RepeatedField<int>::Grow((v57 + 2), HIDWORD(v60), (HIDWORD(v60) + 1));
      v57 = v63;
      v61 = *v59;
    }

    v62 = v57[3];
    *(v57 + 4) = v61 + 1;
    *(v62 + 4 * v61) = v56;
    ++v54;
    IsUnsat = 1;
  }

  while (v54 != v55);
  return IsUnsat & 1;
}

void sub_23CA76F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *operations_research::sat::ConstraintProto::mutable_BOOL_and(operations_research::sat::ConstraintProto *this)
{
  if (*(this + 15) == 4)
  {
    return *(this + 6);
  }

  operations_research::sat::ConstraintProto::clear_constraint(this);
  *(this + 15) = 4;
  v3 = *(this + 1);
  if (v3)
  {
    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(*(v3 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v3);
  }

  *(this + 6) = result;
  return result;
}

uint64_t operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  if (*(a2 + 4))
  {
    if (*(a2 + 15) == 3)
    {
      *(*(a2 + 6) + 16) = 0;
      v7 = *(a2 + 4);
      if (!v7)
      {
        goto LABEL_21;
      }

LABEL_10:
      v12 = *(a2 + 3);
      v13 = 4 * v7;
      do
      {
        v14 = *v12;
        if (*(a2 + 15) == 3)
        {
          v15 = *(a2 + 6);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(a2);
          *(a2 + 15) = 3;
          v16 = *(a2 + 1);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v16);
          *(a2 + 6) = v15;
        }

        v17 = (v15 + 2);
        v18 = v15[2];
        v19 = v18;
        if (v18 == HIDWORD(v18))
        {
          v21 = v15;
          google::protobuf::RepeatedField<int>::Grow((v15 + 2), HIDWORD(v18), (HIDWORD(v18) + 1));
          v15 = v21;
          v19 = *v17;
        }

        v20 = v15[3];
        *(v15 + 4) = v19 + 1;
        *(v20 + 4 * v19) = ~v14;
        ++v12;
        v13 -= 4;
      }

      while (v13);
      goto LABEL_21;
    }

    operations_research::sat::ConstraintProto::clear_constraint(a2);
    *(a2 + 15) = 3;
    v10 = *(a2 + 1);
    if (v10)
    {
      v22 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(*(v10 & 0xFFFFFFFFFFFFFFFELL));
      *(a2 + 6) = v22;
      *(v22 + 4) = 0;
      v7 = *(a2 + 4);
      if (v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v10);
      *(a2 + 6) = v11;
      *(v11 + 4) = 0;
      v7 = *(a2 + 4);
      if (v7)
      {
        goto LABEL_10;
      }
    }

LABEL_21:
    *(a2 + 4) = 0;
    operations_research::sat::CpModelPresolver::PresolveBoolOr(this, a2, a3, a4, a5);
    return 1;
  }

  v8 = *(this + 1);

  return operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(v8, &byte_23CE7F131, 0);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveBoolAnd(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v6 = *(this + 1);
  if (*(v6 + 416))
  {
    v7 = 0;
    return v7 & 1;
  }

  v9 = *(a2 + 4);
  if (!v9)
  {
    strcpy(v90, "BOOL_and: non-reified.");
    v90[23] = 22;
    operations_research::sat::PresolveContext::UpdateRuleStats(v6, v90, 1, a4, a5);
    if ((v90[23] & 0x80000000) != 0)
    {
      operator delete(*v90);
      if (*(a2 + 15) == 4)
      {
LABEL_51:
        v57 = *(a2 + 6);
        v58 = *(v57 + 4);
        if (!v58)
        {
          goto LABEL_73;
        }

        goto LABEL_70;
      }
    }

    else if (*(a2 + 15) == 4)
    {
      goto LABEL_51;
    }

    v57 = &operations_research::sat::_BoolArgumentProto_default_instance_;
    v58 = dword_2810BF048;
    if (!dword_2810BF048)
    {
LABEL_73:
      operations_research::sat::ConstraintProto::Clear(a2);
      goto LABEL_74;
    }

LABEL_70:
    v65 = v57[3];
    v66 = 4 * v58;
    while ((operations_research::sat::PresolveContext::SetLiteralToTrue(*(this + 1), *v65) & 1) != 0)
    {
      ++v65;
      v66 -= 4;
      if (!v66)
      {
        goto LABEL_73;
      }
    }

LABEL_74:
    v7 = 1;
    return v7 & 1;
  }

  v10 = *(v6 + 104);
  *(v6 + 40) = *(v6 + 32);
  if (v10 > 1)
  {
    absl::lts_20240722::container_internal::ClearBackingArray((v6 + 104), &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value, v10 < 0x80, 1u);
    v59 = *(a2 + 4);
    v11 = *(a2 + 3);
    v12 = v59;
    if (v59 != 7)
    {
LABEL_6:
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::raw_hash_set(v90, (v12 - 1) / 7 + v12);
      if (!v12)
      {
        goto LABEL_7;
      }

      goto LABEL_55;
    }
  }

  else
  {
    *(v6 + 112) = 0;
    v11 = *(a2 + 3);
    v12 = v9;
    if (v9 != 7)
    {
      goto LABEL_6;
    }
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::raw_hash_set(v90, 8uLL);
LABEL_55:
  v60 = 4 * v12;
  do
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v90, v11, __p);
    if (__p[16] == 1)
    {
      **&__p[8] = *v11;
    }

    ++v11;
    v60 -= 4;
  }

  while (v60);
LABEL_7:
  if (*(a2 + 15) != 4)
  {
    v13 = &operations_research::sat::_BoolArgumentProto_default_instance_;
    v14 = dword_2810BF048;
    if (dword_2810BF048)
    {
      goto LABEL_9;
    }

LABEL_60:
    if (*(*(this + 1) + 32) != *(*(this + 1) + 40))
    {
      goto LABEL_61;
    }

    goto LABEL_83;
  }

  v13 = *(a2 + 6);
  v14 = *(v13 + 4);
  if (!v14)
  {
    goto LABEL_60;
  }

LABEL_9:
  v7 = 0;
  v15 = v13[3];
  v16 = &v15[v14];
  do
  {
    v89 = *v15;
    IsFalse = operations_research::sat::PresolveContext::LiteralIsFalse(*(this + 1), v89);
    v20 = *(this + 1);
    if (IsFalse)
    {
      strcpy(__p, "BOOL_and: always false");
      v93 = 22;
      operations_research::sat::PresolveContext::UpdateRuleStats(v20, __p, 1, v17, v18);
      if (v93 < 0)
      {
        operator delete(*__p);
      }

      goto LABEL_78;
    }

    if (operations_research::sat::PresolveContext::LiteralIsTrue(v20, v89))
    {
      goto LABEL_24;
    }

    if (*v90 > 1uLL)
    {
      v24 = 0;
      _X9 = *&v90[16];
      __asm { PRFM            #4, [X9] }

      v23 = v89;
      v31 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v89) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v89));
      v32 = vdup_n_s8(v31 & 0x7F);
      v33 = ((*&v90[16] >> 12) ^ (v31 >> 7)) & *v90;
      v34 = *(*&v90[16] + v33);
      v35 = vceq_s8(v34, v32);
      if (!v35)
      {
        goto LABEL_18;
      }

LABEL_16:
      while (*(v91 + 4 * ((v33 + (__clz(__rbit64(v35)) >> 3)) & *v90)) != v89)
      {
        v35 &= ((v35 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v35)
        {
LABEL_18:
          while (!*&vceq_s8(v34, 0x8080808080808080))
          {
            v24 += 8;
            v33 = (v24 + v33) & *v90;
            v34 = *(*&v90[16] + v33);
            v35 = vceq_s8(v34, v32);
            if (v35)
            {
              goto LABEL_16;
            }
          }

          v37 = 0;
          v38 = ~v89;
          __asm { PRFM            #4, [X9] }

          v40 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v38) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v38));
          v41 = vdup_n_s8(v40 & 0x7F);
          v42 = ((*&v90[16] >> 12) ^ (v40 >> 7)) & *v90;
          v43 = *(*&v90[16] + v42);
          v44 = vceq_s8(v43, v41);
          if (!v44)
          {
            goto LABEL_30;
          }

LABEL_28:
          while (*(v91 + 4 * ((v42 + (__clz(__rbit64(v44)) >> 3)) & *v90)) != v38)
          {
            v44 &= ((v44 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v44)
            {
LABEL_30:
              while (!*&vceq_s8(v43, 0x8080808080808080))
              {
                v37 += 8;
                v42 = (v37 + v42) & *v90;
                v43 = *(*&v90[16] + v42);
                v44 = vceq_s8(v43, v41);
                if (v44)
                {
                  goto LABEL_28;
                }
              }

              goto LABEL_34;
            }
          }

          goto LABEL_65;
        }
      }

LABEL_22:
      v36 = *(this + 1);
      v93 = 16;
      strcpy(__p, "BOOL_and: x => x");
      operations_research::sat::PresolveContext::UpdateRuleStats(v36, __p, 1, v21, v22);
      if (v93 < 0)
      {
        operator delete(*__p);
      }

LABEL_24:
      v7 = 1;
      goto LABEL_25;
    }

    if (*&v90[8] > 1uLL)
    {
      v23 = v89;
      if (*&v90[16] == v89)
      {
        goto LABEL_22;
      }

      if ((v89 ^ *&v90[16]) == 0xFFFFFFFF)
      {
LABEL_65:
        v61 = *(this + 1);
        v93 = 20;
        strcpy(__p, "BOOL_and: x => not x");
        operations_research::sat::PresolveContext::UpdateRuleStats(v61, __p, 1, v21, v22);
        if (v93 < 0)
        {
          operator delete(*__p);
        }

LABEL_78:
        v7 = operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, a2, v62, v63, v64);
        goto LABEL_84;
      }
    }

    else
    {
      v23 = v89;
    }

LABEL_34:
    IsUniqueAndRemovable = operations_research::sat::PresolveContext::VariableIsUniqueAndRemovable(*(this + 1), v23);
    v46 = *(this + 1);
    if (IsUniqueAndRemovable)
    {
      v7 = 1;
      if ((operations_research::sat::PresolveContext::SetLiteralToTrue(*(this + 1), v89) & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v47 = v46[13];
      v48 = ~v89;
      if (v47 > 1)
      {
        v49 = 0;
        _X11 = v46[15];
        __asm { PRFM            #4, [X11] }

        v52 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v48) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v48));
        v53 = vdup_n_s8(v52 & 0x7F);
        v54 = ((v52 >> 7) ^ (_X11 >> 12)) & v47;
        v55 = *(_X11 + v54);
        v56 = vceq_s8(v55, v53);
        if (!v56)
        {
          goto LABEL_45;
        }

        do
        {
LABEL_43:
          if (*(v46[16] + 4 * ((v54 + (__clz(__rbit64(v56)) >> 3)) & v47)) == v48)
          {
            goto LABEL_75;
          }

          v56 &= ((v56 & 0x8080808080808080) - 1) & 0x8080808080808080;
        }

        while (v56);
LABEL_45:
        while (!*&vceq_s8(v55, 0x8080808080808080))
        {
          v49 += 8;
          v54 = (v49 + v54) & v47;
          v55 = *(_X11 + v54);
          v56 = vceq_s8(v55, v53);
          if (v56)
          {
            goto LABEL_43;
          }
        }
      }

      else if (v46[14] >= 2 && *(v46 + 30) == v48)
      {
LABEL_75:
        operator new();
      }

      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v46 + 13, &v89, __p);
      if (__p[16] != 1)
      {
        operator new();
      }

      **&__p[8] = v89;
      std::vector<int>::push_back[abi:ne200100](*(this + 1) + 32, &v89);
    }

LABEL_25:
    ++v15;
  }

  while (v15 != v16);
  v67 = *(this + 1);
  v68 = *(v67 + 32);
  v69 = *(v67 + 40);
  if (v68 == v69)
  {
LABEL_83:
    operations_research::sat::ConstraintProto::Clear(a2);
    v7 = 1;
    goto LABEL_84;
  }

  if (v7)
  {
    if (*(a2 + 15) == 4)
    {
      v70 = *(a2 + 6);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(a2);
      *(a2 + 15) = 4;
      v80 = *(a2 + 1);
      if (v80)
      {
        v80 = *(v80 & 0xFFFFFFFFFFFFFFFELL);
      }

      v70 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v80);
      *(a2 + 6) = v70;
      v81 = *(this + 1);
      v68 = *(v81 + 32);
      v69 = *(v81 + 40);
    }

    for (*(v70 + 4) = 0; v68 != v69; ++v68)
    {
      v82 = *v68;
      if (*(a2 + 15) == 4)
      {
        v83 = *(a2 + 6);
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(a2);
        *(a2 + 15) = 4;
        v84 = *(a2 + 1);
        if (v84)
        {
          v84 = *(v84 & 0xFFFFFFFFFFFFFFFELL);
        }

        v83 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v84);
        *(a2 + 6) = v83;
      }

      v86 = *(v83 + 4);
      v85 = *(v83 + 5);
      if (v86 == v85)
      {
        google::protobuf::RepeatedField<int>::Grow((v83 + 2), v85, (v85 + 1));
        v86 = *(v83 + 4);
      }

      v87 = v83[3];
      *(v83 + 4) = v86 + 1;
      *(v87 + 4 * v86) = v82;
    }

    operator new();
  }

LABEL_61:
  v7 = 0;
  if (*(a2 + 4) == 1)
  {
    if (*(a2 + 15) == 4)
    {
      if (*(*(a2 + 6) + 16) == 1)
      {
        goto LABEL_88;
      }
    }

    else if (dword_2810BF048 == 1)
    {
LABEL_88:
      v72 = *(a2 + 3);
      v73 = *v72;
      if (operations_research::sat::PresolveContext::VariableWithCostIsUniqueAndRemovable(*(this + 1), *v72))
      {
        if (~v73 <= v73)
        {
          v74 = v73;
        }

        else
        {
          v74 = ~v73;
        }

        LODWORD(v88) = v74;
        v75 = *absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::at<int,absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>>((*(this + 1) + 512), &v88);
        if (v73 < 0)
        {
          v75 = -v75;
        }

        if (v75 < 0)
        {
          v76 = *(this + 1);
          std::string::basic_string[abi:ne200100]<0>(__p, "BOOL_and: dual equality.");
          operations_research::sat::PresolveContext::UpdateRuleStats(v76, __p, 1, v77, v78);
          if (v93 < 0)
          {
            operator delete(*__p);
          }

          if (*(a2 + 15) == 4)
          {
            v79 = *(a2 + 6);
          }

          else
          {
            v79 = &operations_research::sat::_BoolArgumentProto_default_instance_;
          }

          operations_research::sat::PresolveContext::StoreBooleanEqualityRelation(*(this + 1), v73, *v79[3]);
        }
      }
    }
  }

LABEL_84:
  if (*v90 >= 2uLL)
  {
    operator delete((*&v90[16] - (v90[8] & 1) - 8));
  }

  return v7 & 1;
}

void sub_23CA77AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a18 >= 2)
  {
    operator delete((a20 - (a19 & 1) - 8));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveAtMostOrExactlyOne(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  v156 = *MEMORY[0x277D85DE8];
  v4 = "exactly_one: ";
  v5 = *(a2 + 15);
  v152 = 13;
  BYTE13(v151) = 0;
  if (v5 == 26)
  {
    v4 = "at_most_one: ";
  }

  *&v151 = *v4;
  *(&v151 + 5) = *(v4 + 5);
  if (v5 == 26 || v5 == 29)
  {
    v6 = *(a2 + 6);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(a2);
    *(a2 + 15) = 29;
    v7 = *(a2 + 1);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v7);
    *(a2 + 6) = v6;
  }

  v9 = (v6 + 2);
  v8 = *(v6 + 4);
  v10 = 126 - 2 * __clz(v8);
  if (v8)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,google::protobuf::internal::RepeatedIterator<int>,false>(v6[3], (v6[3] + 4 * v8), v155, v11, 1);
  v13 = *(this + 1);
  v14 = v13[13];
  if (v14 > 1)
  {
    absl::lts_20240722::container_internal::ClearBackingArray(v13 + 13, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value, v14 < 0x80, 1u);
    v13 = *(this + 1);
    v145 = v5;
    v146 = a2;
    v15 = *(v6 + 4);
    if (!v15)
    {
      goto LABEL_57;
    }

LABEL_16:
    v16 = v6[3];
    v17 = &v16[v15];
    while (1)
    {
      v150 = *v16;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v13 + 13, &v150, v148);
      if (v149 == 1)
      {
        v23 = v150;
        *v148[1] = v150;
        v13 = *(this + 1);
        v24 = ~v23;
        v25 = v13[13];
        if (v25 > 1)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if ((operations_research::sat::PresolveContext::SetLiteralToFalse(*(this + 1), v150) & 1) == 0)
        {
          goto LABEL_125;
        }

        v26 = *(this + 1);
        v27 = v152;
        v28 = &v151;
        if (v152 < 0)
        {
          v27 = *(&v151 + 1);
          v28 = v151;
        }

        *&v155[0] = v28;
        *(&v155[0] + 1) = v27;
        v153 = "duplicate literals";
        v154 = 18;
        absl::lts_20240722::StrCat(v155, &v153, &__p);
        operations_research::sat::PresolveContext::UpdateRuleStats(v26, &__p, 1, v29, v30);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          v13 = *(this + 1);
          v24 = ~v150;
          v25 = v13[13];
          if (v25 > 1)
          {
LABEL_33:
            v21 = 0;
            _X12 = v13[15];
            __asm { PRFM            #4, [X12] }

            v37 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v24) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v24));
            v22 = (v37 >> 7) ^ (_X12 >> 12);
            v38 = vdup_n_s8(v37 & 0x7F);
            while (1)
            {
              v18 = v22 & v25;
              v19 = *(_X12 + v18);
              v20 = vceq_s8(v19, v38);
              if (v20)
              {
                break;
              }

LABEL_20:
              if (vceq_s8(v19, 0x8080808080808080))
              {
                goto LABEL_26;
              }

              v21 += 8;
              v22 = v21 + v18;
            }

            while (*(v13[16] + 4 * ((v18 + (__clz(__rbit64(v20)) >> 3)) & v25)) != v24)
            {
              v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v20)
              {
                goto LABEL_20;
              }
            }

LABEL_36:
            v39 = *(v6 + 4);
            if (!v39)
            {
              goto LABEL_124;
            }

            v40 = 0;
            v41 = 0;
            v42 = v6[3];
            v43 = 4 * v39;
            do
            {
              v44 = *v42;
              if (~*v42 <= *v42)
              {
                v45 = *v42;
              }

              else
              {
                v45 = ~v44;
              }

              if (~v150 <= v150)
              {
                v46 = v150;
              }

              else
              {
                v46 = ~v150;
              }

              if (v45 == v46)
              {
                if (v44 == v150)
                {
                  ++v40;
                }

                else
                {
                  ++v41;
                }
              }

              else
              {
                if ((operations_research::sat::PresolveContext::SetLiteralToFalse(*(this + 1), v44) & 1) == 0)
                {
                  goto LABEL_125;
                }

                v47 = *(this + 1);
                v48 = v152;
                if (v152 >= 0)
                {
                  v49 = &v151;
                }

                else
                {
                  v49 = v151;
                }

                if (v152 < 0)
                {
                  v48 = *(&v151 + 1);
                }

                *&v155[0] = v49;
                *(&v155[0] + 1) = v48;
                v153 = "x and not(x)";
                v154 = 12;
                absl::lts_20240722::StrCat(v155, &v153, &__p);
                operations_research::sat::PresolveContext::UpdateRuleStats(v47, &__p, 1, v50, v51);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              ++v42;
              v43 -= 4;
            }

            while (v43);
            if (v40 < 2 || (operations_research::sat::PresolveContext::SetLiteralToFalse(*(this + 1), v150)) && (v41 < 2 || operations_research::sat::PresolveContext::SetLiteralToTrue(*(this + 1), v150)))
            {
LABEL_124:
              operations_research::sat::ConstraintProto::Clear(v146);
              v96 = 1;
              goto LABEL_200;
            }

LABEL_125:
            v96 = 0;
            goto LABEL_200;
          }
        }

        else
        {
          v13 = *(this + 1);
          v24 = ~v150;
          v25 = v13[13];
          if (v25 > 1)
          {
            goto LABEL_33;
          }
        }
      }

      if (v13[14] >= 2uLL && *(v13 + 30) == v24)
      {
        goto LABEL_36;
      }

LABEL_26:
      if (++v16 == v17)
      {
        goto LABEL_57;
      }
    }
  }

  v13[14] = 0;
  v145 = v5;
  v146 = a2;
  v15 = *(v6 + 4);
  if (v15)
  {
    goto LABEL_16;
  }

LABEL_57:
  v148[1] = 0;
  v149 = 0;
  v148[0] = 0;
  v13[5] = v13[4];
  v52 = *(v6 + 4);
  if (!v52)
  {
    LOBYTE(v53) = 0;
LABEL_127:
    v97 = v148[0];
    if (v148[0] != v148[1])
    {
      v98 = (v148[1] - v148[0]) >> 4;
      if (v98 < 2)
      {
        v99 = v146;
      }

      else
      {
        std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAtMostOrExactlyOne(operations_research::sat::ConstraintProto *)::$_0 &,std::pair<int,long long> *,false>(v148[0], v148[1], 126 - 2 * __clz(v98), 1);
        v97 = v148[0];
        v99 = v146;
        if ((v148[1] - v148[0]) > 0x10)
        {
          operator new();
        }

        v108 = (v148[1] - v148[0]) >> 4;
        if (v148[1] == v148[0])
        {
          std::vector<std::pair<int,long long>>::__append(v148, 1 - v108);
          v97 = v148[0];
        }

        else if (v108 >= 2)
        {
          v148[1] = v148[0] + 16;
        }
      }

      v109 = *v97;
      v110 = *(v97 + 1);
      v111 = *(this + 1);
      if (v145 == 26 && (v110 & 0x8000000000000000) == 0)
      {
        strcpy(v155, "at_most_one: singleton");
        BYTE7(v155[1]) = 22;
        operations_research::sat::PresolveContext::UpdateRuleStats(v111, v155, 1, v110, v12);
        if (SBYTE7(v155[1]) < 0)
        {
          operator delete(*&v155[0]);
        }

        if ((operations_research::sat::PresolveContext::SetLiteralToFalse(*(this + 1), v109) & 1) == 0)
        {
          goto LABEL_167;
        }

        goto LABEL_188;
      }

      if (operations_research::sat::PresolveContext::ShiftCostInExactlyOne(v111, v6[3], *(v6 + 4), v110))
      {
        v114 = *(this + 1);
        strcpy(v155, "exactly_one: singleton");
        BYTE7(v155[1]) = 22;
        operations_research::sat::PresolveContext::UpdateRuleStats(v114, v155, 1, v112, v113);
        if (SBYTE7(v155[1]) < 0)
        {
          operator delete(*&v155[0]);
        }

        if (~v109 <= v109)
        {
          v115 = v109;
        }

        else
        {
          v115 = ~v109;
        }

        operations_research::sat::PresolveContext::MarkVariableAsRemoved(*(this + 1), v115);
        v116 = operations_research::sat::PresolveContext::NewMappingConstraint(*(this + 1), "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 99, 0x26E);
        v117 = v116;
        if (*(v116 + 60) == 29)
        {
          v118 = *(v116 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v116);
          *(v117 + 60) = 29;
          v120 = *(v117 + 8);
          if (v120)
          {
            v120 = *(v120 & 0xFFFFFFFFFFFFFFFELL);
          }

          v118 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v120);
          *(v117 + 48) = v118;
        }

        v121 = *(this + 1);
        v122 = *(v121 + 32);
        v123 = *(v121 + 40);
        if (v122 == v123)
        {
          v128 = *(v118 + 4);
          v125 = *(v118 + 5);
        }

        else
        {
          v124 = *(v118 + 4);
          v125 = *(v118 + 5);
          do
          {
            v126 = *v122;
            if (v124 == v125)
            {
              google::protobuf::RepeatedField<int>::Grow((v118 + 2), v124, (v124 + 1));
              LODWORD(v124) = *(v118 + 4);
              v125 = *(v118 + 5);
            }

            v127 = v118[3];
            v128 = (v124 + 1);
            *(v118 + 4) = v128;
            *(v127 + 4 * v124) = v126;
            ++v122;
            v124 = v128;
          }

          while (v122 != v123);
        }

        if (v128 == v125)
        {
          google::protobuf::RepeatedField<int>::Grow((v118 + 2), v128, (v128 + 1));
          LODWORD(v128) = *(v118 + 4);
        }

        v129 = v118[3];
        *(v118 + 4) = v128 + 1;
        *(v129 + 4 * v128) = v109;
        if (v145 != 26)
        {
          operations_research::sat::ConstraintProto::Clear(v99);
          if (*(v99 + 60) == 26)
          {
            v130 = *(v99 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v99);
            *(v99 + 60) = 26;
            v131 = *(v99 + 8);
            if (v131)
            {
              v131 = *(v131 & 0xFFFFFFFFFFFFFFFELL);
            }

            v130 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v131);
            *(v99 + 48) = v130;
          }

          v9 = (v130 + 2);
        }

        goto LABEL_188;
      }

      LOBYTE(v53) = 1;
    }

    if (v145 != 26 && operations_research::sat::PresolveContext::ExploitExactlyOneInObjective(*(this + 1), *(*(this + 1) + 32), (*(*(this + 1) + 40) - *(*(this + 1) + 32)) >> 2))
    {
      operator new();
    }

    if ((v53 & 1) == 0)
    {
      goto LABEL_167;
    }

LABEL_188:
    *v9 = 0;
    v132 = *(this + 1);
    v133 = *(v132 + 32);
    v134 = *(v132 + 40);
    if (v133 != v134)
    {
      v135 = 0;
      v136 = *(v9 + 4);
      do
      {
        v137 = *v133;
        if (v135 == v136)
        {
          google::protobuf::RepeatedField<int>::Grow(v9, v135, (v135 + 1));
          LODWORD(v135) = *v9;
          v136 = *(v9 + 4);
        }

        v138 = *(v9 + 8);
        *v9 = v135 + 1;
        *(v138 + 4 * v135) = v137;
        ++v133;
        v135 = (v135 + 1);
      }

      while (v133 != v134);
      v132 = *(this + 1);
    }

    v139 = v152;
    v140 = &v151;
    if (v152 < 0)
    {
      v139 = *(&v151 + 1);
      v140 = v151;
    }

    *&v155[0] = v140;
    *(&v155[0] + 1) = v139;
    v153 = "removed literals";
    v154 = 16;
    absl::lts_20240722::StrCat(v155, &v153, &__p);
    operations_research::sat::PresolveContext::UpdateRuleStats(v132, &__p, 1, v141, v142);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_198:
    v96 = 1;
    v119 = v148[0];
    if (!v148[0])
    {
      goto LABEL_200;
    }

    goto LABEL_199;
  }

  v53 = 0;
  v54 = v6[3];
  v55 = &v54[v52];
  while (1)
  {
    v150 = *v54;
    if (operations_research::sat::PresolveContext::LiteralIsTrue(*(this + 1), v150))
    {
      break;
    }

    if (operations_research::sat::PresolveContext::LiteralIsFalse(*(this + 1), v150))
    {
      v53 = 1;
    }

    else
    {
      if (operations_research::sat::PresolveContext::VariableIsUniqueAndRemovable(*(this + 1), v150))
      {
        v56 = v148[1];
        if (v148[1] < v149)
        {
          *v148[1] = v150;
          v56[1] = 0;
          goto LABEL_93;
        }

        v63 = v148[0];
        v64 = v148[1] - v148[0];
        v65 = (v148[1] - v148[0]) >> 4;
        v66 = v65 + 1;
        if ((v65 + 1) >> 60)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v67 = v149 - v148[0];
        if ((v149 - v148[0]) >> 3 > v66)
        {
          v66 = v67 >> 3;
        }

        if (v67 >= 0x7FFFFFFFFFFFFFF0)
        {
          v68 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v68 = v66;
        }

        if (v68)
        {
          if (!(v68 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v79 = (v148[1] - v148[0]) >> 4;
        v80 = 16 * v65;
        *v80 = v150;
        *(v80 + 8) = 0;
        goto LABEL_95;
      }

      IsUniqueAndRemovable = operations_research::sat::PresolveContext::VariableWithCostIsUniqueAndRemovable(*(this + 1), v150);
      v58 = *(this + 1);
      if (IsUniqueAndRemovable)
      {
        if (~v150 <= v150)
        {
          v59 = v150;
        }

        else
        {
          v59 = ~v150;
        }

        v60 = v58[64];
        if (v60 <= 1)
        {
          v61 = v58[67];
          if (v150 < 0)
          {
            goto LABEL_72;
          }

LABEL_91:
          v56 = v148[1];
          if (v148[1] >= v149)
          {
            v144 = v6;
            v82 = v148[0];
            v83 = v148[1] - v148[0];
            v84 = (v148[1] - v148[0]) >> 4;
            v85 = v84 + 1;
            if ((v84 + 1) >> 60)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v86 = v53;
            v87 = v149 - v148[0];
            if ((v149 - v148[0]) >> 3 > v85)
            {
              v85 = v87 >> 3;
            }

            if (v87 >= 0x7FFFFFFFFFFFFFF0)
            {
              v88 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v88 = v85;
            }

            if (v88)
            {
              if (!(v88 >> 60))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v93 = (v148[1] - v148[0]) >> 4;
            v94 = 16 * v84;
            *v94 = v150;
            *(v94 + 8) = v61;
            v95 = (16 * v84 - 16 * v93);
            memcpy(v95, v82, v83);
            v148[0] = v95;
            v148[1] = (16 * v84 + 16);
            v149 = 0;
            if (v82)
            {
              operator delete(v82);
            }

            v53 = v86;
            v6 = v144;
            v148[1] = (16 * v84 + 16);
            goto LABEL_60;
          }

          *v148[1] = v150;
          v56[1] = v61;
LABEL_93:
          v78 = v56 + 2;
LABEL_97:
          v148[1] = v78;
          goto LABEL_60;
        }

        v69 = 0;
        _X12 = v58[66];
        __asm { PRFM            #4, [X12] }

        v72 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v59) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v59));
        v73 = vdup_n_s8(v72 & 0x7F);
        v74 = ((v72 >> 7) ^ (_X12 >> 12)) & v60;
        for (i = vceq_s8(*(_X12 + v74), v73); !i; i = vceq_s8(*(_X12 + v74), v73))
        {
LABEL_88:
          v69 += 8;
          v74 = (v69 + v74) & v60;
        }

        v76 = v58[67];
        while (1)
        {
          v77 = (v74 + (__clz(__rbit64(i)) >> 3)) & v60;
          if (*(v76 + 16 * v77) == v59)
          {
            break;
          }

          i &= ((i & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!i)
          {
            goto LABEL_88;
          }
        }

        v61 = *(v76 + 16 * v77 + 8);
        if ((v150 & 0x80000000) == 0)
        {
          goto LABEL_91;
        }

LABEL_72:
        v62 = -v61;
        v56 = v148[1];
        if (v148[1] < v149)
        {
          *v148[1] = v150;
          v56[1] = v62;
          goto LABEL_93;
        }

        v63 = v148[0];
        v64 = v148[1] - v148[0];
        v89 = (v148[1] - v148[0]) >> 4;
        v90 = v89 + 1;
        if ((v89 + 1) >> 60)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v91 = v149 - v148[0];
        if ((v149 - v148[0]) >> 3 > v90)
        {
          v90 = v91 >> 3;
        }

        if (v91 >= 0x7FFFFFFFFFFFFFF0)
        {
          v92 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v92 = v90;
        }

        if (v92)
        {
          if (!(v92 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v79 = (v148[1] - v148[0]) >> 4;
        v80 = 16 * v89;
        *v80 = v150;
        *(v80 + 8) = v62;
LABEL_95:
        v78 = (v80 + 16);
        v81 = (v80 - 16 * v79);
        memcpy(v81, v63, v64);
        v148[0] = v81;
        v148[1] = v78;
        v149 = 0;
        if (v63)
        {
          operator delete(v63);
        }

        goto LABEL_97;
      }

      std::vector<int>::push_back[abi:ne200100]((v58 + 4), &v150);
    }

LABEL_60:
    if (++v54 == v55)
    {
      goto LABEL_127;
    }
  }

  v100 = *(this + 1);
  v101 = v152;
  v102 = &v151;
  if (v152 < 0)
  {
    v101 = *(&v151 + 1);
    v102 = v151;
  }

  *&v155[0] = v102;
  *(&v155[0] + 1) = v101;
  v153 = "satisfied";
  v154 = 9;
  absl::lts_20240722::StrCat(v155, &v153, &__p);
  operations_research::sat::PresolveContext::UpdateRuleStats(v100, &__p, 1, v103, v104);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v105 = *(v6 + 4);
    if (!v105)
    {
      goto LABEL_143;
    }
  }

  else
  {
    v105 = *(v6 + 4);
    if (!v105)
    {
LABEL_143:
      operations_research::sat::ConstraintProto::Clear(v146);
      goto LABEL_198;
    }
  }

  v106 = v6[3];
  v107 = 4 * v105;
  while (*v106 == v150 || (operations_research::sat::PresolveContext::SetLiteralToFalse(*(this + 1), *v106) & 1) != 0)
  {
    ++v106;
    v107 -= 4;
    if (!v107)
    {
      goto LABEL_143;
    }
  }

LABEL_167:
  v96 = 0;
  v119 = v148[0];
  if (v148[0])
  {
LABEL_199:
    v148[1] = v119;
    operator delete(v119);
  }

LABEL_200:
  if (v152 < 0)
  {
    operator delete(v151);
  }

  return v96;
}

void sub_23CA789D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void *operations_research::sat::ConstraintProto::mutable_at_most_one(operations_research::sat::ConstraintProto *this)
{
  if (*(this + 15) == 26)
  {
    return *(this + 6);
  }

  operations_research::sat::ConstraintProto::clear_constraint(this);
  *(this + 15) = 26;
  v3 = *(this + 1);
  if (v3)
  {
    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(*(v3 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v3);
  }

  *(this + 6) = result;
  return result;
}

void *operations_research::sat::ConstraintProto::mutable_exactly_one(operations_research::sat::ConstraintProto *this)
{
  if (*(this + 15) == 29)
  {
    return *(this + 6);
  }

  operations_research::sat::ConstraintProto::clear_constraint(this);
  *(this + 15) = 29;
  v3 = *(this + 1);
  if (v3)
  {
    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(*(v3 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v3);
  }

  *(this + 6) = result;
  return result;
}

uint64_t operations_research::sat::CpModelPresolver::PresolveAtMostOne(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  if (*(*(this + 1) + 416))
  {
    return 0;
  }

  if (*(a2 + 4))
  {
    operations_research::sat::CpModelPresolver::PresolveAtMostOne(__p);
  }

  result = operations_research::sat::CpModelPresolver::PresolveAtMostOrExactlyOne(this, a2);
  if (*(a2 + 15) == 26)
  {
    v7 = *(*(a2 + 6) + 16);
    if (v7 == 1)
    {
      v8 = *(this + 1);
      v10 = 21;
      strcpy(__p, "at_most_one: size one");
      operations_research::sat::PresolveContext::UpdateRuleStats(v8, __p, 1, v5, v6);
      if (v10 < 0)
      {
        operator delete(*__p);
      }

      operations_research::sat::ConstraintProto::Clear(a2);
      return 1;
    }

    else if (!v7)
    {
      operator new();
    }
  }

  return result;
}

void sub_23CA78CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveExactlyOne(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  if (*(*(this + 1) + 416))
  {
    return 0;
  }

  if (*(a2 + 4))
  {
    operations_research::sat::CpModelPresolver::PresolveExactlyOne(__p);
  }

  result = operations_research::sat::CpModelPresolver::PresolveAtMostOrExactlyOne(this, a2);
  if (*(a2 + 15) == 29)
  {
    v7 = *(a2 + 6);
    v8 = *(v7 + 16);
    switch(v8)
    {
      case 2:
        v11 = *(this + 1);
        v13 = 21;
        strcpy(__p, "exactly_one: size two");
        operations_research::sat::PresolveContext::UpdateRuleStats(v11, __p, 1, v5, v6);
        if (v13 < 0)
        {
          operator delete(*__p);
        }

        operations_research::sat::PresolveContext::StoreBooleanEqualityRelation(*(this + 1), **(v7 + 24), ~*(*(v7 + 24) + 4));
        break;
      case 1:
        v10 = *(this + 1);
        v13 = 21;
        strcpy(__p, "exactly_one: size one");
        operations_research::sat::PresolveContext::UpdateRuleStats(v10, __p, 1, v5, v6);
        if (v13 < 0)
        {
          operator delete(*__p);
        }

        if ((operations_research::sat::PresolveContext::SetLiteralToTrue(*(this + 1), **(v7 + 24)) & 1) == 0)
        {
          return 0;
        }

        break;
      case 0:
        v9 = *(this + 1);

        return operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(v9, "exactly_one: empty or all false", 31);
      default:
        return result;
    }

    operations_research::sat::ConstraintProto::Clear(a2);
    return 1;
  }

  return result;
}

void sub_23CA78EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::CanonicalizeLinearArgument(operations_research::sat::CpModelPresolver *this, int **a2, operations_research::sat::LinearArgumentProto *a3)
{
  v4 = *(this + 1);
  if (*(v4 + 416))
  {
    return 0;
  }

  *(a3 + 4) |= 1u;
  v8 = *(a3 + 6);
  if (!v8)
  {
    v9 = *(a3 + 1);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v9);
    v8 = v10;
    *(a3 + 6) = v10;
    v4 = *(this + 1);
  }

  v11 = operations_research::sat::PresolveContext::CanonicalizeLinearExpression(v4, a2[3], *(a2 + 4), v8);
  v13 = *(a3 + 3);
  v12 = (a3 + 24);
  v14 = (v13 + 7);
  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  v16 = *(v12 + 2);
  if (v16)
  {
    v17 = 8 * v16;
    do
    {
      v18 = *v15++;
      v11 |= operations_research::sat::PresolveContext::CanonicalizeLinearExpression(*(this + 1), a2[3], *(a2 + 4), v18);
      v17 -= 8;
    }

    while (v17);
  }

  return v11 & 1;
}

void operations_research::sat::LinearArgumentProto::mutable_target(operations_research::sat::LinearArgumentProto *this)
{
  *(this + 4) |= 1u;
  if (!*(this + 6))
  {
    v2 = *(this + 1);
    if (v2)
    {
      google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(*(v2 & 0xFFFFFFFFFFFFFFFELL));
    }

    else
    {
      google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v2);
    }

    *(this + 6) = v3;
  }
}

uint64_t operations_research::sat::CpModelPresolver::DivideLinMaxByGcd(operations_research::sat::CpModelPresolver *this, int a2, operations_research::sat::ConstraintProto *a3)
{
  if (*(a3 + 15) == 27)
  {
    v5 = *(a3 + 6);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(a3);
    *(a3 + 15) = 27;
    v6 = *(a3 + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearArgumentProto>(v6);
    v5 = v7;
    *(a3 + 6) = v7;
  }

  v8 = *(v5 + 24);
  if (v8)
  {
    v9 = (v8 + 7);
  }

  else
  {
    v9 = (v5 + 24);
  }

  v10 = *(v5 + 32);
  if (!v10)
  {
    return 1;
  }

  v11 = 0;
  v12 = 8 * v10;
  while (1)
  {
    result = operations_research::sat::LinearExpressionGcd(*v9, v11);
    if (result == 1)
    {
      break;
    }

    v11 = result;
    ++v9;
    v12 -= 8;
    if (!v12)
    {
      if (result < 2)
      {
        return 1;
      }

      if (*(v5 + 48))
      {
        v14 = *(v5 + 48);
      }

      else
      {
        v14 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      if (operations_research::sat::LinearExpressionGcd(v14, result) == result)
      {
        operator new();
      }

      v15 = *(v14 + 4);
      if (v15 == 1)
      {
        operator new();
      }

      if (v15)
      {
        operator new();
      }

      v16 = *(this + 1);

      return operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(v16, "infeasible lin_max", 18);
    }
  }

  return result;
}

void sub_23CA793D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::ConstraintProto::mutable_lin_max(operations_research::sat::ConstraintProto *this)
{
  if (*(this + 15) != 27)
  {
    operations_research::sat::ConstraintProto::clear_constraint(this);
    *(this + 15) = 27;
    v2 = *(this + 1);
    if (v2)
    {
      google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearArgumentProto>(*(v2 & 0xFFFFFFFFFFFFFFFELL));
    }

    else
    {
      google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearArgumentProto>(v2);
    }

    *(this + 6) = v3;
  }
}

void operations_research::sat::CpModelPresolver::PropagateAndReduceAffineMax(operations_research::sat::PresolveContext **this, operations_research::sat::ConstraintProto *a2)
{
  if (*(a2 + 15) == 27)
  {
    v4 = *(a2 + 6);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    if (*(v4 + 8))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = &operations_research::sat::_LinearArgumentProto_default_instance_;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    if (dword_2810BEFF8)
    {
LABEL_3:
      google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(&v42, (v4 + 3), google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>);
      v5 = (v42 + 7);
      if ((v42 & 1) == 0)
      {
        v5 = &v42;
      }

      if (v43)
      {
        v6 = 8 * v43;
        while (!*(*v5 + 16))
        {
          ++v5;
          v6 -= 8;
          if (!v6)
          {
            goto LABEL_9;
          }
        }

        v7 = **(*v5 + 24);
        if (v42)
        {
          goto LABEL_14;
        }
      }

      else
      {
LABEL_9:
        v7 = -1;
        if (v42)
        {
LABEL_14:
          google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(&v42);
        }
      }

LABEL_15:
      if (*(a2 + 15) == 27)
      {
        v8 = *(a2 + 6);
      }

      else
      {
        v8 = &operations_research::sat::_LinearArgumentProto_default_instance_;
      }

      v9 = *(v8 + 8);
      v10 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      if (v8[6])
      {
        v10 = v8[6];
      }

      v33 = v10;
      if (v9)
      {
        if ((v9 & 0x80000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v29 = *(v10 + 4) == 1 && *v10[3] == v7;
      operations_research::sat::PresolveContext::DomainOf(&v35, this[1], v7);
      v11 = operations_research::Domain::Size(&v35);
      if (v11 >= 1001)
      {
        absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v11, 1000, "context_->DomainOf(unique_var).Size() <= 1000");
      }

      if (v35)
      {
        operator delete(__p[0]);
      }

      operations_research::sat::PresolveContext::DomainOf(v40, this[1], v7);
      v35 = 0;
      if (*v40 >= 2uLL)
      {
        if (v40[0])
        {
          absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(&v35, v40);
          if (!v40[0])
          {
LABEL_34:
            if (v35 > 1)
            {
              v12 = (v35 & 1);
              v26 = __p;
              v22 = __p[0];
              if (v35)
              {
                v26 = __p[0];
              }

              v13 = *v26;
              if ((v35 & 1) == 0)
              {
                v22 = __p;
              }

              if ((v35 & 0x1FFFFFFFFFFFFFFELL) != 0)
              {
                v30 = 0;
                v31 = 0;
                v32 = &v22[2 * (v35 >> 1)];
                do
                {
                  v34 = v22;
                  v14 = this;
                  if (operations_research::sat::PresolveContext::DomainContains(this[1], v33, 0x8000000000000000))
                  {
                    if (!v29)
                    {
                      goto LABEL_85;
                    }

                    v15 = *(v33 + 8);
                    v16 = *(v33 + 4);
                    if (v16 >= 1)
                    {
                      v17 = *(v33 + 3);
                      v18 = *(v33 + 6);
                      do
                      {
                        v20 = *v17++;
                        v19 = v20;
                        if (v20 != v7)
                        {
                          absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v19, v7, "expr.vars(i) == var");
                        }

                        v21 = *v18++;
                        v15 += v21 * v13;
                        --v16;
                      }

                      while (v16);
                    }

                    if (v15 == 0x8000000000000000)
                    {
LABEL_85:
                      if (((v30 >> 3) + 1) >> 61)
                      {
                        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                      }

                      if (v30 >> 3 != -1)
                      {
                        if (!(((v30 >> 3) + 1) >> 61))
                        {
                          operator new();
                        }

                        std::__throw_bad_array_new_length[abi:ne200100]();
                      }

                      v23 = (8 * (v30 >> 3));
                      *v23 = v13;
                      memcpy(0, 0, v30);
                      v30 = (v23 + 1);
                      v24 = v31;
                      v25 = v31 >> 3;
                      if (((v31 >> 3) + 1) >> 61)
                      {
                        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                      }

                      if (v31 >> 3 != -1)
                      {
                        if (!(((v31 >> 3) + 1) >> 61))
                        {
                          operator new();
                        }

                        std::__throw_bad_array_new_length[abi:ne200100]();
                      }

                      *(8 * v25) = 0x8000000000000000;
                      v31 = 8 * v25 + 8;
                      memcpy(0, 0, v24);
                    }
                  }

                  v22 = v34;
                  if (v13 == v34[1])
                  {
                    v22 = v34 + 2;
                    this = v14;
                    if (v34 + 2 != v32)
                    {
                      v13 = *v22;
                    }
                  }

                  else
                  {
                    v13 = v13 + 1;
                    this = v14;
                  }
                }

                while (v22 != v32);
                v27 = v31;
                if (v35)
                {
                  goto LABEL_65;
                }

                goto LABEL_66;
              }
            }

            else
            {
              v12 = v35;
            }

            v30 = 0;
            v27 = 0;
            if (v12)
            {
LABEL_65:
              v28 = v27;
              operator delete(__p[0]);
              v27 = v28;
            }

LABEL_66:
            if (v27 && v30)
            {
              v40[0] = 0;
              v38 = 0;
              v39 = 0;
              v37 = 0;
              if (v27 >= 0)
              {
                operator new();
              }

              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            operator new();
          }

LABEL_33:
          operator delete(v41);
          goto LABEL_34;
        }

        v35 = *v40;
        *__p = v41;
      }

      if (!v40[0])
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

  v7 = -1;
  goto LABEL_15;
}

void sub_23CA7A220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, void *__p, int a26, __int16 a27, char a28, char a29)
{
  if (a24)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (!a13)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a13);
  _Unwind_Resume(exception_object);
}

char *operations_research::Domain::Values@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  v3 = *result;
  if (*result >= 2uLL)
  {
    if (v3)
    {
      return absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(a2, result);
    }

    else
    {
      *a2 = v3;
      *(a2 + 8) = *(result + 8);
    }
  }

  return result;
}

void sub_23CA7A4AC(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<long long>::vector[abi:ne200100](void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_23CA7A548(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *google::protobuf::util::Truncate<operations_research::sat::LinearExpressionProto>(uint64_t *this, google::protobuf::MessageLite *a2)
{
  v2 = *(this + 2) - a2;
  if (*this)
  {
    v3 = (*this + 7);
  }

  else
  {
    v3 = this;
  }

  if (v2 >= 1)
  {
    v4 = a2;
    v5 = this;
    if (!this[2])
    {
      v6 = &v3[a2];
      v7 = (*(this + 2) - a2);
      do
      {
        v8 = *v6++;
        google::protobuf::internal::InternalOutOfLineDeleteMessageLite(v8, a2);
        --v7;
      }

      while (v7);
    }

    return google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(v5, v4, v2);
  }

  return this;
}

uint64_t operations_research::sat::CpModelPresolver::PropagateAndReduceLinMax(operations_research::sat::PresolveContext **this, operations_research::sat::ConstraintProto *a2)
{
  if (*(a2 + 15) == 27)
  {
    v4 = *(a2 + 6);
  }

  else
  {
    v4 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v5 = v4[6];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v7 = operations_research::sat::PresolveContext::MinOf(this[1], v6);
  v8 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  if (*(a2 + 15) == 27)
  {
    v8 = *(a2 + 6);
  }

  v10 = v8[3];
  v9 = v8 + 3;
  v11 = (v10 + 7);
  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v9 + 2);
  if (!v13)
  {
    v15 = 0x8000000000000000;
    v20 = *(v6 + 4);
    if (v20)
    {
      goto LABEL_20;
    }

LABEL_28:
    operations_research::Domain::Domain(__p, v7, v15);
    v29 = operations_research::Domain::Contains(__p, v6[8]);
    if (__p[0])
    {
      operator delete(__p[1]);
    }

    if (!v29)
    {
      v47 = this[1];
      HIBYTE(__p[2]) = 19;
      strcpy(__p, "lin_max: infeasible");
      operations_research::sat::PresolveContext::UpdateRuleStats(v47, __p, 1, v27, v28);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      return operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, a2, v48, v49, v50);
    }

    if (*(v6 + 4) > 1)
    {
      goto LABEL_53;
    }

    goto LABEL_21;
  }

  v14 = 8 * v13;
  v15 = 0x8000000000000000;
  do
  {
    v17 = *v12++;
    v16 = v17;
    v18 = operations_research::sat::PresolveContext::MinOf(this[1], v17);
    if (v7 <= v18)
    {
      v7 = v18;
    }

    v19 = operations_research::sat::PresolveContext::MaxOf(this[1], v16);
    if (v15 <= v19)
    {
      v15 = v19;
    }

    v14 -= 8;
  }

  while (v14);
  v20 = *(v6 + 4);
  if (!v20)
  {
    goto LABEL_28;
  }

LABEL_20:
  if (v20 <= 1)
  {
LABEL_21:
    __p[0] = 0;
    if (*(a2 + 15) == 27)
    {
      v21 = *(a2 + 6);
      v23 = *(v21 + 24);
      v22 = v21 + 24;
      v24 = (v23 + 7);
      if (v23)
      {
        v25 = v24;
      }

      else
      {
        v25 = v22;
      }

      v26 = *(v22 + 8);
      if (!v26)
      {
LABEL_48:
        LOBYTE(v77[0]) = 0;
        if ((operations_research::sat::PresolveContext::IntersectDomainWith(this[1], v6, __p, v77) & 1) == 0)
        {
          if (__p[0])
          {
            operator delete(__p[1]);
          }

          return 1;
        }

        if (LOBYTE(v77[0]) == 1)
        {
          operator new();
        }

        if (__p[0])
        {
          operator delete(__p[1]);
        }

        goto LABEL_53;
      }
    }

    else
    {
      if (qword_2810BEFF0)
      {
        v25 = (qword_2810BEFF0 + 7);
      }

      else
      {
        v25 = &qword_2810BEFF0;
      }

      v26 = dword_2810BEFF8;
      if (!dword_2810BEFF8)
      {
        goto LABEL_48;
      }
    }

    v30 = 8 * v26;
    while (1)
    {
      operations_research::sat::PresolveContext::DomainSuperSetOf(v76, this[1], *v25);
      operations_research::Domain::Domain(v75, v7, v15);
      operations_research::Domain::IntersectionWith(v77, v76, v75);
      operations_research::Domain::UnionWith(&v78, __p, v77);
      if (__p[0])
      {
        operator delete(__p[1]);
      }

      __p[0] = v78;
      *&__p[1] = v79;
      v78 = 0;
      if (v77[0])
      {
        operator delete(v77[1]);
        if ((v75[0] & 1) == 0)
        {
LABEL_43:
          if (v76[0])
          {
            goto LABEL_47;
          }

          goto LABEL_38;
        }
      }

      else if ((v75[0] & 1) == 0)
      {
        goto LABEL_43;
      }

      operator delete(v75[1]);
      if (v76[0])
      {
LABEL_47:
        operator delete(v76[1]);
      }

LABEL_38:
      ++v25;
      v30 -= 8;
      if (!v30)
      {
        goto LABEL_48;
      }
    }
  }

LABEL_53:
  v33 = operations_research::sat::PresolveContext::MinOf(this[1], v6);
  v34 = 0;
  v35 = 0;
  v36 = -1;
  v37 = 0x8000000000000000;
  while (*(a2 + 15) != 27)
  {
    v38 = &operations_research::sat::_LinearArgumentProto_default_instance_;
    if (v35 >= dword_2810BEFF8)
    {
      v45 = 0;
      v44 = 0;
      v46 = dword_2810BEFF8;
      if (dword_2810BEFF8 > 0)
      {
        goto LABEL_73;
      }

      goto LABEL_94;
    }

LABEL_59:
    v40 = v38[3];
    v39 = (v38 + 3);
    v41 = &v40[v35] + 7;
    if (v40)
    {
      v39 = v41;
    }

    v42 = *v39;
    if (operations_research::sat::PresolveContext::MinOf(this[1], *v39) >= v33)
    {
      v43 = operations_research::sat::PresolveContext::MaxOf(this[1], v42);
      if (v43 > v37)
      {
        v37 = v43;
        v36 = v35;
      }

      v34 = 1;
    }

    ++v35;
  }

  v38 = *(a2 + 6);
  if (v35 < *(v38 + 8))
  {
    goto LABEL_59;
  }

  v44 = 0;
  v45 = 0;
LABEL_75:
  v52 = *(a2 + 6);
  v46 = *(v52 + 8);
  if (v45 < v46)
  {
    while (1)
    {
      v54 = v52[3];
      v53 = (v52 + 3);
      v55 = &v54[v45] + 7;
      if (v54)
      {
        v53 = v55;
      }

      v56 = *v53;
      v57 = operations_research::sat::PresolveContext::MaxOf(this[1], *v53);
      if (v57 >= v33 && (v57 != v33 || ((v34 ^ 1) & 1) != 0 || v45 == v36))
      {
        if (*(a2 + 15) == 27)
        {
          v58 = *(a2 + 6);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(a2);
          *(a2 + 15) = 27;
          v59 = *(a2 + 1);
          if (v59)
          {
            v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
          }

          google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearArgumentProto>(v59);
          *(a2 + 6) = v58;
        }

        v61 = *(v58 + 24);
        v60 = (v58 + 24);
        v62 = v61 + 8 * v44 + 7;
        if (v61)
        {
          v63 = v62;
        }

        else
        {
          v63 = v60;
        }

        operations_research::sat::LinearExpressionProto::CopyFrom(*v63, v56);
        ++v44;
        ++v45;
        if (*(a2 + 15) == 27)
        {
          goto LABEL_75;
        }
      }

      else
      {
        ++v45;
        if (*(a2 + 15) == 27)
        {
          goto LABEL_75;
        }
      }

      v46 = dword_2810BEFF8;
      if (v45 >= dword_2810BEFF8)
      {
        break;
      }

LABEL_73:
      v52 = &operations_research::sat::_LinearArgumentProto_default_instance_;
    }
  }

LABEL_94:
  if (v44 >= v46)
  {
    return 0;
  }

  v64 = this[1];
  strcpy(__p, "lin_max: removed exprs");
  HIBYTE(__p[2]) = 22;
  operations_research::sat::PresolveContext::UpdateRuleStats(v64, __p, 1, v31, v32);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if (*(a2 + 15) != 27)
    {
      goto LABEL_100;
    }

LABEL_97:
    v66 = *(a2 + 6);
  }

  else
  {
    if (*(a2 + 15) == 27)
    {
      goto LABEL_97;
    }

LABEL_100:
    operations_research::sat::ConstraintProto::clear_constraint(a2);
    *(a2 + 15) = 27;
    v67 = *(a2 + 1);
    if (v67)
    {
      v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearArgumentProto>(v67);
    *(a2 + 6) = v66;
  }

  v69 = (v66 + 24);
  v68 = *(v66 + 24);
  v70 = *(v66 + 32) - v44;
  if (v68)
  {
    v71 = v68 + 7;
  }

  else
  {
    v71 = v66 + 24;
  }

  if (v70 >= 1)
  {
    if (!*(v66 + 40))
    {
      v72 = (v71 + 8 * v44);
      v73 = (*(v66 + 32) - v44);
      do
      {
        v74 = *v72++;
        google::protobuf::internal::InternalOutOfLineDeleteMessageLite(v74, v65);
        --v73;
      }

      while (v73);
    }

    google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(v69, v44, v70);
  }

  return 1;
}

uint64_t operations_research::sat::CpModelPresolver::PresolveLinMax(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2, uint64_t a3, uint64_t a4)
{
  if ((*(*(this + 1) + 416) & 1) != 0 || *(a2 + 4))
  {
    return 0;
  }

  v7 = *(a2 + 15);
  if (v7 == 27)
  {
    v8 = *(a2 + 6);
  }

  else
  {
    v8 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v11 = v8[3];
  v9 = v8 + 3;
  v10 = v11;
  if (v9[3])
  {
    v12 = v9[3];
  }

  else
  {
    v12 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  if (v10)
  {
    v13 = (v10 + 7);
  }

  else
  {
    v13 = v9;
  }

  v14 = *(v9 + 2);
  if (!v14)
  {
    goto LABEL_19;
  }

  v15 = 8 * v14;
  do
  {
    if (operations_research::sat::LinearExpressionProtosAreEqual(*v13, v12, 1))
    {
      if (*(a2 + 15) == 27)
      {
        v43 = *(a2 + 6);
      }

      else
      {
        v43 = &operations_research::sat::_LinearArgumentProto_default_instance_;
      }

      v45 = v43[3];
      v44 = v43 + 3;
      v46 = (v45 + 7);
      if (v45)
      {
        v47 = v46;
      }

      else
      {
        v47 = v44;
      }

      v48 = *(v44 + 2);
      if (!v48)
      {
LABEL_269:
        operator new();
      }

      v49 = 8 * v48;
      while (1)
      {
        v193 = *v47;
        if (operations_research::sat::LinearExpressionProtosAreEqual(*v47, v12, 1))
        {
          goto LABEL_259;
        }

        v194 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
        v195 = v194;
        if (*(v194 + 60) == 12)
        {
          v196 = *(v194 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v194);
          *(v195 + 60) = 12;
          v197 = *(v195 + 8);
          if (v197)
          {
            v197 = *(v197 & 0xFFFFFFFFFFFFFFFELL);
          }

          v196 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v197);
          *(v195 + 48) = v196;
        }

        v198 = *(v196 + 16);
        v187 = *(v196 + 17);
        if (v198 == v187)
        {
          google::protobuf::RepeatedField<long long>::Grow((v196 + 8), v187, (v187 + 1));
          v188 = *(v196 + 16);
          v187 = *(v196 + 17);
          v189 = v196[9];
          v190 = v188 + 1;
          *(v196 + 16) = v188 + 1;
          *(v189 + 8 * v188) = 0;
          if (v188 + 1 == v187)
          {
            goto LABEL_268;
          }
        }

        else
        {
          v189 = v196[9];
          v190 = v198 + 1;
          *(v196 + 16) = v198 + 1;
          *(v189 + 8 * v198) = 0;
          if (v198 + 1 == v187)
          {
LABEL_268:
            google::protobuf::RepeatedField<long long>::Grow((v196 + 8), v187, (v187 + 1));
            v190 = *(v196 + 16);
            v189 = v196[9];
          }
        }

        *(v196 + 16) = v190 + 1;
        *(v189 + 8 * v190) = 0x7FFFFFFFFFFFFFFFLL;
        operations_research::sat::AddLinearExpressionToLinearConstraint(v12, 1, v196, v185, v186);
        operations_research::sat::AddLinearExpressionToLinearConstraint(v193, 0xFFFFFFFFFFFFFFFFLL, v196, v191, v192);
LABEL_259:
        ++v47;
        v49 -= 8;
        if (!v49)
        {
          goto LABEL_269;
        }
      }
    }

    ++v13;
    v15 -= 8;
  }

  while (v15);
  v7 = *(a2 + 15);
LABEL_19:
  v16 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  v17 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  if (v7 == 27)
  {
    v17 = *(a2 + 6);
  }

  v19 = v17[3];
  v18 = v17 + 3;
  v20 = (v19 + 7);
  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = v18;
  }

  v22 = *(v18 + 2);
  if (!v22)
  {
    goto LABEL_34;
  }

  v23 = &v21[v22];
  v24 = -1;
  do
  {
    v25 = *(*v21 + 4);
    if (v25)
    {
      v26 = (*v21)[3];
      for (i = 4 * v25; i; i -= 4)
      {
        if (*v26 < 0)
        {
          operations_research::sat::ExpandCpModel(v225);
        }

        if (v24 == -1)
        {
          v24 = *v26;
        }

        else if (*v26 != v24)
        {
          goto LABEL_34;
        }

        ++v26;
      }
    }

    ++v21;
  }

  while (v21 != v23);
  if (v24 == -1)
  {
LABEL_34:
    v28 = 0;
    if (v7 != 27)
    {
      goto LABEL_77;
    }

LABEL_35:
    v16 = *(a2 + 6);
    v29 = *(v16 + 8);
    if (v29 != 2)
    {
      goto LABEL_58;
    }

    v30 = v16[6];
    if (!v30)
    {
      v30 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }

    if (*(v30 + 4) > 1)
    {
      goto LABEL_58;
    }

    v31 = (v16 + 3);
    v32 = v16[3];
    v33 = (v32 + 7);
    if ((v32 & 1) == 0)
    {
      v33 = (v16 + 3);
    }

    v34 = *v33;
    if (*(v34 + 16) != 1)
    {
      goto LABEL_58;
    }

    if (v32)
    {
      v31 = (v32 + 15);
    }

    if ((v35 = *v31, *(v35 + 16) == 1) && !(*(v34 + 64) + *(v35 + 64)) && ((v36 = **(v34 + 24), ~v36 <= v36) ? (v37 = **(v34 + 24)) : (v37 = ~v36), (v38 = **(v35 + 24), ~v38 <= v38) ? (v39 = **(v35 + 24)) : (v39 = ~v38), v37 == v39))
    {
      v40 = **(v34 + 48);
      if (v36 < 0)
      {
        v40 = -v40;
      }

      v41 = **(v35 + 48);
      if (v38 >= 0)
      {
        v41 = -v41;
      }

      v42 = v40 == v41;
    }

    else
    {
LABEL_58:
      v42 = 0;
    }

    if (!v28)
    {
      if (!v42)
      {
        goto LABEL_101;
      }

      goto LABEL_99;
    }

LABEL_79:
    v222 = 0;
    v223 = 0;
    v224 = 0;
    if (!v29)
    {
      v54 = -1;
      goto LABEL_91;
    }

    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(&v222, (v16 + 3), google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>);
    v52 = (v222 + 7);
    if ((v222 & 1) == 0)
    {
      v52 = &v222;
    }

    if (v223)
    {
      v53 = 8 * v223;
      while (!*(*v52 + 16))
      {
        ++v52;
        v53 -= 8;
        if (!v53)
        {
          goto LABEL_86;
        }
      }

      v54 = **(*v52 + 24);
      if (v222)
      {
        goto LABEL_90;
      }
    }

    else
    {
LABEL_86:
      v54 = -1;
      if (v222)
      {
LABEL_90:
        google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(&v222);
      }
    }

LABEL_91:
    operations_research::sat::PresolveContext::DomainOf(v225, *(this + 1), v54);
    v55 = operations_research::Domain::Size(v225);
    if (v225[0])
    {
      operator delete(*(&v225[0] + 1));
    }

    if (v55 < 1001 && v28)
    {
      operations_research::sat::CpModelPresolver::PropagateAndReduceAffineMax(this, a2);
    }

    if (!v42)
    {
      goto LABEL_101;
    }

LABEL_99:
    result = operations_research::sat::CpModelPresolver::PropagateAndReduceIntAbs(this, a2);
    v59 = *(this + 1);
    if ((*(v59 + 416) & 1) == 0)
    {
      goto LABEL_102;
    }

    return 0;
  }

  if (v7 == 27)
  {
    v50 = *(a2 + 6);
  }

  else
  {
    v50 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v51 = v50[6];
  if (!v51)
  {
    v51 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v28 = *(v51 + 4) < 2;
  if (v7 == 27)
  {
    goto LABEL_35;
  }

LABEL_77:
  if (v28)
  {
    v42 = 0;
    v29 = dword_2810BEFF8;
    goto LABEL_79;
  }

LABEL_101:
  result = operations_research::sat::CpModelPresolver::PropagateAndReduceLinMax(this, a2);
  v59 = *(this + 1);
  if (*(v59 + 416))
  {
    return 0;
  }

LABEL_102:
  if (*(a2 + 15) != 27)
  {
    return result;
  }

  v60 = *(*(a2 + 6) + 32);
  if (v60 == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v225, "lin_max: converted to equality");
    operations_research::sat::PresolveContext::UpdateRuleStats(v59, v225, 1, v64, v65);
    if (SBYTE7(v225[1]) < 0)
    {
      operator delete(*&v225[0]);
    }

    v66 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    operations_research::sat::ConstraintProto::CopyFrom(v66, a2);
    v67 = operations_research::sat::ConstraintProto::mutable_linear(v66);
    if (*(a2 + 15) == 27)
    {
      v68 = *(a2 + 6);
    }

    else
    {
      v68 = &operations_research::sat::_LinearArgumentProto_default_instance_;
    }

    v84 = v68[3];
    v82 = (v68 + 3);
    v83 = v84;
    if (v82[3])
    {
      v85 = v82[3];
    }

    else
    {
      v85 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }

    if (v83)
    {
      v82 = (v83 + 7);
    }

    v86 = *v82;
    if (*(v85 + 4) >= 1)
    {
      v87 = 0;
      do
      {
        v88 = *(v85[3] + v87);
        v89 = v67[2];
        v90 = v89;
        if (v89 == HIDWORD(v89))
        {
          v96 = v67;
          google::protobuf::RepeatedField<int>::Grow((v67 + 2), HIDWORD(v89), (HIDWORD(v89) + 1));
          v67 = v96;
          v90 = *(v96 + 4);
        }

        v91 = v67[3];
        *(v67 + 4) = v90 + 1;
        *(v91 + 4 * v90) = v88;
        v92 = v85[6][v87];
        v94 = *(v67 + 10);
        v93 = *(v67 + 11);
        if (v94 == v93)
        {
          v97 = v67;
          google::protobuf::RepeatedField<long long>::Grow((v67 + 5), v93, (v93 + 1));
          v67 = v97;
          v94 = *(v97 + 10);
        }

        v95 = v67[6];
        *(v67 + 10) = v94 + 1;
        *(v95 + 8 * v94) = v92;
        ++v87;
      }

      while (v87 < *(v85 + 4));
    }

    if (*(v86 + 16) >= 1)
    {
      v98 = 0;
      do
      {
        v99 = *(*(v86 + 24) + 4 * v98);
        v100 = v67[2];
        v101 = v100;
        if (v100 == HIDWORD(v100))
        {
          v107 = v67;
          google::protobuf::RepeatedField<int>::Grow((v67 + 2), HIDWORD(v100), (HIDWORD(v100) + 1));
          v67 = v107;
          v101 = *(v107 + 4);
        }

        v102 = v67[3];
        *(v67 + 4) = v101 + 1;
        *(v102 + 4 * v101) = v99;
        v103 = *(*(v86 + 48) + 8 * v98);
        v105 = *(v67 + 10);
        v104 = *(v67 + 11);
        if (v105 == v104)
        {
          v108 = v67;
          google::protobuf::RepeatedField<long long>::Grow((v67 + 5), v104, (v104 + 1));
          v67 = v108;
          v105 = *(v108 + 10);
        }

        v106 = v67[6];
        *(v67 + 10) = v105 + 1;
        *(v106 + 8 * v105) = -v103;
        ++v98;
      }

      while (v98 < *(v86 + 16));
    }

    v109 = v67;
    operations_research::sat::LinearConstraintProto::add_domain(v67, *(v86 + 64) - v85[8]);
    operations_research::sat::LinearConstraintProto::add_domain(v109, *(v86 + 64) - v85[8]);
    operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
    goto LABEL_270;
  }

  if (!v60)
  {
    BYTE7(v225[1]) = 17;
    strcpy(v225, "lin_max: no exprs");
    operations_research::sat::PresolveContext::UpdateRuleStats(v59, v225, 1, v57, v58);
    if (SBYTE7(v225[1]) < 0)
    {
      operator delete(*&v225[0]);
    }

    return operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, a2, v61, v62, v63);
  }

  v212 = result;
  v69 = operations_research::sat::PresolveContext::MinOf(v59, v12);
  v214 = operations_research::sat::PresolveContext::MaxOf(*(this + 1), v12);
  v213 = v69;
  if (*(a2 + 15) == 27)
  {
    v71 = *(a2 + 6);
  }

  else
  {
    v71 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v73 = v71[3];
  v72 = v71 + 3;
  v74 = (v73 + 7);
  if (v73)
  {
    v75 = v74;
  }

  else
  {
    v75 = v72;
  }

  v76 = *(v72 + 2);
  if (v76)
  {
    v77 = 8 * v76;
    do
    {
      v78 = *v75;
      v79 = operations_research::sat::PresolveContext::MinOf(*(this + 1), *v75);
      LOBYTE(v220) = 0;
      v80 = *(this + 1);
      operations_research::Domain::Domain(v225, v79, v214);
      v81 = operations_research::sat::PresolveContext::IntersectDomainWith(v80, v78, v225, &v220);
      if (v225[0])
      {
        operator delete(*(&v225[0] + 1));
      }

      if ((v81 & 1) == 0)
      {
        return 1;
      }

      if (v220 == 1)
      {
        operator new();
      }

      if (operations_research::sat::PresolveContext::MaxOf(*(this + 1), v78) > v214)
      {
        operator new();
      }

      ++v75;
      v77 -= 8;
    }

    while (v77);
  }

  v113 = v213;
  if (!operations_research::sat::ExpressionContainsSingleRef(v12, v70))
  {
    goto LABEL_220;
  }

  v114 = *(a2 + 15);
  if (v114 == 27)
  {
    v115 = *(a2 + 6);
  }

  else
  {
    v115 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v117 = v115[3];
  v116 = v115 + 3;
  v118 = (v117 + 7);
  if (v117)
  {
    v119 = v118;
  }

  else
  {
    v119 = v116;
  }

  v120 = *(v116 + 2);
  if (v120)
  {
    v121 = 8 * v120;
    v122 = 0x8000000000000000;
    v123 = 0x8000000000000000;
    do
    {
      v125 = *v119++;
      v124 = v125;
      v126 = operations_research::sat::PresolveContext::MinOf(*(this + 1), v125);
      if (v122 <= v126)
      {
        v122 = v126;
      }

      v127 = operations_research::sat::PresolveContext::MaxOf(*(this + 1), v124);
      if (v123 <= v127)
      {
        v123 = v127;
      }

      v121 -= 8;
    }

    while (v121);
    v114 = *(a2 + 15);
  }

  else
  {
    v123 = 0x8000000000000000;
    v122 = 0x8000000000000000;
  }

  *&v225[0] = 0;
  if (v114 == 27)
  {
    v128 = *(a2 + 6);
  }

  else
  {
    v128 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v130 = v128[3];
  v129 = v128 + 3;
  v131 = (v130 + 7);
  if (v130)
  {
    v132 = v131;
  }

  else
  {
    v132 = v129;
  }

  v133 = *(v129 + 2);
  if (v133)
  {
    for (j = 8 * v133; j; j -= 8)
    {
      operations_research::sat::PresolveContext::DomainSuperSetOf(v217, *(this + 1), *v132);
      operations_research::Domain::Domain(v215, v122, v123);
      operations_research::Domain::IntersectionWith(&v218, v217, v215);
      operations_research::Domain::UnionWith(&v220, v225, &v218);
      if (v225[0])
      {
        operator delete(*(&v225[0] + 1));
      }

      *&v225[0] = v220;
      *(v225 + 8) = v221;
      v220 = 0;
      if (v218)
      {
        operator delete(__p);
        if ((v215[0] & 1) == 0)
        {
LABEL_179:
          if (v217[0])
          {
            goto LABEL_183;
          }

          goto LABEL_174;
        }
      }

      else if ((v215[0] & 1) == 0)
      {
        goto LABEL_179;
      }

      operator delete(v216);
      if (v217[0])
      {
LABEL_183:
        operator delete(v217[1]);
      }

LABEL_174:
      ++v132;
    }
  }

  if (*v12[6] == 1)
  {
    operations_research::sat::PresolveContext::DomainOf(&v220, *(this + 1), *v12[3]);
    v113 = v213;
  }

  else
  {
    operations_research::sat::PresolveContext::DomainOf(&v218, *(this + 1), *v12[3]);
    v113 = v213;
    operations_research::Domain::Negation(&v220, &v218);
    if (v218)
    {
      operator delete(__p);
    }
  }

  IsIncludedIn = operations_research::Domain::IsIncludedIn(v225, &v220);
  if (v220)
  {
    operator delete(v221);
    if (v225[0])
    {
      goto LABEL_193;
    }

LABEL_190:
    if (!IsIncludedIn)
    {
      goto LABEL_220;
    }

LABEL_194:
    v136 = v113;
    if (*(a2 + 15) == 27)
    {
      v137 = *(a2 + 6);
    }

    else
    {
      v137 = &operations_research::sat::_LinearArgumentProto_default_instance_;
    }

    v139 = v137[3];
    v138 = v137 + 3;
    v140 = (v139 + 7);
    if (v139)
    {
      v141 = v140;
    }

    else
    {
      v141 = v138;
    }

    v142 = *(v138 + 2);
    if (v142)
    {
      v143 = *v12[3];
      v144 = &v141[v142];
      while (1)
      {
        v145 = *v141;
        v146 = *(*v141 + 4);
        if (v146)
        {
          break;
        }

LABEL_202:
        if (++v141 == v144)
        {
          goto LABEL_210;
        }
      }

      v147 = *(v145 + 3);
      v148 = 4 * v146;
      while (*v147 != v143 || operations_research::sat::LinearExpressionProtosAreEqual(v145, v12, 1))
      {
        ++v147;
        v148 -= 4;
        if (!v148)
        {
          goto LABEL_202;
        }
      }

      v149 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(v225, "TODO lin_max: affine(x) = max(affine'(x), ...) !!");
      operations_research::sat::PresolveContext::UpdateRuleStats(v149, v225, 1, v150, v151);
      v113 = v136;
      if (SBYTE7(v225[1]) < 0)
      {
        operator delete(*&v225[0]);
      }

      goto LABEL_220;
    }

LABEL_210:
    IsUniqueAndRemovable = operations_research::sat::PresolveContext::VariableIsUniqueAndRemovable(*(this + 1), *v12[3]);
    v153 = *(this + 1);
    if (IsUniqueAndRemovable)
    {
      std::string::basic_string[abi:ne200100]<0>(v225, "lin_max: unused affine target");
      operations_research::sat::PresolveContext::UpdateRuleStats(v153, v225, 1, v154, v155);
      if (SBYTE7(v225[1]) < 0)
      {
        operator delete(*&v225[0]);
      }

      operations_research::sat::PresolveContext::MarkVariableAsRemoved(*(this + 1), *v12[3]);
      operations_research::sat::PresolveContext::NewMappingConstraint(*(this + 1), a2, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 99, 0x4AE);
    }

    else
    {
      v113 = v136;
      if (!operations_research::sat::PresolveContext::VariableWithCostIsUniqueAndRemovable(*(this + 1), *v12[3]))
      {
        goto LABEL_220;
      }

      v156 = *v12[6] > 0;
      if (v156 == operations_research::sat::PresolveContext::ObjectiveCoeff(*(this + 1), *v12[3]) < 1)
      {
        goto LABEL_220;
      }

      v157 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(v225, "lin_max: rewrite with precedences");
      operations_research::sat::PresolveContext::UpdateRuleStats(v157, v225, 1, v158, v159);
      if (SBYTE7(v225[1]) < 0)
      {
        operator delete(*&v225[0]);
      }

      if (*(a2 + 15) == 27)
      {
        v160 = *(a2 + 6);
      }

      else
      {
        v160 = &operations_research::sat::_LinearArgumentProto_default_instance_;
      }

      v200 = v160[3];
      v199 = v160 + 3;
      v201 = (v200 + 7);
      if (v200)
      {
        v202 = v201;
      }

      else
      {
        v202 = v199;
      }

      v203 = *(v199 + 2);
      if (v203)
      {
        v204 = 8 * v203;
        do
        {
          v205 = *v202++;
          v206 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          v207 = operations_research::sat::ConstraintProto::mutable_linear(v206);
          operations_research::sat::LinearConstraintProto::add_domain(v207, 0);
          operations_research::sat::LinearConstraintProto::add_domain(v207, 0x7FFFFFFFFFFFFFFFLL);
          operations_research::sat::AddLinearExpressionToLinearConstraint(v12, 1, v207, v208, v209);
          operations_research::sat::AddLinearExpressionToLinearConstraint(v205, 0xFFFFFFFFFFFFFFFFLL, v207, v210, v211);
          v204 -= 8;
        }

        while (v204);
      }

      operations_research::sat::PresolveContext::NewMappingConstraint(*(this + 1), a2, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 99, 0x4C1);
    }

LABEL_270:
    operations_research::sat::ConstraintProto::Clear(a2);
    return 1;
  }

  if ((v225[0] & 1) == 0)
  {
    goto LABEL_190;
  }

LABEL_193:
  operator delete(*(&v225[0] + 1));
  if (IsIncludedIn)
  {
    goto LABEL_194;
  }

LABEL_220:
  if (v113 != v214)
  {
    return v212 | operations_research::sat::CpModelPresolver::PresolveLinMaxWhenAllBoolean(this, a2);
  }

  memset(v225, 0, 24);
  if (*(a2 + 15) == 27)
  {
    v161 = *(a2 + 6);
  }

  else
  {
    v161 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v163 = v161[3];
  v162 = v161 + 3;
  v164 = (v163 + 7);
  if (v163)
  {
    v165 = v164;
  }

  else
  {
    v165 = v162;
  }

  v166 = *(v162 + 2);
  if (!v166)
  {
    goto LABEL_250;
  }

  v167 = &v165[v166];
  v168 = 1;
  while (1)
  {
LABEL_231:
    v169 = *v165;
    v170 = operations_research::sat::PresolveContext::MinOf(*(this + 1), *v165);
    v171 = operations_research::sat::PresolveContext::MaxOf(*(this + 1), v169);
    v172 = v171;
    if (v171 > v113)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v171, v113, "value_max <= fixed_target");
    }

    if (v171 < v113)
    {
      break;
    }

    v173 = *(this + 1);
    if (v170 == v171 && v171 == v113)
    {
      std::string::basic_string[abi:ne200100]<0>(&v220, "lin_max: always satisfied");
      operations_research::sat::PresolveContext::UpdateRuleStats(v173, &v220, 1, v182, v183);
      if (SHIBYTE(v221) < 0)
      {
        operator delete(v220);
      }

      operations_research::sat::ConstraintProto::Clear(a2);
      goto LABEL_254;
    }

    if (operations_research::sat::PresolveContext::ExpressionIsAffineBoolean(*(this + 1), v169))
    {
      if (v172 != v113)
      {
        absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v172, v113, "value_max == fixed_target");
      }

      LODWORD(v220) = operations_research::sat::PresolveContext::LiteralForExpressionMax(*(this + 1), v169);
      std::vector<int>::push_back[abi:ne200100](v225, &v220);
      break;
    }

    v168 = 0;
    if (++v165 == v167)
    {
      result = v212;
      v175 = *&v225[0];
      if (*&v225[0])
      {
        goto LABEL_256;
      }

      return result;
    }
  }

  if (++v165 != v167)
  {
    goto LABEL_231;
  }

  result = v212;
  if ((v168 & 1) == 0)
  {
    goto LABEL_255;
  }

  if (*&v225[0] == *(&v225[0] + 1))
  {
LABEL_250:
    result = operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, a2, v110, v111, v112);
LABEL_255:
    v175 = *&v225[0];
    if (!*&v225[0])
    {
      return result;
    }

LABEL_256:
    *(&v225[0] + 1) = v175;
    v184 = result;
    operator delete(v175);
    return v184;
  }

  v176 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(&v220, "lin_max: fixed target and all BOOLeans");
  operations_research::sat::PresolveContext::UpdateRuleStats(v176, &v220, 1, v177, v178);
  if (SHIBYTE(v221) < 0)
  {
    operator delete(v220);
  }

  v179 = *(&v225[0] + 1);
  v175 = *&v225[0];
  if (*&v225[0] != *(&v225[0] + 1))
  {
    do
    {
      v180 = *v175;
      v181 = operations_research::sat::ConstraintProto::mutable_BOOL_or(a2);
      operations_research::sat::BoolArgumentProto::add_literals(v181, v180);
      ++v175;
    }

    while (v175 != v179);
LABEL_254:
    result = 1;
    goto LABEL_255;
  }

  result = 1;
  if (*&v225[0])
  {
    goto LABEL_256;
  }

  return result;
}

void sub_23CA7BE7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22, void *a23, uint64_t a24, void *__p, void *a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 105) < 0)
  {
    operator delete(*(v30 - 128));
  }

  _Unwind_Resume(exception_object);
}

void *operations_research::sat::ConstraintProto::mutable_linear(operations_research::sat::ConstraintProto *this)
{
  if (*(this + 15) == 12)
  {
    return *(this + 6);
  }

  operations_research::sat::ConstraintProto::clear_constraint(this);
  *(this + 15) = 12;
  v3 = *(this + 1);
  if (v3)
  {
    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(*(v3 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v3);
  }

  *(this + 6) = result;
  return result;
}

uint64_t operations_research::sat::LinearConstraintProto::add_domain(uint64_t this, uint64_t a2)
{
  v3 = *(this + 64);
  v2 = *(this + 68);
  v4 = (this + 64);
  if (v3 == v2)
  {
    v6 = this;
    v7 = a2;
    google::protobuf::RepeatedField<long long>::Grow(this + 64, v2, (v2 + 1));
    this = v6;
    a2 = v7;
    v3 = *v4;
  }

  v5 = *(this + 72);
  *(this + 64) = v3 + 1;
  *(v5 + 8 * v3) = a2;
  return this;
}

BOOL operations_research::sat::anonymous namespace::IsAffineIntAbs(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::ConstraintProto *a2)
{
  if (a2 != 27 || *(this + 8) != 2)
  {
    return 0;
  }

  v2 = *(this + 6);
  if (!v2)
  {
    v2 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  if (*(v2 + 4) > 1)
  {
    return 0;
  }

  v5 = *(this + 3);
  v3 = this + 24;
  v4 = v5;
  v6 = (v5 + 7);
  if ((v5 & 1) == 0)
  {
    v6 = v3;
  }

  v7 = *v6;
  if (*(v7 + 16) != 1)
  {
    return 0;
  }

  v8 = (v4 & 1) != 0 ? (v4 + 15) : v3;
  v9 = *v8;
  if (*(v9 + 16) != 1 || *(v7 + 64) + *(v9 + 64))
  {
    return 0;
  }

  v10 = **(v7 + 24);
  v11 = ~v10 <= v10 ? **(v7 + 24) : ~v10;
  v12 = **(v9 + 24);
  v13 = ~v12 <= v12 ? **(v9 + 24) : ~v12;
  if (v11 != v13)
  {
    return 0;
  }

  v14 = **(v7 + 48);
  if (v10 < 0)
  {
    v14 = -v14;
  }

  v15 = **(v9 + 48);
  if (v12 >= 0)
  {
    v15 = -v15;
  }

  return v14 == v15;
}

uint64_t operations_research::sat::CpModelPresolver::PropagateAndReduceIntAbs(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  v4 = *(a2 + 4);
  if (v4)
  {
    operations_research::sat::CpModelPresolver::PropagateAndReduceIntAbs(v4, &v41);
  }

  v5 = *(this + 1);
  if (*(v5 + 416))
  {
    goto LABEL_3;
  }

  if (*(a2 + 15) == 27)
  {
    v7 = *(a2 + 6);
  }

  else
  {
    v7 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v10 = v7[3];
  v8 = v7 + 3;
  v9 = v10;
  if (v8[3])
  {
    v11 = v8[3];
  }

  else
  {
    v11 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  if (v9)
  {
    v8 = (v9 + 7);
  }

  v12 = *v8;
  operations_research::sat::PresolveContext::DomainSuperSetOf(&v41, v5, *v8);
  operations_research::Domain::Negation(v36, &v41);
  operations_research::Domain::UnionWith(&v37, &v41, v36);
  operations_research::Domain::Domain(v34, 0, 0x7FFFFFFFFFFFFFFFLL);
  operations_research::Domain::IntersectionWith(&v39, &v37, v34);
  if (v34[0])
  {
    operator delete(v35);
    if ((v37 & 1) == 0)
    {
LABEL_14:
      if ((v36[0] & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((v37 & 1) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v38[0]);
  if (v36[0])
  {
LABEL_15:
    operator delete(v36[1]);
  }

LABEL_16:
  LOBYTE(v36[0]) = 0;
  if ((operations_research::sat::PresolveContext::IntersectDomainWith(*(this + 1), v11, &v39, v36) & 1) == 0)
  {
    v13 = 0;
    v2 = 0;
    if ((v39 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (operations_research::Domain::IsFixed(&v41))
  {
    operator new();
  }

  if (LOBYTE(v36[0]) == 1)
  {
    operator new();
  }

  v13 = 1;
  if (v39)
  {
LABEL_23:
    operator delete(v40);
  }

LABEL_24:
  if (v41)
  {
    operator delete(*(&v41 + 1));
    if (!v13)
    {
      return v2 & 1;
    }
  }

  else if (!v13)
  {
    return v2 & 1;
  }

  operations_research::sat::PresolveContext::DomainSuperSetOf(&v39, *(this + 1), v11);
  operations_research::Domain::Domain(&v37, 0, 0x7FFFFFFFFFFFFFFFLL);
  operations_research::Domain::IntersectionWith(&v41, &v39, &v37);
  if (v37)
  {
    operator delete(v38[0]);
  }

  if (v39)
  {
    operator delete(v40);
  }

  operations_research::Domain::Negation(&v37, &v41);
  operations_research::Domain::UnionWith(&v39, &v41, &v37);
  if (v37)
  {
    operator delete(v38[0]);
  }

  LOBYTE(v36[0]) = 0;
  if ((operations_research::sat::PresolveContext::IntersectDomainWith(*(this + 1), v12, &v39, v36) & 1) == 0)
  {
    v14 = 0;
    v2 = 1;
    if ((v39 & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (operations_research::sat::PresolveContext::IsFixed(*(this + 1), v11))
  {
    operator new();
  }

  if (LOBYTE(v36[0]) == 1)
  {
    operator new();
  }

  v14 = 1;
  if (v39)
  {
LABEL_38:
    operator delete(v40);
  }

LABEL_39:
  if (v41)
  {
    operator delete(*(&v41 + 1));
    if (!v14)
    {
      return v2 & 1;
    }
  }

  else if (!v14)
  {
    return v2 & 1;
  }

  if ((operations_research::sat::PresolveContext::MinOf(*(this + 1), v12) & 0x8000000000000000) == 0)
  {
    operator new();
  }

  if (operations_research::sat::PresolveContext::MaxOf(*(this + 1), v12) <= 0)
  {
    v19 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(&v41, "lin_max: converted abs to equality");
    operations_research::sat::PresolveContext::UpdateRuleStats(v19, &v41, 1, v20, v21);
    if (v42 < 0)
    {
      operator delete(v41);
    }

    v22 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    v23 = v22;
    v24 = *(v22 + 8);
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set<>((v22 + 40), (*(a2 + 5) & 0xFFFFFFFFFFFFFFFCLL), v24);
    v25 = operations_research::sat::ConstraintProto::mutable_linear(v23);
    operations_research::sat::LinearConstraintProto::add_domain(v25, 0);
    operations_research::sat::LinearConstraintProto::add_domain(v25, 0);
    operations_research::sat::AddLinearExpressionToLinearConstraint(v11, 1, v25, v26, v27);
    operations_research::sat::AddLinearExpressionToLinearConstraint(v12, 1, v25, v28, v29);
    operations_research::sat::CpModelPresolver::CanonicalizeLinear(this, v23, v30, v31, v32);
    operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
    goto LABEL_64;
  }

  if (operations_research::sat::ExpressionContainsSingleRef(v11, v15) && operations_research::sat::PresolveContext::VariableIsUniqueAndRemovable(*(this + 1), *v11[3]))
  {
    operations_research::sat::PresolveContext::MarkVariableAsRemoved(*(this + 1), *v11[3]);
    operations_research::sat::PresolveContext::NewMappingConstraint(*(this + 1), a2, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 99, 0x59D);
    v16 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(&v41, "lin_max: unused abs target");
    operations_research::sat::PresolveContext::UpdateRuleStats(v16, &v41, 1, v17, v18);
    if (v42 < 0)
    {
      operator delete(v41);
    }

LABEL_64:
    operations_research::sat::ConstraintProto::Clear(a2);
    v2 = 1;
    return v2 & 1;
  }

LABEL_3:
  v2 = 0;
  return v2 & 1;
}

void sub_23CA7C940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23)
{
  if (*(v23 - 49) < 0)
  {
    operator delete(*(v23 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::LinearConstraintProto::add_coeffs(uint64_t this, uint64_t a2)
{
  v3 = *(this + 40);
  v2 = *(this + 44);
  v4 = (this + 40);
  if (v3 == v2)
  {
    v6 = this;
    v7 = a2;
    google::protobuf::RepeatedField<long long>::Grow(this + 40, v2, (v2 + 1));
    this = v6;
    a2 = v7;
    v3 = *v4;
  }

  v5 = *(this + 48);
  *(this + 40) = v3 + 1;
  *(v5 + 8 * v3) = a2;
  return this;
}

uint64_t operations_research::sat::PresolveContext::ObjectiveCoeff(operations_research::sat::PresolveContext *this, unsigned int a2)
{
  v2 = *(this + 64);
  if (v2 > 1)
  {
    v3 = 0;
    v4 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2;
    v5 = 0x9DDFEA08EB382D69 * v4;
    v6 = (v4 * 0x9DDFEA08EB382D69) >> 64;
    _X10 = *(this + 66);
    __asm { PRFM            #4, [X10] }

    v13 = v6 ^ v5;
    v14 = vdup_n_s8(v13 & 0x7F);
    v15 = ((v13 >> 7) ^ (_X10 >> 12)) & v2;
    v16 = *(_X10 + v15);
    v17 = vceq_s8(v16, v14);
    if (!v17)
    {
      goto LABEL_8;
    }

LABEL_5:
    v18 = *(this + 67);
    while (1)
    {
      v19 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v2;
      if (*(v18 + 16 * v19) == a2)
      {
        break;
      }

      v17 &= ((v17 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v17)
      {
LABEL_8:
        while (!*&vceq_s8(v16, 0x8080808080808080))
        {
          v3 += 8;
          v15 = (v3 + v15) & v2;
          v16 = *(_X10 + v15);
          v17 = vceq_s8(v16, v14);
          if (v17)
          {
            goto LABEL_5;
          }
        }

        return 0;
      }
    }

    v20 = (v18 + 16 * v19);
    if (!(_X10 + v19))
    {
      return 0;
    }

    return *(v20 + 1);
  }

  if (*(this + 65) >= 2uLL)
  {
    v20 = this + 528;
    v22 = &absl::lts_20240722::container_internal::kSooControl;
    if (*(this + 132) != a2)
    {
      v22 = 0;
      v20 = 0;
    }

    if (v22)
    {
      return *(v20 + 1);
    }
  }

  return 0;
}

BOOL operations_research::sat::CpModelPresolver::PresolveLinMaxWhenAllBoolean(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  v3 = *(this + 1);
  if ((*(v3 + 416) & 1) != 0 || *(a2 + 4))
  {
    return 0;
  }

  if (*(a2 + 15) == 27)
  {
    v6 = *(a2 + 6);
  }

  else
  {
    v6 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v7 = v6[6];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  result = operations_research::sat::PresolveContext::ExpressionIsAffineBoolean(v3, v8);
  if (result)
  {
    v79 = operations_research::sat::PresolveContext::MinOf(*(this + 1), v8);
    v80 = operations_research::sat::PresolveContext::MaxOf(*(this + 1), v8);
    v9 = operations_research::sat::PresolveContext::LiteralForExpressionMax(*(this + 1), v8);
    if (*(a2 + 15) == 27)
    {
      v12 = *(a2 + 6);
    }

    else
    {
      v12 = &operations_research::sat::_LinearArgumentProto_default_instance_;
    }

    v74 = v9;
    v73 = a2;
    v14 = v12[3];
    v13 = v12 + 3;
    v15 = (v14 + 7);
    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = v13;
    }

    v17 = *(v13 + 2);
    if (!v17)
    {
      v81 = 0;
      v19 = 0;
      v77 = 0;
      v18 = 0;
      v78 = 0;
LABEL_75:
      v40 = *(this + 1);
      strcpy(__p, "lin_max: all Booleans.");
      v83 = 22;
      operations_research::sat::PresolveContext::UpdateRuleStats(v40, __p, 1, v10, v11);
      if (v83 < 0)
      {
        operator delete(*__p);
      }

      v41 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      v42 = v41;
      v44 = *(v41 + 16);
      v43 = *(v41 + 20);
      v45 = (v41 + 16);
      if (v44 == v43)
      {
        google::protobuf::RepeatedField<int>::Grow(v41 + 16, v43, (v43 + 1));
        v44 = *v45;
      }

      v46 = *(v42 + 24);
      *(v42 + 16) = v44 + 1;
      *(v46 + 4 * v44) = v74;
      if (*(v42 + 60) != 3)
      {
        operations_research::sat::ConstraintProto::clear_constraint(v42);
        *(v42 + 60) = 3;
        v47 = *(v42 + 8);
        if (v47)
        {
          v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
        }

        *(v42 + 48) = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v47);
      }

      if (v19 != v81)
      {
        v48 = v19;
        do
        {
          v49 = *v48;
          if (*(v42 + 60) == 3)
          {
            v50 = *(v42 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v42);
            *(v42 + 60) = 3;
            v51 = *(v42 + 8);
            if (v51)
            {
              v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
            }

            v50 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v51);
            *(v42 + 48) = v50;
          }

          v53 = *(v50 + 4);
          v52 = *(v50 + 5);
          if (v53 == v52)
          {
            google::protobuf::RepeatedField<int>::Grow((v50 + 2), v52, (v52 + 1));
            v53 = *(v50 + 4);
          }

          v54 = v50[3];
          *(v50 + 4) = v53 + 1;
          *(v54 + 4 * v53) = v49;
          ++v48;
        }

        while (v48 != v81);
      }

      v55 = 0;
      v56 = v18;
      if (v77)
      {
        do
        {
          operations_research::sat::PresolveContext::AddImplication(*(this + 1), *v55++, v74);
        }

        while (v55 != v77);
      }

      if ((v78 & 1) == 0)
      {
        v57 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
        v58 = v57;
        v60 = *(v57 + 16);
        v59 = *(v57 + 20);
        v61 = (v57 + 16);
        if (v60 == v59)
        {
          google::protobuf::RepeatedField<int>::Grow(v57 + 16, v59, (v59 + 1));
          v60 = *v61;
        }

        v62 = *(v58 + 24);
        *(v58 + 16) = v60 + 1;
        *(v62 + 4 * v60) = ~v74;
        if (*(v58 + 60) != 3)
        {
          operations_research::sat::ConstraintProto::clear_constraint(v58);
          *(v58 + 60) = 3;
          v63 = *(v58 + 8);
          if (v63)
          {
            v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
          }

          *(v58 + 48) = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v63);
        }

        if (v18)
        {
          v64 = 0;
          do
          {
            v65 = *v64;
            if (*(v58 + 60) == 3)
            {
              v66 = *(v58 + 48);
            }

            else
            {
              operations_research::sat::ConstraintProto::clear_constraint(v58);
              *(v58 + 60) = 3;
              v67 = *(v58 + 8);
              if (v67)
              {
                v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
              }

              v66 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v67);
              *(v58 + 48) = v66;
            }

            v69 = *(v66 + 4);
            v68 = *(v66 + 5);
            if (v69 == v68)
            {
              google::protobuf::RepeatedField<int>::Grow((v66 + 2), v68, (v68 + 1));
              v69 = *(v66 + 4);
            }

            v70 = v66[3];
            *(v66 + 4) = v69 + 1;
            *(v70 + 4 * v69) = v65;
            ++v64;
          }

          while (v64 != v56);
        }
      }

      operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
      operations_research::sat::ConstraintProto::Clear(v73);
      return 1;
    }

    v78 = 0;
    v77 = 0;
    v18 = 0;
    v76 = 0;
    v19 = 0;
    v81 = 0;
    v20 = 8 * v17;
    while (1)
    {
      v21 = *v16;
      if (!operations_research::sat::PresolveContext::ExpressionIsAffineBoolean(*(this + 1), *v16))
      {
        return 0;
      }

      v22 = operations_research::sat::PresolveContext::MinOf(*(this + 1), v21);
      v23 = operations_research::sat::PresolveContext::MaxOf(*(this + 1), v21);
      v24 = operations_research::sat::PresolveContext::LiteralForExpressionMax(*(this + 1), v21);
      v25 = v79;
      if (v22 > v79)
      {
        v71 = *(this + 1);
        v83 = 19;
        strcpy(__p, "lin_max: fix target");
        operations_research::sat::PresolveContext::UpdateRuleStats(v71, __p, 1, v10, v11);
        if (v83 < 0)
        {
          operator delete(*__p);
        }

        operations_research::sat::PresolveContext::SetLiteralToTrue(*(this + 1), v74);
        return 0;
      }

      v26 = v24;
      if (v23 > v80)
      {
        v72 = *(this + 1);
        strcpy(__p, "lin_max: fix BOOL expr");
        v83 = 22;
        operations_research::sat::PresolveContext::UpdateRuleStats(v72, __p, 1, v10, v11);
        if (v83 < 0)
        {
          operator delete(*__p);
        }

        operations_research::sat::PresolveContext::SetLiteralToFalse(*(this + 1), v26);
        return 0;
      }

      if (v22 == v23)
      {
        v78 |= v22 == v79;
        goto LABEL_21;
      }

      if (v22 == v79)
      {
        v75 = v19;
        v27 = v18;
        v28 = v18 >> 2;
        if (((v18 >> 2) + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v18 >> 2 != -1)
        {
          if (!(((v18 >> 2) + 1) >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(4 * v28) = ~v24;
        v18 = 4 * v28 + 4;
        memcpy(0, 0, v27);
        v19 = v75;
        v25 = v79;
        if (v23 == v80)
        {
LABEL_34:
          v29 = v81 - v19;
          v30 = (v81 - v19) >> 2;
          v31 = v30 + 1;
          if ((v30 + 1) >> 62)
          {
            goto LABEL_121;
          }

          if (-v19 >> 1 > v31)
          {
            v31 = -v19 >> 1;
          }

          if (-v19 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v32 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v32 = v31;
          }

          if (v32)
          {
            if (!(v32 >> 62))
            {
              operator new();
            }

            goto LABEL_122;
          }

          *(4 * v30) = v26;
          v81 = 4 * v30 + 4;
          memcpy(0, v19, v29);
          v19 = 0;
          if (v77 >= v76)
          {
            v33 = v77;
            v34 = v77 >> 2;
            v37 = (v77 >> 2) + 1;
            if (v37 >> 62)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (v76 >> 1 > v37)
            {
              v37 = v76 >> 1;
            }

            if (v76 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v36 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v36 = v37;
            }

            if (v36)
            {
              if (!(v36 >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

LABEL_68:
            v76 = 4 * v36;
            *(4 * v34) = v26;
            v77 = 4 * v34 + 4;
            memcpy(0, 0, v33);
            goto LABEL_21;
          }

          *v77 = v26;
          v77 += 4;
          goto LABEL_21;
        }
      }

      else if (v23 == v80)
      {
        goto LABEL_34;
      }

      if (v23 <= v25)
      {
        if (v23 == v25)
        {
          v38 = v18;
          v39 = v18 >> 2;
          if (((v18 >> 2) + 1) >> 62)
          {
LABEL_121:
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (v18 >> 2 != -1)
          {
            if (!(((v18 >> 2) + 1) >> 62))
            {
              operator new();
            }

LABEL_122:
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(4 * v39) = v26;
          v18 = 4 * v39 + 4;
          memcpy(0, 0, v38);
        }
      }

      else
      {
        if (v77 >= v76)
        {
          v33 = v77;
          v34 = v77 >> 2;
          v35 = (v77 >> 2) + 1;
          if (v35 >> 62)
          {
            goto LABEL_121;
          }

          if (v76 >> 1 > v35)
          {
            v35 = v76 >> 1;
          }

          if (v76 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v36 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v36 = v35;
          }

          if (v36)
          {
            if (!(v36 >> 62))
            {
              operator new();
            }

            goto LABEL_122;
          }

          goto LABEL_68;
        }

        *v77 = v26;
        v77 += 4;
      }

LABEL_21:
      ++v16;
      v20 -= 8;
      if (!v20)
      {
        goto LABEL_75;
      }
    }
  }

  return result;
}

void sub_23CA7D5C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if (v28)
    {
LABEL_8:
      operator delete(v28);
      if (a18)
      {
LABEL_9:
        operator delete(a18);
        if (a16)
        {
LABEL_10:
          operator delete(a16);
          _Unwind_Resume(a1);
        }

LABEL_7:
        _Unwind_Resume(a1);
      }

LABEL_6:
      if (a16)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else if (v28)
  {
    goto LABEL_8;
  }

  if (a18)
  {
    goto LABEL_9;
  }

  goto LABEL_6;
}

uint64_t operations_research::sat::CpModelPresolver::CanonicalizeLinear(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  if (*(a2 + 15) != 12)
  {
    return 0;
  }

  v6 = *(this + 1);
  if (*(v6 + 416))
  {
    return 0;
  }

  if (!*(*(a2 + 6) + 64))
  {
    v36 = 17;
    strcpy(__p, "linear: no domain");
    operations_research::sat::PresolveContext::UpdateRuleStats(v6, __p, 1, a4, a5);
    v21 = this;
    if (v36 < 0)
    {
      operator delete(*__p);
      v21 = this;
    }

    return operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(v21, a2, v18, v19, v20);
  }

  v10 = operations_research::sat::PresolveContext::CanonicalizeLinearConstraint(v6, a2);
  v7 = v10 | operations_research::sat::CpModelPresolver::DivideLinearByGcd(this, a2, v11, v12, v13);
  if (*(a2 + 15) == 12)
  {
    v15 = *(a2 + 6);
    v16 = *(v15 + 40);
    if (!v16)
    {
      return v7;
    }

    v17 = *(v15 + 48);
    if ((v17->i64[0] & 0x8000000000000000) == 0)
    {
      return v7;
    }
  }

  else
  {
    if (!dword_2810BEE70 || (*off_2810BEE78 & 0x8000000000000000) == 0)
    {
      return v7;
    }

    operations_research::sat::ConstraintProto::clear_constraint(a2);
    *(a2 + 15) = 12;
    v22 = *(a2 + 1);
    if (v22)
    {
      v23 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(*(v22 & 0xFFFFFFFFFFFFFFFELL));
      *(a2 + 6) = v23;
      v16 = *(v23 + 10);
      if (!v16)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v23 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v22);
      *(a2 + 6) = v23;
      v16 = *(v23 + 10);
      if (!v16)
      {
        goto LABEL_25;
      }
    }

    v17 = v23[6];
  }

  v24 = &v17->i64[v16];
  v25 = v24 - v17 - 8;
  if (v25 <= 0x17)
  {
    v26 = v17;
    do
    {
LABEL_24:
      *v26 = -*v26;
      ++v26;
    }

    while (v26 != v24);
    goto LABEL_25;
  }

  v27 = (v25 >> 3) + 1;
  v26 = &v17->i64[v27 & 0x3FFFFFFFFFFFFFFCLL];
  v28 = v17 + 1;
  v29 = v27 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v14 = vnegq_s64(v28[-1]);
    v30 = vnegq_s64(*v28);
    v28[-1] = v14;
    *v28 = v30;
    v28 += 2;
    v29 -= 4;
  }

  while (v29);
  if (v27 != (v27 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_24;
  }

LABEL_25:
  if (*(a2 + 15) == 12)
  {
    v31 = *(a2 + 6);
  }

  else
  {
    v31 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  operations_research::Domain::FromFlatSpanOfIntervals(v31[9], *(v31 + 16), v34, v14);
  operations_research::Domain::Negation(__p, v34);
  if (*(a2 + 15) == 12)
  {
    v32 = *(a2 + 6);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(a2);
    *(a2 + 15) = 12;
    v33 = *(a2 + 1);
    if (v33)
    {
      v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
    }

    v32 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v33);
    *(a2 + 6) = v32;
  }

  operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(__p, v32);
  if (__p[0])
  {
    operator delete(*&__p[8]);
  }

  if ((v34[0] & 1) == 0)
  {
    return v7;
  }

  operator delete(v34[1]);
  return v7;
}

void sub_23CA7D940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, uint64_t a13, void *a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveIntProd(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  v224 = *MEMORY[0x277D85DE8];
  if ((*(*(this + 1) + 416) & 1) != 0 || *(a2 + 4))
  {
    goto LABEL_3;
  }

  v216 = 0;
  operations_research::Domain::Domain(&v219, 1);
  v5 = *(a2 + 15);
  if (v5 != 11)
  {
    if (qword_2810BEFF0)
    {
      v10 = (qword_2810BEFF0 + 7);
    }

    else
    {
      v10 = &qword_2810BEFF0;
    }

    v11 = dword_2810BEFF8;
    if (!dword_2810BEFF8)
    {
      goto LABEL_22;
    }

LABEL_15:
    v12 = 8 * v11;
    do
    {
      operations_research::sat::PresolveContext::DomainSuperSetOf(v213, *(this + 1), *v10);
      operations_research::Domain::ContinuousMultiplicationBy(&v217, &v219, v213, v13);
      if (v219)
      {
        operator delete(v220);
      }

      v219 = v217;
      v220 = v218;
      v217 = 0;
      if (v213[0].__r_.__value_.__s.__data_[0])
      {
        operator delete(v213[0].__r_.__value_.__l.__size_);
      }

      ++v10;
      v12 -= 8;
    }

    while (v12);
    v5 = *(a2 + 15);
    goto LABEL_22;
  }

  v6 = *(a2 + 6);
  v8 = *(v6 + 24);
  v7 = v6 + 24;
  v9 = (v8 + 7);
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  v11 = *(v7 + 8);
  if (v11)
  {
    goto LABEL_15;
  }

LABEL_22:
  v14 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  if (v5 == 11)
  {
    v14 = *(a2 + 6);
  }

  if (v14[6])
  {
    v15 = v14[6];
  }

  else
  {
    v15 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v2 = operations_research::sat::PresolveContext::IntersectDomainWith(*(this + 1), v15, &v219, &v216);
  if (v219)
  {
    operator delete(v220);
  }

  if (!v2)
  {
    return v2 & 1;
  }

  if (*(a2 + 15) == 11)
  {
    v17 = *(a2 + 6);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(a2);
    *(a2 + 15) = 11;
    v18 = *(a2 + 1);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearArgumentProto>(v18);
    *(a2 + 6) = v17;
  }

  v19 = 0;
  v209 = 0;
  v20 = 0;
  v208 = v17;
  v21 = v17 + 3;
  v22 = 1;
  for (i = 1; ; ++i)
  {
    v24 = *(a2 + 15);
    if (v24 != 11)
    {
      break;
    }

    v25 = *(a2 + 6);
    if (v19 >= *(v25 + 8))
    {
      goto LABEL_53;
    }

LABEL_41:
    v27 = v25[3];
    v26 = (v25 + 3);
    v28 = &v27[i - 1] + 7;
    if (v27)
    {
      v29 = v28;
    }

    else
    {
      v29 = v26;
    }

    operations_research::sat::LinearExpressionProto::LinearExpressionProto(&v219, 0, *v29);
    if (operations_research::sat::PresolveContext::IsFixed(*(this + 1), &v219))
    {
      operations_research::sat::PresolveContext::FixedValue(*(this + 1), &v219);
      operator new();
    }

    v30 = operations_research::sat::LinearExpressionGcd(&v219, 0);
    operations_research::sat::DivideLinearExpression(v30, &v219, v31);
    if ((v22 * v30) >> 64 == (v22 * v30) >> 63)
    {
      v22 *= v30;
    }

    else
    {
      v22 = ((v30 ^ v22) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    }

    if (*v21)
    {
      v32 = (*v21 + 8 * v20 + 7);
    }

    else
    {
      v32 = v21;
    }

    operations_research::sat::LinearExpressionProto::CopyFrom(*v32, &v219);
    ++v20;
    operations_research::sat::LinearExpressionProto::~LinearExpressionProto(&v219);
    ++v19;
  }

  if (v19 < dword_2810BEFF8)
  {
    v25 = &operations_research::sat::_LinearArgumentProto_default_instance_;
    goto LABEL_41;
  }

LABEL_53:
  v33 = *(v208 + 3);
  if (v33)
  {
    v34 = (v33 + 7);
  }

  else
  {
    v34 = v21;
  }

  v35 = *(v208 + 8);
  v36 = v35 - v20;
  if (v35 - v20 < 1)
  {
    v39 = a2;
    if (v24 == 11)
    {
      goto LABEL_61;
    }

LABEL_72:
    if (dword_2810BEFF8)
    {
      v45 = v22 == 0;
    }

    else
    {
      v45 = 1;
    }

    v40 = &operations_research::sat::_LinearArgumentProto_default_instance_;
    if (v45)
    {
      goto LABEL_77;
    }

LABEL_65:
    v42 = v40[6];
    if (v42)
    {
      v43 = v42;
    }

    else
    {
      v43 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }

    if (!operations_research::sat::PresolveContext::IsFixed(*(this + 1), v43) || (*(a2 + 15) != 11 ? (v44 = &operations_research::sat::_LinearArgumentProto_default_instance_) : (v44 = *(a2 + 6)), (v50 = v44[6]) != 0 ? (v51 = v50) : (v51 = &operations_research::sat::_LinearExpressionProto_default_instance_), !operations_research::sat::PresolveContext::FixedValue(*(this + 1), v51) ? (v52 = v22 == 1) : (v52 = 1), v52))
    {
      if ((v22 - 0x7FFFFFFFFFFFFFFFLL) <= 1)
      {
        operator new();
      }
    }

    else
    {
      v53 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(&v219, "int_prod: simplify by constant factor");
      operations_research::sat::PresolveContext::UpdateRuleStats(v53, &v219, 1, v54, v55);
      if (SHIBYTE(v220) < 0)
      {
        operator delete(v219);
      }

      v22 = 1;
    }

    v56 = a2;
    if (*(a2 + 15) == 11)
    {
      v57 = *(a2 + 6);
      if (*(v57 + 32) != 1)
      {
LABEL_146:
        if (v22 == 1)
        {
          goto LABEL_175;
        }

        if (*(v56 + 15) == 11)
        {
          v89 = *(v56 + 6);
        }

        else
        {
          v89 = &operations_research::sat::_LinearArgumentProto_default_instance_;
        }

        v90 = v89[6];
        if (v90)
        {
          v91 = v90;
        }

        else
        {
          v91 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        operations_research::sat::LinearExpressionProto::LinearExpressionProto(&v219, 0, v91);
        if (!operations_research::sat::PresolveContext::IsFixed(*(this + 1), &v219))
        {
          v92 = *v221;
          if ((operations_research::sat::PresolveContext::CanonicalizeAffineVariable(*(this + 1), *v221, *v222, v22, -v223) & 1) == 0)
          {
            LOBYTE(v2) = 0;
LABEL_168:
            operations_research::sat::LinearExpressionProto::~LinearExpressionProto(&v219);
            return v2 & 1;
          }

          operations_research::sat::PresolveContext::IsFixed(*(this + 1), v92);
        }

        if (operations_research::sat::PresolveContext::IsFixed(*(this + 1), &v219))
        {
          v93 = operations_research::sat::PresolveContext::FixedValue(*(this + 1), &v219);
          v94 = v93 / v22;
          if (v93 % v22)
          {
            IsUnsat = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(*(this + 1), "int_prod: constant factor does not divide constant target", 57);
LABEL_167:
            LOBYTE(v2) = IsUnsat;
            goto LABEL_168;
          }

          v114 = *(v208 + 6);
          if (v114)
          {
            operations_research::sat::LinearExpressionProto::Clear(v114);
          }

          *(v208 + 4) &= ~1u;
          operations_research::sat::LinearArgumentProto::mutable_target(v208);
          *(v115 + 64) = v94;
          v116 = *(this + 1);
          std::string::basic_string[abi:ne200100]<0>(&v217, "int_prod: divide product and fixed target by constant factor");
          operations_research::sat::PresolveContext::UpdateRuleStats(v116, &v217, 1, v117, v118);
          if ((SHIBYTE(v218) & 0x80000000) == 0)
          {
            goto LABEL_174;
          }

          v113 = v217;
        }

        else
        {
          operations_research::sat::PresolveContext::GetAffineRelation(&v217, *(this + 1), *v221);
          v96 = *v222;
          v97 = (v218 * *v222) >> 64;
          v98 = v218 * *v222;
          v99 = __divti3();
          *&v213[0].__r_.__value_.__l.__data_ = __PAIR128__(v97, v98) - __PAIR128__(v100, v99) * v22;
          if (*&v213[0].__r_.__value_.__l.__data_ != 0)
          {
            absl::lts_20240722::log_internal::MakeCheckOpString<absl::lts_20240722::int128 const&,long long>(v213, 0, "temp_coeff % absl::int128(constant_factor) == 0");
          }

          v101 = v99;
          v102 = v100;
          v103 = *(&v218 + 1) * v96 + v223;
          v104 = __divti3();
          *&v213[0].__r_.__value_.__l.__data_ = v103 - __PAIR128__(v105, v104) * v22;
          if (*&v213[0].__r_.__value_.__l.__data_ != 0)
          {
            absl::lts_20240722::log_internal::MakeCheckOpString<absl::lts_20240722::int128 const&,long long>(v213, 0, "temp_offset % absl::int128(constant_factor) == 0");
          }

          v106 = v104;
          if ((v101 >= 0x8000000000000000) + v102 || __CFADD__(v104, 0x8000000000000000) + v105)
          {
            IsUnsat = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(*(this + 1), "int_prod: overflow during simplification.", 41);
            goto LABEL_167;
          }

          operations_research::sat::LinearArgumentProto::mutable_target(v208);
          **(v107 + 48) = v101;
          operations_research::sat::LinearArgumentProto::mutable_target(v208);
          **(v108 + 24) = v217;
          operations_research::sat::LinearArgumentProto::mutable_target(v208);
          *(v109 + 64) = v106;
          v110 = *(this + 1);
          std::string::basic_string[abi:ne200100]<0>(v213, "int_prod: divide product by constant factor");
          operations_research::sat::PresolveContext::UpdateRuleStats(v110, v213, 1, v111, v112);
          if ((SHIBYTE(v213[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_174;
          }

          v113 = v213[0].__r_.__value_.__r.__words[0];
        }

        operator delete(v113);
LABEL_174:
        operations_research::sat::LinearExpressionProto::~LinearExpressionProto(&v219);
        v209 = 1;
LABEL_175:
        operations_research::Domain::Domain(&v214, 1);
        if (*(a2 + 15) == 11)
        {
          v119 = *(a2 + 6);
          if (*(v119 + 8) != 2)
          {
LABEL_187:
            v119 = *(a2 + 6);
            goto LABEL_197;
          }
        }

        else
        {
          v119 = &operations_research::sat::_LinearArgumentProto_default_instance_;
          if (dword_2810BEFF8 != 2)
          {
LABEL_197:
            v136 = v119[3];
            v135 = v119 + 3;
            v137 = (v136 + 7);
            if (v136)
            {
              v138 = v137;
            }

            else
            {
              v138 = v135;
            }

            v139 = *(v135 + 2);
            if (v139)
            {
              v140 = 8 * v139;
              do
              {
                operations_research::sat::PresolveContext::DomainSuperSetOf(&v217, *(this + 1), *v138);
                operations_research::Domain::ContinuousMultiplicationBy(&v219, &v214, &v217, v141);
                if (v214)
                {
                  operator delete(v215[0]);
                }

                v214 = v219;
                *v215 = v220;
                v219 = 0;
                if (v217)
                {
                  operator delete(v218);
                }

                ++v138;
                v140 -= 8;
              }

              while (v140);
            }

            v134 = 0;
            goto LABEL_208;
          }
        }

        v120 = (v119 + 3);
        v123 = v119[3];
        v122 = (v119 + 3);
        v121 = v123;
        v124 = (v123 + 7);
        v125 = (v123 & 1) == 0;
        if (v123)
        {
          v120 = v124;
        }

        v126 = *v120;
        v127 = (v121 + 15);
        if (v125)
        {
          v127 = v122;
        }

        v128 = operations_research::sat::LinearExpressionProtosAreEqual(v126, *v127, 1);
        v129 = *(a2 + 15);
        if (v128)
        {
          if (v129 == 11)
          {
            v130 = *(a2 + 6);
          }

          else
          {
            v130 = &operations_research::sat::_LinearArgumentProto_default_instance_;
          }

          v132 = v130[3];
          v131 = (v130 + 3);
          v133 = (v132 + 7);
          if (v132)
          {
            v131 = v133;
          }

          operations_research::sat::PresolveContext::DomainSuperSetOf(&v217, *(this + 1), *v131);
          operations_research::Domain::SquareSuperset(&v219, &v217);
          if (v214)
          {
            operator delete(v215[0]);
          }

          v214 = v219;
          *v215 = v220;
          v219 = 0;
          if (v217)
          {
            operator delete(v218);
          }

          v134 = 1;
LABEL_208:
          v142 = &operations_research::sat::_LinearArgumentProto_default_instance_;
          if (*(a2 + 15) == 11)
          {
            v142 = *(a2 + 6);
          }

          v143 = v142[6];
          if (v143)
          {
            v144 = v143;
          }

          else
          {
            v144 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          if (operations_research::sat::PresolveContext::IntersectDomainWith(*(this + 1), v144, &v214, &v216))
          {
            if (v216)
            {
              v145 = *(this + 1);
              v146 = 8;
              if (v134)
              {
                v146 = 10;
              }

              v147 = "int_prod";
              if (v134)
              {
                v147 = "int_square";
              }

              v219 = v147;
              *&v220 = v146;
              v217 = ": reduced target domain.";
              *&v218 = 24;
              absl::lts_20240722::StrCat(&v219, &v217, v213);
              operations_research::sat::PresolveContext::UpdateRuleStats(v145, v213, 1, v148, v149);
              if (SHIBYTE(v213[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v213[0].__r_.__value_.__l.__data_);
              }
            }

            if (!v134)
            {
LABEL_239:
              if (*(a2 + 15) == 11)
              {
                v165 = *(a2 + 6);
                if (*(v165 + 8) != 2)
                {
LABEL_275:
                  v189 = *(a2 + 6);
LABEL_277:
                  v190 = v189[6];
                  if (v190)
                  {
                    v191 = v190;
                  }

                  else
                  {
                    v191 = &operations_research::sat::_LinearExpressionProto_default_instance_;
                  }

                  operations_research::sat::LinearExpressionProto::LinearExpressionProto(&v219, 0, v191);
                  LODWORD(v213[0].__r_.__value_.__l.__data_) = 0;
                  if (operations_research::sat::PresolveContext::ExpressionIsALiteral(*(this + 1), &v219, v213))
                  {
                    if (*(a2 + 15) == 11)
                    {
                      v192 = *(a2 + 6);
                    }

                    else
                    {
                      v192 = &operations_research::sat::_LinearArgumentProto_default_instance_;
                    }

                    v195 = v192[3];
                    v194 = v192 + 3;
                    v196 = (v195 + 7);
                    if (v195)
                    {
                      v197 = v196;
                    }

                    else
                    {
                      v197 = v194;
                    }

                    if (*(v194 + 2))
                    {
                      v198 = *v197;
                      LODWORD(v217) = 0;
                      if (operations_research::sat::PresolveContext::ExpressionIsALiteral(*(this + 1), v198, &v217))
                      {
                        operator new();
                      }

                      v193 = v209;
                    }

                    else
                    {
                      v202 = *(this + 1);
                      std::string::basic_string[abi:ne200100]<0>(&v217, "int_prod: all Boolean.");
                      operations_research::sat::PresolveContext::UpdateRuleStats(v202, &v217, 1, v203, v204);
                      if (SHIBYTE(v218) < 0)
                      {
                        operator delete(v217);
                      }

                      v205 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
                      operations_research::sat::BoolArgumentProto::add_literals(v205, v213[0].__r_.__value_.__l.__data_);
                      operations_research::sat::ConstraintProto::mutable_BOOL_and(v205);
                      v206 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
                      v207 = operations_research::sat::ConstraintProto::mutable_BOOL_or(v206);
                      operations_research::sat::BoolArgumentProto::add_literals(v207, v213[0].__r_.__value_.__l.__data_);
                      operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
                      operations_research::sat::ConstraintProto::Clear(a2);
                      v193 = 1;
                    }
                  }

                  else
                  {
                    v193 = v209;
                  }

                  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(&v219);
                  LOBYTE(v2) = v193;
                  goto LABEL_299;
                }
              }

              else
              {
                if (dword_2810BEFF8 != 2)
                {
                  goto LABEL_276;
                }

                v165 = &operations_research::sat::_LinearArgumentProto_default_instance_;
              }

              v167 = v165[3];
              v166 = (v165 + 3);
              v168 = (v167 + 7);
              if (v167)
              {
                v166 = v168;
              }

              operations_research::sat::LinearExpressionProto::LinearExpressionProto(&v219, 0, *v166);
              if (*(a2 + 15) == 11)
              {
                v169 = *(a2 + 6);
              }

              else
              {
                v169 = &operations_research::sat::_LinearArgumentProto_default_instance_;
              }

              v178 = v169[3];
              v177 = (v169 + 3);
              v179 = (v178 + 15);
              if (v178)
              {
                v177 = v179;
              }

              operations_research::sat::LinearExpressionProto::LinearExpressionProto(&v217, 0, *v177);
              if (*(a2 + 15) == 11)
              {
                v180 = *(a2 + 6);
              }

              else
              {
                v180 = &operations_research::sat::_LinearArgumentProto_default_instance_;
              }

              v181 = v180[6];
              if (v181)
              {
                v182 = v181;
              }

              else
              {
                v182 = &operations_research::sat::_LinearExpressionProto_default_instance_;
              }

              operations_research::sat::LinearExpressionProto::LinearExpressionProto(v213, 0, v182);
              if (operations_research::sat::LinearExpressionProtosAreEqual(&v219, &v217, 1) && operations_research::sat::LinearExpressionProtosAreEqual(&v219, v213, 1))
              {
                v183 = *(this + 1);
                operations_research::Domain::Domain(v211, 0, 1);
                v184 = operations_research::sat::PresolveContext::IntersectDomainWith(v183, v213, v211, 0);
                if (v211[0])
                {
                  operator delete(v211[1]);
                }

                if (v184)
                {
                  v185 = *(this + 1);
                  std::string::basic_string[abi:ne200100]<0>(v211, "int_square: fix variable to zero or one.");
                  operations_research::sat::PresolveContext::UpdateRuleStats(v185, v211, 1, v186, v187);
                  if (v212 < 0)
                  {
                    operator delete(v211[0]);
                  }

                  operations_research::sat::ConstraintProto::Clear(a2);
                  v188 = 0;
                  LOBYTE(v2) = 1;
                }

                else
                {
                  v188 = 0;
                  LOBYTE(v2) = 0;
                }
              }

              else
              {
                LOBYTE(v2) = 0;
                v188 = 1;
              }

              operations_research::sat::LinearExpressionProto::~LinearExpressionProto(v213);
              operations_research::sat::LinearExpressionProto::~LinearExpressionProto(&v217);
              operations_research::sat::LinearExpressionProto::~LinearExpressionProto(&v219);
              if ((v188 & 1) == 0)
              {
                goto LABEL_299;
              }

              if (*(a2 + 15) == 11)
              {
                goto LABEL_275;
              }

LABEL_276:
              v189 = &operations_research::sat::_LinearArgumentProto_default_instance_;
              goto LABEL_277;
            }

            if (*(a2 + 15) == 11)
            {
              v150 = *(a2 + 6);
            }

            else
            {
              v150 = &operations_research::sat::_LinearArgumentProto_default_instance_;
            }

            v151 = v150[6];
            if (v151)
            {
              v152 = v151;
            }

            else
            {
              v152 = &operations_research::sat::_LinearExpressionProto_default_instance_;
            }

            v153 = operations_research::sat::PresolveContext::MaxOf(*(this + 1), v152);
            v154 = operations_research::sat::FloorSquareRoot(v153);
            LOBYTE(v217) = 0;
            if (*(a2 + 15) == 11)
            {
              v155 = *(a2 + 6);
            }

            else
            {
              v155 = &operations_research::sat::_LinearArgumentProto_default_instance_;
            }

            v157 = v155[3];
            v156 = (v155 + 3);
            v158 = *(this + 1);
            v159 = (v157 + 7);
            if (v157)
            {
              v156 = v159;
            }

            v160 = *v156;
            operations_research::Domain::Domain(&v219, -v154, v154);
            v161 = operations_research::sat::PresolveContext::IntersectDomainWith(v158, v160, &v219, &v217);
            if (v219)
            {
              operator delete(v220);
            }

            if (v161)
            {
              if (v217 == 1)
              {
                v162 = *(this + 1);
                std::string::basic_string[abi:ne200100]<0>(&v219, "int_square: reduced expr domain.");
                operations_research::sat::PresolveContext::UpdateRuleStats(v162, &v219, 1, v163, v164);
                if (SHIBYTE(v220) < 0)
                {
                  operator delete(v219);
                }
              }

              goto LABEL_239;
            }
          }

          LOBYTE(v2) = 0;
LABEL_299:
          if (v214)
          {
            operator delete(v215[0]);
          }

          return v2 & 1;
        }

        if (v129 != 11)
        {
          v119 = &operations_research::sat::_LinearArgumentProto_default_instance_;
          goto LABEL_197;
        }

        goto LABEL_187;
      }
    }

    else
    {
      if (dword_2810BEFF8 != 1)
      {
        goto LABEL_146;
      }

      operations_research::sat::ConstraintProto::clear_constraint(a2);
      *(a2 + 15) = 11;
      v58 = *(a2 + 1);
      if (v58)
      {
        v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearArgumentProto>(v58);
      v57 = v59;
      *(a2 + 6) = v59;
    }

    *(v57 + 16) |= 1u;
    v60 = *(v57 + 48);
    if (!v60)
    {
      v61 = *(v57 + 8);
      if (v61)
      {
        v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v61);
      v60 = v62;
      *(v57 + 48) = v62;
    }

    v63 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    v64 = v63;
    if (*(v63 + 60) == 12)
    {
      v65 = *(v63 + 48);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v63);
      *(v64 + 60) = 12;
      v66 = *(v64 + 8);
      if (v66)
      {
        v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
      }

      v65 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v66);
      *(v64 + 48) = v65;
    }

    if (operations_research::sat::PresolveContext::IsFixed(*(this + 1), v60))
    {
      v67 = operations_research::sat::PresolveContext::FixedValue(*(this + 1), v60);
      v68 = v67 / v22;
      if (v67 % v22)
      {
        LOBYTE(v2) = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(*(this + 1), "int_prod: product incompatible with fixed target", 48);
        return v2 & 1;
      }

      operations_research::sat::LinearConstraintProto::add_domain(v65, v68);
      operations_research::sat::LinearConstraintProto::add_domain(v65, v68);
      if (*(a2 + 15) == 11)
      {
        v76 = *(a2 + 6);
      }

      else
      {
        v76 = &operations_research::sat::_LinearArgumentProto_default_instance_;
      }

      v171 = v76[3];
      v170 = (v76 + 3);
      v172 = (v171 + 7);
      if (v171)
      {
        v170 = v172;
      }

      operations_research::sat::AddLinearExpressionToLinearConstraint(*v170, 1, v65, v74, v75);
      operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
      v173 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(&v219, "int_prod: expression is constant.");
      operations_research::sat::PresolveContext::UpdateRuleStats(v173, &v219, 1, v174, v175);
      v176 = a2;
      if (SHIBYTE(v220) < 0)
      {
        operator delete(v219);
        v176 = a2;
      }
    }

    else
    {
      v69 = operations_research::sat::LinearExpressionGcd(v60, 0);
      if (v22 >= 0)
      {
        v71 = v22;
      }

      else
      {
        v71 = -v22;
      }

      if (v69)
      {
        if (v69 >= 0)
        {
          v72 = v69;
        }

        else
        {
          v72 = -v69;
        }

        do
        {
          v73 = v72;
          v72 = v71 % v72;
          v71 = v73;
        }

        while (v72);
      }

      else
      {
        v73 = v71;
      }

      if (v73 != 1)
      {
        operations_research::sat::DivideLinearExpression(v73, v60, v70);
        v22 /= v73;
      }

      operations_research::sat::LinearConstraintProto::add_domain(v65, 0);
      operations_research::sat::LinearConstraintProto::add_domain(v65, 0);
      if (*(a2 + 15) == 11)
      {
        v79 = *(a2 + 6);
      }

      else
      {
        v79 = &operations_research::sat::_LinearArgumentProto_default_instance_;
      }

      v80 = v79[6];
      if (v80)
      {
        v81 = v80;
      }

      else
      {
        v81 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      if (!operations_research::sat::SafeAddLinearExpressionToLinearConstraint(v81, 1uLL, v65, v77, v78))
      {
        goto LABEL_145;
      }

      if (*(a2 + 15) == 11)
      {
        v84 = *(a2 + 6);
      }

      else
      {
        v84 = &operations_research::sat::_LinearArgumentProto_default_instance_;
      }

      v86 = v84[3];
      v85 = (v84 + 3);
      v87 = (v86 + 7);
      if (v86)
      {
        v85 = v87;
      }

      if (!operations_research::sat::SafeAddLinearExpressionToLinearConstraint(*v85, -v22, v65, v82, v83) || operations_research::sat::PossibleIntegerOverflow(**(this + 1), v65[3], *(v65 + 4), v65[6], *(v65 + 10), *v65[9]))
      {
LABEL_145:
        google::protobuf::RepeatedPtrField<operations_research::sat::ConstraintProto>::RemoveLast(**(this + 1) + 48);
        operations_research::sat::ConstraintProto::mutable_int_prod(a2);
        *(google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v88 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>) + 64) = v22;
        v56 = a2;
        goto LABEL_146;
      }

      operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
      v199 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(&v219, "int_prod: linearize product by constant.");
      operations_research::sat::PresolveContext::UpdateRuleStats(v199, &v219, 1, v200, v201);
      v176 = a2;
      if (SHIBYTE(v220) < 0)
      {
        operator delete(v219);
        v176 = a2;
      }
    }

    operations_research::sat::ConstraintProto::Clear(v176);
    LOBYTE(v2) = 1;
    return v2 & 1;
  }

  if (!*(v208 + 5))
  {
    v37 = &v34[v20];
    v38 = (v35 - v20);
    do
    {
      google::protobuf::internal::InternalOutOfLineDeleteMessageLite(*v37++, v16);
      --v38;
    }

    while (v38);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(v21, v20, v36);
  v39 = a2;
  if (*(a2 + 15) != 11)
  {
    goto LABEL_72;
  }

LABEL_61:
  v40 = *(v39 + 6);
  if (*(v40 + 8))
  {
    v41 = v22 == 0;
  }

  else
  {
    v41 = 1;
  }

  if (!v41)
  {
    goto LABEL_65;
  }

LABEL_77:
  v46 = *(this + 1);
  v47 = v40[6];
  if (v47)
  {
    v48 = v47;
  }

  else
  {
    v48 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  operations_research::Domain::Domain(&v219, v22);
  v49 = operations_research::sat::PresolveContext::IntersectDomainWith(v46, v48, &v219, 0);
  if (v219)
  {
    operator delete(v220);
  }

  if (v49)
  {
    operator new();
  }

LABEL_3:
  LOBYTE(v2) = 0;
  return v2 & 1;
}

void sub_23CA7EF54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, int a18, __int16 a19, char a20, char a21, void *a22, void *a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, void *__p, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (v45)
  {
    operator delete(v45);
  }

  operations_research::sat::LinearExpressionProto::~LinearExpressionProto((v46 - 184));
  if (a36)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::ConstraintProto::mutable_int_prod(operations_research::sat::ConstraintProto *this)
{
  if (*(this + 15) != 11)
  {
    operations_research::sat::ConstraintProto::clear_constraint(this);
    *(this + 15) = 11;
    v2 = *(this + 1);
    if (v2)
    {
      google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearArgumentProto>(*(v2 & 0xFFFFFFFFFFFFFFFELL));
    }

    else
    {
      google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearArgumentProto>(v2);
    }

    *(this + 6) = v3;
  }
}

uint64_t google::protobuf::RepeatedPtrField<operations_research::sat::LinearExpressionProto>::erase(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::MessageLite *a2, uint64_t a3)
{
  v4 = *this & 1;
  v5 = (*this + 7);
  if (!v4)
  {
    v5 = this;
  }

  v6 = (a2 - v5) >> 3;
  v7 = ((a3 - v5) >> 3) - v6;
  v8 = (a2 - v5) << 29;
  if (v7 < 1)
  {
    v12 = *this - 1;
  }

  else
  {
    if (!*(this + 2))
    {
      v9 = 8 * (((a3 - v5) >> 3) - v6);
      v10 = (v5 + 8 * v6);
      do
      {
        v11 = *v10++;
        google::protobuf::internal::InternalOutOfLineDeleteMessageLite(v11, a2);
        v9 -= 8;
      }

      while (v9);
    }

    google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(this, v6, v7);
    v4 = *this & 1;
    v12 = *this - 1;
  }

  v13 = (v12 + 8);
  if (v4)
  {
    v14 = v13;
  }

  else
  {
    v14 = this;
  }

  return v14 + (v8 >> 29);
}

uint64_t google::protobuf::RepeatedPtrField<operations_research::sat::ConstraintProto>::RemoveLast(uint64_t a1)
{
  v1 = *(a1 + 8) - 1;
  *(a1 + 8) = v1;
  v2 = *a1 + 8 * v1 + 7;
  if ((*a1 & 1) == 0)
  {
    v2 = a1;
  }

  return (*(**v2 + 24))();
}

uint64_t operations_research::sat::CpModelPresolver::PresolveIntDiv(operations_research::sat::CpModelPresolver *this, int a2, operations_research::sat::ConstraintProto *a3)
{
  if ((*(*(this + 1) + 416) & 1) == 0)
  {
    if (*(a3 + 15) == 7)
    {
      v7 = *(a3 + 6);
    }

    else
    {
      v7 = &operations_research::sat::_LinearArgumentProto_default_instance_;
    }

    v8 = v7[6];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }

    operations_research::sat::LinearExpressionProto::LinearExpressionProto(v134, 0, v9);
    if (*(a3 + 15) == 7)
    {
      v10 = *(a3 + 6);
    }

    else
    {
      v10 = &operations_research::sat::_LinearArgumentProto_default_instance_;
    }

    v12 = v10[3];
    v11 = (v10 + 3);
    v13 = (v12 + 7);
    if (v12)
    {
      v11 = v13;
    }

    operations_research::sat::LinearExpressionProto::LinearExpressionProto(v129, 0, *v11);
    if (*(a3 + 15) == 7)
    {
      v14 = *(a3 + 6);
    }

    else
    {
      v14 = &operations_research::sat::_LinearArgumentProto_default_instance_;
    }

    v16 = v14[3];
    v15 = (v14 + 3);
    v17 = (v16 + 15);
    if (v16)
    {
      v15 = v17;
    }

    operations_research::sat::LinearExpressionProto::LinearExpressionProto(v124, 0, *v15);
    if (operations_research::sat::LinearExpressionProtosAreEqual(v129, v124, 1))
    {
      v18 = *(this + 1);
      operations_research::Domain::Domain(__p, 1);
      v21 = operations_research::sat::PresolveContext::IntersectDomainWith(v18, v134, __p, 0);
      if (__p[0])
      {
        operator delete(__p[1]);
      }

      if (v21)
      {
        v22 = *(this + 1);
        HIBYTE(__p[2]) = 18;
        strcpy(__p, "int_div: y = x / x");
        operations_research::sat::PresolveContext::UpdateRuleStats(v22, __p, 1, v19, v20);
LABEL_29:
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        operations_research::sat::ConstraintProto::Clear(a3);
LABEL_32:
        v3 = 1;
LABEL_139:
        operations_research::sat::LinearExpressionProto::~LinearExpressionProto(v124);
        operations_research::sat::LinearExpressionProto::~LinearExpressionProto(v129);
        operations_research::sat::LinearExpressionProto::~LinearExpressionProto(v134);
        return v3;
      }

      goto LABEL_138;
    }

    if (operations_research::sat::LinearExpressionProtosAreEqual(v129, v124, 0xFFFFFFFFFFFFFFFFLL))
    {
      v23 = *(this + 1);
      operations_research::Domain::Domain(__p, -1);
      v26 = operations_research::sat::PresolveContext::IntersectDomainWith(v23, v134, __p, 0);
      if (__p[0])
      {
        operator delete(__p[1]);
      }

      if (v26)
      {
        v27 = *(this + 1);
        HIBYTE(__p[2]) = 20;
        strcpy(__p, "int_div: y = - x / x");
        operations_research::sat::PresolveContext::UpdateRuleStats(v27, __p, 1, v24, v25);
        goto LABEL_29;
      }

LABEL_138:
      v3 = 0;
      goto LABEL_139;
    }

    v28 = *(this + 1);
    if (!*(a3 + 4))
    {
      v29 = *(v28 + 81) + 24 * a2;
      v30 = *v29;
      if (*(v29 + 8) - *v29 == 4)
      {
        v31 = *v30;
        operations_research::sat::PresolveContext::DomainOf(__p, v28, *v30);
        v32 = operations_research::Domain::Size(__p);
        if (__p[0])
        {
          operator delete(__p[1]);
        }

        if (v32 < 100)
        {
          memset(__p, 0, sizeof(__p));
          operations_research::sat::PresolveContext::DomainOf(v120, *(this + 1), v31);
          operations_research::Domain::Values(v120, v121);
          if (v120[0])
          {
            operator delete(v120[1]);
          }

          if (v121[0] > 1)
          {
            v57 = (v121[0] & 1);
            v58 = &v121[1];
            v56 = v121[1];
            if (v121[0])
            {
              v58 = v121[1];
            }

            v55 = *v58;
          }

          else
          {
            v55 = 0;
            v56 = v121[1];
            v57 = v121[0];
          }

          if (v57)
          {
            v59 = v56;
          }

          else
          {
            v59 = &v121[1];
          }

          if ((v121[0] & 0x1FFFFFFFFFFFFFFELL) != 0)
          {
            v60 = &v59[2 * (v121[0] >> 1)];
            do
            {
              v61 = v138;
              v62 = v135;
              if (v135 >= 1)
              {
                v63 = v136;
                v64 = v137;
                do
                {
                  v66 = *v63++;
                  v65 = v66;
                  if (v66 != v31)
                  {
                    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v65, v31, "expr.vars(i) == var");
                  }

                  v67 = *v64++;
                  v61 += v67 * v55;
                  --v62;
                }

                while (v62);
              }

              v68 = v133;
              v69 = v130;
              if (v130 >= 1)
              {
                v70 = v131;
                v71 = v132;
                do
                {
                  v73 = *v70++;
                  v72 = v73;
                  if (v73 != v31)
                  {
                    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v72, v31, "expr.vars(i) == var");
                  }

                  v74 = *v71++;
                  v68 += v74 * v55;
                  --v69;
                }

                while (v69);
              }

              v75 = v128;
              v76 = v125;
              if (v125 >= 1)
              {
                v77 = v126;
                v78 = v127;
                do
                {
                  v80 = *v77++;
                  v79 = v80;
                  if (v80 != v31)
                  {
                    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v79, v31, "expr.vars(i) == var");
                  }

                  v81 = *v78++;
                  v75 += v81 * v55;
                  --v76;
                }

                while (v76);
              }

              if (v75 && v61 == v68 / v75)
              {
                v82 = __p[1];
                if (__p[1] >= __p[2])
                {
                  v84 = __p[0];
                  v85 = __p[1] - __p[0];
                  v86 = (__p[1] - __p[0]) >> 3;
                  v87 = v86 + 1;
                  if ((v86 + 1) >> 61)
                  {
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  v88 = __p[2] - __p[0];
                  if ((__p[2] - __p[0]) >> 2 > v87)
                  {
                    v87 = v88 >> 2;
                  }

                  if (v88 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v89 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v89 = v87;
                  }

                  if (v89)
                  {
                    if (!(v89 >> 61))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  *(8 * v86) = v55;
                  v83 = (8 * v86 + 8);
                  memcpy(0, v84, v85);
                  __p[0] = 0;
                  __p[1] = v83;
                  __p[2] = 0;
                  if (v84)
                  {
                    operator delete(v84);
                  }
                }

                else
                {
                  *__p[1] = v55;
                  v83 = v82 + 8;
                }

                __p[1] = v83;
              }

              if (v55 == v59[1])
              {
                v59 += 2;
                if (v59 != v60)
                {
                  v55 = *v59;
                }
              }

              else
              {
                v55 = v55 + 1;
              }
            }

            while (v59 != v60);
            v57 = (v121[0] & 1);
          }

          if (v57)
          {
            operator delete(v121[1]);
          }

          v90 = *(this + 1);
          std::vector<long long>::vector[abi:ne200100](v119, __p);
          operations_research::Domain::FromValues(v119, v121);
          operations_research::sat::PresolveContext::IntersectDomainWith(v90, v31, v121, 0);
          if (v121[0])
          {
            operator delete(v121[1]);
          }

          if (v119[0])
          {
            v119[1] = v119[0];
            operator delete(v119[0]);
          }

          v91 = *(this + 1);
          std::string::basic_string[abi:ne200100]<0>(v121, "int_div: single variable");
          operations_research::sat::PresolveContext::UpdateRuleStats(v91, v121, 1, v92, v93);
          if (v122 < 0)
          {
            operator delete(v121[0]);
          }

          operations_research::sat::ConstraintProto::Clear(a3);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          goto LABEL_32;
        }

        v33 = *(this + 1);
        std::string::basic_string[abi:ne200100]<0>(__p, "TODO int_div: single variable with large domain");
        operations_research::sat::PresolveContext::UpdateRuleStats(v33, __p, 1, v34, v35);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        v28 = *(this + 1);
      }
    }

    if (!operations_research::sat::PresolveContext::IsFixed(v28, v124))
    {
      goto LABEL_138;
    }

    v36 = operations_research::sat::PresolveContext::FixedValue(*(this + 1), v124);
    v37 = v36;
    v38 = v36 - 1;
    if (v36 != 1 && v36 != -1)
    {
      LOBYTE(v120[0]) = 0;
      operations_research::sat::PresolveContext::DomainSuperSetOf(v121, *(this + 1), v129);
      operations_research::Domain::DivisionBy(__p, v121, v37);
      if (v121[0])
      {
        operator delete(v121[1]);
      }

      if (operations_research::sat::PresolveContext::IntersectDomainWith(*(this + 1), v134, __p, v120))
      {
        if (LOBYTE(v120[0]) == 1)
        {
          IsFixed = operations_research::Domain::IsFixed(__p);
          v45 = *(this + 1);
          if (IsFixed)
          {
            std::string::basic_string[abi:ne200100]<0>(v121, "int_div: target has been fixed by propagating X / cte");
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(v121, "int_div: updated domain of target in target = X / cte");
          }

          operations_research::sat::PresolveContext::UpdateRuleStats(v45, v121, 1, v46, v47);
          if (v122 < 0)
          {
            operator delete(v121[0]);
          }
        }

        if (__p[0])
        {
          operator delete(__p[1]);
        }

        if (operations_research::sat::PresolveContext::IsFixed(*(this + 1), v134))
        {
          v94 = operations_research::sat::PresolveContext::FixedValue(*(this + 1), v134);
          v95 = v37 >= 0 ? v37 : -v37;
          v96 = v94 >= 0 ? v94 : -v94;
          v97 = v96 + 1;
          v98 = (v95 * v97) >> 64 == (v95 * v97) >> 63 ? v95 * v97 : ((v97 ^ v95) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          if (v98 <= 0x7FFFFFFFFFFFFFFDLL)
          {
            v102 = operations_research::sat::PresolveContext::FixedValue(*(this + 1), v134);
            if (v37 >= 0)
            {
              v103 = v102;
            }

            else
            {
              v103 = -v102;
            }

            if (v103 <= 0)
            {
              if (v103)
              {
                v104 = (v103 - 1) * v95 + 1;
                v105 = v103 * v95;
              }

              else
              {
                v104 = 1 - v95;
                v105 = v95 - 1;
              }
            }

            else
            {
              v104 = v103 * v95;
              v105 = v95 + v103 * v95 - 1;
            }

            operations_research::Domain::Domain(__p, v104, v105);
            LOBYTE(v120[0]) = 0;
            v3 = operations_research::sat::PresolveContext::IntersectDomainWith(*(this + 1), v129, __p, v120);
            if (v3)
            {
              v115 = *(this + 1);
              if (LOBYTE(v120[0]) == 1)
              {
                std::string::basic_string[abi:ne200100]<0>(v121, "int_div: target and divisor are fixed");
              }

              else
              {
                std::string::basic_string[abi:ne200100]<0>(v121, "int_div: always true");
              }

              operations_research::sat::PresolveContext::UpdateRuleStats(v115, v121, 1, v116, v117);
              if (v122 < 0)
              {
                operator delete(v121[0]);
              }

              operations_research::sat::ConstraintProto::Clear(a3);
            }

            if (__p[0])
            {
              operator delete(__p[1]);
            }

            goto LABEL_139;
          }
        }

        if ((operations_research::sat::PresolveContext::MinOf(*(this + 1), v134) & 0x8000000000000000) == 0)
        {
          v3 = 0;
          if (operations_research::sat::PresolveContext::MinOf(*(this + 1), v129) < 0 || v37 < 2)
          {
            goto LABEL_139;
          }

          v99 = operations_research::sat::PresolveContext::MaxOf(*(this + 1), v134);
          v100 = (v99 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          if ((v37 * v99) >> 64 == (v37 * v99) >> 63)
          {
            v100 = v37 * v99;
          }

          if (v100 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v106 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
            v107 = operations_research::sat::ConstraintProto::mutable_linear(v106);
            operations_research::sat::LinearConstraintProto::add_domain(v107, 0);
            operations_research::sat::LinearConstraintProto::add_domain(v107, v38);
            operations_research::sat::AddLinearExpressionToLinearConstraint(v129, 1, v107, v108, v109);
            operations_research::sat::AddLinearExpressionToLinearConstraint(v134, -v37, v107, v110, v111);
            operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
            v112 = *(this + 1);
            std::string::basic_string[abi:ne200100]<0>(__p, "int_div: linearize positive division with a constant divisor");
            operations_research::sat::PresolveContext::UpdateRuleStats(v112, __p, 1, v113, v114);
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            operations_research::sat::ConstraintProto::Clear(a3);
            goto LABEL_32;
          }
        }
      }

      else if (__p[0])
      {
        operator delete(__p[1]);
      }

      goto LABEL_138;
    }

    v39 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    v42 = v39;
    if (*(v39 + 60) == 12)
    {
      v43 = *(v39 + 48);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v39);
      *(v42 + 60) = 12;
      v48 = *(v42 + 8);
      if (v48)
      {
        v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
      }

      v43 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v48);
      *(v42 + 48) = v43;
    }

    v50 = *(v43 + 16);
    v49 = *(v43 + 17);
    if (v50 == v49)
    {
      google::protobuf::RepeatedField<long long>::Grow((v43 + 8), v49, (v49 + 1));
      v118 = *(v43 + 16);
      v49 = *(v43 + 17);
      v51 = v43[9];
      v52 = v118 + 1;
      *(v43 + 16) = v118 + 1;
      *(v51 + 8 * v118) = 0;
      if (v118 + 1 != v49)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v51 = v43[9];
      v52 = v50 + 1;
      *(v43 + 16) = v50 + 1;
      *(v51 + 8 * v50) = 0;
      if (v50 + 1 != v49)
      {
        goto LABEL_57;
      }
    }

    google::protobuf::RepeatedField<long long>::Grow((v43 + 8), v49, (v49 + 1));
    v52 = *(v43 + 16);
    v51 = v43[9];
LABEL_57:
    *(v43 + 16) = v52 + 1;
    *(v51 + 8 * v52) = 0;
    operations_research::sat::AddLinearExpressionToLinearConstraint(v129, 1, v43, v40, v41);
    operations_research::sat::AddLinearExpressionToLinearConstraint(v134, -v37, v43, v53, v54);
    operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
    operator new();
  }

  return 0;
}

void sub_23CA7FE94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a23);
  }

  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(&a28);
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(&a38);
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto((v38 - 168));
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveIntMod(operations_research::sat::CpModelPresolver *this, int a2, operations_research::sat::ConstraintProto *a3)
{
  if ((*(*(this + 1) + 416) & 1) == 0)
  {
    if (*(a3 + 15) == 8)
    {
      v7 = *(a3 + 6);
    }

    else
    {
      v7 = &operations_research::sat::_LinearArgumentProto_default_instance_;
    }

    v8 = v7[6];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }

    operations_research::sat::LinearExpressionProto::LinearExpressionProto(v76, 0, v9);
    if (*(a3 + 15) == 8)
    {
      v10 = *(a3 + 6);
    }

    else
    {
      v10 = &operations_research::sat::_LinearArgumentProto_default_instance_;
    }

    v12 = v10[3];
    v11 = (v10 + 3);
    v13 = (v12 + 7);
    if (v12)
    {
      v11 = v13;
    }

    operations_research::sat::LinearExpressionProto::LinearExpressionProto(v71, 0, *v11);
    if (*(a3 + 15) == 8)
    {
      v14 = *(a3 + 6);
    }

    else
    {
      v14 = &operations_research::sat::_LinearArgumentProto_default_instance_;
    }

    v16 = v14[3];
    v15 = (v14 + 3);
    v17 = (v16 + 15);
    if (v16)
    {
      v15 = v17;
    }

    operations_research::sat::LinearExpressionProto::LinearExpressionProto(v70, 0, *v15);
    if (operations_research::sat::PresolveContext::MinOf(*(this + 1), v76) >= 1)
    {
      LOBYTE(v65) = 0;
      v18 = *(this + 1);
      operations_research::Domain::Domain(&v68, 0, 0x7FFFFFFFFFFFFFFFLL);
      v19 = operations_research::sat::PresolveContext::IntersectDomainWith(v18, v71, &v68, &v65);
      if (v68)
      {
        operator delete(__p[0]);
      }

      if ((v19 & 1) == 0)
      {
        goto LABEL_69;
      }

      if (v65 == 1)
      {
        operator new();
      }
    }

    v20 = operations_research::sat::PresolveContext::MinOf(*(this + 1), v76);
    if (v20 >= operations_research::sat::PresolveContext::MaxOf(*(this + 1), v70) || (v21 = operations_research::sat::PresolveContext::MaxOf(*(this + 1), v76), v21 <= -operations_research::sat::PresolveContext::MaxOf(*(this + 1), v70)))
    {
      IsUnsat = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(*(this + 1), "int_mod: incompatible target and mod", 36);
LABEL_70:
      operations_research::sat::LinearExpressionProto::~LinearExpressionProto(v70);
      operations_research::sat::LinearExpressionProto::~LinearExpressionProto(v71);
      operations_research::sat::LinearExpressionProto::~LinearExpressionProto(v76);
      return IsUnsat;
    }

    if (operations_research::sat::PresolveContext::MaxOf(*(this + 1), v76) < 0)
    {
      LOBYTE(v65) = 0;
      v33 = *(this + 1);
      operations_research::Domain::Domain(&v68, 0x8000000000000000, 0);
      v34 = operations_research::sat::PresolveContext::IntersectDomainWith(v33, v71, &v68, &v65);
      if (v68)
      {
        operator delete(__p[0]);
      }

      if ((v34 & 1) == 0)
      {
        goto LABEL_69;
      }

      if (v65 == 1)
      {
        v35 = *(this + 1);
        std::string::basic_string[abi:ne200100]<0>(&v68, "int_mod: non positive target implies negative expression");
        operations_research::sat::PresolveContext::UpdateRuleStats(v35, &v68, 1, v36, v37);
        if (SHIBYTE(__p[1]) < 0)
        {
          operator delete(v68);
        }
      }
    }

    if (operations_research::sat::PresolveContext::IsFixed(*(this + 1), v76) && operations_research::sat::PresolveContext::IsFixed(*(this + 1), v70) && operations_research::sat::PresolveContext::FixedValue(*(this + 1), v70) >= 2 && !*(a3 + 4) && v72 == 1)
    {
      v22 = operations_research::sat::PresolveContext::FixedValue(*(this + 1), v70);
      v23 = operations_research::sat::PresolveContext::FixedValue(*(this + 1), v76);
      if (operations_research::sat::PresolveContext::CanonicalizeAffineVariable(*(this + 1), *v73, *v74, v22, v23 - v75))
      {
        v24 = *(this + 1);
        std::string::basic_string[abi:ne200100]<0>(&v68, "int_mod: fixed mod and target");
        operations_research::sat::PresolveContext::UpdateRuleStats(v24, &v68, 1, v25, v26);
        if (SHIBYTE(__p[1]) < 0)
        {
          operator delete(v68);
        }

        operations_research::sat::ConstraintProto::Clear(a3);
        IsUnsat = 1;
        goto LABEL_70;
      }

      goto LABEL_69;
    }

    v67 = 0;
    v27 = *(this + 1);
    operations_research::sat::PresolveContext::DomainSuperSetOf(&v65, v27, v71);
    operations_research::sat::PresolveContext::DomainSuperSetOf(v63, *(this + 1), v70);
    operations_research::Domain::PositiveModuloBySuperset(&v68, &v65, v63);
    v28 = operations_research::sat::PresolveContext::IntersectDomainWith(v27, v76, &v68, &v67);
    if (v68)
    {
      operator delete(__p[0]);
      if ((v63[0] & 1) == 0)
      {
LABEL_40:
        if ((v65 & 1) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_45;
      }
    }

    else if ((v63[0] & 1) == 0)
    {
      goto LABEL_40;
    }

    operator delete(v63[1]);
    if ((v65 & 1) == 0)
    {
LABEL_41:
      if ((v28 & 1) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_46;
    }

LABEL_45:
    operator delete(v66);
    if ((v28 & 1) == 0)
    {
LABEL_69:
      IsUnsat = 0;
      goto LABEL_70;
    }

LABEL_46:
    if (v67)
    {
      v29 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(&v68, "int_mod: reduce target domain");
      operations_research::sat::PresolveContext::UpdateRuleStats(v29, &v68, 1, v30, v31);
      if (SHIBYTE(__p[1]) < 0)
      {
        operator delete(v68);
      }
    }

    IsUnsat = 0;
    if (v77 != 1 || v72 != 1)
    {
      goto LABEL_70;
    }

    operations_research::sat::PresolveContext::DomainOf(&v68, *(this + 1), *v73);
    v32 = operations_research::Domain::Size(&v68) <= 99 && operations_research::sat::PresolveContext::IsFixed(*(this + 1), v70) && operations_research::sat::PresolveContext::VariableIsUniqueAndRemovable(*(this + 1), *v78) && *v78 != *v73;
    if (v68)
    {
      operator delete(__p[0]);
    }

    if (v32)
    {
      v38 = operations_research::sat::PresolveContext::FixedValue(*(this + 1), v70);
      v68 = 0;
      __p[0] = 0;
      __p[1] = 0;
      operations_research::sat::PresolveContext::DomainOf(&v65, *(this + 1), *v78);
      operations_research::sat::PresolveContext::DomainOf(v62, *(this + 1), *v73);
      operations_research::Domain::Values(v62, v63);
      if (v62[0])
      {
        operator delete(v62[1]);
      }

      v60 = a2;
      if (v63[0] > 1)
      {
        v41 = (v63[0] & 1);
        v43 = &v63[1];
        v40 = v63[1];
        if (v63[0])
        {
          v43 = v63[1];
        }

        v39 = *v43;
      }

      else
      {
        v39 = 0;
        v40 = v63[1];
        v41 = v63[0];
      }

      if (v41)
      {
        v44 = v40;
      }

      else
      {
        v44 = &v63[1];
      }

      if ((v63[0] & 0x1FFFFFFFFFFFFFFELL) != 0)
      {
        v45 = &v44[2 * (v63[0] >> 1)];
        do
        {
          v46 = (v75 + *v74 * v39) % v38 - v80;
          if (!(v46 % *v79) && operations_research::Domain::Contains(&v65, v46 / *v79))
          {
            v47 = __p[0];
            if (__p[0] >= __p[1])
            {
              v49 = v68;
              v50 = __p[0] - v68;
              v51 = (__p[0] - v68) >> 3;
              v52 = v51 + 1;
              if ((v51 + 1) >> 61)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v53 = __p[1] - v68;
              if ((__p[1] - v68) >> 2 > v52)
              {
                v52 = v53 >> 2;
              }

              if (v53 >= 0x7FFFFFFFFFFFFFF8)
              {
                v54 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v54 = v52;
              }

              if (v54)
              {
                if (!(v54 >> 61))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              *(8 * v51) = v39;
              v48 = (8 * v51 + 8);
              memcpy(0, v49, v50);
              v68 = 0;
              __p[0] = v48;
              __p[1] = 0;
              if (v49)
              {
                operator delete(v49);
              }
            }

            else
            {
              *__p[0] = v39;
              v48 = v47 + 8;
            }

            __p[0] = v48;
          }

          if (v39 == v44[1])
          {
            v44 += 2;
            if (v44 != v45)
            {
              v39 = *v44;
            }
          }

          else
          {
            v39 = v39 + 1;
          }
        }

        while (v44 != v45);
        v41 = (v63[0] & 1);
      }

      if (v41)
      {
        operator delete(v63[1]);
      }

      v55 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(v63, "int_mod: remove singleton target");
      operations_research::sat::PresolveContext::UpdateRuleStats(v55, v63, 1, v56, v57);
      if (v64 < 0)
      {
        operator delete(v63[0]);
      }

      v58 = *(this + 1);
      v59 = *v73;
      std::vector<long long>::vector[abi:ne200100](v61, &v68);
      operations_research::Domain::FromValues(v61, v63);
      IsUnsat = operations_research::sat::PresolveContext::IntersectDomainWith(v58, v59, v63, 0);
      if (v63[0])
      {
        operator delete(v63[1]);
      }

      if (v61[0])
      {
        v61[1] = v61[0];
        operator delete(v61[0]);
      }

      if (IsUnsat)
      {
        operations_research::sat::PresolveContext::NewMappingConstraint(*(this + 1), a3, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 99, 0x7B2);
        operations_research::sat::ConstraintProto::Clear(a3);
        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v60);
        operations_research::sat::PresolveContext::MarkVariableAsRemoved(*(this + 1), *v78);
      }

      if (v65)
      {
        operator delete(v66);
      }

      if (v68)
      {
        __p[0] = v68;
        operator delete(v68);
      }

      goto LABEL_70;
    }

    goto LABEL_69;
  }

  return 0;
}

void sub_23CA80898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23, uint64_t a24, uint64_t a25, void *__p, void *a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(&a32);
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(&a42);
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto((v42 - 168));
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::CpModelPresolver::ExploitEquivalenceRelations(operations_research::sat::PresolveContext **this, int a2, operations_research::sat::ConstraintProto *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 0;
  if (*(a3 + 15) == 12)
  {
    v5 = *(a3 + 4);
    if (v5)
    {
      v6 = 0;
      v7 = *(a3 + 3);
      v8 = 4 * v5;
      do
      {
        LiteralRepresentative = operations_research::sat::PresolveContext::GetLiteralRepresentative(this[1], *v7);
        if (LiteralRepresentative != *v7)
        {
          *v7 = LiteralRepresentative;
          v6 = 1;
        }

        ++v7;
        v8 -= 4;
      }

      while (v8);
    }

    else
    {
LABEL_10:
      v6 = 0;
    }
  }

  else
  {
    v10 = *(this[1] + 81) + 24 * a2;
    v11 = *v10;
    v12 = *(v10 + 8);
    if (*v10 == v12)
    {
      v6 = 0;
    }

    else
    {
      while (1)
      {
        v13 = *v11;
        operations_research::sat::PresolveContext::GetAffineRelation(v16, this[1], *v11);
        if (LODWORD(v16[0]) != v13)
        {
          break;
        }

        if (++v11 == v12)
        {
          goto LABEL_10;
        }
      }

      v16[0] = &unk_284F3DD88;
      v16[1] = &v15;
      v16[2] = this;
      v17 = v16;
      operations_research::sat::ApplyToAllLiteralIndices(v16, a3);
      if (v17 == v16)
      {
        (*(*v17 + 32))(v17);
      }

      else if (v17)
      {
        (*(*v17 + 40))();
      }

      v6 = v15;
    }
  }

  return v6 & 1;
}

void sub_23CA80C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::function<void ()(int *)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::CpModelPresolver::DivideLinearByGcd(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v6 = *(this + 1);
  if (*(v6 + 416))
  {
    goto LABEL_2;
  }

  if (*(a2 + 15) == 12)
  {
    v10 = *(a2 + 6);
    v11 = *(v10 + 16);
    if (v11 > 0)
    {
      v12 = 0;
      v7 = 0;
      v13 = *(v10 + 48);
      while (1)
      {
        v14 = *(v13 + 8 * v12);
        if (v14)
        {
          if (v14 < 0)
          {
            v14 = -v14;
          }

          v15 = v7;
          do
          {
            v7 = v14;
            v14 = v15 % v14;
            v15 = v7;
          }

          while (v14);
          if (v7 == 1)
          {
            break;
          }
        }

        if (++v12 == v11)
        {
          goto LABEL_25;
        }
      }
    }

    goto LABEL_2;
  }

  LODWORD(v11) = off_2810BEE58;
  if (off_2810BEE58 <= 0)
  {
    goto LABEL_2;
  }

  v16 = 0;
  v7 = 0;
  do
  {
    v17 = *(off_2810BEE78 + v16);
    if (v17)
    {
      if (v17 < 0)
      {
        v17 = -v17;
      }

      v18 = v7;
      do
      {
        v7 = v17;
        v17 = v18 % v17;
        v18 = v7;
      }

      while (v17);
      if (v7 == 1)
      {
        goto LABEL_2;
      }
    }

    ++v16;
  }

  while (v16 != off_2810BEE58);
LABEL_25:
  if (v7 < 2)
  {
LABEL_2:
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  v19 = this;
  v35 = 21;
  strcpy(__p, "linear: divide by GCD");
  operations_research::sat::PresolveContext::UpdateRuleStats(v6, __p, 1, a4, a5);
  if (v35 < 0)
  {
    operator delete(*__p);
  }

  v21 = 0;
  do
  {
    if (*(a2 + 15) == 12)
    {
      v22 = *(a2 + 6);
LABEL_30:
      v23 = v22;
      goto LABEL_31;
    }

    operations_research::sat::ConstraintProto::clear_constraint(a2);
    *(a2 + 15) = 12;
    v24 = *(a2 + 1);
    if (v24)
    {
      v22 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(*(v24 & 0xFFFFFFFFFFFFFFFELL));
      *(a2 + 6) = v22;
      v23 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      if (*(a2 + 15) == 12)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v22 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v24);
      *(a2 + 6) = v22;
      v23 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      if (*(a2 + 15) == 12)
      {
        goto LABEL_30;
      }
    }

LABEL_31:
    v22[6][v21] = (v23[6][v21] / v7);
    ++v21;
  }

  while (v11 != v21);
  if (*(a2 + 15) == 12)
  {
    v25 = *(a2 + 6);
  }

  else
  {
    v25 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  operations_research::Domain::FromFlatSpanOfIntervals(v25[9], *(v25 + 16), __p, v20);
  operations_research::Domain::InverseMultiplicationBy(v33, __p, v7);
  if (*(a2 + 15) == 12)
  {
    v26 = *(a2 + 6);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(a2);
    *(a2 + 15) = 12;
    v27 = *(a2 + 1);
    if (v27)
    {
      v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
    }

    v26 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v27);
    *(a2 + 6) = v26;
  }

  operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(v33, v26);
  if (v33[0])
  {
    operator delete(v33[1]);
  }

  v31 = v19;
  if (*(a2 + 15) == 12)
  {
    v32 = *(*(a2 + 6) + 64);
    if (!v32)
    {
LABEL_52:
      LOBYTE(v7) = operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(v31, a2, v28, v29, v30);
    }
  }

  else
  {
    v32 = dword_2810BEE88;
    if (!dword_2810BEE88)
    {
      goto LABEL_52;
    }
  }

  if (__p[0])
  {
    operator delete(*&__p[8]);
  }

  if (v32)
  {
    goto LABEL_2;
  }

  return v7 & 1;
}

void sub_23CA80F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, uint64_t a13, void *__p, int a15, __int16 a16, char a17, char a18)
{
  if (a13)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::RemoveSingletonInLinear(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2, __n128 a3)
{
  if (*(a2 + 15) != 12 || (*(*(this + 1) + 416) & 1) != 0)
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  v210 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::EmptyNode(void)::empty_node;
  v211 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::EmptyNode(void)::empty_node;
  v212 = 0;
  v6 = *(a2 + 6);
  v7 = *(v6 + 16);
  operations_research::Domain::FromFlatSpanOfIntervals(*(v6 + 72), *(v6 + 64), v209, a3);
  LODWORD(v204) = 0;
  v190 = v7;
  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      if (*(a2 + 15) == 12)
      {
        v9 = *(a2 + 6);
      }

      v10 = v9[3];
      v11 = *(v10 + v8);
      if ((v11 & 0x80000000) != 0)
      {
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v196, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 2097);
        goto LABEL_311;
      }

      v3 = v9[6][v8];
      IsUniqueAndRemovable = operations_research::sat::PresolveContext::VariableIsUniqueAndRemovable(*(this + 1), *(v10 + v8));
      if (v3 >= 0)
      {
        v13 = v3;
      }

      else
      {
        v13 = -v3;
      }

      if (v13 == 1 && IsUniqueAndRemovable)
      {
        LOBYTE(v201) = 0;
        operations_research::sat::PresolveContext::DomainOf(&v193, *(this + 1), v11);
        operations_research::Domain::MultiplicationBy(v196, &v193, &v201, -v3);
        if (v193)
        {
          operator delete(__p);
        }

        if (v201)
        {
          operations_research::Domain::AdditionWith(&v193, v209, v196, v15);
          if ((v193 >> 1) <= 100)
          {
            operator new();
          }

          if (v193)
          {
            operator delete(__p);
          }
        }

        if (v196[0])
        {
          operator delete(v196[1]);
        }
      }

      v8 = v204 + 1;
      LODWORD(v204) = v8;
    }

    while (v8 < v7);
  }

  if (v212)
  {
LABEL_180:
    if (*(a2 + 4))
    {
      v118 = v211;
      v119 = *v210;
      v120 = v211[10];
      if (*v210 != v211 || v120 != 0)
      {
        v122 = 0;
        do
        {
          v123 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          if (*(a2 + 15) == 12)
          {
            v123 = *(a2 + 6);
          }

          v124 = *(v123[3] + *&v119[4 * v122 + 12]);
          v125 = operations_research::sat::PresolveContext::NewMappingConstraint(*(this + 1), "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 99, 0x91A);
          v126 = v125;
          if (*(v125 + 60) == 12)
          {
            v127 = *(v125 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v125);
            *(v126 + 60) = 12;
            v128 = *(v126 + 8);
            if (v128)
            {
              v128 = *(v128 & 0xFFFFFFFFFFFFFFFELL);
            }

            v127 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v128);
            *(v126 + 48) = v127;
          }

          v130 = *(v127 + 4);
          v129 = *(v127 + 5);
          if (v130 == v129)
          {
            google::protobuf::RepeatedField<int>::Grow((v127 + 2), v129, (v129 + 1));
            v130 = *(v127 + 4);
          }

          v131 = v127[3];
          *(v127 + 4) = v130 + 1;
          *(v131 + 4 * v130) = v124;
          v133 = *(v127 + 10);
          v132 = *(v127 + 11);
          if (v133 == v132)
          {
            google::protobuf::RepeatedField<long long>::Grow((v127 + 5), v132, (v132 + 1));
            v133 = *(v127 + 10);
          }

          v134 = v127[6];
          *(v127 + 10) = v133 + 1;
          *(v134 + 8 * v133) = 1;
          operations_research::sat::PresolveContext::DomainOf(v196, *(this + 1), v124);
          operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(v196, v127);
          if (v196[0])
          {
            operator delete(v196[1]);
          }

          if (v119[11])
          {
            if (++v122 == v119[10])
            {
              v135 = v119;
              while (1)
              {
                v136 = *v135;
                if (*(*v135 + 11))
                {
                  break;
                }

                v137 = v135[8];
                v135 = *v135;
                if (v137 != v136[10])
                {
                  v119 = v136;
                  v122 = v137;
                  break;
                }
              }
            }
          }

          else
          {
            v138 = &v119[8 * (v122 + 1) + 256];
            do
            {
              v119 = *v138;
              v139 = *(*v138 + 11);
              v138 = *v138 + 256;
            }

            while (!v139);
            v122 = 0;
          }
        }

        while (v119 != v118 || v122 != v120);
      }
    }

    v140 = operations_research::sat::PresolveContext::NewMappingConstraint(*(this + 1), "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 99, 0x925);
    operations_research::sat::ConstraintProto::CopyFrom(v140, a2);
    LODWORD(v196[0]) = 0;
    if (v190 >= 1)
    {
      v141 = 0;
      while (1)
      {
        while (absl::lts_20240722::container_internal::btree_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>>::count<int>(&v210, v196))
        {
          v142 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          if (*(a2 + 15) == 12)
          {
            v142 = *(a2 + 6);
          }

          operations_research::sat::PresolveContext::MarkVariableAsRemoved(*(this + 1), *(v142[3] + SLODWORD(v196[0])));
          ++LODWORD(v196[0]);
          if (SLODWORD(v196[0]) >= v190)
          {
            goto LABEL_231;
          }
        }

        if (*(a2 + 15) == 12)
        {
          break;
        }

        operations_research::sat::ConstraintProto::clear_constraint(a2);
        *(a2 + 15) = 12;
        v144 = *(a2 + 1);
        if (v144)
        {
          v144 = *(v144 & 0xFFFFFFFFFFFFFFFELL);
        }

        v143 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v144);
        *(a2 + 6) = v143;
        v145 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        if (*(a2 + 15) == 12)
        {
          goto LABEL_221;
        }

LABEL_222:
        v143[6][v141] = v145[6][SLODWORD(v196[0])];
        if (*(a2 + 15) == 12)
        {
          v146 = *(a2 + 6);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(a2);
          *(a2 + 15) = 12;
          v147 = *(a2 + 1);
          if (v147)
          {
            v147 = *(v147 & 0xFFFFFFFFFFFFFFFELL);
          }

          v146 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v147);
          *(a2 + 6) = v146;
          v148 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          if (*(a2 + 15) != 12)
          {
            goto LABEL_228;
          }
        }

        v148 = v146;
LABEL_228:
        *(v146[3] + v141++) = *(v148[3] + SLODWORD(v196[0]));
        ++LODWORD(v196[0]);
        if (SLODWORD(v196[0]) >= v190)
        {
          goto LABEL_231;
        }
      }

      v143 = *(a2 + 6);
LABEL_221:
      v145 = v143;
      goto LABEL_222;
    }

    v141 = 0;
LABEL_231:
    if (*(a2 + 15) == 12)
    {
      v149 = *(a2 + 6);
      if (*(v149 + 4) <= v141)
      {
        goto LABEL_234;
      }
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(a2);
      *(a2 + 15) = 12;
      v152 = *(a2 + 1);
      if (v152)
      {
        v152 = *(v152 & 0xFFFFFFFFFFFFFFFELL);
      }

      v149 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v152);
      *(a2 + 6) = v149;
      if (*(v149 + 4) <= v141)
      {
LABEL_234:
        if (*(a2 + 15) == 12)
        {
          v150 = *(a2 + 6);
          if (*(v150 + 10) <= v141)
          {
LABEL_237:
            if (*(a2 + 15) == 12)
            {
              v151 = *(a2 + 6);
            }

            else
            {
              operations_research::sat::ConstraintProto::clear_constraint(a2);
              *(a2 + 15) = 12;
              v154 = *(a2 + 1);
              if (v154)
              {
                v154 = *(v154 & 0xFFFFFFFFFFFFFFFELL);
              }

              v151 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v154);
              *(a2 + 6) = v151;
            }

            operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(v209, v151);
            operations_research::sat::CpModelPresolver::DivideLinearByGcd(this, a2, v155, v156, v157);
            LOBYTE(v3) = 1;
            goto LABEL_251;
          }
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(a2);
          *(a2 + 15) = 12;
          v153 = *(a2 + 1);
          if (v153)
          {
            v153 = *(v153 & 0xFFFFFFFFFFFFFFFELL);
          }

          v150 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v153);
          *(a2 + 6) = v150;
          if (*(v150 + 10) <= v141)
          {
            goto LABEL_237;
          }
        }

        *(v150 + 10) = v141;
        goto LABEL_237;
      }
    }

    *(v149 + 4) = v141;
    goto LABEL_234;
  }

  if (*(a2 + 15) == 12)
  {
    v16 = *(a2 + 6);
    v17 = *(v16 + 4);
    if (!v17)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v16 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    v17 = off_2810BEE58;
    if (!off_2810BEE58)
    {
      goto LABEL_37;
    }
  }

  v18 = 0;
  v19 = v16[3];
  v20 = 4 * v17;
  while (1)
  {
    LODWORD(v3) = *(v19 + v18);
    if ((v3 & 0x80000000) != 0 || !operations_research::sat::PresolveContext::VariableWithCostIsUniqueAndRemovable(*(this + 1), *(v19 + v18)) && !operations_research::sat::PresolveContext::VariableIsUniqueAndRemovable(*(this + 1), v3))
    {
      break;
    }

    ++v18;
    v20 -= 4;
    if (!v20)
    {
      goto LABEL_37;
    }
  }

  v17 = v18;
LABEL_37:
  if (v17 != v7)
  {
    goto LABEL_179;
  }

  v207 = 0uLL;
  v208 = 0;
  v204 = 0;
  v205 = 0;
  v206 = 0;
  v201 = 0;
  v202 = 0;
  v203 = 0;
  if (v7 >= 1)
  {
    v21 = 0;
    while (1)
    {
      v22 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      if (*(a2 + 15) == 12)
      {
        v22 = *(a2 + 6);
      }

      v23 = *(v22[3] + v21);
      if ((v23 & 0x80000000) != 0)
      {
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v196, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 2149);
        goto LABEL_311;
      }

      operations_research::sat::PresolveContext::DomainOf(v196, *(this + 1), v23);
      v24 = *(&v207 + 1);
      if (*(&v207 + 1) >= v208)
      {
        *(&v207 + 1) = std::vector<operations_research::Domain>::__emplace_back_slow_path<operations_research::Domain>(&v207, v196);
        if (v196[0])
        {
          operator delete(v196[1]);
          if (*(a2 + 15) != 12)
          {
LABEL_46:
            v25 = *(off_2810BEE78 + v21);
            v27 = v205;
            v26 = v206;
            if (v205 >= v206)
            {
              goto LABEL_51;
            }

            goto LABEL_47;
          }
        }

        else if (*(a2 + 15) != 12)
        {
          goto LABEL_46;
        }
      }

      else
      {
        **(&v207 + 1) = 0;
        *v24 = v196[0];
        *(v24 + 8) = *&v196[1];
        *(&v207 + 1) = v24 + 24;
        if (*(a2 + 15) != 12)
        {
          goto LABEL_46;
        }
      }

      v25 = *(*(*(a2 + 6) + 48) + 8 * v21);
      v27 = v205;
      v26 = v206;
      if (v205 >= v206)
      {
LABEL_51:
        v29 = v204;
        v30 = v27 - v204;
        v31 = (v27 - v204) >> 3;
        v32 = v31 + 1;
        if ((v31 + 1) >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v33 = v26 - v204;
        if (v33 >> 2 > v32)
        {
          v32 = v33 >> 2;
        }

        if (v33 >= 0x7FFFFFFFFFFFFFF8)
        {
          v34 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v34 = v32;
        }

        if (v34)
        {
          if (!(v34 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v35 = (v27 - v204) >> 3;
        v36 = (8 * v31);
        v37 = (8 * v31 - 8 * v35);
        *v36 = v25;
        v28 = (v36 + 1);
        memcpy(v37, v29, v30);
        v204 = v37;
        v205 = v28;
        v206 = 0;
        if (v29)
        {
          operator delete(v29);
        }

        goto LABEL_64;
      }

LABEL_47:
      *v27 = v25;
      v28 = v27 + 8;
LABEL_64:
      v7 = v190;
      v205 = v28;
      v38 = *(this + 1);
      v39 = v38[64];
      if (v39 > 1)
      {
        v41 = 0;
        _X10 = v38[66];
        __asm { PRFM            #4, [X10] }

        v47 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v23) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v23));
        v48 = vdup_n_s8(v47 & 0x7F);
        v49 = ((v47 >> 7) ^ (_X10 >> 12)) & v39;
        v50 = *(_X10 + v49);
        v51 = vceq_s8(v50, v48);
        if (!v51)
        {
          goto LABEL_73;
        }

LABEL_70:
        v52 = v38[67];
        while (1)
        {
          v53 = (v49 + (__clz(__rbit64(v51)) >> 3)) & v39;
          if (*(v52 + 16 * v53) == v23)
          {
            break;
          }

          v51 &= ((v51 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v51)
          {
LABEL_73:
            while (!*&vceq_s8(v50, 0x8080808080808080))
            {
              v41 += 8;
              v49 = (v41 + v49) & v39;
              v50 = *(_X10 + v49);
              v51 = vceq_s8(v50, v48);
              if (v51)
              {
                goto LABEL_70;
              }
            }

            goto LABEL_80;
          }
        }

        v40 = (v52 + 16 * v53);
        if (_X10 + v53)
        {
          goto LABEL_77;
        }

LABEL_80:
        v54 = 0;
        v56 = v202;
        v55 = v203;
        if (v202 < v203)
        {
          goto LABEL_40;
        }

LABEL_81:
        v57 = v201;
        v58 = v56 - v201;
        v59 = (v56 - v201) >> 3;
        v60 = v59 + 1;
        if ((v59 + 1) >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v61 = v55 - v201;
        if (v61 >> 2 > v60)
        {
          v60 = v61 >> 2;
        }

        if (v61 >= 0x7FFFFFFFFFFFFFF8)
        {
          v62 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v62 = v60;
        }

        if (v62)
        {
          if (!(v62 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v63 = (v56 - v201) >> 3;
        v64 = (8 * v59);
        v65 = (8 * v59 - 8 * v63);
        *v64 = v54;
        v66 = (v64 + 1);
        memcpy(v65, v57, v58);
        v201 = v65;
        v202 = v66;
        v203 = 0;
        if (v57)
        {
          operator delete(v57);
        }

        v7 = v190;
        v202 = v66;
        if (++v21 == v190)
        {
          break;
        }
      }

      else
      {
        if (v38[65] < 2uLL)
        {
          goto LABEL_80;
        }

        if (*(v38 + 132) != v23)
        {
          goto LABEL_80;
        }

        v40 = v38 + 66;
        if (!&absl::lts_20240722::container_internal::kSooControl)
        {
          goto LABEL_80;
        }

LABEL_77:
        v54 = v40[1];
        v56 = v202;
        v55 = v203;
        if (v202 >= v203)
        {
          goto LABEL_81;
        }

LABEL_40:
        *v56 = v54;
        v202 = v56 + 8;
        if (++v21 == v190)
        {
          break;
        }
      }
    }
  }

  v200 = 0u;
  *v198 = 0u;
  *v199 = 0u;
  v197 = 0u;
  memset(v196, 0, sizeof(v196));
  if (*(a2 + 15) == 12)
  {
    v67 = *(a2 + 6);
  }

  else
  {
    v67 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  operations_research::Domain::FromFlatSpanOfIntervals(v67[9], *(v67 + 16), &v191, 0);
  operations_research::sat::BasicKnapsackSolver::Solve(v196, &v207, &v204, &v201, &v191, &v193);
  if (v191)
  {
    operator delete(v192[0]);
  }

  v68 = v193;
  if ((v193 & 1) == 0)
  {
    operator new();
  }

  if (BYTE1(v193) != 1)
  {
    v76 = *(a2 + 4);
    if (v76 == 1)
    {
      v85 = **(a2 + 3);
    }

    else
    {
      if (!v76)
      {
        v77 = *(this + 1);
        std::string::basic_string[abi:ne200100]<0>(&v191, "independent linear: solved by DP");
        operations_research::sat::PresolveContext::UpdateRuleStats(v77, &v191, 1, v78, v79);
        if (SHIBYTE(v192[1]) < 0)
        {
          operator delete(v191);
        }

        if (v7 >= 1)
        {
          v80 = 0;
          while (1)
          {
            v81 = &operations_research::sat::_LinearConstraintProto_default_instance_;
            if (*(a2 + 15) == 12)
            {
              v81 = *(a2 + 6);
            }

            v82 = *(this + 1);
            v83 = *(v81[3] + v80);
            operations_research::Domain::Domain(&v191, *(__p + v80));
            v84 = operations_research::sat::PresolveContext::IntersectDomainWith(v82, v83, &v191, 0);
            if (v191)
            {
              operator delete(v192[0]);
            }

            if ((v84 & 1) == 0)
            {
              break;
            }

            if (v7 == ++v80)
            {
              goto LABEL_144;
            }
          }

          LOBYTE(v3) = 0;
          v75 = __p;
          if (__p)
          {
            goto LABEL_145;
          }

          goto LABEL_146;
        }

LABEL_144:
        operations_research::sat::ConstraintProto::Clear(a2);
        LOBYTE(v3) = 1;
        v75 = __p;
        if (!__p)
        {
          goto LABEL_146;
        }

        goto LABEL_145;
      }

      v85 = operations_research::sat::PresolveContext::NewBoolVar(*(this + 1));
      v86 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      google::protobuf::RepeatedField<int>::operator=(v86 + 4, a2 + 4);
      v87 = operations_research::sat::ConstraintProto::mutable_BOOL_or(v86);
      operations_research::sat::BoolArgumentProto::add_literals(v87, v85);
      operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
    }

    if (v7 >= 1)
    {
      for (i = 0; i != v190; ++i)
      {
        v89 = (v207 + 24 * i);
        if (*(v201 + i) < 1)
        {
          v90 = operations_research::Domain::Max(v89);
        }

        else
        {
          v90 = operations_research::Domain::Min(v89);
        }

        v91 = *(__p + i);
        v92 = *(this + 1);
        v93 = *(a2 + 15);
        if (v90 == v91)
        {
          v94 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          if (v93 == 12)
          {
            v94 = *(a2 + 6);
          }

          v95 = *(v94[3] + i);
          operations_research::Domain::Domain(&v191, v90);
          v96 = operations_research::sat::PresolveContext::IntersectDomainWith(v92, v95, &v191, 0);
          if (v191)
          {
            operator delete(v192[0]);
          }

          if ((v96 & 1) == 0)
          {
            goto LABEL_140;
          }
        }

        else if ((v85 & 0x80000000) != 0)
        {
          v98 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          if (v93 == 12)
          {
            v98 = *(a2 + 6);
          }

          if (!operations_research::sat::PresolveContext::StoreAffineRelation(*(this + 1), *(v98[3] + i), ~v85, v90 - v91, v91, 0))
          {
LABEL_140:
            LOBYTE(v3) = 0;
            v7 = v190;
            v75 = __p;
            if (!__p)
            {
              goto LABEL_146;
            }

LABEL_145:
            v195 = v75;
            operator delete(v75);
            goto LABEL_146;
          }
        }

        else
        {
          v97 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          if (v93 == 12)
          {
            v97 = *(a2 + 6);
          }

          if ((operations_research::sat::PresolveContext::StoreAffineRelation(*(this + 1), *(v97[3] + i), v85, v91 - v90, v90, 0) & 1) == 0)
          {
            goto LABEL_140;
          }
        }
      }
    }

    v99 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(&v191, "independent linear: with enforcement, but solved by DP");
    operations_research::sat::PresolveContext::UpdateRuleStats(v99, &v191, 1, v100, v101);
    v7 = v190;
    if (SHIBYTE(v192[1]) < 0)
    {
      operator delete(v191);
    }

    goto LABEL_144;
  }

  v69 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(&v191, "independent linear: no DP solution to simple constraint");
  operations_research::sat::PresolveContext::UpdateRuleStats(v69, &v191, 1, v70, v71);
  if (SHIBYTE(v192[1]) < 0)
  {
    operator delete(v191);
  }

  LOBYTE(v3) = operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, a2, v72, v73, v74);
  v75 = __p;
  if (__p)
  {
    goto LABEL_145;
  }

LABEL_146:
  v102 = v199[1];
  if (v199[1])
  {
    v103 = v200;
    v104 = v199[1];
    if (v200 != v199[1])
    {
      v105 = v200;
      do
      {
        v107 = *(v105 - 3);
        v105 -= 24;
        v106 = v107;
        if (v107)
        {
          *(v103 - 2) = v106;
          operator delete(v106);
        }

        v103 = v105;
      }

      while (v105 != v102);
      v104 = v199[1];
    }

    *&v200 = v102;
    operator delete(v104);
  }

  if (v198[0])
  {
    v198[1] = v198[0];
    operator delete(v198[0]);
  }

  if (v196[3])
  {
    *&v197 = v196[3];
    operator delete(v196[3]);
  }

  v108 = v196[0];
  if (v196[0])
  {
    v109 = v196[1];
    v110 = v196[0];
    if (v196[1] != v196[0])
    {
      v111 = v196[1];
      do
      {
        v112 = *(v111 - 24);
        v111 -= 3;
        if (v112)
        {
          operator delete(*(v109 - 2));
        }

        v109 = v111;
      }

      while (v111 != v108);
      v110 = v196[0];
    }

    v196[1] = v108;
    operator delete(v110);
  }

  if (v201)
  {
    v202 = v201;
    operator delete(v201);
  }

  if (v204)
  {
    v205 = v204;
    operator delete(v204);
  }

  v113 = v207;
  if (v207)
  {
    v114 = *(&v207 + 1);
    v115 = v207;
    if (*(&v207 + 1) != v207)
    {
      v116 = *(&v207 + 1);
      do
      {
        v117 = *(v116 - 24);
        v116 -= 24;
        if (v117)
        {
          operator delete(*(v114 - 16));
        }

        v114 = v116;
      }

      while (v116 != v113);
      v115 = v207;
    }

    *(&v207 + 1) = v113;
    operator delete(v115);
  }

  if (v68)
  {
    goto LABEL_251;
  }

LABEL_179:
  if (v212)
  {
    goto LABEL_180;
  }

  if (*(*(*(this + 1) + 392) + 680) >= 1 && !*(a2 + 4))
  {
    v159 = operations_research::Domain::Min(v209);
    if (v159 == operations_research::Domain::Max(v209))
    {
      if (v7 >= 1)
      {
        v160 = 0;
        while (1)
        {
          v161 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          if (*(a2 + 15) == 12)
          {
            v161 = *(a2 + 6);
          }

          v162 = v161[3];
          v163 = *(v162 + v160);
          if ((v163 & 0x80000000) != 0)
          {
            absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v196, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 2233);
LABEL_311:
            absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v196);
          }

          v164 = v161[6][v160];
          if (operations_research::sat::PresolveContext::VariableWithCostIsUnique(*(this + 1), *(v162 + v160)))
          {
            break;
          }

LABEL_261:
          if (++v160 == v7)
          {
            goto LABEL_308;
          }
        }

        v166 = *(this + 1);
        v167 = *(v166 + 64);
        if (v167 > 1)
        {
          v169 = 0;
          _X9 = *(v166 + 66);
          __asm { PRFM            #4, [X9] }

          v172 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v163) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v163));
          v173 = vdup_n_s8(v172 & 0x7F);
          v174 = ((v172 >> 7) ^ (_X9 >> 12)) & v167;
          v175 = *(_X9 + v174);
          v176 = vceq_s8(v175, v173);
          if (!v176)
          {
            goto LABEL_274;
          }

LABEL_271:
          v177 = *(v166 + 67);
          do
          {
            v178 = (v174 + (__clz(__rbit64(v176)) >> 3)) & v167;
            if (*(v177 + 16 * v178) == v163)
            {
              v167 = v177 + 16 * v178;
              v168 = (_X9 + v178);
              goto LABEL_279;
            }

            v176 &= ((v176 & 0x8080808080808080) - 1) & 0x8080808080808080;
          }

          while (v176);
LABEL_274:
          while (!*&vceq_s8(v175, 0x8080808080808080))
          {
            v169 += 8;
            v174 = (v169 + v174) & v167;
            v175 = *(_X9 + v174);
            v176 = vceq_s8(v175, v173);
            if (v176)
            {
              goto LABEL_271;
            }
          }
        }

        else
        {
          v167 = *(v166 + 65);
          if (v167 >= 2)
          {
            v167 = *(v166 + 132);
            if (v167 == v163)
            {
              v167 = v166 + 528;
              v168 = &absl::lts_20240722::container_internal::kSooControl;
              goto LABEL_279;
            }
          }
        }

        v168 = 0;
LABEL_279:
        if (!v168)
        {
          absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", v165);
        }

        if (!v164)
        {
          absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(0, 0, "coeff != 0");
        }

        v179 = *(v167 + 8);
        v180 = v179 % v164;
        if (v179 < 0)
        {
          v179 = -v179;
        }

        if (v180)
        {
          v181 = 0;
        }

        else
        {
          v181 = v179 == 1;
        }

        if (!v181)
        {
          goto LABEL_261;
        }

        LOBYTE(v204) = 0;
        operations_research::sat::PresolveContext::DomainOf(&v193, v166, v163);
        operations_research::Domain::MultiplicationBy(v196, &v193, &v204, -v164);
        if (v193)
        {
          operator delete(__p);
        }

        if ((v204 & 1) == 0)
        {
          v184 = 1;
          goto LABEL_298;
        }

        operations_research::Domain::AdditionWith(&v193, v209, v196, v182);
        if ((v193 >> 1) > 100 || (v183 = *(this + 1), (*(v183 + 65) & 0xFFFFFFFFFFFFFFFELL) != 2))
        {
LABEL_295:
          v184 = 1;
          if ((v193 & 1) == 0)
          {
            goto LABEL_298;
          }

          goto LABEL_296;
        }

        if (operations_research::sat::PresolveContext::RecomputeSingletonObjectiveDomain(v183))
        {
          if (operations_research::sat::PresolveContext::IsFixed(*(this + 1), v163))
          {
            goto LABEL_295;
          }

          v185 = operations_research::sat::PresolveContext::SubstituteVariableInObjective(*(this + 1), v163, v164, a2);
          v186 = *(this + 1);
          if ((v185 & 1) == 0)
          {
            v189 = *(v186 + 416);
            LOBYTE(v3) = v189 | v3;
            v184 = v189 ^ 1;
            if (v193)
            {
LABEL_296:
              operator delete(__p);
            }

LABEL_298:
            if (v196[0])
            {
              operator delete(v196[1]);
            }

            if ((v184 & 1) == 0)
            {
              goto LABEL_251;
            }

            goto LABEL_261;
          }

          std::string::basic_string[abi:ne200100]<0>(&v207, "linear: singleton column define objective.");
          operations_research::sat::PresolveContext::UpdateRuleStats(v186, &v207, 1, v187, v188);
          if (SHIBYTE(v208) < 0)
          {
            operator delete(v207);
          }

          operations_research::sat::PresolveContext::MarkVariableAsRemoved(*(this + 1), v163);
          operations_research::sat::PresolveContext::NewMappingConstraint(*(this + 1), a2, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 99, 0x8F4);
          operations_research::sat::ConstraintProto::Clear(a2);
        }

        v184 = 0;
        LOBYTE(v3) = 1;
        if (v193)
        {
          goto LABEL_296;
        }

        goto LABEL_298;
      }

LABEL_308:
      if (v212)
      {
        goto LABEL_180;
      }
    }
  }

  LOBYTE(v3) = 0;
LABEL_251:
  if (v209[0])
  {
    operator delete(v209[1]);
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::clear(&v210);
  return v3 & 1;
}