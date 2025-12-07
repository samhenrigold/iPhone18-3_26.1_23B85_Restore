__n128 std::__function::__func<operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::{lambda(void)#2},std::allocator<operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::{lambda(void)#2}>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F42E18;
  result = *(a1 + 56);
  v3 = *(a1 + 72);
  v4 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v6;
  *(a2 + 8) = v5;
  *(a2 + 88) = v4;
  *(a2 + 72) = v3;
  *(a2 + 56) = result;
  *(a2 + 116) = 0;
  return result;
}

void std::__function::__func<operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::{lambda(void)#2},std::allocator<operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::{lambda(void)#2}>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61[6] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 112) + 1;
  *(a1 + 112) = v3;
  if (v3 >= 6)
  {
    if (dword_2810C0640 < 3 || !absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&_MergedGlobals_18, dword_2810C0640))
    {
      goto LABEL_3;
    }

    v34 = absl::lts_20240722::log_internal::LogMessage::LogMessage(v61, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/integer_search.cc", 624);
    v35 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v34, 3);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v35, "Skipping ... ", 0xDuLL);
    goto LABEL_42;
  }

  v6 = (a1 + 24);
  v5 = *(a1 + 24);
  if (v5 != -1)
  {
    v7 = *(*(*(a1 + 8) + 24) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (((v7 >> (v5 & 0x3E)) & 3) == 0)
    {
      if (dword_2810C0658 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810C0650, dword_2810C0658))
      {
        v37 = absl::lts_20240722::log_internal::LogMessage::LogMessage(v61, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/integer_search.cc", 631);
        v38 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v37, 3);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v38, "assign ", 7uLL);
        absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v38, v6);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v61);
      }

      *a2 = *v6;
      goto LABEL_4;
    }

    if ((v7 >> (v5 & 0x3F ^ 1u)))
    {
      if (dword_2810C0670 < 2 || !absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C0668, dword_2810C0670))
      {
        goto LABEL_3;
      }

      v8 = absl::lts_20240722::log_internal::LogMessage::LogMessage(v61, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/integer_search.cc", 635);
      v9 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v8, 2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, "unperformed.", 0xCuLL);
LABEL_42:
      v36 = v61;
LABEL_43:
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v36);
LABEL_3:
      *a2 = 0;
      *(a2 + 8) = 0;
      *a2 = -1;
LABEL_4:
      *(a2 + 8) = -1;
      *(a2 + 16) = 0;
      return;
    }
  }

  v10 = *(a1 + 16);
  v11 = *(a1 + 32);
  if (v11 == -1 || (v12 = *(v10 + 40), v13 = 8 * v11, v14 = *(v12 + v13), !(v14 + *(v12 + (v13 ^ 8)))))
  {
    v15 = *(a1 + 56);
    if (v15 == -1 || (v16 = *(v10 + 40), v17 = 8 * v15, v18 = *(v16 + v17), !(v18 + *(v16 + (v17 ^ 8)))))
    {
      v19 = *(a1 + 48);
      if (v11 != -1)
      {
        v19 += *(*(v10 + 40) + 8 * v11) * *(a1 + 40);
      }

      v56 = v19;
      if (dword_2810C06B8 <= 1 || !absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C06B0, dword_2810C06B8))
      {
        goto LABEL_3;
      }

      absl::lts_20240722::log_internal::LogMessage::LogMessage(v55, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/integer_search.cc", 656);
      v20 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v55, 2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, "Fixed @[", 8uLL);
      v21 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v20, &v56);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, ",", 1uLL);
      v22 = *(a1 + 56);
      v23 = *(a1 + 72);
      if (v22 != -1)
      {
        v23 += *(*(*(a1 + 16) + 40) + 8 * v22) * *(a1 + 64);
      }

      v54 = v23;
      v24 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v21, &v54);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v24, "]", 1uLL);
      v25 = *v6;
      if (*v6 == -1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v53, &byte_23CE7F131);
      }

      else
      {
        v61[0] = " presence=";
        v61[1] = 10;
        v50 = v25;
        operations_research::sat::Literal::DebugString(v51, &v50);
        v43 = v52;
        if ((v52 & 0x80u) == 0)
        {
          v44 = v51;
        }

        else
        {
          v44 = v51[0];
        }

        if ((v52 & 0x80u) != 0)
        {
          v43 = v51[1];
        }

        v60[0] = v44;
        v60[1] = v43;
        absl::lts_20240722::StrCat(v61, v60, &v53);
      }

      v46 = absl::lts_20240722::log_internal::LogMessage::operator<<(v24, &v53);
      v47 = *(a1 + 88);
      if (v47 >= v56)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, &byte_23CE7F131);
      }

      else
      {
        v59[0] = " start_at_selection=";
        v59[1] = 20;
        v48 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v47, v58, v45);
        v57[0] = v58;
        v57[1] = v48 - v58;
        absl::lts_20240722::StrCat(v59, v57, &__p);
      }

      absl::lts_20240722::log_internal::LogMessage::operator<<(v46, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_61:
          if (v25 == -1)
          {
            goto LABEL_67;
          }

          goto LABEL_65;
        }
      }

      else if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_61;
      }

      operator delete(v53.__r_.__value_.__l.__data_);
      if (v25 == -1)
      {
LABEL_67:
        v36 = v55;
        goto LABEL_43;
      }

LABEL_65:
      if (v52 < 0)
      {
        operator delete(v51[0]);
      }

      goto LABEL_67;
    }

    v26 = *(a1 + 72) + *(a1 + 64) * v18;
    v60[0] = v26;
    if (dword_2810C06A0 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810C0698, dword_2810C06A0))
    {
      v41 = absl::lts_20240722::log_internal::LogMessage::LogMessage(v61, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/integer_search.cc", 650);
      v42 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v41, 3);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v42, "end == ", 7uLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v42, v60);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v61);
      v26 = v60[0];
    }

    v27 = *(a1 + 56);
    v28 = *(a1 + 72);
    if (v27 != -1)
    {
      v29 = v26 - v28;
      v30 = *(a1 + 64);
      goto LABEL_31;
    }

LABEL_35:
    if (v26 < v28)
    {
      v32 = 1;
    }

    else
    {
      v32 = -1;
    }

    v33 = 0xFFFFFFFFLL;
    goto LABEL_39;
  }

  v26 = *(a1 + 48) + *(a1 + 40) * v14;
  v60[0] = v26;
  if (dword_2810C0688 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810C0680, dword_2810C0688))
  {
    v39 = absl::lts_20240722::log_internal::LogMessage::LogMessage(v61, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/integer_search.cc", 643);
    v40 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v39, 3);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v40, "start == ", 9uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v40, v60);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v61);
    v26 = v60[0];
  }

  v27 = *(a1 + 32);
  v28 = *(a1 + 48);
  if (v27 == -1)
  {
    goto LABEL_35;
  }

  v29 = v26 - v28;
  v30 = *(a1 + 40);
LABEL_31:
  v31 = v29 / v30 - (v29 / v30 * v30 > v29);
  if (v31 >= 0x8000000000000002)
  {
    v32 = -v31;
  }

  else
  {
    v32 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v33 = v27 ^ 1;
LABEL_39:
  *a2 = -1;
  *(a2 + 8) = v33;
  *(a2 + 16) = v32;
}

uint64_t std::__function::__func<operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::{lambda(void)#2},std::allocator<operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::{lambda(void)#2}>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN19operations_research3sat25SchedulingSearchHeuristicEPNS0_5ModelEEN3$_0clEvEUlvE0_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN19operations_research3sat25SchedulingSearchHeuristicEPNS0_5ModelEEN3$_0clEvEUlvE0_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN19operations_research3sat25SchedulingSearchHeuristicEPNS0_5ModelEEN3$_0clEvEUlvE0_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN19operations_research3sat25SchedulingSearchHeuristicEPNS0_5ModelEEN3$_0clEvEUlvE0_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t *operations_research::sat::Literal::DebugString@<X0>(uint64_t *__return_ptr a1@<X8>, operations_research::sat::Literal *this@<X0>)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = *this >> 1;
  if (*this)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = (v2 + 1);
  }

  v5[0] = v3;
  v5[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  return absl::lts_20240722::str_format_internal::FormatPack("%+d", 3, v5, 1uLL, a1);
}

