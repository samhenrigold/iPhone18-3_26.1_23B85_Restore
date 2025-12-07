char *std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::ZeroHalfCutHelper::InterestingCandidates(operations_research::sat::ModelRandomGenerator *)::$_0 &,std::__wrap_iter<int *>>(char *result, char *a2, char *a3, uint64_t *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  v10 = result;
  while (a6 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return result;
    }

    v11 = 0;
    v12 = *a2;
    v13 = *(*a4 + 96);
    v14 = -a5;
    while (1)
    {
      v15 = *&v11[v10];
      if (*(v13 + (v12 << 6) + 32) - *(v13 + (v12 << 6) + 24) < *(v13 + (v15 << 6) + 32) - *(v13 + (v15 << 6) + 24))
      {
        break;
      }

      v11 += 4;
      if (__CFADD__(v14++, 1))
      {
        return result;
      }
    }

    v17 = -v14;
    v71 = a3;
    __src = a7;
    v69 = a8;
    v70 = a4;
    if (-v14 >= a6)
    {
      if (v14 == -1)
      {
        *&v11[v10] = v12;
        *a2 = v15;
        return result;
      }

      v26 = v17 / 2;
      v27 = &v10[4 * (v17 / 2)];
      v19 = a2;
      if (a2 != a3)
      {
        v28 = (a3 - a2) >> 2;
        v19 = a2;
        do
        {
          v29 = v28 >> 1;
          v30 = &v19[4 * (v28 >> 1)];
          v32 = *v30;
          v31 = v30 + 4;
          v28 += ~(v28 >> 1);
          if (*(v13 + (v32 << 6) + 32) - *(v13 + (v32 << 6) + 24) < *(v13 + (*&v11[v27] << 6) + 32) - *(v13 + (*&v11[v27] << 6) + 24))
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

      v18 = (v19 - a2) >> 2;
      v20 = &v11[v27];
    }

    else
    {
      v18 = a6 / 2;
      v19 = &a2[4 * (a6 / 2)];
      v20 = a2;
      if ((a2 - v10) != v11)
      {
        v21 = (a2 - v10 - v11) >> 2;
        v20 = &v11[v10];
        do
        {
          v22 = v21 >> 1;
          v23 = &v20[4 * (v21 >> 1)];
          v25 = *v23;
          v24 = v23 + 4;
          v21 += ~(v21 >> 1);
          if (*(v13 + (*v19 << 6) + 32) - *(v13 + (*v19 << 6) + 24) < *(v13 + (v25 << 6) + 32) - *(v13 + (v25 << 6) + 24))
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

    a5 = -(v26 + v14);
    v33 = a6 - v18;
    v34 = a6;
    v35 = v26;
    v36 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::Literal *>,std::__wrap_iter<operations_research::sat::Literal *>>(v20, a2, v19);
    v37 = v35;
    v38 = v36;
    if (v37 + v18 >= v34 - (v37 + v18) - v14)
    {
      v39 = v37;
      a7 = __src;
      result = std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::ZeroHalfCutHelper::InterestingCandidates(operations_research::sat::ModelRandomGenerator *)::$_0 &,std::__wrap_iter<int *>>(v36, v19, v71, v70, a5, v33, __src, v69);
      a4 = v70;
      a8 = v69;
      a5 = v39;
      a3 = v38;
      v10 = &v11[v10];
      a6 = v18;
      a2 = v20;
      if (!v18)
      {
        return result;
      }
    }

    else
    {
      a7 = __src;
      result = std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::ZeroHalfCutHelper::InterestingCandidates(operations_research::sat::ModelRandomGenerator *)::$_0 &,std::__wrap_iter<int *>>(&v11[v10], v20, v36, v70, v37, v18, __src, v69);
      a8 = v69;
      a4 = v70;
      v10 = v38;
      a3 = v71;
      a6 = v33;
      a2 = v19;
      if (!v33)
      {
        return result;
      }
    }
  }

  if (a5 > a6)
  {
    if (a2 == a3)
    {
      return result;
    }

    v40 = a3 - a2 - 4;
    if (v40 < 0x1C)
    {
      v41 = a7;
      v42 = a2;
    }

    else
    {
      v41 = a7;
      v42 = a2;
      if ((a7 - a2) > 0x1F)
      {
        v43 = (v40 >> 2) + 1;
        v44 = 4 * (v43 & 0x7FFFFFFFFFFFFFF8);
        v41 = &a7[v44];
        v42 = &a2[v44];
        v45 = a2 + 16;
        v46 = a7 + 16;
        v47 = v43 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v48 = *v45;
          *(v46 - 1) = *(v45 - 1);
          *v46 = v48;
          v45 += 32;
          v46 += 32;
          v47 -= 8;
        }

        while (v47);
        if (v43 == (v43 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_60:
          if (v41 != a7)
          {
            v65 = *a4;
            while (a2 != v10)
            {
              v66 = *(a2 - 1);
              if (*(*(v65 + 96) + (*(v41 - 1) << 6) + 32) - *(*(v65 + 96) + (*(v41 - 1) << 6) + 24) < *(*(v65 + 96) + (v66 << 6) + 32) - *(*(v65 + 96) + (v66 << 6) + 24))
              {
                a2 -= 4;
              }

              else
              {
                LODWORD(v66) = *(v41 - 1);
                v41 -= 4;
              }

              *(a3 - 1) = v66;
              a3 -= 4;
              if (v41 == a7)
              {
                return result;
              }
            }

            if (v41 != a7)
            {
              v67 = -4;
              do
              {
                v68 = *(v41 - 1);
                v41 -= 4;
                *&a3[v67] = v68;
                v67 -= 4;
              }

              while (v41 != a7);
            }
          }

          return result;
        }
      }
    }

    do
    {
      v64 = *v42;
      v42 += 4;
      *v41 = v64;
      v41 += 4;
    }

    while (v42 != a3);
    goto LABEL_60;
  }

  if (a2 != v10)
  {
    v49 = a2 - v10 - 4;
    v50 = a7;
    v51 = v10;
    if (v49 < 0x1C)
    {
      goto LABEL_73;
    }

    v50 = a7;
    v51 = v10;
    if ((a7 - v10) <= 0x1F)
    {
      goto LABEL_73;
    }

    v52 = (v49 >> 2) + 1;
    v53 = 4 * (v52 & 0x7FFFFFFFFFFFFFF8);
    v50 = &a7[v53];
    v51 = &v10[v53];
    v54 = (v10 + 16);
    v55 = a7 + 16;
    v56 = v52 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v57 = *v54;
      *(v55 - 1) = *(v54 - 1);
      *v55 = v57;
      v54 += 2;
      v55 += 32;
      v56 -= 8;
    }

    while (v56);
    if (v52 != (v52 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_73:
      do
      {
        v58 = *v51;
        v51 += 4;
        *v50 = v58;
        v50 += 4;
      }

      while (v51 != a2);
    }

    if (v50 != a7)
    {
      v59 = *a4;
      while (a2 != a3)
      {
        v60 = *a2;
        v61 = *a7;
        v62 = *(*(v59 + 96) + (v60 << 6) + 32) - *(*(v59 + 96) + (v60 << 6) + 24) >= *(*(v59 + 96) + (v61 << 6) + 32) - *(*(v59 + 96) + (v61 << 6) + 24);
        v63 = *(*(v59 + 96) + (v60 << 6) + 32) - *(*(v59 + 96) + (v60 << 6) + 24) < *(*(v59 + 96) + (v61 << 6) + 32) - *(*(v59 + 96) + (v61 << 6) + 24);
        if (*(*(v59 + 96) + (v60 << 6) + 32) - *(*(v59 + 96) + (v60 << 6) + 24) >= *(*(v59 + 96) + (v61 << 6) + 32) - *(*(v59 + 96) + (v61 << 6) + 24))
        {
          LODWORD(v60) = *a7;
        }

        a2 += 4 * v63;
        a7 += 4 * v62;
        *v10 = v60;
        v10 += 4;
        if (a7 == v50)
        {
          return result;
        }
      }

      return memmove(v10, a7, v50 - a7);
    }
  }

  return result;
}

void *std::vector<std::vector<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::__emplace_back_slow_path<std::vector<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>> const&>(uint64_t a1, char **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v6 = a2[1] - *a2;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = v5 + 3;
  v8 = *a1;
  v9 = *(a1 + 8) - *a1;
  v10 = v5 - v9;
  memcpy(v10, *a1, v9);
  *a1 = v10;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_23CD39774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void operations_research::SigintHandler::Register(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 24);
  if (v2)
  {
    if (v2 == a2)
    {
      v6 = v5;
      (*(*v2 + 24))(v2, v5);
    }

    else
    {
      v6 = (*(*v2 + 16))(v2);
    }
  }

  else
  {
    v6 = 0;
  }

  if (!*__tls_guard())
  {
    operations_research::SigintHandler::Register();
  }

  operations_research::SigintHandler::handler_();
  v3 = v6;
  v7 = a1;
  if (v6)
  {
    if (v6 == v5)
    {
      v9 = &v8;
      (*(*v6 + 24))();
LABEL_13:
      operator new();
    }

    v3 = (*(*v6 + 16))();
  }

  v9 = v3;
  goto LABEL_13;
}

void sub_23CD39B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  operator delete(v14);
  operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0::~$_0(va);
  operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0::~$_0(&a10);
  _Unwind_Resume(a1);
}

void sub_23CD39B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0::~$_0(va);
  _Unwind_Resume(a1);
}

void sub_23CD39B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0::~$_0(va1);
  operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0::~$_0(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::SigintHandler::ControlCHandler(operations_research::SigintHandler *this)
{
  if (*__tls_guard())
  {
    v1 = *(operations_research::SigintHandler::handler_() + 24);
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_7:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  operations_research::SigintHandler::ControlCHandler();
  v1 = *(operations_research::SigintHandler::handler_() + 24);
  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(*v1 + 48);

  return v2();
}

void *std::__function::__func<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0,std::allocator<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F44BF0;
  v2 = a1 + 2;
  v3 = a1[5];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0,std::allocator<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F44BF0;
  v1 = a1 + 2;
  v2 = a1[5];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x23EED9460);
}

uint64_t std::__function::__func<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0,std::allocator<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  *a2 = &unk_284F44BF0;
  a2[1] = v3;
  v4 = *(result + 40);
  if (v4)
  {
    if (v4 == result + 16)
    {
      a2[5] = a2 + 2;
      v5 = *(**(result + 40) + 24);

      return v5();
    }

    else
    {
      result = (*(*v4 + 16))(*(result + 40));
      a2[5] = result;
    }
  }

  else
  {
    a2[5] = 0;
  }

  return result;
}

uint64_t std::__function::__func<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0,std::allocator<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = a1 + 16;
  result = *(a1 + 40);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0,std::allocator<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0>,void ()(void)>::destroy_deallocate(char *__p)
{
  v2 = __p + 16;
  v3 = *(__p + 5);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

void std::__function::__func<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0,std::allocator<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1 + 1;
  *v1 = v2;
  if (v2 >= 3)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v6, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/util/sigint.cc", 27);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, "^C pressed ", 0xBuLL);
    v7 = *v1;
    v3 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v6, &v7);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v3, " times. Forcing termination.");
    std::__function::__func<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0,std::allocator<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0>,void ()(void)>::operator()(v6);
  }

  absl::lts_20240722::log_internal::LogMessage::LogMessage(v6, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/util/sigint.cc", 31);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, "^C pressed ", 0xBuLL);
  v7 = *v1;
  v5 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v6, &v7);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v5, " times. ", 8uLL);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v5, "Interrupting the solver. Press 3 times to force termination.", 0x3CuLL);
  std::__function::__func<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0,std::allocator<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0>,void ()(void)>::operator()(v6, v1, a1);
}

void sub_23CD3A178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CD3A18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0,std::allocator<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research13SigintHandler8RegisterERKNSt3__18functionIFvvEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research13SigintHandler8RegisterERKNSt3__18functionIFvvEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research13SigintHandler8RegisterERKNSt3__18functionIFvvEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research13SigintHandler8RegisterERKNSt3__18functionIFvvEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__value_func<void ()(void)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_23CD3A49C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

BOOL operations_research::IntervalsAreSortedAndNonAdjacent(uint64_t a1, unint64_t a2)
{
  if (a2 < 2)
  {
    return !a2 || *(a1 + 16 * a2 - 16) <= *(a1 + 16 * a2 - 8);
  }

  else
  {
    v2 = 2;
    v3 = 1;
    while (1)
    {
      v4 = (a1 + 16 * (v2 - 2));
      v6 = *v4;
      v5 = v4[1];
      if (v6 > v5)
      {
        break;
      }

      v7 = *(a1 + 16 * v3);
      if (v5 >= v7 || v5 + 1 >= v7)
      {
        break;
      }

      v3 = v2++;
      if (a2 <= v3)
      {
        return *(a1 + 16 * a2 - 16) <= *(a1 + 16 * a2 - 8);
      }
    }

    return 0;
  }
}

void *operations_research::operator<<(void *a1, unint64_t *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  memset(&v17, 0, sizeof(v17));
  v3 = *a2;
  v6 = a2[1];
  v4 = a2 + 1;
  v5 = v6;
  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if ((v3 & 0x1FFFFFFFFFFFFFFELL) == 0)
  {
    v12 = 0;
    goto LABEL_22;
  }

  v8 = &v7[2 * (v3 >> 1)];
  do
  {
    v9 = v7[1];
    if (*v7 == v9)
    {
      v20 = *v7;
      v21 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
      absl::lts_20240722::str_format_internal::FormatPack("[%d]", 4, &v20, 1uLL, __p);
    }

    else
    {
      v20 = *v7;
      v21 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
      v22 = v9;
      v23 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
      absl::lts_20240722::str_format_internal::FormatPack("[%d,%d]", 7, &v20, 2uLL, __p);
    }

    if ((v19 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v11 = v19;
    }

    else
    {
      v11 = __p[1];
    }

    std::string::append(&v17, v10, v11);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    v7 += 2;
  }

  while (v7 != v8);
  v12 = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_22:
    if (v12)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v17.__r_.__value_.__l.__size_)
  {
    goto LABEL_24;
  }

LABEL_23:
  MEMORY[0x23EED9020](&v17, "[]");
  LOBYTE(v12) = *(&v17.__r_.__value_.__s + 23);
LABEL_24:
  if ((v12 & 0x80u) == 0)
  {
    v13 = &v17;
  }

  else
  {
    v13 = v17.__r_.__value_.__r.__words[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    size = v12;
  }

  else
  {
    size = v17.__r_.__value_.__l.__size_;
  }

  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v13, size);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    v16 = result;
    operator delete(v17.__r_.__value_.__l.__data_);
    return v16;
  }

  return result;
}

void sub_23CD3A6F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void *operations_research::Domain::Domain(void *this, uint64_t a2)
{
  this[1] = a2;
  this[2] = a2;
  *this = 2;
  return this;
}

void *operations_research::Domain::Domain(void *this, uint64_t a2, uint64_t a3)
{
  this[1] = a2;
  this[2] = a3;
  *this = 2 * (a2 <= a3);
  return this;
}

double operations_research::Domain::AllValues@<D0>(uint64_t *__return_ptr a1@<X8>)
{
  a1[2] = 0x7FFFFFFFFFFFFFFFLL;
  *&result = 2;
  *a1 = xmmword_23CE4ED90;
  return result;
}

uint64_t operations_research::Domain::FromValues@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = std::__sort<std::__less<long long,long long> &,long long *>();
  *a2 = 0;
  v5 = *a1;
  v6 = a1[1];
  if (v5 != v6)
  {
    v7 = 0;
    v8 = a2 + 1;
    for (i = v5 + 8; ; i += 8)
    {
      v14 = *(i - 8);
      if (v7 < 2)
      {
        break;
      }

      v15 = v7 >> 1;
      if (v7)
      {
        v10 = *v8;
        if (v14 > *(*v8 + 16 * v15 - 8) + 1)
        {
          v16 = 0;
          *&v18 = *(i - 8);
          *(&v18 + 1) = v14;
          if (v15 == a2[2])
          {
LABEL_24:
            absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(a2, &v18);
          }

          goto LABEL_19;
        }
      }

      else
      {
        if (v14 > (a2[v7] + 1))
        {
          *&v18 = *(i - 8);
          *(&v18 + 1) = v14;
          v16 = 1;
          goto LABEL_18;
        }

        v10 = a2 + 1;
      }

      v11 = v7 & 1;
      v10[2 * v15 - 1] = v14;
LABEL_5:
      v12 = *v8;
      if (!v11)
      {
        v12 = a2 + 1;
      }

      if (v12[2 * (v7 >> 1) - 1] == 0x7FFFFFFFFFFFFFFFLL || i == v6)
      {
        return result;
      }
    }

    v15 = 0;
    v16 = v7 == 0;
    *&v18 = *(i - 8);
    *(&v18 + 1) = v14;
    if (v7)
    {
      if (!a2[2])
      {
        goto LABEL_24;
      }
    }

    else
    {
LABEL_18:
      if (v15 == 1)
      {
        goto LABEL_24;
      }
    }

LABEL_19:
    v17 = a2[1];
    if (v16)
    {
      v17 = a2 + 1;
    }

    *&v17[2 * v15] = v18;
    v7 = *a2 + 2;
    *a2 = v7;
    v11 = v7 & 1;
    goto LABEL_5;
  }

  return result;
}