void *std::__function::__value_func<operations_research::sat::BooleanOrIntegerLiteral ()(void)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_23CC1B278(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<operations_research::sat::DisjunctivePrecedenceSearchHeuristic(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::DisjunctivePrecedenceSearchHeuristic(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F42EA8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::DisjunctivePrecedenceSearchHeuristic(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::DisjunctivePrecedenceSearchHeuristic(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 264);
  v5 = *(v3 + 272);
  if (v4 != v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = *v4;
      if ((operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*v4, 1) & 1) == 0)
      {
        break;
      }

      started = operations_research::sat::SchedulingConstraintHelper::TaskByIncreasingStartMin(v10, v11);
      if ((v13 & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_4;
      }

      v14 = 16 * v13;
      v15 = 0xFFFFFFFFLL;
      while (1)
      {
        v16 = *started;
        v17 = *(*(v10 + 19) + 4 * v16);
        if (v17 != -1 && ((*(*(*(v10 + 3) + 24) + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v17 & 0x3F ^ 1)) & 1) != 0)
        {
          goto LABEL_9;
        }

        if (v15 == -1 || (v18 = *(v10 + 30), v19 = *(v10 + 31), v20 = *(v18 + 8 * v16), *(v19 + 8 * v15) <= v20))
        {
          v15 = *started;
          goto LABEL_9;
        }

        v21 = *(v10 + 32);
        v22 = *(v10 + 29);
        v23 = *(v18 + 8 * v15);
        if (v20 >= v23)
        {
          if (v23 < v20 || (v24 = -*(v21 + 8 * v16), v25 = -*(v21 + 8 * v15), v24 >= v25) && (v25 >= v24 ? (v26 = *(v22 + 8 * v16) < *(v22 + 8 * v15)) : (v26 = 0), !v26))
          {
            v27 = *started;
            v16 = v15;
            if (v7)
            {
              goto LABEL_26;
            }

LABEL_3:
            v9 = v27;
            v8 = v16;
            v7 = v10;
            goto LABEL_4;
          }
        }

        v27 = v15;
        if (*(v19 + 8 * v16) > v23)
        {
          break;
        }

LABEL_9:
        started += 4;
        v14 -= 16;
        if (!v14)
        {
          goto LABEL_4;
        }
      }

      if (!v7)
      {
        goto LABEL_3;
      }

LABEL_26:
      v28 = *(v18 + 8 * v16);
      v29 = *(*(v7 + 30) + 8 * v8);
      if (v28 < v29)
      {
        goto LABEL_3;
      }

      if (v29 >= v28)
      {
        v30 = -*(v21 + 8 * v16);
        v31 = -*(*(v7 + 32) + 8 * v8);
        if (v30 < v31 || v31 >= v30 && *(v22 + 8 * v16) < *(*(v7 + 29) + 8 * v8))
        {
          goto LABEL_3;
        }
      }

LABEL_4:
      if (++v4 == v5)
      {
        if (!v7)
        {
          break;
        }

        if (dword_27E25D0C0 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::sat::DisjunctivePrecedenceSearchHeuristic(operations_research::sat::Model *)::$_0::operator() const(void)::{lambda(void)#1}::operator() const(void)::site, dword_27E25D0C0))
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(v42, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/integer_search.cc", 737);
          v36 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v42, 2);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v36, "New disjunctive precedence: ", 0x1CuLL);
          operations_research::sat::SchedulingConstraintHelper::TaskDebugString(v7, v8, v37, v41);
          v38 = absl::lts_20240722::log_internal::LogMessage::operator<<(v36, v41);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v38, " ", 1uLL);
          operations_research::sat::SchedulingConstraintHelper::TaskDebugString(v7, v9, v39, &v40);
          absl::lts_20240722::log_internal::LogMessage::operator<<(v38, &v40);
          std::__function::__func<operations_research::sat::DisjunctivePrecedenceSearchHeuristic(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::DisjunctivePrecedenceSearchHeuristic(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()(&v40, v41, v42);
        }

        v32 = *(v7 + 7);
        v33 = *(v32 + 4 * v8);
        v34 = *(v32 + 4 * v9);
        operations_research::sat::IntervalsRepository::CreateDisjunctivePrecedenceLiteral(*(a1 + 8), v33, v34);
        result = operations_research::sat::IntervalsRepository::GetPrecedenceLiteral(*(a1 + 8), v33, v34);
        goto LABEL_36;
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
  result = 0xFFFFFFFFLL;
LABEL_36:
  *a2 = result;
  *(a2 + 2) = -1;
  a2[2] = 0;
  return result;
}

void sub_23CC1B5F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a21);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a21);
  _Unwind_Resume(a1);
}

void sub_23CC1B674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<operations_research::sat::DisjunctivePrecedenceSearchHeuristic(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::DisjunctivePrecedenceSearchHeuristic(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat36DisjunctivePrecedenceSearchHeuristicEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat36DisjunctivePrecedenceSearchHeuristicEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat36DisjunctivePrecedenceSearchHeuristicEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat36DisjunctivePrecedenceSearchHeuristicEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *operations_research::sat::Model::Delete<operations_research::sat::IntegerSearchHelper>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F42F28;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    MEMORY[0x23EED9460](v1, 0x1060C40E93EC9C2);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::IntegerSearchHelper>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F42F28;
  a1[1] = 0;
  if (v2)
  {
    MEMORY[0x23EED9460](v2, 0x1060C40E93EC9C2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

__n128 std::__function::__func<operations_research::sat::CumulativePrecedenceSearchHeuristic(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CumulativePrecedenceSearchHeuristic(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F42F60;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<operations_research::sat::CumulativePrecedenceSearchHeuristic(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CumulativePrecedenceSearchHeuristic(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = *(v2 + 288);
  v32 = *(v2 + 296);
  if (v3 == v32)
  {
LABEL_44:
    *a2 = 0;
    a2[1] = 0;
    *a2 = -1;
    *(a2 + 2) = -1;
    v28 = a2 + 2;
  }

  else
  {
    v4 = a1;
    v30 = a2;
    v31 = a2[2];
    v29 = a2 + 2;
    while (1)
    {
      v5 = *v3;
      v6 = *(v3 + 1);
      v7 = *(v3 + 3);
      v33 = v3;
      v35 = *(v3 + 2);
      v36 = *(v3 + 4);
      if ((operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(v7, 1) & 1) == 0)
      {
        break;
      }

      v9 = 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 11) - *(v7 + 10)) >> 3);
      if (0xAAAAAAAB00000000 * ((*(v7 + 11) - *(v7 + 10)) >> 3))
      {
        if (!(v9 >> 61))
        {
          operator new();
        }

        *v29 = v31;
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      started = operations_research::sat::SchedulingConstraintHelper::TaskByIncreasingStartMin(v7, v8);
      v12 = operations_research::sat::SchedulingConstraintHelper::TaskByIncreasingEndMin(v7, v11);
      if (v5 != -1)
      {
        v35 -= *(*(v4[2] + 40) + ((8 * v5) ^ 8)) * v6;
      }

      if (v9 < 1)
      {
        v15 = 0;
      }

      else
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
LABEL_12:
        v17 = *(v12 + 16 * v13 + 8);
        if (v14 < v9 && *(started + 16 * v14 + 8) < v17)
        {
          v17 = *(started + 16 * v14 + 8);
        }

        while (v13 < v9)
        {
          v20 = (v12 + 16 * v13);
          if (*(v20 + 1) != v17)
          {
            break;
          }

          v21 = *v20;
          v22 = *(*(v7 + 19) + 4 * v21);
          if (v22 == -1 || ((*(*(*(v7 + 3) + 24) + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v22) & 1) != 0)
          {
            v18 = *(8 * v21);
            if (v18 >= 1)
            {
              v19 = 0;
            }

            else
            {
              v19 = -1;
            }

            if (v18 < 1)
            {
              v18 = 0;
            }

            v16 -= v18;
            *(8 * v21) = v19;
            ++v13;
          }
        }

        while (1)
        {
          do
          {
            if (v14 >= v9 || (v23 = (started + 16 * v14), *(v23 + 1) != v17))
            {
              if (v13 >= v9)
              {
                goto LABEL_40;
              }

              goto LABEL_12;
            }

            v24 = *v23;
            v25 = *(*(v7 + 19) + 4 * *v23);
          }

          while (v25 != -1 && ((*(*(*(v7 + 3) + 24) + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v25) & 1) == 0 || *(8 * v24) == -1);
          v26 = operations_research::sat::SchedulingDemandHelper::DemandMin(v36, v24);
          v16 += v26;
          if (v16 > v35)
          {
            break;
          }

          ++v15;
          *(8 * v24) = v26;
          ++v14;
        }

        if (v24 != -1)
        {
          v27 = 0;
          while (*(8 * v27) < 1)
          {
            if ((v9 & 0x7FFFFFFF) == ++v27)
            {
              operator new();
            }
          }

          operator new();
        }
      }

LABEL_40:
      if (v15 != v9)
      {
        *v29 = v31;
        absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v15, v9, "num_added == num_tasks");
      }

      v4 = a1;
      v3 = v33 + 10;
      if (v33 + 10 == v32)
      {
        a2 = v30;
        *v29 = v31;
        goto LABEL_44;
      }
    }

    v30[1] = 0;
    v30[2] = v31;
    *v30 = 0;
    *v30 = -1;
    *(v30 + 2) = -1;
    v28 = v29;
  }

  *v28 = 0;
}

void sub_23CC1C9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
    if ((*(v29 - 105) & 0x80000000) == 0)
    {
LABEL_3:
      absl::lts_20240722::log_internal::LogMessage::~LogMessage((v29 - 104));
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v29 - 105) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v29 - 128));
  absl::lts_20240722::log_internal::LogMessage::~LogMessage((v29 - 104));
  _Unwind_Resume(a1);
}

void sub_23CC1CA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *__p, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  *a9 = a11;
  if (*(v30 - 105) < 0)
  {
    operator delete(*(v30 - 128));
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a24);
  if (v29)
  {
    operator delete(v29);
    v32 = __p;
    if (!__p)
    {
LABEL_5:
      if (!a19)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v32 = __p;
    if (!__p)
    {
      goto LABEL_5;
    }
  }

  operator delete(v32);
  if (!a19)
  {
LABEL_6:
    if (!a23)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a19);
  if (!a23)
  {
LABEL_7:
    _Unwind_Resume(a1);
  }

LABEL_11:
  operator delete(a23);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<operations_research::sat::CumulativePrecedenceSearchHeuristic(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CumulativePrecedenceSearchHeuristic(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat35CumulativePrecedenceSearchHeuristicEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat35CumulativePrecedenceSearchHeuristicEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat35CumulativePrecedenceSearchHeuristicEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat35CumulativePrecedenceSearchHeuristicEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::discrete_distribution<int>::param_type::__init(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  if (*a1 != v1)
  {
    v3 = (v1 - v2) >> 3;
    if (v3 < 2)
    {
      *(a1 + 8) = v2;

      std::vector<double>::shrink_to_fit(a1);
    }

    else
    {
      v4 = 0.0;
      v5 = *a1;
      if ((v1 - 8) == v2)
      {
        goto LABEL_37;
      }

      v6 = ((v1 - 8 - v2) >> 3) + 1;
      v5 = &v2->f64[v6 & 0x3FFFFFFFFFFFFFFELL];
      v7 = &v2->f64[1];
      v4 = 0.0;
      v8 = v6 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        v4 = v4 + *(v7 - 1) + *v7;
        v7 += 2;
        v8 -= 2;
      }

      while (v8);
      if (v6 != (v6 & 0x3FFFFFFFFFFFFFFELL))
      {
LABEL_37:
        do
        {
          v9 = *v5++;
          v4 = v4 + v9;
        }

        while (v5 != v1);
      }

      if (v2 < v1)
      {
        v10 = &v2->f64[1];
        if (v1 > &v2->f64[1])
        {
          v10 = *(a1 + 8);
        }

        v11 = v10 + ~v2;
        v12 = *a1;
        if (v11 <= 0x17)
        {
          goto LABEL_38;
        }

        v13 = (v11 >> 3) + 1;
        v12 = &v2->f64[v13 & 0x3FFFFFFFFFFFFFFCLL];
        v14 = vdupq_lane_s64(*&v4, 0);
        v15 = v2 + 1;
        v16 = v13 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v17 = vdivq_f64(*v15, v14);
          v15[-1] = vdivq_f64(v15[-1], v14);
          *v15 = v17;
          v15 += 2;
          v16 -= 4;
        }

        while (v16);
        if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_38:
          do
          {
            *v12 = *v12 / v4;
            ++v12;
          }

          while (v12 < v1);
        }
      }

      v18 = v3 - 1;
      if (v18)
      {
        if (!(v18 >> 61))
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v19 = (v1 - 8);
      if (v19 != v2)
      {
        v20 = &v2->f64[1];
        v21 = v2->f64[0];
        MEMORY[0] = *&v2->f64[0];
        if (&v2->f64[1] == v19)
        {
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          v24 = v2;

          goto LABEL_29;
        }

        v22 = 8;
        do
        {
          v23 = *v20++;
          v21 = v21 + v23;
          *v22 = v21;
          v22 += 8;
        }

        while (v20 != v19);
      }

      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      if (v2)
      {
        v24 = v2;

LABEL_29:
        operator delete(v24);
      }
    }
  }
}

void std::vector<double>::shrink_to_fit(void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    v6 = v4 >> 3;
    if (v1 != v2)
    {
      if (!(v6 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (v4 < v3)
    {
      v7 = 8 * v6;
      v8 = a1[1] - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      *a1 = v9;
      a1[1] = v7;
      a1[2] = v7;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

uint64_t std::__function::__func<operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_0>,operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F42FE0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_0>,operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat27RandomizeOnRestartHeuristicEbPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat27RandomizeOnRestartHeuristicEbPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat27RandomizeOnRestartHeuristicEbPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat27RandomizeOnRestartHeuristicEbPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_1,std::allocator<operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_1>,operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F43060;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_1,std::allocator<operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_1>,operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat27RandomizeOnRestartHeuristicEbPNS0_5ModelEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat27RandomizeOnRestartHeuristicEbPNS0_5ModelEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat27RandomizeOnRestartHeuristicEbPNS0_5ModelEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat27RandomizeOnRestartHeuristicEbPNS0_5ModelEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_2,std::allocator<operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_2>,operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F430E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_2,std::allocator<operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_2>,operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>::operator()(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = 8 * v2;
  v4 = v2 ^ 1;
  if (*(*(*(a1 + 8) + 40) + v3) + *(*(*(a1 + 8) + 40) + (v3 ^ 8)))
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t std::__function::__func<operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_2,std::allocator<operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_2>,operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat27RandomizeOnRestartHeuristicEbPNS0_5ModelEE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat27RandomizeOnRestartHeuristicEbPNS0_5ModelEE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat27RandomizeOnRestartHeuristicEbPNS0_5ModelEE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat27RandomizeOnRestartHeuristicEbPNS0_5ModelEE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_3,std::allocator<operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_3>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F43160;
  operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_3::~$_3(a1 + 1);
  return a1;
}

void std::__function::__func<operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_3,std::allocator<operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_3>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F43160;
  operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_3::~$_3(a1 + 1);

  JUMPOUT(0x23EED9460);
}

void std::__function::__func<operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_3,std::allocator<operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_3>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::destroy_deallocate(void *a1)
{
  operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_3::~$_3(a1 + 1);

  operator delete(a1);
}

int **std::__function::__func<operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_3,std::allocator<operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_3>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(*(a1 + 8) + 296))
  {
    goto LABEL_54;
  }

  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelRandomGenerator>(*(a1 + 16));
  *&v63 = v4;
  *(&v63 + 1) = absl::lts_20240722::BitGenRef::MockCall<operations_research::sat::ModelRandomGenerator>;
  v64 = absl::lts_20240722::BitGenRef::ImplFn<operations_research::sat::ModelRandomGenerator>;
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(*(a1 + 16));
  operations_research::sat::RandomizeDecisionHeuristic(&v63, v5);
  operations_research::sat::SatDecisionPolicy::ResetDecisionHeuristic(*(a1 + 24));
  if (*(a1 + 32))
  {
    *&v63 = 0x3FC999999999999ALL;
    LOBYTE(v65) = 0;
    v6 = *(v4 + 1);
    if (v6 == absl::lts_20240722::BitGenRef::NotAMock)
    {
      v7 = 0.2;
      goto LABEL_9;
    }

    if ((v6)(*v4, &absl::lts_20240722::base_internal::FastTypeTag<BOOL ()(absl::lts_20240722::bernoulli_distribution,std::tuple<double>)>::dummy_var, &v63, &v65))
    {
      if ((v65 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v7 = *&v63;
LABEL_9:
      while (1)
      {
        v8 = vcvtd_n_s64_f64(v7, 0x20uLL);
        v9 = (*(v4 + 2))(*v4);
        if (v9 != v8)
        {
          break;
        }

        v7 = (v7 + v8 * -2.32830644e-10) * 4294967300.0;
        if (v7 == 0.0)
        {
          goto LABEL_39;
        }
      }

      if (v9 >= v8)
      {
        goto LABEL_39;
      }
    }

    v10 = *(a1 + 32);
    v12 = v10[6];
    v11 = v10[7];
    if (v12 == v11)
    {
      v15 = 0.0;
      goto LABEL_30;
    }

    if (v11 - 1 == v12)
    {
      v13 = 0;
      v14 = v10[6];
    }

    else
    {
      v16 = (((v11 - 1) - v12) >> 3) + 1;
      v14 = &v12[v16 & 0x3FFFFFFFFFFFFFFELL];
      v17 = v12 + 1;
      v18 = 0uLL;
      v19 = v16 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        v20 = vabsq_s64(*(v17 - 1));
        v18 = vbslq_s8(vcgtq_s64(v18, v20), v18, v20);
        v17 += 2;
        v19 -= 2;
      }

      while (v19);
      v13 = v18.i64[0];
      if (v18.i64[0] <= v18.i64[1])
      {
        v13 = v18.i64[1];
      }

      if (v16 == (v16 & 0x3FFFFFFFFFFFFFFELL))
      {
        goto LABEL_27;
      }
    }

    do
    {
      v22 = *v14++;
      v21 = v22;
      if (v22 < 0)
      {
        v21 = -v21;
      }

      if (v13 <= v21)
      {
        v13 = v21;
      }
    }

    while (v14 != v11);
LABEL_27:
    if (v13 <= 0x7FFFFFFFFFFFFFFDLL)
    {
      v15 = v13;
    }

    else
    {
      v15 = INFINITY;
    }

LABEL_30:
    v23 = v10[4] - v10[3];
    if ((v23 >> 2) >= 1)
    {
      v24 = 0;
      v25 = (v23 >> 2) & 0x7FFFFFFF;
      do
      {
        v26 = *(*(*(a1 + 32) + 24) + 4 * v24);
        v27 = *(*(a1 + 40) + 40);
        v28 = 8 * v26;
        if (!*(v27 + v28) && *(v27 + (v28 ^ 8)) == -1)
        {
          AssociatedLiteral = operations_research::sat::IntegerEncoder::GetAssociatedLiteral(*(a1 + 48), v26, 1);
          if (AssociatedLiteral != -1)
          {
            v30 = *(*(*(a1 + 32) + 48) + 8 * v24);
            v31 = fabs(v30);
            if ((v30 + 0x7FFFFFFFFFFFFFFDLL) >= 0xFFFFFFFFFFFFFFFBLL)
            {
              v31 = INFINITY;
            }

            v32 = v31 / v15;
            operations_research::sat::SatDecisionPolicy::SetAssignmentPreference(*(a1 + 24), AssociatedLiteral ^ (v30 > 0), v32);
          }
        }

        ++v24;
      }

      while (v25 != v24);
    }
  }

LABEL_39:
  v33 = *(a1 + 64);
  v34 = *(a1 + 72);
  v35 = (*(v4 + 2))(*v4);
  if (v34 != v33)
  {
    v36 = vcvtd_n_f64_u64(v35, 0x40uLL);
    v37 = v34 - v33;
    do
    {
      v38 = v37 >> 1;
      v39 = &v33[v37 >> 1];
      v41 = *v39;
      v40 = v39 + 1;
      v37 += ~(v37 >> 1);
      if (v36 < v41)
      {
        v37 = v38;
      }

      else
      {
        v33 = v40;
      }
    }

    while (v37);
    v34 = v33;
  }

  *(a1 + 56) = (v34 - *(a1 + 64)) >> 3;
  v42 = *(a1 + 96);
  v43 = *(a1 + 104);
  v44 = (*(v4 + 2))(*v4);
  if (v43 != v42)
  {
    v45 = vcvtd_n_f64_u64(v44, 0x40uLL);
    v46 = v43 - v42;
    do
    {
      v47 = v46 >> 1;
      v48 = &v42[v46 >> 1];
      v50 = *v48;
      v49 = v48 + 1;
      v46 += ~(v46 >> 1);
      if (v45 < v50)
      {
        v46 = v47;
      }

      else
      {
        v42 = v49;
      }
    }

    while (v46);
    v43 = v42;
  }

  *(a1 + 88) = (v43 - *(a1 + 96)) >> 3;
LABEL_54:
  v51 = *(*(a1 + 120) + 32 * *(a1 + 56) + 24);
  if (!v51)
  {
    goto LABEL_70;
  }

  result = (*(*v51 + 48))(&v63);
  v53 = v63 == -1 && DWORD2(v63) == -1;
  if (v53 || (v54 = *(a1 + 88), v55 = *(a1 + 144), v54 >= (*(a1 + 152) - v55) >> 5))
  {
LABEL_68:
    *a2 = v63;
    *(a2 + 16) = v64;
    return result;
  }

  if (v63 != -1)
  {
    result = operations_research::sat::IntegerEncoder::GetAllAssociatedVariables(*(a1 + 48), v63);
    v56 = *result;
    v57 = result[1];
    if (*result != v57)
    {
      while (1)
      {
        v58 = *(a1 + 88);
        v59 = *(a1 + 144);
        v65 = *v56;
        v60 = *(v59 + 32 * v58 + 24);
        if (!v60)
        {
          break;
        }

        result = (*(*v60 + 48))(v60, &v65);
        if (result != -1)
        {
          goto LABEL_69;
        }

        if (++v56 == v57)
        {
          goto LABEL_68;
        }
      }

LABEL_70:
      std::__throw_bad_function_call[abi:ne200100]();
    }

    goto LABEL_68;
  }

  v65 = DWORD2(v63);
  v62 = *(v55 + 32 * v54 + 24);
  if (!v62)
  {
    goto LABEL_70;
  }

  result = (*(*v62 + 48))(v62, &v65);
  if (result == -1)
  {
    goto LABEL_68;
  }

LABEL_69:
  *a2 = -1;
  *(a2 + 8) = result;
  *(a2 + 16) = v61;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_3,std::allocator<operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_3>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat27RandomizeOnRestartHeuristicEbPNS0_5ModelEE3$_3")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat27RandomizeOnRestartHeuristicEbPNS0_5ModelEE3$_3" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat27RandomizeOnRestartHeuristicEbPNS0_5ModelEE3$_3"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat27RandomizeOnRestartHeuristicEbPNS0_5ModelEE3$_3" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_3::$_3(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 48) = *(a2 + 12);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 56) = 0;
  *a1 = v4;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v8 = *(a2 + 7);
  v7 = *(a2 + 8);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v9 = *(a2 + 20);
  *(a1 + 88) = 0;
  *(a1 + 80) = v9;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v11 = *(a2 + 11);
  v10 = *(a2 + 12);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::__init_with_size[abi:ne200100]<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>*,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>*>(a1 + 112, *(a2 + 14), *(a2 + 15), (*(a2 + 15) - *(a2 + 14)) >> 5);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>::__init_with_size[abi:ne200100]<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>*,std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>*>(a1 + 136, *(a2 + 17), *(a2 + 18), (*(a2 + 18) - *(a2 + 17)) >> 5);
  return a1;
}

void sub_23CC1DCA0(_Unwind_Exception *a1)
{
  std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::~vector[abi:ne200100](v2);
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 96) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void *operations_research::sat::Model::Delete<int>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F431E0;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    MEMORY[0x23EED9460](v1, 0x1000C4052888210);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<int>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F431E0;
  a1[1] = 0;
  if (v2)
  {
    MEMORY[0x23EED9460](v2, 0x1000C4052888210);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void *std::__function::__func<operations_research::sat::FollowHint(std::vector<operations_research::sat::BooleanOrIntegerVariable> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::FollowHint(std::vector<operations_research::sat::BooleanOrIntegerVariable> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F43218;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__function::__func<operations_research::sat::FollowHint(std::vector<operations_research::sat::BooleanOrIntegerVariable> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::FollowHint(std::vector<operations_research::sat::BooleanOrIntegerVariable> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F43218;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x23EED9460);
}

void std::__function::__func<operations_research::sat::FollowHint(std::vector<operations_research::sat::BooleanOrIntegerVariable> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::FollowHint(std::vector<operations_research::sat::BooleanOrIntegerVariable> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::destroy(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;

    operator delete(v3);
  }
}

void std::__function::__func<operations_research::sat::FollowHint(std::vector<operations_research::sat::BooleanOrIntegerVariable> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::FollowHint(std::vector<operations_research::sat::BooleanOrIntegerVariable> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[6];
  if (v2)
  {
    __p[7] = v2;
    operator delete(v2);
  }

  v3 = __p[3];
  if (v3)
  {
    __p[4] = v3;
    operator delete(v3);
  }

  operator delete(__p);
}

void std::__function::__func<operations_research::sat::FollowHint(std::vector<operations_research::sat::BooleanOrIntegerVariable> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::FollowHint(std::vector<operations_research::sat::BooleanOrIntegerVariable> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  if (*(v4 + 16) != *(v4 + 24))
  {
    *&v17 = *(a1 + 16);
    DWORD2(v17) = *v17;
    std::vector<std::pair<int *,int>>::push_back[abi:ne200100](v4 + 40, &v17);
  }

  v5 = *(a1 + 24);
  v6 = **(a1 + 16);
  v7 = v6;
  for (i = *(a1 + 32); v6 < ((i - v5) >> 3); v7 = ++v6)
  {
    v9 = 8 * v7;
    v10 = *(*(a1 + 48) + 8 * v7);
    v11 = (v5 + v9);
    v12 = *(v5 + v9);
    if (v12 == -1)
    {
      v13 = v11[1];
      if (*(*(*(a1 + 80) + 40) + 8 * v13) + *(*(*(a1 + 80) + 40) + ((8 * v13) ^ 8)))
      {
        if ((v13 & 0xFFFFFFFE) == v13)
        {
          v14 = v10;
        }

        else
        {
          v14 = -v10;
        }

        v15 = operations_research::sat::SplitAroundGivenValue(v13 & 0xFFFFFFFE, v14, *(a1 + 88));
        if (v15 != -1)
        {
          **(a1 + 16) = v6;
          *a2 = -1;
          *(a2 + 8) = v15;
          *(a2 + 16) = v16;
          return;
        }

        v5 = *(a1 + 24);
        i = *(a1 + 32);
      }
    }

    else if (((*(*(*(a1 + 72) + 24) + (((2 * v12) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (2 * (v12 & 0x1Fu))) & 3) == 0)
    {
      **(a1 + 16) = v6;
      *a2 = (v10 != 1) | (2 * *v11);
      goto LABEL_15;
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *a2 = -1;
LABEL_15:
  *(a2 + 8) = -1;
  *(a2 + 16) = 0;
}

uint64_t std::__function::__func<operations_research::sat::FollowHint(std::vector<operations_research::sat::BooleanOrIntegerVariable> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::FollowHint(std::vector<operations_research::sat::BooleanOrIntegerVariable> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat10FollowHintERKNSt3__16vectorINS0_24BooleanOrIntegerVariableENS1_9allocatorIS3_EEEERKNS2_INS_11StrongInt64INS0_25IntegerValue_integer_tag_EEENS4_ISB_EEEEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat10FollowHintERKNSt3__16vectorINS0_24BooleanOrIntegerVariableENS1_9allocatorIS3_EEEERKNS2_INS_11StrongInt64INS0_25IntegerValue_integer_tag_EEENS4_ISB_EEEEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat10FollowHintERKNSt3__16vectorINS0_24BooleanOrIntegerVariableENS1_9allocatorIS3_EEEERKNS2_INS_11StrongInt64INS0_25IntegerValue_integer_tag_EEENS4_ISB_EEEEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat10FollowHintERKNSt3__16vectorINS0_24BooleanOrIntegerVariableENS1_9allocatorIS3_EEEERKNS2_INS_11StrongInt64INS0_25IntegerValue_integer_tag_EEENS4_ISB_EEEEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t operations_research::sat::FollowHint(std::vector<operations_research::sat::BooleanOrIntegerVariable> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::sat::Model *)::$_0::$_0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = 0;
  *a1 = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v4 = *(a2 + 2);
  v3 = *(a2 + 3);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v6 = *(a2 + 5);
  v5 = *(a2 + 6);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = a2[4];
  *(a1 + 80) = *(a2 + 10);
  *(a1 + 64) = v7;
  return a1;
}

void sub_23CC1E2FC(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<operations_research::sat::RestartEveryKFailures(int,operations_research::sat::SatSolver *)::$_0,std::allocator<operations_research::sat::RestartEveryKFailures(int,operations_research::sat::SatSolver *)::$_0>,BOOL ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F43298;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::RestartEveryKFailures(int,operations_research::sat::SatSolver *)::$_0,std::allocator<operations_research::sat::RestartEveryKFailures(int,operations_research::sat::SatSolver *)::$_0>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = operations_research::sat::SatSolver::num_failures(*(a1 + 16));
  if (v2 == 1)
  {
    *(a1 + 12) = *(a1 + 24) + v3;
    *(a1 + 8) = 0;
    return 0;
  }

  else if (v3 >= *(a1 + 12))
  {
    *(a1 + 8) = 1;
    return 1;
  }

  else
  {
    return *(a1 + 8) & 1;
  }
}

uint64_t std::__function::__func<operations_research::sat::RestartEveryKFailures(int,operations_research::sat::SatSolver *)::$_0,std::allocator<operations_research::sat::RestartEveryKFailures(int,operations_research::sat::SatSolver *)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat21RestartEveryKFailuresEiPNS0_9SatSolverEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat21RestartEveryKFailuresEiPNS0_9SatSolverEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat21RestartEveryKFailuresEiPNS0_9SatSolverEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat21RestartEveryKFailuresEiPNS0_9SatSolverEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

operations_research::sat::RestartPolicy *operations_research::sat::RestartPolicy::RestartPolicy(operations_research::sat::RestartPolicy *this, operations_research::sat::Model *a2)
{
  *this = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  *(this + 1) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatDecisionPolicy>(a2);
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 16) = 1;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  *(this + 116) = 0u;
  *(this + 132) = 0x100000000;
  *(this + 140) = 0u;
  *(this + 156) = 0u;
  *(this + 172) = 0u;
  *(this + 188) = 0u;
  *(this + 204) = 0x100000000;
  *(this + 69) = 0;
  *(this + 244) = 0u;
  *(this + 228) = 0u;
  *(this + 212) = 0u;
  *(this + 260) = 0u;
  operations_research::sat::RestartPolicy::Reset(this, v4);
  return this;
}

void sub_23CC1E6C4(_Unwind_Exception *a1)
{
  std::deque<int>::~deque[abi:ne200100](v1 + 232);
  std::deque<int>::~deque[abi:ne200100](v1 + 160);
  std::deque<int>::~deque[abi:ne200100](v1 + 88);
  v3 = *(v1 + 32);
  if (v3)
  {
    *(v1 + 40) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void *operations_research::sat::Model::Delete<operations_research::sat::RestartPolicy>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F43318;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    std::deque<int>::~deque[abi:ne200100](v1 + 232);
    std::deque<int>::~deque[abi:ne200100](v1 + 160);
    std::deque<int>::~deque[abi:ne200100](v1 + 88);
    v3 = *(v1 + 32);
    if (v3)
    {
      *(v1 + 40) = v3;
      operator delete(v3);
    }

    MEMORY[0x23EED9460](v1, 0x10F0C40436A539CLL);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::RestartPolicy>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F43318;
  a1[1] = 0;
  if (v1)
  {
    std::deque<int>::~deque[abi:ne200100](v1 + 232);
    std::deque<int>::~deque[abi:ne200100](v1 + 160);
    std::deque<int>::~deque[abi:ne200100](v1 + 88);
    v2 = *(v1 + 32);
    if (v2)
    {
      *(v1 + 40) = v2;
      operator delete(v2);
    }

    MEMORY[0x23EED9460](v1, 0x10F0C40436A539CLL);
  }

  JUMPOUT(0x23EED9460);
}

uint64_t std::__function::__func<operations_research::sat::SatSolverRestartPolicy(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::SatSolverRestartPolicy(operations_research::sat::Model *)::$_0>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F43350;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::SatSolverRestartPolicy(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::SatSolverRestartPolicy(operations_research::sat::Model *)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat22SatSolverRestartPolicyEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat22SatSolverRestartPolicyEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat22SatSolverRestartPolicyEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat22SatSolverRestartPolicyEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

char *std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::__assign_with_size[abi:ne200100]<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const*,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const*>(char *result, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v32 = *MEMORY[0x277D85DE8];
  v7 = *(result + 2);
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(result + 1);
      v11 = *result;
      if (v10 != v8)
      {
        v12 = v10 - 32;
        do
        {
          v13 = *(v10 - 1);
          v10 -= 32;
          if (v10 == v13)
          {
            (*(*v13 + 32))(v13);
          }

          else if (v13)
          {
            (*(*v13 + 40))(v13);
          }

          v12 -= 32;
        }

        while (v10 != v8);
        v11 = *v6;
      }

      *(v6 + 1) = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      a4 = v9;
    }

    if (!(a4 >> 59))
    {
      v22 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v22 = a4;
      }

      v23 = v7 >= 0x7FFFFFFFFFFFFFE0;
      v24 = 0x7FFFFFFFFFFFFFFLL;
      if (!v23)
      {
        v24 = v22;
      }

      if (!(v24 >> 59))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v14 = *(result + 1);
  v15 = v14 - v8;
  if (a4 <= (v14 - v8) >> 5)
  {
    if (a2 != a3)
    {
      v20 = a2;
      do
      {
        v21 = *(v5 + 3);
        if (v21)
        {
          if (v5 == v21)
          {
            v31 = v30;
            (*(*v21 + 24))(v21, v30);
          }

          else
          {
            v31 = (*(*v21 + 16))(v21);
          }
        }

        else
        {
          v31 = 0;
        }

        std::__function::__value_func<operations_research::sat::BooleanOrIntegerLiteral ()(void)>::swap[abi:ne200100](v30, v8);
        result = v31;
        if (v31 == v30)
        {
          result = (*(*v31 + 32))(v31);
        }

        else if (v31)
        {
          result = (*(*v31 + 40))();
        }

        v5 += 32;
        v8 += 32;
        v20 += 32;
      }

      while (v5 != a3);
      v14 = *(v6 + 1);
    }

    if (v14 != v8)
    {
      v27 = v14 - 32;
      do
      {
        result = *(v14 - 1);
        v14 -= 32;
        if (v14 == result)
        {
          result = (*(*result + 32))(result);
        }

        else if (result)
        {
          result = (*(*result + 40))(result);
        }

        v27 -= 32;
      }

      while (v14 != v8);
    }

    *(v6 + 1) = v8;
  }

  else
  {
    if (v14 != v8)
    {
      v16 = v14 - v8;
      v17 = a2;
      v18 = a2;
      do
      {
        v19 = *(v18 + 3);
        if (v19)
        {
          if (v18 == v19)
          {
            v31 = v30;
            (*(*v19 + 24))(v19, v30);
          }

          else
          {
            v31 = (*(*v19 + 16))(v19);
          }
        }

        else
        {
          v31 = 0;
        }

        std::__function::__value_func<operations_research::sat::BooleanOrIntegerLiteral ()(void)>::swap[abi:ne200100](v30, v8);
        result = v31;
        if (v31 == v30)
        {
          result = (*(*v31 + 32))(v31);
        }

        else if (v31)
        {
          result = (*(*v31 + 40))();
        }

        v18 += 32;
        v8 += 32;
        v17 += 32;
        v16 -= 32;
      }

      while (v16);
      v14 = *(v6 + 1);
    }

    v25 = &v5[v15];
    v28 = v14;
    v29 = v14;
    v30[0] = v6;
    v30[1] = &v28;
    v30[2] = &v29;
    v26 = v14;
    LOBYTE(v31) = 0;
    if (v25 != a3)
    {
      v26 = v14;
      do
      {
        result = *(v25 + 3);
        if (result)
        {
          if (v25 == result)
          {
            *(v26 + 3) = v26;
            result = (*(**(v25 + 3) + 24))(*(v25 + 3), v26);
            goto LABEL_49;
          }

          result = (*(*result + 16))(result);
        }

        *(v26 + 3) = result;
LABEL_49:
        v25 += 32;
        v26 = v29 + 32;
        v29 += 32;
      }

      while (v25 != a3);
    }

    *(v6 + 1) = v26;
  }

  return result;
}

void sub_23CC1EEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>*>>::~__exception_guard_exceptions[abi:ne200100](va);
  *(v7 + 8) = v8;
  _Unwind_Resume(a1);
}

void sub_23CC1EF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>*>>::~__exception_guard_exceptions[abi:ne200100](va);
  *(v7 + 8) = v8;
  _Unwind_Resume(a1);
}

char *std::vector<std::function<BOOL ()(void)>>::__assign_with_size[abi:ne200100]<std::function<BOOL ()(void)> const*,std::function<BOOL ()(void)> const*>(char *result, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v32 = *MEMORY[0x277D85DE8];
  v7 = *(result + 2);
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(result + 1);
      v11 = *result;
      if (v10 != v8)
      {
        v12 = v10 - 32;
        do
        {
          v13 = *(v10 - 1);
          v10 -= 32;
          if (v10 == v13)
          {
            (*(*v13 + 32))(v13);
          }

          else if (v13)
          {
            (*(*v13 + 40))(v13);
          }

          v12 -= 32;
        }

        while (v10 != v8);
        v11 = *v6;
      }

      *(v6 + 1) = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      a4 = v9;
    }

    if (!(a4 >> 59))
    {
      v22 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v22 = a4;
      }

      v23 = v7 >= 0x7FFFFFFFFFFFFFE0;
      v24 = 0x7FFFFFFFFFFFFFFLL;
      if (!v23)
      {
        v24 = v22;
      }

      if (!(v24 >> 59))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v14 = *(result + 1);
  v15 = v14 - v8;
  if (a4 <= (v14 - v8) >> 5)
  {
    if (a2 != a3)
    {
      v20 = a2;
      do
      {
        v21 = *(v5 + 3);
        if (v21)
        {
          if (v5 == v21)
          {
            v31 = v30;
            (*(*v21 + 24))(v21, v30);
          }

          else
          {
            v31 = (*(*v21 + 16))(v21);
          }
        }

        else
        {
          v31 = 0;
        }

        std::__function::__value_func<BOOL ()(void)>::swap[abi:ne200100](v30, v8);
        result = v31;
        if (v31 == v30)
        {
          result = (*(*v31 + 32))(v31);
        }

        else if (v31)
        {
          result = (*(*v31 + 40))();
        }

        v5 += 32;
        v8 += 32;
        v20 += 32;
      }

      while (v5 != a3);
      v14 = *(v6 + 1);
    }

    if (v14 != v8)
    {
      v27 = v14 - 32;
      do
      {
        result = *(v14 - 1);
        v14 -= 32;
        if (v14 == result)
        {
          result = (*(*result + 32))(result);
        }

        else if (result)
        {
          result = (*(*result + 40))(result);
        }

        v27 -= 32;
      }

      while (v14 != v8);
    }

    *(v6 + 1) = v8;
  }

  else
  {
    if (v14 != v8)
    {
      v16 = v14 - v8;
      v17 = a2;
      v18 = a2;
      do
      {
        v19 = *(v18 + 3);
        if (v19)
        {
          if (v18 == v19)
          {
            v31 = v30;
            (*(*v19 + 24))(v19, v30);
          }

          else
          {
            v31 = (*(*v19 + 16))(v19);
          }
        }

        else
        {
          v31 = 0;
        }

        std::__function::__value_func<BOOL ()(void)>::swap[abi:ne200100](v30, v8);
        result = v31;
        if (v31 == v30)
        {
          result = (*(*v31 + 32))(v31);
        }

        else if (v31)
        {
          result = (*(*v31 + 40))();
        }

        v18 += 32;
        v8 += 32;
        v17 += 32;
        v16 -= 32;
      }

      while (v16);
      v14 = *(v6 + 1);
    }

    v25 = &v5[v15];
    v28 = v14;
    v29 = v14;
    v30[0] = v6;
    v30[1] = &v28;
    v30[2] = &v29;
    v26 = v14;
    LOBYTE(v31) = 0;
    if (v25 != a3)
    {
      v26 = v14;
      do
      {
        result = *(v25 + 3);
        if (result)
        {
          if (v25 == result)
          {
            *(v26 + 3) = v26;
            result = (*(**(v25 + 3) + 24))(*(v25 + 3), v26);
            goto LABEL_49;
          }

          result = (*(*result + 16))(result);
        }

        *(v26 + 3) = result;
LABEL_49:
        v25 += 32;
        v26 = v29 + 32;
        v29 += 32;
      }

      while (v25 != a3);
    }

    *(v6 + 1) = v26;
  }

  return result;
}

void sub_23CC1F4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::function<BOOL ()(void)>>,std::function<BOOL ()(void)>*>>::~__exception_guard_exceptions[abi:ne200100](va);
  *(v7 + 8) = v8;
  _Unwind_Resume(a1);
}

void sub_23CC1F4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::function<BOOL ()(void)>>,std::function<BOOL ()(void)>*>>::~__exception_guard_exceptions[abi:ne200100](va);
  *(v7 + 8) = v8;
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::function<BOOL ()(void)>>,std::function<BOOL ()(void)>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = v4 - 32;
      do
      {
        v7 = *(v4 - 8);
        v4 -= 32;
        if (v4 == v7)
        {
          (*(*v7 + 32))(v7);
        }

        else if (v7)
        {
          (*(*v7 + 40))(v7);
        }

        v6 -= 32;
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void *std::__function::__value_func<BOOL ()(void)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_23CC1F84C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<operations_research::sat::ConfigureSearchHeuristics(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::ConfigureSearchHeuristics(operations_research::sat::Model *)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat25ConfigureSearchHeuristicsEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat25ConfigureSearchHeuristicsEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat25ConfigureSearchHeuristicsEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat25ConfigureSearchHeuristicsEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<operations_research::sat::ConfigureSearchHeuristics(operations_research::sat::Model *)::$_1,std::allocator<operations_research::sat::ConfigureSearchHeuristics(operations_research::sat::Model *)::$_1>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat25ConfigureSearchHeuristicsEPNS0_5ModelEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat25ConfigureSearchHeuristicsEPNS0_5ModelEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat25ConfigureSearchHeuristicsEPNS0_5ModelEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat25ConfigureSearchHeuristicsEPNS0_5ModelEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>@<X0>(unint64_t *result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1)
  {
    v6 = 0;
    _X10 = result[2];
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v13));
    v15 = vdup_n_s8(v14 & 0x7F);
    v16 = ((v14 >> 7) ^ (_X10 >> 12)) & v3;
    v17 = *(_X10 + v16);
    v18 = vceq_s8(v17, v15);
    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_5:
    v19 = result[3];
    do
    {
      v20 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v3;
      if (*(v19 + 4 * v20) == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v19 + 4 * v20;
        *(a3 + 16) = 0;
        return result;
      }

      v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v18);
LABEL_8:
    while (1)
    {
      v21 = vceq_s8(v17, 0x8080808080808080);
      if (v21)
      {
        break;
      }

      v6 += 8;
      v16 = (v6 + v16) & v3;
      v17 = *(_X10 + v16);
      v18 = vceq_s8(v17, v15);
      if (v18)
      {
        goto LABEL_5;
      }
    }

    v22 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>>::GetPolicyFunctions(void)::value);
    v24 = v22[3] + 4 * result;
    *a3 = result + v22[2];
    *(a3 + 8) = v24;
    *(a3 + 16) = 1;
  }

  else
  {
    if (result[1] > 1)
    {
      v4 = result + 2;
      if (*(result + 4) != *a2)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>>::resize_impl(result, 3uLL);
      }

      v5 = 0;
    }

    else
    {
      result[1] = 2;
      v4 = result + 2;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>>::resize_impl(unint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a1 < 2 && v3 > 1;
  if (v5)
  {
    v6 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 4)) * 0x9DDFEA08EB382D69) >> 64) ^ (105 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 4)))) & 0x7F;
  }

  else
  {
    v6 = 0x80;
  }

  v8 = *a1;
  v9 = v3 & 1;
  v10 = v2 < 2;
  v11 = v5;
  v7 = *(a1 + 1);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,4ul,true,true,4ul>(&v7, a1, v6);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>::resize_impl(unint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a1 < 2 && v3 > 1;
  if (v5)
  {
    v6 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 4)) * 0x9DDFEA08EB382D69) >> 64) ^ (105 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 4)))) & 0x7F;
  }

  else
  {
    v6 = 0x80;
  }

  v8 = *a1;
  v9 = v3 & 1;
  v10 = v2 < 2;
  v11 = v5;
  v7 = *(a1 + 1);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,4ul,true,true,4ul>(&v7, a1, v6);
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>@<X0>(unint64_t *result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1)
  {
    v6 = 0;
    _X10 = result[2];
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v13));
    v15 = vdup_n_s8(v14 & 0x7F);
    v16 = ((v14 >> 7) ^ (_X10 >> 12)) & v3;
    v17 = *(_X10 + v16);
    v18 = vceq_s8(v17, v15);
    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_5:
    v19 = result[3];
    do
    {
      v20 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v3;
      if (*(v19 + 4 * v20) == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v19 + 4 * v20;
        *(a3 + 16) = 0;
        return result;
      }

      v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v18);
LABEL_8:
    while (1)
    {
      v21 = vceq_s8(v17, 0x8080808080808080);
      if (v21)
      {
        break;
      }

      v6 += 8;
      v16 = (v6 + v16) & v3;
      v17 = *(_X10 + v16);
      v18 = vceq_s8(v17, v15);
      if (v18)
      {
        goto LABEL_5;
      }
    }

    v22 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>::GetPolicyFunctions(void)::value);
    v24 = v22[3] + 4 * result;
    *a3 = result + v22[2];
    *(a3 + 8) = v24;
    *(a3 + 16) = 1;
  }

  else
  {
    if (result[1] > 1)
    {
      v4 = result + 2;
      if (*(result + 4) != *a2)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>::resize_impl(result, 3uLL);
      }

      v5 = 0;
    }

    else
    {
      result[1] = 2;
      v4 = result + 2;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

unint64_t operations_research::sat::IntervalsRepository::CreateInterval(void **a1, __int128 *a2, __int128 *a3, __int128 *a4, int a5, int a6)
{
  v10 = a1[8];
  v11 = a1[9];
  v12 = a1 + 8;
  v50 = a5;
  v13 = 0xAAAAAAAAAAAAAAABLL * (v11 - v10);
  std::vector<operations_research::sat::OrthogonalPackingResult::Item>::push_back[abi:ne200100]((a1 + 8), a2);
  std::vector<operations_research::sat::OrthogonalPackingResult::Item>::push_back[abi:ne200100]((v12 + 3), a3);
  std::vector<operations_research::sat::OrthogonalPackingResult::Item>::push_back[abi:ne200100]((v12 + 6), a4);
  std::vector<int>::push_back[abi:ne200100]((v12 - 3), &v50);
  if (v50 != -1)
  {
    operator new();
  }

  if (a6)
  {
    v14 = *a1;
    v15 = (*a1)[3];
    if (v15 > 1)
    {
      v18 = 0;
      _X12 = v14[5];
      __asm { PRFM            #4, [X12] }

      v25 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
      v26 = vdup_n_s8(v25 & 0x7F);
      v27 = ((v25 >> 7) ^ (_X12 >> 12)) & v15;
      v28 = *(_X12 + v27);
      v29 = vceq_s8(v28, v26);
      if (!v29)
      {
        goto LABEL_13;
      }

LABEL_10:
      v30 = v14[6];
      while (1)
      {
        v31 = (v27 + (__clz(__rbit64(v29)) >> 3)) & v15;
        if (*(v30 + 16 * v31) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          break;
        }

        v29 &= ((v29 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v29)
        {
LABEL_13:
          while (!*&vceq_s8(v28, 0x8080808080808080))
          {
            v18 += 8;
            v27 = (v18 + v27) & v15;
            v28 = *(_X12 + v27);
            v29 = vceq_s8(v28, v26);
            if (v29)
            {
              goto LABEL_10;
            }
          }

          goto LABEL_19;
        }
      }

      v16 = (v30 + 16 * v31);
      if (_X12 + v31)
      {
        goto LABEL_17;
      }
    }

    else if (v14[4] >= 2uLL)
    {
      v17 = v14[5];
      v16 = v14 + 5;
      if (v17 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        if (&absl::lts_20240722::container_internal::kSooControl)
        {
LABEL_17:
          v32 = v16[1];
LABEL_20:
          v46 = v32;
          v47 = 0u;
          *__p = 0u;
          v49 = 0u;
          v33 = &(*v12)[3 * v13];
          v34 = *(v33 + 16);
          v42 = *v33;
          v43 = v34;
          operations_research::sat::LinearConstraintBuilder::AddTerm(&v46, &v42, 1);
          v35 = &v12[6][3 * v13];
          v36 = *(v35 + 16);
          v42 = *v35;
          v43 = v36;
          operations_research::sat::LinearConstraintBuilder::AddTerm(&v46, &v42, 1);
          v37 = &v12[3][3 * v13];
          v38 = *(v37 + 16);
          v42 = *v37;
          v43 = v38;
          operations_research::sat::LinearConstraintBuilder::AddTerm(&v46, &v42, -1);
          operations_research::sat::LinearConstraintBuilder::Build(&v46, &v42);
          operations_research::sat::LoadConditionalLinearConstraint(0, 0, &v42, *a1);
          v39 = v45;
          v45 = 0;
          if (v39)
          {
            MEMORY[0x23EED9440](v39, 0x1000C8000313F17);
          }

          v40 = v44;
          v44 = 0;
          if (v40)
          {
            MEMORY[0x23EED9440](v40, 0x1000C8052888210);
          }

          if (__p[1])
          {
            *&v49 = __p[1];
            operator delete(__p[1]);
          }

          return v13;
        }
      }
    }

LABEL_19:
    v32 = 0;
    goto LABEL_20;
  }

  return v13;
}

void sub_23CC20720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  operations_research::sat::LinearConstraint::~LinearConstraint(&a9);
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
    if (!v20)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v20)
  {
    goto LABEL_3;
  }

  operator delete(v20);
  _Unwind_Resume(a1);
}

void operations_research::sat::IntervalsRepository::CreateDisjunctivePrecedenceLiteral(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v7 = (a1 + 25);
  v6 = a1[25];
  if (v6 > 1)
  {
    v10 = 0;
    v11 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2))) + a3;
    v12 = 0x9DDFEA08EB382D69 * v11;
    v13 = (v11 * 0x9DDFEA08EB382D69) >> 64;
    _X10 = a1[27];
    __asm { PRFM            #4, [X10] }

    v19 = v13 ^ v12;
    v20 = vdup_n_s8(v19 & 0x7F);
    v21 = ((v19 >> 7) ^ (_X10 >> 12)) & v6;
    v22 = *(_X10 + v21);
    v23 = vceq_s8(v22, v20);
    if (!v23)
    {
      goto LABEL_16;
    }

LABEL_11:
    while (1)
    {
      v24 = (a1[28] + 12 * ((v21 + (__clz(__rbit64(v23)) >> 3)) & v6));
      v26 = *v24;
      v25 = v24[1];
      if (v26 == a2 && v25 == a3)
      {
        break;
      }

      v23 &= ((v23 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v23)
      {
LABEL_16:
        while (!*&vceq_s8(v22, 0x8080808080808080))
        {
          v10 += 8;
          v21 = (v10 + v21) & v6;
          v22 = *(_X10 + v21);
          v23 = vceq_s8(v22, v20);
          if (v23)
          {
            goto LABEL_11;
          }
        }

        goto LABEL_7;
      }
    }
  }

  else if (a1[26] < 2 || (*(a1 + 54) == a2 ? (_ZF = *(a1 + 55) == a3) : (_ZF = 0), !_ZF))
  {
LABEL_7:
    memset(&v111, 0, sizeof(v111));
    v9 = a1[5];
    if (*(v9 + a2) != -1)
    {
      operator new();
    }

    if (*(v9 + a3) != -1)
    {
      operator new();
    }

    v28 = a2 << 32;
    v29 = a1[8];
    v30 = 3 * a2;
    v31 = &v29[v30];
    v32 = v29[v30];
    v34 = v29[v30 + 1];
    v33 = v29[v30 + 2];
    v35 = a1[11];
    v36 = &v35[v30];
    v37 = 3 * a3;
    v38 = &v29[v37];
    v39 = &v35[v37];
    v40 = v35[v37];
    v41 = v35[v37 + 2];
    v42 = a1[4];
    v43 = v33;
    if (v32 != -1)
    {
      v43 = v33 - *(v42[5] + ((8 * v32) ^ 8)) * v34;
    }

    v44 = *v36;
    v45 = *v38;
    v47 = v36[1];
    v46 = v36[2];
    v49 = v38[1];
    v48 = v38[2];
    v50 = v41;
    v51 = v39[1];
    if (v40 != -1)
    {
      v50 = v41 + *(v42[5] + 8 * v40) * v51;
    }

    v52 = *(v36 + 1);
    v53 = *(v38 + 1);
    if (v43 >= v50)
    {
      v54 = v38[2];
      if (v45 != -1)
      {
        v54 = v48 - *(v42[5] + ((8 * v45) ^ 8)) * v49;
      }

      v55 = v46;
      if (v44 != -1)
      {
        v55 = v46 + *(v42[5] + 8 * v44) * v47;
      }

      v56 = *(v31 + 1);
      v57 = *(v39 + 1);
      if (v54 >= v55)
      {
        v104 = v53;
        v101 = v47;
        v102 = v45;
        *&v103 = v49;
        *(&v103 + 1) = v48;
        v94 = v57;
        v95 = *(v31 + 1);
        v96 = v51;
        v97 = v40;
        v98 = v41;
        v99 = v32;
        v100 = v34;
        v58 = v33;
        v59 = a1[2];
        v60 = *(v59 + 4);
        operations_research::sat::SatSolver::SetNumVariables(v59, (v60 + 1));
        v61 = v4;
        v62 = 2 * v60;
        v109 = (a3 << 32) | v61;
        LODWORD(v110) = 2 * v60;
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const,operations_research::sat::Literal>>>::find_or_prepare_insert<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>(v7, &v109, &v105);
        if (v106 == 1)
        {
          v63 = *(&v105 + 1);
          **(&v105 + 1) = v109;
          *(v63 + 8) = v110;
        }

        v64 = v62 | 1;
        v109 = v28 | a3;
        LODWORD(v110) = v62 | 1;
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const,operations_research::sat::Literal>>>::find_or_prepare_insert<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>(v7, &v109, &v105);
        if (v106 == 1)
        {
          v65 = *(&v105 + 1);
          **(&v105 + 1) = v109;
          *(v65 + 8) = v110;
        }

        *&v105 = __PAIR64__(v52, v44);
        *(&v105 + 1) = v101;
        *&v106 = v46;
        *(&v106 + 1) = __PAIR64__(v104, v102);
        v107 = v103;
        v108 = v62;
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>,std::equal_to<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>,std::allocator<std::pair<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression> const,operations_research::sat::Literal>>>::find_or_prepare_insert_non_soo<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>(a1 + 29, &v105, &v109);
        if (BYTE8(v110) == 1)
        {
          v66 = v110;
          v67 = v107;
          v68 = v105;
          *(v110 + 16) = v106;
          *(v66 + 32) = v67;
          *v66 = v68;
          *(v66 + 48) = v108;
        }

        *&v105 = __PAIR64__(v94, v97);
        *(&v105 + 1) = v96;
        *&v106 = v98;
        *(&v106 + 1) = __PAIR64__(v95, v99);
        *&v107 = v100;
        *(&v107 + 1) = v58;
        v108 = v62 | 1;
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>,std::equal_to<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>,std::allocator<std::pair<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression> const,operations_research::sat::Literal>>>::find_or_prepare_insert_non_soo<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>(a1 + 29, &v105, &v109);
        v70 = v52;
        v69 = v104;
        if (BYTE8(v110) == 1)
        {
          v71 = v110;
          v72 = v107;
          v73 = v105;
          *(v110 + 16) = v106;
          *(v71 + 32) = v72;
          *v71 = v73;
          *(v71 + 48) = v108;
        }

        end = v111.__end_;
        v93 = v58;
        if (v111.__end_ >= v111.__end_cap_.__value_)
        {
          begin = v111.__begin_;
          v77 = v111.__end_ - v111.__begin_;
          v78 = v111.__end_ - v111.__begin_;
          v79 = v78 + 1;
          if ((v78 + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v80 = v111.__end_cap_.__value_ - v111.__begin_;
          if ((v111.__end_cap_.__value_ - v111.__begin_) >> 1 > v79)
          {
            v79 = v80 >> 1;
          }

          if (v80 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v81 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v81 = v79;
          }

          if (v81)
          {
            if (!(v81 >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(4 * v78) = v62;
          v75 = (4 * v78 + 4);
          memcpy(0, begin, v77);
          v111.__begin_ = 0;
          v111.__end_ = v75;
          v111.__end_cap_.__value_ = 0;
          if (begin)
          {
            operator delete(begin);
          }

          v70 = v52;
          v69 = v104;
        }

        else
        {
          *v111.__end_ = v62;
          v75 = end + 1;
        }

        v111.__end_ = v75;
        *&v105 = __PAIR64__(v70, v44);
        *(&v105 + 1) = v101;
        *&v106 = v46;
        v109 = __PAIR64__(v69, v102);
        v110 = v103;
        operations_research::sat::AddConditionalAffinePrecedence(v111.__begin_, v75 - v111.__begin_, &v105, &v109, *a1);
        v82 = v111.__end_;
        v83 = v111.__end_ - 1;
        v111.__end_ = v83;
        if (v83 >= v111.__end_cap_.__value_)
        {
          v85 = v111.__begin_;
          v86 = v83 - v111.__begin_;
          v87 = v83 - v111.__begin_;
          v88 = v87 + 1;
          v84 = v93;
          if ((v87 + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v89 = v111.__end_cap_.__value_ - v111.__begin_;
          if ((v111.__end_cap_.__value_ - v111.__begin_) >> 1 > v88)
          {
            v88 = v89 >> 1;
          }

          if (v89 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v90 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v90 = v88;
          }

          if (v90)
          {
            if (!(v90 >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(4 * v87) = v64;
          v82 = (4 * v87 + 4);
          memcpy(0, v85, v86);
          v111.__begin_ = 0;
          v111.__end_ = v82;
          v111.__end_cap_.__value_ = 0;
          if (v85)
          {
            operator delete(v85);
          }
        }

        else
        {
          *v83 = v64;
          v84 = v93;
        }

        v111.__end_ = v82;
        *&v105 = __PAIR64__(v94, v97);
        *(&v105 + 1) = v96;
        *&v106 = v98;
        v109 = __PAIR64__(v95, v99);
        *&v110 = v100;
        *(&v110 + 1) = v84;
        operations_research::sat::AddConditionalAffinePrecedence(v111.__begin_, v82 - v111.__begin_, &v105, &v109, *a1);
        v91 = v111.__begin_;
        v92 = v111.__end_ - 1;
        v111.__end_ = v92;
        if (v111.__begin_ == v92)
        {
          goto LABEL_71;
        }

        do
        {
          operations_research::sat::BinaryImplicationGraph::AddBinaryClause(a1[3], *v91++, v62);
        }

        while (v91 != v92);
      }

      else
      {
        *&v105 = __PAIR64__(v57, v40);
        *(&v105 + 1) = v51;
        *&v106 = v41;
        v109 = __PAIR64__(v56, v32);
        *&v110 = v34;
        *(&v110 + 1) = v33;
        operations_research::sat::AddConditionalAffinePrecedence(v111.__begin_, v111.__end_ - v111.__begin_, &v105, &v109, *a1);
      }
    }

    else
    {
      LODWORD(v105) = *v36;
      DWORD1(v105) = v52;
      *(&v105 + 1) = v47;
      *&v106 = v46;
      v109 = __PAIR64__(v53, v45);
      *&v110 = v49;
      *(&v110 + 1) = v48;
      operations_research::sat::AddConditionalAffinePrecedence(v111.__begin_, v111.__end_ - v111.__begin_, &v105, &v109, *a1);
    }

    v91 = v111.__begin_;
LABEL_71:
    if (v91)
    {
      v111.__end_ = v91;
      operator delete(v91);
    }
  }
}

void sub_23CC21000(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::AddConditionalAffinePrecedence(_DWORD *a1, uint64_t a2, __int128 *a3, __int128 *a4, void *a5)
{
  v9 = a5[3];
  if (v9 > 1)
  {
    v13 = 0;
    _X11 = a5[5];
    __asm { PRFM            #4, [X11] }

    v20 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v21 = vdup_n_s8(v20 & 0x7F);
    v22 = ((v20 >> 7) ^ (_X11 >> 12)) & v9;
    v23 = *(_X11 + v22);
    v24 = vceq_s8(v23, v21);
    if (!v24)
    {
      goto LABEL_16;
    }

LABEL_13:
    v25 = a5[6];
    while (1)
    {
      v26 = (v22 + (__clz(__rbit64(v24)) >> 3)) & v9;
      if (*(v25 + 16 * v26) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        break;
      }

      v24 &= ((v24 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v24)
      {
LABEL_16:
        while (!*&vceq_s8(v23, 0x8080808080808080))
        {
          v13 += 8;
          v22 = (v13 + v22) & v9;
          v23 = *(_X11 + v22);
          v24 = vceq_s8(v23, v21);
          if (v24)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_3;
      }
    }

    v27 = (v25 + 16 * v26);
    v10 = (_X11 + v26);
    if (_X11 + v26)
    {
      goto LABEL_4;
    }
  }

  else if (a5[4] >= 2uLL)
  {
    v27 = a5 + 5;
    v10 = &absl::lts_20240722::container_internal::kSooControl;
    if (a5[5] != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
    {
      v10 = 0;
      v27 = 0;
    }

    if (v10)
    {
LABEL_4:
      v10 = v27[1];
    }
  }

  else
  {
LABEL_3:
    v10 = 0;
  }

  v32[0] = v10;
  v32[1] = 0x8000000000000002;
  v33 = 0u;
  *__p = 0u;
  v35 = 0;
  v28 = *a3;
  v29 = *(a3 + 2);
  operations_research::sat::LinearConstraintBuilder::AddTerm(v32, &v28, 1);
  v28 = *a4;
  v29 = *(a4 + 2);
  operations_research::sat::LinearConstraintBuilder::AddTerm(v32, &v28, -1);
  operations_research::sat::LinearConstraintBuilder::Build(v32, &v28);
  operations_research::sat::LoadConditionalLinearConstraint(a1, a2, &v28, a5);
  v11 = v31;
  v31 = 0;
  if (v11)
  {
    MEMORY[0x23EED9440](v11, 0x1000C8000313F17);
  }

  v12 = v30;
  v30 = 0;
  if (v12)
  {
    MEMORY[0x23EED9440](v12, 0x1000C8052888210);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_23CC21278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  operations_research::sat::LinearConstraint::~LinearConstraint(&a9);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::IntervalsRepository::CreatePrecedenceLiteral(uint64_t *a1, int a2, int a3)
{
  v4 = (a1[11] + 24 * a2);
  v5 = *v4;
  v6 = *(v4 + 1);
  v8 = v4[1];
  v7 = v4[2];
  v9 = (a1[8] + 24 * a3);
  v10 = *v9;
  v11 = *(v9 + 1);
  v13 = v9[1];
  v12 = v9[2];
  *&v31 = __PAIR64__(v6, v5);
  *(&v31 + 1) = v8;
  *&v32 = v7;
  *(&v32 + 1) = __PAIR64__(v11, v10);
  *&v33 = v13;
  *(&v33 + 1) = v12;
  if (absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>,std::equal_to<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>,std::allocator<std::pair<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression> const,operations_research::sat::Literal>>>::find<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>(a1 + 29, &v31))
  {
    return 0;
  }

  v14 = a1[4];
  v15 = v7;
  if (v5 != -1)
  {
    v15 = v7 - *(v14[5] + ((8 * v5) ^ 8)) * v8;
  }

  v16 = v12;
  if (v10 != -1)
  {
    v16 = v12 + *(v14[5] + 8 * v10) * v13;
  }

  if (v15 <= v16)
  {
    return 0;
  }

  v17 = v7;
  if (v5 != -1)
  {
    v17 = v7 + *(v14[5] + 8 * v5) * v8;
  }

  v18 = v12;
  if (v10 != -1)
  {
    v18 = v12 - *(v14[5] + ((8 * v10) ^ 8)) * v13;
  }

  if (v17 > v18)
  {
    return 0;
  }

  v21 = a1[2];
  v22 = *(v21 + 4);
  operations_research::sat::SatSolver::SetNumVariables(v21, (v22 + 1));
  v23 = 2 * v22;
  *&v31 = __PAIR64__(v6, v5);
  *(&v31 + 1) = v8;
  *&v32 = v7;
  *(&v32 + 1) = __PAIR64__(v11, v10);
  *&v33 = v13;
  *(&v33 + 1) = v12;
  v34 = v23;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>,std::equal_to<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>,std::allocator<std::pair<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression> const,operations_research::sat::Literal>>>::find_or_prepare_insert_non_soo<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>(a1 + 29, &v31, &v29);
  if (v30 == 1)
  {
    v24 = *(&v29 + 1);
    v25 = v33;
    v26 = v31;
    *(*(&v29 + 1) + 16) = v32;
    *(v24 + 32) = v25;
    *v24 = v26;
    *(v24 + 48) = v34;
  }

  v27 = v12 + 1;
  v28 = v23;
  *&v29 = __PAIR64__(v11, v10);
  *&v31 = __PAIR64__(v6, v5);
  *(&v31 + 1) = v8;
  *&v32 = v7;
  *(&v29 + 1) = v13;
  v30 = v12;
  v19 = 1;
  operations_research::sat::AddConditionalAffinePrecedence(&v28, 1, &v31, &v29, *a1);
  v28 = v23 | 1;
  *&v29 = __PAIR64__(v6, v5);
  *&v31 = __PAIR64__(v11, v10);
  *(&v31 + 1) = v13;
  *&v32 = v27;
  *(&v29 + 1) = v8;
  v30 = v7;
  operations_research::sat::AddConditionalAffinePrecedence(&v28, 1, &v31, &v29, *a1);
  return v19;
}

uint64_t operations_research::sat::IntervalsRepository::GetPrecedenceLiteral(void *a1, int a2, int a3)
{
  v3 = a1[11] + 24 * a2;
  v13 = *v3;
  v14 = *(v3 + 16);
  v4 = a1[8] + 24 * a3;
  v11 = *v4;
  v12 = *(v4 + 16);
  v7 = v13;
  v8 = v14;
  v9 = v11;
  v10 = v12;
  if (absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>,std::equal_to<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>,std::allocator<std::pair<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression> const,operations_research::sat::Literal>>>::find<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>(a1 + 29, &v7))
  {
    return *(v5 + 48);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t operations_research::sat::IntervalsRepository::GetOrCreateHelper(void *a1, unsigned int **a2, int a3)
{
  _X8 = a1[19];
  __asm { PRFM            #4, [X8] }

  v10 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
  v11 = *a2;
  v12 = a2[1];
  v13 = v12 - *a2;
  if (v12 > *a2)
  {
    v14 = *a2;
    do
    {
      v15 = *v14++;
      v10 = ((((v10 + v15) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v10 + v15)));
    }

    while (v14 < v12);
  }

  v16 = 0;
  v17 = (((v10 + (v13 >> 2)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v10 + (v13 >> 2)));
  v18 = a1[17];
  v19 = vdup_n_s8(v17 & 0x7F);
  v20 = ((v17 >> 7) ^ (_X8 >> 12)) & v18;
  v21 = *(_X8 + v20);
  v22 = vceq_s8(v21, v19);
  if (!v22)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v23 = a1[20] + 32 * ((v20 + (__clz(__rbit64(v22)) >> 3)) & v18);
    v24 = *v23;
    v25 = *(v23 + 8);
    if ((v25 - *v23) == v13)
    {
      break;
    }

LABEL_11:
    for (v22 &= ((v22 & 0x8080808080808080) - 1) & 0x8080808080808080; !v22; v22 = vceq_s8(v21, v19))
    {
LABEL_12:
      if (vceq_s8(v21, 0x8080808080808080))
      {
        operator new();
      }

      v16 += 8;
      v20 = (v16 + v20) & v18;
      v21 = *(_X8 + v20);
    }
  }

  if (v24 != v25)
  {
    for (i = v11; *v24 == *i; ++i)
    {
      if (++v24 == v25)
      {
        return *(v23 + 24);
      }
    }

    goto LABEL_11;
  }

  return *(v23 + 24);
}

void sub_23CC21768(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::IntervalsRepository::GetOrCreateDemandHelper(void *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (24 * a4)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((24 * a4) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = a2;
  __p = 0;
  v9 = 0;
  v10 = 0;
  if (!absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>,operations_research::sat::SchedulingDemandHelper *>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>,std::equal_to<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>,std::allocator<std::pair<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>> const,operations_research::sat::SchedulingDemandHelper *>>>::find<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>(a1 + 21, &v7))
  {
    operator new();
  }

  v5 = *(v4 + 32);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_23CC21A2C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  MEMORY[0x23EED9460](v11, 0x1070C406F586063, a3, a4, a5, a6, a7, a8);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>,operations_research::sat::SchedulingDemandHelper *>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>,std::equal_to<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>,std::allocator<std::pair<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>> const,operations_research::sat::SchedulingDemandHelper *>>>::find<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>(uint64_t *a1, uint64_t *a2)
{
  _X8 = a1[2];
  __asm { PRFM            #4, [X8] }

  v7 = *a2;
  v8 = a2[1];
  v9 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2))) + *a2;
  v10 = ((v9 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v9);
  v11 = a2[2];
  v12 = v11 - v8;
  if (v11 > v8)
  {
    v13 = (v8 + 8);
    do
    {
      v14 = v13 - 1;
      v15 = *(v13 - 2);
      if (v15 != -1)
      {
        v16 = *v13 + ((((v10 + v15) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v10 + v15)));
        v10 = ((v16 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v16);
      }

      v10 = (((v13[1] + v10) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v13[1] + v10));
      v13 += 3;
    }

    while ((v14 + 3) < v11);
  }

  v17 = 0;
  v18 = (((v10 - 0x5555555555555555 * (v12 >> 3)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v10 - 0x5555555555555555 * (v12 >> 3)));
  v19 = *a1;
  v20 = vdup_n_s8(v18 & 0x7F);
  v21 = ((v18 >> 7) ^ (_X8 >> 12)) & *a1;
  v22 = *(_X8 + v21);
  for (i = vceq_s8(v22, v20); i; i &= ((i & 0x8080808080808080) - 1) & 0x8080808080808080)
  {
LABEL_7:
    v24 = (v21 + (__clz(__rbit64(i)) >> 3)) & v19;
    v25 = (a1[3] + 40 * v24);
    if (*v25 == v7)
    {
      v27 = v25[1];
      v26 = v25[2];
      if (v26 - v27 == v12)
      {
        if (v27 == v26)
        {
          return _X8 + v24;
        }

        for (j = v8; ; j += 24)
        {
          _ZF = *v27 == *j && *(v27 + 8) == *(j + 8);
          if (!_ZF || *(v27 + 16) != *(j + 16))
          {
            break;
          }

          v27 += 24;
          if (v27 == v26)
          {
            return _X8 + v24;
          }
        }
      }
    }
  }

  while (!*&vceq_s8(v22, 0x8080808080808080))
  {
    v17 += 8;
    v21 = (v17 + v21) & v19;
    v22 = *(_X8 + v21);
    i = vceq_s8(v22, v20);
    if (i)
    {
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>,operations_research::sat::SchedulingDemandHelper *>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>,std::equal_to<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>,std::allocator<std::pair<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>> const,operations_research::sat::SchedulingDemandHelper *>>>::operator[]<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>,absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>,operations_research::sat::SchedulingDemandHelper *>>(unint64_t *a1, uint64_t *a2)
{
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>,operations_research::sat::SchedulingDemandHelper *>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>,std::equal_to<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>,std::allocator<std::pair<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>> const,operations_research::sat::SchedulingDemandHelper *>>>::find_or_prepare_insert_non_soo<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>(a1, a2, &v8);
  if (v10 == 1)
  {
    v3 = v9;
    v4 = *a2;
    v9[1] = 0;
    *v3 = v4;
    v3[2] = 0;
    v3[3] = 0;
    v6 = a2[1];
    v5 = a2[2];
    if (v5 != v6)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3) < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v3[4] = 0;
  }

  return v9 + 4;
}

void sub_23CC21E5C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

double operations_research::sat::SchedulingDemandHelper::InitDecomposedEnergies(operations_research::sat::SchedulingDemandHelper *this)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((*(*(this + 7) + 88) - *(*(this + 7) + 80)) >> 3);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 5) - *(this + 4)) >> 3) == v1 && v1 >= 1)
  {
    v4 = 0;
    v5 = v1 & 0x7FFFFFFF;
    do
    {
      v7 = (*(*(this + 7) + 128) + v4);
      v8 = *(v7 + 2);
      v17 = *v7;
      v18 = v8;
      v9 = (*(this + 4) + v4);
      v10 = *(v9 + 2);
      v15 = *v9;
      v16 = v10;
      operations_research::sat::ProductDecomposer::TryToDecompose(&v13, *(this + 1), &v17, &v15);
      v11 = *(this + 17) + v4;
      v12 = *v11;
      if (*v11)
      {
        *(v11 + 8) = v12;
        operator delete(v12);
        *v11 = 0;
        *(v11 + 8) = 0;
        *(v11 + 16) = 0;
      }

      result = *&v13;
      *v11 = v13;
      *(v11 + 16) = v14;
      v4 += 24;
      --v5;
    }

    while (v5);
  }

  return result;
}

void operations_research::sat::SchedulingConstraintHelper::SchedulingConstraintHelper(uint64_t a1, int **a2, void *a3)
{
  *a1 = &unk_284F43530;
  *(a1 + 8) = &unk_284F43568;
  *(a1 + 16) = a3;
  *(a1 + 24) = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a3);
  *(a1 + 32) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a3);
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::PrecedenceRelations>(a3);
  *(a1 + 56) = 0;
  *(a1 + 40) = v6;
  *(a1 + 48) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v7 = a2[1];
  if (v7 != *a2)
  {
    if (((v7 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 80) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 228) = (a2[1] - *a2) >> 2;
  operator new[]();
}

void sub_23CC2252C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = v11[34];
  v11[34] = 0;
  if (v17)
  {
    MEMORY[0x23EED9440](v17, 0x1000C8000313F17, a3, a4, a5, a6, a7, a8);
  }

  v18 = v11[33];
  v11[33] = 0;
  if (v18)
  {
    MEMORY[0x23EED9440](v18, 0x1000C8000313F17);
  }

  v19 = v11[32];
  v11[32] = 0;
  if (v19)
  {
    MEMORY[0x23EED9440](v19, 0x1000C8000313F17);
  }

  v20 = v11[31];
  v11[31] = 0;
  if (v20)
  {
    MEMORY[0x23EED9440](v20, 0x1000C8000313F17);
  }

  v21 = v11[30];
  v11[30] = 0;
  if (v21)
  {
    MEMORY[0x23EED9440](v21, 0x1000C8000313F17);
  }

  v22 = v11[29];
  v11[29] = 0;
  if (v22)
  {
    MEMORY[0x23EED9440](v22, 0x1000C8000313F17);
  }

  v23 = *(v12 + 120);
  if (v23)
  {
    v11[26] = v23;
    operator delete(v23);
    v24 = *v14;
    if (!*v14)
    {
LABEL_15:
      v25 = *(v12 + 72);
      if (!v25)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v24 = *v14;
    if (!*v14)
    {
      goto LABEL_15;
    }
  }

  v11[23] = v24;
  operator delete(v24);
  v25 = *(v12 + 72);
  if (!v25)
  {
LABEL_16:
    v26 = *v13;
    if (!*v13)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11[20] = v25;
  operator delete(v25);
  v26 = *v13;
  if (!*v13)
  {
LABEL_17:
    v27 = *(v12 + 24);
    if (!v27)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11[17] = v26;
  operator delete(v26);
  v27 = *(v12 + 24);
  if (!v27)
  {
LABEL_18:
    v28 = *v12;
    if (!*v12)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11[14] = v27;
  operator delete(v27);
  v28 = *v12;
  if (!*v12)
  {
LABEL_19:
    v29 = *v15;
    if (!*v15)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

LABEL_26:
  v11[11] = v28;
  operator delete(v28);
  v29 = *v15;
  if (!*v15)
  {
LABEL_20:
    _Unwind_Resume(exception_object);
  }

LABEL_27:
  v11[8] = v29;
  operator delete(v29);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::SchedulingConstraintHelper::RegisterWith(operations_research::sat::SchedulingConstraintHelper *this, operations_research::sat::GenericLiteralWatcher *a2)
{
  v4 = operations_research::sat::GenericLiteralWatcher::Register(a2, this);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 11) - *(this + 10)) >> 3);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = v5 & 0x7FFFFFFF;
    do
    {
      operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(a2, *(*(this + 16) + v6), v4, v7);
      operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(a2, *(*(this + 10) + v6), v4, v7);
      operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(a2, *(*(this + 13) + v6), v4, v7++);
      v6 += 24;
    }

    while (v8 != v7);
  }

  operations_research::sat::GenericLiteralWatcher::SetPropagatorPriority(a2, v4, 0);
  v9 = *(this + 4);
  v10 = this + 8;
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v9 + 768, &v10);
}

void operations_research::sat::SchedulingConstraintHelper::InitSortedVectors(operations_research::sat::SchedulingConstraintHelper *this)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 11) - *(this + 10)) >> 3);
  *(this + 466) = 1;
  std::vector<BOOL>::resize(this + 472, v2, 1);
  v3 = *(this + 57);
  if (v3 < v2)
  {
    operations_research::sat::SchedulingConstraintHelper::InitSortedVectors(v3, v2, &v23);
  }

  v4 = *(this + 36);
  v5 = (*(this + 37) - v4) >> 4;
  if (v2 <= v5)
  {
    if (v2 < v5)
    {
      *(this + 37) = v4 + 16 * v2;
    }
  }

  else
  {
    std::vector<operations_research::sat::CapacityProfile::QueueElement>::__append(this + 288, v2 - v5);
  }

  v6 = *(this + 39);
  v7 = (*(this + 40) - v6) >> 4;
  if (v2 <= v7)
  {
    if (v2 < v7)
    {
      *(this + 40) = v6 + 16 * v2;
    }
  }

  else
  {
    std::vector<operations_research::sat::CapacityProfile::QueueElement>::__append(this + 312, v2 - v7);
  }

  v8 = *(this + 42);
  v9 = (*(this + 43) - v8) >> 4;
  if (v2 <= v9)
  {
    if (v2 < v9)
    {
      *(this + 43) = v8 + 16 * v2;
    }
  }

  else
  {
    std::vector<operations_research::sat::CapacityProfile::QueueElement>::__append(this + 336, v2 - v9);
  }

  v10 = *(this + 45);
  v11 = (*(this + 46) - v10) >> 4;
  if (v2 <= v11)
  {
    if (v2 < v11)
    {
      *(this + 46) = v10 + 16 * v2;
    }
  }

  else
  {
    std::vector<operations_research::sat::CapacityProfile::QueueElement>::__append(this + 360, v2 - v11);
  }

  v12 = *(this + 52);
  v13 = (*(this + 53) - v12) >> 4;
  if (v2 <= v13)
  {
    if (v2 < v13)
    {
      *(this + 53) = v12 + 16 * v2;
    }
  }

  else
  {
    std::vector<operations_research::sat::CapacityProfile::QueueElement>::__append(this + 416, v2 - v13);
  }

  v14 = *(this + 55);
  v15 = (*(this + 56) - v14) >> 4;
  if (v2 <= v15)
  {
    if (v2 < v15)
    {
      *(this + 56) = v14 + 16 * v2;
    }
  }

  else
  {
    std::vector<operations_research::sat::CapacityProfile::QueueElement>::__append(this + 440, v2 - v15);
  }

  if (v2 >= 1)
  {
    v16 = 0;
    v17 = *(this + 36);
    v18 = *(this + 39);
    v19 = *(this + 42);
    v20 = *(this + 45);
    v21 = *(this + 52);
    v22 = *(this + 55);
    do
    {
      *v17 = v16;
      v17 += 4;
      *v18 = v16;
      v18 += 4;
      *v19 = v16;
      v19 += 4;
      *v20 = v16;
      v20 += 4;
      *v21 = v16;
      v21 += 4;
      *v22 = v16;
      v22 += 4;
      ++v16;
    }

    while ((v2 & 0x7FFFFFFF) != v16);
  }

  *(this + 384) = 1;
  *(this + 232) = 257;
}

uint64_t operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(operations_research::sat::SchedulingConstraintHelper *this, BOOL a2)
{
  operations_research::sat::SchedulingConstraintHelper::SetTimeDirection(this, a2);
  v3 = *(this + 60);
  if ((*(this + 466) & 1) == 0)
  {
    if (v3)
    {
      v5 = 0;
      v6 = 0;
      while (1)
      {
        if ((*(*(this + 59) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5))
        {
          result = operations_research::sat::SchedulingConstraintHelper::UpdateCachedValues(this, v6);
          if (!result)
          {
            return result;
          }

          v3 = *(this + 60);
        }

        v5 = ++v6;
        if (v3 <= v6)
        {
          goto LABEL_13;
        }
      }
    }

    goto LABEL_13;
  }

  if (!v3)
  {
LABEL_13:
    *(this + 466) = 0;
    return 1;
  }

  v4 = 0;
  while ((operations_research::sat::SchedulingConstraintHelper::UpdateCachedValues(this, v4) & 1) != 0)
  {
    if (*(this + 60) <= ++v4)
    {
      goto LABEL_13;
    }
  }

  return 0;
}

void operations_research::sat::SchedulingConstraintHelper::SchedulingConstraintHelper(operations_research::sat::SchedulingConstraintHelper *this, int a2, operations_research::sat::Model *a3)
{
  *this = &unk_284F43530;
  *(this + 1) = &unk_284F43568;
  *(this + 2) = a3;
  *(this + 3) = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a3);
  *(this + 4) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a3);
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::PrecedenceRelations>(a3);
  *(this + 56) = 0u;
  *(this + 5) = v6;
  *(this + 48) = 1;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 212) = 0u;
  *(this + 57) = a2;
  operator new[]();
}

void sub_23CC22F58(_Unwind_Exception *exception_object)
{
  v6 = v1[72];
  if (v6)
  {
    operator delete(v6);
    v7 = v1[65];
    if (!v7)
    {
LABEL_3:
      v8 = v1[62];
      if (!v8)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v7 = v1[65];
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  v1[66] = v7;
  operator delete(v7);
  v8 = v1[62];
  if (!v8)
  {
LABEL_4:
    v9 = *v3;
    if (!*v3)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  v1[63] = v8;
  operator delete(v8);
  v9 = *v3;
  if (!*v3)
  {
LABEL_5:
    v10 = v1[55];
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(v9);
  v10 = v1[55];
  if (!v10)
  {
LABEL_6:
    v11 = v1[52];
    if (!v11)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  v1[56] = v10;
  operator delete(v10);
  v11 = v1[52];
  if (!v11)
  {
LABEL_7:
    v12 = *v2;
    if (!*v2)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  v1[53] = v11;
  operator delete(v11);
  v12 = *v2;
  if (!*v2)
  {
LABEL_8:
    v13 = v1[45];
    if (!v13)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  v1[50] = v12;
  operator delete(v12);
  v13 = v1[45];
  if (!v13)
  {
LABEL_9:
    v14 = v1[42];
    if (!v14)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  v1[46] = v13;
  operator delete(v13);
  v14 = v1[42];
  if (!v14)
  {
LABEL_10:
    v15 = v1[39];
    if (!v15)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  v1[43] = v14;
  operator delete(v14);
  v15 = v1[39];
  if (!v15)
  {
LABEL_11:
    v16 = v1[36];
    if (!v16)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  v1[40] = v15;
  operator delete(v15);
  v16 = v1[36];
  if (!v16)
  {
LABEL_12:
    v17 = v1[35];
    v1[35] = 0;
    if (!v17)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  v1[37] = v16;
  operator delete(v16);
  v17 = v1[35];
  v1[35] = 0;
  if (!v17)
  {
LABEL_13:
    v18 = v1[34];
    v1[34] = 0;
    if (!v18)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  MEMORY[0x23EED9440](v17, 0x1000C8000313F17);
  v18 = v1[34];
  v1[34] = 0;
  if (!v18)
  {
LABEL_14:
    v19 = v1[33];
    v1[33] = 0;
    if (!v19)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  MEMORY[0x23EED9440](v18, 0x1000C8000313F17);
  v19 = v1[33];
  v1[33] = 0;
  if (!v19)
  {
LABEL_15:
    v20 = v1[32];
    v1[32] = 0;
    if (!v20)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  MEMORY[0x23EED9440](v19, 0x1000C8000313F17);
  v20 = v1[32];
  v1[32] = 0;
  if (!v20)
  {
LABEL_16:
    v21 = v1[31];
    v1[31] = 0;
    if (!v21)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  MEMORY[0x23EED9440](v20, 0x1000C8000313F17);
  v21 = v1[31];
  v1[31] = 0;
  if (!v21)
  {
LABEL_17:
    v22 = v1[30];
    v1[30] = 0;
    if (!v22)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  MEMORY[0x23EED9440](v21, 0x1000C8000313F17);
  v22 = v1[30];
  v1[30] = 0;
  if (!v22)
  {
LABEL_18:
    v23 = v1[29];
    v1[29] = 0;
    if (!v23)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  MEMORY[0x23EED9440](v22, 0x1000C8000313F17);
  v23 = v1[29];
  v1[29] = 0;
  if (!v23)
  {
LABEL_19:
    v24 = v1[25];
    if (!v24)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  MEMORY[0x23EED9440](v23, 0x1000C8000313F17);
  v24 = v1[25];
  if (!v24)
  {
LABEL_20:
    v25 = v1[22];
    if (!v25)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  v1[26] = v24;
  operator delete(v24);
  v25 = v1[22];
  if (!v25)
  {
LABEL_21:
    v26 = v1[19];
    if (!v26)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  v1[23] = v25;
  operator delete(v25);
  v26 = v1[19];
  if (!v26)
  {
LABEL_22:
    v27 = v1[16];
    if (!v27)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  v1[20] = v26;
  operator delete(v26);
  v27 = v1[16];
  if (!v27)
  {
LABEL_23:
    v28 = v1[13];
    if (!v28)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  v1[17] = v27;
  operator delete(v27);
  v28 = v1[13];
  if (!v28)
  {
LABEL_24:
    v29 = *(v4 + 24);
    if (!v29)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  v1[14] = v28;
  operator delete(v28);
  v29 = *(v4 + 24);
  if (!v29)
  {
LABEL_25:
    v30 = *v4;
    if (!*v4)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  v1[11] = v29;
  operator delete(v29);
  v30 = *v4;
  if (!*v4)
  {
LABEL_26:
    _Unwind_Resume(exception_object);
  }

LABEL_51:
  v1[8] = v30;
  operator delete(v30);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::SchedulingConstraintHelper::IncrementalPropagate(uint64_t a1, int **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = *(a1 + 472);
    do
    {
      v5 = *v2++;
      *(v4 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v5;
    }

    while (v2 != v3);
  }

  return 1;
}

uint64_t operations_research::sat::SchedulingConstraintHelper::SetLevel(uint64_t this, int a2)
{
  if (*(this + 224) > a2)
  {
    *(this + 466) = 1;
  }

  *(this + 224) = a2;
  return this;
}

uint64_t non-virtual thunk tooperations_research::sat::SchedulingConstraintHelper::SetLevel(uint64_t this, int a2)
{
  if (*(this + 216) > a2)
  {
    *(this + 458) = 1;
  }

  *(this + 216) = a2;
  return this;
}

uint64_t operations_research::sat::SchedulingConstraintHelper::UpdateCachedValues(operations_research::sat::SchedulingConstraintHelper *this, int a2)
{
  v4 = a2;
  *(*(this + 59) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << a2);
  v5 = *(*(this + 19) + 4 * a2);
  if (v5 != -1 && ((*(*(*(this + 3) + 24) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v5 & 0x3F ^ 1)) & 1) != 0)
  {
    return 1;
  }

  v7 = *(this + 4);
  v8 = *(this + 10) + 24 * a2;
  v9 = *v8;
  v10 = *(v8 + 16);
  if (*v8 == -1)
  {
    v14 = *(v8 + 16);
  }

  else
  {
    v11 = *(v8 + 8);
    v12 = *(v7 + 40);
    v13 = 8 * v9;
    v14 = v10 - *(v12 + (v13 ^ 8)) * v11;
    v10 += *(v12 + v13) * v11;
  }

  v15 = *(this + 13) + 24 * a2;
  v16 = *v15;
  v17 = *(v15 + 16);
  if (*v15 == -1)
  {
    v21 = *(v15 + 16);
  }

  else
  {
    v18 = *(v15 + 8);
    v19 = *(v7 + 40);
    v20 = 8 * v16;
    v21 = v17 - *(v19 + (v20 ^ 8)) * v18;
    v17 += *(v19 + v20) * v18;
  }

  v22 = *(this + 16) + 24 * a2;
  v23 = *v22;
  v24 = *(v22 + 16);
  if (*v22 == -1)
  {
    v28 = v24 & ~(v24 >> 63);
    if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_19:
    operations_research::sat::SchedulingConstraintHelper::ClearReason(this);
    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(this, a2);
    operations_research::sat::SchedulingConstraintHelper::AddGenericReason(this, (*(this + 16) + 24 * v4), v24, (*(this + 13) + 24 * v4), (*(this + 22) + 24 * v4));

    return operations_research::sat::SchedulingConstraintHelper::PushTaskAbsence(this, a2);
  }

  v25 = *(v22 + 8);
  v26 = *(v7 + 40);
  v27 = 8 * v23;
  v28 = (v24 + *(v26 + v27) * v25) & ~((v24 + *(v26 + v27) * v25) >> 63);
  v24 -= *(v26 + (v27 ^ 8)) * v25;
  if (v24 < 0)
  {
    goto LABEL_19;
  }

LABEL_12:
  if (v10 - v21 + v28 >= 1)
  {
    operations_research::sat::SchedulingConstraintHelper::ClearReason(this);
    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(this, a2);
    v29 = 24 * v4;
    operations_research::sat::SchedulingConstraintHelper::AddGenericReason(this, (*(this + 22) + 24 * v4), -v10, (*(this + 25) + 24 * v4), (*(this + 16) + 24 * v4));
    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(this, a2);
    if (v28)
    {
      v30 = *(this + 16) + 24 * v4;
      if (*v30 == -1)
      {
        v33 = 0;
        v32 = -1;
      }

      else
      {
        v31 = *(v30 + 8);
        v32 = *v30 ^ (v31 >> 63) ^ 1;
        if (v31 >= 0)
        {
          v33 = *(v30 + 8);
        }

        else
        {
          v33 = -v31;
        }
      }

      v43 = -*(v30 + 16);
      v61 = v32;
      v62 = v33;
      v63 = v43;
      operations_research::sat::SchedulingConstraintHelper::AddGenericReason(this, &v61, -v28, (*(this + 25) + v29), (*(this + 10) + v29));
    }

    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(this, a2);
    v44 = (*(this + 13) + v29);
    v45 = (*(this + 10) + v29);
    v46 = (*(this + 16) + v29);
LABEL_43:
    operations_research::sat::SchedulingConstraintHelper::AddGenericReason(this, v44, v21, v45, v46);
    return operations_research::sat::SchedulingConstraintHelper::PushTaskAbsence(this, a2);
  }

  if (v14 - v17 + v24 < 0)
  {
    v21 = -v17;
    operations_research::sat::SchedulingConstraintHelper::ClearReason(this);
    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(this, a2);
    v47 = *(this + 10);
    v48 = *(this + 13);
    v49 = *(this + 16) + 24 * v4;
    if (*v49 == -1)
    {
      v52 = 0;
      v51 = -1;
    }

    else
    {
      v50 = *(v49 + 8);
      v51 = *v49 ^ (v50 >> 63) ^ 1;
      if (v50 >= 0)
      {
        v52 = *(v49 + 8);
      }

      else
      {
        v52 = -v50;
      }
    }

    v53 = 24 * v4;
    v54 = *(v49 + 16);
    v61 = v51;
    v62 = v52;
    v63 = -v54;
    operations_research::sat::SchedulingConstraintHelper::AddGenericReason(this, (v47 + v53), v14, (v48 + v53), &v61);
    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(this, a2);
    operations_research::sat::SchedulingConstraintHelper::AddGenericReason(this, (*(this + 16) + v53), v24, (*(this + 13) + v53), (*(this + 22) + v53));
    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(this, a2);
    v55 = *(this + 25);
    v56 = *(this + 22);
    v57 = *(this + 16) + v53;
    v58 = *v57;
    if (*v57 == -1)
    {
      v59 = 0;
    }

    else
    {
      v59 = *(v57 + 8);
      v58 ^= (v59 >> 63) ^ 1;
      if (v59 < 0)
      {
        v59 = -v59;
      }
    }

    v60 = -*(v57 + 16);
    v61 = v58;
    v62 = v59;
    v63 = v60;
    v44 = (v55 + v53);
    v45 = (v56 + v53);
    v46 = &v61;
    goto LABEL_43;
  }

  if (v10 <= v17 - v24)
  {
    v34 = v17 - v24;
  }

  else
  {
    v34 = v10;
  }

  v35 = v21 - v28;
  if (v21 - v28 >= v14)
  {
    v35 = v14;
  }

  v36 = v17 - v35;
  if (v28 > v17 - v35)
  {
    v36 = v28;
  }

  if (v17 <= v36 + v34)
  {
    v17 = v36 + v34;
  }

  v37 = v35 + v24;
  if (v35 + v24 >= v21)
  {
    v37 = v21;
  }

  v38 = *(this + 31);
  if (v17 != *(v38 + 8 * a2))
  {
    *(this + 384) = 1;
  }

  *(*(this + 30) + 8 * a2) = v34;
  *(v38 + 8 * a2) = v17;
  *(*(this + 32) + 8 * a2) = -v35;
  *(*(this + 33) + 8 * a2) = -v37;
  *(*(this + 29) + 8 * a2) = v36;
  v39 = v17 - v36;
  v40 = *(this + 34);
  if (v39 != *(v40 + 8 * a2))
  {
    *(this + 384) = 1;
    *(this + 464) = 1;
    *(v40 + 8 * a2) = v39;
  }

  v41 = v35 + v36;
  v42 = *(this + 35);
  result = 1;
  if (*(v42 + 8 * a2) + v41)
  {
    *(this + 465) = 1;
    *(v42 + 8 * a2) = -v41;
  }

  return result;
}

uint64_t operations_research::sat::SchedulingConstraintHelper::PushTaskAbsence(operations_research::sat::SchedulingConstraintHelper *this, int a2)
{
  v4 = *(*(this + 19) + 4 * a2);
  if (v4 == -1)
  {

    return operations_research::sat::SchedulingConstraintHelper::ReportConflict(this);
  }

  else
  {
    v12 = v2;
    v13 = v3;
    if ((*(*(*(this + 3) + 24) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v4 & 0x3F ^ 1)))
    {
      return 1;
    }

    else
    {
      operations_research::sat::SchedulingConstraintHelper::AddOtherReason(this, a2);
      v8 = this;
      v9 = *(*(this + 19) + 4 * a2);
      if (v9 == -1 || ((*(*(*(this + 3) + 24) + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9) & 1) != 0)
      {
        v11 = v9 ^ 1;
        std::vector<int>::push_back[abi:ne200100](this + 496, &v11);
        return operations_research::sat::SchedulingConstraintHelper::ReportConflict(this);
      }

      else
      {
        v10 = *(this + 68);
        if (v10)
        {
          std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(this + 62, *(this + 63), v10[62], v10[63], (v10[63] - v10[62]) >> 2);
          std::vector<operations_research::sat::IntegerLiteral>::__insert_with_size[abi:ne200100]<std::__wrap_iter<operations_research::sat::IntegerLiteral const*>,std::__wrap_iter<operations_research::sat::IntegerLiteral const*>>(this + 65, *(this + 66), v10[65], v10[66], (v10[66] - v10[65]) >> 4);
          v8 = this;
          v9 = *(*(this + 19) + 4 * a2);
        }

        operations_research::sat::IntegerTrail::EnqueueLiteral(*(v8 + 4), v9 ^ 1, *(v8 + 62), (*(v8 + 63) - *(v8 + 62)) >> 2, *(v8 + 65), (*(v8 + 66) - *(v8 + 65)) >> 4);
        return 1;
      }
    }
  }
}

uint64_t operations_research::sat::SchedulingConstraintHelper::ResetFromSubset(std::vector<int> *this, uint64_t a2, uint64_t a3, int a4)
{
  p_end = &this[2].__end_;
  end = this[2].__end_;
  LOBYTE(this[2].__begin_) = *(a2 + 48);
  v10 = a4;
  v11 = this[2].__end_cap_.__value_ - end;
  v48 = a4;
  if (a4 <= v11)
  {
    if (a4 < v11)
    {
      this[2].__end_cap_.__value_ = &end[a4];
    }
  }

  else
  {
    std::vector<int>::__append((this + 56), a4 - v11);
    v10 = v48;
  }

  v12 = this[3].__end_;
  v13 = 0xAAAAAAAAAAAAAAABLL * ((this[3].__end_cap_.__value_ - v12) >> 3);
  if (v10 <= v13)
  {
    if (v10 < v13)
    {
      this[3].__end_cap_.__value_ = &v12[6 * v10];
    }
  }

  else
  {
    std::vector<operations_research::sat::AffineExpression>::__append(&this[3].__end_, v10 - v13);
    v10 = v48;
  }

  v14 = this[4].__end_;
  v15 = 0xAAAAAAAAAAAAAAABLL * ((this[4].__end_cap_.__value_ - v14) >> 3);
  if (v10 <= v15)
  {
    if (v10 < v15)
    {
      this[4].__end_cap_.__value_ = &v14[6 * v10];
    }
  }

  else
  {
    std::vector<operations_research::sat::AffineExpression>::__append(&this[4].__end_, v10 - v15);
    v10 = v48;
  }

  v16 = this[8].__end_;
  v17 = 0xAAAAAAAAAAAAAAABLL * ((this[8].__end_cap_.__value_ - v16) >> 3);
  if (v10 <= v17)
  {
    if (v10 < v17)
    {
      this[8].__end_cap_.__value_ = &v16[6 * v10];
    }
  }

  else
  {
    std::vector<operations_research::sat::AffineExpression>::__append(&this[8].__end_, v10 - v17);
    v10 = v48;
  }

  v18 = this[7].__end_;
  v19 = 0xAAAAAAAAAAAAAAABLL * ((this[7].__end_cap_.__value_ - v18) >> 3);
  if (v10 <= v19)
  {
    if (v10 < v19)
    {
      this[7].__end_cap_.__value_ = &v18[6 * v10];
    }
  }

  else
  {
    std::vector<operations_research::sat::AffineExpression>::__append(&this[7].__end_, v10 - v19);
    v10 = v48;
  }

  v20 = this[5].__end_;
  v21 = 0xAAAAAAAAAAAAAAABLL * ((this[5].__end_cap_.__value_ - v20) >> 3);
  if (v10 <= v21)
  {
    if (v10 < v21)
    {
      this[5].__end_cap_.__value_ = &v20[6 * v10];
    }
  }

  else
  {
    std::vector<operations_research::sat::AffineExpression>::__append(&this[5].__end_, v10 - v21);
    v10 = v48;
  }

  v22 = this[6].__end_;
  v23 = this[6].__end_cap_.__value_ - v22;
  if (v10 <= v23)
  {
    if (v10 < v23)
    {
      this[6].__end_cap_.__value_ = &v22[v10];
    }
  }

  else
  {
    std::vector<int>::__append((this + 152), v10 - v23);
    LODWORD(v10) = v48;
  }

  if (v10 >= 1)
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = *(a3 + 4 * v25);
      (*p_end)[v25] = *(*(a2 + 56) + 4 * v26);
      v27 = *(a2 + 80) + 24 * v26;
      v28 = &this[3].__end_[v24];
      v29 = *v27;
      *(v28 + 2) = *(v27 + 16);
      *v28 = v29;
      v30 = *(a2 + 104) + 24 * v26;
      v31 = &this[4].__end_[v24];
      v32 = *v30;
      *(v31 + 2) = *(v30 + 16);
      *v31 = v32;
      v33 = *(a2 + 200) + 24 * v26;
      v34 = &this[8].__end_[v24];
      v35 = *v33;
      *(v34 + 2) = *(v33 + 16);
      *v34 = v35;
      v36 = *(a2 + 176) + 24 * v26;
      v37 = &this[7].__end_[v24];
      v38 = *v36;
      *(v37 + 2) = *(v36 + 16);
      *v37 = v38;
      v39 = *(a2 + 128) + 24 * v26;
      v40 = &this[5].__end_[v24];
      v41 = *v39;
      *(v40 + 2) = *(v39 + 16);
      *v40 = v41;
      this[6].__end_[v25++] = *(*(a2 + 152) + 4 * v26);
      v24 += 6;
    }

    while ((a4 & 0x7FFFFFFF) != v25);
  }

  operations_research::sat::SchedulingConstraintHelper::InitSortedVectors(this);
  operations_research::sat::SchedulingConstraintHelper::SetTimeDirection(this, 1);
  begin = this[20].__begin_;
  if ((BYTE2(this[19].__end_) & 1) == 0)
  {
    if (begin)
    {
      v45 = 0;
      v46 = 1;
      while (1)
      {
        if ((*(this[19].__end_cap_.__value_ + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v45))
        {
          result = operations_research::sat::SchedulingConstraintHelper::UpdateCachedValues(this, v46 - 1);
          if (!result)
          {
            return result;
          }

          begin = this[20].__begin_;
        }

        v45 = v46++;
        if (begin <= v45)
        {
          goto LABEL_45;
        }
      }
    }

    goto LABEL_45;
  }

  if (!begin)
  {
LABEL_45:
    BYTE2(this[19].__end_) = 0;
    return 1;
  }

  v43 = 1;
  while ((operations_research::sat::SchedulingConstraintHelper::UpdateCachedValues(this, v43 - 1) & 1) != 0)
  {
    if (this[20].__begin_ <= v43++)
    {
      goto LABEL_45;
    }
  }

  return 0;
}

__n128 operations_research::sat::SchedulingConstraintHelper::SetTimeDirection(operations_research::sat::SchedulingConstraintHelper *this, int a2)
{
  if (*(this + 48) != a2)
  {
    v2 = *(this + 5);
    *(this + 5) = *(this + 200);
    *(this + 200) = v2;
    v3 = *(this + 104);
    *(this + 104) = *(this + 11);
    *(this + 11) = v3;
    result = *(this + 360);
    v5 = *(this + 17);
    *(this + 360) = *(this + 18);
    v6 = *(this + 312);
    *(this + 312) = *(this + 21);
    *(this + 21) = v6;
    v7 = *(this + 26);
    *(this + 26) = *(this + 440);
    *(this + 440) = v7;
    v8 = vextq_s8(*(this + 15), *(this + 15), 8uLL);
    *(this + 15) = vextq_s8(*(this + 16), *(this + 16), 8uLL);
    *(this + 16) = v8;
    *(this + 48) = a2;
    v9 = *(this + 12);
    *(this + 12) = *(this + 27);
    *(this + 27) = v9;
    v10 = *(this + 15);
    *(this + 15) = *(this + 24);
    *(this + 24) = v10;
    v11 = *(this + 38);
    *(this + 38) = *(this + 47);
    *(this + 47) = v11;
    v12 = *(this + 41);
    *(this + 41) = *(this + 44);
    *(this + 44) = v12;
    v13 = *(this + 54);
    *(this + 54) = *(this + 57);
    *(this + 57) = v13;
    *(this + 384) = 1;
    *(this + 17) = vextq_s8(v5, v5, 8uLL);
    *(this + 18) = result;
    LOBYTE(v13) = *(this + 464);
    *(this + 464) = *(this + 465);
    *(this + 465) = v13;
  }

  return result;
}

unint64_t operations_research::sat::SchedulingConstraintHelper::GetCurrentMinDistanceBetweenTasks(operations_research::sat::SchedulingConstraintHelper *this, int a2, int a3, int a4)
{
  result = 0x8000000000000002;
  v6 = (*(this + 13) + 24 * a2);
  v7 = *v6;
  if (v7 != -1 && *(v6 + 1) == 1)
  {
    v9 = *(this + 10) + 24 * a3;
    v10 = *v9;
    if (*v9 != -1 && *(v9 + 8) == 1)
    {
      v13 = *(v6 + 2);
      v14 = *(v9 + 16);
      ConditionalOffset = operations_research::sat::PrecedenceRelations::GetConditionalOffset(*(this + 5), *v6, *v9);
      result = 0x8000000000000002;
      if (ConditionalOffset != 0x8000000000000002)
      {
        result = ConditionalOffset + v14 - v13;
        if (a4)
        {
          if ((result & 0x8000000000000000) == 0)
          {
            v16 = ConditionalOffset + v14 - v13;
            ConditionalEnforcements = operations_research::sat::PrecedenceRelations::GetConditionalEnforcements(*(this + 5), v7, v10);
            if ((v18 & 0x3FFFFFFFFFFFFFFFLL) != 0)
            {
              v19 = ConditionalEnforcements;
              v20 = 4 * v18;
              do
              {
                v21 = *v19++;
                v22 = v21 ^ 1;
                std::vector<int>::push_back[abi:ne200100](this + 496, &v22);
                v20 -= 4;
              }

              while (v20);
            }

            return v16;
          }
        }
      }
    }
  }

  return result;
}

BOOL operations_research::sat::SchedulingConstraintHelper::PropagatePrecedence(operations_research::sat::SchedulingConstraintHelper *this, absl::lts_20240722::numbers_internal *a2, absl::lts_20240722::numbers_internal *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = *(this + 19);
  v7 = *(v6 + 4 * a2);
  if (v7 != -1 && ((*(*(*(this + 3) + 24) + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    operations_research::sat::SchedulingConstraintHelper::PropagatePrecedence(v24);
  }

  v8 = *(v6 + 4 * a3);
  v9 = *(this + 3);
  if (v8 != -1 && ((*(*(v9 + 24) + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    operations_research::sat::SchedulingConstraintHelper::PropagatePrecedence(v24);
  }

  v10 = *(v9 + 8) & 0xFFFFFFF;
  if (v10)
  {
    operations_research::sat::SchedulingConstraintHelper::PropagatePrecedence(v10, v24);
  }

  v11 = *(this + 13) + 24 * a2;
  v12 = *(this + 10) + 24 * a3;
  if (*(v12 + 8) != 1 || *(v11 + 8) != 1)
  {
    return 1;
  }

  v14 = *v11;
  v15 = *v12;
  if (*v12 == -1 || v14 == -1)
  {
    return 1;
  }

  v17 = *(v11 + 16) - *(v12 + 16);
  if (!operations_research::sat::PrecedenceRelations::Add(*(this + 5), v14, v15, v17))
  {
    return 1;
  }

  if (dword_27E25D0E8 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::sat::SchedulingConstraintHelper::PropagatePrecedence(int,int)::$_0::operator() const(void)::site, dword_27E25D0E8))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v25, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/intervals.cc", 541);
    v19 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v25, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v19, "new relation ", 0xDuLL);
    operations_research::sat::SchedulingConstraintHelper::TaskDebugString(this, a2, v20, v24);
    v21 = absl::lts_20240722::log_internal::LogMessage::operator<<(v19, v24);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, " <= ", 4uLL);
    operations_research::sat::SchedulingConstraintHelper::TaskDebugString(this, a3, v22, &v23);
    absl::lts_20240722::log_internal::LogMessage::operator<<(v21, &v23);
    std::__function::__func<operations_research::sat::DisjunctivePrecedenceSearchHeuristic(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::DisjunctivePrecedenceSearchHeuristic(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()(&v23, v24, v25);
  }

  v27[0] = v14;
  v27[1] = v15;
  v26 = xmmword_23CE306C0;
  operations_research::sat::AddWeightedSumLowerOrEqual(0, 0, v27, 2uLL, &v26, 2, -v17, *(this + 2));
  return (*(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(*(this + 2)) + 528) & 1) == 0;
}

void sub_23CC241D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a21);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a21);
  _Unwind_Resume(a1);
}

void sub_23CC24254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *operations_research::sat::SchedulingConstraintHelper::TaskDebugString@<X0>(operations_research::sat::SchedulingConstraintHelper *this@<X0>, absl::lts_20240722::numbers_internal *a2@<X1>, char *a3@<X2>, std::string *a4@<X8>)
{
  v4 = a2;
  v28 = *MEMORY[0x277D85DE8];
  *&v27 = "t=";
  *(&v27 + 1) = 2;
  *&v25 = v26;
  *(&v25 + 1) = absl::lts_20240722::numbers_internal::FastIntToBuffer(a2, v26, a3) - v26;
  v24[0] = " is_present=";
  v24[1] = 12;
  v8 = *(*(this + 19) + 4 * v4);
  if (v8 == -1)
  {
    v9 = 1;
  }

  else
  {
    v9 = (*(*(*(this + 3) + 24) + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1;
  }

  *&v22 = v23;
  *(&v22 + 1) = absl::lts_20240722::numbers_internal::FastIntToBuffer(v9, v23, v7) - v23;
  *&v21 = " size=[";
  *(&v21 + 1) = 7;
  v20 = *(*(this + 29) + 8 * v4);
  v10 = (*(this + 16) + 24 * v4);
  v11 = *(v10 + 2);
  if (*v10 != -1)
  {
    v11 -= *(*(*(this + 4) + 40) + ((8 * *v10) ^ 8)) * *(v10 + 1);
  }

  v19 = v11;
  v12 = *(this + 31);
  v18 = *(*(this + 30) + 8 * v4);
  v13 = *(this + 33);
  v17 = -*(*(this + 32) + 8 * v4);
  v16 = *(v12 + 8 * v4);
  v15 = -*(v13 + 8 * v4);
  return absl::lts_20240722::StrCat<long long,char [2],long long,char [2],char [9],long long,char [2],long long,char [2],char [7],long long,char [2],long long,char [2]>(&v27, &v25, v24, &v22, &v21, &v20, ",", &v19, a4, "]", " start=[", &v18, ",", &v17, "]", " end=[", &v16, ",", &v15, "]");
}

uint64_t operations_research::sat::SchedulingConstraintHelper::TaskByIncreasingStartMin(operations_research::sat::SchedulingConstraintHelper *this, __n128 a2)
{
  v3 = -1431655765 * ((*(this + 11) - *(this + 10)) >> 3);
  v4 = *(this + 36);
  if (v3 >= 1)
  {
    v5 = *(this + 30);
    v6 = v3 & 0x7FFFFFFF;
    v7 = &v4->n128_u64[1];
    do
    {
      *v7 = *(v5 + 8 * *(v7 - 2));
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  v8 = *(this + 37);
  v9 = (v8 - v4) >> 4;
  if (v9 > 32)
  {
    operations_research::IncrementalSort<std::__wrap_iter<operations_research::sat::TaskTime *>,std::less<operations_research::sat::TaskTime>>(8 * v9, v4, v8, 0, a2);
  }

  else if (v8 - v4 >= 17)
  {
    v10 = v8 - 1;
    if (&v8[-1] != v4)
    {
      v11 = v8 - 2;
      v12 = v8 - 1;
      do
      {
        if (v12->n128_u64[1] < v11->n128_u64[1])
        {
          v13 = *v12;
          *v12 = *v11;
          *v11 = v13;
          v10 = v12;
        }

        --v12;
        --v11;
      }

      while (v12 != v4);
      v15 = v10 + 1;
      if (v15 != v8)
      {
        v16 = v15 - 2;
        do
        {
          v18 = v15->n128_u64[0];
          v17 = v15->n128_i64[1];
          v19 = v15;
          if (v17 < v15[-1].n128_u64[1])
          {
            v20 = v15 - 1;
            v21 = v16;
            v19 = v15;
            do
            {
              *v19-- = *v20;
              v20 = v21;
              v22 = v21->n128_i64[1];
              --v21;
            }

            while (v17 < v22);
          }

          v19->n128_u64[0] = v18;
          v19->n128_u64[1] = v17;
          ++v15;
          ++v16;
        }

        while (v15 != v8);
      }
    }
  }

  return *(this + 36);
}

uint64_t operations_research::sat::SchedulingConstraintHelper::TaskByIncreasingEndMin(operations_research::sat::SchedulingConstraintHelper *this, __n128 a2)
{
  v3 = -1431655765 * ((*(this + 11) - *(this + 10)) >> 3);
  v4 = *(this + 39);
  if (v3 >= 1)
  {
    v5 = *(this + 31);
    v6 = v3 & 0x7FFFFFFF;
    v7 = &v4->n128_u64[1];
    do
    {
      *v7 = *(v5 + 8 * *(v7 - 2));
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  v8 = *(this + 40);
  v9 = (v8 - v4) >> 4;
  if (v9 > 32)
  {
    operations_research::IncrementalSort<std::__wrap_iter<operations_research::sat::TaskTime *>,std::less<operations_research::sat::TaskTime>>(8 * v9, v4, v8, 0, a2);
  }

  else if (v8 - v4 >= 17)
  {
    v10 = v8 - 1;
    if (&v8[-1] != v4)
    {
      v11 = v8 - 2;
      v12 = v8 - 1;
      do
      {
        if (v12->n128_u64[1] < v11->n128_u64[1])
        {
          v13 = *v12;
          *v12 = *v11;
          *v11 = v13;
          v10 = v12;
        }

        --v12;
        --v11;
      }

      while (v12 != v4);
      v15 = v10 + 1;
      if (v15 != v8)
      {
        v16 = v15 - 2;
        do
        {
          v18 = v15->n128_u64[0];
          v17 = v15->n128_i64[1];
          v19 = v15;
          if (v17 < v15[-1].n128_u64[1])
          {
            v20 = v15 - 1;
            v21 = v16;
            v19 = v15;
            do
            {
              *v19-- = *v20;
              v20 = v21;
              v22 = v21->n128_i64[1];
              --v21;
            }

            while (v17 < v22);
          }

          v19->n128_u64[0] = v18;
          v19->n128_u64[1] = v17;
          ++v15;
          ++v16;
        }

        while (v15 != v8);
      }
    }
  }

  return *(this + 39);
}

uint64_t operations_research::sat::SchedulingConstraintHelper::TaskByDecreasingStartMax(operations_research::sat::SchedulingConstraintHelper *this, __n128 a2)
{
  v3 = -1431655765 * ((*(this + 11) - *(this + 10)) >> 3);
  v4 = *(this + 42);
  if (v3 >= 1)
  {
    v5 = *(this + 32);
    v6 = v3 & 0x7FFFFFFF;
    v7 = &v4->n128_u64[1];
    do
    {
      *v7 = -*(v5 + 8 * *(v7 - 2));
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  v8 = *(this + 43);
  v9 = (v8 - v4) >> 4;
  if (v9 > 32)
  {
    operations_research::IncrementalSort<std::__wrap_iter<operations_research::sat::TaskTime *>,std::greater<operations_research::sat::TaskTime>>(8 * v9, v4, v8, 0, a2);
  }

  else if (v8 - v4 >= 17)
  {
    v10 = v8 - 1;
    if (&v8[-1] != v4)
    {
      v11 = v8 - 2;
      v12 = v8 - 1;
      do
      {
        if (v12->n128_u64[1] > v11->n128_u64[1])
        {
          v13 = *v12;
          *v12 = *v11;
          *v11 = v13;
          v10 = v12;
        }

        --v12;
        --v11;
      }

      while (v12 != v4);
      v15 = v10 + 1;
      if (v15 != v8)
      {
        v16 = v15 - 2;
        do
        {
          v18 = v15->n128_u64[0];
          v17 = v15->n128_i64[1];
          v19 = v15;
          if (v17 > v15[-1].n128_u64[1])
          {
            v20 = v15 - 1;
            v21 = v16;
            v19 = v15;
            do
            {
              *v19-- = *v20;
              v20 = v21;
              v22 = v21->n128_i64[1];
              --v21;
            }

            while (v17 > v22);
          }

          v19->n128_u64[0] = v18;
          v19->n128_u64[1] = v17;
          ++v15;
          ++v16;
        }

        while (v15 != v8);
      }
    }
  }

  return *(this + 42);
}

uint64_t operations_research::sat::SchedulingConstraintHelper::TaskByDecreasingEndMax(operations_research::sat::SchedulingConstraintHelper *this, __n128 a2)
{
  v3 = -1431655765 * ((*(this + 11) - *(this + 10)) >> 3);
  v4 = *(this + 45);
  if (v3 >= 1)
  {
    v5 = *(this + 33);
    v6 = v3 & 0x7FFFFFFF;
    v7 = &v4->n128_u64[1];
    do
    {
      *v7 = -*(v5 + 8 * *(v7 - 2));
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  v8 = *(this + 46);
  v9 = (v8 - v4) >> 4;
  if (v9 > 32)
  {
    operations_research::IncrementalSort<std::__wrap_iter<operations_research::sat::TaskTime *>,std::greater<operations_research::sat::TaskTime>>(8 * v9, v4, v8, 0, a2);
  }

  else if (v8 - v4 >= 17)
  {
    v10 = v8 - 1;
    if (&v8[-1] != v4)
    {
      v11 = v8 - 2;
      v12 = v8 - 1;
      do
      {
        if (v12->n128_u64[1] > v11->n128_u64[1])
        {
          v13 = *v12;
          *v12 = *v11;
          *v11 = v13;
          v10 = v12;
        }

        --v12;
        --v11;
      }

      while (v12 != v4);
      v15 = v10 + 1;
      if (v15 != v8)
      {
        v16 = v15 - 2;
        do
        {
          v18 = v15->n128_u64[0];
          v17 = v15->n128_i64[1];
          v19 = v15;
          if (v17 > v15[-1].n128_u64[1])
          {
            v20 = v15 - 1;
            v21 = v16;
            v19 = v15;
            do
            {
              *v19-- = *v20;
              v20 = v21;
              v22 = v21->n128_i64[1];
              --v21;
            }

            while (v17 > v22);
          }

          v19->n128_u64[0] = v18;
          v19->n128_u64[1] = v17;
          ++v15;
          ++v16;
        }

        while (v15 != v8);
      }
    }
  }

  return *(this + 45);
}

uint64_t operations_research::sat::SchedulingConstraintHelper::TaskByIncreasingShiftedStartMin(operations_research::sat::SchedulingConstraintHelper *this, __n128 a2)
{
  if (*(this + 464) == 1)
  {
    *(this + 464) = 0;
    v2 = -1431655765 * ((*(this + 11) - *(this + 10)) >> 3);
    if (v2 >= 1)
    {
      v3 = *(this + 34);
      v4 = v2 & 0x7FFFFFFF;
      v5 = (*(this + 52) + 8);
      v6 = 0x8000000000000002;
      v7 = 1;
      do
      {
        v8 = *(v3 + 8 * *(v5 - 2));
        *v5 = v8;
        v5 += 2;
        v7 &= v8 >= v6;
        v6 = v8;
        --v4;
      }

      while (v4);
      if ((v7 & 1) == 0)
      {
        v9 = *(this + 52);
        v10 = *(this + 53);
        v11 = (v10 - v9) >> 4;
        if (v11 > 32)
        {
          v16 = this;
          operations_research::IncrementalSort<std::__wrap_iter<operations_research::sat::TaskTime *>,std::less<operations_research::sat::TaskTime>>(8 * v11, v9, v10, 0, a2);
          this = v16;
        }

        else if (v10 - v9 >= 17)
        {
          v12 = v10 - 1;
          if (&v10[-1] != v9)
          {
            v13 = v10 - 2;
            v14 = v10 - 1;
            do
            {
              if (v14->n128_u64[1] < v13->n128_u64[1])
              {
                v15 = *v14;
                *v14 = *v13;
                *v13 = v15;
                v12 = v14;
              }

              --v14;
              --v13;
            }

            while (v14 != v9);
            v18 = v12 + 1;
            if (v18 != v10)
            {
              v19 = v18 - 2;
              do
              {
                v21 = v18->n128_u64[0];
                v20 = v18->n128_i64[1];
                v22 = v18;
                if (v20 < v18[-1].n128_u64[1])
                {
                  v23 = v18 - 1;
                  v24 = v19;
                  v22 = v18;
                  do
                  {
                    *v22-- = *v23;
                    v23 = v24;
                    v25 = v24->n128_i64[1];
                    --v24;
                  }

                  while (v20 < v25);
                }

                v22->n128_u64[0] = v21;
                v22->n128_u64[1] = v20;
                ++v18;
                ++v19;
              }

              while (v18 != v10);
            }
          }
        }
      }
    }
  }

  return *(this + 52);
}

uint64_t operations_research::sat::SchedulingConstraintHelper::GetEnergyProfile(operations_research::sat::SchedulingConstraintHelper *this, __n128 a2)
{
  v3 = *(this + 49);
  v4 = *(this + 50);
  if (v3 == v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 11) - *(this + 10)) >> 3);
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = v7 & 0x7FFFFFFF;
      do
      {
        *&v11 = *(*(this + 34) + 8 * v8);
        DWORD2(v11) = v8;
        BYTE12(v11) = 1;
        std::vector<operations_research::sat::SchedulingConstraintHelper::ProfileEvent>::push_back[abi:ne200100](this + 392, &v11);
        *&v11 = *(*(this + 31) + 8 * v8);
        DWORD2(v11) = v8;
        BYTE12(v11) = 0;
        std::vector<operations_research::sat::SchedulingConstraintHelper::ProfileEvent>::push_back[abi:ne200100](this + 392, &v11);
        ++v8;
      }

      while (v9 != v8);
      v3 = *(this + 49);
      v4 = *(this + 50);
    }

    goto LABEL_13;
  }

  if (*(this + 384) == 1)
  {
    v5 = v3;
    do
    {
      if (*(v5 + 12))
      {
        v6 = 272;
      }

      else
      {
        v6 = 248;
      }

      *v5 = *(*(this + v6) + 8 * *(v5 + 2));
      ++v5;
    }

    while (v5 != v4);
LABEL_13:
    operations_research::IncrementalSort<std::__wrap_iter<operations_research::sat::SchedulingConstraintHelper::ProfileEvent *>,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent>>(v3, v4, 0, a2);
    *(this + 384) = 0;
  }

  return this + 392;
}

void std::vector<operations_research::sat::SchedulingConstraintHelper::ProfileEvent>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void operations_research::IncrementalSort<std::__wrap_iter<operations_research::sat::SchedulingConstraintHelper::ProfileEvent *>,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent>>(__int128 *result, uint64_t *a2, int a3, __n128 a4)
{
  v4 = (a2 - result) >> 4;
  if (v4 > 32)
  {
    operations_research::IncrementalSort<std::__wrap_iter<operations_research::sat::SchedulingConstraintHelper::ProfileEvent *>,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent>>(8 * v4, result, a2, a3, a4);
    return;
  }

  if (a2 - result >= 17)
  {
    v5 = a2 - 2;
    if (a2 - 2 != result)
    {
      v6 = a2 - 4;
      v7 = a2 - 2;
      while (1)
      {
        v9 = *v7 < *v6;
        if (*v7 == *v6 && (v10 = *(v7 + 2), v11 = *(v6 + 2), v9 = v10 < v11, v10 == v11))
        {
          if (*(v7 + 12) <= *(v6 + 12))
          {
            goto LABEL_6;
          }
        }

        else if (!v9)
        {
          goto LABEL_6;
        }

        v21 = *v7;
        v8 = *(v6 + 5);
        *v7 = *v6;
        *(v7 + 5) = v8;
        *(v6 + 5) = *(&v21 + 5);
        *v6 = v21;
        v5 = v7;
LABEL_6:
        v7 -= 2;
        v6 -= 2;
        if (v7 == result)
        {
          v12 = v5 + 2;
          if (v5 + 2 == a2)
          {
            return;
          }

LABEL_18:
          v13 = *v12;
          v14 = *(v12 + 2);
          v15 = v5;
          v16 = v12;
          v17 = *(v12 + 12);
          while (1)
          {
            v19 = v13 < *v15;
            if (v13 == *v15 && (v20 = *(v15 + 2), v19 = v14 < v20, v14 == v20))
            {
              if (v17 <= *(v15 + 12))
              {
LABEL_17:
                *v16 = v13;
                *(v16 + 2) = v14;
                *(v16 + 12) = v17;
                v12 += 2;
                v5 += 2;
                if (v12 != a2)
                {
                  goto LABEL_18;
                }

                return;
              }
            }

            else if (!v19)
            {
              goto LABEL_17;
            }

            v18 = *v15;
            *(v16 + 5) = *(v15 + 5);
            *v16 = v18;
            v16 -= 2;
            v15 -= 2;
          }
        }
      }
    }
  }
}

void operations_research::sat::SchedulingConstraintHelper::AddReasonForBeingBefore(std::vector<int> **this, int a2, int a3)
{
  operations_research::sat::SchedulingConstraintHelper::AddOtherReason(this, a2);
  operations_research::sat::SchedulingConstraintHelper::AddOtherReason(this, a3);
  v14 = *(&this[32]->__begin_ + a2);
  v6 = -v14;
  v7 = &this[10][a2];
  value = v7->__end_cap_.__value_;
  if (LODWORD(v7->__begin_) == -1)
  {
    if (value <= v6)
    {
      goto LABEL_10;
    }
  }

  else if (value - *(this[4][1].__end_cap_.__value_ + ((8 * SLODWORD(v7->__begin_)) ^ 8)) * v7->__end_ <= v6)
  {
    operator new();
  }

  if (LODWORD(this[13][a2].__begin_) != -1)
  {
    operator new();
  }

  if (LODWORD(this[16][a2].__begin_) != -1)
  {
    operator new();
  }

LABEL_10:
  v9 = *(&this[31]->__begin_ + a3);
  v10 = &this[13][a3];
  v11 = v10->__end_cap_.__value_;
  if (LODWORD(v10->__begin_) == -1)
  {
    if (v9 <= v11)
    {
      goto LABEL_20;
    }
  }

  else if (v9 <= v11 + *&this[4][1].__end_cap_.__value_[2 * SLODWORD(v10->__begin_)] * v10->__end_)
  {
    operator new();
  }

  begin = this[10][a3].__begin_;
  if (begin != -1)
  {
    operator new();
  }

  v13 = this[16][a3].__begin_;
  if (v13 != -1)
  {
    operator new();
  }

LABEL_20:
  operations_research::sat::IntegerTrail::AppendRelaxedLinearReason(this[4], v14 + v9 - 1, 0, 0, 0, 0, (this + 65));
}

void sub_23CC25870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v12)
  {
    operator delete(v12);
    if (!v11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v11)
  {
    goto LABEL_3;
  }

  operator delete(v11);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::SchedulingConstraintHelper::AddOtherReason(operations_research::sat::SchedulingConstraintHelper *this, int a2)
{
  v2 = *(this + 68);
  if (v2)
  {
    v3 = *(this + 72);
    v4 = a2 >> 6;
    v5 = *(v3 + 8 * v4);
    if ((v5 & (1 << a2)) == 0)
    {
      *(v3 + 8 * v4) = v5 | (1 << a2);
      v6 = *(*(this + 69) + 4 * a2);
      v8 = *(this + 71);
      operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v2, v6);
      v9 = *(v2 + 10);
      v10 = 24 * v6;
      v11 = *(v2 + 13);
      v12 = *(v2 + 16) + v10;
      if (*v12 == -1)
      {
        v15 = 0;
        v14 = -1;
      }

      else
      {
        v13 = *(v12 + 8);
        v14 = *v12 ^ (v13 >> 63) ^ 1;
        if (v13 >= 0)
        {
          v15 = *(v12 + 8);
        }

        else
        {
          v15 = -v13;
        }
      }

      v16 = -*(v12 + 16);
      v25 = v14;
      v26 = v15;
      v27 = v16;
      operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v2, (v9 + v10), v8, (v11 + v10), &v25);
      v17 = *(this + 68);
      v18 = *(this + 71);
      operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v17, v6);
      v19 = *(v17 + 25);
      v20 = *(v17 + 22);
      v21 = *(v17 + 16) + 24 * v6;
      v22 = *v21;
      if (*v21 == -1)
      {
        v23 = 0;
      }

      else
      {
        v23 = *(v21 + 8);
        v22 ^= (v23 >> 63) ^ 1;
        if (v23 < 0)
        {
          v23 = -v23;
        }
      }

      v24 = -*(v21 + 16);
      v25 = v22;
      v26 = v23;
      v27 = v24;
      operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v17, (v19 + 24 * v6), ~v18, (v20 + 24 * v6), &v25);
    }
  }
}

uint64_t operations_research::sat::SchedulingConstraintHelper::PushIntegerLiteral(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1[68])
  {
    v11[2] = v3;
    v11[3] = v4;
    operations_research::sat::SchedulingConstraintHelper::PushIntegerLiteral(v11);
  }

  v5 = a1[62];
  v6 = (a1[63] - v5) >> 2;
  v7 = a1[65];
  v8 = (a1[66] - v7) >> 4;
  v9 = a1[4];

  return operations_research::sat::IntegerTrail::Enqueue(v9, a2, a3, v5, v6, v7, v8);
}

uint64_t operations_research::sat::SchedulingConstraintHelper::PushIntegerLiteralIfTaskPresent(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(a1 + 152) + 4 * a2);
  if (v8 != -1 && ((*(*(*(a1 + 24) + 24) + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 & 0x3F ^ 1)) & 1) != 0)
  {
    return 1;
  }

  operations_research::sat::SchedulingConstraintHelper::AddOtherReason(a1, a2);
  v10 = *(a1 + 544);
  if (v10)
  {
    std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>((a1 + 496), *(a1 + 504), v10[62], v10[63], (v10[63] - v10[62]) >> 2);
    std::vector<operations_research::sat::IntegerLiteral>::__insert_with_size[abi:ne200100]<std::__wrap_iter<operations_research::sat::IntegerLiteral const*>,std::__wrap_iter<operations_research::sat::IntegerLiteral const*>>((a1 + 520), *(a1 + 528), v10[65], v10[66], (v10[66] - v10[65]) >> 4);
  }

  v11 = *(*(a1 + 152) + 4 * a2);
  v12 = *(a1 + 32);
  if (v11 == -1)
  {
    v13 = *(a1 + 496);
    v14 = (*(a1 + 504) - v13) >> 2;
    v15 = *(a1 + 520);
    v16 = (*(a1 + 528) - v15) >> 4;

    return operations_research::sat::IntegerTrail::Enqueue(v12, a3, a4, v13, v14, v15, v16);
  }

  else
  {

    return operations_research::sat::IntegerTrail::ConditionalEnqueue(v12, v11, a3, a4, (a1 + 496), (a1 + 520));
  }
}

uint64_t operations_research::sat::SchedulingConstraintHelper::IncreaseStartMin(operations_research::sat::SchedulingConstraintHelper *a1, int a2, uint64_t a3)
{
  v4 = (*(a1 + 10) + 24 * a2);
  v5 = *v4;
  if (v5 == -1)
  {
    if (*(v4 + 2) >= a3)
    {
      return 1;
    }

    return operations_research::sat::SchedulingConstraintHelper::PushTaskAbsence(a1, a2);
  }

  else
  {
    v7 = v4 + 2;
    v6 = *(v4 + 1);
    v8 = a3 - *(v7 + 1);
    if (v8 / v6 * v6 >= v8)
    {
      v9 = v8 / v6;
    }

    else
    {
      v9 = v8 / v6 + 1;
    }

    result = operations_research::sat::SchedulingConstraintHelper::PushIntegerLiteralIfTaskPresent(a1, a2, v5, v9);
    if (result)
    {
      v12 = *(*(a1 + 19) + 4 * a2);
      if (v12 == -1 || ((*(*(*(a1 + 3) + 24) + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v12 & 0x3F ^ 1)) & 1) == 0)
      {

        return operations_research::sat::SchedulingConstraintHelper::UpdateCachedValues(a1, a2);
      }

      return 1;
    }
  }

  return result;
}

uint64_t operations_research::sat::SchedulingConstraintHelper::IncreaseEndMin(operations_research::sat::SchedulingConstraintHelper *a1, int a2, uint64_t a3)
{
  v4 = (*(a1 + 13) + 24 * a2);
  v5 = *v4;
  if (v5 == -1)
  {
    if (*(v4 + 2) >= a3)
    {
      return 1;
    }

    return operations_research::sat::SchedulingConstraintHelper::PushTaskAbsence(a1, a2);
  }

  else
  {
    v7 = v4 + 2;
    v6 = *(v4 + 1);
    v8 = a3 - *(v7 + 1);
    if (v8 / v6 * v6 >= v8)
    {
      v9 = v8 / v6;
    }

    else
    {
      v9 = v8 / v6 + 1;
    }

    result = operations_research::sat::SchedulingConstraintHelper::PushIntegerLiteralIfTaskPresent(a1, a2, v5, v9);
    if (result)
    {
      v12 = *(*(a1 + 19) + 4 * a2);
      if (v12 == -1 || ((*(*(*(a1 + 3) + 24) + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v12 & 0x3F ^ 1)) & 1) == 0)
      {

        return operations_research::sat::SchedulingConstraintHelper::UpdateCachedValues(a1, a2);
      }

      return 1;
    }
  }

  return result;
}

uint64_t operations_research::sat::SchedulingConstraintHelper::DecreaseEndMax(operations_research::sat::SchedulingConstraintHelper *a1, int a2, uint64_t a3)
{
  v4 = (*(a1 + 13) + 24 * a2);
  v5 = *v4;
  v6 = *(v4 + 2);
  if (v5 == -1)
  {
    if (a3 >= v6)
    {
      return 1;
    }

    return operations_research::sat::SchedulingConstraintHelper::PushTaskAbsence(a1, a2);
  }

  else
  {
    v7 = (a3 - v6) / *(v4 + 1) - ((a3 - v6) / *(v4 + 1) * *(v4 + 1) > a3 - v6);
    if (v7 >= 0x8000000000000002)
    {
      v8 = -v7;
    }

    else
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = operations_research::sat::SchedulingConstraintHelper::PushIntegerLiteralIfTaskPresent(a1, a2, v5 ^ 1, v8);
    if (result)
    {
      v11 = *(*(a1 + 19) + 4 * a2);
      if (v11 == -1 || ((*(*(*(a1 + 3) + 24) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v11 & 0x3F ^ 1)) & 1) == 0)
      {

        return operations_research::sat::SchedulingConstraintHelper::UpdateCachedValues(a1, a2);
      }

      return 1;
    }
  }

  return result;
}

uint64_t operations_research::sat::SchedulingConstraintHelper::ReportConflict(operations_research::sat::SchedulingConstraintHelper *this)
{
  v2 = *(this + 68);
  if (v2)
  {
    std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(this + 62, *(this + 63), v2[62], v2[63], (v2[63] - v2[62]) >> 2);
    std::vector<operations_research::sat::IntegerLiteral>::__insert_with_size[abi:ne200100]<std::__wrap_iter<operations_research::sat::IntegerLiteral const*>,std::__wrap_iter<operations_research::sat::IntegerLiteral const*>>(this + 65, *(this + 66), v2[65], v2[66], (v2[66] - v2[65]) >> 4);
  }

  v3 = *(this + 4);
  v4 = *(this + 62);
  v5 = *(this + 63);
  v6 = *(this + 65);
  v7 = (*(this + 66) - v6) >> 4;
  v8 = *(v3 + 840);
  *(v8 + 120) = 0;
  std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((v8 + 72), v4, v5, (v5 - v4) >> 2);
  operations_research::sat::IntegerTrail::MergeReasonInto(v3, v6, v7, (v8 + 72));
  return 0;
}

void operations_research::sat::SchedulingConstraintHelper::WatchAllTasks(operations_research::sat::SchedulingConstraintHelper *this, unsigned int a2, operations_research::sat::GenericLiteralWatcher *a3, int a4, int a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 11) - *(this + 10)) >> 3);
  if (v5 >= 1)
  {
    v11 = 0;
    v12 = v5 & 0x7FFFFFFF;
    do
    {
      v14 = *(this + 10) + 24 * v11;
      v15 = *(v14 + 16);
      v34 = *v14;
      v35 = v15;
      operations_research::sat::GenericLiteralWatcher::WatchLowerBound(a3, &v34, a2);
      v16 = *(this + 13) + 24 * v11;
      v17 = *(v16 + 16);
      v34 = *v16;
      v35 = v17;
      operations_research::sat::GenericLiteralWatcher::WatchLowerBound(a3, &v34, a2);
      v18 = *(this + 16) + 24 * v11;
      v19 = *(v18 + 16);
      v34 = *v18;
      v35 = v19;
      operations_research::sat::GenericLiteralWatcher::WatchLowerBound(a3, &v34, a2);
      if (a4)
      {
        v21 = *(this + 10) + 24 * v11;
        v22 = *(v21 + 16);
        v34 = *v21;
        v35 = v22;
        operations_research::sat::GenericLiteralWatcher::WatchUpperBound(a3, &v34, a2);
        if (!a5)
        {
LABEL_8:
          v20 = *(*(this + 19) + 4 * v11);
          if (v20 != -1)
          {
            goto LABEL_12;
          }

          goto LABEL_5;
        }
      }

      else if (!a5)
      {
        goto LABEL_8;
      }

      v23 = *(this + 13) + 24 * v11;
      v24 = *(v23 + 16);
      v34 = *v23;
      v35 = v24;
      operations_research::sat::GenericLiteralWatcher::WatchUpperBound(a3, &v34, a2);
      v20 = *(*(this + 19) + 4 * v11);
      if (v20 != -1)
      {
LABEL_12:
        v25 = *(*(*(this + 3) + 24) + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8));
        if (((v25 >> v20) & 1) == 0 && ((v25 >> (v20 & 0x3F ^ 1)) & 1) == 0)
        {
          v27 = *(a3 + 8);
          v26 = *(a3 + 9);
          v28 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v27) >> 3);
          if (v20 >= v28)
          {
            v29 = v20 + 1;
            if (v29 > v28)
            {
              std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(a3 + 64, v29 - v28);
            }

            else if (v29 < v28)
            {
              v30 = v27 + 24 * v29;
              if (v26 != v30)
              {
                v31 = *(a3 + 9);
                do
                {
                  v33 = *(v31 - 24);
                  v31 -= 24;
                  v32 = v33;
                  if (v33)
                  {
                    *(v26 - 16) = v32;
                    operator delete(v32);
                  }

                  v26 = v31;
                }

                while (v31 != v30);
              }

              *(a3 + 9) = v30;
            }
          }

          v13 = *(a3 + 8) + 24 * v20;
          *&v34 = a2 | 0xFFFFFFFF00000000;
          std::vector<long long>::push_back[abi:ne200100](v13, &v34);
        }
      }

LABEL_5:
      ++v11;
    }

    while (v11 != v12);
  }
}

char *operations_research::sat::SchedulingConstraintHelper::ImportOtherReasons(operations_research::sat::SchedulingConstraintHelper *this, char **a2)
{
  std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(this + 62, *(this + 63), a2[62], a2[63], (a2[63] - a2[62]) >> 2);
  v4 = *(this + 66);
  v5 = a2[65];
  v6 = a2[66];

  return std::vector<operations_research::sat::IntegerLiteral>::__insert_with_size[abi:ne200100]<std::__wrap_iter<operations_research::sat::IntegerLiteral const*>,std::__wrap_iter<operations_research::sat::IntegerLiteral const*>>(this + 65, v4, v5, v6, (v6 - v5) >> 4);
}

char *absl::lts_20240722::StrCat<long long,char [2],long long,char [2],char [9],long long,char [2],long long,char [2],char [7],long long,char [2],long long,char [2]>@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, unint64_t *a6@<X5>, const char *a7@<X6>, unint64_t *a8@<X7>, std::string *a9@<X8>, const char *a10, const char *a11, unint64_t *a12, const char *a13, unint64_t *a14, const char *a15, const char *a16, unint64_t *a17, const char *a18, unint64_t *a19, const char *a20)
{
  v90 = *MEMORY[0x277D85DE8];
  v22 = *a2;
  v61[0] = *a1;
  v61[1] = v22;
  v23 = *a4;
  v61[2] = *a3;
  v61[3] = v23;
  v61[4] = *a5;
  v24 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a6, v60, a3);
  v58 = v60;
  v59 = v24 - v60;
  v62 = v60;
  v63 = v24 - v60;
  v25 = strlen(a7);
  v64 = a7;
  v65 = v25;
  v27 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a8, v57, v26);
  v55 = v57;
  v56 = v27 - v57;
  v66 = v57;
  v67 = v27 - v57;
  v28 = strlen(a10);
  v68 = a10;
  v69 = v28;
  v29 = strlen(a11);
  v70 = a11;
  v71 = v29;
  v31 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a12, v54, v30);
  v52 = v54;
  v53 = v31 - v54;
  v72 = v54;
  v73 = v31 - v54;
  v32 = strlen(a13);
  v74 = a13;
  v75 = v32;
  v34 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a14, v51, v33);
  v49 = v51;
  v50 = v34 - v51;
  v76 = v51;
  v77 = v34 - v51;
  v35 = strlen(a15);
  v78 = a15;
  v79 = v35;
  v36 = strlen(a16);
  v80 = a16;
  v81 = v36;
  v38 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a17, v48, v37);
  v46 = v48;
  v47 = v38 - v48;
  v82 = v48;
  v83 = v38 - v48;
  v39 = strlen(a18);
  v84 = a18;
  v85 = v39;
  v44 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a19, v45, v40) - v45;
  v86 = v45;
  v87 = v44;
  v41 = strlen(a20);
  v88 = a20;
  v89 = v41;
  return absl::lts_20240722::strings_internal::CatPieces(v61, 19, a9);
}

uint64_t operations_research::sat::ComputeEnergyMinInWindow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a10 - a9;
  if (a10 <= a9 || a3 <= a9 || a10 <= a2)
  {
    return 0;
  }

  v15 = a3 - a9;
  if (a10 - a2 < a3 - a9)
  {
    v15 = a10 - a2;
  }

  if (a5 < v15)
  {
    v15 = a5;
  }

  if (v10 < v15)
  {
    v15 = a10 - a9;
  }

  result = v15 * a6;
  if (a8)
  {
    v16 = 24 * a8;
    if (24 * a8)
    {
      v17 = (a7 + 16);
      v18 = 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v19 = *(v17 - 1);
        v20 = v19 + a1;
        if (v19 + a1 <= a3)
        {
          v20 = a3;
        }

        v21 = a4 - v19;
        if (a4 - v19 >= a2)
        {
          v21 = a2;
        }

        v22 = v20 - a9;
        v23 = a10 - v21;
        if (v23 < v22)
        {
          v22 = v23;
        }

        if (v19 >= v22)
        {
          v19 = v22;
        }

        if (v10 < v19)
        {
          v19 = a10 - a9;
        }

        v24 = v19 * *v17;
        if (v24 < v18)
        {
          v18 = v24;
        }

        v17 += 3;
        v16 -= 24;
      }

      while (v16);
      if (result <= v18)
      {
        v25 = v18;
      }

      else
      {
        v25 = result;
      }

      if (v18 != 0x7FFFFFFFFFFFFFFELL)
      {
        return v25;
      }
    }
  }

  return result;
}

uint64_t operations_research::sat::SchedulingDemandHelper::SchedulingDemandHelper(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a1 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a5);
  *(a1 + 8) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ProductDecomposer>(a5);
  *(a1 + 16) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a5);
  v9 = *(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a5) + 27);
  *(a1 + 32) = 0;
  *(a1 + 24) = v9 + 16;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (24 * a3)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((24 * a3) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 64) = 0u;
  *(a1 + 56) = a4;
  *(a1 + 112) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 176) = 0;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 88) - *(a4 + 80)) >> 3);
  v11 = 0xAAAAAAAB00000000 * ((*(a4 + 88) - *(a4 + 80)) >> 3);
  v12 = v10;
  if (v11)
  {
    std::vector<std::optional<operations_research::sat::LinearExpression>>::__append((a1 + 160), v10);
    v11 = *(a1 + 136);
    v13 = *(a1 + 144);
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v11) >> 3);
    v15 = v12 >= v14;
    v16 = v12 - v14;
    if (v12 > v14)
    {
LABEL_6:
      std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(a1 + 136, v16);
      goto LABEL_15;
    }
  }

  else
  {
    v13 = 0;
    v15 = 1;
    v16 = v12;
    if (v12)
    {
      goto LABEL_6;
    }
  }

  if (!v15)
  {
    v17 = v11 + 24 * v12;
    if (v13 != v17)
    {
      v18 = v13;
      do
      {
        v20 = *(v18 - 24);
        v18 -= 24;
        v19 = v20;
        if (v20)
        {
          *(v13 - 16) = v19;
          operator delete(v19);
        }

        v13 = v18;
      }

      while (v18 != v17);
    }

    *(a1 + 144) = v17;
  }

LABEL_15:
  v21 = *(a1 + 64);
  v22 = (*(a1 + 72) - v21) >> 3;
  if (v12 <= v22)
  {
    if (v12 < v22)
    {
      *(a1 + 72) = v21 + 8 * v12;
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(a1 + 64, v12 - v22, &operations_research::sat::kMinIntegerValue);
  }

  v23 = *(a1 + 88);
  v24 = (*(a1 + 96) - v23) >> 3;
  if (v12 <= v24)
  {
    if (v12 < v24)
    {
      *(a1 + 96) = v23 + 8 * v12;
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(a1 + 88, v12 - v24, &operations_research::sat::kMaxIntegerValue);
  }

  std::vector<BOOL>::resize(a1 + 112, v12, 0);
  operations_research::sat::SchedulingDemandHelper::InitDecomposedEnergies(a1);
  return a1;
}

void sub_23CC26790(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void ***std::vector<std::optional<operations_research::sat::LinearExpression>>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = v3;
        v3 -= 8;
        if (*(v5 - 8) == 1)
        {
          v6 = *(v5 - 5);
          if (v6)
          {
            *(v5 - 4) = v6;
            operator delete(v6);
          }

          v7 = *v3;
          if (*v3)
          {
            *(v5 - 7) = v7;
            operator delete(v7);
          }
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t operations_research::sat::SchedulingDemandHelper::DemandMin(operations_research::sat::SchedulingDemandHelper *this, int a2)
{
  v3 = (*(this + 4) + 24 * a2);
  result = *(v3 + 2);
  if (*v3 != -1)
  {
    result += *(*(*this + 40) + 8 * *v3) * *(v3 + 1);
  }

  return result;
}

uint64_t operations_research::sat::SchedulingDemandHelper::DemandMax(operations_research::sat::SchedulingDemandHelper *this, int a2)
{
  v3 = (*(this + 4) + 24 * a2);
  result = *(v3 + 2);
  if (*v3 != -1)
  {
    result -= *(*(*this + 40) + ((8 * *v3) ^ 8)) * *(v3 + 1);
  }

  return result;
}

void *operations_research::sat::SchedulingDemandHelper::CacheAllEnergyValues(void *this)
{
  v1 = this[9] - this[8];
  if ((v1 >> 3) >= 1)
  {
    v2 = this;
    v3 = 0;
    v4 = (v1 >> 3);
    v5 = *(this[2] + 296);
    do
    {
      if (v5)
      {
        goto LABEL_4;
      }

      v20 = v2[17];
      v21 = *(v20 + 24 * v3);
      v22 = *(v20 + 24 * v3 + 8);
      v23 = v22 - v21;
      if (v22 == v21)
      {
        v61 = 0;
        v28 = 0xAAAAAAAAAAAAAAABLL * (v23 >> 3);
      }

      else
      {
        v24 = 0;
        v25 = 0;
        v26 = 1;
        do
        {
          v29 = (v21 + 24 * v24);
          if (((*(*(v2[3] + 8) + ((*v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*v29 & 0x3F ^ 1u)) & 1) == 0)
          {
            v30 = v21 + 24 * v25;
            v31 = *v29;
            *(v30 + 16) = *(v29 + 2);
            *v30 = v31;
            v20 = v2[17];
            ++v25;
          }

          v24 = v26;
          v27 = (v20 + 24 * v3);
          v21 = *v27;
          v28 = 0xAAAAAAAAAAAAAAABLL * ((v27[1] - *v27) >> 3);
          ++v26;
        }

        while (v28 > v24);
        v61 = v25;
        if (v25 > v28)
        {
          std::vector<operations_research::sat::OrthogonalPackingResult::Item>::__append(v27, v25 - v28);
          goto LABEL_4;
        }
      }

      if (v28 > v61)
      {
        *(v20 + 24 * v3 + 8) = v21 + 24 * v61;
      }

LABEL_4:
      v6 = v2[4];
      v7 = 0x8000000000000002;
      if (v6 != v2[5])
      {
        v8 = (v6 + 24 * v3);
        v9 = *(v8 + 2);
        if (*v8 != -1)
        {
          v9 += *(*(*v2 + 40) + 8 * *v8) * *(v8 + 1);
        }

        v7 = *(*(v2[7] + 232) + 8 * v3) * v9;
      }

      v10 = 0x8000000000000002;
      if (*(v2[20] + (v3 << 6) + 56) == 1)
      {
        v10 = operations_research::sat::LinearExpression::Min((v2[20] + (v3 << 6)), *v2);
      }

      v11 = v2[17] + 24 * v3;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = 0x8000000000000002;
      if (v12 != v13)
      {
        v14 = 0x7FFFFFFFFFFFFFFELL;
        v15 = v12;
        while (1)
        {
          v16 = *(v15 + 1);
          v17 = *(v15 + 2);
          v18 = *(*(v2[3] + 8) + ((*v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
          if ((v18 >> *v15))
          {
            break;
          }

          v19 = v17 * v16;
          if (v19 >= v14)
          {
            v19 = v14;
          }

          if (((v18 >> (*v15 & 0x3F ^ 1u)) & 1) == 0)
          {
            v14 = v19;
          }

          v15 += 6;
          if (v15 == v13)
          {
            goto LABEL_25;
          }
        }

        v14 = v17 * v16;
      }

LABEL_25:
      if (v7 <= v10)
      {
        v32 = v10;
      }

      else
      {
        v32 = v7;
      }

      if (v32 > v14)
      {
        v14 = v32;
      }

      v33 = v2[8];
      *(v33 + 8 * v3) = v14;
      if (v14 == 0x8000000000000002)
      {
        operations_research::sat::SchedulingDemandHelper::CacheAllEnergyValues(v33, v3, v62);
      }

      v34 = v2[4];
      v35 = v2[5];
      v36 = v3 >> 6;
      if (v12 != v13 || v34 == v35 || (v37 = *(v34 + 24 * v3), v37 == -1) || !(*(*(*v2 + 40) + 8 * v37) + *(*(*v2 + 40) + ((8 * v37) ^ 8))) || (v38 = v2[7], v39 = *(*(v38 + 128) + 24 * v3), v39 == -1))
      {
        v44 = (v2[14] + 8 * v36);
        v45 = 1 << v3;
      }

      else
      {
        v40 = *(*(v38 + 32) + 40);
        v41 = 8 * v39;
        v42 = *(v40 + v41);
        v43 = *(v40 + (v41 ^ 8));
        v44 = (v2[14] + 8 * v36);
        v45 = 1 << v3;
        if (v42 + v43)
        {
          *v44 |= v45;
          if (v34 == v35)
          {
            goto LABEL_38;
          }

          goto LABEL_50;
        }
      }

      *v44 &= ~v45;
      if (v34 == v35)
      {
LABEL_38:
        v46 = 0x7FFFFFFFFFFFFFFELL;
        v47 = (v2[20] + (v3 << 6));
        if (*(v47 + 56) != 1)
        {
          goto LABEL_39;
        }

        goto LABEL_55;
      }

LABEL_50:
      v54 = (v34 + 24 * v3);
      v55 = *(v54 + 2);
      if (*v54 != -1)
      {
        v55 -= *(*(*v2 + 40) + ((8 * *v54) ^ 8)) * *(v54 + 1);
      }

      v56 = v2[7];
      v57 = (*(v56 + 128) + 24 * v3);
      v58 = *(v57 + 2);
      if (*v57 != -1)
      {
        v58 -= *(*(*(v56 + 32) + 40) + ((8 * *v57) ^ 8)) * *(v57 + 1);
      }

      v46 = v58 * v55;
      v47 = (v2[20] + (v3 << 6));
      if (*(v47 + 56) != 1)
      {
LABEL_39:
        v48 = 0x7FFFFFFFFFFFFFFELL;
        if (v12 != v13)
        {
          goto LABEL_40;
        }

        goto LABEL_56;
      }

LABEL_55:
      v48 = operations_research::sat::LinearExpression::Max(v47, *v2);
      v59 = v2[17] + 24 * v3;
      v12 = *v59;
      v13 = *(v59 + 8);
      if (v12 != v13)
      {
LABEL_40:
        v49 = 0x8000000000000002;
        while (1)
        {
          v50 = *(v12 + 1);
          v51 = *(v12 + 2);
          v52 = *(*(v2[3] + 8) + ((*v12 >> 3) & 0x1FFFFFFFFFFFFFF8));
          if ((v52 >> *v12))
          {
            break;
          }

          v53 = v51 * v50;
          if (v49 > v53)
          {
            v53 = v49;
          }

          if (((v52 >> (*v12 & 0x3F ^ 1u)) & 1) == 0)
          {
            v49 = v53;
          }

          v12 += 6;
          if (v12 == v13)
          {
            goto LABEL_58;
          }
        }

        v49 = v51 * v50;
        goto LABEL_58;
      }

LABEL_56:
      v49 = 0x7FFFFFFFFFFFFFFELL;
LABEL_58:
      if (v48 >= v46)
      {
        v60 = v46;
      }

      else
      {
        v60 = v48;
      }

      if (v49 < v60)
      {
        v60 = v49;
      }

      this = v2[11];
      this[v3] = v60;
      if (v60 == 0x7FFFFFFFFFFFFFFELL)
      {
        operations_research::sat::SchedulingDemandHelper::CacheAllEnergyValues(this, v3, v62);
      }

      ++v3;
    }

    while (v3 != v4);
  }

  return this;
}

uint64_t operations_research::sat::SchedulingDemandHelper::DecreaseEnergyMax(void *a1, int a2, uint64_t a3)
{
  if (*(a1[8] + 8 * a2) > a3)
  {
    v4 = a1[7];
    if (*(*(v4 + 19) + 4 * a2) == -1)
    {
      goto LABEL_32;
    }

    return operations_research::sat::SchedulingConstraintHelper::PushTaskAbsence(v4, a2);
  }

  v7 = a1[17] + 24 * a2;
  v8 = *v7;
  v9 = *(v7 + 8);
  if (*v7 == v9)
  {
    v10 = a1[20] + (a2 << 6);
    if (*(v10 + 56) == 1 && (v11 = *v10, *(v10 + 8) - *v10 == 4))
    {
      v12 = **(v10 + 24);
      v13 = *(v10 + 48);
      v14 = *v11 ^ (v12 >> 63);
      if (v12 < 0)
      {
        v12 = -v12;
      }

      v15 = (a3 - v13) / v12 - ((a3 - v13) / v12 * v12 > a3 - v13);
      if (v15 >= 0x8000000000000002)
      {
        v16 = -v15;
      }

      else
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v17 = a3 < v13;
      v18 = 1;
      if (!v17)
      {
        v18 = -1;
      }

      if (v14 == -1)
      {
        v19 = 0xFFFFFFFFLL;
      }

      else
      {
        v19 = v14 ^ 1u;
      }

      if (v14 == -1)
      {
        v20 = v18;
      }

      else
      {
        v20 = v16;
      }

      if ((operations_research::sat::SchedulingConstraintHelper::PushIntegerLiteralIfTaskPresent(a1[7], a2, v19, v20) & 1) == 0)
      {
        return 0;
      }
    }

    else if (dword_27E25D108[0] >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&operations_research::sat::SchedulingDemandHelper::DecreaseEnergyMax(int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0::operator() const(void)::site, dword_27E25D108[0]))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v25, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/intervals.cc", 1030);
      v24 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v25, 3);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v24, "Cumulative energy missed propagation", 0x24uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v25);
      return 1;
    }

    return 1;
  }

  while (*(v8 + 2) * *(v8 + 1) <= a3)
  {
LABEL_24:
    v8 += 6;
    if (v8 == v9)
    {
      return 1;
    }
  }

  v21 = *v8;
  v22 = *(*(a1[3] + 8) + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8));
  if (((v22 >> v21) & 1) == 0)
  {
    if (((v22 >> (v21 & 0x3F ^ 1)) & 1) == 0)
    {
      v23 = a1[7];
      operations_research::sat::IntegerTrail::EnqueueLiteral(*(v23 + 32), v21 ^ 1, *(v23 + 496), (*(v23 + 504) - *(v23 + 496)) >> 2, *(v23 + 520), (*(v23 + 528) - *(v23 + 520)) >> 4);
    }

    goto LABEL_24;
  }

  v4 = a1[7];
LABEL_32:

  return operations_research::sat::SchedulingConstraintHelper::ReportConflict(v4);
}

void operations_research::sat::SchedulingDemandHelper::AddDemandMinReason(operations_research::sat::SchedulingDemandHelper *this, int a2)
{
  v4 = *(*(this + 4) + 24 * a2);
  if (v4 != -1)
  {
    v8 = v2;
    v9 = v3;
    v5 = *(this + 7);
    v6 = *(*(*this + 40) + 8 * v4);
    *&v7 = v4;
    *(&v7 + 1) = v6;
    std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v5 + 520, &v7);
  }
}

void operations_research::sat::SchedulingDemandHelper::AddEnergyMinReason(operations_research::sat::SchedulingDemandHelper *this, int a2)
{
  v4 = *(*(this + 8) + 8 * a2);
  v5 = *(this + 17);
  v6 = 24 * a2;
  v7 = *(v5 + v6 + 8);
  v8 = *(v5 + v6);
  if (v8 == v7)
  {
    if (v4 <= 0x8000000000000002)
    {
      return;
    }

LABEL_14:
    v16 = *(this + 4);
    if (v16 == *(this + 5))
    {
      if (v4 > 0x8000000000000002)
      {
LABEL_18:
        v19 = (*(this + 20) + (a2 << 6));
        v20 = *v19;
        v21 = v19[1];
        if (*v19 != v21)
        {
          do
          {
            v22 = *v20++;
            v23 = *(this + 7);
            v24 = *(*(*this + 40) + 8 * v22);
            *&v44 = v22;
            *(&v44 + 1) = v24;
            std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v23 + 520, &v44);
          }

          while (v20 != v21);
        }

        return;
      }
    }

    else
    {
      v17 = (v16 + 24 * a2);
      v18 = *(v17 + 2);
      if (*v17 != -1)
      {
        v18 += *(*(*this + 40) + 8 * *v17) * *(v17 + 1);
      }

      if (*(*(*(this + 7) + 232) + 8 * a2) * v18 < v4)
      {
        goto LABEL_18;
      }
    }

    v30 = *(v16 + 24 * a2);
    if (v30 != -1)
    {
      v31 = *(this + 7);
      v32 = *(*(*this + 40) + 8 * v30);
      *&v44 = v30;
      *(&v44 + 1) = v32;
      std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v31 + 520, &v44);
    }

    v33 = *(this + 7);
    v34 = *(*(v33 + 29) + 8 * a2);
    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v33, a2);
    if (v34 >= 1)
    {
      v35 = *(v33 + 16) + 24 * a2;
      if (*v35 == -1)
      {
        v38 = 0;
        v37 = -1;
      }

      else
      {
        v36 = *(v35 + 8);
        v37 = *v35 ^ (v36 >> 63) ^ 1;
        if (v36 >= 0)
        {
          v38 = *(v35 + 8);
        }

        else
        {
          v38 = -v36;
        }
      }

      v42 = -*(v35 + 16);
      LODWORD(v44) = v37;
      *(&v44 + 1) = v38;
      v45 = v42;
      operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v33, &v44, -v34, (*(v33 + 25) + 24 * a2), (*(v33 + 10) + 24 * a2));
    }

    return;
  }

  v9 = 0x7FFFFFFFFFFFFFFELL;
  v10 = v8;
  while (1)
  {
    v11 = *(v10 + 1);
    v12 = *(v10 + 2);
    v13 = *(*(*(this + 3) + 8) + ((*v10 >> 3) & 0x1FFFFFFFFFFFFFF8));
    if ((v13 >> *v10))
    {
      break;
    }

    v14 = v12 * v11;
    if (v14 >= v9)
    {
      v14 = v9;
    }

    if (((v13 >> (*v10 & 0x3F ^ 1u)) & 1) == 0)
    {
      v9 = v14;
    }

    v10 += 6;
    if (v10 == v7)
    {
      if (v9 < v4)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (v12 * v11 < v4)
  {
    goto LABEL_14;
  }

LABEL_21:
  v25 = *(this + 7);
  v26 = *(v25 + 504) - *(v25 + 496);
  while (1)
  {
    v27 = *(v8 + 2);
    v44 = *v8;
    v45 = v27;
    v28 = v44;
    v29 = *(*(*(this + 3) + 8) + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8));
    if ((v29 >> v44))
    {
      break;
    }

    if (v45 * *(&v44 + 1) < v4 && ((v29 >> (v44 & 0x3F ^ 1)) & 1) != 0)
    {
      std::vector<int>::push_back[abi:ne200100](v25 + 496, &v44);
    }

    v8 += 6;
    if (v8 == v7)
    {
      return;
    }
  }

  v39 = (v26 >> 2);
  v40 = *(v25 + 496);
  v41 = (*(v25 + 504) - v40) >> 2;
  if (v39 <= v41)
  {
    if (v39 < v41)
    {
      *(v25 + 504) = v40 + 4 * v39;
    }
  }

  else
  {
    std::vector<int>::__append((v25 + 496), v39 - v41);
    v28 = v44;
  }

  v43 = v28 ^ 1;
  std::vector<int>::push_back[abi:ne200100](v25 + 496, &v43);
}

uint64_t operations_research::sat::SchedulingDemandHelper::AddLinearizedDemand(operations_research::sat::SchedulingDemandHelper *this, int a2, operations_research::sat::LinearConstraintBuilder *a3)
{
  v4 = *(this + 7);
  v5 = *(*(v4 + 152) + 4 * a2);
  if (v5 == -1 || (v6 = *(*(*(v4 + 24) + 24) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)), ((v6 >> v5) & 1) != 0))
  {
    v7 = (*(this + 17) + 24 * a2);
    v8 = *v7;
    v9 = v7[1];
    if (*v7 == v9)
    {
      v11 = *(this + 4) + 24 * a2;
      v12 = *(v11 + 16);
      v15 = *v11;
      v16 = v12;
      operations_research::sat::LinearConstraintBuilder::AddTerm(a3, &v15, 1);
      return 1;
    }

    else
    {
      do
      {
        result = operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(a3, *v8, *(v8 + 16));
        v8 += 24;
      }

      while (v8 != v9 && (result & 1) != 0);
    }
  }

  else if ((v6 >> (v5 & 0x3F ^ 1)))
  {
    return 1;
  }

  else
  {
    v13 = (*(this + 4) + 24 * a2);
    v14 = *(v13 + 2);
    if (*v13 != -1)
    {
      v14 += *(*(*this + 40) + 8 * *v13) * *(v13 + 1);
    }

    return operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(a3, v5, v14);
  }

  return result;
}

void operations_research::sat::AddIntegerVariableFromIntervals(void *a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
  v7 = a1[10];
  if ((-1431655765 * ((a1[11] - v7) >> 3)) >= 1)
  {
    v8 = v6;
    v9 = 0;
    v10 = 0;
    do
    {
      if (*(v7 + v9) != -1)
      {
        std::vector<int>::push_back[abi:ne200100](a3, (v7 + v9));
      }

      v11 = a1[16];
      if (*(v11 + v9) != -1)
      {
        std::vector<int>::push_back[abi:ne200100](a3, (v11 + v9));
      }

      v12 = a1[13];
      if (*(v12 + v9) != -1)
      {
        std::vector<int>::push_back[abi:ne200100](a3, (v12 + v9));
      }

      v13 = *(a1[19] + 4 * v10);
      if (v13 != -1)
      {
        v14 = *(*(a1[3] + 24) + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8));
        if (((v14 >> (v13 & 0x3F ^ 1u)) & 1) == 0 && ((v14 >> (v13 & 0x3F)) & 1) == 0)
        {
          v15 = -1;
          if ((operations_research::sat::IntegerEncoder::LiteralOrNegationHasView(v8, v13, &v15, 0) & 1) == 0)
          {
            v16 = &unk_284F435C8;
            v17[0] = v13;
            v18 = &v16;
            v15 = operations_research::sat::NewIntegerVariableFromLiteral(operations_research::sat::Literal)::{lambda(operations_research::sat::Model *)#1}::operator()(v17, a2);
            if (v18 == &v16)
            {
              (*(*v18 + 4))(v18);
            }

            else if (v18)
            {
              (*(*v18 + 5))();
            }
          }

          std::vector<int>::push_back[abi:ne200100](a3, &v15);
        }
      }

      ++v10;
      v7 = a1[10];
      v9 += 24;
    }

    while (v10 < (-1431655765 * ((a1[11] - v7) >> 3)));
  }
}

void sub_23CC277EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::function<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> ()(operations_research::sat::Model *)>::~function(va);
  _Unwind_Resume(a1);
}

void operations_research::sat::AppendVariablesFromCapacityAndDemands(_DWORD *a1, void *a2, void *a3, void **a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a3);
  v8 = a2[4];
  v7 = a2[5];
  while (v8 != v7)
  {
    if (*v8 != -1)
    {
      if (*(*(v6 + 5) + 8 * *v8) + *(*(v6 + 5) + ((8 * *v8) ^ 8)))
      {
        std::vector<int>::push_back[abi:ne200100](a4, v8);
      }
    }

    v8 += 6;
  }

  v24 = v6;
  v9 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a3);
  v10 = a2[17];
  v26 = a2[18];
  if (v10 != v26)
  {
    v11 = v9;
    do
    {
      v13 = *v10;
      v12 = v10[1];
      v27 = v10;
      while (v13 != v12)
      {
        v29 = -1;
        if (operations_research::sat::IntegerEncoder::LiteralOrNegationHasView(v11, *v13, &v29, 0))
        {
          goto LABEL_18;
        }

        v15 = *v13;
        v30 = &unk_284F435C8;
        v31[0] = v15;
        v32 = &v30;
        v29 = operations_research::sat::NewIntegerVariableFromLiteral(operations_research::sat::Literal)::{lambda(operations_research::sat::Model *)#1}::operator()(v31, a3);
        if (v32 != &v30)
        {
          if (v32)
          {
            (*(*v32 + 5))();
          }

LABEL_18:
          v17 = a4[1];
          v16 = a4[2];
          if (v17 < v16)
          {
            goto LABEL_11;
          }

          goto LABEL_19;
        }

        (*(*v32 + 4))(v32);
        v17 = a4[1];
        v16 = a4[2];
        if (v17 < v16)
        {
LABEL_11:
          *v17 = v29;
          v14 = v17 + 4;
          goto LABEL_12;
        }

LABEL_19:
        v18 = *a4;
        v19 = v17 - *a4;
        v20 = v19 >> 2;
        v21 = (v19 >> 2) + 1;
        if (v21 >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v22 = v16 - v18;
        if (v22 >> 1 > v21)
        {
          v21 = v22 >> 1;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v23 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          if (!(v23 >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(4 * v20) = v29;
        v14 = (4 * v20 + 4);
        memcpy(0, v18, v19);
        *a4 = 0;
        a4[1] = v14;
        a4[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }

LABEL_12:
        a4[1] = v14;
        v13 += 6;
      }

      v10 = v27 + 3;
    }

    while (v27 + 3 != v26);
  }

  if (*a1 != -1 && *(*(v24 + 5) + 8 * *a1) + *(*(v24 + 5) + ((8 * *a1) ^ 8)))
  {
    std::vector<int>::push_back[abi:ne200100](a4, a1);
  }
}

void sub_23CC27AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::function<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> ()(operations_research::sat::Model *)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<operations_research::sat::NewIntegerVariableFromLiteral(operations_research::sat::Literal)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::NewIntegerVariableFromLiteral(operations_research::sat::Literal)::{lambda(operations_research::sat::Model *)#1}>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> ()(operations_research::sat::Model *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284F435C8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<operations_research::sat::NewIntegerVariableFromLiteral(operations_research::sat::Literal)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::NewIntegerVariableFromLiteral(operations_research::sat::Literal)::{lambda(operations_research::sat::Model *)#1}>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE4C3FELL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE4C3FELL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE4C3FELL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE4C3FELL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t operations_research::sat::NewIntegerVariableFromLiteral(operations_research::sat::Literal)::{lambda(operations_research::sat::Model *)#1}::operator()(unsigned int *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
  v5 = v4[28];
  if (*a1 >= ((v4[29] - v5) >> 2) || (ConstantIntegerVariable = *(v5 + 4 * *a1), ConstantIntegerVariable == -1))
  {
    v7 = *(*(*(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2) + 27) + 24) + ((*a1 >> 3) & 0x1FFFFFFFFFFFFFF8));
    if ((v7 >> *a1))
    {
      v19 = &unk_284F3F018;
      v20 = 1;
      v21 = &v19;
      v8 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
      ConstantIntegerVariable = operations_research::sat::IntegerTrail::GetOrCreateConstantIntegerVariable(v8, v20);
      v9 = v21;
      if (v21 != &v19)
      {
        goto LABEL_5;
      }

LABEL_9:
      (*(*v9 + 4))(v9);
LABEL_10:
      operations_research::sat::IntegerEncoder::AssociateToIntegerEqualValue(v4, *a1, ConstantIntegerVariable, 1);
      return ConstantIntegerVariable;
    }

    if ((v7 >> (*a1 & 0x3F ^ 1)))
    {
      v16 = &unk_284F3F018;
      v17 = 0;
      v18 = &v16;
      v10 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
      ConstantIntegerVariable = operations_research::sat::IntegerTrail::GetOrCreateConstantIntegerVariable(v10, v17);
      v9 = v18;
      if (v18 == &v16)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v13 = &unk_284F3F128;
      v14 = xmmword_23CE48D30;
      v15 = &v13;
      v12 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
      ConstantIntegerVariable = operations_research::sat::IntegerTrail::AddIntegerVariable(v12, v14, *(&v14 + 1));
      v9 = v15;
      if (v15 == &v13)
      {
        goto LABEL_9;
      }
    }

LABEL_5:
    if (v9)
    {
      (*(*v9 + 5))(v9);
    }

    goto LABEL_10;
  }

  return ConstantIntegerVariable;
}

void sub_23CC27E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::function<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> ()(operations_research::sat::Model *)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_23CC27E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::function<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> ()(operations_research::sat::Model *)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_23CC27E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::function<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> ()(operations_research::sat::Model *)>::~function(va);
  _Unwind_Resume(a1);
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const,operations_research::sat::Literal>>>::find_or_prepare_insert<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>@<X0>(unint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1uLL)
  {
    v6 = 0;
    _X10 = *(result + 16);
    __asm { PRFM            #4, [X10] }

    v12 = *a2;
    v13 = a2[1];
    v14 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12))) + v13;
    v15 = ((v14 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v14);
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((v15 >> 7) ^ (_X10 >> 12)) & v3;
    v18 = *(_X10 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_5:
      v20 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v3;
      v21 = (*(result + 24) + 12 * v20);
      if (*v21 == v12 && v21[1] == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v21;
        *(a3 + 16) = 0;
        return result;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v19);
LABEL_10:
    while (1)
    {
      v23 = vceq_s8(v18, 0x8080808080808080);
      if (v23)
      {
        break;
      }

      v6 += 8;
      v17 = (v6 + v17) & v3;
      v18 = *(_X10 + v17);
      v19 = vceq_s8(v18, v16);
      if (v19)
      {
        goto LABEL_5;
      }
    }

    v25 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v15, (v17 + (__clz(__rbit64(v23)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const,operations_research::sat::Literal>>>::GetPolicyFunctions(void)::value);
    v27 = *(v25 + 24) + 12 * result;
    *a3 = *(v25 + 16) + result;
    *(a3 + 8) = v27;
    *(a3 + 16) = 1;
  }

  else
  {
    if (*(result + 8) > 1uLL)
    {
      v4 = result + 16;
      if (*(result + 16) != *a2 || *(result + 20) != a2[1])
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const,operations_research::sat::Literal>>>::resize_impl(result, 3);
      }

      v5 = 0;
    }

    else
    {
      *(result + 8) = 2;
      v4 = result + 16;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const,operations_research::sat::Literal>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a1 < 2uLL && v3 > 1;
  if (v5)
  {
    v6 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 16)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 16)))) + *(a1 + 20);
    v7 = (((v6 * 0x9DDFEA08EB382D69) >> 64) ^ (105 * v6)) & 0x7F;
  }

  else
  {
    v7 = 0x80;
  }

  v9 = *a1;
  v10 = v3 & 1;
  v11 = v2 < 2;
  v12 = v5;
  if (v5)
  {
    *&v8 = *(a1 + 16);
    DWORD2(v8) = *(a1 + 24);
  }

  else
  {
    v8 = *(a1 + 16);
  }

  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,12ul,false,true,4ul>(&v8, a1, v7);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const,operations_research::sat::Literal>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v3;
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>,std::equal_to<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>,std::allocator<std::pair<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression> const,operations_research::sat::Literal>>>::find_or_prepare_insert_non_soo<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>@<X0>(unint64_t *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  _X10 = result[2];
  __asm { PRFM            #4, [X10] }

  v9 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
  v10 = *a2;
  if (v10 != -1)
  {
    v11 = *(a2 + 1) + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v10) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v10)));
    v9 = (((v11 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v11));
  }

  v12 = *(a2 + 2);
  v13 = (((v9 + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v9 + v12));
  v14 = a2[6];
  v15 = *(a2 + 4);
  if (v14 != -1)
  {
    v16 = v15 + ((((v13 + v14) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v13 + v14)));
    v13 = ((v16 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v16);
  }

  v17 = 0;
  v18 = *(a2 + 5);
  v19 = (((v18 + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v18 + v13));
  v20 = *result;
  v21 = vdup_n_s8(v19 & 0x7F);
  v22 = *(a2 + 1);
  v23 = ((v19 >> 7) ^ (_X10 >> 12)) & *result;
  v24 = *(_X10 + v23);
  v25 = vceq_s8(v24, v21);
  if (v25)
  {
LABEL_6:
    while (1)
    {
      v26 = (v23 + (__clz(__rbit64(v25)) >> 3)) & v20;
      v27 = result[3] + 56 * v26;
      _ZF = *v27 == v10 && *(v27 + 8) == v22;
      if (_ZF && *(v27 + 16) == v12)
      {
        v30 = *(v27 + 24) == v14 && *(v27 + 32) == v15;
        if (v30 && *(v27 + 40) == v18)
        {
          break;
        }
      }

      v25 &= ((v25 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v25)
      {
        goto LABEL_21;
      }
    }

    *a3 = _X10 + v26;
    *(a3 + 8) = v27;
    *(a3 + 16) = 0;
  }

  else
  {
LABEL_21:
    while (1)
    {
      v31 = vceq_s8(v24, 0x8080808080808080);
      if (v31)
      {
        break;
      }

      v17 += 8;
      v23 = (v17 + v23) & v20;
      v24 = *(_X10 + v23);
      v25 = vceq_s8(v24, v21);
      if (v25)
      {
        goto LABEL_6;
      }
    }

    v32 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v19, (v23 + (__clz(__rbit64(v31)) >> 3)) & v20, v17, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>,std::equal_to<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>,std::allocator<std::pair<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression> const,operations_research::sat::Literal>>>::GetPolicyFunctions(void)::value);
    v34 = v32[3] + 56 * result;
    *a3 = result + v32[2];
    *(a3 + 8) = v34;
    *(a3 + 16) = 1;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>,std::equal_to<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>,std::allocator<std::pair<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression> const,operations_research::sat::Literal>>>::resize_impl(uint64_t *a1, uint64_t a2)
{
  v6 = a1;
  v3 = *a1;
  v4 = a1[1] & 1;
  v5 = 0;
  v2 = *(a1 + 1);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,56ul,false,false,8ul>(&v2, a1);
}

uint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>,std::equal_to<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>,std::allocator<std::pair<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression> const,operations_research::sat::Literal>>>::resize_impl(absl::lts_20240722::container_internal::CommonFields &,unsigned long,absl::lts_20240722::container_internal::HashtablezInfoHandle)::{lambda(absl::lts_20240722::container_internal::map_slot_type<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>,operations_research::sat::Literal> *)#1}::operator()(uint64_t a1, unsigned int *a2)
{
  v2 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
  v3 = *a2;
  if (v3 != -1)
  {
    v4 = *(a2 + 1) + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v3) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v3)));
    v2 = (((v4 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v4));
  }

  v5 = (((v2 + *(a2 + 2)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v2 + *(a2 + 2)));
  v6 = a2[6];
  if (v6 != -1)
  {
    v7 = *(a2 + 4) + ((((v5 + v6) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v5 + v6)));
    v5 = ((v7 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v7);
  }

  v8 = (((*(a2 + 5) + v5) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (*(a2 + 5) + v5));
  v9 = *(a1 + 8);
  v10 = v9[2];
  v11 = *v9;
  v12 = ((v8 >> 7) ^ (v10 >> 12)) & *v9;
  if (*(v10 + v12) >= -1)
  {
    v14 = *(v10 + v12) & ~(*(v10 + v12) << 7) & 0x8080808080808080;
    if (v14)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      do
      {
        v13 += 8;
        v12 = (v13 + v12) & v11;
        v14 = *(v10 + v12) & ~(*(v10 + v12) << 7) & 0x8080808080808080;
      }

      while (!v14);
    }

    v12 = (v12 + (__clz(__rbit64(v14)) >> 3)) & v11;
  }

  else
  {
    v13 = 0;
  }

  v15 = v8 & 0x7F;
  *(v10 + v12) = v15;
  *(v10 + ((v12 - 7) & v11) + (v11 & 7)) = v15;
  v16 = **(a1 + 16) + 56 * v12;
  v17 = *a2;
  v18 = *(a2 + 1);
  v19 = *(a2 + 2);
  *(v16 + 48) = *(a2 + 6);
  *(v16 + 16) = v18;
  *(v16 + 32) = v19;
  *v16 = v17;
  return v13;
}

uint64_t absl::lts_20240722::container_internal::TypeErasedApplyToSlotFn<absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>,std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>(uint64_t a1, unsigned int *a2)
{
  v2 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
  v3 = *a2;
  if (v3 != -1)
  {
    v4 = *(a2 + 1) + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v3) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v3)));
    v2 = (((v4 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v4));
  }

  v5 = (((v2 + *(a2 + 2)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v2 + *(a2 + 2)));
  v6 = a2[6];
  if (v6 != -1)
  {
    v7 = *(a2 + 4) + ((((v5 + v6) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v5 + v6)));
    v5 = ((v7 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v7);
  }

  return (((*(a2 + 5) + v5) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (*(a2 + 5) + v5));
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>,std::equal_to<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>,std::allocator<std::pair<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression> const,operations_research::sat::Literal>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  v5 = *(a3 + 32);
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  *a2 = result;
  return result;
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>,std::equal_to<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>,std::allocator<std::pair<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression> const,operations_research::sat::Literal>>>::find<std::pair<operations_research::sat::AffineExpression,operations_research::sat::AffineExpression>>(uint64_t *a1, unsigned int *a2)
{
  _X8 = a1[2];
  __asm { PRFM            #4, [X8] }

  v7 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
  v8 = *a2;
  if (v8 != -1)
  {
    v9 = *(a2 + 1) + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v8) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v8)));
    v7 = (((v9 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v9));
  }

  v10 = *(a2 + 2);
  v11 = (((v7 + v10) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v7 + v10));
  v12 = a2[6];
  v13 = *(a2 + 4);
  if (v12 != -1)
  {
    v14 = v13 + ((((v11 + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v11 + v12)));
    v11 = ((v14 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v14);
  }

  v15 = 0;
  v16 = *(a2 + 5);
  v17 = (((v16 + v11) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v16 + v11));
  v18 = *a1;
  v19 = (v17 >> 7) ^ (_X8 >> 12);
  v20 = vdup_n_s8(v17 & 0x7F);
  v21 = *(a2 + 1);
  v22 = v19 & *a1;
  v23 = *(_X8 + v22);
  v24 = vceq_s8(v23, v20);
  if (v24)
  {
LABEL_6:
    while (1)
    {
      v25 = (v22 + (__clz(__rbit64(v24)) >> 3)) & v18;
      v26 = a1[3] + 56 * v25;
      _ZF = *v26 == v8 && *(v26 + 8) == v21;
      if (_ZF && *(v26 + 16) == v10)
      {
        v29 = *(v26 + 24) == v12 && *(v26 + 32) == v13;
        if (v29 && *(v26 + 40) == v16)
        {
          return _X8 + v25;
        }
      }

      v24 &= ((v24 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v24)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:
    while (!*&vceq_s8(v23, 0x8080808080808080))
    {
      v15 += 8;
      v22 = (v15 + v22) & v18;
      v23 = *(_X8 + v22);
      v24 = vceq_s8(v23, v20);
      if (v24)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>,operations_research::sat::SchedulingConstraintHelper *>,absl::lts_20240722::hash_internal::Hash<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::equal_to<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::allocator<std::pair<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const,operations_research::sat::SchedulingConstraintHelper *>>>::find_or_prepare_insert_non_soo<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>@<X0>(unint64_t *result@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  _X8 = result[2];
  __asm { PRFM            #4, [X8] }

  v10 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
  v11 = *a2;
  v12 = a2[1];
  v13 = v12 - *a2;
  if (v12 > *a2)
  {
    v14 = *a2;
    do
    {
      v15 = *v14++;
      v10 = ((((v10 + v15) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v10 + v15)));
    }

    while (v14 < v12);
  }

  v16 = 0;
  v17 = (((v10 + (v13 >> 2)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v10 + (v13 >> 2)));
  v18 = *result;
  v19 = vdup_n_s8(v17 & 0x7F);
  v20 = ((v17 >> 7) ^ (_X8 >> 12)) & *result;
  v21 = *(_X8 + v20);
  for (i = vceq_s8(v21, v19); i; i &= ((i & 0x8080808080808080) - 1) & 0x8080808080808080)
  {
LABEL_5:
    v23 = (v20 + (__clz(__rbit64(i)) >> 3)) & v18;
    v24 = result[3] + 32 * v23;
    v25 = *v24;
    v26 = *(v24 + 8);
    if ((v26 - *v24) == v13)
    {
      if (v25 == v26)
      {
LABEL_15:
        *a3 = _X8 + v23;
        *(a3 + 8) = v24;
        *(a3 + 16) = 0;
        return result;
      }

      v27 = v11;
      while (*v25 == *v27)
      {
        ++v25;
        ++v27;
        if (v25 == v26)
        {
          goto LABEL_15;
        }
      }
    }
  }

  while (1)
  {
    v28 = vceq_s8(v21, 0x8080808080808080);
    if (v28)
    {
      break;
    }

    v16 += 8;
    v20 = (v16 + v20) & v18;
    v21 = *(_X8 + v20);
    i = vceq_s8(v21, v19);
    if (i)
    {
      goto LABEL_5;
    }
  }

  v29 = result;
  result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v17, (v20 + (__clz(__rbit64(v28)) >> 3)) & v18, v16, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>,operations_research::sat::SchedulingConstraintHelper *>,absl::lts_20240722::hash_internal::Hash<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::equal_to<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::allocator<std::pair<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const,operations_research::sat::SchedulingConstraintHelper *>>>::GetPolicyFunctions(void)::value);
  v30 = v29[3] + 32 * result;
  *a3 = result + v29[2];
  *(a3 + 8) = v30;
  *(a3 + 16) = 1;
  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>,operations_research::sat::SchedulingConstraintHelper *>,absl::lts_20240722::hash_internal::Hash<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::equal_to<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::allocator<std::pair<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const,operations_research::sat::SchedulingConstraintHelper *>>>::resize_impl(unint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1] & 1;
  v5 = 0;
  v2 = *(a1 + 1);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,false,false,8ul>(&v2, a1);
}

uint64_t absl::lts_20240722::container_internal::TypeErasedApplyToSlotFn<absl::lts_20240722::hash_internal::Hash<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>(uint64_t a1, unint64_t *a2)
{
  v2 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
  v3 = *a2;
  v4 = a2[1];
  if (v4 > *a2)
  {
    do
    {
      v5 = *v3++;
      v2 = ((((v2 + v5) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v2 + v5)));
    }

    while (v3 < v4);
  }

  return (((v2 + ((v4 - *a2) >> 2)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v2 + ((v4 - *a2) >> 2)));
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>,operations_research::sat::SchedulingConstraintHelper *>,absl::lts_20240722::hash_internal::Hash<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::equal_to<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::allocator<std::pair<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const,operations_research::sat::SchedulingConstraintHelper *>>>::transfer_slot_fn(uint64_t a1, __n128 *a2, __n128 *a3)
{
  *a2 = 0uLL;
  a2[1].n128_u64[0] = 0;
  result = *a3;
  *a2 = *a3;
  v4 = a3[1].n128_u64[1];
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a3 = 0uLL;
  a3[1].n128_u64[0] = 0;
  a2[1].n128_u64[1] = v4;
  return result;
}

void *operations_research::sat::Model::Delete<operations_research::sat::SchedulingConstraintHelper>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F436D8;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::SchedulingConstraintHelper>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F436D8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<operations_research::sat::SchedulingDemandHelper>::~Delete(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  *v1 = &unk_284F43710;
  v1[1] = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::sat::SchedulingDemandHelper::~SchedulingDemandHelper(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void operations_research::sat::Model::Delete<operations_research::sat::SchedulingDemandHelper>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F43710;
  a1[1] = 0;
  if (v1)
  {
    operations_research::sat::SchedulingDemandHelper::~SchedulingDemandHelper(v1);
    MEMORY[0x23EED9460]();
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::SchedulingDemandHelper::~SchedulingDemandHelper(operations_research::sat::SchedulingDemandHelper *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    v3 = *(this + 21);
    v4 = *(this + 20);
    if (v3 != v2)
    {
      do
      {
        v5 = v3;
        v3 -= 8;
        if (*(v5 - 8) == 1)
        {
          v6 = *(v5 - 5);
          if (v6)
          {
            *(v5 - 4) = v6;
            operator delete(v6);
          }

          v7 = *v3;
          if (*v3)
          {
            *(v5 - 7) = v7;
            operator delete(v7);
          }
        }
      }

      while (v3 != v2);
      v4 = *(this + 20);
    }

    *(this + 21) = v2;
    operator delete(v4);
  }

  v8 = *(this + 17);
  if (v8)
  {
    v9 = *(this + 18);
    v10 = *(this + 17);
    if (v9 != v8)
    {
      v11 = *(this + 18);
      do
      {
        v13 = *(v11 - 24);
        v11 -= 24;
        v12 = v13;
        if (v13)
        {
          *(v9 - 16) = v12;
          operator delete(v12);
        }

        v9 = v11;
      }

      while (v11 != v8);
      v10 = *(this + 17);
    }

    *(this + 18) = v8;
    operator delete(v10);
  }

  v14 = *(this + 14);
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(this + 11);
  if (v15)
  {
    *(this + 12) = v15;
    operator delete(v15);
  }

  v16 = *(this + 8);
  if (v16)
  {
    *(this + 9) = v16;
    operator delete(v16);
  }

  v17 = *(this + 4);
  if (v17)
  {
    *(this + 5) = v17;
    operator delete(v17);
  }
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>,operations_research::sat::SchedulingDemandHelper *>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>,std::equal_to<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>,std::allocator<std::pair<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>> const,operations_research::sat::SchedulingDemandHelper *>>>::find_or_prepare_insert_non_soo<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>@<X0>(unint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  _X8 = result[2];
  __asm { PRFM            #4, [X8] }

  v9 = *a2;
  v10 = a2[1];
  v11 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2))) + *a2;
  v12 = ((v11 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v11);
  v13 = a2[2];
  v14 = v13 - v10;
  if (v13 > v10)
  {
    v15 = (v10 + 8);
    do
    {
      v16 = v15 - 1;
      v17 = *(v15 - 2);
      if (v17 != -1)
      {
        v18 = *v15 + ((((v12 + v17) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v12 + v17)));
        v12 = ((v18 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v18);
      }

      v12 = (((v15[1] + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v15[1] + v12));
      v15 += 3;
    }

    while ((v16 + 3) < v13);
  }

  v19 = 0;
  v20 = (((v12 - 0x5555555555555555 * (v14 >> 3)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v12 - 0x5555555555555555 * (v14 >> 3)));
  v21 = *result;
  v22 = vdup_n_s8(v20 & 0x7F);
  v23 = ((v20 >> 7) ^ (_X8 >> 12)) & *result;
  v24 = *(_X8 + v23);
  for (i = vceq_s8(v24, v22); i; i &= ((i & 0x8080808080808080) - 1) & 0x8080808080808080)
  {
LABEL_7:
    v26 = (v23 + (__clz(__rbit64(i)) >> 3)) & v21;
    v27 = (result[3] + 40 * v26);
    if (*v27 == v9)
    {
      v29 = v27[1];
      v28 = v27[2];
      if (v28 - v29 == v14)
      {
        if (v29 == v28)
        {
LABEL_23:
          *a3 = _X8 + v26;
          *(a3 + 8) = v27;
          *(a3 + 16) = 0;
          return result;
        }

        v30 = v10;
        while (1)
        {
          _ZF = *v29 == *v30 && *(v29 + 8) == *(v30 + 8);
          if (!_ZF || *(v29 + 16) != *(v30 + 16))
          {
            break;
          }

          v29 += 24;
          v30 += 24;
          if (v29 == v28)
          {
            goto LABEL_23;
          }
        }
      }
    }
  }

  while (1)
  {
    v32 = vceq_s8(v24, 0x8080808080808080);
    if (v32)
    {
      break;
    }

    v19 += 8;
    v23 = (v19 + v23) & v21;
    v24 = *(_X8 + v23);
    i = vceq_s8(v24, v22);
    if (i)
    {
      goto LABEL_7;
    }
  }

  v33 = result;
  result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v20, (v23 + (__clz(__rbit64(v32)) >> 3)) & v21, v19, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>,operations_research::sat::SchedulingDemandHelper *>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>,std::equal_to<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>,std::allocator<std::pair<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>> const,operations_research::sat::SchedulingDemandHelper *>>>::GetPolicyFunctions(void)::value);
  v34 = v33[3] + 40 * result;
  *a3 = result + v33[2];
  *(a3 + 8) = v34;
  *(a3 + 16) = 1;
  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>,operations_research::sat::SchedulingDemandHelper *>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>,std::equal_to<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>,std::allocator<std::pair<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>> const,operations_research::sat::SchedulingDemandHelper *>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,40ul,false,false,8ul>(&v2, a1);
}

uint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>,operations_research::sat::SchedulingDemandHelper *>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>,std::equal_to<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>,std::allocator<std::pair<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>> const,operations_research::sat::SchedulingDemandHelper *>>>::resize_impl(absl::lts_20240722::container_internal::CommonFields &,unsigned long,absl::lts_20240722::container_internal::HashtablezInfoHandle)::{lambda(absl::lts_20240722::container_internal::map_slot_type<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>,operations_research::sat::SchedulingDemandHelper *> *)#1}::operator()(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2))) + *a2;
  v5 = ((v4 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v4);
  v6 = a2[2];
  v7 = v6 - v2;
  if (v6 > v2)
  {
    v8 = (v2 + 8);
    do
    {
      v9 = v8 - 1;
      v10 = *(v8 - 2);
      if (v10 != -1)
      {
        v11 = *v8 + ((((v5 + v10) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v5 + v10)));
        v5 = ((v11 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v11);
      }

      v5 = (((v8[1] + v5) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v8[1] + v5));
      v8 += 3;
    }

    while ((v9 + 3) < v6);
  }

  v12 = (((v5 - 0x5555555555555555 * (v7 >> 3)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v5 - 0x5555555555555555 * (v7 >> 3)));
  v13 = *(a1 + 8);
  v14 = v13[2];
  v15 = *v13;
  v16 = ((v12 >> 7) ^ (v14 >> 12)) & *v13;
  if (*(v14 + v16) >= -1)
  {
    v18 = *(v14 + v16) & ~(*(v14 + v16) << 7) & 0x8080808080808080;
    if (v18)
    {
      v17 = 0;
    }

    else
    {
      v17 = 0;
      do
      {
        v17 += 8;
        v16 = (v17 + v16) & v15;
        v18 = *(v14 + v16) & ~(*(v14 + v16) << 7) & 0x8080808080808080;
      }

      while (!v18);
    }

    v16 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v15;
  }

  else
  {
    v17 = 0;
  }

  v19 = v12 & 0x7F;
  *(v14 + v16) = v19;
  *(v14 + ((v16 - 7) & v15) + (v15 & 7)) = v19;
  v20 = (**(a1 + 16) + 40 * v16);
  *v20 = v3;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = 0;
  *(v20 + 1) = *(a2 + 1);
  v21 = a2[4];
  v20[3] = a2[3];
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  v20[4] = v21;
  return v17;
}

uint64_t absl::lts_20240722::container_internal::TypeErasedApplyToSlotFn<absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>,std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2))) + *a2;
  v4 = ((v3 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v3);
  v5 = a2[2];
  v6 = v5 - v2;
  if (v5 > v2)
  {
    v7 = (v2 + 8);
    do
    {
      v8 = v7 - 1;
      v9 = *(v7 - 2);
      if (v9 != -1)
      {
        v10 = *v7 + ((((v4 + v9) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v4 + v9)));
        v4 = ((v10 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v10);
      }

      v4 = (((v7[1] + v4) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v7[1] + v4));
      v7 += 3;
    }

    while ((v8 + 3) < v5);
  }

  return (((v4 - 0x5555555555555555 * (v6 >> 3)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v4 - 0x5555555555555555 * (v6 >> 3)));
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>,operations_research::sat::SchedulingDemandHelper *>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>,std::equal_to<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>>>,std::allocator<std::pair<std::pair<operations_research::sat::SchedulingConstraintHelper *,std::vector<operations_research::sat::AffineExpression>> const,operations_research::sat::SchedulingDemandHelper *>>>::transfer_slot_fn(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = *a3;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  result = *(a3 + 8);
  *(a2 + 1) = result;
  v4 = *(a3 + 32);
  a2[3] = *(a3 + 24);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  a2[4] = v4;
  return result;
}

void std::vector<operations_research::sat::AffineExpression>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (24 * a2)
    {
      v11 = &v3[3 * a2];
      do
      {
        v3[1] = 0;
        v3[2] = 0;
        *v3 = 0xFFFFFFFFLL;
        v3 += 3;
      }

      while (v3 != v11);
      v3 = v11;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 24 * v5;
    if (24 * a2)
    {
      v9 = v12 + 24 * a2;
      v10 = 24 * v5;
      do
      {
        *(v10 + 8) = 0;
        *(v10 + 16) = 0;
        *v10 = 0xFFFFFFFFLL;
        v10 += 24;
      }

      while (v10 != v9);
    }

    else
    {
      v9 = 24 * v5;
    }

    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

void operations_research::IncrementalSort<std::__wrap_iter<operations_research::sat::TaskTime *>,std::greater<operations_research::sat::TaskTime>>(int a1, __n128 *a2, __n128 *a3, int a4, __n128 a5)
{
  if (a3 - a2 >= 17)
  {
    v6 = a3 - 1;
    if (&a3[-1] != a2)
    {
      v24 = &a3[-2];
      v25 = &a3[-1];
      do
      {
        if (*(v25 + 1) > *(v24 + 1))
        {
          a5 = *v25;
          *v25 = *v24;
          *v24 = a5;
          v6 = v25;
        }

        v25 -= 16;
        v24 -= 16;
      }

      while (v25 != a2);
    }

    v7 = v6 + 1;
    if (&v6[1] != a3 && a1 >= 1)
    {
      v8 = v6 - 1;
      do
      {
        v10 = v7->n128_u64[0];
        v9 = v7->n128_i64[1];
        --a1;
        if (v9 <= v7[-1].n128_u64[1])
        {
          v7->n128_u64[0] = v10;
          v7->n128_u64[1] = v9;
          if (++v7 == a3)
          {
            break;
          }
        }

        else
        {
          v11 = v7 - 1;
          v12 = v8;
          v13 = v7;
          do
          {
            a5 = *v11;
            *v13-- = *v11;
            --a1;
            v11 = v12;
            v14 = v12->n128_i64[1];
            --v12;
          }

          while (v9 > v14);
          v13->n128_u64[0] = v10;
          v13->n128_u64[1] = v9;
          if (++v7 == a3)
          {
            break;
          }
        }

        ++v8;
      }

      while (a1 > 0);
    }

    if (v7 != a3)
    {
      v15 = a3 - v6;
      if (a4)
      {
        if (v15 < 129)
        {
          v23 = 0;
          v19 = 0;
        }

        else
        {
          v17 = v6;
          v18 = MEMORY[0x277D826F0];
          v19 = a3 - v6;
          while (1)
          {
            v20 = operator new(16 * v19, v18);
            if (v20)
            {
              break;
            }

            v21 = v19 >> 1;
            v22 = v19 > 1;
            v19 >>= 1;
            if (!v22)
            {
              v23 = 0;
              v19 = v21;
              goto LABEL_31;
            }
          }

          v23 = v20;
LABEL_31:
          v6 = v17;
        }

        std::__stable_sort<std::_ClassicAlgPolicy,std::greater<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(v6, a3, &v28, v15, v23, v19, a5);
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        v26 = 126 - 2 * __clz(v15);
        if (v6 == a3)
        {
          v27 = 0;
        }

        else
        {
          v27 = v26;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::greater<operations_research::sat::TaskTime> &,operations_research::sat::TaskTime*,false>(v6, a3, &v28, v27, 1, a5);
      }
    }
  }
}

void sub_23CC29CE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::greater<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(void *result, void *a2, uint64_t a3, unint64_t a4, __int128 *a5, int64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      if (*(a2 - 1) > result[1])
      {
        v7 = *result;
        *result = *(a2 - 1);
        *(a2 - 1) = v7;
      }
    }

    else if (a4 > 128)
    {
      v18 = a4 >> 1;
      v19 = &result[2 * (a4 >> 1)];
      v20 = a4 - (a4 >> 1);
      if (a4 <= a6)
      {
        v28 = a5;
        v29.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(result, &result[2 * (a4 >> 1)], a3, a4 >> 1, a5, a7);
        v30 = &v28[v18];
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(v19, a2, a3, v20, v30, v29);
        v31 = &v28[a4];
        if ((a4 & 0x1FFFFFFFFFFFFFFELL) != 0)
        {
          v32 = v30;
          v33 = result;
          while (v32 != v31)
          {
            if (*(v32 + 8) <= *(v28 + 1))
            {
              v34 = *v28++;
              *v33++ = v34;
              if (v28 == v30)
              {
                goto LABEL_34;
              }
            }

            else
            {
              v35 = *v32;
              v32 += 16;
              *v33++ = v35;
              if (v28 == v30)
              {
                goto LABEL_34;
              }
            }
          }

          while (v28 != v30)
          {
            v36 = *v28++;
            *v33++ = v36;
          }
        }

        else
        {
          v32 = v30;
          v33 = result;
LABEL_34:
          while (v32 != v31)
          {
            v37 = *v32;
            v32 += 16;
            *v33++ = v37;
          }
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::greater<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(result, &result[2 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,std::greater<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(v19, a2, a3, v20, a5, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(result, v19, a2, a3, v18, v20, a5, a6);
      }
    }

    else if (result != a2)
    {
      v8 = result + 2;
      if (result + 2 != a2)
      {
        v9 = 0;
        v10 = result;
        do
        {
          v12 = v10[1];
          v13 = v10[3];
          v10 = v8;
          if (v13 > v12)
          {
            v14 = *v8;
            v15 = v9;
            do
            {
              *(result + v15 + 16) = *(result + v15);
              if (!v15)
              {
                v11 = result;
                goto LABEL_11;
              }

              v16 = *(result + v15 - 8);
              v15 -= 16;
            }

            while (v13 > v16);
            v11 = (result + v15 + 16);
LABEL_11:
            *v11 = v14;
            v11[1] = v13;
          }

          v8 = v10 + 2;
          v9 += 16;
        }

        while (v10 + 2 != a2);
      }
    }
  }
}

double std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, __n128 a6)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v6 = (a2 - 2);
      if (*(a2 - 1) <= a1[1])
      {
        *a5 = *a1;
        a6 = *v6;
      }

      else
      {
        *a5 = *v6;
        a6 = *a1;
      }

      *(a5 + 16) = a6;
    }

    else if (a4 == 1)
    {
      a6 = *a1;
      *a5 = *a1;
    }

    else if (a4 > 8)
    {
      v14 = a4 >> 1;
      v15 = 2 * (a4 >> 1);
      v16 = &a1[v15];
      v17 = a1;
      std::__stable_sort<std::_ClassicAlgPolicy,std::greater<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(a1, &a1[v15], a3, v14, a5, v14);
      std::__stable_sort<std::_ClassicAlgPolicy,std::greater<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(v16, a2, a3, a4 - v14, (a5 + v15 * 8), a4 - v14);
      if (v15 * 8)
      {
        v22 = v16;
        v23 = a5;
        v24 = a2;
        v25 = v17;
        while (v22 != a2)
        {
          if (v22[1] <= v25[1])
          {
            v26 = *v25;
            v25 += 2;
            a6.n128_u64[0] = v26;
            *v23++ = v26;
            if (v25 == v16)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v27 = *v22;
            v22 += 2;
            a6.n128_u64[0] = v27;
            *v23++ = v27;
            if (v25 == v16)
            {
              goto LABEL_32;
            }
          }
        }

        while (v25 != v16)
        {
          v28 = *v25;
          v25 += 2;
          a6.n128_u64[0] = v28;
          *v23++ = v28;
        }
      }

      else
      {
        v22 = v16;
        v23 = a5;
        v24 = a2;
LABEL_32:
        while (v22 != v24)
        {
          v29 = *v22;
          v22 += 2;
          a6.n128_u64[0] = v29;
          *v23++ = v29;
        }
      }
    }

    else if (a1 != a2)
    {
      a6 = *a1;
      *a5 = *a1;
      v7 = a1 + 2;
      if (a1 + 2 != a2)
      {
        v8 = 0;
        v9 = a5;
        do
        {
          v10 = a1;
          v11 = v9;
          a1 = v7;
          v12 = ++v9;
          if (v10[3] > *(v11 + 1))
          {
            *v9 = *v11;
            v12 = a5;
            if (v11 != a5)
            {
              v13 = v8;
              while (1)
              {
                v12 = (a5 + v13);
                if (v10[3] <= *(a5 + v13 - 8))
                {
                  break;
                }

                *v12 = *(v12 - 1);
                v13 -= 16;
                if (!v13)
                {
                  v12 = a5;
                  break;
                }
              }
            }
          }

          a6 = *a1;
          *v12 = *a1;
          v7 = a1 + 2;
          v8 += 16;
        }

        while (a1 + 2 != a2);
      }
    }
  }

  return a6.n128_f64[0];
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v10 = result;
    while (a6 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v11 = 0;
      v12 = -a5;
      while (1)
      {
        v13 = &v11[v10];
        if (*(a2 + 1) > *&v11[v10 + 8])
        {
          break;
        }

        v11 += 16;
        if (__CFADD__(v12++, 1))
        {
          return result;
        }
      }

      v15 = -v12;
      v50 = a3;
      v51 = a7;
      v49 = a8;
      if (-v12 >= a6)
      {
        if (v12 == -1)
        {
          v53 = *&v11[v10];
          *&v11[v10] = *a2;
          *a2 = v53;
          return result;
        }

        v24 = v15 / 2;
        v25 = &v10[16 * (v15 / 2)];
        v17 = a2;
        if (a2 != a3)
        {
          v26 = (a3 - a2) >> 4;
          v17 = a2;
          do
          {
            v27 = v26 >> 1;
            v28 = &v17[16 * (v26 >> 1)];
            v29 = *(v28 + 1);
            v30 = v28 + 16;
            v26 += ~(v26 >> 1);
            if (v29 > *&v11[v25 + 8])
            {
              v17 = v30;
            }

            else
            {
              v26 = v27;
            }
          }

          while (v26);
        }

        v16 = (v17 - a2) >> 4;
        v18 = &v11[v25];
      }

      else
      {
        v16 = a6 / 2;
        v17 = &a2[16 * (a6 / 2)];
        v18 = a2;
        if ((a2 - v10) != v11)
        {
          v19 = (a2 - v10 - v11) >> 4;
          v18 = &v11[v10];
          do
          {
            v20 = v19 >> 1;
            v21 = &v18[16 * (v19 >> 1)];
            v22 = *(v21 + 1);
            v23 = v21 + 16;
            v19 += ~(v19 >> 1);
            if (*(v17 + 1) > v22)
            {
              v19 = v20;
            }

            else
            {
              v18 = v23;
            }
          }

          while (v19);
        }

        v24 = (v18 - v10 - v11) >> 4;
      }

      a5 = -(v24 + v12);
      v48 = a6 - v16;
      v31 = a6;
      v32 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::TaskTime *>,std::__wrap_iter<operations_research::sat::TaskTime *>>(v18, a2, v17);
      v33 = v24;
      v34 = v32;
      if (v33 + v16 >= v31 - (v33 + v16) - v12)
      {
        a7 = v51;
        v35 = v33;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(v32, v17, v50, a4, a5, v48, v51, v49);
        a8 = v49;
        a5 = v35;
        a3 = v34;
        a6 = v16;
        v10 = v13;
        a2 = v18;
        if (!v16)
        {
          return result;
        }
      }

      else
      {
        a7 = v51;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(&v11[v10], v18, v32, a4, v33, v16, v51, v49);
        a8 = v49;
        a3 = v50;
        a6 = v48;
        v10 = v34;
        a2 = v17;
        if (!v48)
        {
          return result;
        }
      }
    }

    if (a5 <= a6)
    {
      if (a2 != v10)
      {
        v42 = 0;
        v43 = -a7;
        do
        {
          *(a7 + v42) = *&v10[v42];
          v43 -= 16;
          v42 += 16;
        }

        while (&v10[v42] != a2);
        if (v42)
        {
          v44 = (a7 + v42);
          while (a2 != a3)
          {
            if (*(a2 + 1) <= *(a7 + 8))
            {
              v45 = *a7;
              a7 += 16;
              *v10 = v45;
              v10 += 16;
              if (v44 == a7)
              {
                return result;
              }
            }

            else
            {
              v46 = *a2;
              a2 += 16;
              *v10 = v46;
              v10 += 16;
              if (v44 == a7)
              {
                return result;
              }
            }
          }

          return memmove(v10, a7, -(a7 + v43));
        }
      }
    }

    else if (a2 != a3)
    {
      v36 = 0;
      do
      {
        *(a7 + v36) = *&a2[v36];
        v36 += 16;
      }

      while (&a2[v36] != a3);
      if (v36)
      {
        v37 = (a7 + v36);
        while (a2 != v10)
        {
          v38 = *(a2 - 1);
          v39 = *(v37 - 1);
          v40 = v39 <= v38;
          if (v39 <= v38)
          {
            v41 = v37 - 16;
          }

          else
          {
            v41 = a2 - 16;
          }

          *(a3 - 1) = *v41;
          a3 -= 16;
          if (v40)
          {
            v37 -= 16;
          }

          else
          {
            a2 -= 16;
          }

          if (v37 == a7)
          {
            return result;
          }
        }

        if (v37 != a7)
        {
          v47 = -16;
          do
          {
            *&a3[v47] = *(v37 - 1);
            v47 -= 16;
            v37 -= 16;
          }

          while (v37 != a7);
        }
      }
    }
  }

  return result;
}