void sub_23CD3A8F4(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::Domain::FromFlatSpanOfIntervals(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>, __n128 a4@<Q0>)
{
  *a3 = 0;
  v5 = (a3 + 1);
  if (a2 >= 4)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (a2)
  {
    v6 = 0;
    v7 = 2;
    do
    {
      v29 = *(a1 + 8 * v6);
      v8 = *a3;
      if (*a3)
      {
        v9 = a3[2];
      }

      else
      {
        v9 = 1;
      }

      v10 = v8 >> 1;
      if (v8 >> 1 == v9)
      {
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(a3, &v29);
      }

      if (v8)
      {
        v11 = a3[1];
      }

      else
      {
        v11 = v5;
      }

      a4 = v29;
      *&v11[2 * v10] = v29;
      *a3 += 2;
      v6 = v7;
      v7 += 2;
    }

    while (a2 > v6);
    v12 = *a3;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = *v5;
  }

  else
  {
    v13 = v5;
  }

  v14 = 126 - 2 * __clz((8 * v12) >> 4);
  if ((v12 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ReservoirTimeTabling::ProfileRectangle *,false>(v13, (v13 + ((8 * v12) & 0xFFFFFFFFFFFFFFF0)), &v29, v15, 1, a4);
  v16 = *a3;
  v17 = *a3 >> 1;
  if (v17)
  {
    if (v17 < 2)
    {
      v28 = 1;
    }

    else
    {
      v18 = 0;
      v19 = (v16 >> 1) - 1;
      v20 = 1;
      do
      {
        while (1)
        {
          v22 = *v5;
          if ((v16 & 1) == 0)
          {
            v22 = v5;
          }

          v23 = &v22[v18];
          v24 = &v22[v20 - 1];
          v27 = *(v24 + 1);
          v25 = v24 + 8;
          v26 = v27;
          if (v27 == 0x7FFFFFFFFFFFFFFFLL || *(v23 + 2) <= v26 + 1)
          {
            break;
          }

          v22[v20++] = *(v23 + 1);
          v16 = *a3;
          ++v18;
          if (!--v19)
          {
            goto LABEL_32;
          }
        }

        v21 = *(v23 + 3);
        if (v21 <= v26)
        {
          v21 = v26;
        }

        *v25 = v21;
        ++v18;
        --v19;
      }

      while (v19);
LABEL_32:
      v28 = v20;
    }

    absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::ClosedInterval>>>(a3, v28);
    if (*a3)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::ShrinkToFit(a3);
    }
  }
}

void sub_23CD3AB14(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

BOOL operations_research::Domain::IsFixed(operations_research::Domain *this)
{
  v3 = *this;
  v1 = (this + 8);
  v2 = v3;
  if (v3)
  {
    v1 = *v1;
  }

  return *v1 == v1[2 * (v2 >> 1) - 1];
}

uint64_t operations_research::Domain::Min(operations_research::Domain *this)
{
  v2 = *this;
  v1 = this + 8;
  if (v2)
  {
    v1 = *v1;
  }

  return *v1;
}

uint64_t operations_research::Domain::Max(operations_research::Domain *this)
{
  v3 = *this;
  v1 = (this + 8);
  v2 = v3;
  if (v3)
  {
    v1 = *v1;
  }

  return v1[2 * (v2 >> 1) - 1];
}

uint64_t operations_research::Domain::Size(operations_research::Domain *this)
{
  v3 = *this;
  v1 = (this + 8);
  v2 = v3;
  if (v3)
  {
    v1 = *v1;
  }

  v4 = v2 >> 1;
  if ((v2 & 0x1FFFFFFFFFFFFFFELL) == 0)
  {
    return v2 >> 1;
  }

  v5 = 0;
  v6 = &v1[2 * v4];
  do
  {
    v7 = *v1;
    v8 = v1[1];
    v1 += 2;
    v9 = __OFSUB__(v8, v7);
    v10 = v8 - v7;
    if (v9)
    {
      v10 = (v8 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    }

    v11 = (v5 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    v9 = __OFADD__(v5, v10);
    v5 += v10;
    if (v9)
    {
      v5 = v11;
    }
  }

  while (v1 != v6);
  v9 = __OFADD__(v5, v4);
  v12 = v5 + v4;
  if (v9)
  {
    return (v5 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v12;
  }
}

uint64_t operations_research::Domain::SmallestValue(operations_research::Domain *this)
{
  v3 = *this;
  v1 = (this + 8);
  v2 = v3;
  if (v3)
  {
    v1 = *v1;
  }

  v4 = *v1;
  if ((v2 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v5 = &v1[2 * (v2 >> 1)];
    while (1)
    {
      v14 = *v1;
      v13 = v1[1];
      if (*v1 <= 0 && (v13 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (v4 >= 0)
      {
        v6 = v4;
      }

      else
      {
        v6 = -v4;
      }

      if (v6 <= -v14)
      {
        v7 = v4;
      }

      else
      {
        v7 = *v1;
      }

      if (v14 >= 0)
      {
        v7 = v4;
      }

      if (v4 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = -v4;
      }

      if (v14 <= v8)
      {
        v4 = *v1;
      }

      if (v14 < 1)
      {
        v4 = v7;
      }

      if (v4 >= 0)
      {
        v9 = v4;
      }

      else
      {
        v9 = -v4;
      }

      if (v13 <= v9)
      {
        v10 = v1[1];
      }

      else
      {
        v10 = v4;
      }

      if (v4 >= 0)
      {
        v11 = v4;
      }

      else
      {
        v11 = -v4;
      }

      if (v11 <= -v13)
      {
        v12 = v4;
      }

      else
      {
        v12 = v1[1];
      }

      if (v13 < 0)
      {
        v4 = v12;
      }

      if (v13 > 0)
      {
        v4 = v10;
      }

      v1 += 2;
      if (v1 == v5)
      {
        return v4;
      }
    }

    return 0;
  }

  return v4;
}

uint64_t *operations_research::Domain::PartAroundZero@<X0>(uint64_t *__return_ptr a1@<X8>, operations_research::Domain *this@<X0>)
{
  v4 = *this;
  result = (this + 8);
  v3 = v4;
  if (v4)
  {
    result = *result;
  }

  if ((v3 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v5 = &result[2 * (v3 >> 1)];
    while (1)
    {
      if (*result <= 0)
      {
        v6 = result[1];
        if ((v6 & 0x8000000000000000) == 0)
        {
          break;
        }
      }

      result += 2;
      if (result == v5)
      {
        goto LABEL_9;
      }
    }

    a1[1] = *result;
    a1[2] = v6;
    *a1 = 2;
  }

  else
  {
LABEL_9:
    *a1 = 0;
  }

  return result;
}

void *operations_research::Domain::ClosestValue(operations_research::Domain *this, uint64_t a2)
{
  v4 = *this;
  v2 = (this + 8);
  v3 = v4;
  if (v4)
  {
    v2 = *v2;
  }

  v5 = *v2;
  if (*v2 >= a2)
  {
    return v5;
  }

  if ((v3 & 0x1FFFFFFFFFFFFFFELL) == 0)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = &v2[2 * (v3 >> 1)];
  while (1)
  {
    v9 = *v2;
    v5 = v2[1];
    if (*v2 <= a2 && v5 >= a2)
    {
      return a2;
    }

    if (v9 >= a2)
    {
      break;
    }

    v7 = a2 - v5;
    if (__OFSUB__(a2, v5))
    {
      v7 = (a2 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    }

    v2 += 2;
    v6 = v5;
    if (v2 == v8)
    {
      return v5;
    }
  }

  v12 = (v9 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  if (!__OFSUB__(v9, a2))
  {
    v12 = v9 - a2;
  }

  if (v12 <= v7)
  {
    return *v2;
  }

  else
  {
    return v6;
  }
}

uint64_t operations_research::Domain::ValueAtOrBefore(operations_research::Domain *this, uint64_t a2)
{
  v4 = *this;
  v2 = (this + 8);
  v3 = v4;
  v5 = v2;
  if (v4)
  {
    v5 = *v2;
  }

  if ((v3 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v6 = (8 * v3) >> 4;
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[2 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 2;
      v6 += ~(v6 >> 1);
      if (v10 > a2)
      {
        v6 = v7;
      }

      else
      {
        v5 = v9;
      }
    }

    while (v6);
  }

  if (v3)
  {
    v2 = *v2;
  }

  if (v5 == v2)
  {
    return a2;
  }

  v11 = *(v5 - 1);
  if (v11 >= a2)
  {
    return a2;
  }

  else
  {
    return v11;
  }
}

uint64_t operations_research::Domain::ValueAtOrAfter(operations_research::Domain *this, uint64_t a2)
{
  v4 = *this;
  v2 = (this + 8);
  v3 = v4;
  v5 = v2;
  if (v4)
  {
    v5 = *v2;
  }

  v6 = v3 >> 1;
  if ((v3 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v7 = (16 * v6) >> 4;
    do
    {
      v8 = v7 >> 1;
      v9 = &v5[2 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 2;
      v7 += ~(v7 >> 1);
      if (v11 > a2)
      {
        v7 = v8;
      }

      else
      {
        v5 = v10;
      }
    }

    while (v7);
  }

  if (v3)
  {
    v2 = *v2;
  }

  if (v5 == &v2[2 * v6])
  {
    return a2;
  }

  if (v5 != v2)
  {
    if (*(v5 - 1) < a2)
    {
      return *v5;
    }

    return a2;
  }

  return *v5;
}

BOOL operations_research::Domain::Contains(operations_research::Domain *this, uint64_t a2)
{
  v4 = *this;
  v2 = (this + 8);
  v3 = v4;
  v5 = v2;
  if (v4)
  {
    v5 = *v2;
  }

  if ((v3 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v6 = (8 * v3) >> 4;
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[2 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 2;
      v6 += ~(v6 >> 1);
      if (v10 > a2)
      {
        v6 = v7;
      }

      else
      {
        v5 = v9;
      }
    }

    while (v6);
  }

  if (v3)
  {
    v2 = *v2;
  }

  return v5 != v2 && *(v5 - 1) >= a2;
}

uint64_t operations_research::Domain::Distance(operations_research::Domain *this, uint64_t a2)
{
  v4 = *this;
  v2 = (this + 8);
  v3 = v4;
  if (v4)
  {
    v2 = *v2;
  }

  if ((v3 & 0x1FFFFFFFFFFFFFFELL) == 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = &v2[2 * (v3 >> 1)];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v8 = *v2;
    v7 = v2[1];
    v9 = *v2 <= a2 && a2 <= v7;
    if (v9)
    {
      return 0;
    }

    v9 = v8 <= a2;
    v10 = v8 - a2;
    if (!v9)
    {
      break;
    }

    v6 = a2 - v7;
    v2 += 2;
    if (v2 == v5)
    {
      return a2 - v7;
    }
  }

  if (v10 >= v6)
  {
    return v6;
  }

  else
  {
    return v10;
  }
}

uint64_t operations_research::Domain::IsIncludedIn(operations_research::Domain *this, const operations_research::Domain *a2)
{
  v4 = *this;
  v2 = (this + 8);
  v3 = v4;
  if (v4)
  {
    v2 = *v2;
  }

  if ((v3 & 0x1FFFFFFFFFFFFFFELL) == 0)
  {
    return 1;
  }

  v5 = 0;
  v6 = &v2[2 * (v3 >> 1)];
  v7 = *a2;
  v8 = *a2 >> 1;
  v11 = *(a2 + 1);
  v9 = a2 + 8;
  v10 = v11;
  if (v7)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  while (1)
  {
    for (i = v5; v8 > v5; i = ++v5)
    {
      if (v2[1] <= *&v12[16 * i + 8])
      {
        break;
      }
    }

    if (v8 == i || *v2 < *&v12[16 * i])
    {
      break;
    }

    v2 += 2;
    if (v2 == v6)
    {
      return 1;
    }
  }

  return 0;
}

double operations_research::Domain::Complement@<D0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  *a1 = 0;
  v3 = a1 + 1;
  v4 = *this;
  if (*this >= 2)
  {
    if (v4 < 0x1FFFFFFFFFFFFFFELL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v15 = 0;
  v5 = this + 1;
  if (v4)
  {
    v5 = *v5;
  }

  if ((v4 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v6 = &v5[2 * (v4 >> 1)];
    v7 = 0x8000000000000000;
    while (1)
    {
      v8 = *v5;
      if (*v5 != 0x8000000000000000)
      {
        *&v19 = v7;
        *(&v19 + 1) = v8 - 1;
        v9 = *a1;
        if (*a1)
        {
          v10 = a1[2];
        }

        else
        {
          v10 = 1;
        }

        v11 = v9 >> 1;
        if (v9 >> 1 == v10)
        {
          absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(a1, &v19);
        }

        if (v9)
        {
          v12 = a1[1];
        }

        else
        {
          v12 = v3;
        }

        result = *&v19;
        *(v12 + 16 * v11) = v19;
        *a1 += 2;
      }

      v14 = v5[1];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v7 = v14 + 1;
      v5 += 2;
      if (v5 == v6)
      {
        v15 = *a1;
        goto LABEL_21;
      }
    }
  }

  else
  {
    v7 = 0x8000000000000000;
LABEL_21:
    *&v19 = v7;
    *(&v19 + 1) = 0x7FFFFFFFFFFFFFFFLL;
    if (v15)
    {
      v16 = a1[2];
    }

    else
    {
      v16 = 1;
    }

    v17 = v15 >> 1;
    if (v15 >> 1 == v16)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(a1, &v19);
    }

    if (v15)
    {
      v18 = a1[1];
    }

    else
    {
      v18 = v3;
    }

    result = *&v19;
    *(v18 + 16 * v17) = v19;
    *a1 += 2;
  }

  return result;
}

void sub_23CD3B1B0(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *operations_research::Domain::Negation@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  *a1 = 0;
  v2 = *this;
  if (*this < 2)
  {
    return this;
  }

  if ((v2 & 1) == 0)
  {
    *a1 = v2;
    v3 = a1 + 1;
    *(a1 + 1) = *(this + 1);
    v4 = a1[1];
LABEL_4:
    v5 = 0;
    v6 = v3;
    goto LABEL_5;
  }

  v21 = a1;
  this = absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(a1, this);
  v2 = *v21;
  if (*v21 < 2)
  {
    return this;
  }

  a1 = v21;
  v3 = v21 + 1;
  v4 = v21[1];
  if ((v2 & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = 1;
  v6 = v21[1];
LABEL_5:
  v7 = v2 >> 1;
  v8 = &v6[2 * (v2 >> 1) - 2];
  if ((v2 & 0x1FFFFFFFFFFFFFFELL) != 0 && v8 > v6)
  {
    v10 = (v6 + 2);
    do
    {
      v29 = *(v10 - 16);
      *(v10 - 16) = *v8;
      *v8 = v29;
      v8 -= 2;
      v14 = v10 >= v8;
      v10 += 16;
    }

    while (!v14);
    v2 = *a1;
    v4 = a1[1];
    v5 = *a1 & 1;
    v7 = *a1 >> 1;
  }

  if (v5)
  {
    v11 = v4;
  }

  else
  {
    v11 = v3;
  }

  if (*(v11 + 16 * v7 - 8) == 0x8000000000000000)
  {
    v5 = v2 & 1;
    v2 -= 2;
    *a1 = v2;
    v7 = v2 >> 1;
  }

  if (v5)
  {
    v12 = v4;
  }

  else
  {
    v12 = v3;
  }

  if ((v2 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v13 = (v7 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v13 < 0xB || (v12 + 8 + 16 * (v7 - 1) >= v12 + 8 ? (v14 = v12 + 16 * (v7 - 1) >= v12) : (v14 = 0), !v14))
    {
      v15 = v12;
LABEL_29:
      v16 = (v12 + 16 * v7);
      v17 = vnegq_f64(0);
      v18.f64[0] = NAN;
      v18.f64[1] = NAN;
      v19 = vnegq_f64(v18);
      do
      {
        v20 = vextq_s8(*v15, *v15, 8uLL);
        *v15++ = vbslq_s8(vceqq_s64(v20, v17), v19, vnegq_s64(v20));
      }

      while (v15 != v16);
      return this;
    }

    v22 = v13 + 1;
    v23 = (v13 + 1) & 0x1FFFFFFFFFFFFFFELL;
    v15 = (v12 + 16 * v23);
    v24 = vnegq_f64(0);
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v26 = vnegq_f64(v25);
    v27 = v23;
    v28 = v12;
    do
    {
      v30 = vld2q_f64(v28);
      v31.val[0] = vbslq_s8(vceqq_s64(v30.val[1], v24), v26, vnegq_s64(v30.val[1]));
      v31.val[1] = vbslq_s8(vceqq_s64(v30.val[0], v24), v26, vnegq_s64(v30.val[0]));
      vst2q_f64(v28, v31);
      v28 += 4;
      v27 -= 2;
    }

    while (v27);
    if (v22 != v23)
    {
      goto LABEL_29;
    }
  }

  return this;
}

void sub_23CD3B3B4(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *operations_research::Domain::IntersectionWith@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, const operations_research::Domain *a3@<X1>)
{
  *a1 = 0;
  v3 = *this;
  if (*this >= 2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = this + 1;
    v9 = (a3 + 8);
    do
    {
      v14 = *a3;
      if (v6 >= *a3 >> 1)
      {
        return this;
      }

      v15 = this + 1;
      if (v3)
      {
        v15 = *v8;
      }

      v16 = 2 * v5;
      v17 = v15[2 * v5];
      if (v14)
      {
        v18 = *v9;
        if (v17 <= *&(*v9)[16 * v6])
        {
LABEL_19:
          v19 = this + 1;
          if (v3)
          {
            v19 = *v8;
          }

          v20 = v19[2 * v5 + 1];
          v21 = *v9;
          if (v14)
          {
            v22 = *v9;
          }

          else
          {
            v22 = a3 + 8;
          }

          if (v20 < *&v22[16 * v6])
          {
            ++v7;
            goto LABEL_13;
          }

          v29 = this + 1;
          if (v3)
          {
            v29 = *v8;
          }

          v30 = v29[2 * v5 + 1];
          if (v14)
          {
            v31 = *&v21[16 * v6 + 8];
            if (v30 <= v31)
            {
LABEL_51:
              v35 = this + 1;
              if (v3)
              {
                v35 = *v8;
              }

              v36 = v35[2 * v5 + 1];
              *&v39 = *&v21[16 * v6];
              *(&v39 + 1) = v36;
              v32 = *a1;
              if (*a1)
              {
                v37 = a1[2];
              }

              else
              {
                v37 = 1;
              }

              v34 = v32 >> 1;
              if (v32 >> 1 == v37)
              {
                absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(a1, &v39);
              }

LABEL_57:
              if (v32)
              {
                v38 = a1[1];
              }

              else
              {
                v38 = a1 + 1;
              }

              *&v38[2 * v34] = v39;
              *a1 += 2;
              ++v7;
              goto LABEL_13;
            }
          }

          else
          {
            v31 = v9[2 * v6 + 1];
            v21 = a3 + 8;
            if (v30 <= v31)
            {
              goto LABEL_51;
            }
          }

          *&v39 = *&v21[16 * v6];
          *(&v39 + 1) = v31;
          v10 = *a1;
          if (*a1)
          {
            v11 = a1[2];
          }

          else
          {
            v11 = 1;
          }

          v12 = v10 >> 1;
          if (v10 >> 1 == v11)
          {
            absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(a1, &v39);
          }

          goto LABEL_8;
        }
      }

      else
      {
        v18 = a3 + 8;
        if (v17 <= v9[2 * v6])
        {
          goto LABEL_19;
        }
      }

      v23 = this + 1;
      if (v3)
      {
        v23 = *v8;
      }

      if (*&v18[16 * v6 + 8] < v23[2 * v5])
      {
        goto LABEL_12;
      }

      v24 = *v9;
      if ((v14 & 1) == 0)
      {
        v24 = a3 + 8;
      }

      v25 = *&v24[16 * v6 + 8];
      if (v3)
      {
        v27 = *v8;
        v26 = *(*v8 + 16 * v5 + 8);
        if (v25 > v26)
        {
LABEL_45:
          *&v39 = v27[v16];
          *(&v39 + 1) = v26;
          v32 = *a1;
          if (*a1)
          {
            v33 = a1[2];
          }

          else
          {
            v33 = 1;
          }

          v34 = v32 >> 1;
          if (v32 >> 1 == v33)
          {
            absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(a1, &v39);
          }

          goto LABEL_57;
        }
      }

      else
      {
        v26 = v8[2 * v5 + 1];
        v27 = this + 1;
        if (v25 > v26)
        {
          goto LABEL_45;
        }
      }

      *&v39 = v27[v16];
      *(&v39 + 1) = v25;
      v10 = *a1;
      if (*a1)
      {
        v28 = a1[2];
      }

      else
      {
        v28 = 1;
      }

      v12 = v10 >> 1;
      if (v10 >> 1 == v28)
      {
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(a1, &v39);
      }

LABEL_8:
      if (v10)
      {
        v13 = a1[1];
      }

      else
      {
        v13 = a1 + 1;
      }

      *&v13[2 * v12] = v39;
      *a1 += 2;
LABEL_12:
      ++v6;
LABEL_13:
      v5 = v7;
      v3 = *this;
    }

    while (v7 < *this >> 1);
  }

  return this;
}

void sub_23CD3B6A4(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::Domain::UnionWith(unint64_t *__return_ptr a1@<X8>, operations_research::Domain *this@<X0>, const operations_research::Domain *a3@<X1>)
{
  *a1 = 0;
  absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::ClosedInterval>>>(a1, (*a3 >> 1) + (*this >> 1));
  v9 = *this;
  v8 = this + 8;
  v7 = v9;
  if (v9)
  {
    v8 = *v8;
  }

  v10 = *a3;
  v13 = *(a3 + 1);
  v12 = a3 + 8;
  v11 = v13;
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  v15 = &v14[16 * (v10 >> 1)];
  if (*a1)
  {
    v16 = a1[1];
  }

  else
  {
    v16 = (a1 + 1);
  }

  if ((v7 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v17 = &v8[16 * (v7 >> 1)];
    while (v14 != v15)
    {
      if (*v14 >= *v8)
      {
        v18 = *v8;
        v8 += 16;
        *v16 = v18;
        v16 += 2;
        if (v8 == v17)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v19 = *v14;
        v14 += 16;
        *v16 = v19;
        v16 += 2;
        if (v8 == v17)
        {
          goto LABEL_15;
        }
      }
    }

    v20 = v17 - v8;
    v14 = v8;
  }

  else
  {
LABEL_15:
    if (v14 == v15)
    {
      goto LABEL_19;
    }

    v20 = v15 - v14;
  }

  memmove(v16, v14, v20);
LABEL_19:
  v21 = *a1;
  v22 = *a1 >> 1;
  if (v22)
  {
    if (v22 < 2)
    {
      v33 = 1;
    }

    else
    {
      v23 = 0;
      v24 = (v21 >> 1) - 1;
      v25 = 1;
      do
      {
        while (1)
        {
          v27 = a1[1];
          if ((v21 & 1) == 0)
          {
            v27 = (a1 + 1);
          }

          v28 = &v27[v23];
          v29 = &v27[2 * v25 - 2];
          v32 = v29[1];
          v30 = v29 + 1;
          v31 = v32;
          if (v32 == 0x7FFFFFFFFFFFFFFFLL || v28[2] <= v31 + 1)
          {
            break;
          }

          *&v27[2 * v25++] = *(v28 + 1);
          v21 = *a1;
          v23 += 2;
          if (!--v24)
          {
            goto LABEL_30;
          }
        }

        v26 = v28[3];
        if (v26 <= v31)
        {
          v26 = v31;
        }

        *v30 = v26;
        v23 += 2;
        --v24;
      }

      while (v24);
LABEL_30:
      v33 = v25;
    }

    absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::ClosedInterval>>>(a1, v33);
    if (*a1)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::ShrinkToFit(a1);
    }
  }
}

void sub_23CD3B874(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::Domain::AdditionWith(unint64_t *__return_ptr a1@<X8>, operations_research::Domain *this@<X0>, const operations_research::Domain *a3@<X1>, __n128 a4@<Q0>)
{
  *a1 = 0;
  v5 = (a1 + 1);
  v6 = *this;
  v7 = (*a3 >> 1) * (*this >> 1);
  if (v7 >= 2)
  {
    if (!(v7 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v36 = 0;
  v8 = (this + 8);
  if (v6)
  {
    v8 = *v8;
  }

  if ((v6 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v9 = &v8[2 * (v6 >> 1)];
    while (1)
    {
      v10 = *a3;
      v11 = (*a3 & 1) != 0 ? *(a3 + 1) : (a3 + 8);
      if ((v10 & 0x1FFFFFFFFFFFFFFELL) != 0)
      {
        break;
      }

LABEL_7:
      v8 += 2;
      if (v8 == v9)
      {
        v6 = *this;
        v36 = *a1;
        goto LABEL_48;
      }
    }

    v12 = 16 * (v10 >> 1);
    while (1)
    {
      v21 = *v8;
      v22 = __OFSUB__(*v8, 1);
      if (*v8 < 1 || (v23 = *v11, v22 = __OFSUB__(*v11, 1), *v11 < 1))
      {
        v30 = v8[1];
        v31 = *(v11 + 1);
        if ((v30 & 0x8000000000000000) == 0 || (v31 & 0x8000000000000000) == 0)
        {
          v13 = (v21 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          v22 = __OFADD__(v21, *v11);
          v14 = v21 + *v11;
          if (v22)
          {
            v14 = v13;
          }

          v15 = (v30 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          v22 = __OFADD__(v30, v31);
          v16 = v30 + v31;
          if (v22)
          {
            v16 = v15;
          }

          v51.n128_u64[0] = v14;
          v51.n128_u64[1] = v16;
          v17 = *a1;
          if (*a1)
          {
            v18 = a1[2];
          }

          else
          {
            v18 = 1;
          }

          v19 = v17 >> 1;
          if (v17 >> 1 == v18)
          {
            absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(a1, &v51);
          }

          goto LABEL_21;
        }

        v32 = v31 + v30;
        if (((((v31 + v30) ^ v30) & ((v31 + v30) ^ v31) & 0x8000000000000000) != 0) == v22)
        {
          v33 = (v21 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          v22 = __OFADD__(v21, *v11);
          v34 = v21 + *v11;
          if (v22)
          {
            v34 = v33;
          }

          v51.n128_u64[0] = v34;
          v51.n128_u64[1] = v32;
          v17 = *a1;
          if (*a1)
          {
            v35 = a1[2];
          }

          else
          {
            v35 = 1;
          }

          v19 = v17 >> 1;
          if (v17 >> 1 == v35)
          {
            absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(a1, &v51);
          }

          goto LABEL_21;
        }
      }

      else
      {
        v24 = v23 + v21;
        if (((((v23 + v21) ^ v21) & ((v23 + v21) ^ v23) & 0x8000000000000000) != 0) == __OFSUB__(*v11, 1))
        {
          v25 = v8[1];
          v26 = *(v11 + 1);
          v27 = (v25 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          v22 = __OFADD__(v25, v26);
          v28 = v25 + v26;
          if (v22)
          {
            v28 = v27;
          }

          v51.n128_u64[0] = v24;
          v51.n128_u64[1] = v28;
          v17 = *a1;
          if (*a1)
          {
            v29 = a1[2];
          }

          else
          {
            v29 = 1;
          }

          v19 = v17 >> 1;
          if (v17 >> 1 == v29)
          {
            absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(a1, &v51);
          }

LABEL_21:
          if (v17)
          {
            v20 = a1[1];
          }

          else
          {
            v20 = v5;
          }

          a4 = v51;
          *(v20 + 16 * v19) = v51;
          *a1 += 2;
        }
      }

      v11 = (v11 + 16);
      v12 -= 16;
      if (!v12)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_48:
  if (v6 >= 4 && *a3 > 3uLL)
  {
    if (v36)
    {
      v37 = *v5;
    }

    else
    {
      v37 = v5;
    }

    v38 = 126 - 2 * __clz((8 * v36) >> 4);
    if ((v36 & 0x1FFFFFFFFFFFFFFELL) != 0)
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ReservoirTimeTabling::ProfileRectangle *,false>(v37, (v37 + ((8 * v36) & 0xFFFFFFFFFFFFFFF0)), &v51, v39, 1, a4);
    v36 = *a1;
  }

  if ((v36 >> 1))
  {
    if ((v36 >> 1) < 2)
    {
      v50 = 1;
    }

    else
    {
      v40 = 0;
      v41 = (v36 >> 1) - 1;
      v42 = 1;
      do
      {
        while (1)
        {
          v44 = *v5;
          if ((v36 & 1) == 0)
          {
            v44 = v5;
          }

          v45 = &v44[v40];
          v46 = &v44[v42 - 1];
          v49 = *(v46 + 1);
          v47 = v46 + 8;
          v48 = v49;
          if (v49 == 0x7FFFFFFFFFFFFFFFLL || *(v45 + 2) <= v48 + 1)
          {
            break;
          }

          v44[v42++] = *(v45 + 1);
          v36 = *a1;
          ++v40;
          if (!--v41)
          {
            goto LABEL_68;
          }
        }

        v43 = *(v45 + 3);
        if (v43 <= v48)
        {
          v43 = v48;
        }

        *v47 = v43;
        ++v40;
        --v41;
      }

      while (v41);
LABEL_68:
      v50 = v42;
    }

    absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::ClosedInterval>>>(a1, v50);
    if (*a1)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::ShrinkToFit(a1);
    }
  }
}

void sub_23CD3BC18(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

__n128 operations_research::Domain::RelaxIfTooComplex@<Q0>(unint64_t *__return_ptr a1@<X8>, operations_research::Domain *this@<X0>)
{
  v3 = *this;
  v4 = *this >> 1;
  if (v4 < 101)
  {
    *a1 = 0;
    if (v3 >= 2)
    {
      if (v3)
      {
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(a1, this);
      }

      else
      {
        *a1 = v3;
        result = *(this + 8);
        *(a1 + 1) = result;
      }
    }
  }

  else
  {
    v5 = (this + 8);
    if (v3)
    {
      v5 = *v5;
    }

    v6 = *v5;
    v7 = v5[2 * v4 - 1];
    v8 = *v5 <= v7;
    a1[1] = v6;
    a1[2] = v7;
    *a1 = 2 * v8;
  }

  return result;
}

void sub_23CD3BCD4(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::Domain::MultiplicationBy(unint64_t *__return_ptr a1@<X8>, unint64_t *this@<X0>, BOOL *a3@<X2>, uint64_t a4@<X1>)
{
  if (a3)
  {
    *a3 = 1;
  }

  v6 = *this;
  if (*this <= 1)
  {
    *a1 = 0;
    return;
  }

  if (!a4)
  {
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 2;
    return;
  }

  if (a4 >= 0)
  {
    v7 = a4;
  }

  else
  {
    v7 = -a4;
  }

  if (v7 <= 1)
  {
    *a1 = 0;
    if (a1 != this)
    {
      v30 = this[1];
      v28 = (this + 1);
      v29 = v30;
      if (v6)
      {
        v31 = v29;
      }

      else
      {
        v31 = v28;
      }

      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::Assign<absl::lts_20240722::inlined_vector_internal::IteratorValueAdapter<std::allocator<operations_research::ClosedInterval>,operations_research::ClosedInterval const*>>(a1, v31, (8 * v6) >> 4);
    }

    goto LABEL_57;
  }

  v8 = (this + 1);
  v9 = (this + 1);
  if (v6)
  {
    v9 = *v8;
  }

  v10 = v6 >> 1;
  if ((v6 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v11 = 0;
    v12 = &v9[2 * v10];
    do
    {
      v13 = *v9;
      v14 = v9[1];
      v9 += 2;
      v15 = __OFSUB__(v14, v13);
      v16 = v14 - v13;
      if (v15)
      {
        v16 = (v14 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      }

      v17 = (v11 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      v15 = __OFADD__(v11, v16);
      v11 += v16;
      if (v15)
      {
        v11 = v17;
      }
    }

    while (v9 != v12);
    v15 = __OFADD__(v11, v10);
    v18 = v11 + v10;
    if (v15)
    {
      v19 = (v11 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    if (v19 >= 101)
    {
      goto LABEL_23;
    }

    goto LABEL_31;
  }

  v19 = v6 >> 1;
  if (v6 >> 1 < 0x65)
  {
LABEL_31:
    *a1 = 0;
    if (v19 >= 2)
    {
      if (!(v19 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (v6)
    {
      v8 = *v8;
    }

    if ((v6 & 0x1FFFFFFFFFFFFFFELL) != 0)
    {
      v20 = &v8[2 * (v6 >> 1)];
      do
      {
        v21 = *v8;
        v22 = v7 * *v8;
        do
        {
          if (v21 >= -(0x8000000000000000 / v7) && v21 <= (0x7FFFFFFFFFFFFFFFuLL / v7))
          {
            *&v32 = v22;
            *(&v32 + 1) = v22;
            v25 = *a1;
            if (*a1)
            {
              v26 = a1[2];
            }

            else
            {
              v26 = 1;
            }

            v27 = v25 >> 1;
            if (v25 >> 1 == v26)
            {
              absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(a1, &v32);
            }

            if (v25)
            {
              v23 = a1[1];
            }

            else
            {
              v23 = a1 + 1;
            }

            *&v23[2 * v27] = v32;
            *a1 += 2;
          }

          v22 += v7;
        }

        while (v21++ != v8[1]);
        v8 += 2;
      }

      while (v8 != v20);
    }

LABEL_57:
    operations_research::Domain::MultiplicationBy(a4, a1);
    return;
  }

LABEL_23:
  if (a3)
  {
    *a3 = 0;
  }

  operations_research::Domain::ContinuousMultiplicationBy(a1, this, a4);
}

void sub_23CD3BF94(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::Domain::ContinuousMultiplicationBy(unint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, uint64_t a3@<X1>)
{
  v6 = 0;
  *a1 = 0;
  v7 = *this;
  if (*this >= 2)
  {
    if (v7)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(a1, this);
      v6 = *a1;
    }

    else
    {
      *a1 = v7;
      *(a1 + 1) = *(this + 1);
      v6 = v7;
    }
  }

  if (a3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = -a3;
  }

  v9 = a1 + 1;
  if (v6)
  {
    v10 = a1[1];
  }

  else
  {
    v10 = a1 + 1;
  }

  v11 = v6 >> 1;
  if ((v6 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v12 = &v10[2 * v11];
    do
    {
      v13 = v10[1];
      if ((*v10 * v8) >> 64 == (*v10 * v8) >> 63)
      {
        v14 = *v10 * v8;
      }

      else
      {
        v14 = ((*v10 ^ v8) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      }

      v15 = v13 * v8;
      v16 = (v13 * v8) >> 64 == (v13 * v8) >> 63;
      v17 = ((v13 ^ v8) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      if (v16)
      {
        v17 = v15;
      }

      *v10 = v14;
      v10[1] = v17;
      v10 += 2;
    }

    while (v10 != v12);
  }

  if (v11)
  {
    if (v11 < 2)
    {
      v28 = 1;
    }

    else
    {
      v18 = 0;
      v19 = (v6 >> 1) - 1;
      v20 = 1;
      do
      {
        while (1)
        {
          v22 = *v9;
          if ((v6 & 1) == 0)
          {
            v22 = a1 + 1;
          }

          v23 = &v22[v18];
          v24 = &v22[2 * v20 - 2];
          v27 = v24[1];
          v25 = (v24 + 1);
          v26 = v27;
          if (v27 == 0x7FFFFFFFFFFFFFFFLL || v23[2] <= v26 + 1)
          {
            break;
          }

          *&v22[2 * v20++] = *(v23 + 1);
          v6 = *a1;
          v18 += 2;
          if (!--v19)
          {
            goto LABEL_31;
          }
        }

        v21 = v23[3];
        if (v21 <= v26)
        {
          v21 = v26;
        }

        *v25 = v21;
        v18 += 2;
        --v19;
      }

      while (v19);
LABEL_31:
      v28 = v20;
    }

    absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::ClosedInterval>>>(a1, v28);
    if (*a1)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::ShrinkToFit(a1);
    }
  }

  if (a3 < 0)
  {
    v29 = *a1;
    if (*a1 >= 2)
    {
      v30 = *a1 & 1;
      v31 = *v9;
      if (v29)
      {
        v32 = *v9;
      }

      else
      {
        v32 = a1 + 1;
      }

      v33 = v29 >> 1;
      if ((v29 & 0x1FFFFFFFFFFFFFFELL) != 0)
      {
        v34 = &v32[2 * v33 - 2];
        if (v34 > v32)
        {
          v35 = v32 + 2;
          do
          {
            v52 = *(v35 - 1);
            *(v35 - 1) = *v34;
            *v34 = v52;
            v34 -= 2;
            v38 = v35 >= v34;
            v35 += 2;
          }

          while (!v38);
          v29 = *a1;
          v31 = a1[1];
          v30 = *a1 & 1;
          v33 = *a1 >> 1;
        }
      }

      if (v30)
      {
        v36 = v31;
      }

      else
      {
        v36 = a1 + 1;
      }

      if (v36[2 * v33 - 1] == 0x8000000000000000)
      {
        v30 = v29 & 1;
        v29 -= 2;
        *a1 = v29;
        v33 = v29 >> 1;
      }

      if (!v30)
      {
        v31 = a1 + 1;
      }

      if ((v29 & 0x1FFFFFFFFFFFFFFELL) != 0)
      {
        v37 = (v33 - 1) & 0xFFFFFFFFFFFFFFFLL;
        if (v37 < 0xB || (&v31[2 * v33 - 1] >= v31 + 1 ? (v38 = &v31[2 * v33 - 2] >= v31) : (v38 = 0), !v38))
        {
          v39 = v31;
LABEL_60:
          v40 = &v31[2 * v33];
          v41 = vnegq_f64(0);
          v42.f64[0] = NAN;
          v42.f64[1] = NAN;
          v43 = vnegq_f64(v42);
          do
          {
            v44 = vextq_s8(*v39, *v39, 8uLL);
            *v39++ = vbslq_s8(vceqq_s64(v44, v41), v43, vnegq_s64(v44));
          }

          while (v39 != v40);
          return;
        }

        v45 = v37 + 1;
        v46 = (v37 + 1) & 0x1FFFFFFFFFFFFFFELL;
        v39 = &v31[2 * v46];
        v47 = vnegq_f64(0);
        v48.f64[0] = NAN;
        v48.f64[1] = NAN;
        v49 = vnegq_f64(v48);
        v50 = v46;
        v51 = v31;
        do
        {
          v53 = vld2q_f64(v51);
          v54.val[0] = vbslq_s8(vceqq_s64(v53.val[1], v47), v49, vnegq_s64(v53.val[1]));
          v54.val[1] = vbslq_s8(vceqq_s64(v53.val[0], v47), v49, vnegq_s64(v53.val[0]));
          vst2q_f64(v51, v54);
          v51 += 4;
          v50 -= 2;
        }

        while (v50);
        if (v45 != v46)
        {
          goto LABEL_60;
        }
      }
    }
  }
}

void sub_23CD3C2B4(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::Domain::ContinuousMultiplicationBy(unint64_t *__return_ptr a1@<X8>, operations_research::Domain *this@<X0>, const operations_research::Domain *a3@<X1>, __n128 a4@<Q0>)
{
  *a1 = 0;
  v6 = (this + 8);
  v5 = *this;
  if (*this)
  {
    v6 = *v6;
  }

  if ((v5 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v7 = &v6[2 * (v5 >> 1)];
    do
    {
      v8 = *a3;
      if (*a3)
      {
        v9 = *(a3 + 1);
      }

      else
      {
        v9 = (a3 + 8);
      }

      if ((v8 & 0x1FFFFFFFFFFFFFFELL) != 0)
      {
        v10 = &v9[2 * (v8 >> 1)];
        do
        {
          v42 = 0uLL;
          v11 = *v6;
          v12 = v6[1];
          v13 = *v9;
          v14 = v9[1];
          v15 = ((*v9 ^ *v6) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          if ((*v6 * *v9) >> 64 == (*v6 * *v9) >> 63)
          {
            v15 = *v6 * *v9;
          }

          v16 = ((v14 ^ v12) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          if ((v12 * v14) >> 64 == (v12 * v14) >> 63)
          {
            v16 = v12 * v14;
          }

          if ((v11 * v14) >> 64 == (v11 * v14) >> 63)
          {
            v17 = v11 * v14;
          }

          else
          {
            v17 = ((v14 ^ v11) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          }

          if ((v12 * v13) >> 64 == (v12 * v13) >> 63)
          {
            v18 = v12 * v13;
          }

          else
          {
            v18 = ((v12 ^ v13) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v16 >= v15)
          {
            v19 = v15;
          }

          else
          {
            v19 = v16;
          }

          if (v17 < v19)
          {
            v19 = v17;
          }

          if (v18 < v19)
          {
            v19 = v18;
          }

          if (v15 <= v16)
          {
            v20 = v16;
          }

          else
          {
            v20 = v15;
          }

          if (v20 > v17)
          {
            v17 = v20;
          }

          if (v17 <= v18)
          {
            v17 = v18;
          }

          v42.n128_u64[0] = v19;
          v42.n128_u64[1] = v17;
          v21 = *a1;
          if (*a1)
          {
            v22 = a1[2];
          }

          else
          {
            v22 = 1;
          }

          v23 = v21 >> 1;
          if (v21 >> 1 == v22)
          {
            absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(a1, &v42);
          }

          if (v21)
          {
            v24 = a1[1];
          }

          else
          {
            v24 = (a1 + 1);
          }

          a4 = v42;
          *&v24[2 * v23] = v42;
          *a1 += 2;
          v9 += 2;
        }

        while (v9 != v10);
      }

      v6 += 2;
    }

    while (v6 != v7);
    v25 = *a1;
  }

  else
  {
    v25 = 0;
  }

  if (v25)
  {
    v26 = a1[1];
  }

  else
  {
    v26 = (a1 + 1);
  }

  v27 = 126 - 2 * __clz((8 * v25) >> 4);
  if ((v25 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ReservoirTimeTabling::ProfileRectangle *,false>(v26, (v26 + ((8 * v25) & 0xFFFFFFFFFFFFFFF0)), &v42, v28, 1, a4);
  v29 = *a1;
  v30 = *a1 >> 1;
  if (v30)
  {
    if (v30 < 2)
    {
      v41 = 1;
    }

    else
    {
      v31 = 0;
      v32 = (v29 >> 1) - 1;
      v33 = 1;
      do
      {
        while (1)
        {
          v35 = a1[1];
          if ((v29 & 1) == 0)
          {
            v35 = (a1 + 1);
          }

          v36 = &v35[v31];
          v37 = &v35[2 * v33 - 2];
          v40 = v37[1];
          v38 = v37 + 1;
          v39 = v40;
          if (v40 == 0x7FFFFFFFFFFFFFFFLL || v36[2] <= v39 + 1)
          {
            break;
          }

          *&v35[2 * v33++] = *(v36 + 1);
          v29 = *a1;
          v31 += 2;
          if (!--v32)
          {
            goto LABEL_64;
          }
        }

        v34 = v36[3];
        if (v34 <= v39)
        {
          v34 = v39;
        }

        *v38 = v34;
        v31 += 2;
        --v32;
      }

      while (v32);
LABEL_64:
      v41 = v33;
    }

    absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::ClosedInterval>>>(a1, v41);
    if (*a1)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::ShrinkToFit(a1);
    }
  }
}

void sub_23CD3C590(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::Domain::DivisionBy(unint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, uint64_t a3@<X1>)
{
  if (!a3)
  {
    operations_research::Domain::DivisionBy(&v48);
  }

  v6 = 0;
  *a1 = 0;
  v7 = *this;
  if (*this >= 2)
  {
    if (v7)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(a1, this);
      v6 = *a1;
    }

    else
    {
      *a1 = v7;
      *(a1 + 1) = *(this + 1);
      v6 = v7;
    }
  }

  if (a3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = -a3;
  }

  v9 = a1 + 1;
  if (v6)
  {
    v10 = a1[1];
  }

  else
  {
    v10 = (a1 + 1);
  }

  v11 = v6 >> 1;
  if ((v6 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v12 = &v10[2 * v11];
    do
    {
      v13 = v10[1] / v8;
      *v10 /= v8;
      v10[1] = v13;
      v10 += 2;
    }

    while (v10 != v12);
  }

  if (v11)
  {
    if (v11 < 2)
    {
      v24 = 1;
    }

    else
    {
      v14 = 0;
      v15 = (v6 >> 1) - 1;
      v16 = 1;
      do
      {
        while (1)
        {
          v18 = *v9;
          if ((v6 & 1) == 0)
          {
            v18 = a1 + 1;
          }

          v19 = &v18[v14];
          v20 = &v18[2 * v16 - 2];
          v23 = v20[1];
          v21 = (v20 + 1);
          v22 = v23;
          if (v23 == 0x7FFFFFFFFFFFFFFFLL || v19[2] <= v22 + 1)
          {
            break;
          }

          *&v18[2 * v16++] = *(v19 + 1);
          v6 = *a1;
          v14 += 2;
          if (!--v15)
          {
            goto LABEL_26;
          }
        }

        v17 = v19[3];
        if (v17 <= v22)
        {
          v17 = v22;
        }

        *v21 = v17;
        v14 += 2;
        --v15;
      }

      while (v15);
LABEL_26:
      v24 = v16;
    }

    absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::ClosedInterval>>>(a1, v24);
    if (*a1)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::ShrinkToFit(a1);
    }
  }

  if (a3 < 0)
  {
    v25 = *a1;
    if (*a1 >= 2)
    {
      v26 = *a1 & 1;
      v27 = *v9;
      if (v25)
      {
        v28 = *v9;
      }

      else
      {
        v28 = a1 + 1;
      }

      v29 = v25 >> 1;
      if ((v25 & 0x1FFFFFFFFFFFFFFELL) != 0)
      {
        v30 = &v28[2 * v29 - 2];
        if (v30 > v28)
        {
          v31 = v28 + 2;
          do
          {
            v48 = *(v31 - 1);
            *(v31 - 1) = *v30;
            *v30 = v48;
            v30 -= 2;
            v34 = v31 >= v30;
            v31 += 2;
          }

          while (!v34);
          v25 = *a1;
          v27 = a1[1];
          v26 = *a1 & 1;
          v29 = *a1 >> 1;
        }
      }

      if (v26)
      {
        v32 = v27;
      }

      else
      {
        v32 = a1 + 1;
      }

      if (v32[2 * v29 - 1] == 0x8000000000000000)
      {
        v26 = v25 & 1;
        v25 -= 2;
        *a1 = v25;
        v29 = v25 >> 1;
      }

      if (!v26)
      {
        v27 = a1 + 1;
      }

      if ((v25 & 0x1FFFFFFFFFFFFFFELL) != 0)
      {
        v33 = (v29 - 1) & 0xFFFFFFFFFFFFFFFLL;
        if (v33 < 0xB || (&v27[2 * v29 - 1] >= v27 + 1 ? (v34 = &v27[2 * v29 - 2] >= v27) : (v34 = 0), !v34))
        {
          v35 = v27;
LABEL_55:
          v36 = &v27[2 * v29];
          v37 = vnegq_f64(0);
          v38.f64[0] = NAN;
          v38.f64[1] = NAN;
          v39 = vnegq_f64(v38);
          do
          {
            v40 = vextq_s8(*v35, *v35, 8uLL);
            *v35++ = vbslq_s8(vceqq_s64(v40, v37), v39, vnegq_s64(v40));
          }

          while (v35 != v36);
          return;
        }

        v41 = v33 + 1;
        v42 = (v33 + 1) & 0x1FFFFFFFFFFFFFFELL;
        v35 = &v27[2 * v42];
        v43 = vnegq_f64(0);
        v44.f64[0] = NAN;
        v44.f64[1] = NAN;
        v45 = vnegq_f64(v44);
        v46 = v42;
        v47 = v27;
        do
        {
          v49 = vld2q_f64(v47);
          v50.val[0] = vbslq_s8(vceqq_s64(v49.val[1], v43), v45, vnegq_s64(v49.val[1]));
          v50.val[1] = vbslq_s8(vceqq_s64(v49.val[0], v43), v45, vnegq_s64(v49.val[0]));
          vst2q_f64(v47, v50);
          v47 += 4;
          v46 -= 2;
        }

        while (v46);
        if (v41 != v42)
        {
          goto LABEL_55;
        }
      }
    }
  }
}

void sub_23CD3C88C(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::Domain::InverseMultiplicationBy(unint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, uint64_t a3@<X1>)
{
  if (a3)
  {
    v6 = 0;
    *a1 = 0;
    v7 = *this;
    if (*this >= 2)
    {
      if (v7)
      {
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(a1, this);
        v6 = *a1;
      }

      else
      {
        *a1 = v7;
        *(a1 + 1) = *(this + 1);
        v6 = v7;
      }
    }

    if (a3 >= 0)
    {
      v16 = a3;
    }

    else
    {
      v16 = -a3;
    }

    v18 = a1 + 1;
    v17 = a1[1];
    if ((v6 & 1) == 0)
    {
      v17 = a1 + 1;
    }

    if ((v6 & 0x1FFFFFFFFFFFFFFELL) != 0)
    {
      v19 = 0;
      v20 = &v17[2 * (v6 >> 1)];
      while (1)
      {
        v22 = *v17 / v16;
        if (v22 * v16 < *v17)
        {
          ++v22;
        }

        v23 = v17[1] / v16 - (v17[1] / v16 * v16 > v17[1]);
        if (v22 > v23)
        {
          goto LABEL_29;
        }

        v24 = (v19 - 1);
        if (v19 < 1)
        {
          v26 = v19;
          v25 = *v18;
          if ((v6 & 1) == 0)
          {
            v25 = a1 + 1;
          }

          goto LABEL_42;
        }

        if (v6)
        {
          v25 = *v18;
          if (v22 != *(*v18 + 16 * v24 + 8) + 1)
          {
            v26 = v19;
            goto LABEL_42;
          }
        }

        else
        {
          v25 = a1 + 1;
          if (v22 != v18[2 * v24 + 1] + 1)
          {
            v26 = v19;
            v25 = a1 + 1;
LABEL_42:
            ++v19;
            v27 = &v25[2 * v26];
            *v27 = v22;
            v21 = v27 + 1;
            goto LABEL_28;
          }
        }

        v21 = &v25[2 * v24 + 1];
LABEL_28:
        *v21 = v23;
LABEL_29:
        v17 += 2;
        if (v17 == v20)
        {
          v28 = v19;
          goto LABEL_45;
        }
      }
    }

    v28 = 0;
LABEL_45:
    absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::ClosedInterval>>>(a1, v28);
    if (*a1)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::ShrinkToFit(a1);
    }

    if (a3 < 0)
    {
      v29 = *a1;
      if (*a1 >= 2)
      {
        v30 = *a1 & 1;
        v31 = *v18;
        if (v29)
        {
          v32 = *v18;
        }

        else
        {
          v32 = a1 + 1;
        }

        v33 = v29 >> 1;
        if ((v29 & 0x1FFFFFFFFFFFFFFELL) != 0)
        {
          v34 = &v32[2 * v33 - 2];
          if (v34 > v32)
          {
            v35 = v32 + 2;
            do
            {
              v52 = *(v35 - 1);
              *(v35 - 1) = *v34;
              *v34 = v52;
              v34 -= 2;
              v38 = v35 >= v34;
              v35 += 2;
            }

            while (!v38);
            v29 = *a1;
            v31 = a1[1];
            v30 = *a1 & 1;
            v33 = *a1 >> 1;
          }
        }

        if (v30)
        {
          v36 = v31;
        }

        else
        {
          v36 = a1 + 1;
        }

        if (v36[2 * v33 - 1] == 0x8000000000000000)
        {
          v30 = v29 & 1;
          v29 -= 2;
          *a1 = v29;
          v33 = v29 >> 1;
        }

        if (!v30)
        {
          v31 = a1 + 1;
        }

        if ((v29 & 0x1FFFFFFFFFFFFFFELL) != 0)
        {
          v37 = (v33 - 1) & 0xFFFFFFFFFFFFFFFLL;
          if (v37 < 0xB || (&v31[2 * v33 - 1] >= v31 + 1 ? (v38 = &v31[2 * v33 - 2] >= v31) : (v38 = 0), !v38))
          {
            v39 = v31;
LABEL_72:
            v40 = &v31[2 * v33];
            v41 = vnegq_f64(0);
            v42.f64[0] = NAN;
            v42.f64[1] = NAN;
            v43 = vnegq_f64(v42);
            do
            {
              v44 = vextq_s8(*v39, *v39, 8uLL);
              *v39++ = vbslq_s8(vceqq_s64(v44, v41), v43, vnegq_s64(v44));
            }

            while (v39 != v40);
            return;
          }

          v45 = v37 + 1;
          v46 = (v37 + 1) & 0x1FFFFFFFFFFFFFFELL;
          v39 = &v31[2 * v46];
          v47 = vnegq_f64(0);
          v48.f64[0] = NAN;
          v48.f64[1] = NAN;
          v49 = vnegq_f64(v48);
          v50 = v46;
          v51 = v31;
          do
          {
            v53 = vld2q_f64(v51);
            v54.val[0] = vbslq_s8(vceqq_s64(v53.val[1], v47), v49, vnegq_s64(v53.val[1]));
            v54.val[1] = vbslq_s8(vceqq_s64(v53.val[0], v47), v49, vnegq_s64(v53.val[0]));
            vst2q_f64(v51, v54);
            v51 += 4;
            v50 -= 2;
          }

          while (v50);
          if (v45 != v46)
          {
            goto LABEL_72;
          }
        }
      }
    }
  }

  else
  {
    v8 = this + 1;
    v9 = *this;
    v10 = this + 1;
    if (*this)
    {
      v10 = *v8;
    }

    if ((v9 & 0x1FFFFFFFFFFFFFFELL) != 0)
    {
      v11 = (8 * v9) >> 4;
      do
      {
        v12 = v11 >> 1;
        v13 = &v10[2 * (v11 >> 1)];
        v15 = *v13;
        v14 = v13 + 2;
        v11 += ~(v11 >> 1);
        if (v15 > 0)
        {
          v11 = v12;
        }

        else
        {
          v10 = v14;
        }
      }

      while (v11);
    }

    if (v9)
    {
      v8 = *v8;
    }

    if (v10 == v8 || *(v10 - 1) < 0)
    {
      *a1 = 0;
    }

    else
    {
      *(a1 + 1) = xmmword_23CE4E9F0;
      *a1 = 2;
    }
  }
}

void sub_23CD3CC44(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::Domain::PositiveModuloBySuperset(uint64_t *__return_ptr a1@<X8>, operations_research::Domain *this@<X0>, const operations_research::Domain *a3@<X1>)
{
  v3 = *this;
  if (*this <= 1uLL)
  {
    *a1 = 0;
    return;
  }

  v4 = *a3;
  v7 = *(a3 + 1);
  v5 = (a3 + 8);
  v6 = v7;
  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  if (*v8 < 1)
  {
    operations_research::Domain::PositiveModuloBySuperset(*v8, &v34);
  }

  v9 = v4 >> 1;
  v10 = v8[2 * (v4 >> 1) - 1];
  v11 = (this + 8);
  if (v3)
  {
    v14 = *v11;
    v12 = v14[2 * (v3 >> 1) - 1];
    v13 = *v14;
    if ((v12 & 0x8000000000000000) == 0)
    {
      if (v13 <= 0)
      {
LABEL_14:
        if (v13 <= 1 - v10)
        {
          v13 = 1 - v10;
        }

        if (v10 - 1 < v12)
        {
          v12 = v10 - 1;
        }

        a1[1] = v13;
        a1[2] = v12;
        *a1 = 2 * (v13 <= v12);
        return;
      }

LABEL_20:
      if (v4)
      {
        v18 = v6 + 16 * v9;
        v19 = *v6;
        v20 = *(v18 - 8);
        v16 = v20 - 1;
        v6 = v20;
        if (v19 != v20)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v15 = v5[2 * v9 - 1];
        v16 = v15 - 1;
        if (v15 != v6)
        {
LABEL_22:
          if (v16 < v12)
          {
            v12 = v16;
          }

          a1[1] = 0;
          a1[2] = v12;
          v17 = v12 >> 63;
          goto LABEL_35;
        }
      }

      v21 = v13 / v6 * v6;
      v17 = v12 - v21;
      if (v17 <= v16)
      {
        v26 = v13 - v21;
        a1[1] = v26;
        a1[2] = v17;
        LODWORD(v17) = v26 > v17;
      }

      else
      {
        a1[1] = 0;
        a1[2] = v16;
        v17 = v16 >> 63;
      }

LABEL_35:
      v27 = v17 == 0;
      v28 = 2;
      if (!v27)
      {
        v28 = 0;
      }

      *a1 = v28;
      return;
    }

    if (v13 >= 1)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v12 = *(this + v3);
    v13 = *v11;
    if ((v12 & 0x8000000000000000) == 0)
    {
      if (v13 < 1)
      {
        goto LABEL_14;
      }

      goto LABEL_20;
    }

    if (v13 > 0)
    {
      goto LABEL_20;
    }
  }

  if (v4)
  {
    v29 = v6 + 16 * v9;
    v30 = *v6;
    v31 = *(v29 - 8);
    v23 = v31 - 1;
    v6 = v31;
    if (v30 != v31)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v22 = v5[2 * v9 - 1];
    v23 = v22 - 1;
    if (v22 != v6)
    {
LABEL_31:
      v24 = -v13;
      if (v23 < -v13)
      {
        v24 = v23;
      }

      __p = 0;
      v36 = v24;
      v25 = v24 >> 63;
      goto LABEL_42;
    }
  }

  v32 = v12 - v13;
  v25 = -v12 % v6;
  if (v25 + v32 <= v23)
  {
    __p = v25;
    v36 = (v25 + v32);
    LODWORD(v25) = v25 > v25 + v32;
  }

  else
  {
    __p = 0;
    v36 = v23;
    v25 = v23 >> 63;
  }

LABEL_42:
  v27 = v25 == 0;
  v33 = 2;
  if (!v27)
  {
    v33 = 0;
  }

  v34 = v33;
  operations_research::Domain::Negation(a1, &v34);
  if (v34)
  {
    operator delete(__p);
  }
}

void sub_23CD3CEC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p)
{
  if (a10)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::Domain::PositiveDivisionBySuperset@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t this@<X0>, const operations_research::Domain *a3@<X1>)
{
  v5 = *this;
  if (*this >= 2uLL)
  {
    v6 = this;
    v7 = *a3;
    v10 = *(a3 + 1);
    v8 = (a3 + 8);
    v9 = v10;
    if ((v7 & 1) == 0)
    {
      v9 = v8;
    }

    this = *v9;
    if (*v9 < 1)
    {
      v17[2] = v3;
      v17[3] = v4;
      operations_research::Domain::PositiveDivisionBySuperset(this, v17);
    }

    v11 = (v6 + 8);
    if (v5)
    {
      v11 = *v11;
    }

    v12 = v9[2 * (v7 >> 1) - 1];
    v13 = *v11 / v12;
    if (*v11 / this < v13)
    {
      v13 = *v11 / this;
    }

    v14 = v11[2 * (v5 >> 1) - 1];
    v15 = v14 / this;
    v16 = v14 / v12;
    if (v15 > v16)
    {
      v16 = v15;
    }

    a1[1] = v13;
    a1[2] = v16;
    *a1 = 2 * (v13 <= v16);
  }

  else
  {
    *a1 = 0;
  }

  return this;
}

void operations_research::Domain::SquareSuperset(unint64_t *__return_ptr a1@<X8>, operations_research::Domain *this@<X0>)
{
  if (*this <= 1uLL)
  {
    *a1 = 0;
    return;
  }

  v53 = 0x7FFFFFFFFFFFFFFFLL;
  v52 = xmmword_23CE4EDA0;
  operations_research::Domain::IntersectionWith(&v54, this, &v52);
  operations_research::Domain::Negation(v50, this);
  v49 = 0x7FFFFFFFFFFFFFFFLL;
  v48 = xmmword_23CE4EDA0;
  operations_research::Domain::IntersectionWith(v51, v50, &v48);
  operations_research::Domain::UnionWith(&v55, &v54, v51);
  if (v51[0])
  {
    operator delete(v51[1]);
    if ((v50[0] & 1) == 0)
    {
LABEL_5:
      if ((v54.n128_u8[0] & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((v50[0] & 1) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v50[1]);
  if (v54.n128_u8[0])
  {
LABEL_6:
    operator delete(v54.n128_u64[1]);
  }

LABEL_7:
  v4 = v56[0];
  v5 = v55 & 1;
  if (v55)
  {
    v6 = v56[0];
  }

  else
  {
    v6 = v56;
  }

  v7 = v55 >> 1;
  if ((v55 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v8 = 0;
    v9 = v6;
    v10 = &v6[2 * v7];
    do
    {
      v11 = *v9;
      v12 = v9[1];
      v9 += 2;
      v13 = __OFSUB__(v12, v11);
      v14 = v12 - v11;
      if (v13)
      {
        v14 = (v12 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      }

      v15 = (v8 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      v13 = __OFADD__(v8, v14);
      v8 += v14;
      if (v13)
      {
        v8 = v15;
      }
    }

    while (v9 != v10);
    v16 = (v8 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    v13 = __OFADD__(v8, v7);
    v17 = v8 + v7;
    if (v13)
    {
      v17 = v16;
    }

    if (v17 <= 99)
    {
      v18 = 0;
      if ((v55 & 0x1FFFFFFFFFFFFFFELL) != 0)
      {
        do
        {
          v19 = *v6;
          v20 = v6[1];
          v6 += 2;
          v13 = __OFSUB__(v20, v19);
          v21 = v20 - v19;
          if (v13)
          {
            v21 = (v20 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          }

          v22 = (v18 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          v13 = __OFADD__(v18, v21);
          v18 += v21;
          if (v13)
          {
            v18 = v22;
          }
        }

        while (v6 != v10);
      }

      v13 = __OFADD__(v18, v7);
      v23 = v18 + v7;
      if (v13)
      {
        v24 = (v18 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v23;
      }

      if (v24)
      {
LABEL_30:
        if (!(v24 >> 61))
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      goto LABEL_71;
    }

LABEL_38:
    *a1 = 0;
    if (v7 >= 2)
    {
      if (!(v7 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v35 = 0;
    if (v5)
    {
      v34 = v4;
    }

    else
    {
      v34 = v56;
    }

    if ((v7 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v25 = &v34[2 * v7];
      do
      {
        v26 = *v34;
        v27 = v34[1];
        if ((v26 * v26) >> 64 == (v26 * v26) >> 63)
        {
          v28 = v26 * v26;
        }

        else
        {
          v28 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if ((v27 * v27) >> 64 == (v27 * v27) >> 63)
        {
          v29 = v27 * v27;
        }

        else
        {
          v29 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v54.n128_u64[0] = v28;
        v54.n128_u64[1] = v29;
        v30 = *a1;
        if (*a1)
        {
          v31 = a1[2];
        }

        else
        {
          v31 = 1;
        }

        v32 = v30 >> 1;
        if (v30 >> 1 == v31)
        {
          absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(a1, &v54);
        }

        if (v30)
        {
          v33 = a1[1];
        }

        else
        {
          v33 = a1 + 1;
        }

        *&v33[2 * v32] = v54;
        *a1 += 2;
        v34 += 2;
      }

      while (v34 != v25);
      v35 = *a1;
    }

    if ((v35 >> 1))
    {
      if ((v35 >> 1) < 2)
      {
        v46 = 1;
      }

      else
      {
        v36 = 0;
        v37 = (v35 >> 1) - 1;
        v38 = 1;
        do
        {
          while (1)
          {
            v40 = a1[1];
            if ((v35 & 1) == 0)
            {
              v40 = a1 + 1;
            }

            v41 = &v40[v36];
            v42 = &v40[2 * v38 - 2];
            v45 = v42[1];
            v43 = (v42 + 1);
            v44 = v45;
            if (v45 == 0x7FFFFFFFFFFFFFFFLL || v41[2] <= v44 + 1)
            {
              break;
            }

            *&v40[2 * v38++] = *(v41 + 1);
            v35 = *a1;
            v36 += 2;
            if (!--v37)
            {
              goto LABEL_69;
            }
          }

          v39 = v41[3];
          if (v39 <= v44)
          {
            v39 = v44;
          }

          *v43 = v39;
          v36 += 2;
          --v37;
        }

        while (v37);
LABEL_69:
        v46 = v38;
      }

      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::ClosedInterval>>>(a1, v46);
      if (*a1)
      {
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::ShrinkToFit(a1);
      }
    }

    goto LABEL_77;
  }

  if (v55 >= 0xC8)
  {
    goto LABEL_38;
  }

  v24 = v55 >> 1;
  if (v55 >> 1)
  {
    goto LABEL_30;
  }

LABEL_71:
  if (v55 > 1 && (v55 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    operator new();
  }

  memset(v47, 0, sizeof(v47));
  operations_research::Domain::FromValues(v47, a1);
LABEL_77:
  if (v55)
  {
    operator delete(v56[0]);
  }
}

void sub_23CD3D578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22, void *__p)
{
  if (*v23)
  {
    operator delete(*v24);
  }

  if (*(v25 - 112))
  {
    operator delete(*(v25 - 104));
  }

  _Unwind_Resume(exception_object);
}

double operations_research::Domain::SimplifyUsingImpliedDomain@<D0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, const operations_research::Domain *a3@<X1>)
{
  *a1 = 0;
  v4 = *a3;
  if (*a3 >= 2uLL)
  {
    v6 = this + 1;
    v5 = *this;
    if (*this)
    {
      v6 = *v6;
    }

    if ((v5 & 0x1FFFFFFFFFFFFFFELL) != 0)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (a3 + 8);
      v33 = &v6[2 * (v5 >> 1)];
      while (1)
      {
        v12 = *v6;
        v13 = v6[1];
        v14 = v7;
        if (v8)
        {
          v15 = *v11;
          if ((v4 & 1) == 0)
          {
            v15 = a3 + 8;
          }

          if (*&v15[16 * v7] < v12)
          {
            *&v34 = v10;
            *(&v34 + 1) = v9;
            v16 = *a1;
            if (*a1)
            {
              v17 = a1[2];
            }

            else
            {
              v17 = 1;
            }

            v18 = v16 >> 1;
            if (v16 >> 1 == v17)
            {
              absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(a1, &v34);
            }

            v19 = a1 + 1;
            if (*a1)
            {
              v19 = a1[1];
            }

            result = *&v34;
            *&v19[2 * v18] = v34;
            *a1 += 2;
            v8 = 0;
            v4 = *a3;
            v21 = *a3 >> 1;
            if (v21 <= v7)
            {
              goto LABEL_45;
            }

LABEL_21:
            v22 = *v11;
            if ((v4 & 1) == 0)
            {
              v22 = a3 + 8;
            }

            do
            {
              v23 = &v22[16 * v14];
              v25 = *v23;
              v24 = *(v23 + 1);
              if (v24 >= v13)
              {
                v26 = v13;
              }

              else
              {
                v26 = v24;
              }

              if (v12 <= v25)
              {
                v27 = v25;
              }

              else
              {
                v27 = v12;
              }

              if (v8)
              {
                v27 = v10;
              }

              v28 = v24 >= v12 && v25 <= v13;
              if (v28)
              {
                v10 = v27;
              }

              if (v28)
              {
                v9 = v26;
              }

              if (v28)
              {
                v8 = 1;
              }

              if (v24 > v13)
              {
                break;
              }

              v14 = ++v7;
            }

            while (v21 > v7);
            goto LABEL_45;
          }

          v8 = 1;
          v21 = v4 >> 1;
          if (v4 >> 1 > v7)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v8 = 0;
          v21 = v4 >> 1;
          if (v4 >> 1 > v7)
          {
            goto LABEL_21;
          }
        }

LABEL_45:
        if (v21 != v14)
        {
          v6 += 2;
          if (v6 != v33)
          {
            continue;
          }
        }

        if (v8)
        {
          *&v34 = v10;
          *(&v34 + 1) = v9;
          v29 = *a1;
          if (*a1)
          {
            v30 = a1[2];
          }

          else
          {
            v30 = 1;
          }

          v31 = v29 >> 1;
          if (v29 >> 1 == v30)
          {
            absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(a1, &v34);
          }

          v32 = a1 + 1;
          if (*a1)
          {
            v32 = a1[1];
          }

          result = *&v34;
          *&v32[2 * v31] = v34;
          *a1 += 2;
        }

        return result;
      }
    }
  }

  return result;
}

void sub_23CD3D87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  if (*v10)
  {
    operator delete(*a10);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::Domain::FlattenedIntervals(uint64_t *__return_ptr a1@<X8>, operations_research::Domain *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = (this + 8);
  v3 = *this;
  if (*this)
  {
    v4 = *v4;
  }

  if ((v3 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v5 = &v4[2 * (v3 >> 1)];
    do
    {
      std::vector<long long>::push_back[abi:ne200100](a1, v4);
      v6 = v4 + 1;
      std::vector<long long>::push_back[abi:ne200100](a1, v6);
      v4 = v6 + 1;
    }

    while (v4 != v5);
  }
}

void sub_23CD3D918(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL operations_research::Domain::operator<(void *a1, uint64_t *a2)
{
  v2 = *a1 >> 1;
  v3 = *a2;
  v4 = *a2 >> 1;
  if (v4 >= v2)
  {
    v5 = *a1 >> 1;
  }

  else
  {
    v5 = *a2 >> 1;
  }

  if (v5 < 1)
  {
    return v2 < v4;
  }

  v8 = a2[1];
  v6 = a2 + 1;
  v7 = v8;
  if (v3)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (*a1)
  {
    v15 = v5 & 0x7FFFFFFF;
    v16 = v9 + 1;
    for (i = (a1[1] + 8); ; i += 2)
    {
      v18 = *(i - 1);
      v19 = *(v16 - 1);
      if (v18 < v19)
      {
        break;
      }

      if (v18 > v19)
      {
        return 0;
      }

      if (*i < *v16)
      {
        return 1;
      }

      if (*i > *v16)
      {
        return 0;
      }

      v16 += 2;
      if (!--v15)
      {
        return v2 < v4;
      }
    }
  }

  else
  {
    v10 = v5 & 0x7FFFFFFF;
    v11 = a1 + 2;
    for (j = v9 + 1; ; j += 2)
    {
      v13 = *(v11 - 1);
      v14 = *(j - 1);
      if (v13 < v14)
      {
        break;
      }

      if (v13 > v14)
      {
        return 0;
      }

      if (*v11 < *j)
      {
        break;
      }

      if (*v11 > *j)
      {
        return 0;
      }

      v11 += 2;
      if (!--v10)
      {
        return v2 < v4;
      }
    }
  }

  return 1;
}

void operations_research::Domain::ToString(std::string *__return_ptr a1@<X8>, operations_research::Domain *this@<X0>)
{
  v18 = *MEMORY[0x277D85DE8];
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = *this;
  v6 = *(this + 1);
  v4 = this + 8;
  v5 = v6;
  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if ((v3 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v8 = &v7[2 * (v3 >> 1)];
    do
    {
      v9 = v7[1];
      if (*v7 == v9)
      {
        v14 = *v7;
        v15 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
        absl::lts_20240722::str_format_internal::FormatPack("[%d]", 4, &v14, 1uLL, __p);
      }

      else
      {
        v14 = *v7;
        v15 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
        v16 = v9;
        v17 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
        absl::lts_20240722::str_format_internal::FormatPack("[%d,%d]", 7, &v14, 2uLL, __p);
      }

      if ((v13 & 0x80u) == 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      if ((v13 & 0x80u) == 0)
      {
        v11 = v13;
      }

      else
      {
        v11 = __p[1];
      }

      std::string::append(a1, v10, v11);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      v7 += 2;
    }

    while (v7 != v8);
    if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
    {
      if (a1->__r_.__value_.__l.__size_)
      {
        return;
      }
    }

    else if (*(&a1->__r_.__value_.__s + 23))
    {
      return;
    }
  }

  MEMORY[0x23EED9020](a1, "[]");
}

void sub_23CD3DB94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if ((*(v14 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v14);
  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::ClosedInterval>>>(unint64_t *a1, unint64_t a2)
{
  v4 = a1 + 1;
  v5 = *a1;
  if (*a1)
  {
    v4 = a1[1];
    v6 = a1[2];
    v7 = v5 >> 1;
    v8 = a2 - (v5 >> 1);
    if (a2 <= v5 >> 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = 1;
    v7 = v5 >> 1;
    v8 = a2 - (v5 >> 1);
    if (a2 <= v5 >> 1)
    {
      goto LABEL_12;
    }
  }

  if (v6 < a2)
  {
    v9 = 2 * v6;
    if (v9 <= a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  bzero(&v4[2 * v7], 16 * v8);
  v5 = *a1;
LABEL_12:
  *a1 = v5 & 1 | (2 * a2);
}

void absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::ShrinkToFit(unint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 >> 1;
  if (v2 != a1[2])
  {
    v6 = a1[1];
    v4 = a1 + 1;
    v5 = v6;
    if (v1 >= 4)
    {
      if (!(v1 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (v1 > 1)
    {
      v7 = 0;
      do
      {
        *&v4[v7] = *&v5[v7 * 8];
        v7 += 2;
        --v2;
      }

      while (v2);
    }

    operator delete(v5);
    *a1 &= ~1uLL;
  }
}

void absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(void *a1, _OWORD *a2)
{
  if ((*a1 & 1) != 0 && ((a1[2] >> 59) & 0xFLL) != 0)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  operator new();
}

uint64_t *operations_research::MemoryUsage@<X0>(uint64_t *__return_ptr a1@<X8>, operations_research *this@<X0>)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = operations_research::sysinfo::MemoryUsageProcess(this);
  if (v3 >= 2147483649)
  {
    v8 = vcvtd_n_f64_u64(v3, 0x1EuLL);
    v9 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
    v4 = "%.2lf GB";
LABEL_5:
    v5 = a1;
    v6 = 8;
    return absl::lts_20240722::str_format_internal::FormatPack(v4, v6, &v8, 1uLL, v5);
  }

  if (v3 > 0x200000)
  {
    v8 = vcvtd_n_f64_u64(v3, 0x14uLL);
    v9 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
    v4 = "%.2lf MB";
    goto LABEL_5;
  }

  if (v3 < 2049)
  {
    v8 = *&v3;
    v9 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
    v4 = "%d";
    v5 = a1;
    v6 = 2;
  }

  else
  {
    v8 = vcvtd_n_f64_u64(v3, 0xAuLL);
    v9 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
    v4 = "%2lf KB";
    v5 = a1;
    v6 = 7;
  }

  return absl::lts_20240722::str_format_internal::FormatPack(v4, v6, &v8, 1uLL, v5);
}

void operations_research::StatsGroup::~StatsGroup(operations_research::StatsGroup *this)
{
  v3 = this + 56;
  v2 = *(this + 7);
  v4 = this + 64;
  if (v2 != this + 64)
  {
    do
    {
      v6 = *(v2 + 1);
      v7 = v2;
      if (v6)
      {
        do
        {
          v8 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v8 = *(v7 + 2);
          v9 = *v8 == v7;
          v7 = v8;
        }

        while (!v9);
      }

      v10 = *(v2 + 7);
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      v2 = v8;
    }

    while (v8 != v4);
  }

  std::__tree<std::__value_type<std::string,operations_research::TimeDistribution *>,std::__map_value_compare<std::string,std::__value_type<std::string,operations_research::TimeDistribution *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,operations_research::TimeDistribution *>>>::destroy(v3, *(this + 8));
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = v4;
  std::__tree<std::__value_type<std::string,operations_research::TimeDistribution *>,std::__map_value_compare<std::string,std::__value_type<std::string,operations_research::TimeDistribution *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,operations_research::TimeDistribution *>>>::destroy(v3, 0);
  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void operations_research::StatsGroup::StatString(std::string *__return_ptr a1@<X8>, operations_research::StatsGroup *this@<X0>)
{
  v3 = *(this + 4);
  if (*(this + 5) != v3)
  {
    v4 = 0;
    v5 = 0;
    while (((*(**(v3 + 8 * v4) + 40))(*(v3 + 8 * v4)) & 1) == 0)
    {
      v4 = ++v5;
      v3 = *(this + 4);
      if (v5 >= ((*(this + 5) - v3) >> 3))
      {
        goto LABEL_30;
      }
    }

    v6 = *(*(this + 4) + 8 * v4);
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      v16.__r_.__value_.__r.__words[2] = *(v6 + 24);
      *&v16.__r_.__value_.__l.__data_ = v7;
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      v8 = v16.__r_.__value_.__r.__words[0];
      if (!v16.__r_.__value_.__l.__size_)
      {
LABEL_28:
        operator delete(v8);
        goto LABEL_29;
      }
    }

    else
    {
      if (!*(&v16.__r_.__value_.__s + 23))
      {
        goto LABEL_29;
      }

      v8 = &v16;
    }

    v9 = v8->__r_.__value_.__s.__data_[0];
    if (!v8->__r_.__value_.__s.__data_[0])
    {
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    v10 = 0;
    do
    {
      if (v9 < 0xF0)
      {
        v11 = 3;
      }

      else
      {
        v11 = 4;
      }

      if (v9 < 0xE0)
      {
        v11 = 2;
      }

      if (v9 >= 0xC0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 1;
      }

      v8 = (v8 + v12);
      v9 = v8->__r_.__value_.__s.__data_[0];
      ++v10;
    }

    while (v8->__r_.__value_.__s.__data_[0]);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_27:
      v8 = v16.__r_.__value_.__r.__words[0];
      goto LABEL_28;
    }

LABEL_29:
    operator new();
  }

LABEL_30:
  v13 = *(this + 6);
  if (v13)
  {
    if (v13 != 1)
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/util/stats.cc", 100);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(__p, "Unknown print order: ", 0x15uLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::glop::GlopParameters_InitialBasisHeuristic,0>(__p, this + 6);
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(__p);
    }

    std::__introsort<std::_ClassicAlgPolicy,operations_research::StatsGroup::StatString(void)::$_0 &,operations_research::Stat **,false>(0, 0, 0, 1);
  }

  else
  {
    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::EncodingNode const*,operations_research::sat::EncodingNode const*),operations_research::sat::EncodingNode**,false>(0, 0, __p, 0, 1);
  }

  *(&a1->__r_.__value_.__s + 23) = 0;
  a1->__r_.__value_.__s.__data_[0] = 0;
}

void sub_23CD3E744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::anonymous namespace::CompareStatPointers(const std::string::value_type **this, const std::string::value_type **a2, const operations_research::Stat *a3)
{
  v5 = (*(*this + 2))(this, a2, a3);
  v6 = (*(*a2 + 2))(a2);
  v7 = *this;
  if (v5 != v6)
  {
    v9 = (v7[2])(this);
    v10 = v9 <= (*(*a2 + 2))(a2);
    return !v10;
  }

  v8 = (v7[3])(this);
  if (v8 != (*(*a2 + 3))(a2))
  {
    v11 = (*(*this + 3))(this);
    v10 = v11 <= (*(*a2 + 3))(a2);
    return !v10;
  }

  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, this[1], this[2]);
    if ((*(a2 + 31) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    std::string::__init_copy_ctor_external(&v24, a2[1], a2[2]);
    goto LABEL_13;
  }

  v25 = *(this + 1);
  if (*(a2 + 31) < 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  v24 = *(a2 + 1);
LABEL_13:
  v13 = SHIBYTE(v24.__r_.__value_.__r.__words[2]);
  v14 = v24.__r_.__value_.__r.__words[0];
  v15 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v25;
  }

  else
  {
    v17 = v25.__r_.__value_.__r.__words[0];
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = SHIBYTE(v24.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v24.__r_.__value_.__l.__size_;
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v24;
  }

  else
  {
    v19 = v24.__r_.__value_.__r.__words[0];
  }

  if (v18 >= size)
  {
    v20 = size;
  }

  else
  {
    v20 = v18;
  }

  v21 = memcmp(v17, v19, v20);
  if (v21)
  {
    result = v21 < 0;
  }

  else
  {
    result = size < v18;
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    if ((v15 & 0x80) == 0)
    {
      return result;
    }

LABEL_35:
    v23 = result;
    operator delete(v25.__r_.__value_.__l.__data_);
    return v23;
  }

  v22 = result;
  operator delete(v14);
  result = v22;
  if ((*(&v25.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_35;
  }

  return result;
}

void sub_23CD3EAB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::DistributionStat::DistributionStat(uint64_t a1, const void *a2, size_t __len)
{
  *a1 = &unk_284F3A5F8;
  v3 = (a1 + 8);
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = __len;
  if (__len)
  {
    memmove(v3, a2, __len);
  }

  *(v3 + __len) = 0;
  *a1 = &unk_284F44C70;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return a1;
}

uint64_t operations_research::DistributionStat::DistributionStat(uint64_t a1, const void *a2, size_t __len, uint64_t a4)
{
  *a1 = &unk_284F3A5F8;
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = __len;
  v7 = (a1 + 8);
  if (__len)
  {
    memmove(v7, a2, __len);
  }

  *(v7 + __len) = 0;
  v9 = a1;
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](a4 + 32, &v9);
  *a1 = &unk_284F44C70;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return a1;
}

void sub_23CD3ECDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

double operations_research::DistributionStat::Reset(operations_research::DistributionStat *this)
{
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 2) = 0u;
  return result;
}

uint64_t operations_research::TimeDistribution::PrintCyclesAsTime@<X0>(double a1@<D0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1 * 0.000000001;
  v3 = v2 * 1.001;
  if (v2 * 1.001 >= 3600.0)
  {
    v7 = v2 / 3600.0;
    v8 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
    v4 = "%.2fh";
LABEL_10:
    v5 = 5;
    return absl::lts_20240722::str_format_internal::FormatPack(v4, v5, &v7, 1uLL, a2);
  }

  if (v3 >= 60.0)
  {
    v7 = v2 / 60.0;
    v8 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
    v4 = "%.2fm";
    goto LABEL_10;
  }

  if (v3 >= 1.0)
  {
    v7 = v2;
    v8 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
    v4 = "%.2fs";
    goto LABEL_10;
  }

  if (v3 >= 0.001)
  {
    v7 = v2 * 1000.0;
    v8 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
    v4 = "%.2fms";
  }

  else if (v3 >= 0.000001)
  {
    v7 = v2 * 1000000.0;
    v8 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
    v4 = "%.2fus";
  }

  else
  {
    v7 = v2 * 1000000000.0;
    v8 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
    v4 = "%.2fns";
  }

  v5 = 6;
  return absl::lts_20240722::str_format_internal::FormatPack(v4, v5, &v7, 1uLL, a2);
}

uint64_t operations_research::TimeDistribution::AddTimeInSec(uint64_t this, double a2)
{
  v2 = a2 * 1000000000.0;
  v3 = *(this + 72);
  if (v3)
  {
    v5 = *(this + 48);
    v4 = *(this + 56);
    if (v4 > v2)
    {
      v4 = v2;
    }

    v6 = *(this + 64);
    if (v6 < v2)
    {
      v6 = v2;
    }

    *(this + 56) = v4;
    *(this + 64) = v6;
    v7 = v2 + *(this + 32);
    v8 = v3 + 1;
    v9 = v2 - *(this + 40);
    v10 = v7 / v8;
    *(this + 32) = v7;
    *(this + 40) = v10;
    *(this + 48) = v5 + v9 * (v2 - v10);
    *(this + 72) = v8;
  }

  else
  {
    *(this + 56) = v2;
    *(this + 64) = v2;
    *(this + 32) = v2;
    *(this + 40) = v2;
    *(this + 72) = 1;
  }

  return this;
}

void operations_research::TimeDistribution::ValueAsString(uint64_t *__return_ptr a1@<X8>, operations_research::TimeDistribution *this@<X0>)
{
  v16[12] = *MEMORY[0x277D85DE8];
  operations_research::TimeDistribution::PrintCyclesAsTime(*(this + 7), v14);
  operations_research::TimeDistribution::PrintCyclesAsTime(*(this + 8), v12);
  operations_research::TimeDistribution::PrintCyclesAsTime(*(this + 5), v10);
  v4 = *(this + 9);
  if (v4)
  {
    v5 = sqrt(*(this + 6) / v4);
  }

  else
  {
    v5 = 0.0;
  }

  operations_research::TimeDistribution::PrintCyclesAsTime(v5, v8);
  operations_research::TimeDistribution::PrintCyclesAsTime(*(this + 4), __p);
  v16[0] = *(this + 9);
  v16[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  v16[2] = v14;
  v16[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  v16[4] = v12;
  v16[5] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  v16[6] = v10;
  v16[7] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  v16[8] = v8;
  v16[9] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  v16[10] = __p;
  v16[11] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  absl::lts_20240722::str_format_internal::FormatPack("%8u [%8s, %8s] %8s %8s %8s\n", 27, v16, 6uLL, a1);
  if (v7 < 0)
  {
    operator delete(__p[0]);
    if ((v9 & 0x80000000) == 0)
    {
LABEL_6:
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v8[0]);
  if ((v11 & 0x80000000) == 0)
  {
LABEL_7:
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v10[0]);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_8:
    if ((v15 & 0x80000000) == 0)
    {
      return;
    }

LABEL_14:
    operator delete(v14[0]);
    return;
  }

LABEL_13:
  operator delete(v12[0]);
  if (v15 < 0)
  {
    goto LABEL_14;
  }
}

void sub_23CD3F0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a21);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a38 & 0x80000000) == 0)
    {
LABEL_12:
      _Unwind_Resume(exception_object);
    }

LABEL_11:
    operator delete(a33);
    _Unwind_Resume(exception_object);
  }

LABEL_10:
  operator delete(a27);
  if ((a38 & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

uint64_t operations_research::RatioDistribution::Add(uint64_t this, double a2)
{
  v2 = *(this + 72);
  if (v2)
  {
    v4 = *(this + 48);
    v3 = *(this + 56);
    if (v3 > a2)
    {
      v3 = a2;
    }

    v5 = *(this + 64);
    if (v5 < a2)
    {
      v5 = a2;
    }

    *(this + 56) = v3;
    *(this + 64) = v5;
    v6 = *(this + 32) + a2;
    v7 = v2 + 1;
    v8 = a2 - *(this + 40);
    v9 = v6 / v7;
    *(this + 32) = v6;
    *(this + 40) = v9;
    *(this + 48) = v4 + v8 * (a2 - v9);
    *(this + 72) = v7;
  }

  else
  {
    *(this + 56) = a2;
    *(this + 64) = a2;
    *(this + 32) = a2;
    *(this + 40) = a2;
    *(this + 72) = 1;
  }

  return this;
}

uint64_t operations_research::RatioDistribution::ValueAsString@<X0>(operations_research::RatioDistribution *this@<X0>, void *a2@<X8>)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v2 = *(this + 8);
  v3 = *(this + 9);
  if (v3)
  {
    v4 = sqrt(*(this + 6) / v3) * 100.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = *(this + 5) * 100.0;
  v6 = *(this + 7) * 100.0;
  v8[0] = *(this + 9);
  v8[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  *&v8[2] = v6;
  v8[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  *&v8[4] = v2 * 100.0;
  v8[5] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  *&v8[6] = v5;
  v8[7] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  *&v8[8] = v4;
  v8[9] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  return absl::lts_20240722::str_format_internal::FormatPack("%8u [%7.2f%%, %7.2f%%] %7.2f%% %7.2f%%\n", 39, v8, 5uLL, a2);
}

uint64_t operations_research::DoubleDistribution::ValueAsString@<X0>(operations_research::DoubleDistribution *this@<X0>, void *a2@<X8>)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  v3 = *(this + 9);
  if (v3)
  {
    v4 = sqrt(*(this + 6) / v3);
  }

  else
  {
    v4 = 0.0;
  }

  v8[0] = *(this + 9);
  v5 = *(this + 7);
  v8[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  v8[2] = v5;
  v6 = *(this + 8);
  v8[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  v8[4] = v6;
  v8[5] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  v8[6] = v2;
  v8[7] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  *&v8[8] = v4;
  v8[9] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  return absl::lts_20240722::str_format_internal::FormatPack("%8u [%8.1e, %8.1e] %8.1e %8.1e\n", 31, v8, 5uLL, a2);
}

uint64_t operations_research::IntegerDistribution::Add(uint64_t this, uint64_t a2)
{
  v2 = a2;
  v3 = *(this + 72);
  if (v3)
  {
    v5 = *(this + 48);
    v4 = *(this + 56);
    if (v4 > v2)
    {
      v4 = a2;
    }

    v6 = *(this + 64);
    if (v6 < v2)
    {
      v6 = a2;
    }

    *(this + 56) = v4;
    *(this + 64) = v6;
    v7 = *(this + 32) + v2;
    v8 = v3 + 1;
    v9 = v2 - *(this + 40);
    v10 = v7 / v8;
    *(this + 32) = v7;
    *(this + 40) = v10;
    *(this + 48) = v5 + v9 * (v2 - v10);
    *(this + 72) = v8;
  }

  else
  {
    *(this + 56) = v2;
    *(this + 64) = v2;
    *(this + 32) = v2;
    *(this + 40) = v2;
    *(this + 72) = 1;
  }

  return this;
}

uint64_t operations_research::IntegerDistribution::ValueAsString@<X0>(operations_research::IntegerDistribution *this@<X0>, void *a2@<X8>)
{
  v9[12] = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  v3 = *(this + 9);
  if (v3)
  {
    v4 = sqrt(*(this + 6) / v3);
  }

  else
  {
    v4 = 0.0;
  }

  v9[0] = *(this + 9);
  v5 = *(this + 7);
  v9[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  v9[2] = v5;
  v6 = *(this + 8);
  v9[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  v9[4] = v6;
  v9[5] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  v9[6] = v2;
  v9[7] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  *&v9[8] = v4;
  v7 = *(this + 4);
  v9[9] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  v9[10] = v7;
  v9[11] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  return absl::lts_20240722::str_format_internal::FormatPack("%8u [%8.f, %8.f] %8.2f %8.2f %8.f\n", 34, v9, 6uLL, a2);
}

void operations_research::TimeDistribution::~TimeDistribution(void **this)
{
  *this = &unk_284F3A5F8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_284F3A5F8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::RatioDistribution::~RatioDistribution(void **this)
{
  *this = &unk_284F3A5F8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x23EED9460);
}

void std::__tree<std::__value_type<std::string,operations_research::TimeDistribution *>,std::__map_value_compare<std::string,std::__value_type<std::string,operations_research::TimeDistribution *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,operations_research::TimeDistribution *>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,operations_research::TimeDistribution *>,std::__map_value_compare<std::string,std::__value_type<std::string,operations_research::TimeDistribution *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,operations_research::TimeDistribution *>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,operations_research::TimeDistribution *>,std::__map_value_compare<std::string,std::__value_type<std::string,operations_research::TimeDistribution *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,operations_research::TimeDistribution *>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::StatsGroup::StatString(void)::$_0 &,operations_research::Stat **,false>(int8x16_t *a1, int8x16_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v5 = a1;
LABEL_2:
  v6 = a2;
  while (1)
  {
    a1 = v5;
    v7 = (v6 - v5) >> 3;
    v8 = v7 - 2;
    if (v7 > 2)
    {
      break;
    }

    if (v7 < 2)
    {
      return;
    }

    v6 = a2;
    if (v7 == 2)
    {
      if (!operations_research::StatsGroup::StatString(void)const::$_0::operator()(a2[-1].i64[1], v5->i64[0]))
      {
        return;
      }

      v145 = v5->i64[0];
      v146 = a2;
      v5->i64[0] = a2[-1].i64[1];
LABEL_243:
      v146[-1].i64[1] = v145;
      return;
    }

LABEL_10:
    v249 = v5;
    if (v7 <= 23)
    {
      if (a4)
      {
        if (v5 == v6)
        {
          return;
        }

        v147 = &v5->i64[1];
        if (&v5->u64[1] == a2)
        {
          return;
        }

        v148 = 0;
        v149 = v5;
LABEL_252:
        v152 = v149->i64[0];
        v151 = v149->i64[1];
        v149 = v147;
        if (!operations_research::StatsGroup::StatString(void)const::$_0::operator()(v151, v152))
        {
          goto LABEL_251;
        }

        v251 = v149;
        v153 = v149->i64[0];
        v154 = v148;
        while (1)
        {
          *(&a1->i64[1] + v154) = *(a1->i64 + v154);
          if (!v154)
          {
            v150 = a1;
            goto LABEL_250;
          }

          v156 = *(&a1->i64[-1] + v154);
          if (*(v153 + 31) < 0)
          {
            std::string::__init_copy_ctor_external(&v255, *(v153 + 8), *(v153 + 16));
            if ((*(v156 + 31) & 0x80000000) == 0)
            {
LABEL_261:
              v158 = *(v156 + 8);
              v254.__r_.__value_.__r.__words[2] = *(v156 + 24);
              *&v254.__r_.__value_.__l.__data_ = v158;
              goto LABEL_264;
            }
          }

          else
          {
            v157 = *(v153 + 8);
            v255.__r_.__value_.__r.__words[2] = *(v153 + 24);
            *&v255.__r_.__value_.__l.__data_ = v157;
            if ((*(v156 + 31) & 0x80000000) == 0)
            {
              goto LABEL_261;
            }
          }

          std::string::__init_copy_ctor_external(&v254, *(v156 + 8), *(v156 + 16));
LABEL_264:
          v159 = SHIBYTE(v254.__r_.__value_.__r.__words[2]);
          v160 = v254.__r_.__value_.__r.__words[0];
          v161 = HIBYTE(v255.__r_.__value_.__r.__words[2]);
          if ((v255.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v255.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v255.__r_.__value_.__l.__size_;
          }

          if ((v255.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v163 = &v255;
          }

          else
          {
            v163 = v255.__r_.__value_.__r.__words[0];
          }

          if ((v254.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v164 = SHIBYTE(v254.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v164 = v254.__r_.__value_.__l.__size_;
          }

          if ((v254.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v165 = &v254;
          }

          else
          {
            v165 = v254.__r_.__value_.__r.__words[0];
          }

          if (v164 >= size)
          {
            v166 = size;
          }

          else
          {
            v166 = v164;
          }

          v167 = memcmp(v163, v165, v166);
          if (v159 < 0)
          {
            operator delete(v160);
            if ((*(&v255.__r_.__value_.__s + 23) & 0x80) != 0)
            {
              goto LABEL_281;
            }
          }

          else if (v161 < 0)
          {
LABEL_281:
            operator delete(v255.__r_.__value_.__l.__data_);
          }

          v155 = size < v164;
          if (v167)
          {
            v155 = v167 < 0;
          }

          v154 -= 8;
          a1 = v5;
          if (!v155)
          {
            v150 = (&v5->u64[1] + v154);
LABEL_250:
            v150->i64[0] = v153;
            v149 = v251;
LABEL_251:
            v147 = &v149->i64[1];
            v148 += 8;
            if (&v149->u64[1] != a2)
            {
              goto LABEL_252;
            }

            return;
          }
        }
      }

      if (v5 == v6)
      {
        return;
      }

      v224 = &v5->u64[1];
      if (&v5->u64[1] == a2)
      {
        return;
      }

      while (2)
      {
        v226 = a1->i64[0];
        v225 = a1->i64[1];
        a1 = v224;
        if (!operations_research::StatsGroup::StatString(void)const::$_0::operator()(v225, v226))
        {
          goto LABEL_378;
        }

        v227 = a1->i64[0];
        v228 = a1;
        v229 = a1;
LABEL_385:
        v231 = v228[-1].i64[0];
        v228->i64[0] = v228[-1].i64[1];
        if (*(v227 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&v255, *(v227 + 8), *(v227 + 16));
          if (*(v231 + 31) < 0)
          {
            goto LABEL_389;
          }

LABEL_387:
          v233 = *(v231 + 8);
          v254.__r_.__value_.__r.__words[2] = *(v231 + 24);
          *&v254.__r_.__value_.__l.__data_ = v233;
        }

        else
        {
          v232 = *(v227 + 8);
          v255.__r_.__value_.__r.__words[2] = *(v227 + 24);
          *&v255.__r_.__value_.__l.__data_ = v232;
          if ((*(v231 + 31) & 0x80000000) == 0)
          {
            goto LABEL_387;
          }

LABEL_389:
          std::string::__init_copy_ctor_external(&v254, *(v231 + 8), *(v231 + 16));
        }

        v234 = SHIBYTE(v254.__r_.__value_.__r.__words[2]);
        v235 = v254.__r_.__value_.__r.__words[0];
        v236 = HIBYTE(v255.__r_.__value_.__r.__words[2]);
        if ((v255.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v237 = HIBYTE(v255.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v237 = v255.__r_.__value_.__l.__size_;
        }

        if ((v255.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v238 = &v255;
        }

        else
        {
          v238 = v255.__r_.__value_.__r.__words[0];
        }

        if ((v254.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v239 = SHIBYTE(v254.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v239 = v254.__r_.__value_.__l.__size_;
        }

        if ((v254.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v240 = &v254;
        }

        else
        {
          v240 = v254.__r_.__value_.__r.__words[0];
        }

        if (v239 >= v237)
        {
          v241 = v237;
        }

        else
        {
          v241 = v239;
        }

        v242 = memcmp(v238, v240, v241);
        if (v234 < 0)
        {
          operator delete(v235);
          if ((*(&v255.__r_.__value_.__s + 23) & 0x80) != 0)
          {
            goto LABEL_407;
          }
        }

        else if (v236 < 0)
        {
LABEL_407:
          operator delete(v255.__r_.__value_.__l.__data_);
        }

        v230 = v237 < v239;
        if (v242)
        {
          v230 = v242 < 0;
        }

        v228 = (v228 - 8);
        if (!v230)
        {
          a1 = v229;
          v228->i64[0] = v227;
LABEL_378:
          v224 = &a1->u64[1];
          if (&a1->u64[1] == a2)
          {
            return;
          }

          continue;
        }

        goto LABEL_385;
      }
    }

    if (!a3)
    {
      if (v5 == v6)
      {
        return;
      }

      v168 = v8 >> 1;
      v169 = v8 >> 1;
      do
      {
        v170 = v169;
        v171 = 8 * v169;
        if (v168 >= (8 * v169) >> 3)
        {
          v172 = (v171 >> 2) | 1;
          v173 = &a1->i64[v172];
          if ((v171 >> 2) + 2 < v7 && operations_research::StatsGroup::StatString(void)const::$_0::operator()(*v173, v173[1]))
          {
            ++v173;
            v172 = (v171 >> 2) + 2;
          }

          v174 = &a1->i64[v171 / 8];
          if (!operations_research::StatsGroup::StatString(void)const::$_0::operator()(*v173, *v174))
          {
            v252 = v170;
            v175 = v7;
            v176 = *v174;
            do
            {
              v177 = v173;
              *v174 = *v173;
              if (v168 < v172)
              {
                break;
              }

              v178 = (2 * v172) | 1;
              v173 = &a1->i64[v178];
              if (2 * v172 + 2 < v175 && operations_research::StatsGroup::StatString(void)const::$_0::operator()(*v173, v173[1]))
              {
                ++v173;
                v178 = 2 * v172 + 2;
              }

              v174 = v177;
              v172 = v178;
            }

            while (!operations_research::StatsGroup::StatString(void)const::$_0::operator()(*v173, v176));
            *v177 = v176;
            v7 = v175;
            v170 = v252;
          }
        }

        v169 = v170 - 1;
      }

      while (v170);
LABEL_301:
      v180 = 0;
      v243 = a1->i64[0];
      v181 = (v7 - 2) >> 1;
      v246 = v181;
      v248 = v7;
      while (1)
      {
        while (1)
        {
          v182 = &a1->i8[8 * v180];
          v183 = (v182 + 8);
          v184 = (2 * v180) | 1;
          v185 = 2 * v180 + 2;
          if (v185 < v7)
          {
            break;
          }

          v180 = (2 * v180) | 1;
          a1->i64[0] = v183->i64[0];
          a1 = (v182 + 8);
          if (v184 > v181)
          {
            goto LABEL_337;
          }
        }

        v188 = *(v182 + 2);
        v187 = (v182 + 16);
        v186 = v188;
        v189 = v187[-1].i64[1];
        if (*(v189 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&v255, *(v189 + 8), *(v189 + 16));
          v253 = v185;
          if ((*(v186 + 31) & 0x80000000) == 0)
          {
LABEL_306:
            v191 = *(v186 + 8);
            v254.__r_.__value_.__r.__words[2] = *(v186 + 24);
            *&v254.__r_.__value_.__l.__data_ = v191;
            goto LABEL_309;
          }
        }

        else
        {
          v190 = *(v189 + 8);
          v255.__r_.__value_.__r.__words[2] = *(v189 + 24);
          *&v255.__r_.__value_.__l.__data_ = v190;
          v253 = v185;
          if ((*(v186 + 31) & 0x80000000) == 0)
          {
            goto LABEL_306;
          }
        }

        std::string::__init_copy_ctor_external(&v254, *(v186 + 8), *(v186 + 16));
LABEL_309:
        v192 = SHIBYTE(v254.__r_.__value_.__r.__words[2]);
        v193 = v254.__r_.__value_.__r.__words[0];
        v194 = HIBYTE(v255.__r_.__value_.__r.__words[2]);
        if ((v255.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v195 = HIBYTE(v255.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v195 = v255.__r_.__value_.__l.__size_;
        }

        if ((v255.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v196 = &v255;
        }

        else
        {
          v196 = v255.__r_.__value_.__r.__words[0];
        }

        if ((v254.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v197 = SHIBYTE(v254.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v197 = v254.__r_.__value_.__l.__size_;
        }

        if ((v254.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v198 = &v254;
        }

        else
        {
          v198 = v254.__r_.__value_.__r.__words[0];
        }

        if (v197 >= v195)
        {
          v199 = v195;
        }

        else
        {
          v199 = v197;
        }

        v200 = memcmp(v196, v198, v199);
        if (v192 < 0)
        {
          operator delete(v193);
          if ((*(&v255.__r_.__value_.__s + 23) & 0x80) != 0)
          {
LABEL_336:
            operator delete(v255.__r_.__value_.__l.__data_);
          }
        }

        else if (v194 < 0)
        {
          goto LABEL_336;
        }

        v201 = v195 < v197;
        if (v200)
        {
          v201 = v200 < 0;
        }

        v202 = !v201;
        if (v201)
        {
          v183 = v187;
        }

        v180 = v253;
        if (v202)
        {
          v180 = v184;
        }

        v181 = v246;
        v7 = v248;
        a1->i64[0] = v183->i64[0];
        a1 = v183;
        if (v180 > v246)
        {
LABEL_337:
          v203 = &a2[-1].i64[1];
          v202 = v183 == &a2[-1].u64[1];
          a2 = (a2 - 8);
          if (v202)
          {
            v183->i64[0] = v243;
            a1 = v249;
            goto LABEL_300;
          }

          v183->i64[0] = *v203;
          *v203 = v243;
          a1 = v249;
          v204 = (v183 - v249 + 8) >> 3;
          v179 = v204 < 2;
          v205 = v204 - 2;
          if (v179 || (v206 = v205 >> 1, v207 = &v249->i64[v205 >> 1], !operations_research::StatsGroup::StatString(void)const::$_0::operator()(*v207, v183->i64[0])))
          {
LABEL_300:
            v179 = v7-- <= 2;
            if (v179)
            {
              return;
            }

            goto LABEL_301;
          }

          v208 = v183->i64[0];
          while (2)
          {
            v210 = v207;
            v183->i64[0] = *v207;
            if (!v206)
            {
LABEL_369:
              v210->i64[0] = v208;
              v7 = v248;
              a1 = v249;
              goto LABEL_300;
            }

            v206 = (v206 - 1) >> 1;
            v207 = &v249->i64[v206];
            v211 = *v207;
            if (*(*v207 + 31) < 0)
            {
              std::string::__init_copy_ctor_external(&v255, *(v211 + 8), *(v211 + 16));
              if (*(v208 + 31) < 0)
              {
                goto LABEL_350;
              }

LABEL_348:
              v213 = *(v208 + 8);
              v254.__r_.__value_.__r.__words[2] = *(v208 + 24);
              *&v254.__r_.__value_.__l.__data_ = v213;
            }

            else
            {
              v212 = *(v211 + 8);
              v255.__r_.__value_.__r.__words[2] = *(v211 + 24);
              *&v255.__r_.__value_.__l.__data_ = v212;
              if ((*(v208 + 31) & 0x80000000) == 0)
              {
                goto LABEL_348;
              }

LABEL_350:
              std::string::__init_copy_ctor_external(&v254, *(v208 + 8), *(v208 + 16));
            }

            v214 = SHIBYTE(v254.__r_.__value_.__r.__words[2]);
            v215 = v254.__r_.__value_.__r.__words[0];
            v216 = HIBYTE(v255.__r_.__value_.__r.__words[2]);
            if ((v255.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v217 = HIBYTE(v255.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v217 = v255.__r_.__value_.__l.__size_;
            }

            if ((v255.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v218 = &v255;
            }

            else
            {
              v218 = v255.__r_.__value_.__r.__words[0];
            }

            if ((v254.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v219 = SHIBYTE(v254.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v219 = v254.__r_.__value_.__l.__size_;
            }

            if ((v254.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v220 = &v254;
            }

            else
            {
              v220 = v254.__r_.__value_.__r.__words[0];
            }

            if (v219 >= v217)
            {
              v221 = v217;
            }

            else
            {
              v221 = v219;
            }

            v222 = memcmp(v218, v220, v221);
            if (v214 < 0)
            {
              operator delete(v215);
              if ((*(&v255.__r_.__value_.__s + 23) & 0x80) != 0)
              {
                goto LABEL_368;
              }
            }

            else if (v216 < 0)
            {
LABEL_368:
              operator delete(v255.__r_.__value_.__l.__data_);
            }

            v209 = v217 < v219;
            if (v222)
            {
              v209 = v222 < 0;
            }

            v183 = v210;
            if (!v209)
            {
              goto LABEL_369;
            }

            continue;
          }
        }
      }
    }

    v9 = v7 >> 1;
    if (v7 < 0x81)
    {
      v13 = operations_research::StatsGroup::StatString(void)const::$_0::operator()(a1->i64[0], a1->i64[v9]);
      v14 = operations_research::StatsGroup::StatString(void)const::$_0::operator()(v6[-1].i64[1], a1->i64[0]);
      if (v13)
      {
        v15 = a1->i64[v9];
        if (!v14)
        {
          a1->i64[v9] = a1->i64[0];
          a1->i64[0] = v15;
          if (operations_research::StatsGroup::StatString(void)const::$_0::operator()(v6[-1].i64[1], v15))
          {
            v30 = a1->i64[0];
            a1->i64[0] = v6[-1].i64[1];
            v6[-1].i64[1] = v30;
          }

LABEL_37:
          --a3;
          v16 = a1->i64[0];
          if (a4)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }

        a1->i64[v9] = v6[-1].i64[1];
        v6[-1].i64[1] = v15;
        --a3;
        v16 = a1->i64[0];
        if (a4)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (!v14)
        {
          goto LABEL_37;
        }

        v19 = a1->i64[0];
        a1->i64[0] = v6[-1].i64[1];
        v6[-1].i64[1] = v19;
        if (!operations_research::StatsGroup::StatString(void)const::$_0::operator()(a1->i64[0], a1->i64[v9]))
        {
          goto LABEL_37;
        }

        v20 = a1->i64[v9];
        a1->i64[v9] = a1->i64[0];
        a1->i64[0] = v20;
        --a3;
        v16 = a1->i64[0];
        if (a4)
        {
          goto LABEL_60;
        }
      }

LABEL_59:
      v48 = operations_research::StatsGroup::StatString(void)const::$_0::operator()(a1[-1].i64[1], v16);
      v16 = a1->i64[0];
      if (v48)
      {
        goto LABEL_60;
      }

      if (operations_research::StatsGroup::StatString(void)const::$_0::operator()(a1->i64[0], v6[-1].i64[1]))
      {
        v5 = a1;
        do
        {
          v101 = v5->i64[1];
          v5 = (v5 + 8);
        }

        while (!operations_research::StatsGroup::StatString(void)const::$_0::operator()(v16, v101));
      }

      else
      {
        v102 = &a1->i64[1];
        do
        {
          v5 = v102;
          if (v102 >= v6)
          {
            break;
          }

          ++v102;
        }

        while (!operations_research::StatsGroup::StatString(void)const::$_0::operator()(v16, v5->i64[0]));
      }

      if (v5 < v6)
      {
        v6 = a2;
        do
        {
          v103 = v6[-1].i64[1];
          v6 = (v6 - 8);
        }

        while (operations_research::StatsGroup::StatString(void)const::$_0::operator()(v16, v103));
      }

LABEL_173:
      if (v5 < v6)
      {
        v104 = v5->i64[0];
        v5->i64[0] = v6->i64[0];
        v6->i64[0] = v104;
        while (1)
        {
          v107 = v5->i64[1];
          v5 = (v5 + 8);
          v106 = v107;
          if (*(v16 + 31) < 0)
          {
            std::string::__init_copy_ctor_external(&v255, *(v16 + 8), *(v16 + 16));
            if ((*(v106 + 31) & 0x80000000) == 0)
            {
LABEL_181:
              v109 = *(v106 + 8);
              v254.__r_.__value_.__r.__words[2] = *(v106 + 24);
              *&v254.__r_.__value_.__l.__data_ = v109;
              goto LABEL_184;
            }
          }

          else
          {
            v108 = *(v16 + 8);
            v255.__r_.__value_.__r.__words[2] = *(v16 + 24);
            *&v255.__r_.__value_.__l.__data_ = v108;
            if ((*(v106 + 31) & 0x80000000) == 0)
            {
              goto LABEL_181;
            }
          }

          std::string::__init_copy_ctor_external(&v254, *(v106 + 8), *(v106 + 16));
LABEL_184:
          v110 = SHIBYTE(v254.__r_.__value_.__r.__words[2]);
          v111 = v254.__r_.__value_.__r.__words[0];
          v112 = HIBYTE(v255.__r_.__value_.__r.__words[2]);
          if ((v255.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v113 = HIBYTE(v255.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v113 = v255.__r_.__value_.__l.__size_;
          }

          if ((v255.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v114 = &v255;
          }

          else
          {
            v114 = v255.__r_.__value_.__r.__words[0];
          }

          if ((v254.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v115 = SHIBYTE(v254.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v115 = v254.__r_.__value_.__l.__size_;
          }

          if ((v254.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v116 = &v254;
          }

          else
          {
            v116 = v254.__r_.__value_.__r.__words[0];
          }

          if (v115 >= v113)
          {
            v117 = v113;
          }

          else
          {
            v117 = v115;
          }

          v118 = memcmp(v114, v116, v117);
          if (v110 < 0)
          {
            operator delete(v111);
            if ((*(&v255.__r_.__value_.__s + 23) & 0x80) != 0)
            {
              goto LABEL_201;
            }
          }

          else if (v112 < 0)
          {
LABEL_201:
            operator delete(v255.__r_.__value_.__l.__data_);
          }

          v105 = v113 < v115;
          if (v118)
          {
            v105 = v118 < 0;
          }

          if (v105)
          {
            while (1)
            {
              v121 = v6[-1].i64[1];
              v6 = (v6 - 8);
              v120 = v121;
              if (*(v16 + 31) < 0)
              {
                std::string::__init_copy_ctor_external(&v255, *(v16 + 8), *(v16 + 16));
                if ((*(v120 + 31) & 0x80000000) == 0)
                {
LABEL_208:
                  v123 = *(v120 + 8);
                  v254.__r_.__value_.__r.__words[2] = *(v120 + 24);
                  *&v254.__r_.__value_.__l.__data_ = v123;
                  goto LABEL_211;
                }
              }

              else
              {
                v122 = *(v16 + 8);
                v255.__r_.__value_.__r.__words[2] = *(v16 + 24);
                *&v255.__r_.__value_.__l.__data_ = v122;
                if ((*(v120 + 31) & 0x80000000) == 0)
                {
                  goto LABEL_208;
                }
              }

              std::string::__init_copy_ctor_external(&v254, *(v120 + 8), *(v120 + 16));
LABEL_211:
              v124 = SHIBYTE(v254.__r_.__value_.__r.__words[2]);
              v125 = v254.__r_.__value_.__r.__words[0];
              v126 = HIBYTE(v255.__r_.__value_.__r.__words[2]);
              if ((v255.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v127 = HIBYTE(v255.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v127 = v255.__r_.__value_.__l.__size_;
              }

              if ((v255.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v128 = &v255;
              }

              else
              {
                v128 = v255.__r_.__value_.__r.__words[0];
              }

              if ((v254.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v129 = SHIBYTE(v254.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v129 = v254.__r_.__value_.__l.__size_;
              }

              if ((v254.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v130 = &v254;
              }

              else
              {
                v130 = v254.__r_.__value_.__r.__words[0];
              }

              if (v129 >= v127)
              {
                v131 = v127;
              }

              else
              {
                v131 = v129;
              }

              v132 = memcmp(v128, v130, v131);
              if (v124 < 0)
              {
                operator delete(v125);
                if ((*(&v255.__r_.__value_.__s + 23) & 0x80) != 0)
                {
                  goto LABEL_228;
                }
              }

              else if (v126 < 0)
              {
LABEL_228:
                operator delete(v255.__r_.__value_.__l.__data_);
              }

              v119 = v127 < v129;
              if (v132)
              {
                v119 = v132 < 0;
              }

              a1 = v249;
              if (!v119)
              {
                goto LABEL_173;
              }
            }
          }
        }
      }

      v133 = &v5[-1].i64[1];
      if (&v5[-1].u64[1] != a1)
      {
        a1->i64[0] = *v133;
      }

      a4 = 0;
      *v133 = v16;
      goto LABEL_2;
    }

    v10 = operations_research::StatsGroup::StatString(void)const::$_0::operator()(a1->i64[v9], a1->i64[0]);
    v11 = operations_research::StatsGroup::StatString(void)const::$_0::operator()(v6[-1].i64[1], a1->i64[v9]);
    if (v10)
    {
      v12 = a1->i64[0];
      if (v11)
      {
        a1->i64[0] = v6[-1].i64[1];
        v6[-1].i64[1] = v12;
      }

      else
      {
        a1->i64[0] = a1->i64[v9];
        a1->i64[v9] = v12;
        if (operations_research::StatsGroup::StatString(void)const::$_0::operator()(v6[-1].i64[1], v12))
        {
          v21 = a1->i64[v9];
          a1->i64[v9] = v6[-1].i64[1];
          v6[-1].i64[1] = v21;
        }
      }
    }

    else if (v11)
    {
      v17 = a1->i64[v9];
      a1->i64[v9] = v6[-1].i64[1];
      v6[-1].i64[1] = v17;
      if (operations_research::StatsGroup::StatString(void)const::$_0::operator()(a1->i64[v9], a1->i64[0]))
      {
        v18 = a1->i64[0];
        a1->i64[0] = a1->i64[v9];
        a1->i64[v9] = v18;
      }
    }

    v22 = v6;
    v23 = v9 - 1;
    v24 = operations_research::StatsGroup::StatString(void)const::$_0::operator()(a1->i64[v9 - 1], a1->i64[1]);
    v25 = operations_research::StatsGroup::StatString(void)const::$_0::operator()(v22[-1].i64[0], a1->i64[v9 - 1]);
    if (v24)
    {
      v26 = a1->i64[1];
      if (v25)
      {
        v27 = a2;
        a1->i64[1] = a2[-1].i64[0];
        a2[-1].i64[0] = v26;
      }

      else
      {
        a1->i64[1] = a1->i64[v23];
        a1->i64[v23] = v26;
        v27 = a2;
        if (operations_research::StatsGroup::StatString(void)const::$_0::operator()(a2[-1].i64[0], v26))
        {
          v31 = a1->i64[v23];
          a1->i64[v23] = a2[-1].i64[0];
          a2[-1].i64[0] = v31;
        }
      }
    }

    else
    {
      v27 = a2;
      if (v25)
      {
        v28 = a1->i64[v23];
        a1->i64[v23] = a2[-1].i64[0];
        a2[-1].i64[0] = v28;
        if (operations_research::StatsGroup::StatString(void)const::$_0::operator()(a1->i64[v23], a1->i64[1]))
        {
          v29 = a1->i64[1];
          a1->i64[1] = a1->i64[v23];
          a1->i64[v23] = v29;
        }
      }
    }

    v32 = v9 + 1;
    v33 = operations_research::StatsGroup::StatString(void)const::$_0::operator()(a1->i64[v9 + 1], a1[1].i64[0]);
    v34 = operations_research::StatsGroup::StatString(void)const::$_0::operator()(v27[-2].i64[1], a1->i64[v9 + 1]);
    if (v33)
    {
      v35 = a1[1].i64[0];
      if (v34)
      {
        a1[1].i64[0] = a2[-2].i64[1];
        a2[-2].i64[1] = v35;
      }

      else
      {
        a1[1].i64[0] = a1->i64[v32];
        a1->i64[v32] = v35;
        if (operations_research::StatsGroup::StatString(void)const::$_0::operator()(a2[-2].i64[1], v35))
        {
          v38 = a1->i64[v32];
          a1->i64[v32] = a2[-2].i64[1];
          a2[-2].i64[1] = v38;
        }
      }
    }

    else if (v34)
    {
      v36 = a1->i64[v32];
      a1->i64[v32] = a2[-2].i64[1];
      a2[-2].i64[1] = v36;
      if (operations_research::StatsGroup::StatString(void)const::$_0::operator()(a1->i64[v32], a1[1].i64[0]))
      {
        v37 = a1[1].i64[0];
        a1[1].i64[0] = a1->i64[v32];
        a1->i64[v32] = v37;
      }
    }

    v39 = operations_research::StatsGroup::StatString(void)const::$_0::operator()(a1->i64[v9], a1->i64[v23]);
    v40 = operations_research::StatsGroup::StatString(void)const::$_0::operator()(a1->i64[v32], a1->i64[v9]);
    if (v39)
    {
      v41 = a1->i64[v23];
      if (v40)
      {
        a1->i64[v23] = a1->i64[v32];
        a1->i64[v32] = v41;
        v42 = a1->i64[v9];
        goto LABEL_58;
      }

      a1->i64[v23] = a1->i64[v9];
      a1->i64[v9] = v41;
      v46 = operations_research::StatsGroup::StatString(void)const::$_0::operator()(a1->i64[v32], v41);
      v42 = a1->i64[v9];
      if (v46)
      {
        v45 = a1->i64[v32];
        a1->i64[v9] = v45;
        a1->i64[v32] = v42;
        goto LABEL_57;
      }
    }

    else
    {
      v42 = a1->i64[v9];
      if (v40)
      {
        v43 = a1->i64[v32];
        a1->i64[v9] = v43;
        a1->i64[v32] = v42;
        v44 = operations_research::StatsGroup::StatString(void)const::$_0::operator()(v43, a1->i64[v23]);
        v42 = a1->i64[v9];
        if (v44)
        {
          v45 = a1->i64[v23];
          a1->i64[v23] = v42;
          a1->i64[v9] = v45;
LABEL_57:
          v42 = v45;
        }
      }
    }

LABEL_58:
    v6 = a2;
    v47 = a1->i64[0];
    a1->i64[0] = v42;
    a1->i64[v9] = v47;
    --a3;
    v16 = a1->i64[0];
    if ((a4 & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_60:
    v49 = 0;
    do
    {
      v51 = a1->i64[v49 + 1];
      if (*(v51 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v255, *(v51 + 8), *(v51 + 16));
        if ((*(v16 + 31) & 0x80000000) == 0)
        {
LABEL_67:
          v53 = *(v16 + 8);
          v254.__r_.__value_.__r.__words[2] = *(v16 + 24);
          *&v254.__r_.__value_.__l.__data_ = v53;
          goto LABEL_70;
        }
      }

      else
      {
        v52 = *(v51 + 8);
        v255.__r_.__value_.__r.__words[2] = *(v51 + 24);
        *&v255.__r_.__value_.__l.__data_ = v52;
        if ((*(v16 + 31) & 0x80000000) == 0)
        {
          goto LABEL_67;
        }
      }

      std::string::__init_copy_ctor_external(&v254, *(v16 + 8), *(v16 + 16));
LABEL_70:
      v54 = SHIBYTE(v254.__r_.__value_.__r.__words[2]);
      v55 = v254.__r_.__value_.__r.__words[0];
      v56 = HIBYTE(v255.__r_.__value_.__r.__words[2]);
      if ((v255.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v57 = HIBYTE(v255.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v57 = v255.__r_.__value_.__l.__size_;
      }

      if ((v255.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = &v255;
      }

      else
      {
        v58 = v255.__r_.__value_.__r.__words[0];
      }

      if ((v254.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = SHIBYTE(v254.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v59 = v254.__r_.__value_.__l.__size_;
      }

      if ((v254.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v60 = &v254;
      }

      else
      {
        v60 = v254.__r_.__value_.__r.__words[0];
      }

      if (v59 >= v57)
      {
        v61 = v57;
      }

      else
      {
        v61 = v59;
      }

      v62 = memcmp(v58, v60, v61);
      if (v54 < 0)
      {
        operator delete(v55);
        if ((*(&v255.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_62;
        }
      }

      else if ((v56 & 0x80) == 0)
      {
        goto LABEL_62;
      }

      operator delete(v255.__r_.__value_.__l.__data_);
LABEL_62:
      v50 = v57 < v59;
      if (v62)
      {
        v50 = v62 < 0;
      }

      ++v49;
    }

    while (v50);
    v250 = &a1->i8[v49 * 8];
    v63 = a2;
    v202 = v49 == 1;
    v6 = a2;
    if (v202)
    {
      v63 = a2;
      do
      {
        if (v250 >= v63)
        {
          break;
        }

        v65 = v63[-1].i64[1];
        v63 = (v63 - 8);
      }

      while (!operations_research::StatsGroup::StatString(void)const::$_0::operator()(v65, v16));
    }

    else
    {
      do
      {
        v64 = v63[-1].i64[1];
        v63 = (v63 - 8);
      }

      while (!operations_research::StatsGroup::StatString(void)const::$_0::operator()(v64, v16));
    }

    v66 = v250;
    if (v250 >= v63)
    {
      v99 = (v250 - 8);
      if (v250 - 8 == a1)
      {
        goto LABEL_157;
      }

LABEL_156:
      a1->i64[0] = v99->i64[0];
      goto LABEL_157;
    }

    v67 = v250;
    v68 = v63;
    while (2)
    {
      v69 = *v67;
      *v67 = *v68;
      *v68 = v69;
      while (2)
      {
        while (2)
        {
          v72 = v67[1];
          ++v67;
          v71 = v72;
          if (*(v72 + 31) < 0)
          {
            std::string::__init_copy_ctor_external(&v255, *(v71 + 8), *(v71 + 16));
            if (*(v16 + 31) < 0)
            {
              goto LABEL_106;
            }

LABEL_104:
            v74 = *(v16 + 8);
            v254.__r_.__value_.__r.__words[2] = *(v16 + 24);
            *&v254.__r_.__value_.__l.__data_ = v74;
          }

          else
          {
            v73 = *(v71 + 8);
            v255.__r_.__value_.__r.__words[2] = *(v71 + 24);
            *&v255.__r_.__value_.__l.__data_ = v73;
            if ((*(v16 + 31) & 0x80000000) == 0)
            {
              goto LABEL_104;
            }

LABEL_106:
            std::string::__init_copy_ctor_external(&v254, *(v16 + 8), *(v16 + 16));
          }

          v75 = SHIBYTE(v254.__r_.__value_.__r.__words[2]);
          v76 = v254.__r_.__value_.__r.__words[0];
          v77 = HIBYTE(v255.__r_.__value_.__r.__words[2]);
          if ((v255.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v78 = HIBYTE(v255.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v78 = v255.__r_.__value_.__l.__size_;
          }

          if ((v255.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v79 = &v255;
          }

          else
          {
            v79 = v255.__r_.__value_.__r.__words[0];
          }

          if ((v254.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v80 = SHIBYTE(v254.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v80 = v254.__r_.__value_.__l.__size_;
          }

          if ((v254.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v81 = &v254;
          }

          else
          {
            v81 = v254.__r_.__value_.__r.__words[0];
          }

          if (v80 >= v78)
          {
            v82 = v78;
          }

          else
          {
            v82 = v80;
          }

          v83 = memcmp(v79, v81, v82);
          if (v75 < 0)
          {
            operator delete(v76);
            if ((*(&v255.__r_.__value_.__s + 23) & 0x80) == 0)
            {
              break;
            }

            goto LABEL_124;
          }

          if (v77 < 0)
          {
LABEL_124:
            operator delete(v255.__r_.__value_.__l.__data_);
            v84 = v78 < v80;
            if (v83)
            {
              v84 = v83 < 0;
            }

            if (!v84)
            {
              goto LABEL_132;
            }

            continue;
          }

          break;
        }

        v70 = v78 < v80;
        if (v83)
        {
          v70 = v83 < 0;
        }

        if (v70)
        {
          continue;
        }

        break;
      }

LABEL_132:
      while (2)
      {
        v87 = *--v68;
        v86 = v87;
        if (*(v87 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&v255, *(v86 + 8), *(v86 + 16));
          if (*(v16 + 31) < 0)
          {
            goto LABEL_136;
          }

LABEL_134:
          v89 = *(v16 + 8);
          v254.__r_.__value_.__r.__words[2] = *(v16 + 24);
          *&v254.__r_.__value_.__l.__data_ = v89;
        }

        else
        {
          v88 = *(v86 + 8);
          v255.__r_.__value_.__r.__words[2] = *(v86 + 24);
          *&v255.__r_.__value_.__l.__data_ = v88;
          if ((*(v16 + 31) & 0x80000000) == 0)
          {
            goto LABEL_134;
          }

LABEL_136:
          std::string::__init_copy_ctor_external(&v254, *(v16 + 8), *(v16 + 16));
        }

        v90 = SHIBYTE(v254.__r_.__value_.__r.__words[2]);
        v91 = v254.__r_.__value_.__r.__words[0];
        v92 = HIBYTE(v255.__r_.__value_.__r.__words[2]);
        if ((v255.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v93 = HIBYTE(v255.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v93 = v255.__r_.__value_.__l.__size_;
        }

        if ((v255.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v94 = &v255;
        }

        else
        {
          v94 = v255.__r_.__value_.__r.__words[0];
        }

        if ((v254.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v95 = SHIBYTE(v254.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v95 = v254.__r_.__value_.__l.__size_;
        }

        if ((v254.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v96 = &v254;
        }

        else
        {
          v96 = v254.__r_.__value_.__r.__words[0];
        }

        if (v95 >= v93)
        {
          v97 = v93;
        }

        else
        {
          v97 = v95;
        }

        v98 = memcmp(v94, v96, v97);
        if (v90 < 0)
        {
          operator delete(v91);
          if ((*(&v255.__r_.__value_.__s + 23) & 0x80) != 0)
          {
            goto LABEL_154;
          }
        }

        else if (v92 < 0)
        {
LABEL_154:
          operator delete(v255.__r_.__value_.__l.__data_);
        }

        v85 = v93 < v95;
        if (v98)
        {
          v85 = v98 < 0;
        }

        if (!v85)
        {
          continue;
        }

        break;
      }

      if (v67 < v68)
      {
        continue;
      }

      break;
    }

    v99 = (v67 - 1);
    a1 = v249;
    v66 = v250;
    v6 = a2;
    if (v99 != v249)
    {
      goto LABEL_156;
    }

LABEL_157:
    v99->i64[0] = v16;
    if (v66 < v63)
    {
      goto LABEL_160;
    }

    v100 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::StatsGroup::StatString(void)::$_0 &,operations_research::Stat **>(a1, v99->i64);
    v5 = &v99->u64[1];
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::StatsGroup::StatString(void)::$_0 &,operations_research::Stat **>(&v99->i64[1], v6->i64))
    {
      a2 = v99;
      if (v100)
      {
        return;
      }

      goto LABEL_1;
    }

    if ((v100 & 1) == 0)
    {
LABEL_160:
      std::__introsort<std::_ClassicAlgPolicy,operations_research::StatsGroup::StatString(void)::$_0 &,operations_research::Stat **,false>(a1, v99, a3, a4 & 1);
      a4 = 0;
      v5 = &v99->u64[1];
    }
  }

  if (v7 != 3)
  {
    if (v7 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::StatsGroup::StatString(void)::$_0 &,operations_research::Stat **,0>(v5->i64, &v5->i64[1], v5[1].i64, &v6[-1].i64[1]);
      return;
    }

    if (v7 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::StatsGroup::StatString(void)::$_0 &,operations_research::Stat **,0>(v5->i64, &v5->i64[1], v5[1].i64, &v5[1].i64[1]);
      if (!operations_research::StatsGroup::StatString(void)const::$_0::operator()(v6[-1].i64[1], v5[1].i64[1]))
      {
        return;
      }

      v137 = v5[1].i64[1];
      v5[1].i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v137;
      if (!operations_research::StatsGroup::StatString(void)const::$_0::operator()(v5[1].i64[1], v5[1].i64[0]))
      {
        return;
      }

      v139 = v5[1].i64[0];
      v138 = v5[1].i64[1];
      v140 = v5->i64[1];
      v5[1].i64[0] = v138;
      v5[1].i64[1] = v139;
      if (!operations_research::StatsGroup::StatString(void)const::$_0::operator()(v138, v140))
      {
        return;
      }

      v142 = v5->i64[1];
      v141 = v5[1].i64[0];
      v143 = v5->i64[0];
      v5->i64[1] = v141;
      v5[1].i64[0] = v142;
      goto LABEL_372;
    }

    goto LABEL_10;
  }

  v134 = operations_research::StatsGroup::StatString(void)const::$_0::operator()(v5->i64[1], v5->i64[0]);
  v135 = operations_research::StatsGroup::StatString(void)const::$_0::operator()(v6[-1].i64[1], v5->i64[1]);
  if (!v134)
  {
    if (!v135)
    {
      return;
    }

    v223 = v5->i64[1];
    v5->i64[1] = a2[-1].i64[1];
    a2[-1].i64[1] = v223;
    v143 = v5->i64[0];
    v141 = v5->i64[1];
LABEL_372:
    if (operations_research::StatsGroup::StatString(void)const::$_0::operator()(v141, v143))
    {
      *v5 = vextq_s8(*v5, *v5, 8uLL);
    }

    return;
  }

  v136 = v5->i64[0];
  if (v135)
  {
    v5->i64[0] = v6[-1].i64[1];
    v6[-1].i64[1] = v136;
    return;
  }

  v5->i64[0] = v5->i64[1];
  v5->i64[1] = v136;
  if (operations_research::StatsGroup::StatString(void)const::$_0::operator()(v6[-1].i64[1], v136))
  {
    v145 = v5->i64[1];
    v146 = a2;
    v5->i64[1] = a2[-1].i64[1];
    goto LABEL_243;
  }
}

void sub_23CD40958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL operations_research::StatsGroup::StatString(void)const::$_0::operator()(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *(a1 + 8), *(a1 + 16));
    if ((*(a2 + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = *(a1 + 8);
    if ((*(a2 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      v13 = *(a2 + 8);
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&v13, *(a2 + 8), *(a2 + 16));
LABEL_6:
  v3 = SHIBYTE(v13.__r_.__value_.__r.__words[2]);
  v4 = v13.__r_.__value_.__r.__words[0];
  v5 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v14.__r_.__value_.__l.__size_;
  }

  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v14;
  }

  else
  {
    v7 = v14.__r_.__value_.__r.__words[0];
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = SHIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = v13.__r_.__value_.__l.__size_;
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v13;
  }

  else
  {
    v9 = v13.__r_.__value_.__r.__words[0];
  }

  if (v8 >= size)
  {
    v10 = size;
  }

  else
  {
    v10 = v8;
  }

  v11 = memcmp(v7, v9, v10);
  if (v3 < 0)
  {
    operator delete(v4);
    if ((*(&v14.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_23;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
LABEL_23:
  if (v11)
  {
    return v11 < 0;
  }

  else
  {
    return size < v8;
  }
}

void sub_23CD40AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::StatsGroup::StatString(void)::$_0 &,operations_research::Stat **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = operations_research::StatsGroup::StatString(void)const::$_0::operator()(*a2, *a1);
  v9 = operations_research::StatsGroup::StatString(void)const::$_0::operator()(*a3, *a2);
  if (v8)
  {
    v10 = *a1;
    if (v9)
    {
      *a1 = *a3;
      *a3 = v10;
    }

    else
    {
      *a1 = *a2;
      *a2 = v10;
      if (operations_research::StatsGroup::StatString(void)const::$_0::operator()(*a3, v10))
      {
        v13 = *a2;
        *a2 = *a3;
        *a3 = v13;
      }
    }
  }

  else if (v9)
  {
    v11 = *a2;
    *a2 = *a3;
    *a3 = v11;
    if (operations_research::StatsGroup::StatString(void)const::$_0::operator()(*a2, *a1))
    {
      v12 = *a1;
      *a1 = *a2;
      *a2 = v12;
    }
  }

  result = operations_research::StatsGroup::StatString(void)const::$_0::operator()(*a4, *a3);
  if (result)
  {
    v15 = *a3;
    *a3 = *a4;
    *a4 = v15;
    result = operations_research::StatsGroup::StatString(void)const::$_0::operator()(*a3, *a2);
    if (result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      result = operations_research::StatsGroup::StatString(void)const::$_0::operator()(*a2, *a1);
      if (result)
      {
        v17 = *a1;
        *a1 = *a2;
        *a2 = v17;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::StatsGroup::StatString(void)::$_0 &,operations_research::Stat **>(uint64_t a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v14 = operations_research::StatsGroup::StatString(void)const::$_0::operator()(*(a1 + 8), *a1);
        v15 = operations_research::StatsGroup::StatString(void)const::$_0::operator()(*(a2 - 1), *(a1 + 8));
        if (v14)
        {
          v16 = *a1;
          if (v15)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v16;
            v5 = 1;
            return v5 & 1;
          }

          *a1 = *(a1 + 8);
          *(a1 + 8) = v16;
          if (!operations_research::StatsGroup::StatString(void)const::$_0::operator()(*(a2 - 1), v16))
          {
            goto LABEL_3;
          }

          v13 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 1);
          goto LABEL_15;
        }

        if (!v15)
        {
          goto LABEL_3;
        }

        v22 = *(a1 + 8);
        *(a1 + 8) = *(a2 - 1);
        *(a2 - 1) = v22;
        if (!operations_research::StatsGroup::StatString(void)const::$_0::operator()(*(a1 + 8), *a1))
        {
          goto LABEL_3;
        }

        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::StatsGroup::StatString(void)::$_0 &,operations_research::Stat **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1);
        v5 = 1;
        return v5 & 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::StatsGroup::StatString(void)::$_0 &,operations_research::Stat **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24));
        if (!operations_research::StatsGroup::StatString(void)const::$_0::operator()(*(a2 - 1), *(a1 + 24)))
        {
          goto LABEL_3;
        }

        v6 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v6;
        if (!operations_research::StatsGroup::StatString(void)const::$_0::operator()(*(a1 + 24), *(a1 + 16)))
        {
          goto LABEL_3;
        }

        v8 = *(a1 + 16);
        v7 = *(a1 + 24);
        v9 = *(a1 + 8);
        *(a1 + 16) = v7;
        *(a1 + 24) = v8;
        if (!operations_research::StatsGroup::StatString(void)const::$_0::operator()(v7, v9))
        {
          goto LABEL_3;
        }

        v11 = *(a1 + 8);
        v10 = *(a1 + 16);
        v12 = *a1;
        *(a1 + 8) = v10;
        *(a1 + 16) = v11;
        if (!operations_research::StatsGroup::StatString(void)const::$_0::operator()(v10, v12))
        {
          goto LABEL_3;
        }

        break;
      default:
        goto LABEL_19;
    }

    *a1 = vextq_s8(*a1, *a1, 8uLL);
    v5 = 1;
    return v5 & 1;
  }

  if (v4 < 2)
  {
LABEL_3:
    v5 = 1;
    return v5 & 1;
  }

  if (v4 == 2)
  {
    if (!operations_research::StatsGroup::StatString(void)const::$_0::operator()(*(a2 - 1), *a1))
    {
      goto LABEL_3;
    }

    v13 = *a1;
    *a1 = *(a2 - 1);
LABEL_15:
    *(a2 - 1) = v13;
    v5 = 1;
    return v5 & 1;
  }

LABEL_19:
  v17 = operations_research::StatsGroup::StatString(void)const::$_0::operator()(*(a1 + 8), *a1);
  v18 = (a1 + 16);
  v19 = operations_research::StatsGroup::StatString(void)const::$_0::operator()(*(a1 + 16), *(a1 + 8));
  if (v17)
  {
    v21 = *a1;
    if (v19)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v21;
    }

    else
    {
      v26 = *(a1 + 16);
      *a1 = *(a1 + 8);
      *(a1 + 8) = v21;
      if (operations_research::StatsGroup::StatString(void)const::$_0::operator()(v26, v21))
      {
        *(a1 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
      }
    }
  }

  else if (v19)
  {
    v24 = *(a1 + 8);
    v23 = *(a1 + 16);
    v25 = *a1;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    if (operations_research::StatsGroup::StatString(void)const::$_0::operator()(v23, v25))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v27 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
LABEL_43:
    v33 = 1;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    while (!operations_research::StatsGroup::StatString(void)const::$_0::operator()(*v27, *v18))
    {
LABEL_36:
      v18 = v27;
      v28 += 8;
      if (++v27 == a2)
      {
        goto LABEL_43;
      }
    }

    v30 = *v27;
    v31 = v28;
    do
    {
      v32 = a1 + v31;
      v20 = *(a1 + v31 + 16);
      *(a1 + v31 + 24) = v20;
      if (v31 == -16)
      {
        *a1 = v30;
        if (++v29 != 8)
        {
          goto LABEL_36;
        }

        goto LABEL_42;
      }

      v31 -= 8;
    }

    while (operations_research::StatsGroup::StatString(void)const::$_0::operator()(v30, *(v32 + 8)));
    *(a1 + v31 + 24) = v30;
    if (++v29 != 8)
    {
      goto LABEL_36;
    }

LABEL_42:
    v33 = 0;
    LOBYTE(v20) = v27 + 1 == a2;
  }

  v5 = v33 | v20;
  return v5 & 1;
}

unint64_t AbslFlagHelpGenFortime_limit_use_usertime::NonConst@<X0>(void *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v3 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    *(a1 + v3) = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t google::protobuf::internal::ParseAnyTypeUrl(char *__src, size_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    if (-a2 == v5)
    {
      return 0;
    }

    v6 = __src[a2 - 1 + v5--];
    ++v4;
  }

  while (v6 != 47);
  v7 = a2 + v5;
  if (a2 + v5 == -1 || v5 == -1)
  {
    return 0;
  }

  if (a3)
  {
    if (a2 >= v7 + 1)
    {
      v10 = v7 + 1;
    }

    else
    {
      v10 = a2;
    }

    if (v10 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_27;
    }

    v12 = __src;
    v13 = a2;
    if (v10 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v17) = v10;
    memmove(&__dst, __src, v10);
    *(&__dst + v10) = 0;
    v14 = a3;
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
      v14 = a3;
    }

    *v14 = __dst;
    *(v14 + 16) = v17;
    a2 = v13;
    __src = v12;
  }

  if (a2 <= v7)
  {
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  if (~v5 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_27:
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (~v5 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v17) = ~v5;
  memmove(&__dst, &__src[a2 + 1 + v5], ~v5);
  *(&__dst + v4 - 1) = 0;
  v15 = a4;
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
    v15 = a4;
  }

  *v15 = __dst;
  *(v15 + 16) = v17;
  return 1;
}

atomic_ullong google::protobuf::internal::ThreadSafeArena::AllocateAlignedFallback<(google::protobuf::internal::AllocationClient)0>(atomic_ullong *a1, unint64_t a2)
{
  SerialArenaFallback = google::protobuf::internal::ThreadSafeArena::GetSerialArenaFallback(a1);
  result = *SerialArenaFallback;
  _X9 = *SerialArenaFallback + a2;
  if (_X9 > SerialArenaFallback[1])
  {

    return google::protobuf::internal::SerialArena::AllocateAlignedFallback(SerialArenaFallback, a2);
  }

  else
  {
    *SerialArenaFallback = _X9;
    v6 = SerialArenaFallback[2];
    if ((v6 - _X9) <= 1024)
    {
      v7 = SerialArenaFallback[3];
      if (v6 < v7)
      {
        if (_X9 < v6)
        {
          _X9 = SerialArenaFallback[2];
        }

        v8 = _X9 + 1024;
        if (_X9 + 1024 >= v7)
        {
          v8 = SerialArenaFallback[3];
        }

        for (; _X9 < v8; _X9 += 64)
        {
          __asm { PRFM            #0x10, [X9] }
        }

        SerialArenaFallback[2] = _X9;
      }
    }
  }

  return result;
}

atomic_ullong *google::protobuf::internal::ThreadSafeArena::GetSerialArenaFallback(atomic_ullong *this)
{
  v2 = google::protobuf::internal::ThreadSafeArena::thread_cache_();
  v4 = v2;
  if (v2 == this[5])
  {
    v7 = this + 6;
  }

  else
  {
    explicit = atomic_load_explicit(this + 4, memory_order_acquire);
    v6 = *(explicit + 8);
    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = 0;
    do
    {
      LODWORD(v8) = *(explicit + 12);
      if (v8)
      {
        v9 = (explicit + 16);
        if (v8 >= v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = v8;
        }

        while (*v9 != v2)
        {
          ++v9;
          if (!--v8)
          {
            goto LABEL_5;
          }
        }

        v7 = v9[v6];
      }

LABEL_5:
      explicit = *explicit;
      v6 = *(explicit + 8);
    }

    while (v6);
    if (!v7)
    {
LABEL_14:
      v10 = v3 + 96;
      v11 = (this[1] & 0xFFFFFFFFFFFFFFF8);
      if (v11)
      {
        if (v10 <= 0xFFFFFFFFFFFFFFE7)
        {
          v12 = v11[2];
          v13 = *v11;
          if (v13 <= v3 + 120)
          {
            v14 = v3 + 120;
          }

          else
          {
            v14 = v13;
          }

          if (v12)
          {
            v15 = v12(v14);
LABEL_27:
            *v15 = 0;
            v15[1] = 0;
            v15[2] = v14;
            v15[3] = v15 + 15;
            v7 = v15 + 3;
            v16 = v15 + (v14 & 0xFFFFFFFFFFFFFFF8);
            v15[4] = v16;
            v15[5] = v15 + 15;
            v15[6] = v16;
            v15[7] = 0;
            v15[8] = 0;
            v15[9] = v15;
            v15[10] = 0;
            v15[11] = v14;
            v15[12] = this;
            *(v15 + 104) = 0;
            v15[14] = 0;
            google::protobuf::internal::ThreadSafeArena::AddSerialArena(this, v4, (v15 + 3));
            goto LABEL_28;
          }

LABEL_26:
          v15 = operator new(v14);
          goto LABEL_27;
        }
      }

      else if (v10 <= 0xFFFFFFFFFFFFFFE7)
      {
        if ((v3 + 120) <= 0x100)
        {
          v14 = 256;
        }

        else
        {
          v14 = v3 + 120;
        }

        goto LABEL_26;
      }

      absl::lts_20240722::log_internal::MakeCheckOpString<unsigned long long,unsigned long long>(v10, -25, "min_bytes <= std::numeric_limits<size_t>::max() - SerialArena::kBlockHeaderSize");
    }
  }

LABEL_28:
  *(v4 + 8) = *this;
  *(v4 + 16) = v7;
  return v7;
}

void *google::protobuf::internal::ThreadSafeArena::AllocateAlignedFallback<(google::protobuf::internal::AllocationClient)1>(atomic_ullong *a1, unint64_t a2)
{
  SerialArenaFallback = google::protobuf::internal::ThreadSafeArena::GetSerialArenaFallback(a1);
  v4 = SerialArenaFallback;
  if (a2 >= 0x10 && (v5 = 60 - __clz(a2 - 1), v5 < *(SerialArenaFallback + 80)) && (v6 = SerialArenaFallback[11], (result = *(v6 + 8 * v5)) != 0))
  {
    *(v6 + 8 * v5) = *result;
  }

  else
  {
    result = *v4;
    _X9 = *v4 + a2;
    if (_X9 > *(v4 + 1))
    {

      return google::protobuf::internal::SerialArena::AllocateAlignedFallback(v4, a2);
    }

    else
    {
      *v4 = _X9;
      v9 = *(v4 + 2);
      if ((v9 - _X9) <= 1024)
      {
        v10 = *(v4 + 3);
        if (v9 < v10)
        {
          if (_X9 < v9)
          {
            _X9 = *(v4 + 2);
          }

          v11 = _X9 + 1024;
          if (_X9 + 1024 >= v10)
          {
            v11 = *(v4 + 3);
          }

          for (; _X9 < v11; _X9 += 64)
          {
            __asm { PRFM            #0x10, [X9] }
          }

          *(v4 + 2) = _X9;
        }
      }
    }
  }

  return result;
}

uint64_t google::protobuf::internal::SerialArena::AllocateAlignedFallback(google::protobuf::internal::SerialArena *this, unint64_t a2)
{
  v4 = *(this + 6);
  if (*(v4 + 16))
  {
    *(v4 + 8) = *(this + 1);
    *(this + 7) = *this - v4 + *(this + 7) - 24;
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  Memory = google::protobuf::internal::AllocateMemory((*(*(this + 9) + 8) & 0xFFFFFFFFFFFFFFF8), v5, a2);
  *(this + 8) += v7;
  *Memory = v4;
  Memory[1] = 0;
  Memory[2] = v7;
  _X9 = Memory + 3;
  v9 = Memory + (v7 & 0xFFFFFFFFFFFFFFF8);
  *this = Memory + 3;
  *(this + 1) = v9;
  *(this + 2) = Memory + 3;
  *(this + 3) = v9;
  atomic_store(Memory, this + 6);
  result = *this;
  v11 = *this + a2;
  if (v11 > v9)
  {
    return 0;
  }

  *this = v11;
  if ((_X9 - v11) <= 1024 && (v7 & 0xFFFFFFFFFFFFFFF8) >= 25)
  {
    if (v11 >= _X9)
    {
      _X9 = v11;
    }

    if ((_X9 + 128) < v9)
    {
      v9 = (_X9 + 128);
    }

    for (; _X9 < v9; _X9 += 8)
    {
      __asm { PRFM            #0x10, [X9] }
    }

    *(this + 2) = _X9;
  }

  return result;
}

uint64_t google::protobuf::internal::SerialArena::AllocateFromStringBlockFallback(google::protobuf::internal::SerialArena *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (!v2)
  {
    v4 = *this;
    if ((*v1 + 256) <= *(v1 + 1))
    {
      v3 = 256;
      _X10 = (v4 + 64);
      *v1 = v4 + 64;
      v6 = *(v1 + 2);
      if ((v6 - (v4 + 64)) <= 1024)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }

    v17 = v1;
    v21 = 256;
    v4 = operator new(0x100uLL);
    *v4 = 0;
    v4[2] = 513;
    v19 = 256;
LABEL_26:
    v4[3] = v19;
    v1 = v17;
    *(v17 + 8) += v21;
    goto LABEL_12;
  }

  *(this + 7) = *(this + 7) + (*(v2 + 8) >> 1) - 16;
  v3 = *(v2 + 12);
  v4 = *this;
  if ((*v1 + v3) > *(v1 + 1))
  {
    v17 = v1;
    v18 = *(v2 + 12);
    if ((2 * v18) >= 0x2000)
    {
      v19 = 0x2000;
    }

    else
    {
      v19 = 2 * v18;
    }

    v20 = 24 * ((v18 - 16) / 0x18uLL) + 16;
    v4 = operator new(v20);
    *v4 = v2;
    v4[2] = (2 * v20) | 1;
    v21 = v20 & 0x7FFFFFFF;
    goto LABEL_26;
  }

  _X10 = v4 + v3;
  *v1 = v4 + v3;
  v6 = *(v1 + 2);
  if ((v6 - (v4 + v3)) <= 1024)
  {
LABEL_13:
    v10 = *(v1 + 3);
    if (v6 < v10)
    {
      if (_X10 < v6)
      {
        _X10 = v6;
      }

      v11 = _X10 + 1024;
      if ((_X10 + 1024) >= v10)
      {
        v11 = *(v1 + 3);
      }

      for (; _X10 < v11; _X10 += 64)
      {
        __asm { PRFM            #0x10, [X10] }
      }

      *(v1 + 2) = _X10;
    }
  }

LABEL_7:
  *(v1 + 7) -= v3;
  v7 = 2 * v3;
  if ((2 * v3) >= 0x2000)
  {
    v7 = 0x2000;
  }

  if (!v2)
  {
    v7 = 256;
  }

  *v4 = v2;
  v4[2] = 2 * (24 * ((v3 - 16) / 0x18uLL) + 16);
  v4[3] = v7;
LABEL_12:
  atomic_store(v4, v1 + 4);
  v8 = (v4[2] >> 1) - 40;
  *(v1 + 5) = v8;
  return v4 + v8 + 16;
}

uint64_t google::protobuf::internal::SerialArena::AllocateAlignedWithCleanupFallback(google::protobuf::internal::SerialArena *this, unint64_t a2, uint64_t a3, uint64_t (*a4)())
{
  _ZF = a4 == google::protobuf::internal::cleanup::arena_destruct_object<absl::lts_20240722::Cord> || a4 == google::protobuf::internal::cleanup::arena_destruct_object<std::string>;
  v8 = 16;
  if (_ZF)
  {
    v8 = 8;
  }

  if (a4)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3 - 1;
  v11 = -a3;
  if (a3 >= 9)
  {
    v19 = a3 - 8;
    do
    {
      v20 = *(this + 6);
      if (*(v20 + 16))
      {
        *(v20 + 8) = *(this + 1);
        *(this + 7) = *this - v20 + *(this + 7) - 24;
        v21 = *(v20 + 16);
      }

      else
      {
        v21 = 0;
      }

      Memory = google::protobuf::internal::AllocateMemory((*(*(this + 9) + 8) & 0xFFFFFFFFFFFFFFF8), v21, v19 + a2 + v9);
      *(this + 8) += v23;
      *Memory = v20;
      Memory[1] = 0;
      Memory[2] = v23;
      v16 = (Memory + 3);
      _X9 = (Memory + (v23 & 0xFFFFFFFFFFFFFFF8));
      *this = Memory + 3;
      *(this + 1) = _X9;
      *(this + 2) = Memory + 3;
      *(this + 3) = _X9;
      atomic_store(Memory, this + 6);
      a2 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
      result = (v10 + *this) & v11;
    }

    while (a2 + v9 + result > _X9);
  }

  else
  {
    do
    {
      v12 = *(this + 6);
      if (*(v12 + 16))
      {
        *(v12 + 8) = *(this + 1);
        *(this + 7) = *this - v12 + *(this + 7) - 24;
        v13 = *(v12 + 16);
      }

      else
      {
        v13 = 0;
      }

      a2 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
      v14 = google::protobuf::internal::AllocateMemory((*(*(this + 9) + 8) & 0xFFFFFFFFFFFFFFF8), v13, a2 + v9);
      *(this + 8) += v15;
      *v14 = v12;
      v14[1] = 0;
      v14[2] = v15;
      v16 = (v14 + 3);
      _X9 = (v14 + (v15 & 0xFFFFFFFFFFFFFFF8));
      *this = v14 + 3;
      *(this + 1) = _X9;
      *(this + 2) = v14 + 3;
      *(this + 3) = _X9;
      atomic_store(v14, this + 6);
      result = (v10 + *this) & v11;
    }

    while (a2 + v9 + result > _X9);
  }

  v24 = result + a2;
  *this = result + a2;
  if (a4 == google::protobuf::internal::cleanup::arena_destruct_object<std::string>)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2 * (a4 == google::protobuf::internal::cleanup::arena_destruct_object<absl::lts_20240722::Cord>);
  }

  v26 = 0x1FFFFFFFFFFFFFFELL;
  if ((v25 - 1) < 2)
  {
    v26 = 0x1FFFFFFFFFFFFFFFLL;
  }

  v27 = &_X9[v26];
  *(this + 1) = v27;
  if (v27 - _X9 > 384 || _X9 <= v16)
  {
    if (v25 != 2)
    {
      goto LABEL_30;
    }

LABEL_40:
    v29 = result | 2;
    goto LABEL_41;
  }

  if (_X9 >= v27)
  {
    _X9 = v27;
  }

  if (v16 < (_X9 - 48))
  {
    v16 = (_X9 - 48);
  }

  for (; _X9 > v16; _X9 -= 8)
  {
    __asm { PRFM            #0x10, [X9] }
  }

  *(this + 3) = _X9;
  if (v25 == 2)
  {
    goto LABEL_40;
  }

LABEL_30:
  if (v25 == 1)
  {
    v29 = result | 1;
LABEL_41:
    *v27 = v29;
    goto LABEL_42;
  }

  *v27 = result;
  v27[1] = a4;
LABEL_42:
  _X8 = *(this + 2);
  if ((_X8 - v24) <= 1024)
  {
    v35 = *(this + 3);
    if (_X8 < v35)
    {
      if (v24 >= _X8)
      {
        _X8 = result + a2;
      }

      if (_X8 + 1024 < v35)
      {
        v35 = _X8 + 1024;
      }

      for (; _X8 < v35; _X8 += 64)
      {
        __asm { PRFM            #0x10, [X8] }
      }

      *(this + 2) = _X8;
    }
  }

  return result;
}

void *google::protobuf::internal::SerialArena::AddCleanupFallback(google::protobuf::internal::SerialArena *this, unint64_t a2, uint64_t (*a3)())
{
  _ZF = a3 == google::protobuf::internal::cleanup::arena_destruct_object<absl::lts_20240722::Cord> || a3 == google::protobuf::internal::cleanup::arena_destruct_object<std::string>;
  v7 = 16;
  if (_ZF)
  {
    v7 = 8;
  }

  if (a3)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(this + 6);
  if (*(v9 + 16))
  {
    *(v9 + 8) = *(this + 1);
    *(this + 7) = *this - v9 + *(this + 7) - 24;
    v10 = *(v9 + 16);
  }

  else
  {
    v10 = 0;
  }

  result = google::protobuf::internal::AllocateMemory((*(*(this + 9) + 8) & 0xFFFFFFFFFFFFFFF8), v10, v8);
  *(this + 8) += v12;
  *result = v9;
  result[1] = 0;
  result[2] = v12;
  v13 = (result + 3);
  _X11 = result + (v12 & 0xFFFFFFFFFFFFFFF8);
  *this = result + 3;
  *(this + 1) = _X11;
  *(this + 2) = result + 3;
  *(this + 3) = _X11;
  atomic_store(result, this + 6);
  if (a3 == google::protobuf::internal::cleanup::arena_destruct_object<std::string>)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * (a3 == google::protobuf::internal::cleanup::arena_destruct_object<absl::lts_20240722::Cord>);
  }

  v16 = -16;
  if ((v15 - 1) < 2)
  {
    v16 = -8;
  }

  v17 = &_X11[v16];
  *(this + 1) = v17;
  if ((v12 & 0xFFFFFFFFFFFFFFF8) >= 25)
  {
    if (_X11 >= v17)
    {
      _X11 = v17;
    }

    if (v13 < _X11 - 384)
    {
      v13 = _X11 - 384;
    }

    for (; _X11 > v13; _X11 -= 64)
    {
      __asm { PRFM            #0x10, [X11] }
    }

    *(this + 3) = _X11;
  }

  if (v15 == 2)
  {
    *v17 = a2 | 2;
  }

  else if (v15 == 1)
  {
    *v17 = a2 | 1;
  }

  else
  {
    *v17 = a2;
    *(v17 + 1) = a3;
  }

  return result;
}

uint64_t google::protobuf::internal::SerialArena::FreeStringBlocks(unsigned int *__p, uint64_t a2)
{
  v3 = *__p;
  v4 = __p[2];
  if (__p + a2 + 16 != __p + (v4 >> 1))
  {
    v5 = (v4 >> 1) - a2 - 16;
    v6 = __p + a2 + 39;
    v7 = v6;
    do
    {
      v8 = *v7;
      v7 += 24;
      if (v8 < 0)
      {
        operator delete(*(v6 - 23));
      }

      v6 = v7;
      v5 -= 24;
    }

    while (v5);
    LODWORD(v4) = __p[2];
  }

  if (v4)
  {
    v9 = v4 >> 1;
    operator delete(__p);
    if (v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = 0;
    if (v3)
    {
      do
      {
        while (1)
        {
LABEL_13:
          v11 = *v3;
          v12 = v3[2];
          if (v3[2] >> 1 != 16)
          {
            v13 = (v12 >> 1) - 16;
            v14 = v3 + 39;
            v15 = v3 + 39;
            do
            {
              v16 = *v15;
              v15 += 24;
              if (v16 < 0)
              {
                operator delete(*(v14 - 23));
              }

              v14 = v15;
              v13 -= 24;
            }

            while (v13);
            LODWORD(v12) = v3[2];
          }

          if ((v12 & 1) == 0)
          {
            break;
          }

          v10 = v12 >> 1;
          operator delete(v3);
          v9 += v10;
          v3 = v11;
          if (!v11)
          {
            return v9;
          }
        }

        v3 = v11;
      }

      while (v11);
    }
  }

  return v9;
}

void google::protobuf::internal::SerialArena::CleanupList(google::protobuf::internal::SerialArena *this, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  v2 = *(this + 6);
  if (v2[2])
  {
    v2[1] = *(this + 1);
    do
    {
      v3 = v2[1];
      v4 = v2 + (v2[2] & 0xFFFFFFFFFFFFFFF8);
      while (v3 < v4)
      {
        v5 = *v3;
        v6 = *v3 & 3;
        if (v6 > 1)
        {
          if (v6 == 2)
          {
            v8 = *(v5 - 2);
            v7 = (v5 - 2);
            if (v8)
            {
              absl::lts_20240722::Cord::DestroyCordSlow(v7, a2);
            }

            v3 += 8;
          }

          else
          {
LABEL_5:
            (*(v3 + 8))();
            v3 += 16;
          }
        }

        else
        {
          if (!v6)
          {
            goto LABEL_5;
          }

          if (*(v5 + 22) < 0)
          {
            operator delete(*(v5 - 1));
          }

          v3 += 8;
        }
      }

      v2 = *v2;
    }

    while (v2);
  }
}

unint64_t *google::protobuf::internal::ThreadSafeArena::ThreadSafeArena(google::protobuf::internal::ThreadSafeArena *this)
{
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *this = 0;
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = this;
  *(this + 128) = 0;
  *(this + 17) = 0;
  v1 = google::protobuf::internal::ThreadSafeArena::thread_cache_();
  v4 = *v1;
  if (!*v1)
  {
    v4 = atomic_fetch_add_explicit(&google::protobuf::internal::ThreadSafeArena::lifecycle_id_, 1uLL, memory_order_relaxed) << 8;
  }

  *v1 = v4 + 1;
  *v2 = v4;
  v2[4] = &google::protobuf::internal::kSentryArenaChunk;
  v2[5] = v1;
  v1[1] = v4;
  v1[2] = v3;
  return v2;
}

void *google::protobuf::internal::AllocateMemory(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    v3 = *a1;
    v4 = a1[1];
    v5 = a1[2];
    if (a3 <= 0xFFFFFFFFFFFFFFE7)
    {
      goto LABEL_3;
    }

LABEL_13:
    google::protobuf::internal::AllocateMemory(a3, &v8);
  }

  v5 = 0;
  v4 = 0x8000;
  v3 = 256;
  if (a3 > 0xFFFFFFFFFFFFFFE7)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v4 >= 2 * a2)
  {
    v4 = 2 * a2;
  }

  if (a2)
  {
    v3 = v4;
  }

  if (v3 <= a3 + 24)
  {
    v6 = a3 + 24;
  }

  else
  {
    v6 = v3;
  }

  if (v5)
  {
    return v5(v6);
  }

  else
  {
    return operator new(v6);
  }
}

void google::protobuf::internal::ThreadSafeArena::AddSerialArena(atomic_ullong *this, uint64_t a2, google::protobuf::internal::SerialArena *a3)
{
  v3 = a3;
  v6 = this + 4;
  explicit = atomic_load_explicit(this + 4, memory_order_acquire);
  v8 = *(explicit + 8);
  if (v8)
  {
    add_explicit = atomic_fetch_add_explicit((explicit + 12), 1u, memory_order_relaxed);
    if (add_explicit < v8)
    {
      v10 = explicit + 8 * add_explicit;
      *(v10 + 16) = a2;
      atomic_store(a3, (v10 + 8 * v8 + 16));
      return;
    }

    *(explicit + 12) = v8;
  }

  absl::lts_20240722::Mutex::Lock(this + 3, a2);
  v11 = atomic_load_explicit(v6, memory_order_acquire);
  if (v11 == explicit)
  {
    LODWORD(v12) = *(explicit + 8);
LABEL_10:
    v15 = v12 << 6;
    if (v15 >= 0xFC0)
    {
      v15 = 4032;
    }

    v16 = v15 + 64;
    v17 = operator new(v15 + 64);
    v16 -= 16;
    v17[2] = v16 >> 4;
    v17[3] = 1;
    *(v17 + 2) = a2;
    bzero(v17 + 6, 8 * ((v16 >> 4) - 1));
    v18 = v17 + (v16 >> 1);
    *(v18 + 2) = v3;
    bzero(v18 + 24, 8 * ((v16 >> 4) - 1));
    *v17 = explicit;
    v3 = v17;
    goto LABEL_13;
  }

  v13 = atomic_fetch_add_explicit((v11 + 12), 1u, memory_order_relaxed);
  v12 = *(v11 + 8);
  if (v13 >= v12)
  {
    *(v11 + 12) = v12;
    explicit = v11;
    goto LABEL_10;
  }

  v14 = (v11 + 8 * v13 + 16);
  *v14 = a2;
  v6 = &v14[v12];
LABEL_13:
  atomic_store(v3, v6);
  absl::lts_20240722::Mutex::Unlock(this + 3);
}

void google::protobuf::internal::ThreadSafeArena::CleanupList(google::protobuf::internal::ThreadSafeArena *this, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  v3 = *(this + 4);
  v4 = *(v3 + 2);
  if (v4)
  {
    while (1)
    {
      v5 = *v3;
      v6 = *(v3 + 3);
      if (v6)
      {
        break;
      }

LABEL_5:
      v4 = *(v5 + 2);
      v3 = v5;
      if (!v4)
      {
        goto LABEL_2;
      }
    }

    v7 = &v3[v4 + 2];
    if (v6 < v4)
    {
      v4 = *(v3 + 3);
    }

    v8 = 8 * v4;
    while (1)
    {
      v8 -= 8;
      v9 = *(v7 + v8);
      v10 = *(v9 + 48);
      if (v10[2])
      {
        break;
      }

LABEL_10:
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v10[1] = *(v9 + 8);
LABEL_14:
    v11 = v10[1];
    v12 = v10 + (v10[2] & 0xFFFFFFFFFFFFFFF8);
    while (1)
    {
      while (1)
      {
        if (v11 >= v12)
        {
          v10 = *v10;
          if (!v10)
          {
            goto LABEL_10;
          }

          goto LABEL_14;
        }

        v13 = *v11;
        v14 = *v11 & 3;
        if (v14 <= 1)
        {
          break;
        }

        if (v14 == 2)
        {
          v16 = *(v13 - 2);
          v15 = (v13 - 2);
          if (v16)
          {
            absl::lts_20240722::Cord::DestroyCordSlow(v15, a2);
          }

          v11 += 8;
        }

        else
        {
LABEL_15:
          (*(v11 + 8))();
          v11 += 16;
        }
      }

      if (!v14)
      {
        goto LABEL_15;
      }

      if (*(v13 + 22) < 0)
      {
        operator delete(*(v13 - 1));
      }

      v11 += 8;
    }
  }

LABEL_2:

  google::protobuf::internal::SerialArena::CleanupList((this + 48), a2);
}

void *google::protobuf::internal::ThreadSafeArena::Free(google::protobuf::internal::ThreadSafeArena *this, unint64_t *a2)
{
  if ((*(this + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v3 = *((*(this + 1) & 0xFFFFFFFFFFFFFFF8) + 24);
  }

  else
  {
    v3 = 0;
  }

  for (i = *(this + 4); ; i = v33)
  {
    v5 = i[2];
    if (!v5)
    {
      break;
    }

    __p = i;
    v33 = *i;
    v6 = i[3];
    if (v6)
    {
      v7 = __p + 8 * v5 + 16;
      if (v6 < v5)
      {
        v5 = v6;
      }

      v8 = 8 * v5;
      do
      {
        while (1)
        {
          v8 -= 8;
          v9 = *(v7 + v8);
          v10 = v9[5];
          v11 = v9[4];
          if (v11)
          {
            v12 = *v11;
            v13 = v11[2];
            if (v11 + v10 + 16 != v11 + (v13 >> 1))
            {
              v14 = v11 + v10 + 39;
              v15 = (v13 >> 1) - v10 - 16;
              do
              {
                if (*v14 < 0)
                {
                  operator delete(*(v14 - 23));
                }

                v14 += 24;
                v15 -= 24;
              }

              while (v15);
              LODWORD(v13) = v11[2];
            }

            if (v13)
            {
              v16 = v13 >> 1;
              operator delete(v11);
              if (v12)
              {
                goto LABEL_26;
              }
            }

            else
            {
              v16 = 0;
              if (v12)
              {
                do
                {
                  while (1)
                  {
LABEL_26:
                    v18 = *v12;
                    v19 = v12[2];
                    if (v12[2] >> 1 != 16)
                    {
                      v20 = v12 + 39;
                      v21 = (v19 >> 1) - 16;
                      do
                      {
                        if (*v20 < 0)
                        {
                          operator delete(*(v20 - 23));
                        }

                        v20 += 24;
                        v21 -= 24;
                      }

                      while (v21);
                      LODWORD(v19) = v12[2];
                    }

                    if ((v19 & 1) == 0)
                    {
                      break;
                    }

                    v17 = v19 >> 1;
                    operator delete(v12);
                    v16 += v17;
                    v12 = v18;
                    if (!v18)
                    {
                      goto LABEL_34;
                    }
                  }

                  v12 = v18;
                }

                while (v18);
              }
            }
          }

          else
          {
            v16 = 0;
          }

LABEL_34:
          *a2 += v16;
          v22 = v9[6];
          v23 = v22[2];
          v24 = *v22;
          if (*v22)
          {
            v25 = v9[6];
            if (v3)
            {
              do
              {
                v22 = v24;
                v3(v25, v23);
                *a2 += v23;
                v23 = v22[2];
                v24 = *v22;
                v25 = v22;
              }

              while (*v22);
            }

            else
            {
              do
              {
                v22 = v24;
                operator delete(v25);
                *a2 += v23;
                v23 = v22[2];
                v24 = *v22;
                v25 = v22;
              }

              while (*v22);
            }
          }

          if (!v3)
          {
            break;
          }

          v3(v22, v23);
          *a2 += v23;
          if (!v8)
          {
            goto LABEL_5;
          }
        }

        operator delete(v22);
        *a2 += v23;
      }

      while (v8);
    }

LABEL_5:
    operator delete(__p);
  }

  v26 = *(this + 10);
  if (v26)
  {
    v26 = google::protobuf::internal::SerialArena::FreeStringBlocks(v26, *(this + 11));
  }

  *a2 += v26;
  v27 = *(this + 12);
  v28 = v27[2];
  v29 = *v27;
  if (*v27)
  {
    v30 = *(this + 12);
    if (v3)
    {
      do
      {
        v27 = v29;
        v3(v30, v28);
        *a2 += v28;
        v28 = v27[2];
        v29 = *v27;
        v30 = v27;
      }

      while (*v27);
    }

    else
    {
      do
      {
        v27 = v29;
        operator delete(v30);
        *a2 += v28;
        v28 = v27[2];
        v29 = *v27;
        v30 = v27;
      }

      while (*v27);
    }
  }

  return v27;
}