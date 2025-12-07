void sub_23CBAA978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double operations_research::glop::LPSolver::ComputeMaxRhsPerturbationToEnforceOptimality(operations_research::glop::LPSolver *this, const operations_research::glop::LinearProgram *a2, BOOL *a3)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 6);
  if (v4 < 1)
  {
    v10 = 0.0;
    if ((*(this + 448) & 1) == 0)
    {
      return v10;
    }

    goto LABEL_20;
  }

  v5 = *(this + 118);
  v6 = *(a2 + 8);
  v7 = *(a2 + 11);
  v8 = *(this + 94);
  v9 = *(this + 79);
  v10 = 0.0;
  v11 = *a3;
  do
  {
    v16 = *v6;
    v17 = *v8;
    v19 = *v9++;
    v18 = v19;
    if (v19 == 2 || v17 < v16)
    {
      v14 = vabdd_f64(v17, v16);
      v15 = v5 * fmax(fabs(v16), 1.0);
    }

    else
    {
      v12 = *v7;
      v13 = v18 != 3 && v17 <= v12;
      v14 = vabdd_f64(v17, v12);
      v15 = v5 * fmax(fabs(v12), 1.0);
      if (v13)
      {
        v14 = 0.0;
        v15 = 0.0;
      }
    }

    if (v10 < v14)
    {
      v10 = v14;
    }

    v11 |= v14 > v15;
    ++v8;
    ++v7;
    ++v6;
    --v4;
  }

  while (v4);
  *a3 = v11;
  if (*(this + 448))
  {
LABEL_20:
    v25[0] = "Max. rhs perturbation = ";
    v25[1] = 24;
    v23[0] = v24;
    v23[1] = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v24, v10, a2);
    absl::lts_20240722::StrCat(v25, v23, &__p);
    operations_research::SolverLogger::LogInfo(this + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 874, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return v10;
}

void sub_23CBAAB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double operations_research::glop::LPSolver::ComputeMaxCostPerturbationToEnforceOptimality(operations_research::glop::LPSolver *this, const operations_research::glop::LinearProgram *a2, BOOL *a3)
{
  v23[6] = *MEMORY[0x277D85DE8];
  v4 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
  if (v4 < 1)
  {
    v10 = 0.0;
  }

  else
  {
    v5 = *(this + 118);
    v6 = *(this + 91);
    v7 = *(this + 76);
    v8 = v4 & 0x7FFFFFFF;
    v9 = *(a2 + 17);
    v10 = 0.0;
    if (*(a2 + 408))
    {
      do
      {
        v12 = *v6;
        v14 = *v7++;
        v13 = v14;
        if ((v14 & 0xFFFFFFFB) == 0 || v13 == 3 && v12 < 0.0 || v13 == 2 && v12 > 0.0)
        {
          v11 = fabs(v12);
          if (v10 < v11)
          {
            v10 = v11;
          }

          *a3 |= v11 > v5 * fmax(fabs(*v9), 1.0);
        }

        ++v9;
        ++v6;
        --v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v16 = *v6;
        v18 = *v7++;
        v17 = v18;
        if ((v18 & 0xFFFFFFFB) == 0 || v17 == 3 && v16 > 0.0 || v17 == 2 && v16 < 0.0)
        {
          v15 = fabs(v16);
          if (v10 < v15)
          {
            v10 = v15;
          }

          *a3 |= v15 > v5 * fmax(fabs(*v9), 1.0);
        }

        ++v9;
        ++v6;
        --v8;
      }

      while (v8);
    }
  }

  if (*(this + 448))
  {
    v23[0] = "Max. cost perturbation = ";
    v23[1] = 25;
    v21[0] = v22;
    v21[1] = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v22, v10, a2);
    absl::lts_20240722::StrCat(v23, v21, &__p);
    operations_research::SolverLogger::LogInfo(this + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 844, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return v10;
}

void sub_23CBAAD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::glop::LPSolver::ComputeActivityInfeasibility(operations_research::glop::LPSolver *this, const operations_research::glop::LinearProgram *a2, BOOL *a3)
{
  v3 = *(a2 + 6);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(this + 118);
    v7 = 0.0;
    do
    {
      v8 = *(*(this + 94) + 8 * v4);
      v9 = *(*(a2 + 8) + 8 * v4);
      v10 = *(*(a2 + 11) + 8 * v4);
      if (v9 == v10)
      {
        v11 = vabdd_f64(v8, v10);
        if (v11 > v6 * fmax(fabs(v10), 1.0))
        {
          if (dword_2810C0040 >= 2)
          {
            v37 = a2;
            v40 = this;
            v12 = v7;
            v34 = a3;
            IsEnabled2 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C0038, dword_2810C0040);
            a3 = v34;
            a2 = v37;
            v7 = v12;
            v14 = IsEnabled2;
            this = v40;
            if (v14)
            {
              absl::lts_20240722::log_internal::LogMessage::LogMessage(v43, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 1049);
              v22 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v43, 2);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v22, "Row ", 4uLL);
              LODWORD(v44) = v4;
              v23 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v22, &v44);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v23, " has activity ", 0xEuLL);
              v44 = v8;
              v24 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v23, &v44);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v24, " which is different from ", 0x19uLL);
              v44 = v10;
              v25 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v24, &v44);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v25, " by ", 4uLL);
              v44 = v8 - v10;
              absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v25, &v44);
              absl::lts_20240722::log_internal::LogMessage::~LogMessage(v43);
              v7 = v12;
              a3 = v34;
              a2 = v37;
              this = v40;
            }
          }

          ++v5;
        }

        if (v7 < v11)
        {
          v7 = v11;
        }
      }

      else
      {
        if (v8 > v10)
        {
          if (v8 - v10 > v6 * fmax(fabs(v10), 1.0))
          {
            if (dword_2810C0058 >= 2)
            {
              v38 = a2;
              v41 = this;
              v15 = v7;
              v35 = a3;
              v16 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C0050, dword_2810C0058);
              a3 = v35;
              a2 = v38;
              v7 = v15;
              v17 = v16;
              this = v41;
              if (v17)
              {
                absl::lts_20240722::log_internal::LogMessage::LogMessage(v43, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 1060);
                v26 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v43, 2);
                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v26, "Row ", 4uLL);
                LODWORD(v44) = v4;
                v27 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v26, &v44);
                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v27, " has activity ", 0xEuLL);
                v44 = v8;
                v28 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v27, &v44);
                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v28, ", exceeding its upper bound ", 0x1CuLL);
                v44 = v10;
                v29 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v28, &v44);
                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v29, " by ", 4uLL);
                v44 = v8 - v10;
                absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v29, &v44);
                absl::lts_20240722::log_internal::LogMessage::~LogMessage(v43);
                v7 = v15;
                a3 = v35;
                a2 = v38;
                this = v41;
              }
            }

            ++v5;
          }

          if (v7 < v8 - v10)
          {
            v7 = v8 - v10;
          }
        }

        if (v8 < v9)
        {
          if (v9 - v8 > v6 * fmax(fabs(v9), 1.0))
          {
            if (dword_2810C0070 >= 2)
            {
              v39 = a2;
              v42 = this;
              v18 = v7;
              v36 = a3;
              v19 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C0068, dword_2810C0070);
              a3 = v36;
              a2 = v39;
              v7 = v18;
              v20 = v19;
              this = v42;
              if (v20)
              {
                absl::lts_20240722::log_internal::LogMessage::LogMessage(v43, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 1070);
                v30 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v43, 2);
                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v30, "Row ", 4uLL);
                LODWORD(v44) = v4;
                v31 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v30, &v44);
                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v31, " has activity ", 0xEuLL);
                v44 = v8;
                v32 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v31, &v44);
                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v32, ", below its lower bound ", 0x18uLL);
                v44 = v9;
                v33 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v32, &v44);
                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v33, " by ", 4uLL);
                v44 = v9 - v8;
                absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v33, &v44);
                absl::lts_20240722::log_internal::LogMessage::~LogMessage(v43);
                v7 = v18;
                a3 = v36;
                a2 = v39;
                this = v42;
              }
            }

            ++v5;
          }

          if (v7 < v9 - v8)
          {
            v7 = v9 - v8;
          }
        }
      }

      ++v4;
    }

    while (v3 != v4);
    if (v5 > 0)
    {
      *a3 = 1;
      if (dword_2810C0088 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0080, dword_2810C0088))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v43, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 1080);
        v21 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v43, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, "Number of infeasible rows = ", 0x1CuLL);
        LODWORD(v44) = v5;
        absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v21, &v44);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v43);
      }
    }
  }
}

void sub_23CBAB2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBAB2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBAB2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBAB304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::glop::LPSolver::ComputeReducedCostInfeasibility(uint64_t this, const operations_research::glop::LinearProgram *a2, BOOL *a3)
{
  v3 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
  if (v3 >= 1)
  {
    v4 = *(this + 944);
    v5 = *(this + 728);
    v6 = *(a2 + 20);
    v7 = *(a2 + 23);
    v8 = v3 & 0x7FFFFFFF;
    v9 = *(a2 + 17);
    v10 = 0.0;
    if (*(a2 + 408))
    {
      do
      {
        v11 = *v5;
        v12 = *v7;
        v13 = v4 * fmax(fabs(*v9), 1.0);
        if (*v6 == -INFINITY)
        {
          *a3 |= v13 < -v11;
          if (v10 < -v11)
          {
            v10 = -v11;
          }
        }

        if (v12 == INFINITY)
        {
          *a3 |= v13 < v11;
          if (v10 < v11)
          {
            v10 = v11;
          }
        }

        ++v9;
        ++v7;
        ++v6;
        ++v5;
        --v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v14 = *v5;
        v15 = *v7;
        v16 = v4 * fmax(fabs(*v9), 1.0);
        if (*v6 == -INFINITY)
        {
          *a3 |= v14 > v16;
          if (v10 < v14)
          {
            v10 = v14;
          }
        }

        if (v15 == INFINITY)
        {
          v17 = -v14;
          *a3 |= v16 < v17;
          if (v10 < v17)
          {
            v10 = v17;
          }
        }

        ++v9;
        ++v7;
        ++v6;
        ++v5;
        --v8;
      }

      while (v8);
    }
  }

  return this;
}

uint64_t operations_research::glop::LPSolver::IsOptimalSolutionOnFacet(operations_research::glop::LPSolver *this, const operations_research::glop::LinearProgram *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = v2 & 0x7FFFFFFF;
    do
    {
      if (*(*(this + 76) + v3) != 1)
      {
        v5 = fabs(*(*(this + 91) + 8 * v3));
        if (v5 != INFINITY && v5 <= 0.000000001)
        {
          v6 = *(*(a2 + 20) + 8 * v3);
          v7 = *(*(a2 + 23) + 8 * v3);
          v8 = *(*(this + 70) + 8 * v3);
          v9 = fabs(v8);
          if (fabs(v6) != INFINITY && v9 != INFINITY)
          {
            if (vabdd_f64(v8, v6) <= 0.0000001)
            {
              return 1;
            }
          }

          else if (v8 == v6)
          {
            return 1;
          }

          if (fabs(v7) != INFINITY && v9 != INFINITY)
          {
            if (vabdd_f64(v8, v7) <= 0.0000001)
            {
              return 1;
            }
          }

          else if (v8 == v7)
          {
            return 1;
          }
        }
      }

      ++v3;
    }

    while (v4 != v3);
  }

  v12 = *(a2 + 6);
  if (v12 >= 1)
  {
    for (i = 0; v12 != i; ++i)
    {
      if (*(*(this + 79) + i) != 1)
      {
        v14 = fabs(*(*(this + 73) + 8 * i));
        if (v14 != INFINITY && v14 <= 0.000000001)
        {
          v15 = *(*(a2 + 8) + 8 * i);
          v16 = *(*(a2 + 11) + 8 * i);
          v17 = *(*(this + 94) + 8 * i);
          v18 = fabs(v17);
          if (fabs(v15) != INFINITY && v18 != INFINITY)
          {
            if (vabdd_f64(v17, v15) <= 0.0000001)
            {
              return 1;
            }
          }

          else if (v17 == v15)
          {
            return 1;
          }

          if (fabs(v16) != INFINITY && v18 != INFINITY)
          {
            if (vabdd_f64(v17, v16) <= 0.0000001)
            {
              return 1;
            }
          }

          else if (v17 == v16)
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

void operations_research::glop::anonymous namespace::LogVariableStatusError(uint64_t result, void *a2, double a3, double a4, double a5)
{
  v17 = result;
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v16, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 677);
    v9 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v16, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, "Variable ", 9uLL);
    v10 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v9, &v17);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v10, " status is ", 0xBuLL);
    operations_research::glop::GetVariableStatusString(a2, v15);
    v11 = absl::lts_20240722::log_internal::LogMessage::operator<<(v10, v15);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v11, " but its value is ", 0x12uLL);
    v18 = a3;
    v12 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v11, &v18);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v12, " and its bounds are [", 0x15uLL);
    v18 = a4;
    v13 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v12, &v18);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v13, ", ", 2uLL);
    v18 = a5;
    v14 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v13, &v18);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v14, "].", 2uLL);
    operations_research::sat::BruteForceOrthogonalPacking(v15, v16);
  }
}

void sub_23CBAB7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBAB810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBAB824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

void operations_research::glop::anonymous namespace::LogConstraintStatusError(uint64_t result, void *a2, double a3, double a4)
{
  v14 = result;
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v13, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 684);
    v7 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v13, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Constraint ", 0xBuLL);
    v8 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v7, &v14);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v8, " status is ", 0xBuLL);
    operations_research::glop::GetConstraintStatusString(a2, v12);
    v9 = absl::lts_20240722::log_internal::LogMessage::operator<<(v8, v12);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, " but its bounds are [", 0x15uLL);
    v15 = a3;
    v10 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v9, &v15);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v10, ", ", 2uLL);
    v15 = a4;
    v11 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v10, &v15);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v11, "].", 2uLL);
    operations_research::sat::BruteForceOrthogonalPacking(v12, v13);
  }
}

void sub_23CBAB98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBAB9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBAB9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

void *std::vector<std::unique_ptr<operations_research::glop::Preprocessor>>::~vector[abi:ne200100](void *a1)
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
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
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

uint64_t operations_research::glop::ProblemSolution::ProblemSolution(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (a3 << 32)
  {
    if (!(a3 >> 61))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (a2 << 32)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (a3 << 32)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return a1;
}

void sub_23CBABBF4(_Unwind_Exception *exception_object)
{
  v7 = *v5;
  if (*v5)
  {
    v1[11] = v7;
    operator delete(v7);
    v8 = *v2;
    if (!*v2)
    {
LABEL_3:
      v9 = *v4;
      if (!*v4)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v8 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[8] = v8;
  operator delete(v8);
  v9 = *v4;
  if (!*v4)
  {
LABEL_4:
    v10 = *v3;
    if (!*v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  v1[5] = v9;
  operator delete(v9);
  v10 = *v3;
  if (!*v3)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_5:
  v1[2] = v10;
  operator delete(v10);
  goto LABEL_6;
}

void sub_23CBABC7C()
{
  if (!*v0)
  {
    JUMPOUT(0x23CBABC20);
  }

  JUMPOUT(0x23CBABC18);
}

void operations_research::glop::MainLpPreprocessor::~MainLpPreprocessor(operations_research::glop::MainLpPreprocessor *this)
{
  *this = &unk_284F41520;
  v2 = *(this + 18);
  if (v2)
  {
    v3 = *(this + 19);
    v4 = *(this + 18);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        v3 -= 40;
      }

      while (v3 != v2);
      v4 = *(this + 18);
    }

    *(this + 19) = v2;
    operator delete(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    v6 = *(this + 11);
    v7 = *(this + 10);
    if (v6 != v5)
    {
      v8 = v6 - 32;
      do
      {
        v9 = *(v6 - 8);
        v6 -= 32;
        if (v6 == v9)
        {
          (*(*v9 + 32))(v9);
        }

        else if (v9)
        {
          (*(*v9 + 40))(v9);
        }

        v8 -= 32;
      }

      while (v6 != v5);
      v7 = *(this + 10);
    }

    *(this + 11) = v5;
    operator delete(v7);
  }

  v10 = *(this + 6);
  if (v10)
  {
    v11 = *(this + 7);
    v12 = *(this + 6);
    if (v11 != v10)
    {
      do
      {
        v14 = *--v11;
        v13 = v14;
        *v11 = 0;
        if (v14)
        {
          (*(*v13 + 8))(v13);
        }
      }

      while (v11 != v10);
      v12 = *(this + 6);
    }

    *(this + 7) = v10;
    operator delete(v12);
  }

  operations_research::glop::Preprocessor::~Preprocessor(this);
}

{
  operations_research::glop::MainLpPreprocessor::~MainLpPreprocessor(this);

  JUMPOUT(0x23EED9460);
}

char *std::vector<operations_research::glop::VariableStatus>::__assign_with_size[abi:ne200100]<operations_research::glop::VariableStatus*,operations_research::glop::VariableStatus*>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (v6 - result < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v9 = a1[1];
  v10 = v9 - result;
  if (v9 - result >= a4)
  {
    v13 = a3 - a2;
    if (v13)
    {
      v14 = result;
      memmove(result, a2, v13);
      result = v14;
    }

    a1[1] = &result[v13];
  }

  else
  {
    v11 = &a2[v10];
    if (v9 != result)
    {
      result = memmove(result, a2, v10);
      v9 = a1[1];
    }

    v12 = a3 - v11;
    if (v12)
    {
      result = memmove(v9, v11, v12);
    }

    a1[1] = &v9[v12];
  }

  return result;
}

operations_research::glop::LuFactorization *operations_research::glop::LuFactorization::LuFactorization(operations_research::glop::LuFactorization *this)
{
  *this = 1;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 100) = 0u;
  *(this + 116) = 1;
  *(this + 30) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 102) = 0;
  *(this + 184) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 412) = 1;
  *(this + 104) = 0;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 176) = 0;
  *(this + 708) = 1;
  *(this + 178) = 0;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *(this + 250) = 0;
  *(this + 968) = 0u;
  *(this + 984) = 0u;
  *(this + 936) = 0u;
  *(this + 952) = 0u;
  *(this + 904) = 0u;
  *(this + 920) = 0u;
  *(this + 872) = 0u;
  *(this + 888) = 0u;
  *(this + 840) = 0u;
  *(this + 856) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 1004) = 1;
  *(this + 252) = 0;
  *(this + 1032) = 0u;
  *(this + 1048) = 0u;
  *(this + 1016) = 0u;
  v2 = this + 1408;
  *(this + 1337) = 0u;
  *(this + 83) = 0u;
  *(this + 82) = 0u;
  *(this + 81) = 0u;
  *(this + 80) = 0u;
  *(this + 79) = 0u;
  *(this + 78) = 0u;
  *(this + 77) = 0u;
  *(this + 76) = 0u;
  *(this + 75) = 0u;
  *(this + 74) = 0u;
  *(this + 73) = 0u;
  *(this + 72) = 0u;
  *(this + 71) = 0u;
  *(this + 70) = 0u;
  *(this + 69) = 0u;
  *(this + 68) = 0u;
  *(this + 67) = 0u;
  *(this + 87) = 0u;
  *(this + 86) = 0u;
  *(this + 85) = 0u;
  *(this + 1431) = 15;
  strcpy(this + 1408, "LuFactorization");
  *(this + 358) = 0;
  *(this + 180) = 0;
  *(this + 1448) = 0u;
  *(this + 92) = 0u;
  *(this + 183) = this + 1472;
  operations_research::DistributionStat::DistributionStat(this + 1488, "basis_num_entries", 0x11uLL, this + 1408);
  *(this + 186) = &unk_284F44DF0;
  operations_research::DistributionStat::DistributionStat(this + 1568, "lu_fill_in", 0xAuLL, v2);
  *(this + 196) = &unk_284F44D30;
  operations_research::glop::GlopParameters::GlopParameters(this + 1648, 0);
  operations_research::glop::Markowitz::Markowitz((this + 1976));
  return this;
}

void sub_23CBAC1A4(_Unwind_Exception *a1)
{
  operations_research::glop::GlopParameters::~GlopParameters((v1 + 206));
  operations_research::glop::LuFactorization::Stats::~Stats(v3);
  v5 = v1 + 170;
  v6 = v1[173];
  if (v6)
  {
    v1[174] = v6;
    operator delete(v6);
    v7 = *v5;
    if (!*v5)
    {
LABEL_3:
      v8 = v1[164];
      v1[164] = 0;
      if (!v8)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v7 = *v5;
    if (!*v5)
    {
      goto LABEL_3;
    }
  }

  v1[171] = v7;
  operator delete(v7);
  v8 = v1[164];
  v1[164] = 0;
  if (!v8)
  {
LABEL_4:
    v9 = v1[161];
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  MEMORY[0x23EED9440](v8, 0x1000C8077774924);
  v9 = v1[161];
  if (!v9)
  {
LABEL_5:
    v10 = v1[158];
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v1[162] = v9;
  operator delete(v9);
  v10 = v1[158];
  if (!v10)
  {
LABEL_6:
    v11 = v1[155];
    if (!v11)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v1[159] = v10;
  operator delete(v10);
  v11 = v1[155];
  if (!v11)
  {
LABEL_7:
    v12 = v1[152];
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v1[156] = v11;
  operator delete(v11);
  v12 = v1[152];
  if (!v12)
  {
LABEL_8:
    v13 = v1[149];
    if (!v13)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  v1[153] = v12;
  operator delete(v12);
  v13 = v1[149];
  if (!v13)
  {
LABEL_10:
    operations_research::glop::TriangularMatrix::~TriangularMatrix((v1 + 112));
    operations_research::glop::TriangularMatrix::~TriangularMatrix((v1 + 75));
    operations_research::glop::TriangularMatrix::~TriangularMatrix((v1 + 38));
    operations_research::glop::TriangularMatrix::~TriangularMatrix(v2);
    _Unwind_Resume(a1);
  }

LABEL_9:
  v1[150] = v13;
  operator delete(v13);
  goto LABEL_10;
}

void operations_research::glop::LuFactorization::Stats::~Stats(operations_research::glop::LuFactorization::Stats *this)
{
  *(this + 20) = &unk_284F3A5F8;
  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
    *(this + 10) = &unk_284F3A5F8;
    if ((*(this + 111) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this;

      goto LABEL_5;
    }
  }

  else
  {
    *(this + 10) = &unk_284F3A5F8;
    if ((*(this + 111) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(this + 11));
  v2 = this;

LABEL_5:
  operations_research::StatsGroup::~StatsGroup(v2);
}

void operations_research::glop::LuFactorization::Clear(operations_research::glop::LuFactorization *this)
{
  operations_research::glop::TriangularMatrix::Reset(this + 8, 0, 0);
  operations_research::glop::TriangularMatrix::Reset(this + 304, 0, 0);
  operations_research::glop::TriangularMatrix::Reset(this + 600, 0, 0);
  operations_research::glop::TriangularMatrix::Reset(this + 896, 0, 0);
  *this = 1;
  *(this + 150) = *(this + 149);
  *(this + 156) = *(this + 155);
  *(this + 159) = *(this + 158);
  *(this + 153) = *(this + 152);
}

void operations_research::glop::LuFactorization::ComputeFactorization(operations_research::glop::LuFactorization *this@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  operations_research::glop::TriangularMatrix::Reset(this + 8, 0, 0);
  operations_research::glop::TriangularMatrix::Reset(this + 304, 0, 0);
  operations_research::glop::TriangularMatrix::Reset(this + 600, 0, 0);
  operations_research::glop::TriangularMatrix::Reset(this + 896, 0, 0);
  *this = 1;
  *(this + 150) = *(this + 149);
  *(this + 156) = *(this + 155);
  *(this + 159) = *(this + 158);
  *(this + 153) = *(this + 152);
  if (**a2 == *(a2 + 4))
  {
    operations_research::glop::Markowitz::ComputeLU((this + 8), this + 1976, a2, (this + 1240), (this + 1192), (this + 304), a3);
    if (!*a3)
    {
      if (*(a3 + 31) < 0)
      {
        operator delete(*(a3 + 8));
      }

      v6 = *(this + 150) - *(this + 149);
      v7 = *(this + 152);
      v8 = (*(this + 153) - v7) >> 2;
      if (v6 >> 2 <= v8)
      {
        if (v6 >> 2 < v8)
        {
          *(this + 153) = v7 + v6;
        }
      }

      else
      {
        std::vector<int>::__append((this + 1216), (v6 >> 2) - v8);
      }

      if ((v6 >> 2) >= 1)
      {
        v9 = 0;
        v10 = *(this + 149);
        v11 = *(this + 152);
        do
        {
          *(v11 + 4 * *(v10 + 4 * v9)) = v9;
          ++v9;
        }

        while (((v6 >> 2) & 0x7FFFFFFF) != v9);
      }

      v12 = *(this + 156) - *(this + 155);
      v13 = *(this + 158);
      v14 = (*(this + 159) - v13) >> 2;
      if (v12 >> 2 <= v14)
      {
        if (v12 >> 2 < v14)
        {
          *(this + 159) = v13 + v12;
        }
      }

      else
      {
        std::vector<int>::__append((this + 1264), (v12 >> 2) - v14);
      }

      if ((v12 >> 2) >= 1)
      {
        v15 = 0;
        v16 = *(this + 155);
        v17 = *(this + 158);
        do
        {
          *(v17 + 4 * *(v16 + 4 * v15)) = v15;
          ++v15;
        }

        while (((v12 >> 2) & 0x7FFFFFFF) != v15);
      }

      operations_research::glop::TriangularMatrix::PopulateFromTranspose(this + 75, this + 38);
      operations_research::glop::TriangularMatrix::PopulateFromTranspose(this + 112, this + 1);
      *this = 0;

      operations_research::glop::Status::Status(a3);
    }
  }

  else
  {
    *(&v23.__r_.__value_.__s + 23) = 21;
    strcpy(&v23, "Not a square matrix!!");
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v22, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lu_factorization.cc", 54);
    operations_research::glop::GetErrorCodeString(1, __p);
    v18 = absl::lts_20240722::log_internal::LogMessage::operator<<(v22, __p);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v18, ": ", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<(v18, &v23);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v22);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v19, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
    }

    else
    {
      v19 = v23;
    }

    operations_research::glop::Status::Status(a3, 1, &v19);
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }
}

void sub_23CBAC798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if ((a28 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void operations_research::glop::LuFactorization::ComputeInitialBasis(void *a1@<X0>, unsigned int *a2@<X1>, unsigned int **a3@<X2>, void *a4@<X8>)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v23[0] = a2;
  v23[1] = v8;
  v23[2] = v9;
  v10 = a1 + 155;
  operations_research::glop::Markowitz::ComputeRowAndColumnPermutation((a1 + 247), v23, (a1 + 155), (a1 + 149), v20);
  if (v22 < 0)
  {
    operator delete(__p);
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v11 = *a2;
    if (*a2 < 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v11 = *a2;
    if (*a2 < 1)
    {
      goto LABEL_9;
    }
  }

  v12 = 0;
  do
  {
    if (*(*v10 + 4 * v12) == -1)
    {
      v19[0] = v12 + a2[1] - v11;
      std::vector<int>::push_back[abi:ne200100](a4, v19);
      v11 = *a2;
    }

    ++v12;
  }

  while (v12 < v11);
LABEL_9:
  v13 = a1[150];
  v14 = a1[149];
  v15 = (v13 - v14) >> 2;
  v19[0] = v15;
  v16 = a3[1] - *a3;
  if (v15 != v16)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_> const&,unsigned long long>(v19, v16, "col_perm_.size() == candidates.size()");
  }

  if (v15 >= 1)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      if (*(v14 + v17 * 4) != -1)
      {
        std::vector<int>::push_back[abi:ne200100](a4, &(*a3)[v17]);
        v13 = a1[150];
        v14 = a1[149];
      }

      ++v18;
      ++v17;
    }

    while (v18 < ((v13 - v14) >> 2));
  }
}

void sub_23CBAC9D4(_Unwind_Exception *a1)
{
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void operations_research::glop::LuFactorization::RightSolve(uint64_t a1, char **a2)
{
  if ((*a1 & 1) == 0)
  {
    operations_research::glop::ApplyPermutation<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>>((a1 + 1240), a2, (a1 + 1288));
    operations_research::glop::TriangularMatrix::LowerSolve(a1 + 8, (a1 + 1288));
    operations_research::glop::TriangularMatrix::UpperSolve(a1 + 304, (a1 + 1288));

    operations_research::glop::ApplyPermutation<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>>((a1 + 1216), (a1 + 1288), a2);
  }
}

void operations_research::glop::LuFactorization::LeftSolve(int64x2_t *result, char **a2)
{
  if ((result->i8[0] & 1) == 0)
  {
    operations_research::glop::ApplyInversePermutation<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>>(result[76].i64, a2, &result[80].i64[1]);
    operations_research::glop::TriangularMatrix::TransposeUpperSolve(result + 19, &result[80].i64[1], v5);
    operations_research::glop::TriangularMatrix::TransposeLowerSolve(&result->i64[1], &result[80].i64[1], v6);

    operations_research::glop::ApplyInversePermutation<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>>(&result[77].i64[1], &result[80].i64[1], a2);
  }
}

void operations_research::glop::ApplyInversePermutation<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>>(void *a1, char **a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a1[1] - *a1;
    if ((v3 >> 2))
    {
      v4 = a2[1];
      v5 = ((v4 - *a2) >> 3);
      v6 = (*(a3 + 8) - *a3) >> 3;
      v7 = v5 >= v6;
      v8 = v5 - v6;
      if (v8 != 0 && v7)
      {
        v9 = a1;
        v10 = a2;
        v11 = a3;
        std::vector<double>::__append(a3, v8, v4 - 1);
        a1 = v9;
        a2 = v10;
        a3 = v11;
      }

      else if (!v7)
      {
        *(a3 + 8) = *a3 + 8 * v5;
      }

      if ((v3 >> 2) >= 1)
      {
        v15 = *a1;
        v16 = *a2;
        v17 = (v3 >> 2) & 0x7FFFFFFF;
        v18 = *a3;
        do
        {
          v19 = *v15++;
          *v18++ = *&v16[8 * v19];
          --v17;
        }

        while (v17);
      }
    }

    else if (a3 != a2)
    {
      v12 = a2[1];
      v13 = (v12 - *a2) >> 3;
      v14 = *a2;

      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a3, v14, v12, v13);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v20, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/permutation.h", 223, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, "result", 6uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v20);
  }
}

void operations_research::glop::ApplyInversePermutation<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>>(void *a1, char **a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a1[1] - *a1;
    if ((v3 & 0x3FFFFFFFCLL) != 0)
    {
      v4 = a2[1];
      v5 = ((v4 - *a2) >> 3);
      v6 = (*(a3 + 8) - *a3) >> 3;
      v7 = v5 >= v6;
      v8 = v5 - v6;
      if (v8 != 0 && v7)
      {
        v9 = a1;
        v10 = a2;
        v11 = a3;
        std::vector<double>::__append(a3, v8, v4 - 1);
        a1 = v9;
        a2 = v10;
        a3 = v11;
      }

      else if (!v7)
      {
        *(a3 + 8) = *a3 + 8 * v5;
      }

      if ((v3 >> 2) >= 1)
      {
        v15 = *a1;
        v16 = *a2;
        v17 = (v3 >> 2) & 0x7FFFFFFF;
        v18 = *a3;
        do
        {
          v19 = *v15++;
          *v18++ = *&v16[8 * v19];
          --v17;
        }

        while (v17);
      }
    }

    else if (a3 != a2)
    {
      v12 = a2[1];
      v13 = (v12 - *a2) >> 3;
      v14 = *a2;

      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a3, v14, v12, v13);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v20, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/permutation.h", 223, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, "result", 6uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v20);
  }
}

double operations_research::glop::LuFactorization::RightSolveSquaredNorm(uint64_t a1, unint64_t *a2)
{
  if (*a1 != 1)
  {
    v25[7] = v2;
    v25[8] = v3;
    v7 = a1 + 8;
    v6 = *(a1 + 8);
    *(a1 + 1392) = *(a1 + 1384);
    v25[0] = 0;
    v8 = *(a1 + 1360);
    v9 = (*(a1 + 1368) - v8) >> 3;
    v10 = v6 >= v9;
    v11 = v6 - v9;
    if (v11 != 0 && v10)
    {
      v12 = a2;
      std::vector<double>::__append(a1 + 1360, v11, v25);
      a2 = v12;
    }

    else if (!v10)
    {
      *(a1 + 1368) = v8 + 8 * v6;
    }

    v13 = *a2;
    if (*a2 >= 1)
    {
      v14 = a2[1];
      v15 = a2[2];
      do
      {
        v16 = *v14++;
        v24 = *(*(a1 + 1240) + 4 * v16);
        v17 = *v15++;
        *(*(a1 + 1360) + 8 * v24) = v17;
        std::vector<int>::push_back[abi:ne200100](v7 + 1376, &v24);
        --v13;
      }

      while (v13);
    }

    operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder(v7, (v7 + 1376));
    v18 = (v7 + 1352);
    if (*(a1 + 1384) == *(a1 + 1392))
    {
      operations_research::glop::TriangularMatrix::LowerSolve(v7, v18);
      v19 = a1 + 304;
      if (*(a1 + 1384) != *(a1 + 1392))
      {
LABEL_15:
        operations_research::glop::TriangularMatrix::HyperSparseSolveWithReversedNonZeros(v19, (v7 + 1352), v7 + 1376);
        v20 = *(a1 + 1360);
        v21 = *(a1 + 1384);
        v22 = *(a1 + 1392);
        if (v21 != v22)
        {
          goto LABEL_16;
        }

        return operations_research::glop::SquaredNormAndResetToZero(v20, v6);
      }
    }

    else
    {
      operations_research::glop::TriangularMatrix::HyperSparseSolve(v7, v18, (v7 + 1376));
      operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder((a1 + 304), (v7 + 1376));
      v19 = a1 + 304;
      if (*(a1 + 1384) != *(a1 + 1392))
      {
        goto LABEL_15;
      }
    }

    operations_research::glop::TriangularMatrix::UpperSolve(v19, (v7 + 1352));
    v20 = *(a1 + 1360);
    v21 = *(a1 + 1384);
    v22 = *(a1 + 1392);
    if (v21 != v22)
    {
LABEL_16:
      result = 0.0;
      do
      {
        v23 = *v21++;
        result = result + *(v20 + 8 * v23) * *(v20 + 8 * v23);
        *(v20 + 8 * v23) = 0;
      }

      while (v21 != v22);
      return result;
    }

    return operations_research::glop::SquaredNormAndResetToZero(v20, v6);
  }

  return operations_research::glop::SquaredNorm(a2);
}

double operations_research::glop::LuFactorization::DualEdgeSquaredNorm(uint64_t result, int a2)
{
  v2 = 1.0;
  if ((*result & 1) == 0)
  {
    v4 = *(result + 1192);
    if (v4 == *(result + 1200))
    {
      v5 = a2;
    }

    else
    {
      v5 = *(v4 + 4 * a2);
    }

    v16 = v5;
    *(result + 1392) = *(result + 1384);
    v6 = *(result + 8);
    v7 = (result + 1360);
    v15 = 0;
    v8 = *(result + 1360);
    v9 = (*(result + 1368) - v8) >> 3;
    if (v6 <= v9)
    {
      if (v6 < v9)
      {
        *(result + 1368) = v8 + 8 * v6;
      }
    }

    else
    {
      std::vector<double>::__append(result + 1360, v6 - v9, &v15);
      v8 = *v7;
    }

    *(v8 + 8 * v5) = 0x3FF0000000000000;
    std::vector<int>::push_back[abi:ne200100](result + 1384, &v16);
    operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder((result + 600), (result + 1384));
    if (*(result + 1384) == *(result + 1392))
    {
      operations_research::glop::TriangularMatrix::LowerSolveStartingAt(result + 600, v16, (result + 1360));
      v10 = result + 896;
      if (*(result + 1384) != *(result + 1392))
      {
LABEL_11:
        operations_research::glop::TriangularMatrix::HyperSparseSolveWithReversedNonZeros(v10, (result + 1360), result + 1384);
        v11 = *(result + 1360);
        v12 = *(result + 1384);
        v13 = *(result + 1392);
        if (v12 != v13)
        {
          goto LABEL_12;
        }

        return operations_research::glop::SquaredNormAndResetToZero(v11, v6);
      }
    }

    else
    {
      operations_research::glop::TriangularMatrix::HyperSparseSolve(result + 600, (result + 1360), (result + 1384));
      operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder((result + 896), (result + 1384));
      v10 = result + 896;
      if (*(result + 1384) != *(result + 1392))
      {
        goto LABEL_11;
      }
    }

    operations_research::glop::TriangularMatrix::UpperSolve(v10, (result + 1360));
    v11 = *(result + 1360);
    v12 = *(result + 1384);
    v13 = *(result + 1392);
    if (v12 != v13)
    {
LABEL_12:
      v2 = 0.0;
      do
      {
        v14 = *v12++;
        v2 = v2 + *(v11 + 8 * v14) * *(v11 + 8 * v14);
        *(v11 + 8 * v14) = 0;
      }

      while (v12 != v13);
      return v2;
    }

    return operations_research::glop::SquaredNormAndResetToZero(v11, v6);
  }

  return v2;
}

void operations_research::glop::LuFactorization::RightSolveLWithPermutedInput(unsigned int *result, uint64_t a2, uint64_t *a3)
{
  if ((*result & 1) == 0)
  {
    operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder(result + 2, a3 + 4);
    v5 = result + 2;
    if (a3[4] == a3[5])
    {

      operations_research::glop::TriangularMatrix::LowerSolve(v5, a3);
    }

    else
    {

      operations_research::glop::TriangularMatrix::HyperSparseSolve(v5, a3, (a3 + 4));
    }
  }
}

void operations_research::glop::LuFactorization::RightSolveLForColumnView(_BYTE *a1, uint64_t *a2, void *a3)
{
  v4 = a3 + 4;
  a3[5] = a3[4];
  if (*a1 == 1)
  {
    v5 = *a2;
    if (*a2 >= 1)
    {
      v6 = a2[1];
      v7 = a2[2];
      do
      {
        v8 = *v7++;
        v9 = v8;
        LODWORD(v8) = *v6++;
        *(*a3 + 8 * v8) = v9;
        v10 = v8;
        std::vector<int>::push_back[abi:ne200100](v4, &v10);
        --v5;
      }

      while (v5);
    }
  }

  else
  {

    operations_research::glop::LuFactorization::RightSolveLInternal<operations_research::glop::ColumnView>(a1, a2, a3);
  }
}

void operations_research::glop::LuFactorization::RightSolveLInternal<operations_research::glop::ColumnView>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = (*(a3 + 8) - *a3) >> 3;
  v6 = *a2;
  if (*a2 >= 1)
  {
    v7 = *(a1 + 112);
    v8 = a2[1];
    v9 = a2[2];
    do
    {
      v10 = *v8++;
      v15 = *(*(a1 + 1240) + 4 * v10);
      *(*a3 + 8 * v15) = *v9;
      std::vector<int>::push_back[abi:ne200100](a3 + 32, &v15);
      v11 = v15;
      if (v15 >= v7)
      {
        v12 = *(a1 + 64);
        v13 = *(v12 + (((v15 << 32) + 0x100000000) >> 29));
        v14 = *(v12 + 8 * v15);
        if (v15 >= v5)
        {
          v11 = v5;
        }

        if (v13 != v14)
        {
          LODWORD(v5) = v11;
        }
      }

      ++v9;
      --v6;
    }

    while (v6);
  }

  operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder((a1 + 8), (a3 + 32));
  *(a3 + 24) = 1;
  if (*(a3 + 32) == *(a3 + 40))
  {
    operations_research::glop::TriangularMatrix::LowerSolveStartingAt(a1 + 8, v5, a3);
  }

  else
  {
    operations_research::glop::TriangularMatrix::HyperSparseSolve(a1 + 8, a3, (a3 + 32));
  }
}

void operations_research::glop::LuFactorization::RightSolveLWithNonZeros(uint64_t this, operations_research::glop::ScatteredColumn *a2)
{
  if ((*this & 1) == 0)
  {
    v4 = *(a2 + 4);
    v5 = *(a2 + 5);
    v6 = (a2 + 32);
    if (v4 == v5)
    {
      v13 = *(a2 + 1) - *a2;
      v14 = *(this + 1360);
      *(this + 1360) = *a2;
      *a2 = v14;
      v15 = *(this + 1368);
      *(this + 1368) = *(a2 + 1);
      *(a2 + 1) = v15;
      v16 = *(this + 1376);
      *(this + 1376) = *(a2 + 2);
      *(a2 + 2) = v16;
      v29 = 0;
      v17 = (v13 >> 3);
      v18 = (*(a2 + 1) - *a2) >> 3;
      if (v17 <= v18)
      {
        if (v17 < v18)
        {
          *(a2 + 1) = *a2 + 8 * v17;
        }
      }

      else
      {
        std::vector<double>::__append(a2, v17 - v18, &v29);
      }

      if ((v13 >> 3) >= 1)
      {
        v26 = *(this + 1360);
        v27 = *(this + 1240);
        v28 = (v13 >> 3) & 0x7FFFFFFF;
        do
        {
          if (*v26 != 0.0)
          {
            *(*a2 + 8 * *v27) = *v26;
          }

          ++v27;
          ++v26;
          --v28;
        }

        while (v28);
      }

      v29 = 0;
      std::vector<double>::assign((this + 1360), (v13 >> 3), &v29);
    }

    else
    {
      v7 = *(this + 1360);
      *(this + 1360) = *a2;
      *a2 = v7;
      v8 = *(this + 1368);
      *(this + 1368) = *(a2 + 1);
      *(a2 + 1) = v8;
      v9 = *(this + 1376);
      *(this + 1376) = *(a2 + 2);
      *(a2 + 2) = v9;
      v10 = *(this + 1368) - *(this + 1360);
      v29 = 0;
      v11 = (v10 >> 3);
      v12 = (*(a2 + 1) - *a2) >> 3;
      if (v11 <= v12)
      {
        if (v11 < v12)
        {
          *(a2 + 1) = *a2 + 8 * v11;
        }
      }

      else
      {
        std::vector<double>::__append(a2, v11 - v12, &v29);
        v4 = *(a2 + 4);
        v5 = *(a2 + 5);
      }

      if (v4 != v5)
      {
        v19 = *(this + 1360);
        v20 = *(this + 1240);
        v21 = *a2;
        do
        {
          v22 = *v4;
          v23 = 8 * *v4;
          v24 = *(v19 + v23);
          *(v19 + v23) = 0;
          v25 = *(v20 + 4 * v22);
          *(v21 + 8 * v25) = v24;
          *v4++ = v25;
        }

        while (v4 != v5);
      }

      operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder((this + 8), v6);
      *(a2 + 24) = 1;
      if (*(a2 + 4) != *(a2 + 5))
      {
        operations_research::glop::TriangularMatrix::HyperSparseSolve(this + 8, a2, v6);
        return;
      }
    }

    operations_research::glop::TriangularMatrix::LowerSolve(this + 8, a2);
  }
}

void operations_research::glop::LuFactorization::RightSolveLForScatteredColumn(operations_research::glop::LuFactorization *this, const operations_research::glop::ScatteredColumn *a2, operations_research::glop::ScatteredColumn *a3)
{
  v5 = (a3 + 32);
  *(a3 + 5) = *(a3 + 4);
  if (*this == 1)
  {
    if (a3 == a2)
    {
      *(a3 + 24) = *(a2 + 24);
    }

    else
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a3, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 3);
      *(a3 + 24) = *(a2 + 24);
      std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(v5, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
    }

    std::vector<BOOL>::operator=(a3 + 7, a2 + 56);
  }

  else if (*(a2 + 4) == *(a2 + 5))
  {
    if (a3 == a2)
    {
      *(a3 + 24) = *(a2 + 24);
    }

    else
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a3, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 3);
      *(a3 + 24) = *(a2 + 24);
      std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(v5, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
    }

    std::vector<BOOL>::operator=(a3 + 7, a2 + 56);

    operations_research::glop::LuFactorization::RightSolveLWithNonZeros(this, a3);
  }

  else
  {

    operations_research::glop::LuFactorization::RightSolveLInternal<operations_research::glop::ScatteredColumn>(this, a2, a3);
  }
}

void operations_research::glop::LuFactorization::RightSolveLInternal<operations_research::glop::ScatteredColumn>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = (*(a3 + 8) - *a3) >> 3;
  v6 = a2[4];
  v7 = (a2[5] - v6) >> 2;
  if (v7 >= 1)
  {
    v8 = *(a1 + 112);
    v9 = *a2;
    do
    {
      v10 = *v6++;
      v15 = *(*(a1 + 1240) + 4 * v10);
      *(*a3 + 8 * v15) = *(v9 + 8 * v10);
      std::vector<int>::push_back[abi:ne200100](a3 + 32, &v15);
      v11 = v15;
      if (v15 >= v8)
      {
        v12 = *(a1 + 64);
        v13 = *(v12 + (((v15 << 32) + 0x100000000) >> 29));
        v14 = *(v12 + 8 * v15);
        if (v15 >= v5)
        {
          v11 = v5;
        }

        if (v13 != v14)
        {
          LODWORD(v5) = v11;
        }
      }

      --v7;
    }

    while (v7);
  }

  operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder((a1 + 8), (a3 + 32));
  *(a3 + 24) = 1;
  if (*(a3 + 32) == *(a3 + 40))
  {
    operations_research::glop::TriangularMatrix::LowerSolveStartingAt(a1 + 8, v5, a3);
  }

  else
  {
    operations_research::glop::TriangularMatrix::HyperSparseSolve(a1 + 8, a3, (a3 + 32));
  }
}

void operations_research::glop::LuFactorization::LeftSolveUWithNonZeros(int64x2_t *result, uint64_t a2)
{
  if (result[74].i64[1] != result[75].i64[0])
  {
    operations_research::glop::LuFactorization::LeftSolveUWithNonZeros(&v6);
  }

  if ((result->i8[0] & 1) == 0)
  {
    operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder(&result[37].u32[2], (a2 + 32));
    *(a2 + 24) = 1;
    v5 = result + 19;
    if (*(a2 + 32) == *(a2 + 40))
    {

      operations_research::glop::TriangularMatrix::TransposeUpperSolve(v5, a2, v4);
    }

    else
    {

      operations_research::glop::TriangularMatrix::TransposeHyperSparseSolve(v5, a2, (a2 + 32));
    }
  }
}

void operations_research::glop::LuFactorization::RightSolveUWithNonZeros(uint64_t this, operations_research::glop::ScatteredColumn *a2)
{
  if (*(this + 1192) != *(this + 1200))
  {
    operations_research::glop::LuFactorization::RightSolveUWithNonZeros(&v6);
  }

  if ((*this & 1) == 0)
  {
    operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder((this + 304), a2 + 4);
    *(a2 + 24) = 1;
    v5 = this + 600;
    if (*(a2 + 4) == *(a2 + 5))
    {

      operations_research::glop::TriangularMatrix::TransposeLowerSolve(v5, a2, v4);
    }

    else
    {

      operations_research::glop::TriangularMatrix::TransposeHyperSparseSolveWithReversedNonZeros(v5, a2, a2 + 32);
    }
  }
}

uint64_t operations_research::glop::LuFactorization::LeftSolveLWithNonZeros(uint64_t a1, uint64_t a2, void **a3)
{
  if (*a1)
  {
    return 0;
  }

  operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder((a1 + 896), (a2 + 32));
  *(a2 + 24) = 1;
  v8 = a1 + 8;
  if (*(a2 + 32) == *(a2 + 40))
  {
    operations_research::glop::TriangularMatrix::TransposeLowerSolve(v8, a2, v7);
    if (a3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    operations_research::glop::TriangularMatrix::TransposeHyperSparseSolveWithReversedNonZeros(v8, a2, a2 + 32);
    if (a3)
    {
LABEL_5:
      v9 = *(a2 + 8) - *a2;
      v11 = a3[4];
      v10 = a3[5];
      if (v11 == v10 || (v9 >> 3) * 0.05 <= ((v10 - v11) >> 2))
      {
        v65 = 0;
        v14 = v9 << 29;
        v15 = (v9 >> 3);
        v16 = *a3;
        v17 = (a3[1] - *a3) >> 3;
        if (v15 <= v17)
        {
          if (v15 < v17)
          {
            a3[1] = &v16[8 * v15];
          }
        }

        else
        {
          std::vector<double>::__append(a3, v15 - v17, &v65);
          v16 = *a3;
        }

        bzero(v16, (v14 >> 29) & 0xFFFFFFFFFFFFFFF8);
        goto LABEL_18;
      }

      v12 = *a3;
      if (&v10[-1].u8[4] == v11)
      {
        v13 = a3[4];
      }

      else
      {
        v55 = ((&v10[-1].u8[4] - v11) >> 2) + 1;
        v13 = (v11 + 4 * (v55 & 0x7FFFFFFFFFFFFFFELL));
        v56 = v55 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v57 = *v11++;
          v58 = vshrq_n_s64(vshll_n_s32(v57, 0x20uLL), 0x1DuLL);
          *&v12[v58.i64[0]] = 0;
          *&v12[v58.i64[1]] = 0;
          v56 -= 2;
        }

        while (v56);
        if (v55 == (v55 & 0x7FFFFFFFFFFFFFFELL))
        {
LABEL_44:
          v65 = 0;
          v60 = (v9 >> 3);
          v61 = (a3[1] - v12) >> 3;
          if (v60 <= v61)
          {
            if (v60 < v61)
            {
              a3[1] = &v12[8 * v60];
            }
          }

          else
          {
            std::vector<double>::__append(a3, v60 - v61, &v65);
          }

LABEL_18:
          v26 = a3[4];
          a3[5] = v26;
          v27 = *a2;
          *a2 = *a3;
          *a3 = v27;
          v28 = *(a2 + 8);
          *(a2 + 8) = a3[1];
          a3[1] = v28;
          v29 = *(a2 + 16);
          *(a2 + 16) = a3[2];
          a3[2] = v29;
          v30 = *(a2 + 32);
          if (v30 == *(a2 + 40))
          {
            v38 = *(a1 + 1264);
            v39 = *(a1 + 1272) - v38;
            if ((v39 >> 2) >= 1)
            {
              v40 = *a3;
              v41 = (v39 >> 2) & 0x7FFFFFFF;
              do
              {
                if (*v40 != 0.0)
                {
                  *(*a2 + 8 * *v38) = *v40;
                }

                ++v38;
                ++v40;
                --v41;
              }

              while (v41);
            }
          }

          else
          {
            *(a2 + 32) = v26;
            a3[4] = v30;
            v31 = *(a2 + 40);
            *(a2 + 40) = a3[5];
            a3[5] = v31;
            v32 = *(a2 + 48);
            *(a2 + 48) = a3[6];
            a3[6] = v32;
            v33 = a3[5] - a3[4];
            if (*(a2 + 48) - *(a2 + 32) < v33)
            {
              if ((v33 & 0x8000000000000000) == 0)
              {
                operator new();
              }

              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v34 = a3[4];
            v35 = a3[5];
            while (v34 != v35)
            {
              v36 = *v34++;
              v37 = *(*a3 + v36);
              LODWORD(v65) = *(*(a1 + 1264) + 4 * v36);
              *(*a2 + 8 * v65) = v37;
              std::vector<int>::push_back[abi:ne200100](a2 + 32, &v65);
            }

            *(a2 + 24) = 0;
          }

          return 1;
        }
      }

      do
      {
        v59 = v13->i32[0];
        v13 = (v13 + 4);
        *&v12[8 * v59] = 0;
      }

      while (v13 != v10);
      goto LABEL_44;
    }
  }

  v18 = *(a2 + 32);
  v19 = *(a2 + 40);
  if (v18 != v19)
  {
    v20 = *(a1 + 1360);
    *(a1 + 1360) = *a2;
    *a2 = v20;
    v21 = *(a1 + 1368);
    *(a1 + 1368) = *(a2 + 8);
    *(a2 + 8) = v21;
    v22 = *(a1 + 1376);
    *(a1 + 1376) = *(a2 + 16);
    *(a2 + 16) = v22;
    v23 = *(a1 + 1368) - *(a1 + 1360);
    v65 = 0;
    v24 = (v23 >> 3);
    v25 = (*(a2 + 8) - *a2) >> 3;
    if (v24 <= v25)
    {
      if (v24 < v25)
      {
        *(a2 + 8) = *a2 + 8 * v24;
      }
    }

    else
    {
      std::vector<double>::__append(a2, v24 - v25, &v65);
      v18 = *(a2 + 32);
      v19 = *(a2 + 40);
    }

    if (v18 != v19)
    {
      v48 = *(a1 + 1360);
      v49 = *(a1 + 1264);
      v50 = *a2;
      do
      {
        v51 = *v18;
        v52 = 8 * *v18;
        v53 = *(v48 + v52);
        *(v48 + v52) = 0;
        v54 = *(v49 + 4 * v51);
        *(v50 + 8 * v54) = v53;
        *v18++ = v54;
      }

      while (v18 != v19);
    }

    return 0;
  }

  v42 = *(a2 + 8) - *a2;
  v43 = *(a1 + 1360);
  *(a1 + 1360) = *a2;
  *a2 = v43;
  v44 = *(a1 + 1368);
  *(a1 + 1368) = *(a2 + 8);
  *(a2 + 8) = v44;
  v45 = *(a1 + 1376);
  *(a1 + 1376) = *(a2 + 16);
  *(a2 + 16) = v45;
  v65 = 0;
  v46 = (v42 >> 3);
  v47 = (*(a2 + 8) - *a2) >> 3;
  if (v46 <= v47)
  {
    if (v46 < v47)
    {
      *(a2 + 8) = *a2 + 8 * v46;
    }
  }

  else
  {
    std::vector<double>::__append(a2, v46 - v47, &v65);
  }

  if ((v42 >> 3) >= 1)
  {
    v62 = *(a1 + 1360);
    v63 = *(a1 + 1264);
    v64 = (v42 >> 3) & 0x7FFFFFFF;
    do
    {
      if (*v62 != 0.0)
      {
        *(*a2 + 8 * *v63) = *v62;
      }

      ++v63;
      ++v62;
      --v64;
    }

    while (v64);
  }

  v65 = 0;
  std::vector<double>::assign((a1 + 1360), (v42 >> 3), &v65);
  return 0;
}

uint64_t operations_research::glop::LuFactorization::LeftSolveUForUnitRow(uint64_t a1, int a2, uint64_t a3)
{
  v7 = a2;
  if (*a1 == 1)
  {
    *(*a3 + 8 * a2) = 0x3FF0000000000000;
    std::vector<int>::push_back[abi:ne200100](a3 + 32, &v7);
    v8 = v7;
    return v7;
  }

  else
  {
    v6 = *(a1 + 1192);
    if (v6 != *(a1 + 1200))
    {
      a2 = *(v6 + 4 * a2);
    }

    v8 = a2;
    *(*a3 + 8 * a2) = 0x3FF0000000000000;
    std::vector<int>::push_back[abi:ne200100](a3 + 32, &v8);
    if (*(*(a1 + 656) + (((v8 << 32) + 0x100000000) >> 29)) == *(*(a1 + 656) + 8 * v8))
    {
      *(*a3 + 8 * v8) = *(*a3 + 8 * v8) / *(*(a1 + 680) + 8 * v8);
      return v8;
    }

    else
    {
      operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder((a1 + 600), (a3 + 32));
      *(a3 + 24) = 1;
      if (*(a3 + 32) == *(a3 + 40))
      {
        operations_research::glop::TriangularMatrix::LowerSolveStartingAt(a1 + 600, v8, a3);
      }

      else
      {
        operations_research::glop::TriangularMatrix::HyperSparseSolve(a1 + 600, a3, (a3 + 32));
      }

      return v8;
    }
  }
}

uint64_t operations_research::glop::LuFactorization::GetColumnOfU(uint64_t a1, int a2, __n128 a3)
{
  if (*a1 == 1)
  {
    v3 = a1 + 1312;
    *(a1 + 1320) = 0;
    *(a1 + 1352) = 0;
    if (!*(a1 + 1328))
    {
      operator new[]();
    }

    *(a1 + 1320) = 1;
    **(a1 + 1336) = a2;
    **(a1 + 1344) = 0x3FF0000000000000;
    *(a1 + 1352) = 1;
  }

  else
  {
    v4 = *(a1 + 1192);
    if (v4 != *(a1 + 1200))
    {
      a2 = *(v4 + 4 * a2);
    }

    v3 = a1 + 1312;
    operations_research::glop::TriangularMatrix::CopyColumnToSparseColumn((a1 + 304), a2, a1 + 1312, a3);
  }

  return v3;
}

uint64_t operations_research::glop::LuFactorization::NumberOfEntries(operations_research::glop::LuFactorization *this)
{
  if (*this)
  {
    return 0;
  }

  else
  {
    return *(this + 77) + *(this + 3) + ((*(this + 3) - *(this + 2)) >> 3) + ((*(this + 40) - *(this + 39)) >> 3);
  }
}

double operations_research::glop::LuFactorization::ComputeInverseInfinityNormUpperBound(operations_research::glop::LuFactorization *this)
{
  operations_research::glop::TriangularMatrix::ComputeInverseInfinityNormUpperBound((this + 8));
  v3 = v2;
  operations_research::glop::TriangularMatrix::ComputeInverseInfinityNormUpperBound((this + 304));
  return v3 * v4;
}

void operations_research::glop::SparseMatrix::~SparseMatrix(operations_research::glop::SparseMatrix *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = *(this + 1);
    v4 = *this;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 6);
        v3 -= 6;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          MEMORY[0x23EED9440](v5, 0x1000C8077774924);
        }
      }

      while (v3 != v2);
      v4 = *this;
    }

    *(this + 1) = v2;
    operator delete(v4);
  }
}

operations_research::glop::Markowitz *operations_research::glop::Markowitz::Markowitz(operations_research::glop::Markowitz *this)
{
  v2 = operations_research::glop::Markowitz::Stats::Stats(this);
  *(v2 + 433) = 0u;
  *(v2 + 408) = 0u;
  *(v2 + 424) = 0u;
  *(v2 + 456) = 0u;
  *(v2 + 472) = 0u;
  *(v2 + 488) = 0u;
  *(v2 + 504) = 0u;
  *(v2 + 520) = 0u;
  *(v2 + 536) = 0u;
  *(v2 + 552) = 0u;
  *(v2 + 568) = 0;
  *(v2 + 36) = 0u;
  *(v2 + 37) = 0u;
  *(v2 + 38) = 0u;
  *(v2 + 39) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 41) = 0u;
  *(v2 + 42) = 0u;
  *(v2 + 43) = 0u;
  *(v2 + 44) = 0u;
  *(v2 + 45) = 0u;
  *(v2 + 46) = 0u;
  *(v2 + 188) = 0;
  *(v2 + 756) = 1;
  *(v2 + 190) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 49) = 0u;
  *(v2 + 50) = 0u;
  *(v2 + 824) = 0u;
  *(v2 + 840) = 0u;
  *(v2 + 856) = 0u;
  *(v2 + 872) = 0u;
  *(v2 + 888) = 0u;
  *(v2 + 904) = 0u;
  *(v2 + 920) = 0u;
  *(v2 + 936) = 0u;
  *(v2 + 952) = 0u;
  *(v2 + 968) = 0u;
  *(v2 + 984) = 0u;
  *(v2 + 1000) = 0u;
  *(v2 + 1016) = 0u;
  *(v2 + 1032) = 0u;
  *(v2 + 262) = 0;
  *(v2 + 1052) = 1;
  *(v2 + 264) = 0;
  *(v2 + 1064) = 0u;
  *(v2 + 1080) = 0u;
  *(v2 + 1096) = 0u;
  *(v2 + 185) = 0;
  *(v2 + 1448) = 0u;
  *(v2 + 1464) = 0u;
  *(v2 + 1416) = 0u;
  *(v2 + 1432) = 0u;
  *(v2 + 352) = 0;
  *(v2 + 87) = 0u;
  *(v2 + 86) = 0u;
  *(v2 + 85) = 0u;
  *(v2 + 84) = 0u;
  *(v2 + 83) = 0u;
  *(v2 + 82) = 0u;
  *(v2 + 81) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 79) = 0u;
  *(v2 + 78) = 0u;
  *(v2 + 77) = 0u;
  *(v2 + 76) = 0u;
  *(v2 + 75) = 0u;
  *(v2 + 74) = 0u;
  *(v2 + 73) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 71) = 0u;
  *(v2 + 70) = 0u;
  *(v2 + 196) = 0;
  *(v2 + 97) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 95) = 0u;
  *(v2 + 94) = 0u;
  operations_research::glop::GlopParameters::GlopParameters(v2 + 1576, 0);
  return this;
}

void sub_23CBAE3DC(_Unwind_Exception *a1)
{
  v6 = v1[194];
  if (v6)
  {
    v1[195] = v6;
    operator delete(v6);
    v7 = v1[191];
    if (!v7)
    {
LABEL_3:
      v8 = *v4;
      if (!*v4)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v7 = v1[191];
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  v1[192] = v7;
  operator delete(v7);
  v8 = *v4;
  if (!*v4)
  {
LABEL_4:
    operations_research::glop::ColumnPriorityQueue::~ColumnPriorityQueue(v3);
    operations_research::glop::MatrixNonZeroPattern::~MatrixNonZeroPattern((v1 + 158));
    v9 = v1[155];
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  v1[189] = v8;
  operator delete(v8);
  operations_research::glop::ColumnPriorityQueue::~ColumnPriorityQueue(v3);
  operations_research::glop::MatrixNonZeroPattern::~MatrixNonZeroPattern((v1 + 158));
  v9 = v1[155];
  if (!v9)
  {
LABEL_6:
    operations_research::glop::TriangularMatrix::~TriangularMatrix((v1 + 118));
    operations_research::glop::TriangularMatrix::~TriangularMatrix((v1 + 81));
    operations_research::glop::SparseMatrixWithReusableColumnMemory::~SparseMatrixWithReusableColumnMemory((v1 + 66));
    operations_research::glop::SparseMatrixWithReusableColumnMemory::~SparseMatrixWithReusableColumnMemory(v2);
    operations_research::glop::Markowitz::Stats::~Stats(v1);
    _Unwind_Resume(a1);
  }

LABEL_5:
  operator delete(v9);
  goto LABEL_6;
}

void operations_research::glop::ColumnPriorityQueue::~ColumnPriorityQueue(operations_research::glop::ColumnPriorityQueue *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = *(this + 7);
    v4 = *(this + 6);
    if (v3 != v2)
    {
      v5 = *(this + 7);
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(this + 6);
    }

    *(this + 7) = v2;
    operator delete(v4);
  }

  v8 = *(this + 3);
  if (v8)
  {
    *(this + 4) = v8;
    operator delete(v8);
  }

  v9 = *this;
  if (*this)
  {
    *(this + 1) = v9;
    operator delete(v9);
  }
}

void operations_research::glop::SparseMatrixWithReusableColumnMemory::~SparseMatrixWithReusableColumnMemory(operations_research::glop::SparseMatrixWithReusableColumnMemory *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    v3 = *(this + 13);
    v4 = *(this + 12);
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 6);
        v3 -= 6;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          MEMORY[0x23EED9440](v5, 0x1000C8077774924);
        }
      }

      while (v3 != v2);
      v4 = *(this + 12);
    }

    *(this + 13) = v2;
    operator delete(v4);
  }

  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  v8 = *(this + 6);
  if (v8)
  {
    *(this + 7) = v8;
    operator delete(v8);
  }

  v9 = *this;
  *this = 0;
  if (v9)
  {
    MEMORY[0x23EED9440](v9, 0x1000C8077774924);
  }
}

void operations_research::glop::Markowitz::Stats::~Stats(operations_research::glop::Markowitz::Stats *this)
{
  *(this + 40) = &unk_284F3A5F8;
  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
    *(this + 30) = &unk_284F3A5F8;
    if ((*(this + 271) & 0x80000000) == 0)
    {
LABEL_3:
      *(this + 20) = &unk_284F3A5F8;
      if ((*(this + 191) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    *(this + 30) = &unk_284F3A5F8;
    if ((*(this + 271) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(this + 31));
  *(this + 20) = &unk_284F3A5F8;
  if ((*(this + 191) & 0x80000000) == 0)
  {
LABEL_4:
    *(this + 10) = &unk_284F3A5F8;
    if ((*(this + 111) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(this + 21));
  *(this + 10) = &unk_284F3A5F8;
  if ((*(this + 111) & 0x80000000) == 0)
  {
LABEL_5:
    v2 = this;

    goto LABEL_7;
  }

LABEL_11:
  operator delete(*(this + 11));
  v2 = this;

LABEL_7:
  operations_research::StatsGroup::~StatsGroup(v2);
}

operations_research::glop::Markowitz::Stats *operations_research::glop::Markowitz::Stats::Stats(operations_research::glop::Markowitz::Stats *this)
{
  *(this + 23) = 9;
  strcpy(this, "Markowitz");
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 9) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 7) = this + 64;
  operations_research::DistributionStat::DistributionStat(this + 80, "basis_singleton_column_ratio", 0x1CuLL, this);
  *(this + 10) = &unk_284F44D30;
  operations_research::DistributionStat::DistributionStat(this + 160, "basis_residual_singleton_column_ratio", 0x25uLL, this);
  *(this + 20) = &unk_284F44D30;
  operations_research::DistributionStat::DistributionStat(this + 240, "pivots_without_fill_in_ratio", 0x1CuLL, this);
  *(this + 30) = &unk_284F44D30;
  operations_research::DistributionStat::DistributionStat(this + 320, "degree_two_pivot_columns", 0x18uLL, this);
  *(this + 40) = &unk_284F44D30;
  return this;
}

void sub_23CBAE8A4(_Unwind_Exception *a1)
{
  *(v1 + 240) = &unk_284F3A5F8;
  if (*(v1 + 271) < 0)
  {
    operator delete(*(v1 + 248));
    *(v1 + 160) = &unk_284F3A5F8;
    if ((*(v1 + 191) & 0x80000000) == 0)
    {
LABEL_3:
      *(v1 + 80) = &unk_284F3A5F8;
      if ((*(v1 + 111) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    *(v1 + 160) = &unk_284F3A5F8;
    if ((*(v1 + 191) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(v1 + 168));
  *(v1 + 80) = &unk_284F3A5F8;
  if ((*(v1 + 111) & 0x80000000) == 0)
  {
LABEL_4:
    operations_research::StatsGroup::~StatsGroup(v1);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(*(v1 + 88));
  operations_research::StatsGroup::~StatsGroup(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<BOOL>::operator=(uint64_t *result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      v4 = result;
      if (v3 > result[2] << 6)
      {
        v5 = *result;
        if (v5)
        {
          operator delete(v5);
          *v4 = 0;
          v4[1] = 0;
          v4[2] = 0;
          v3 = *(a2 + 8);
        }

        if ((v3 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      memmove(*result, *a2, (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      result = v4;
      v3 = *(a2 + 8);
    }

    result[1] = v3;
  }

  return result;
}

void operations_research::glop::Markowitz::ComputeRowAndColumnPermutation(uint64_t a1@<X0>, unsigned int **a2@<X1>, std::vector<int> *a3@<X2>, std::vector<int> *a4@<X3>, operations_research::glop::Status *a5@<X8>)
{
  v65[2] = *MEMORY[0x277D85DE8];
  operations_research::glop::Markowitz::Clear(a1);
  v57 = **a2;
  v8 = a2[2];
  LODWORD(__u.__r_.__value_.__l.__data_) = -1;
  std::vector<int>::assign(a4, v8, &__u);
  LODWORD(__u.__r_.__value_.__l.__data_) = -1;
  std::vector<int>::assign(a3, v57, &__u);
  if (*(*a2 + 1) == *(*a2 + 2))
  {
    operations_research::glop::Status::Status(a5);
    return;
  }

  *(a1 + 400) = a2;
  operations_research::glop::TriangularMatrix::Reset(a1 + 648, v57, v8);
  operations_research::glop::TriangularMatrix::Reset(a1 + 944, v57, v8);
  LODWORD(__u.__r_.__value_.__l.__data_) = -1;
  std::vector<int>::assign((a1 + 456), v8, &__u);
  *(a1 + 488) = *(a1 + 480);
  v9 = *(a1 + 504);
  v10 = *(a1 + 512);
  while (v10 != v9)
  {
    v12 = *(v10 - 6);
    v10 -= 6;
    v11 = v12;
    *v10 = 0;
    if (v12)
    {
      MEMORY[0x23EED9440](v11, 0x1000C8077774924);
    }
  }

  *(a1 + 512) = v9;
  LODWORD(__u.__r_.__value_.__l.__data_) = -1;
  std::vector<int>::assign((a1 + 576), v8, &__u);
  *(a1 + 608) = *(a1 + 600);
  v13 = *(a1 + 632);
  v14 = *(a1 + 624);
  while (v13 != v14)
  {
    v16 = *(v13 - 6);
    v13 -= 6;
    v15 = v16;
    *v13 = 0;
    if (v16)
    {
      MEMORY[0x23EED9440](v15, 0x1000C8077774924);
    }
  }

  *(a1 + 632) = v14;
  __u.__r_.__value_.__s.__data_[0] = 0;
  std::vector<BOOL>::assign(a1 + 1240, v8, &__u);
  *(a1 + 1496) = 1;
  v64 = 0;
  operations_research::glop::Markowitz::ExtractSingletonColumns(a1, a2, a3, a4, &v64, v17);
  operations_research::glop::Markowitz::ExtractResidualSingletonColumns(a1, a2, a3, a4, &v64);
  v56 = v64;
  operations_research::glop::MatrixNonZeroPattern::InitializeFromMatrixSubset(a1 + 1264, a2, a3, a4, (a1 + 1528), (a1 + 1552));
  if (v57 >= v8)
  {
    v18 = v8;
  }

  else
  {
    v18 = v57;
  }

  v19 = v56;
  v55 = v18;
  if (v56 >= v18)
  {
LABEL_37:
    *(a1 + 1904) += 10 * (*(a1 + 652) + ((*(a1 + 664) - *(a1 + 656)) >> 3)) + 10 * (*(a1 + 948) + ((*(a1 + 960) - *(a1 + 952)) >> 3));
    operations_research::RatioDistribution::Add(a1 + 240, v56 / v57);
    operations_research::RatioDistribution::Add(a1 + 320, 0.0 / v57);
    operations_research::glop::Status::Status(a5);
    return;
  }

  v20 = *(a1 + 1752);
  v22 = a4;
  v21 = a3;
  while (1)
  {
    v63 = 0.0;
    v61 = -1;
    v62 = -1;
    Pivot = operations_research::glop::Markowitz::FindPivot(a1, v21, v22, &v62, &v61, &v63);
    v24 = v62;
    if (v62 == -1)
    {
      break;
    }

    v25 = v61;
    if (v61 == -1)
    {
      break;
    }

    v26 = v63;
    if (fabs(v63) <= v20)
    {
      break;
    }

    v27 = 4 * v61;
    v28 = *(*(a1 + 1312) + v27);
    v29 = *(a1 + 1288);
    *(*(a1 + 1336) + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
    --*(a1 + 1408);
    *(v29 + 4 * v24) = 0;
    if (Pivot)
    {
      operations_research::glop::Markowitz::UpdateResidualMatrix(a1, v24, v25);
    }

    else
    {
      ++v56;
      if (v28 == 1)
      {
        operations_research::glop::Markowitz::RemoveRowFromResidualMatrix(a1, v24);
      }

      else
      {
        v30 = *(*(a1 + 456) + 4 * v25);
        v31 = a1 + 408;
        if (v30 != -1)
        {
          v31 = *(a1 + 504) + 48 * v30;
        }

        v32 = *(v31 + 8);
        if (v32 >= 1)
        {
          v33 = *(v31 + 24);
          do
          {
            v34 = *v33++;
            LODWORD(__u.__r_.__value_.__l.__data_) = v34;
            v35 = *(a1 + 1288);
            v36 = 4 * v34;
            v37 = *(v35 + v36) - 1;
            *(v35 + v36) = v37;
            if (v37 == 1)
            {
              std::vector<int>::push_back[abi:ne200100](a1 + 1552, &__u);
            }

            --v32;
          }

          while (v32);
        }
      }
    }

    if (*(a1 + 1496) == 1)
    {
      operations_research::glop::TriangularMatrix::AddDiagonalOnlyColumn(a1 + 648, 1.0);
      v38 = a2[1][v27 / 4];
      v39 = *(*a2 + 7);
      v40 = *(v39 + 8 * v38);
      v41 = *(v39 + (((v38 << 32) + 0x100000000) >> 29)) - v40;
      v42 = *(*a2 + 4) + 4 * v40;
      v43 = *(*a2 + 1) + 8 * v40;
      __u.__r_.__value_.__r.__words[0] = v41;
      __u.__r_.__value_.__l.__size_ = v42;
      __u.__r_.__value_.__r.__words[2] = v43;
      operations_research::glop::TriangularMatrix::AddTriangularColumn(a1 + 944, &__u, v24);
    }

    else
    {
      v44 = *(*(a1 + 456) + v27);
      v45 = (a1 + 408);
      if (v44 != -1)
      {
        v45 = (*(a1 + 504) + 48 * v44);
      }

      operations_research::glop::TriangularMatrix::AddAndNormalizeTriangularColumn(a1 + 648, v45, v24, v26);
      std::vector<int>::push_back[abi:ne200100](a1 + 480, (*(a1 + 456) + v27));
      v46 = *(a1 + 456);
      v47 = *(a1 + 504) + 48 * *(v46 + v27);
      *(v47 + 8) = 0;
      *(v47 + 40) = 0;
      *(v46 + v27) = -1;
      v48 = *(*(a1 + 576) + v27);
      v49 = (a1 + 528);
      if (v48 != -1)
      {
        v49 = (*(a1 + 624) + 48 * v48);
      }

      operations_research::glop::TriangularMatrix::AddTriangularColumnWithGivenDiagonalEntry(a1 + 944, v49, v26);
      std::vector<int>::push_back[abi:ne200100](a1 + 600, (*(a1 + 576) + v27));
      v50 = *(a1 + 576);
      v51 = *(a1 + 624) + 48 * *(v50 + v27);
      *(v51 + 8) = 0;
      *(v51 + 40) = 0;
      *(v50 + v27) = -1;
    }

    v22 = a4;
    v21 = a3;
    a4->__begin_[v27 / 4] = v19;
    a3->__begin_[v24] = v19++;
    if (v19 == v55)
    {
      goto LABEL_37;
    }
  }

  v64 = v19;
  *v65 = v63;
  v65[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  absl::lts_20240722::str_format_internal::FormatPack("The matrix is singular! pivot = %E", 34, v65, 1uLL, &__u);
  if (dword_2810BD380 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::glop::Markowitz::ComputeRowAndColumnPermutation(operations_research::glop::CompactSparseMatrixView const&,operations_research::glop::Permutation<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>> *,operations_research::glop::Permutation<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>> *)::$_0::operator() const(void)::site, dword_2810BD380))
  {
    v52 = absl::lts_20240722::log_internal::LogMessage::LogMessage(v65, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/markowitz.cc", 91);
    v53 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v52, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v53, "ERROR_LU: ", 0xAuLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<(v53, &__u);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v65);
  }

  if (SHIBYTE(__u.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v59, __u.__r_.__value_.__l.__data_, __u.__r_.__value_.__l.__size_);
  }

  else
  {
    v59 = __u;
  }

  operations_research::glop::Status::Status(a5, 1, &v59);
  if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__u.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_47:
    operator delete(__u.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v59.__r_.__value_.__l.__data_);
  if (SHIBYTE(__u.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_47;
  }
}

void sub_23CBAF140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::glop::Markowitz::Clear(operations_research::glop::Markowitz *this)
{
  *(this + 58) = *(this + 57);
  *(this + 61) = *(this + 60);
  v2 = *(this + 63);
  v3 = *(this + 64);
  while (v3 != v2)
  {
    v5 = *(v3 - 6);
    v3 -= 6;
    v4 = v5;
    *v3 = 0;
    if (v5)
    {
      MEMORY[0x23EED9440](v4, 0x1000C8077774924);
    }
  }

  *(this + 64) = v2;
  *(this + 73) = *(this + 72);
  *(this + 76) = *(this + 75);
  v6 = *(this + 79);
  v7 = *(this + 78);
  while (v6 != v7)
  {
    v9 = *(v6 - 6);
    v6 -= 6;
    v8 = v9;
    *v6 = 0;
    if (v9)
    {
      MEMORY[0x23EED9440](v8, 0x1000C8077774924);
    }
  }

  *(this + 79) = v7;
  *(this + 162) = *(this + 161);
  *(this + 165) = *(this + 164);
  v10 = *(this + 159);
  v11 = *(this + 158);
  if (v10 != v11)
  {
    v12 = *(this + 159);
    do
    {
      v13 = *(v12 - 32);
      v12 -= 32;
      if (v13)
      {
        operator delete(*(v10 - 24));
      }

      v10 = v12;
    }

    while (v12 != v11);
  }

  *(this + 159) = v11;
  *(this + 168) = 0;
  *(this + 171) = 0;
  *(this + 352) = 0;
  *(this + 181) = *(this + 180);
  *(this + 178) = *(this + 177);
  v14 = *(this + 184);
  v15 = *(this + 183);
  if (v14 != v15)
  {
    v16 = *(this + 184);
    do
    {
      v18 = *(v16 - 24);
      v16 -= 24;
      v17 = v18;
      if (v18)
      {
        *(v14 - 16) = v17;
        operator delete(v17);
      }

      v14 = v16;
    }

    while (v16 != v15);
  }

  *(this + 184) = v15;
  *(this + 189) = *(this + 188);
  *(this + 238) = 0;
  *(this + 1497) = 0;
}

void operations_research::glop::Markowitz::ExtractSingletonColumns(uint64_t a1, int **a2, uint64_t *a3, void *a4, int *a5, __n128 a6)
{
  if (a2[2] >= 1)
  {
    v8 = 0;
    do
    {
      v9 = a2[1][v8];
      if (*(*(*a2 + 7) + (((v9 << 32) + 0x100000000) >> 29)) - *(*(*a2 + 7) + 8 * v9) == 1)
      {
        operator new();
      }

      ++v8;
    }

    while ((a2[2] & 0x7FFFFFFF) != v8);
  }

  operations_research::RatioDistribution::Add(a1 + 80, *a5 / **a2);
}

void sub_23CBAF5B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::glop::Markowitz::ExtractResidualSingletonColumns(uint64_t a1, int **a2, uint64_t *a3, uint64_t *a4, int *a5)
{
  if (a2[2] >= 1)
  {
    v10 = 0;
    v11 = a2[2] & 0x7FFFFFFF;
    v12 = 0xFFFFFFFFLL;
    do
    {
      v13 = *a4;
      if (*(*a4 + 4 * v10) == -1)
      {
        v14 = a2[1][v10];
        v15 = *(*a2 + 7);
        v16 = *(v15 + 8 * v14);
        v17 = *(v15 + (((v14 << 32) + 0x100000000) >> 29)) - v16;
        v18 = (*(*a2 + 4) + 4 * v16);
        v19 = *(*a2 + 1) + 8 * v16;
        v26[0] = v17;
        v26[1] = v18;
        v26[2] = v19;
        if (v17 >= 1)
        {
          v20 = 0;
          v21 = *a3;
          do
          {
            v23 = *v18++;
            v22 = v23;
            if (*(v21 + 4 * v23) == -1)
            {
              if (++v20 > 1)
              {
                goto LABEL_4;
              }
            }

            else
            {
              v22 = v12;
            }

            v12 = v22;
            --v17;
          }

          while (v17);
          if (v20 == 1)
          {
            v24 = *a5;
            *(v13 + 4 * v10) = *a5;
            *(v21 + 4 * v22) = v24;
            operations_research::glop::TriangularMatrix::AddDiagonalOnlyColumn(a1 + 648, 1.0);
            operations_research::glop::TriangularMatrix::AddTriangularColumn(a1 + 944, v26, v22);
            ++*a5;
          }

          v12 = v22;
        }
      }

LABEL_4:
      ++v10;
    }

    while (v10 != v11);
  }

  return operations_research::RatioDistribution::Add(a1 + 160, *a5 / **a2);
}

void operations_research::glop::MatrixNonZeroPattern::InitializeFromMatrixSubset(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5, void *a6)
{
  v11 = *(a2 + 16);
  v12 = **a2;
  operations_research::glop::MatrixNonZeroPattern::Reset(a1, v12, v11);
  a5[1] = *a5;
  a6[1] = *a6;
  if (v11 >= 1)
  {
    v13 = 0;
    v14 = *a4;
    v15 = *a2;
    v16 = *(a2 + 8);
    do
    {
      if (*(v14 + 4 * v13) == -1)
      {
        v17 = *(v16 + 4 * v13);
        v18 = *(v15 + 7);
        v19 = *(v18 + 8 * v17);
        v20 = *(v18 + (((v17 << 32) + 0x100000000) >> 29)) - v19;
        if (v20 >= 1)
        {
          v21 = (*(v15 + 4) + 4 * v19);
          v22 = *(a1 + 24);
          do
          {
            v23 = *v21++;
            ++*(v22 + 4 * v23);
            --v20;
          }

          while (v20);
        }
      }

      else
      {
        *(*(a1 + 72) + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        --*(a1 + 144);
      }

      ++v13;
    }

    while (v13 != (v11 & 0x7FFFFFFF));
  }

  v46 = 0;
  if (v12 >= 1)
  {
    for (i = 0; i < v12; v46 = i)
    {
      v25 = 4 * i;
      if (*(*a3 + v25) == -1)
      {
        if (*(*a1 + 32 * i))
        {
          v26 = *(*a1 + 32 * i + 16);
        }

        else
        {
          v26 = 6;
        }

        v27 = *(a1 + 24);
        v28 = *(v27 + v25);
        if (v26 < v28)
        {
          if (2 * v26 <= v28)
          {
            v29 = *(v27 + v25);
          }

          else
          {
            v29 = 2 * v26;
          }

          if (!(v29 >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        if (*(v27 + v25) == 1)
        {
          std::vector<int>::push_back[abi:ne200100](a6, &v46);
        }
      }

      else
      {
        *(*(a1 + 24) + 4 * i) = 0;
      }

      i = v46 + 1;
    }
  }

  v45 = 0;
  if (v11 >= 1)
  {
    v30 = 0;
    do
    {
      v31 = 4 * v30;
      if (*(*a4 + v31) == -1)
      {
        v32 = *(*(a2 + 8) + v31);
        v33 = *(*a2 + 56);
        v34 = *(v33 + 8 * v32);
        v35 = *(v33 + (((v32 << 32) + 0x100000000) >> 29)) - v34;
        if (v35 < 1)
        {
          *(*(a1 + 48) + v31) = 0;
        }

        else
        {
          v36 = 0;
          v37 = (*(*a2 + 32) + 4 * v34);
          do
          {
            v39 = *v37++;
            v38 = v39;
            if (*(*a3 + 4 * v39) == -1)
            {
              v40 = (*a1 + 32 * v38);
              v42 = v40 + 1;
              v41 = *v40;
              if (*v40)
              {
                v42 = v40[1];
                v43 = v40[2];
              }

              else
              {
                v43 = 6;
              }

              ++v36;
              if (v41 >> 1 == v43)
              {
                absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::EmplaceBackSlow<operations_research::sat::Literal const&>(v40, &v45);
              }

              *(v42 + (v41 >> 1)) = v45;
              *v40 = v41 + 2;
            }

            --v35;
          }

          while (v35);
          *(*(a1 + 48) + 4 * v45) = v36;
          if (v36 == 1)
          {
            std::vector<int>::push_back[abi:ne200100](a5, &v45);
          }
        }
      }

      v30 = v45 + 1;
      v45 = v30;
    }

    while (v30 < v11);
  }
}

uint64_t operations_research::glop::Markowitz::FindPivot(uint64_t a1, void *a2, void *a3, _DWORD *a4, unsigned int *a5, double *a6)
{
  v12 = *(a1 + 1528);
  v13 = *(a1 + 1536);
  while (v12 != v13)
  {
    v15 = *(v13 - 4);
    v13 -= 4;
    v14 = v15;
    *(a1 + 1536) = v13;
    v16 = 4 * v15;
    if (*(*(a1 + 1312) + v16) == 1)
    {
      if (*(a1 + 1496) == 1)
      {
        *a5 = v14;
        v76 = *(a1 + 400);
        v77 = *v76;
        v78 = *(v76[1] + v16);
        v79 = *(*v76 + 56);
        v80 = *(v79 + 8 * v78);
        v81 = *(v79 + (((v78 << 32) + 0x100000000) >> 29)) - v80;
        if (v81 < 1)
        {
          return 0;
        }

        v82 = (*(v77 + 32) + 4 * v80);
        for (i = (*(v77 + 8) + 8 * v80); ; ++i)
        {
          v85 = *v82++;
          v84 = v85;
          if (*(*a2 + 4 * v85) == -1)
          {
            break;
          }

          if (!--v81)
          {
            return 0;
          }
        }

        v50 = 0;
        *a4 = v84;
        *a6 = *i;
        return v50;
      }

      v17 = operations_research::glop::Markowitz::ComputeColumn(a1, a2, v14);
      if (v17[1])
      {
        v50 = 0;
        *a5 = v14;
        *a4 = *v17[3];
        *a6 = *v17[4];
        return v50;
      }

      v12 = *(a1 + 1528);
      v13 = *(a1 + 1536);
    }
  }

  v98 = a4;
  *(a1 + 1496) = 0;
  while (2)
  {
    v18 = *(a1 + 1552);
    v19 = *(a1 + 1560);
    while (1)
    {
LABEL_9:
      if (v18 == v19)
      {
        v99 = a6;
        if ((*(a1 + 1497) & 1) == 0)
        {
          *(a1 + 1497) = 1;
          v33 = a3[1] - *a3;
          v34 = (a1 + 1416);
          operations_research::glop::ColumnPriorityQueue::Reset((a1 + 1416), (a2[1] - *a2) >> 2, v33 >> 2);
          if ((v33 >> 2) >= 1)
          {
            v35 = 0;
            v36 = (v33 >> 2) & 0x7FFFFFFF;
            do
            {
              if (*(*a3 + 4 * v35) == -1)
              {
                v37 = *(*(a1 + 1312) + 4 * v35);
                v100 = v35;
                if (v37 == 1)
                {
                  std::vector<int>::push_back[abi:ne200100](a1 + 1528, &v100);
                }

                else
                {
                  v101 = v35;
                  v38 = *(a1 + 1440);
                  v39 = *(v38 + 4 * v35);
                  if (v39 != v37)
                  {
                    v40 = *v34;
                    v41 = *(*v34 + 4 * v35);
                    if (v41 != -1)
                    {
                      v42 = (*(a1 + 1464) + 24 * v39);
                      v43 = v42[1];
                      v44 = *(v43 - 4);
                      *(*v42 + 4 * v41) = v44;
                      *(v40 + 4 * v44) = v41;
                      v42[1] = v43 - 4;
                    }

                    if (v37 < 1)
                    {
                      *(v40 + 4 * v35) = -1;
                      *(v38 + 4 * v35) = 0;
                    }

                    else
                    {
                      v45 = (*(a1 + 1464) + 24 * v37);
                      *(v40 + 4 * v35) = (v45[1] - *v45) >> 2;
                      *(v38 + 4 * v35) = v37;
                      std::vector<int>::push_back[abi:ne200100](v45, &v101);
                      v46 = *(a1 + 1488);
                      if (v46 >= v37)
                      {
                        v46 = v37;
                      }

                      *(a1 + 1488) = v46;
                    }
                  }
                }
              }

              ++v35;
            }

            while (v36 != v35);
          }
        }

        v47 = *(a1 + 1504);
        *(a1 + 1512) = v47;
        v48 = *(a1 + 1724);
        if (!v48)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }

        v49 = a1 + 1504;
        v50 = 0x7FFFFFFFFFFFFFFFLL;
        v51 = *(a1 + 1728);
        v52 = v47;
        do
        {
          v53 = *(a1 + 1464);
          v54 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1472) - v53) >> 3);
          v55 = *(a1 + 1488);
          if (v54 == v55)
          {
            break;
          }

          v56 = v55 + 1;
          while (1)
          {
            v57 = (v53 + 24 * v55);
            v58 = v57[1];
            if (*v57 != v58)
            {
              break;
            }

            *(a1 + 1488) = v56;
            v55 = v56++;
            if (v54 == v55)
            {
              goto LABEL_80;
            }
          }

          v59 = *(v58 - 4);
          v57[1] = v58 - 4;
          v60 = 4 * v59;
          *(*(a1 + 1416) + v60) = -1;
          *(*(a1 + 1440) + v60) = 0;
          v101 = v59;
          if (v59 == -1)
          {
            goto LABEL_79;
          }

          if (*(*a3 + v60) == -1)
          {
            v61 = *(*(a1 + 1312) + v60);
            v62 = v49;
            std::vector<int>::push_back[abi:ne200100](v49, &v101);
            v63 = v61 - 1;
            if (v50 < v63)
            {
              v52 = *v62;
LABEL_79:
              v47 = *(a1 + 1512);
              break;
            }

            v64 = operations_research::glop::Markowitz::ComputeColumn(a1, a2, v101);
            v65 = v64[1];
            if (v65 < 1)
            {
              goto LABEL_54;
            }

            v66 = 0;
            v67 = v64[4];
            v68 = 0.0;
            do
            {
              v69 = fabs(v67[v66]);
              if (v68 < v69)
              {
                v68 = v69;
              }

              ++v66;
            }

            while (v65 != v66);
            if (v68 == 0.0)
            {
LABEL_54:
              *(a1 + 1512) -= 4;
              v49 = v62;
            }

            else
            {
              v70 = v51 * v68;
              v71 = v64[3];
              v72 = v101;
              v49 = v62;
              do
              {
                v73 = *v67;
                v74 = fabs(*v67);
                if (v74 >= v70)
                {
                  v75 = (*(*(a1 + 1288) + 4 * *v71) - 1) * v63;
                  if (v50 > v75 || v50 == v75 && v74 > fabs(*v99))
                  {
                    *a5 = v72;
                    *v98 = *v71;
                    *v99 = v73;
                    v50 = v75;
                  }
                }

                ++v67;
                ++v71;
                --v65;
              }

              while (v65);
            }
          }

          v47 = *(a1 + 1512);
          v52 = *(a1 + 1504);
        }

        while (v48 > v47 - v52);
LABEL_80:
        while (v52 != v47)
        {
          if (*v52 != *a5)
          {
            v88 = 4 * *v52;
            v89 = *(*(a1 + 1312) + v88);
            v101 = *v52;
            v90 = *(a1 + 1440);
            v91 = *(v90 + v88);
            if (v91 != v89)
            {
              v92 = *(a1 + 1416);
              v93 = *(v92 + v88);
              if (v93 != -1)
              {
                v94 = (*(a1 + 1464) + 24 * v91);
                v95 = v94[1];
                v96 = *(v95 - 4);
                *(*v94 + 4 * v93) = v96;
                *(v92 + 4 * v96) = v93;
                v94[1] = v95 - 4;
              }

              if (v89 >= 1)
              {
                v86 = (*(a1 + 1464) + 24 * v89);
                *(v92 + v88) = (v86[1] - *v86) >> 2;
                *(v90 + v88) = v89;
                std::vector<int>::push_back[abi:ne200100](v86, &v101);
                v87 = *(a1 + 1488);
                if (v87 >= v89)
                {
                  v87 = v89;
                }

                *(a1 + 1488) = v87;
              }

              else
              {
                *(v92 + v88) = -1;
                *(v90 + v88) = 0;
              }
            }
          }

          ++v52;
        }

        return v50;
      }

      v21 = *(v19 - 4);
      v19 -= 4;
      v20 = v21;
      *(a1 + 1560) = v19;
      v22 = 4 * v21;
      if (*(*a2 + v22) == -1 && *(*(a1 + 1288) + v22) == 1)
      {
        v23 = (*(a1 + 1264) + 32 * v20);
        v26 = *v23;
        v24 = (v23 + 1);
        v25 = v26;
        if (v26)
        {
          v24 = *v24;
        }

        if ((v25 & 0x7FFFFFFFFFFFFFFELL) != 0)
        {
          v27 = 4 * (v25 >> 1);
          while (1)
          {
            v28 = *v24;
            if (((*(*(a1 + 1336) + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
            {
              break;
            }

            ++v24;
            v27 -= 4;
            if (!v27)
            {
              goto LABEL_9;
            }
          }

          if (v28 != -1)
          {
            break;
          }
        }
      }
    }

    v29 = operations_research::glop::Markowitz::ComputeColumn(a1, a2, v28);
    v30 = v29[1];
    if (!v30)
    {
      continue;
    }

    break;
  }

  *a5 = v28;
  *v98 = v20;
  if (v30 < 1)
  {
    v32 = 0;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    do
    {
      if (*(v29[3] + 4 * v31) == v20)
      {
        v32 = *(v29[4] + 8 * v31);
      }

      ++v31;
    }

    while (v30 != v31);
  }

  v50 = 0;
  *a6 = v32;
  return v50;
}

uint64_t operations_research::glop::MatrixNonZeroPattern::DeleteRowAndColumn(uint64_t result, int a2, int a3)
{
  *(*(result + 72) + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
  --*(result + 144);
  *(*(result + 24) + 4 * a2) = 0;
  return result;
}

void operations_research::glop::Markowitz::RemoveRowFromResidualMatrix(uint64_t a1, int a2)
{
  v3 = (*(a1 + 1264) + 32 * a2);
  v6 = *v3;
  v5 = (v3 + 1);
  v4 = v6;
  if (*(a1 + 1497) == 1)
  {
    if (v4)
    {
      v5 = *v5;
    }

    if ((v4 & 0x7FFFFFFFFFFFFFFELL) != 0)
    {
      v7 = 4 * (v4 >> 1);
      do
      {
        v8 = *v5;
        if (((*(*(a1 + 1336) + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
        {
          v9 = *(a1 + 1312);
          v10 = 4 * v8;
          v11 = *(v9 + v10);
          v12 = v11 - 1;
          *(v9 + v10) = v11 - 1;
          v27 = v8;
          if (v11 == 2)
          {
            std::vector<int>::push_back[abi:ne200100](a1 + 1528, &v27);
          }

          else
          {
            v28 = v8;
            v13 = *(a1 + 1440);
            v14 = *(v13 + v10);
            if (v14 != v12)
            {
              v15 = *(a1 + 1416);
              v16 = *(v15 + v10);
              if (v16 != -1)
              {
                v17 = (*(a1 + 1464) + 24 * v14);
                v18 = v17[1];
                v19 = *(v18 - 4);
                *(*v17 + 4 * v16) = v19;
                *(v15 + 4 * v19) = v16;
                v17[1] = v18 - 4;
              }

              if (v12 < 1)
              {
                *(v15 + v10) = -1;
                *(v13 + v10) = 0;
              }

              else
              {
                v20 = (*(a1 + 1464) + 24 * v12);
                *(v15 + v10) = (v20[1] - *v20) >> 2;
                *(v13 + v10) = v12;
                std::vector<int>::push_back[abi:ne200100](v20, &v28);
                v21 = *(a1 + 1488);
                if (v21 >= v12)
                {
                  v21 = v12;
                }

                *(a1 + 1488) = v21;
              }
            }
          }
        }

        ++v5;
        v7 -= 4;
      }

      while (v7);
    }
  }

  else
  {
    if (v4)
    {
      v5 = *v5;
    }

    if ((v4 & 0x7FFFFFFFFFFFFFFELL) != 0)
    {
      v22 = 4 * (v4 >> 1);
      do
      {
        v26 = *v5;
        if (((*(*(a1 + 1336) + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          v23 = *(a1 + 1312);
          v24 = 4 * v26;
          v25 = *(v23 + v24) - 1;
          *(v23 + v24) = v25;
          if (v25 == 1)
          {
            std::vector<int>::push_back[abi:ne200100](a1 + 1528, &v26);
          }
        }

        ++v5;
        v22 -= 4;
      }

      while (v22);
    }
  }
}

void operations_research::glop::Markowitz::UpdateResidualMatrix(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a1 + 408;
  v6 = 4 * a3;
  v7 = *(*(a1 + 456) + v6);
  v8 = (a1 + 408);
  if (v7 != -1)
  {
    v8 = (*(a1 + 504) + 48 * v7);
  }

  operations_research::glop::MatrixNonZeroPattern::Update(a1 + 1264, a2, a3, v8);
  v9 = (*(a1 + 1264) + 32 * a2);
  v12 = *v9;
  v11 = (v9 + 1);
  v10 = v12;
  if (v12)
  {
    v11 = *v11;
  }

  if ((v10 & 0x7FFFFFFFFFFFFFFELL) != 0)
  {
    v13 = 4 * (v10 >> 1);
    do
    {
      v14 = *v11;
      v15 = *(*(a1 + 1312) + 4 * *v11);
      v33 = *v11;
      if (v15 == 1)
      {
        std::vector<int>::push_back[abi:ne200100](a1 + 1528, &v33);
      }

      else
      {
        v34 = v14;
        v16 = *(a1 + 1440);
        v17 = *(v16 + 4 * v14);
        if (v17 != v15)
        {
          v18 = *(a1 + 1416);
          v19 = *(v18 + 4 * v14);
          if (v19 != -1)
          {
            v20 = (*(a1 + 1464) + 24 * v17);
            v21 = v20[1];
            v22 = *(v21 - 4);
            *(*v20 + 4 * v19) = v22;
            *(v18 + 4 * v22) = v19;
            v20[1] = v21 - 4;
          }

          if (v15 < 1)
          {
            *(v18 + 4 * v14) = -1;
            *(v16 + 4 * v14) = 0;
          }

          else
          {
            v23 = (*(a1 + 1464) + 24 * v15);
            *(v18 + 4 * v14) = (v23[1] - *v23) >> 2;
            *(v16 + 4 * v14) = v15;
            std::vector<int>::push_back[abi:ne200100](v23, &v34);
            v24 = *(a1 + 1488);
            if (v24 >= v15)
            {
              v24 = v15;
            }

            *(a1 + 1488) = v24;
          }
        }
      }

      *(*(a1 + 1240) + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      ++v11;
      v13 -= 4;
    }

    while (v13);
  }

  v25 = *(*(a1 + 456) + v6);
  if (v25 != -1)
  {
    v5 = *(a1 + 504) + 48 * v25;
  }

  v26 = *(v5 + 8);
  if (v26 >= 1)
  {
    v27 = *(v5 + 24);
    do
    {
      v28 = *v27++;
      v32 = v28;
      v29 = *(a1 + 1288);
      v30 = 4 * v28;
      v31 = *(v29 + v30) - 1;
      *(v29 + v30) = v31;
      if (v31 == 1)
      {
        std::vector<int>::push_back[abi:ne200100](a1 + 1552, &v32);
      }

      --v26;
    }

    while (v26);
  }
}

void operations_research::glop::Markowitz::ComputeLU(operations_research::glop::TriangularMatrix *a1@<X4>, uint64_t a2@<X0>, unsigned int **a3@<X1>, std::vector<int> *a4@<X2>, std::vector<int> *a5@<X3>, operations_research::glop::TriangularMatrix *a6@<X5>, uint64_t a7@<X8>)
{
  operations_research::glop::TriangularMatrix::Swap((a2 + 648), a1);
  operations_research::glop::TriangularMatrix::Swap((a2 + 944), a6);
  operations_research::glop::Markowitz::ComputeRowAndColumnPermutation(a2, a3, a4, a5, a7);
  if (!*a7)
  {
    if (*(a7 + 31) < 0)
    {
      operator delete(*(a7 + 8));
    }

    operations_research::glop::TriangularMatrix::ApplyRowPermutationToNonDiagonalEntries(a2 + 648, a4);
    operations_research::glop::TriangularMatrix::ApplyRowPermutationToNonDiagonalEntries(a2 + 944, a4);
    operations_research::glop::TriangularMatrix::Swap((a2 + 648), a1);
    operations_research::glop::TriangularMatrix::Swap((a2 + 944), a6);

    operations_research::glop::Status::Status(a7);
  }
}

uint64_t *operations_research::glop::Markowitz::ComputeColumn(void *a1, void *a2, int a3)
{
  v6 = a1 + 51;
  v8 = 4 * a3;
  v9 = *(a1[57] + v8);
  v10 = v6;
  if (v9 != -1)
  {
    v10 = a1[63] + 48 * v9;
  }

  if (*(v10 + 8))
  {
    v11 = 0;
  }

  else
  {
    v12 = *(a1[72] + 4 * a3);
    if (v12 == -1)
    {
      v13 = a1 + 66;
    }

    else
    {
      v13 = (a1[78] + 48 * v12);
    }

    v11 = v13[1] == 0;
  }

  v14 = operations_research::glop::SparseMatrixWithReusableColumnMemory::mutable_column(v6, a3);
  v15 = v14;
  v16 = a3 >> 6;
  v17 = 1 << a3;
  if ((*(a1[155] + 8 * v16) & v17) != 0)
  {
    if (v11)
    {
      v18 = a1[50];
      v19 = *v18;
      v20 = *(v18[1] + v8);
      v21 = v19[7];
      v22 = *(v21 + 8 * v20);
      v23 = *(v21 + (((v20 << 32) + 0x100000000) >> 29)) - v22;
      v24 = v19[4] + 4 * v22;
      v25 = v19[1] + 8 * v22;
    }

    else
    {
      v23 = *(v14 + 8);
      v24 = *(v14 + 24);
      v25 = *(v14 + 32);
    }

    v46[0] = v23;
    v46[1] = v24;
    v46[2] = v25;
    v43 = operations_research::glop::SparseMatrixWithReusableColumnMemory::mutable_column(a1 + 66, a3);
    operations_research::glop::TriangularMatrix::PermutedLowerSparseSolve(a1 + 81, v46, a2, v15, v43);
    *(a1[155] + 8 * v16) &= ~v17;
    a1[238] += a1[102];
  }

  else
  {
    v26 = *(v14 + 8);
    if (v26 != *(a1[164] + v8))
    {
      if (v11)
      {
        v27 = a1[50];
        v28 = *v27;
        v29 = *(v27[1] + v8);
        v30 = *(*(v28 + 56) + (((v29 << 32) + 0x100000000) >> 29)) - *(*(v28 + 56) + 8 * v29);
        a1[238] += v30;
        if (*(v14 + 16) < v30)
        {
          operator new[]();
        }

        v31 = *a1[50];
        v32 = *(*(a1[50] + 8) + v8);
        v33 = v31[7];
        v34 = *(v33 + 8 * v32);
        v35 = *(v33 + (((v32 << 32) + 0x100000000) >> 29)) - v34;
        v36 = *(v14 + 8);
        if (v35 < 1)
        {
          v26 = *(v14 + 8);
        }

        else
        {
          v37 = (v31[4] + 4 * v34);
          v38 = (v31[1] + 8 * v34);
          do
          {
            v41 = *v37++;
            v40 = v41;
            v42 = *v38;
            if (v36 == *(v14 + 16) && (!v36 || v36 < 2 * v36))
            {
              operator new[]();
            }

            v26 = v36 + 1;
            *(v14 + 8) = v36 + 1;
            v39 = *(v14 + 32);
            *(*(v14 + 24) + 4 * v36) = v40;
            *(v39 + 8 * v36) = v42;
            *(v14 + 40) = 1;
            ++v38;
            ++v36;
            --v35;
          }

          while (v35);
        }
      }

      a1[238] += v26;
      v44 = operations_research::glop::SparseMatrixWithReusableColumnMemory::mutable_column(a1 + 66, a3);
      operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::MoveTaggedEntriesTo(v15, a2, v44);
    }
  }

  return v15;
}

uint64_t operations_research::glop::SparseMatrixWithReusableColumnMemory::mutable_column(void *a1, int a2)
{
  v3 = a1[6];
  v4 = 4 * a2;
  LODWORD(v5) = *(v3 + v4);
  if (v5 == -1)
  {
    v6 = a1[10];
    if (a1[9] == v6)
    {
      v8 = a1[12];
      v9 = a1[13];
      v7 = a1 + 12;
      memset(v15, 0, 41);
      if (v9 >= a1[14])
      {
        v12 = std::vector<operations_research::glop::SparseColumn>::__emplace_back_slow_path<operations_research::glop::SparseColumn>(v7, v15);
        v13 = *&v15[0];
        a1[13] = v12;
        *&v15[0] = 0;
        if (v13)
        {
          MEMORY[0x23EED9440](v13, 0x1000C8077774924);
        }
      }

      else
      {
        *v9 = 0;
        v10 = *(v15 + 8);
        v11 = *(&v15[1] + 8);
        *(v9 + 40) = BYTE8(v15[2]);
        *(v9 + 24) = v11;
        *(v9 + 8) = v10;
        a1[13] = v9 + 48;
      }

      v5 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 4);
      v3 = a1[6];
    }

    else
    {
      LODWORD(v5) = *(v6 - 4);
      a1[10] = v6 - 4;
    }

    *(v3 + v4) = v5;
  }

  return a1[12] + 48 * v5;
}

void sub_23CBB0B78(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x23EED9440](a9, 0x1000C8077774924, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void *operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::MoveTaggedEntriesTo(void *result, void *a2, uint64_t a3)
{
  v3 = result[1];
  if (v3 >= 1)
  {
    v4 = 0;
    while (1)
    {
      v5 = *(result[3] + 4 * v4);
      if ((*(*a2 + 4 * v5) & 0x80000000) == 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        return result;
      }
    }

    v6 = *(result[4] + 8 * v4);
    v7 = *(a3 + 8);
    if (v7 == *(a3 + 16) && (!v7 || v7 < 2 * v7))
    {
      operator new[]();
    }

    v8 = v7 + 1;
    *(a3 + 8) = v7 + 1;
    v9 = *(a3 + 24);
    v10 = *(a3 + 32);
    *(v9 + 4 * v7) = v5;
    *(v10 + 8 * v7) = v6;
    v11 = v4 + 1;
    if (v4 + 1 < v3)
    {
      do
      {
        while (1)
        {
          v12 = result[3];
          v13 = *(v12 + 4 * v11);
          if ((*(*a2 + 4 * v13) & 0x80000000) == 0)
          {
            break;
          }

          *(v12 + 4 * v4) = v13;
          *(result[4] + 8 * v4++) = *(result[4] + 8 * v11);
          if (v3 == ++v11)
          {
            goto LABEL_21;
          }
        }

        v14 = *(result[4] + 8 * v11);
        if (v8 == *(a3 + 16) && (!v8 || v8 < 2 * v8))
        {
          operator new[]();
        }

        *(v9 + 4 * v8) = v13;
        *(v10 + 8 * v8++) = v14;
        *(a3 + 8) = v8;
        ++v11;
      }

      while (v3 != v11);
    }

LABEL_21:
    result[1] = v4;
    *(a3 + 40) = 1;
  }

  return result;
}

void operations_research::glop::ColumnPriorityQueue::Reset(std::vector<int> *this, int a2, int a3)
{
  v6 = this + 1;
  this[1].__end_ = this[1].__begin_;
  this->__end_ = this->__begin_;
  v7 = this + 2;
  begin = this[2].__begin_;
  end = this[2].__end_;
  if (end != begin)
  {
    v10 = this[2].__end_;
    do
    {
      v12 = *(v10 - 3);
      v10 -= 6;
      v11 = v12;
      if (v12)
      {
        *(end - 2) = v11;
        operator delete(v11);
      }

      end = v10;
    }

    while (v10 != begin);
  }

  this[2].__end_ = begin;
  __u = 0;
  std::vector<int>::assign(v6, a3, &__u);
  v22 = -1;
  std::vector<int>::assign(this, a3, &v22);
  v13 = a2 + 1;
  v15 = this[2].__begin_;
  v14 = this[2].__end_;
  v16 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 3);
  if (v13 <= v16)
  {
    if (v13 < v16)
    {
      v17 = &v15[6 * v13];
      if (v14 != v17)
      {
        v18 = this[2].__end_;
        do
        {
          v20 = *(v18 - 3);
          v18 -= 6;
          v19 = v20;
          if (v20)
          {
            *(v14 - 2) = v19;
            operator delete(v19);
          }

          v14 = v18;
        }

        while (v18 != v17);
      }

      this[2].__end_ = v17;
    }
  }

  else
  {
    std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(v7, v13 - v16);
  }

  LODWORD(this[3].__begin_) = v13;
}

uint64_t operations_research::glop::MatrixNonZeroPattern::DecreaseColDegree(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = 4 * a2;
  result = (*(v2 + v3) - 1);
  *(v2 + v3) = result;
  return result;
}

void operations_research::glop::MatrixNonZeroPattern::Update(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 144);
  v8 = 32 * a2;
  v9 = (*a1 + v8);
  v10 = *v9;
  if ((*v9 >> 1) < 1)
  {
    v14 = 0;
  }

  else
  {
    v11 = v9 + 1;
    v12 = *(a1 + 72);
    v13 = v10 >> 1;
    if (v10)
    {
      v45 = 0;
      v14 = 0;
      do
      {
        v46 = *(*v11 + 4 * v45);
        if (((*(v12 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
        {
          *(*v11 + 4 * v14++) = v46;
        }

        ++v45;
      }

      while (v13 != v45);
    }

    else
    {
      v14 = 0;
      v15 = (v9 + 1);
      do
      {
        v17 = *v15++;
        v16 = v17;
        if (((*(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          *(v11 + v14++) = v16;
        }

        --v13;
      }

      while (v13);
    }
  }

  absl::lts_20240722::inlined_vector_internal::Storage<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,6ul,std::allocator<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>>(v9, v14);
  v18 = (*a1 + v8);
  v21 = *v18;
  v19 = (v18 + 1);
  v20 = v21;
  if (v21)
  {
    v19 = *v19;
  }

  if ((v20 & 0x7FFFFFFFFFFFFFFELL) != 0)
  {
    v22 = v20 >> 1;
    v23 = *(a1 + 48);
    v24 = *(a1 + 96);
    v25 = 4 * v22;
    do
    {
      v26 = *v19++;
      --*(v23 + 4 * v26);
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v26);
      v25 -= 4;
    }

    while (v25);
  }

  v27 = a4[1];
  if (v27 >= 1)
  {
    v28 = 0;
    v29 = v7 + 1;
    v30 = a4[3];
    v31 = a4[4];
    do
    {
      v33 = *(v30 + 4 * v28);
      if (a2 != v33 && *(v31 + 8 * v28) != 0.0)
      {
        v34 = *(*(a1 + 24) + 4 * v33);
        if (v34 != v29)
        {
          v35 = (*a1 + 32 * v33);
          v36 = *v35;
          if (v34 + 4 < *v35 >> 1)
          {
            if ((v36 >> 1) < 1)
            {
              v32 = 0;
            }

            else
            {
              v37 = v35 + 1;
              v38 = *(a1 + 72);
              v39 = v36 >> 1;
              if (v36)
              {
                v43 = 0;
                v32 = 0;
                do
                {
                  v44 = *(*v37 + 4 * v43);
                  if (((*(v38 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
                  {
                    *(*v37 + 4 * v32++) = v44;
                  }

                  ++v43;
                }

                while (v39 != v43);
              }

              else
              {
                v32 = 0;
                v40 = (v35 + 1);
                do
                {
                  v42 = *v40++;
                  v41 = v42;
                  if (((*(v38 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
                  {
                    *(v37 + v32++) = v41;
                  }

                  --v39;
                }

                while (v39);
              }
            }

            absl::lts_20240722::inlined_vector_internal::Storage<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,6ul,std::allocator<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>>(v35, v32);
          }

          operations_research::glop::MatrixNonZeroPattern::MergeInto(a1, a2, v33);
        }
      }

      ++v28;
    }

    while (v28 != v27);
  }
}

void operations_research::glop::MatrixNonZeroPattern::Reset(uint64_t a1, uint64_t a2, int a3)
{
  begin = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = (a1 + 24);
  __x = 0;
  v9 = a2 << 32;
  v10 = a2;
  v11 = (v7 - begin) >> 2;
  v12 = a2 >= v11;
  v13 = a2 - v11;
  if (v13 != 0 && v12)
  {
    std::vector<int>::__append(v8, v13, &__x);
    begin = v8->__begin_;
  }

  else if (!v12)
  {
    *(a1 + 32) = &begin[v10];
  }

  bzero(begin, v9 >> 30);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v29 = 0;
  v16 = (v15 - v14) >> 2;
  if (a3 <= v16)
  {
    if (a3 < v16)
    {
      *(a1 + 56) = &v14[4 * a3];
    }
  }

  else
  {
    std::vector<int>::__append((a1 + 48), a3 - v16, &v29);
    v14 = *(a1 + 48);
  }

  bzero(v14, 4 * a3);
  v18 = *a1;
  v17 = *(a1 + 8);
  v19 = *a1;
  if (v17 != *a1)
  {
    v20 = *(a1 + 8);
    do
    {
      v21 = *(v20 - 32);
      v20 -= 4;
      if (v21)
      {
        operator delete(*(v17 - 3));
      }

      v17 = v20;
    }

    while (v20 != v18);
    v19 = *a1;
  }

  *(a1 + 8) = v18;
  v22 = (v18 - v19) >> 5;
  if (v10 <= v22)
  {
    if (v10 < v22)
    {
      v23 = &v19[4 * v10];
      if (v18 != v23)
      {
        v24 = v18;
        do
        {
          v25 = *(v24 - 32);
          v24 -= 4;
          if (v25)
          {
            operator delete(*(v18 - 3));
          }

          v18 = v24;
        }

        while (v24 != v23);
      }

      *(a1 + 8) = v23;
    }
  }

  else
  {
    std::vector<absl::lts_20240722::InlinedVector<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>>::__append(a1, v10 - v22);
  }

  v27 = 0;
  std::vector<BOOL>::assign(a1 + 72, a3, &v27);
  v26 = 0;
  std::vector<BOOL>::assign(a1 + 96, a3, &v26);
  *(a1 + 144) = a3;
}

unint64_t *operations_research::glop::MatrixNonZeroPattern::AddEntry(void *a1, int a2, int a3)
{
  v7 = a3;
  ++*(a1[3] + 4 * a2);
  ++*(a1[6] + 4 * a3);
  result = (*a1 + 32 * a2);
  v5 = result + 1;
  v4 = *result;
  if (*result)
  {
    v5 = result[1];
    v6 = result[2];
  }

  else
  {
    v6 = 6;
  }

  if (v4 >> 1 == v6)
  {
    absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::EmplaceBackSlow<operations_research::sat::Literal const&>(result, &v7);
  }

  *(v5 + (v4 >> 1)) = a3;
  *result = v4 + 2;
  return result;
}

uint64_t *operations_research::glop::MatrixNonZeroPattern::MergeInto(uint64_t *result, int a2, uint64_t a3)
{
  v3 = *result;
  v4 = (*result + 32 * a3);
  v5 = *v4;
  v6 = (v4 + 1);
  if (*v4)
  {
    v6 = v4[1];
  }

  if ((v5 & 0x7FFFFFFFFFFFFFFELL) != 0)
  {
    v7 = result[12];
    v8 = 4 * (v5 >> 1);
    do
    {
      v9 = *v6++;
      *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      v8 -= 4;
    }

    while (v8);
    v5 = *v4;
  }

  v10 = (v3 + 32 * a2);
  v13 = *v10;
  v12 = v10 + 1;
  v11 = v13;
  if (v13)
  {
    v12 = *v12;
  }

  v14 = v5;
  if ((v11 & 0x7FFFFFFFFFFFFFFELL) != 0)
  {
    v15 = 4 * (v11 >> 1);
    do
    {
      while (1)
      {
        v16 = *v12;
        v23 = v16;
        v17 = result[12];
        v18 = v16 >> 6;
        v19 = *(v17 + 8 * v18);
        if (((1 << v16) & v19) == 0)
        {
          break;
        }

        *(v17 + 8 * v18) = v19 & ~(1 << v16);
        v12 = (v12 + 4);
        v15 -= 4;
        if (!v15)
        {
          goto LABEL_20;
        }
      }

      v20 = *v4;
      if (*v4)
      {
        v21 = v4[1];
        v22 = v4[2];
      }

      else
      {
        v21 = v4 + 1;
        v22 = 6;
      }

      if (v20 >> 1 == v22)
      {
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::EmplaceBackSlow<operations_research::sat::Literal const&>(v4, &v23);
      }

      *(v21 + (v20 >> 1)) = v16;
      *v4 = v20 + 2;
      ++*(result[6] + 4 * v23);
      v12 = (v12 + 4);
      v15 -= 4;
    }

    while (v15);
LABEL_20:
    v14 = *v4;
  }

  *(result[3] + 4 * a3) += (v14 >> 1) - (v5 >> 1);
  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::glop::anonymous namespace::MatrixEntry *,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v134 = a2[-1].n128_i32[0];
        v135 = a2[-1].n128_i32[1];
        v136 = a2 - 1;
        v137 = v135 < v12->n128_u32[1];
        v138 = v134 == v12->n128_u32[0];
        v139 = v134 < v12->n128_u32[0];
        if (v138)
        {
          v139 = v137;
        }

        if (v139)
        {
          v246 = *v12;
          *v12 = *v136;
          result = v246;
          *v136 = v246;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      return result;
    }

    if (v13 == 5)
    {
      v120 = a2[-1].n128_i32[0];
      v121 = a2[-1].n128_i32[1];
      v122 = a2 - 1;
      v123 = v12[3].n128_i32[0];
      v124 = v121 < v12[3].n128_u32[1];
      v138 = v120 == v123;
      v125 = v120 < v123;
      if (v138)
      {
        v125 = v124;
      }

      if (v125)
      {
        v242 = v12[3];
        v12[3] = *v122;
        result = v242;
        *v122 = v242;
        v126 = v12[3].n128_i32[0];
        v127 = v12[2].n128_i32[0];
        v138 = v126 == v127;
        v128 = v126 < v127;
        if (v138)
        {
          v128 = v12[3].n128_u32[1] < v12[2].n128_u32[1];
        }

        if (v128)
        {
          v243 = v12[2];
          v12[2] = v12[3];
          result = v243;
          v12[3] = v243;
          v129 = v12[2].n128_i32[0];
          v130 = v12[1].n128_i32[0];
          v138 = v129 == v130;
          v131 = v129 < v130;
          if (v138)
          {
            v131 = v12[2].n128_u32[1] < v12[1].n128_u32[1];
          }

          if (v131)
          {
            v244 = v12[1];
            v12[1] = v12[2];
            result = v244;
            v12[2] = v244;
            v132 = v12[1].n128_i32[0];
            v138 = v132 == v12->n128_u32[0];
            v133 = v132 < v12->n128_u32[0];
            if (v138)
            {
              v133 = v12[1].n128_u32[1] < v12->n128_u32[1];
            }

            if (v133)
            {
              v245 = *v12;
              *v12 = v12[1];
              result = v245;
              v12[1] = v245;
            }
          }
        }
      }

      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v148 = v12 + 1;
      v150 = v12 == a2 || v148 == a2;
      if (a4)
      {
        if (!v150)
        {
          v151 = 0;
          v152 = v12;
          do
          {
            v154 = v148;
            v155 = v152[1].n128_i32[0];
            v156 = v152[1].n128_i32[1];
            v157 = v155 < v152->n128_u32[0];
            if (v155 == v152->n128_u32[0])
            {
              v157 = v156 < v152->n128_u32[1];
            }

            if (v157)
            {
              result.n128_u64[0] = v152[1].n128_u64[1];
              v158 = v151;
              do
              {
                v159 = v12 + v158;
                *(v12 + v158 + 16) = *(v12 + v158);
                if (!v158)
                {
                  v153 = v12;
                  goto LABEL_203;
                }

                v160 = *(v159 - 4);
                v161 = v156 < *(v159 - 3);
                v138 = v155 == v160;
                v162 = v155 < v160;
                if (!v138)
                {
                  v161 = v162;
                }

                v158 -= 16;
              }

              while (v161);
              v153 = &v12[1] + v158;
LABEL_203:
              *v153 = v155;
              *(v153 + 4) = v156;
              *(v153 + 8) = result.n128_u64[0];
            }

            v148 = v154 + 1;
            v151 += 16;
            v152 = v154;
          }

          while (&v154[1] != a2);
        }
      }

      else if (!v150)
      {
        do
        {
          v207 = v148;
          v208 = a1[1].n128_i32[0];
          v209 = a1[1].n128_i32[1];
          v210 = v208 < a1->n128_u32[0];
          if (v208 == a1->n128_u32[0])
          {
            v210 = v209 < a1->n128_u32[1];
          }

          if (v210)
          {
            result.n128_u64[0] = a1[1].n128_u64[1];
            v211 = v207;
            do
            {
              *v211 = v211[-1];
              v212 = v211[-2].n128_i32[0];
              v213 = v211[-2].n128_i32[1];
              --v211;
              v214 = v209 < v213;
              v138 = v208 == v212;
              v215 = v208 < v212;
              if (v138)
              {
                v215 = v214;
              }
            }

            while (v215);
            v211->n128_u32[0] = v208;
            v211->n128_u32[1] = v209;
            v211->n128_u64[1] = result.n128_u64[0];
          }

          v148 = v207 + 1;
          a1 = v207;
        }

        while (&v207[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v163 = (v13 - 2) >> 1;
        v164 = v163;
        do
        {
          v165 = v164;
          v166 = 16 * v164;
          if (v163 >= (16 * v164) >> 4)
          {
            v167 = (v166 >> 3) | 1;
            v168 = &v12[v167];
            if ((v166 >> 3) + 2 >= v13)
            {
              v172 = v168->n128_u32[0];
            }

            else
            {
              v169 = v168[1].n128_i32[0];
              v170 = v168->n128_u32[1] < v168[1].n128_u32[1];
              if (v168->n128_u32[0] != v169)
              {
                v170 = v168->n128_u32[0] < v169;
              }

              v171 = !v170;
              if (v170)
              {
                v172 = v168[1].n128_i32[0];
              }

              else
              {
                v172 = v168->n128_u32[0];
              }

              if (!v171)
              {
                ++v168;
                v167 = (v166 >> 3) + 2;
              }
            }

            v173 = &v12[v166 / 0x10];
            v174 = v173->n128_u32[0];
            v175 = v173->n128_i32[1];
            v138 = v172 == v173->n128_u32[0];
            v176 = v172 < v173->n128_u32[0];
            if (v138)
            {
              v176 = v168->n128_u32[1] < v175;
            }

            if (!v176)
            {
              v177 = v173->n128_u64[1];
              do
              {
                v183 = v173;
                v173 = v168;
                *v183 = *v168;
                if (v163 < v167)
                {
                  break;
                }

                v184 = (2 * v167) | 1;
                v168 = &v12[v184];
                v167 = 2 * v167 + 2;
                if (v167 < v13)
                {
                  v178 = v168->n128_u32[0];
                  v179 = v168[1].n128_i32[0];
                  if (v168->n128_u32[0] == v179)
                  {
                    v180 = v168->n128_u32[1] < v168[1].n128_u32[1];
                  }

                  else
                  {
                    v180 = v168->n128_u32[0] < v179;
                  }

                  if (v180)
                  {
                    v178 = v168[1].n128_i32[0];
                    ++v168;
                  }

                  else
                  {
                    v167 = v184;
                  }
                }

                else
                {
                  v178 = v168->n128_u32[0];
                  v167 = v184;
                }

                v181 = v168->n128_u32[1] < v175;
                v138 = v178 == v174;
                v182 = v178 < v174;
                if (!v138)
                {
                  v181 = v182;
                }
              }

              while (!v181);
              v173->n128_u32[0] = v174;
              v173->n128_u32[1] = v175;
              v173->n128_u64[1] = v177;
            }
          }

          v164 = v165 - 1;
        }

        while (v165);
        do
        {
          v186 = 0;
          v248 = *v12;
          v187 = (v13 - 2) >> 1;
          v188 = v12;
          do
          {
            while (1)
            {
              v194 = &v188[v186];
              v193 = v194 + 1;
              v195 = (2 * v186) | 1;
              v186 = 2 * v186 + 2;
              if (v186 < v13)
              {
                break;
              }

              v186 = v195;
              *v188 = *v193;
              v188 = v194 + 1;
              if (v195 > v187)
              {
                goto LABEL_256;
              }
            }

            v190 = v194[2].n128_i32[0];
            v189 = v194 + 2;
            v191 = v189[-1].n128_i32[0];
            v192 = v191 < v190;
            if (v191 == v190)
            {
              v192 = v189[-1].n128_u32[1] < v189->n128_u32[1];
            }

            if (v192)
            {
              v193 = v189;
            }

            else
            {
              v186 = v195;
            }

            *v188 = *v193;
            v188 = v193;
          }

          while (v186 <= v187);
LABEL_256:
          if (v193 == --a2)
          {
            result = v248;
            *v193 = v248;
          }

          else
          {
            *v193 = *a2;
            result = v248;
            *a2 = v248;
            v196 = (v193 - v12 + 16) >> 4;
            v185 = v196 < 2;
            v197 = v196 - 2;
            if (!v185)
            {
              v198 = v197 >> 1;
              v199 = &v12[v198];
              v200 = v193->n128_u32[0];
              v201 = v193->n128_i32[1];
              v202 = v199->n128_u32[0] < v193->n128_u32[0];
              if (v199->n128_u32[0] == v193->n128_u32[0])
              {
                v202 = v199->n128_u32[1] < v201;
              }

              if (v202)
              {
                result.n128_u64[0] = v193->n128_u64[1];
                do
                {
                  v203 = v193;
                  v193 = v199;
                  *v203 = *v199;
                  if (!v198)
                  {
                    break;
                  }

                  v198 = (v198 - 1) >> 1;
                  v199 = &v12[v198];
                  v204 = v199->n128_u32[0] < v200;
                  if (v199->n128_u32[0] == v200)
                  {
                    v204 = v199->n128_u32[1] < v201;
                  }
                }

                while (v204);
                v193->n128_u32[0] = v200;
                v193->n128_u32[1] = v201;
                v193->n128_u64[1] = result.n128_u64[0];
              }
            }
          }

          v185 = v13-- <= 2;
        }

        while (!v185);
      }

      return result;
    }

    v14 = &v12[v13 >> 1];
    v15 = a2[-1].n128_i32[0];
    v16 = a2[-1].n128_i32[1];
    if (v13 < 0x81)
    {
      v22 = v12->n128_u32[0];
      v23 = v12->n128_i32[1];
      v24 = v12->n128_u32[0] < v14->n128_u32[0];
      if (v12->n128_u32[0] == v14->n128_u32[0])
      {
        v24 = v23 < v14->n128_u32[1];
      }

      v25 = v16 < v23;
      v138 = v15 == v22;
      v26 = v15 < v22;
      if (v138)
      {
        v26 = v25;
      }

      if (v24)
      {
        if (v26)
        {
          v220 = *v14;
          *v14 = *v9;
          goto LABEL_58;
        }

        v229 = *v14;
        *v14 = *v12;
        result.n128_u64[1] = v229.n128_u64[1];
        *v12 = v229;
        v44 = a2[-1].n128_i32[0];
        v138 = v44 == v12->n128_u32[0];
        v45 = v44 < v12->n128_u32[0];
        if (v138)
        {
          v45 = a2[-1].n128_u32[1] < v12->n128_u32[1];
        }

        if (v45)
        {
          v220 = *v12;
          *v12 = *v9;
LABEL_58:
          result.n128_u64[1] = v220.n128_u64[1];
          *v9 = v220;
        }
      }

      else if (v26)
      {
        v223 = *v12;
        *v12 = *v9;
        result.n128_u64[1] = v223.n128_u64[1];
        *v9 = v223;
        v28 = v12->n128_u32[0] < v14->n128_u32[0];
        if (v12->n128_u32[0] == v14->n128_u32[0])
        {
          v28 = v12->n128_u32[1] < v14->n128_u32[1];
        }

        if (v28)
        {
          v224 = *v14;
          *v14 = *v12;
          result.n128_u64[1] = v224.n128_u64[1];
          *v12 = v224;
          --a3;
          v29 = v12->n128_u32[0];
          if (a4)
          {
            goto LABEL_60;
          }

          goto LABEL_101;
        }
      }

      --a3;
      v29 = v12->n128_u32[0];
      if (a4)
      {
        goto LABEL_60;
      }

      goto LABEL_101;
    }

    v17 = v14->n128_u32[0];
    v18 = v14->n128_i32[1];
    v19 = v14->n128_u32[0] < v12->n128_u32[0];
    if (v14->n128_u32[0] == v12->n128_u32[0])
    {
      v19 = v18 < v12->n128_u32[1];
    }

    v20 = v16 < v18;
    v138 = v15 == v17;
    v21 = v15 < v17;
    if (v138)
    {
      v21 = v20;
    }

    if (v19)
    {
      if (v21)
      {
        v219 = *v12;
        *v12 = *v9;
LABEL_41:
        *v9 = v219;
        goto LABEL_42;
      }

      v225 = *v12;
      *v12 = *v14;
      *v14 = v225;
      v30 = a2[-1].n128_i32[0];
      v138 = v30 == v14->n128_u32[0];
      v31 = v30 < v14->n128_u32[0];
      if (v138)
      {
        v31 = a2[-1].n128_u32[1] < v14->n128_u32[1];
      }

      if (v31)
      {
        v219 = *v14;
        *v14 = *v9;
        goto LABEL_41;
      }
    }

    else if (v21)
    {
      v221 = *v14;
      *v14 = *v9;
      *v9 = v221;
      v27 = v14->n128_u32[0] < v12->n128_u32[0];
      if (v14->n128_u32[0] == v12->n128_u32[0])
      {
        v27 = v14->n128_u32[1] < v12->n128_u32[1];
      }

      if (v27)
      {
        v222 = *v12;
        *v12 = *v14;
        *v14 = v222;
      }
    }

LABEL_42:
    v32 = v12 + 1;
    v33 = v12[1].n128_i32[0];
    v35 = v14[-1].n128_i32[0];
    v36 = v14[-1].n128_i32[1];
    v34 = v14 - 1;
    v37 = v36 < v12[1].n128_u32[1];
    v138 = v35 == v33;
    v38 = v35 < v33;
    if (!v138)
    {
      v37 = v38;
    }

    v39 = a2[-2].n128_i32[0];
    v40 = a2[-2].n128_u32[1] < v36;
    v138 = v39 == v35;
    v41 = v39 < v35;
    if (v138)
    {
      v41 = v40;
    }

    if (v37)
    {
      if (v41)
      {
        v226 = *v32;
        *v32 = *v10;
LABEL_65:
        *v10 = v226;
        goto LABEL_66;
      }

      v230 = *v32;
      *v32 = *v34;
      *v34 = v230;
      v47 = a2[-2].n128_i32[0];
      v138 = v47 == v34->n128_u32[0];
      v48 = v47 < v34->n128_u32[0];
      if (v138)
      {
        v48 = a2[-2].n128_u32[1] < v14[-1].n128_u32[1];
      }

      if (v48)
      {
        v226 = *v34;
        *v34 = *v10;
        goto LABEL_65;
      }
    }

    else if (v41)
    {
      v227 = *v34;
      *v34 = *v10;
      *v10 = v227;
      v42 = v12[1].n128_i32[0];
      v43 = v34->n128_u32[0] < v42;
      if (v34->n128_u32[0] == v42)
      {
        v43 = v14[-1].n128_u32[1] < v12[1].n128_u32[1];
      }

      if (v43)
      {
        v228 = *v32;
        *v32 = *v34;
        *v34 = v228;
      }
    }

LABEL_66:
    v49 = v12 + 2;
    v50 = v12[2].n128_i32[0];
    v52 = v14[1].n128_i32[0];
    v53 = v14[1].n128_i32[1];
    v51 = v14 + 1;
    v54 = v53 < v12[2].n128_u32[1];
    v138 = v52 == v50;
    v55 = v52 < v50;
    if (!v138)
    {
      v54 = v55;
    }

    v56 = a2[-3].n128_i32[0];
    v57 = a2[-3].n128_u32[1] < v53;
    v138 = v56 == v52;
    v58 = v56 < v52;
    if (v138)
    {
      v58 = v57;
    }

    if (v54)
    {
      if (v58)
      {
        v231 = *v49;
        *v49 = *v11;
LABEL_82:
        *v11 = v231;
        goto LABEL_83;
      }

      v234 = *v49;
      *v49 = *v51;
      *v51 = v234;
      v61 = a2[-3].n128_i32[0];
      v138 = v61 == v51->n128_u32[0];
      v62 = v61 < v51->n128_u32[0];
      if (v138)
      {
        v62 = a2[-3].n128_u32[1] < v14[1].n128_u32[1];
      }

      if (v62)
      {
        v231 = *v51;
        *v51 = *v11;
        goto LABEL_82;
      }
    }

    else if (v58)
    {
      v232 = *v51;
      *v51 = *v11;
      *v11 = v232;
      v59 = v12[2].n128_i32[0];
      v60 = v51->n128_u32[0] < v59;
      if (v51->n128_u32[0] == v59)
      {
        v60 = v14[1].n128_u32[1] < v12[2].n128_u32[1];
      }

      if (v60)
      {
        v233 = *v49;
        *v49 = *v51;
        *v51 = v233;
      }
    }

LABEL_83:
    v63 = v14->n128_u32[0];
    v64 = v14->n128_i32[1];
    v65 = v14->n128_u32[0] < v34->n128_u32[0];
    if (v14->n128_u32[0] == v34->n128_u32[0])
    {
      v65 = v64 < v14[-1].n128_u32[1];
    }

    v66 = v14[1].n128_u32[1] < v64;
    v138 = v51->n128_u32[0] == v63;
    v67 = v51->n128_u32[0] < v63;
    if (v138)
    {
      v67 = v66;
    }

    if (v65)
    {
      if (v67)
      {
        v235 = *v34;
        *v34 = *v51;
LABEL_99:
        *v51 = v235;
        goto LABEL_100;
      }

      v238 = *v34;
      *v34 = *v14;
      *v14 = v238;
      v69 = v51->n128_u32[0] < v14->n128_u32[0];
      if (v51->n128_u32[0] == v14->n128_u32[0])
      {
        v69 = v14[1].n128_u32[1] < v14->n128_u32[1];
      }

      if (v69)
      {
        v235 = *v14;
        *v14 = *v51;
        goto LABEL_99;
      }
    }

    else if (v67)
    {
      v236 = *v14;
      *v14 = *v51;
      *v51 = v236;
      v68 = v14->n128_u32[0] < v34->n128_u32[0];
      if (v14->n128_u32[0] == v34->n128_u32[0])
      {
        v68 = v14->n128_u32[1] < v14[-1].n128_u32[1];
      }

      if (v68)
      {
        v237 = *v34;
        *v34 = *v14;
        *v14 = v237;
      }
    }

LABEL_100:
    v239 = *v12;
    *v12 = *v14;
    result.n128_u64[1] = v239.n128_u64[1];
    *v14 = v239;
    --a3;
    v29 = v12->n128_u32[0];
    if (a4)
    {
LABEL_60:
      v46 = v12->n128_i32[1];
      goto LABEL_104;
    }

LABEL_101:
    v70 = v12[-1].n128_i32[0];
    v46 = v12->n128_i32[1];
    v138 = v70 == v29;
    v71 = v70 < v29;
    if (v138)
    {
      v71 = v12[-1].n128_u32[1] < v46;
    }

    if (v71)
    {
LABEL_104:
      v72 = 0;
      result.n128_u64[0] = v12->n128_u64[1];
      do
      {
        v73 = v12[v72 + 1].n128_i32[0];
        v74 = v12[v72 + 1].n128_u32[1] < v46;
        v138 = v73 == v29;
        v75 = v73 < v29;
        if (!v138)
        {
          v74 = v75;
        }

        ++v72;
      }

      while (v74);
      v76 = &v12[v72];
      v77 = a2;
      if (v72 == 1)
      {
        v77 = a2;
        do
        {
          if (v76 >= v77)
          {
            break;
          }

          v82 = v77[-1].n128_i32[0];
          v83 = v77[-1].n128_i32[1];
          --v77;
          v84 = v83 < v46;
          v138 = v82 == v29;
          v85 = v82 < v29;
          if (v138)
          {
            v85 = v84;
          }
        }

        while (!v85);
      }

      else
      {
        do
        {
          v78 = v77[-1].n128_i32[0];
          v79 = v77[-1].n128_i32[1];
          --v77;
          v80 = v79 < v46;
          v138 = v78 == v29;
          v81 = v78 < v29;
          if (v138)
          {
            v81 = v80;
          }
        }

        while (!v81);
      }

      v12 = v76;
      if (v76 < v77)
      {
        v86 = v77;
        do
        {
          v240 = *v12;
          *v12 = *v86;
          *v86 = v240;
          do
          {
            v87 = v12[1].n128_i32[0];
            v88 = v12[1].n128_i32[1];
            ++v12;
            v89 = v88 < v46;
            v138 = v87 == v29;
            v90 = v87 < v29;
            if (v138)
            {
              v90 = v89;
            }
          }

          while (v90);
          do
          {
            v91 = v86[-1].n128_i32[0];
            v92 = v86[-1].n128_i32[1];
            --v86;
            v93 = v92 < v46;
            v138 = v91 == v29;
            v94 = v91 < v29;
            if (v138)
            {
              v94 = v93;
            }
          }

          while (!v94);
        }

        while (v12 < v86);
      }

      if (&v12[-1] != a1)
      {
        *a1 = v12[-1];
      }

      v12[-1].n128_u32[0] = v29;
      v12[-1].n128_u32[1] = v46;
      v12[-1].n128_u64[1] = result.n128_u64[0];
      if (v76 < v77)
      {
        goto LABEL_133;
      }

      {
        a2 = v12 - 1;
        if ((v95 & 1) == 0)
        {
          goto LABEL_1;
        }

        return result;
      }

      if ((v95 & 1) == 0)
      {
LABEL_133:
        a4 = 0;
      }
    }

    else
    {
      v97 = a2[-1].n128_i32[0];
      v138 = v29 == v97;
      v98 = v29 < v97;
      if (v138)
      {
        v98 = v46 < a2[-1].n128_u32[1];
      }

      if (v98)
      {
        do
        {
          v99 = v12[1].n128_i32[0];
          v100 = v12[1].n128_i32[1];
          ++v12;
          v101 = v46 < v100;
          v138 = v29 == v99;
          v102 = v29 < v99;
          if (v138)
          {
            v102 = v101;
          }
        }

        while (!v102);
      }

      else
      {
        v103 = v12 + 1;
        do
        {
          v12 = v103;
          if (v103 >= a2)
          {
            break;
          }

          v104 = v103->n128_u32[0];
          v105 = v46 < v12->n128_u32[1];
          v138 = v29 == v104;
          v106 = v29 < v104;
          if (!v138)
          {
            v105 = v106;
          }

          v103 = v12 + 1;
        }

        while (!v105);
      }

      v107 = a2;
      if (v12 < a2)
      {
        v107 = a2;
        do
        {
          v108 = v107[-1].n128_i32[0];
          v109 = v107[-1].n128_i32[1];
          --v107;
          v110 = v46 < v109;
          v138 = v29 == v108;
          v111 = v29 < v108;
          if (v138)
          {
            v111 = v110;
          }
        }

        while (v111);
      }

      result.n128_u64[0] = a1->n128_u64[1];
      while (v12 < v107)
      {
        v241 = *v12;
        *v12 = *v107;
        *v107 = v241;
        do
        {
          v112 = v12[1].n128_i32[0];
          v113 = v12[1].n128_i32[1];
          ++v12;
          v114 = v46 < v113;
          v138 = v29 == v112;
          v115 = v29 < v112;
          if (v138)
          {
            v115 = v114;
          }
        }

        while (!v115);
        do
        {
          v116 = v107[-1].n128_i32[0];
          v117 = v107[-1].n128_i32[1];
          --v107;
          v118 = v46 < v117;
          v138 = v29 == v116;
          v119 = v29 < v116;
          if (v138)
          {
            v119 = v118;
          }
        }

        while (v119);
      }

      if (&v12[-1] != a1)
      {
        *a1 = v12[-1];
      }

      a4 = 0;
      v12[-1].n128_u32[0] = v29;
      v12[-1].n128_u32[1] = v46;
      v12[-1].n128_u64[1] = result.n128_u64[0];
    }
  }

  v140 = v12 + 1;
  v141 = v12[1].n128_i32[0];
  v142 = v12[1].n128_i32[1];
  v143 = v141 < v12->n128_u32[0];
  if (v141 == v12->n128_u32[0])
  {
    v143 = v142 < v12->n128_u32[1];
  }

  v145 = a2[-1].n128_i32[0];
  v144 = a2 - 1;
  v146 = a2[-1].n128_u32[1] < v142;
  v138 = v145 == v141;
  v147 = v145 < v141;
  if (v138)
  {
    v147 = v146;
  }

  if (v143)
  {
    if (v147)
    {
      v247 = *v12;
      *v12 = *v144;
    }

    else
    {
      v251 = *v12;
      *v12 = *v140;
      result = v251;
      *v140 = v251;
      v216 = a2[-1].n128_i32[0];
      v217 = v12[1].n128_i32[0];
      v138 = v216 == v217;
      v218 = v216 < v217;
      if (v138)
      {
        v218 = a2[-1].n128_u32[1] < v12[1].n128_u32[1];
      }

      if (!v218)
      {
        return result;
      }

      v247 = *v140;
      *v140 = *v144;
    }

    result = v247;
    *v144 = v247;
    return result;
  }

  if (v147)
  {
    v249 = *v140;
    *v140 = *v144;
    result = v249;
    *v144 = v249;
    v205 = v12[1].n128_i32[0];
    v138 = v205 == v12->n128_u32[0];
    v206 = v205 < v12->n128_u32[0];
    if (v138)
    {
      v206 = v12[1].n128_u32[1] < v12->n128_u32[1];
    }

    if (v206)
    {
      v250 = *v12;
      *v12 = *v140;
      result = v250;
      *v140 = v250;
    }
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::glop::anonymous namespace::MatrixEntry *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 result)
{
  v5 = a2->n128_u32[0];
  v6 = a2->n128_i32[1];
  v7 = a2->n128_u32[0] < a1->n128_u32[0];
  if (a2->n128_u32[0] == a1->n128_u32[0])
  {
    v7 = v6 < a1->n128_u32[1];
  }

  v8 = a3->n128_u32[1] < v6;
  v9 = a3->n128_u32[0] == v5;
  v10 = a3->n128_u32[0] < v5;
  if (v9)
  {
    v10 = v8;
  }

  if (v7)
  {
    if (v10)
    {
      result = *a1;
      *a1 = *a3;
LABEL_17:
      *a3 = result;
      goto LABEL_18;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    v12 = a3->n128_u32[0] < a2->n128_u32[0];
    if (a3->n128_u32[0] == a2->n128_u32[0])
    {
      v12 = a3->n128_u32[1] < a2->n128_u32[1];
    }

    if (v12)
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_17;
    }
  }

  else if (v10)
  {
    result = *a2;
    *a2 = *a3;
    *a3 = result;
    v11 = a2->n128_u32[0] < a1->n128_u32[0];
    if (a2->n128_u32[0] == a1->n128_u32[0])
    {
      v11 = a2->n128_u32[1] < a1->n128_u32[1];
    }

    if (v11)
    {
      result = *a1;
      *a1 = *a2;
      *a2 = result;
    }
  }

LABEL_18:
  v13 = a4->n128_u32[0] < a3->n128_u32[0];
  if (a4->n128_u32[0] == a3->n128_u32[0])
  {
    v13 = a4->n128_u32[1] < a3->n128_u32[1];
  }

  if (v13)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    v14 = a3->n128_u32[0] < a2->n128_u32[0];
    if (a3->n128_u32[0] == a2->n128_u32[0])
    {
      v14 = a3->n128_u32[1] < a2->n128_u32[1];
    }

    if (v14)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      v15 = a2->n128_u32[0] < a1->n128_u32[0];
      if (a2->n128_u32[0] == a1->n128_u32[0])
      {
        v15 = a2->n128_u32[1] < a1->n128_u32[1];
      }

      if (v15)
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::glop::anonymous namespace::MatrixEntry *>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v30 = a1 + 1;
        v31 = a1[1].n128_i32[0];
        v32 = a1[1].n128_i32[1];
        v33 = v31 < a1->n128_u32[0];
        if (v31 == a1->n128_u32[0])
        {
          v33 = v32 < a1->n128_u32[1];
        }

        v35 = a2[-1].n128_i32[0];
        v34 = a2 - 1;
        v36 = a2[-1].n128_u32[1] < v32;
        v8 = v35 == v31;
        v37 = v35 < v31;
        if (v8)
        {
          v37 = v36;
        }

        if (!v33)
        {
          if (v37)
          {
            v51 = *v30;
            *v30 = *v34;
            *v34 = v51;
            v52 = a1[1].n128_i32[0];
            v8 = v52 == a1->n128_u32[0];
            v53 = v52 < a1->n128_u32[0];
            if (v8)
            {
              v53 = a1[1].n128_u32[1] < a1->n128_u32[1];
            }

            if (v53)
            {
              v54 = *a1;
              *a1 = *v30;
              *v30 = v54;
            }
          }

          return 1;
        }

        if (v37)
        {
          v38 = *a1;
          *a1 = *v34;
        }

        else
        {
          v60 = *a1;
          *a1 = *v30;
          *v30 = v60;
          v61 = a2[-1].n128_i32[0];
          v62 = a1[1].n128_i32[0];
          v8 = v61 == v62;
          v63 = v61 < v62;
          if (v8)
          {
            v63 = a2[-1].n128_u32[1] < a1[1].n128_u32[1];
          }

          if (!v63)
          {
            return 1;
          }

          v38 = *v30;
          *v30 = *v34;
        }

        *v34 = v38;
        break;
      case 4:
        break;
      case 5:
        v15 = a2[-1].n128_i32[0];
        v14 = a2 - 1;
        v16 = a1[3].n128_i32[0];
        v8 = v15 == v16;
        v17 = v15 < v16;
        if (v8)
        {
          v17 = a2[-1].n128_u32[1] < a1[3].n128_u32[1];
        }

        if (v17)
        {
          v18 = a1[3];
          a1[3] = *v14;
          *v14 = v18;
          v19 = a1[3].n128_i32[0];
          v20 = a1[2].n128_i32[0];
          v8 = v19 == v20;
          v21 = v19 < v20;
          if (v8)
          {
            v21 = a1[3].n128_u32[1] < a1[2].n128_u32[1];
          }

          if (v21)
          {
            v22 = a1[2];
            a1[2] = a1[3];
            a1[3] = v22;
            v23 = a1[2].n128_i32[0];
            v24 = a1[1].n128_i32[0];
            v8 = v23 == v24;
            v25 = v23 < v24;
            if (v8)
            {
              v25 = a1[2].n128_u32[1] < a1[1].n128_u32[1];
            }

            if (v25)
            {
              v26 = a1[1];
              a1[1] = a1[2];
              a1[2] = v26;
              v27 = a1[1].n128_i32[0];
              v8 = v27 == a1->n128_u32[0];
              v28 = v27 < a1->n128_u32[0];
              if (v8)
              {
                v28 = a1[1].n128_u32[1] < a1->n128_u32[1];
              }

              if (v28)
              {
                v29 = *a1;
                *a1 = a1[1];
                a1[1] = v29;
                return 1;
              }
            }
          }
        }

        return 1;
      default:
        goto LABEL_31;
    }

    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_i32[0];
    v6 = a2[-1].n128_i32[1];
    v4 = a2 - 1;
    v7 = v6 < a1->n128_u32[1];
    v8 = v5 == a1->n128_u32[0];
    v9 = v5 < a1->n128_u32[0];
    if (v8)
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = *a1;
      *a1 = *v4;
      *v4 = v10;
      return 1;
    }

    return 1;
  }

LABEL_31:
  v39 = a1 + 2;
  v40 = a1[2].n128_i32[0];
  v41 = a1 + 1;
  v42 = a1[1].n128_i32[0];
  v43 = a1[1].n128_i32[1];
  v44 = a1->n128_u32[0];
  v45 = a1->n128_i32[1];
  v46 = v42 < a1->n128_u32[0];
  if (v42 == a1->n128_u32[0])
  {
    v46 = v43 < v45;
  }

  v47 = a1[2].n128_i32[1];
  v48 = v47 < v43;
  v8 = v40 == v42;
  v49 = v40 < v42;
  if (v8)
  {
    v49 = v48;
  }

  if (!v46)
  {
    if (v49)
    {
      v55 = *v41;
      *v41 = *v39;
      *v39 = v55;
      v56 = a1[1].n128_i32[0];
      v57 = a1[1].n128_u32[1] < v45;
      v8 = v56 == v44;
      v58 = v56 < v44;
      if (v8)
      {
        v58 = v57;
      }

      if (v58)
      {
        v59 = *a1;
        *a1 = *v41;
        *v41 = v59;
      }
    }

    goto LABEL_60;
  }

  if (v49)
  {
    v50 = *a1;
    *a1 = *v39;
  }

  else
  {
    v64 = *a1;
    *a1 = *v41;
    *v41 = v64;
    v65 = a1[1].n128_i32[0];
    v8 = v40 == v65;
    v66 = v40 < v65;
    if (v8)
    {
      v66 = v47 < a1[1].n128_u32[1];
    }

    if (!v66)
    {
      goto LABEL_60;
    }

    v50 = *v41;
    *v41 = *v39;
  }

  *v39 = v50;
LABEL_60:
  v67 = a1 + 3;
  if (&a1[3] == a2)
  {
LABEL_74:
    v82 = 1;
  }

  else
  {
    v68 = 0;
    v69 = 0;
    while (1)
    {
      v70 = v67->n128_u32[0];
      v71 = v67->n128_i32[1];
      v72 = v39->n128_u32[0];
      v73 = v71 < v39->n128_u32[1];
      v8 = v67->n128_u32[0] == v72;
      v74 = v67->n128_u32[0] < v72;
      if (!v8)
      {
        v73 = v74;
      }

      if (v73)
      {
        break;
      }

LABEL_63:
      v39 = v67;
      v68 += 16;
      if (++v67 == a2)
      {
        goto LABEL_74;
      }
    }

    v75 = v67->n128_u64[1];
    v76 = v68;
    do
    {
      v77 = a1 + v76;
      *(a1 + v76 + 48) = *(a1 + v76 + 32);
      if (v76 == -32)
      {
        a1->n128_u32[0] = v70;
        a1->n128_u32[1] = v71;
        a1->n128_u64[1] = v75;
        if (++v69 != 8)
        {
          goto LABEL_63;
        }

        goto LABEL_73;
      }

      v78 = *(v77 + 4);
      v79 = v71 < *(v77 + 5);
      v8 = v70 == v78;
      v80 = v70 < v78;
      if (!v8)
      {
        v79 = v80;
      }

      v76 -= 16;
    }

    while (v79);
    v81 = a1 + v76;
    *(v81 + 12) = v70;
    *(v81 + 13) = v71;
    *(v81 + 7) = v75;
    if (++v69 != 8)
    {
      goto LABEL_63;
    }

LABEL_73:
    v82 = 0;
    LODWORD(v67) = &v67[1] == a2;
  }

  return (v82 | v67) & 1;
}

void absl::lts_20240722::inlined_vector_internal::Storage<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,6ul,std::allocator<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>>(unint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v5 = *a1 & 1;
  if (*a1)
  {
    v7 = a1[1];
    v6 = a1[2];
    v8 = v4 >> 1;
    v9 = a2 - (v4 >> 1);
    if (a2 <= v4 >> 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = 6;
    v7 = (a1 + 1);
    v8 = v4 >> 1;
    v9 = a2 - (v4 >> 1);
    if (a2 <= v4 >> 1)
    {
      goto LABEL_12;
    }
  }

  if (v6 < a2)
  {
    v10 = 2 * v6;
    if (v10 <= a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = v10;
    }

    if (!(v11 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  bzero(v7 + 4 * v8, 4 * v9);
LABEL_12:
  *a1 = v5 | (2 * a2);
}

uint64_t std::vector<operations_research::glop::SparseColumn>::__emplace_back_slow_path<operations_research::glop::SparseColumn>(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x555555555555555)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v2) >> 4) > v6)
  {
    v6 = 0x5555555555555556 * ((*(a1 + 16) - v2) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v2) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x555555555555555)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v9 = 16 * (v4 >> 4);
  v10 = *a2;
  *a2 = 0;
  *v9 = v10;
  *(v9 + 8) = *(a2 + 1);
  *(v9 + 24) = *(a2 + 3);
  *(v9 + 40) = *(a2 + 40);
  v11 = v9 + 48;
  v12 = v9 - v4;
  if (v2 != v3)
  {
    v13 = v2;
    v14 = v12;
    do
    {
      v15 = *v13;
      *v13 = 0;
      *v14 = v15;
      v16 = *(v13 + 1);
      v17 = *(v13 + 3);
      *(v14 + 40) = *(v13 + 40);
      *(v14 + 24) = v17;
      *(v14 + 8) = v16;
      v13 += 6;
      v14 += 48;
    }

    while (v13 != v3);
    do
    {
      v18 = *v2;
      *v2 = 0;
      if (v18)
      {
        MEMORY[0x23EED9440](v18, 0x1000C8077774924);
      }

      v2 += 6;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v12;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return 48 * v5 + 48;
}

void operations_research::glop::Preprocessor::Preprocessor(operations_research::glop::Preprocessor *this, const operations_research::glop::GlopParameters *a2)
{
  *this = &unk_284F414E8;
  *(this + 8) = 6;
  *(this + 2) = a2;
  *(this + 24) = 0;
  operator new();
}

void sub_23CBB2FCC(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  MEMORY[0x23EED9460](v1, v2);
  _Unwind_Resume(a1);
}

void operations_research::glop::Preprocessor::~Preprocessor(operations_research::glop::Preprocessor *this)
{
  *this = &unk_284F414E8;
  v1 = *(this + 4);
  *(this + 4) = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      *(v1 + 48) = v2;
      operator delete(v2);
    }

    MEMORY[0x23EED9460](v1, 0x1030C4094DBD242);
  }
}

uint64_t operations_research::glop::MainLpPreprocessor::Run(operations_research::glop::MainLpPreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  v9[6] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = *(this + 2);
    *(this + 72) = *(v4 + 31);
    *(this + 73) = *(v4 + 290);
    v5 = *(this + 21);
    if (*v5 != 1)
    {
      goto LABEL_9;
    }

    HIBYTE(v9[2]) = 0;
    LOBYTE(v9[0]) = 0;
    operations_research::SolverLogger::LogInfo(v5, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 82, v9);
    if (SHIBYTE(v9[2]) < 0)
    {
      operator delete(v9[0]);
      v6 = *(this + 21);
      if ((*v6 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = *(this + 21);
      if ((*v6 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    HIBYTE(v9[2]) = 20;
    strcpy(v9, "Starting presolve...");
    operations_research::SolverLogger::LogInfo(v6, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 83, v9);
    if (SHIBYTE(v9[2]) < 0)
    {
      operator delete(v9[0]);
    }

LABEL_9:
    *(this + 46) = *(a2 + 6);
    *(this + 47) = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
    *(this + 22) = operations_research::glop::SparseMatrix::num_entries(a2);
    if (*(*(this + 2) + 225) == 1)
    {
      operator new();
    }

    operator new();
  }

  v7 = absl::lts_20240722::log_internal::LogMessage::LogMessage(v9, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 77, 2);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "lp", 2uLL);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, " == NULL", 8uLL);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(v9);
  return 0;
}

void sub_23CBB4210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::glop::MainLpPreprocessor::RunAndPushIfRelevant(uint64_t a1, uint64_t *a2, void *a3, uint64_t (*a4)(uint64_t a1, char a2), operations_research::TimeLimit *this, uint64_t a6)
{
  v56 = *MEMORY[0x277D85DE8];
  v34[0] = a3;
  v34[1] = a4;
  if (!*a2)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v40, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 152, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v40, "preprocessor", 0xCuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v40, " == NULL", 8uLL);
LABEL_32:
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v40);
    return;
  }

  if (!this)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v40, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 153, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v40, "time_limit", 0xAuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v40, " == NULL", 8uLL);
    goto LABEL_32;
  }

  if (*(a1 + 8) == 6)
  {
    v12 = operations_research::TimeLimit::LimitReached(this);
    if ((v12 & 1) == 0)
    {
      CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(v12);
      v14 = *this;
      v15 = *a2;
      *(*a2 + 40) = this;
      if (-1431655765 * ((*(a6 + 8) - *a6) >> 4) || *(a6 + 24))
      {
        if ((*(*v15 + 16))(v15, a6))
        {
          v16 = operations_research::glop::SparseMatrix::num_entries(a6);
          v17 = absl::lts_20240722::GetCurrentTimeNanos(v16);
          v18 = *(a1 + 168);
          if (*v18 == 1)
          {
            v19 = (v17 - *this);
            v20 = *(a6 + 24);
            v21 = (v20 - *(a1 + 184));
            v22 = 0xAAAAAAAAAAAAAAABLL * ((*(a6 + 8) - *a6) >> 4);
            v23 = (v22 - *(a1 + 188));
            v24 = v16 - *(a1 + 176);
            v40 = v34;
            v41 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
            v42 = v20;
            v43 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
            v44 = v21;
            v45 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
            v46 = v22;
            v47 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
            v48 = v23;
            v49 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
            v50 = v16;
            v51 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
            v52 = v24;
            v53 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
            v54 = v19 * 0.000000001 - (CurrentTimeNanos - v14) * 0.000000001;
            v55 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
            absl::lts_20240722::str_format_internal::FormatPack("%-45s: %d(%d) rows, %d(%d) columns, %d(%d) entries. (%fs)", 57, &v40, 8uLL, &v35);
            if ((v37 & 0x80u) == 0)
            {
              v25 = &v35;
            }

            else
            {
              v25 = v35;
            }

            if ((v37 & 0x80u) == 0)
            {
              v26 = v37;
            }

            else
            {
              v26 = v36;
            }

            if (v26 >= 0x7FFFFFFFFFFFFFF8)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v26 >= 0x17)
            {
              operator new();
            }

            v39 = v26;
            if (v26)
            {
              memmove(__dst, v25, v26);
            }

            *(__dst + v26) = 0;
            operations_research::SolverLogger::LogInfo(v18, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 181, __dst);
            if (v39 < 0)
            {
              operator delete(__dst[0]);
            }

            if (v37 < 0)
            {
              operator delete(v35);
            }
          }

          *(a1 + 8) = *(*a2 + 8);
          std::vector<std::unique_ptr<operations_research::SparsePermutation>>::push_back[abi:ne200100](a1 + 48, a2);
        }

        else
        {
          v27 = *(*a2 + 8);
          *(a1 + 8) = *(*a2 + 8);
          if (v27 != 6)
          {
            v28 = *(a1 + 168);
            if (*v28 == 1)
            {
              v40 = a3;
              v41 = a4;
              __dst[0] = " detected that the problem is ";
              __dst[1] = 30;
              operations_research::glop::GetProblemStatusString(v27, v31);
              v29 = v32;
              if ((v32 & 0x80u) == 0)
              {
                v30 = v31;
              }

              else
              {
                v30 = v31[0];
              }

              if ((v32 & 0x80u) != 0)
              {
                v29 = v31[1];
              }

              v35 = v30;
              v36 = v29;
              absl::lts_20240722::StrCat(&v40, __dst, &v35, &__p);
              operations_research::SolverLogger::LogInfo(v28, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 191, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (v32 < 0)
              {
                operator delete(v31[0]);
              }
            }
          }
        }
      }

      else
      {
        *(a1 + 8) = 0;
      }
    }
  }
}

void sub_23CBB4A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::glop::MainLpPreprocessor::RecoverSolution(uint64_t this, operations_research::glop::ProblemSolution *a2)
{
  v3 = *(this + 48);
  for (i = *(this + 56); i != v3; this = (*(*v5 + 24))(v5, a2))
  {
    v5 = *(i - 8);
    i -= 8;
  }

  return this;
}

void *operations_research::glop::MainLpPreprocessor::DestructiveRecoverSolution(void *this, operations_research::glop::ProblemSolution *a2)
{
  v2 = this[7];
  if (this[6] != v2)
  {
    v4 = this;
    do
    {
      (*(**(v2 - 1) + 24))(*(v2 - 1), a2);
      v5 = v4[7];
      v6 = *(v5 - 8);
      v2 = (v5 - 8);
      this = v6;
      *v2 = 0;
      if (v6)
      {
        this = (*(*this + 8))(this);
      }

      v4[7] = v2;
    }

    while (v4[6] != v2);
  }

  return this;
}

uint64_t *operations_research::glop::ColumnsSaver::SaveColumn(void *a1, int a2, uint64_t a3)
{
  v5 = a1[15];
  v14 = a2;
  v15 = v5;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> const,int>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>(a1 + 6, &v14, &v16);
  if ((v18 & 1) == 0)
  {
    operations_research::glop::ColumnsSaver::SaveColumn(&v13);
  }

  v6 = v17;
  *v17 = v14;
  v6[1] = v15;
  v7 = a1[11];
  v8 = a1[12];
  v9 = 85 * ((v8 - v7) >> 3) - 1;
  if (v8 == v7)
  {
    v9 = 0;
  }

  if (v9 == a1[15] + a1[14])
  {
    std::deque<operations_research::glop::SparseColumn>::__add_back_capacity(a1 + 10);
    v7 = a1[11];
    v8 = a1[12];
  }

  if (v8 == v7)
  {
    v11 = 0;
  }

  else
  {
    v10 = a1[15] + a1[14];
    v11 = (*(v7 + 8 * (v10 / 0x55)) + 48 * (v10 % 0x55));
  }

  result = operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::SparseVector(v11, a3);
  ++a1[15];
  return result;
}

void *operations_research::glop::ColumnsSaver::SaveColumnIfNotAlreadyDone(void *a1, int a2, uint64_t a3)
{
  v5 = a1[15];
  v13 = a2;
  v14 = v5;
  result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> const,int>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>(a1 + 6, &v13, &v15);
  if (v17)
  {
    v7 = v16;
    *v16 = v13;
    v7[1] = v14;
    v8 = a1[11];
    v9 = a1[12];
    v10 = 85 * ((v9 - v8) >> 3) - 1;
    if (v9 == v8)
    {
      v10 = 0;
    }

    if (v10 == a1[15] + a1[14])
    {
      std::deque<operations_research::glop::SparseColumn>::__add_back_capacity(a1 + 10);
      v8 = a1[11];
      v9 = a1[12];
    }

    if (v9 == v8)
    {
      v12 = 0;
    }

    else
    {
      v11 = a1[15] + a1[14];
      v12 = (*(v8 + 8 * (v11 / 0x55)) + 48 * (v11 % 0x55));
    }

    result = operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::SparseVector(v12, a3);
    ++a1[15];
  }

  return result;
}

void operations_research::glop::ColumnDeletionHelper::MarkColumnForDeletionWithState(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v6 = a2;
  v8 = a2 << 32;
  if (a2 >= *(a1 + 8))
  {
    v9 = (v8 + 0x100000000) >> 32;
    std::vector<BOOL>::resize(a1, v9, 0);
    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
    v18 = 0;
    v12 = (v11 - v10) >> 3;
    if (v9 <= v12)
    {
      if (v9 < v12)
      {
        *(a1 + 32) = v10 + 8 * v9;
      }
    }

    else
    {
      std::vector<double>::__append(a1 + 24, v9 - v12, &v18);
    }

    v14 = *(a1 + 48);
    v13 = *(a1 + 56);
    v15 = v9 - &v13[-v14];
    if (v9 <= &v13[-v14])
    {
      if (v9 < &v13[-v14])
      {
        *(a1 + 56) = v14 + v9;
      }
    }

    else
    {
      v16 = *(a1 + 64);
      if (v16 - v13 < v15)
      {
        if ((v9 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v17 = v9 + v14;
      memset(v13, 4, v15);
      *(a1 + 56) = v17;
    }
  }

  *(*a1 + (((v8 >> 32) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v6;
  *(*(a1 + 24) + (v8 >> 29)) = a4;
  *(*(a1 + 48) + (v8 >> 32)) = a3;
}

void operations_research::glop::ColumnDeletionHelper::RestoreDeletedColumns(operations_research::glop::ColumnDeletionHelper *this, operations_research::glop::ProblemSolution *a2)
{
  if (*(this + 2) >= 1)
  {
    if (**this)
    {
      operator new();
    }

    operator new();
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = *(a2 + 1);
  v6 = (*(a2 + 2) - v5) >> 3;
  if (v6 <= 0)
  {
    v9 = a2;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = a2;
    do
    {
      while (1)
      {
        v16 = v3;
        v10 = v4 >> 3;
        if (((v4 >> 3) + 1) >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v15 = v2;
        if (v4 >> 3 != -1)
        {
          if (!(((v4 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v10) = *(*(v9 + 1) + (v8 >> 29));
        v11 = 8 * v10 + 8;
        memcpy(0, 0, v4);
        v9 = a2;
        v3 = v16;
        v4 = v11;
        v12 = *(a2 + 7);
        if (v15 >= v16)
        {
          break;
        }

        *v15 = *(v12 + v7);
        v2 = v15 + 1;
        ++v7;
        v8 += 0x100000000;
        if (!--v6)
        {
          goto LABEL_19;
        }
      }

      v13 = (v15 + 1);
      if ((v15 + 1) < 0)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (2 * v16 > v13)
      {
        v13 = 2 * v16;
      }

      if (v13)
      {
        operator new();
      }

      v3 = 0;
      *v15 = *(v12 + v7);
      memcpy(0, 0, v15);
      v9 = a2;
      v2 = v15 + 1;
      ++v7;
      v8 += 0x100000000;
      --v6;
    }

    while (v6);
LABEL_19:
    v5 = *(v9 + 1);
  }

  *(v9 + 1) = 0;
  *(v9 + 2) = v4;
  *(v9 + 3) = 0;
  v14 = *(v9 + 7);
  *(v9 + 7) = 0;
  *(v9 + 8) = v2;
  *(v9 + 9) = v3;
  if (v14)
  {
    operator delete(v14);
  }

  if (v5)
  {

    operator delete(v5);
  }
}

void sub_23CBB56CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, void *a14)
{
  if (__p)
  {
    operator delete(__p);
    if (!a14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!a14)
  {
    goto LABEL_3;
  }

  operator delete(a14);
  _Unwind_Resume(exception_object);
}

void operations_research::glop::RowDeletionHelper::RestoreDeletedRows(operations_research::glop::RowDeletionHelper *this, operations_research::glop::ProblemSolution *a2)
{
  if (*(this + 1) < 1)
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
    v3 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v29 = *(this + 1) & 0x7FFFFFFFLL;
    do
    {
      if ((*(*this + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v2))
      {
        v7 = v3;
        v8 = v3 >> 3;
        if (((v3 >> 3) + 1) >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v3 >> 3 != -1)
        {
          if (!(((v3 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v8) = 0;
        v3 = 8 * v8 + 8;
        memcpy(0, 0, v7);
        if (v6 < v5)
        {
          *v6++ = 0;
        }

        else
        {
          v11 = v6;
          v12 = (v6 + 1);
          if ((v6 + 1) < 0)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (2 * v5 > v12)
          {
            v12 = 2 * v5;
          }

          v5 = v12;
          if (v12)
          {
            operator new();
          }

          *v6++ = 0;
          memcpy(0, 0, v11);
        }
      }

      else
      {
        v9 = v3;
        v10 = v3 >> 3;
        if (((v3 >> 3) + 1) >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v3 >> 3 != -1)
        {
          if (!(((v3 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v10) = *(*(a2 + 4) + 8 * v4);
        v3 = 8 * v10 + 8;
        memcpy(0, 0, v9);
        v13 = *(a2 + 10);
        if (v6 < v5)
        {
          *v6++ = *(v13 + v4);
        }

        else
        {
          v14 = v6;
          v15 = (v6 + 1);
          if ((v6 + 1) < 0)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (2 * v5 > v15)
          {
            v15 = 2 * v5;
          }

          v5 = v15;
          if (v15)
          {
            operator new();
          }

          *v6++ = *(v13 + v4);
          memcpy(0, 0, v14);
        }

        v4 = (v4 + 1);
      }

      ++v2;
    }

    while (v29 != v2);
  }

  v16 = a2;
  v17 = *(a2 + 4);
  v18 = (*(a2 + 5) - v17) >> 3;
  v19 = v4;
  v20 = __OFSUB__(v18, v4);
  v21 = v18 - v4;
  if (!((v21 < 0) ^ v20 | (v21 == 0)))
  {
    v32 = v5;
    v22 = v19;
    v23 = v19 << 32;
    do
    {
      while (1)
      {
        v24 = v3;
        v25 = v3 >> 3;
        if ((v25 + 1) >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v25 != -1)
        {
          if (!((v25 + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        MEMORY[0xFFFFFFFFFFFFFFF8] = *(*(v16 + 4) + (v23 >> 29));
        v3 = 0;
        memcpy(0, 0, v24);
        v16 = a2;
        v26 = *(a2 + 10);
        if (v6 >= v32)
        {
          break;
        }

        *v6++ = *(v26 + v22++);
        v23 += 0x100000000;
        if (!--v21)
        {
          goto LABEL_46;
        }
      }

      v27 = (v6 + 1);
      if ((v6 + 1) < 0)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (2 * v32 > v27)
      {
        v27 = 2 * v32;
      }

      if (v27)
      {
        operator new();
      }

      v32 = 0;
      *v6 = *(v26 + v22);
      memcpy(0, 0, v6);
      v16 = a2;
      ++v6;
      ++v22;
      v23 += 0x100000000;
      --v21;
    }

    while (v21);
LABEL_46:
    v17 = *(v16 + 4);
    v5 = v32;
  }

  *(v16 + 4) = 0;
  *(v16 + 5) = v3;
  *(v16 + 6) = 0;
  v28 = *(v16 + 10);
  *(v16 + 10) = 0;
  *(v16 + 11) = v6;
  *(v16 + 12) = v5;
  if (v28)
  {
    operator delete(v28);
  }

  if (v17)
  {

    operator delete(v17);
  }
}

void sub_23CBB5D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *__p)
{
  if (v16)
  {
    operator delete(v16);
    if (!a14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!a14)
  {
    goto LABEL_3;
  }

  operator delete(a14);
  _Unwind_Resume(exception_object);
}

BOOL operations_research::glop::EmptyColumnPreprocessor::Run(operations_research::glop::EmptyColumnPreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  if (!a2)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v25, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 399, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v25, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v25, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v25);
    return 0;
  }

  *(this + 7) = 0;
  *(this + 10) = *(this + 9);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4);
  if (v4 < 1)
  {
LABEL_27:
    operations_research::glop::LinearProgram::DeleteColumns(a2, this + 6);
    return *(this + 7) != 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = v4 & 0x7FFFFFFF;
  while (*(operations_research::glop::LinearProgram::GetSparseColumn(a2, v6) + 8))
  {
LABEL_19:
    ++v6;
    v5 += 0x100000000;
    if (v7 == v6)
    {
      goto LABEL_27;
    }
  }

  v12 = *(*(a2 + 20) + (v5 >> 29));
  v13 = *(*(a2 + 23) + (v5 >> 29));
  ObjectiveCoefficientForMinimizationVersion = operations_research::glop::LinearProgram::GetObjectiveCoefficientForMinimizationVersion(a2, v6);
  if (ObjectiveCoefficientForMinimizationVersion == 0.0)
  {
    if (v12 == -INFINITY)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = v12;
    }

    if (v13 == INFINITY)
    {
      v9 = v8;
    }

    else
    {
      v9 = v13;
    }

    goto LABEL_10;
  }

  if (ObjectiveCoefficientForMinimizationVersion <= 0.0)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v16 = v15;
    operations_research::glop::LinearProgram::SetObjectiveOffset(a2, *(a2 + 49) + v15 * *(*(a2 + 17) + (v5 >> 29)));
    v9 = v16;
LABEL_10:
    if (v9 == v13)
    {
      v10 = 3;
    }

    else
    {
      v10 = 4;
    }

    if (v9 == v12)
    {
      v10 = 2;
    }

    if (v12 == v13)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    operations_research::glop::ColumnDeletionHelper::MarkColumnForDeletionWithState(this + 48, v6, v11, v9);
    goto LABEL_19;
  }

  v24 = v6;
  if (dword_27E25CE80 >= 1)
  {
    v18 = ObjectiveCoefficientForMinimizationVersion;
    if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::glop::EmptyColumnPreprocessor::Run(operations_research::glop::LinearProgram *)::$_0::operator() const(void)::site, dword_27E25CE80))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v25, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 423);
      v19 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v25, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v19, "Problem INFEASIBLE_OR_UNBOUNDED, empty column ", 0x2EuLL);
      v20 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v19, &v24);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, " has a minimization cost of ", 0x1CuLL);
      v26 = v18;
      v21 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v20, &v26);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, " and bounds", 0xBuLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, " [", 2uLL);
      v26 = v12;
      v22 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v21, &v26);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v22, ",", 1uLL);
      v26 = v13;
      v23 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v22, &v26);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v23, "]", 1uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v25);
    }
  }

  result = 0;
  *(this + 8) = 3;
  return result;
}

void sub_23CBB60D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBB60E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void operations_research::glop::EmptyColumnPreprocessor::RecoverSolution(operations_research::glop::EmptyColumnPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    v2 = (this + 48);

    operations_research::glop::ColumnDeletionHelper::RestoreDeletedColumns(v2, a2);
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v3, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 443, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v3, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v3, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v3);
  }
}

uint64_t operations_research::glop::ProportionalColumnPreprocessor::Run(operations_research::glop::ProportionalColumnPreprocessor *this, operations_research::glop::LinearProgram *a2, __n128 a3)
{
  if (a2)
  {
    a3.n128_u64[0] = *(*(this + 2) + 200);
    operations_research::glop::FindProportionalColumns(&v7, a2, a3);
    v3 = v7;
    if (((v8 - v7) >> 2) >= 1)
    {
      v4 = 0;
      do
      {
        v5 = v3[v4];
        if (v5 != -1)
        {
          if (v3[v5] == -1)
          {
            operator new();
          }

          operator new();
        }

        ++v4;
        v3 = v7;
      }

      while (v4 < ((v8 - v7) >> 2));
    }

    if (v7)
    {
      v8 = v7;
      operator delete(v7);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v7, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 499, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v7, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v7, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v7);
  }

  return 0;
}

void sub_23CBB7234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
    v30 = a15;
    if (!a15)
    {
LABEL_3:
      v31 = a22;
      if (!a22)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v30 = a15;
    if (!a15)
    {
      goto LABEL_3;
    }
  }

  operator delete(v30);
  v31 = a22;
  if (!a22)
  {
LABEL_4:
    v32 = a28;
    if (!a28)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v31);
  v32 = a28;
  if (!a28)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v32);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::glop::anonymous namespace::SubtractColumnMultipleFromConstraintBound(int a1, uint64_t a2, double a3)
{
  SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(a2, a1);
  v7 = SparseColumn[1];
  if (v7 >= 1)
  {
    v8 = SparseColumn[3];
    v9 = SparseColumn[4];
    v10 = *(a2 + 64);
    v11 = *(a2 + 88);
    do
    {
      v12 = *v9++;
      v13 = v12 * a3;
      LODWORD(v12) = *v8++;
      v14 = 8 * SLODWORD(v12);
      *(v10 + v14) = *(v10 + v14) - v13;
      *(v11 + v14) = *(v11 + v14) - v13;
      --v7;
    }

    while (v7);
  }

  v15 = *(a2 + 392) + *(*(a2 + 136) + 8 * a1) * a3;

  return operations_research::glop::LinearProgram::SetObjectiveOffset(a2, v15);
}

void operations_research::glop::ProportionalColumnPreprocessor::RecoverSolution(operations_research::glop::ProportionalColumnPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    operations_research::glop::ColumnDeletionHelper::RestoreDeletedColumns((this + 192), a2);
    v4 = *(this + 10) - *(this + 9);
    if (((v4 << 30) & 0xFFFFFFFF00000000) != 0)
    {
      if (((v4 >> 2) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    memset(__p, 0, sizeof(__p));
    if ((v4 >> 2) >= 1)
    {
      v5 = 0;
      v6 = *(this + 9);
      v7 = __p[0];
      v8 = (v4 >> 2) & 0x7FFFFFFF;
      while (v5 != *(v6 + 4 * v5))
      {
LABEL_9:
        if (v8 == ++v5)
        {
          v23 = 0;
          v24 = *(this + 9);
          v25 = __p[0];
          while (1)
          {
            v30 = *(v24 + 4 * v23);
            if (v30 != -1)
            {
              v31 = v30;
              v32 = (8 * v30);
              if ((*v32 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                v38 = *(*(this + 6) + 8 * v23) / *(*(this + 6) + 8 * v30);
                v39 = fabs(v38);
                v40 = *(this + 15);
                v26 = *(v40 + 8 * v23);
                v41 = *(this + 12);
                v42 = *(v41 + 8 * v23);
                v43 = *v32 / v39;
                v44 = v26 - v42;
                v45 = v30 >> 6;
                v46 = 1 << v30;
                v47 = (v38 <= 0.0) ^ ((v25[v45] & v46) != 0);
                if (v26 - v42 <= v43)
                {
                  if (v47)
                  {
                    v26 = *(v41 + 8 * v23);
                  }

                  *(*(a2 + 1) + 8 * v23) = v26;
                  v27 = *(v41 + 8 * v23);
                  v28 = *(v40 + 8 * v23);
                  if (v26 == v28)
                  {
                    v29 = 3;
                  }

                  else
                  {
                    v29 = 4;
                  }

                  if (v26 == v27)
                  {
                    v29 = 2;
                  }

                  if (v27 == v28)
                  {
                    v29 = 1;
                  }

                  *(*(a2 + 7) + v23) = v29;
                  *v32 = *v32 - v44 * v39;
                }

                else
                {
                  v48 = v26 - v43;
                  if (!v47)
                  {
                    v48 = v43 + v42;
                  }

                  *(*(a2 + 1) + 8 * v23) = v48;
                  v49 = *(8 * v45);
                  if ((v49 & v46) != 0)
                  {
                    v50 = 0;
                  }

                  else
                  {
                    v52 = *(v41 + 8 * v23);
                    v53 = *(v40 + 8 * v23);
                    if (v52 == v53)
                    {
                      v50 = 1;
                    }

                    else if (v48 == v52)
                    {
                      v50 = 2;
                    }

                    else if (v48 == v53)
                    {
                      v50 = 3;
                    }

                    else
                    {
                      v50 = 4;
                    }
                  }

                  *(*(a2 + 7) + v23) = v50;
                  *v32 = 0.0;
                  *(8 * v45) = v49 & ~v46;
                }

                goto LABEL_37;
              }

              v33 = *(8 * v30);
              if (v33 == 0.0)
              {
                v34 = v30 >> 6;
                v35 = 1 << v30;
                v36 = *(8 * (v31 >> 6));
                if ((v36 & v35) != 0)
                {
                  v37 = *(a2 + 7);
                  goto LABEL_55;
                }
              }

              else
              {
                v51 = *(*(this + 6) + 8 * v23) / *(*(this + 6) + 8 * v30);
                if (v33 * v51 > 0.0)
                {
                  if (*(*(this + 15) + 8 * v23) != INFINITY)
                  {
                    goto LABEL_37;
                  }

LABEL_54:
                  *(8 * v30) = 0;
                  *(*(a2 + 1) + 8 * v23) = v33 / v51 + *(*(a2 + 1) + 8 * v23);
                  v34 = v30 >> 6;
                  v35 = 1 << v30;
                  v36 = *(8 * (v31 >> 6));
                  v37 = *(a2 + 7);
                  if ((v36 & v35) == 0)
                  {
                    *(v37 + v23) = 4;
                    goto LABEL_37;
                  }

LABEL_55:
                  *(v37 + v23) = 0;
                  *(8 * v34) = v36 & ~v35;
                  goto LABEL_37;
                }

                if (*(*(this + 12) + 8 * v23) == -INFINITY)
                {
                  goto LABEL_54;
                }
              }
            }

LABEL_37:
            if (v8 == ++v23)
            {
              goto LABEL_63;
            }
          }
        }
      }

      v10 = *(a2 + 1);
      v11 = *(v10 + 8 * v5);
      v12 = *(*(this + 21) + 8 * v5) - v11;
      v13 = v11 - *(*(this + 18) + 8 * v5);
      v14 = v5 >> 6;
      v15 = 1 << v5;
      if (v12 >= v13)
      {
        v7[v14] &= ~v15;
        *(8 * v5) = v13;
        v16 = *(a2 + 7);
        if (*(v16 + v5))
        {
          goto LABEL_13;
        }
      }

      else
      {
        v7[v14] |= v15;
        *(8 * v5) = v12;
        v16 = *(a2 + 7);
        if (*(v16 + v5))
        {
LABEL_13:
          v17 = *(8 * v14) & ~v15;
LABEL_16:
          *(8 * v14) = v17;
          *(8 * v5) = v11;
          v18 = *(this + 12);
          v19 = *(v18 + 8 * v5);
          v20 = *(this + 15);
          if (fabs(v19) >= fabs(*(v20 + 8 * v5)))
          {
            v19 = *(v20 + 8 * v5);
          }

          if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            v19 = 0.0;
          }

          *(v10 + 8 * v5) = v19;
          v21 = *(v18 + 8 * v5);
          v22 = *(v20 + 8 * v5);
          if (v21 == v22)
          {
            v9 = 1;
          }

          else if (v19 == v21)
          {
            v9 = 2;
          }

          else if (v19 == v22)
          {
            v9 = 3;
          }

          else
          {
            v9 = 4;
          }

          *(v16 + v5) = v9;
          goto LABEL_9;
        }
      }

      v17 = *(8 * v14) | v15;
      goto LABEL_16;
    }

LABEL_63:
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 729, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(__p, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(__p, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(__p);
  }
}

void sub_23CBB7994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
    operator delete(v10);
    _Unwind_Resume(a1);
  }

  operator delete(v10);
  _Unwind_Resume(a1);
}

void sub_23CBB79D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL operations_research::glop::ProportionalRowPreprocessor::Run(operations_research::glop::ProportionalRowPreprocessor *this, uint64_t **a2)
{
  if (a2)
  {
    v4 = *(a2 + 6);
    TransposeSparseMatrix = operations_research::glop::LinearProgram::GetTransposeSparseMatrix(a2);
    v11[0] = 0;
    std::vector<double>::assign(this + 6, v4, v11);
    if (v4 >= 1)
    {
      v6 = 0;
      v7 = (*TransposeSparseMatrix + 32);
      do
      {
        if (*(v7 - 3))
        {
          *(*(this + 6) + v6) = **v7;
        }

        v6 += 8;
        v7 += 6;
      }

      while (8 * v4 != v6);
    }

    if (v4)
    {
      if ((v4 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    std::vector<int>::assign(this + 3, v4, &operations_research::glop::kInvalidRow);
    std::vector<int>::assign(this + 4, v4, &operations_research::glop::kInvalidRow);
    v8.n128_u64[0] = *(*(this + 2) + 200);
    operations_research::glop::FindProportionalColumns(v11, TransposeSparseMatrix, v8);
    *(this + 120) = *(a2 + 408);
    operations_research::glop::LinearProgram::DeleteRows(a2, this + 16);
    v9 = *(this + 17) != 0;
    if (v11[0])
    {
      v11[1] = v11[0];
      operator delete(v11[0]);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v11, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 843, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v11, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v11, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v11);
    return 0;
  }

  return v9;
}

void sub_23CBB800C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    v16 = a12;
    if (!a12)
    {
LABEL_3:
      if (!v14)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v16 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v16);
  if (!v14)
  {
LABEL_4:
    if (!v13)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v14);
  if (!v13)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

void operations_research::glop::ProportionalRowPreprocessor::RecoverSolution(operations_research::glop::ProportionalRowPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    operations_research::glop::RowDeletionHelper::RestoreDeletedRows((this + 128), a2);
    v4 = *(a2 + 4);
    v5 = *(a2 + 5) - v4;
    if ((v5 >> 3) >= 1)
    {
      v6 = 0;
      v7 = *(this + 12);
      v8 = *(this + 9);
      v9 = (v5 >> 3) & 0x7FFFFFFF;
      while (1)
      {
        v10 = *(v7 + 4 * v6);
        v11 = *(v8 + 4 * v6);
        if (v10 != -1 || v11 != -1)
        {
          v13 = *(a2 + 10);
          v14 = *(v13 + v6);
          if (*(v13 + v6))
          {
            break;
          }
        }

LABEL_4:
        if (v9 == ++v6)
        {
          return;
        }
      }

      if (v14 == 1)
      {
        v15 = *(v4 + 8 * v6);
        v16 = -v15;
        if (!*(this + 120))
        {
          v16 = *(v4 + 8 * v6);
        }

        if (v16 <= 0.0)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        if (v15 == 0.0)
        {
          v14 = 1;
        }
      }

      if (v6 != v10 && v14 == 2)
      {
        v22 = 8 * v10;
        v23 = *(*(this + 6) + 8 * v6) / *(*(this + 6) + v22);
        *(v4 + v22) = v23 * *(v4 + 8 * v6);
        *(v4 + 8 * v6) = 0;
        *(v13 + v6) = 0;
        if (v23 <= 0.0)
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        LODWORD(v11) = v10;
      }

      else
      {
        if (v6 == v11 || v14 != 3)
        {
LABEL_35:
          if (*(v13 + v6) == 1)
          {
            if (v6 == v10)
            {
              v24 = 2;
            }

            else
            {
              v24 = 3;
            }

            *(v13 + v6) = v24;
          }

          goto LABEL_4;
        }

        v19 = 8 * v11;
        v20 = *(*(this + 6) + 8 * v6) / *(*(this + 6) + v19);
        *(v4 + v19) = v20 * *(v4 + 8 * v6);
        *(v4 + 8 * v6) = 0;
        *(v13 + v6) = 0;
        if (v20 <= 0.0)
        {
          v21 = 2;
        }

        else
        {
          v21 = 3;
        }
      }

      *(v13 + v11) = v21;
      goto LABEL_35;
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v25, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1019, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v25, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v25, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v25);
  }
}

BOOL operations_research::glop::FixedVariablePreprocessor::Run(operations_research::glop::FixedVariablePreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  if (a2)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4);
    if (v4 >= 1)
    {
      v5 = 0;
      v6 = v4 & 0x7FFFFFFF;
      do
      {
        v7 = 8 * v5;
        v8 = *(*(a2 + 20) + v7);
        if (v8 == *(*(a2 + 23) + v7))
        {
          SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(a2, v5);
          v10 = SparseColumn[1];
          if (v10 >= 1)
          {
            v11 = SparseColumn[3];
            v12 = SparseColumn[4];
            v13 = *(a2 + 8);
            v14 = *(a2 + 11);
            do
            {
              v15 = *v12++;
              v16 = v8 * v15;
              LODWORD(v15) = *v11++;
              v17 = 8 * SLODWORD(v15);
              *(v13 + v17) = *(v13 + v17) - v16;
              *(v14 + v17) = *(v14 + v17) - v16;
              --v10;
            }

            while (v10);
          }

          operations_research::glop::LinearProgram::SetObjectiveOffset(a2, *(a2 + 49) + *(*(a2 + 17) + 8 * v5) * v8);
          operations_research::glop::ColumnDeletionHelper::MarkColumnForDeletionWithState(this + 48, v5, 1, v8);
        }

        ++v5;
      }

      while (v5 != v6);
    }

    operations_research::glop::LinearProgram::DeleteColumns(a2, this + 6);
    return *(this + 7) != 0;
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v19, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1092, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v19, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v19, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v19);
    return 0;
  }
}

void operations_research::glop::FixedVariablePreprocessor::RecoverSolution(operations_research::glop::FixedVariablePreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    v2 = (this + 48);

    operations_research::glop::ColumnDeletionHelper::RestoreDeletedColumns(v2, a2);
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v3, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1115, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v3, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v3, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v3);
  }
}

BOOL operations_research::glop::ForcingAndImpliedFreeConstraintPreprocessor::Run(operations_research::glop::ForcingAndImpliedFreeConstraintPreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  if (a2)
  {
    v4 = *(a2 + 6);
    if (v4)
    {
      if ((v4 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v5 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
    if (v5 >= 1)
    {
      v6 = 0;
      do
      {
        v7 = 8 * v6;
        v8 = *(*(a2 + 20) + v7);
        v9 = *(*(a2 + 23) + v7);
        SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(a2, v6);
        v11 = SparseColumn[1];
        if (v11 >= 1)
        {
          v12 = SparseColumn[3];
          v13 = SparseColumn[4];
          do
          {
            v14 = *v13++;
            v15 = v14;
            LODWORD(v14) = *v12++;
            v16 = LODWORD(v14);
            v17 = (8 * SLODWORD(v14));
            if (v15 <= 0.0)
            {
              v18 = v9;
            }

            else
            {
              v18 = v8;
            }

            *v17 = *v17 + v18 * v15;
            if (v15 <= 0.0)
            {
              v19 = v8;
            }

            else
            {
              v19 = v9;
            }

            *v17 = *v17 + v19 * v15;
            ++*(4 * v16);
            --v11;
          }

          while (v11);
        }

        ++v6;
      }

      while (v6 != (v5 & 0x7FFFFFFF));
    }

    LOBYTE(__p[0]) = 0;
    std::vector<BOOL>::assign(this + 80, v4, __p);
    memset(__p, 0, sizeof(__p));
    operations_research::glop::LinearProgram::DeleteColumns(a2, this + 13);
    operations_research::glop::LinearProgram::DeleteRows(a2, this + 22);
    v20 = *(this + 14) != 0;
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1125, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(__p, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(__p, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(__p);
    return 0;
  }

  return v20;
}

void sub_23CBB90A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    if (!v17)
    {
LABEL_3:
      if (!v16)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!v17)
  {
    goto LABEL_3;
  }

  operator delete(v17);
  if (!v16)
  {
LABEL_4:
    if (v15)
    {
LABEL_10:
      operator delete(v15);
      _Unwind_Resume(exception_object);
    }

LABEL_9:
    _Unwind_Resume(exception_object);
  }

LABEL_8:
  operator delete(v16);
  if (v15)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<std::__iom_t5,0>(uint64_t a1, int *a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v6, *(a1 + 8));
  v4 = absl::lts_20240722::log_internal::LogMessage::OstreamView::stream(v6);
  *(v4 + *(*v4 - 24) + 16) = *a2;
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v6);
  return a1;
}

void sub_23CBB9234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

void operations_research::glop::ForcingAndImpliedFreeConstraintPreprocessor::RecoverSolution(operations_research::glop::ForcingAndImpliedFreeConstraintPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    operations_research::glop::ColumnDeletionHelper::RestoreDeletedColumns((this + 104), a2);
    operations_research::glop::RowDeletionHelper::RestoreDeletedRows((this + 176), a2);
    if (*(this + 14) >= 1)
    {
      v5 = 0;
      v6 = (this + 264);
      do
      {
        if (v5 < *(this + 28) && ((*(*(this + 13) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5) & 1) != 0)
        {
          v7 = *(this + 31);
          if (v7 > 1)
          {
            v8 = 0;
            _X9 = *v6;
            __asm { PRFM            #4, [X9] }

            v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v5) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v5));
            v4.n128_u64[0] = vdup_n_s8(v14 & 0x7F);
            v15 = ((v14 >> 7) ^ (*v6 >> 12)) & v7;
            v16 = *(*v6 + v15);
            v17 = vceq_s8(v16, v4.n128_u64[0]);
            if (!v17)
            {
              goto LABEL_14;
            }

LABEL_11:
            v18 = *(this + 34);
            while (1)
            {
              v19 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v7;
              if (v5 == *(v18 + 8 * v19))
              {
                break;
              }

              v17 &= ((v17 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v17)
              {
LABEL_14:
                while (!*&vceq_s8(v16, 0x8080808080808080))
                {
                  v8 += 8;
                  v15 = (v8 + v15) & v7;
                  v16 = *(_X9 + v15);
                  v17 = vceq_s8(v16, v4.n128_u64[0]);
                  if (v17)
                  {
                    goto LABEL_11;
                  }
                }

LABEL_33:
                absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v31, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 230);
                absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v31);
              }
            }

            v20 = v18 + 8 * v19;
            if (!(_X9 + v19))
            {
              goto LABEL_33;
            }
          }

          else
          {
            if (*(this + 32) < 2uLL)
            {
              goto LABEL_33;
            }

            v20 = *v6;
            _ZF = v5 == v20;
            if (v5 == v20)
            {
              v20 = this + 264;
            }

            v22 = &absl::lts_20240722::container_internal::kSooControl;
            if (!_ZF)
            {
              v22 = 0;
            }

            if (!v22)
            {
              goto LABEL_33;
            }
          }

          v23 = *(this + 39) + *(v20 + 4);
          v24 = (*(*(this + 36) + 8 * (v23 / 0x55)) + 48 * (v23 % 0x55));
          v25 = v24[1];
          if (v25 >= 1)
          {
            v26 = v24[3];
            v27 = v24[4];
            v28 = -1;
            do
            {
              v30 = *v26++;
              v29 = v30;
              if (v30 < *(this + 46) && ((*(*(this + 22) + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v29) & 1) != 0)
              {
                v28 = v29;
              }

              v27 += 8;
              --v25;
            }

            while (v25);
            if (v28 != -1)
            {
              operator new();
            }
          }
        }

        ++v5;
      }

      while (v5 != (*(this + 14) & 0x7FFFFFFFLL));
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v31, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1291, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v31, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v31, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v31);
  }
}

void sub_23CBB9918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    v14 = a1;
    operator delete(v13);
    a1 = v14;
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::glop::ImpliedFreePreprocessor::Run(operations_research::glop::ImpliedFreePreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  if (a2)
  {
    if (*(*(this + 2) + 33) == 1)
    {
      v3 = *(a2 + 6);
      if (v3)
      {
        if ((v3 & 0x80000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v4 = (*(a2 + 1) - *a2) >> 4;
      v5 = 0xAAAAAAAAAAAAAAABLL * v4;
      if (-1431655765 * v4 >= 1)
      {
        v6 = 0;
        do
        {
          v7 = 8 * v6;
          v8 = *(*(a2 + 20) + v7);
          v9 = *(*(a2 + 23) + v7);
          SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(a2, v6);
          v11 = SparseColumn[1];
          if (v11 >= 1)
          {
            v12 = SparseColumn[3];
            v13 = SparseColumn[4];
            do
            {
              v14 = v8 * *v13;
              if (*v13 >= 0.0)
              {
                v15 = v9 * *v13;
              }

              else
              {
                v15 = v8 * *v13;
              }

              if (*v13 < 0.0)
              {
                v14 = v9 * *v13;
              }

              v16 = *v12;
              v17 = 24 * *v12;
              if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
              {
                v18 = *(24 * *v12 + 8);
                if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  v19 = v14 + *(24 * *v12 + 0x10);
                  *(24 * *v12 + 8) = v18 + v19;
                  *(v17 + 16) = v19 + v18 - (v18 + v19);
                }
              }

              else
              {
                ++*v17;
                v16 = *v12;
              }

              v20 = 24 * v16;
              if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
              {
                ++*v20;
              }

              else
              {
                v21 = *(v20 + 8);
                if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  v22 = v15 + *(v20 + 16);
                  *(v20 + 8) = v21 + v22;
                  *(v20 + 16) = v22 + v21 - (v21 + v22);
                }
              }

              ++v13;
              ++v12;
              --v11;
            }

            while (v11);
          }

          ++v6;
        }

        while (v6 != (v5 & 0x7FFFFFFF));
      }

      memset(__p, 0, sizeof(__p));
      v23 = *(this + 9);
      if (*(this + 11) - v23 < v5)
      {
        if (v23)
        {
          *(this + 10) = v23;
          operator delete(v23);
          *(this + 9) = 0;
          *(this + 10) = 0;
          *(this + 11) = 0;
        }

        if ((v5 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v24 = *(this + 10);
      v25 = v24 - v23;
      if (v24 - v23 >= v5)
      {
        v26 = v5;
      }

      else
      {
        v26 = v24 - v23;
      }

      if (v26)
      {
        memset(v23, 4, v26);
      }

      if (v5 > v25)
      {
        memset(v24, 4, v5 - v25);
      }

      *(this + 10) = &v23[v5];
      v35[0] = 0;
      std::vector<double>::assign(this + 6, v5, v35);
      if (v5 << 32)
      {
        if (!(v5 >> 60))
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v5 >= 1)
      {
        operations_research::glop::LinearProgram::GetSparseColumn(a2, 0);
        operator new();
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<operations_research::StrongInt64<operations_research::glop::EntryIndex_integer_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>> *,false>(0, 0, v35, 0, 1);
      if (dword_2810C0178 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0170, dword_2810C0178))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v35, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1569);
        v28 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v35, 1);
        v37[0] = 0;
        v29 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v28, v37);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v29, " free variables in the problem.", 0x1FuLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v35);
      }

      if (dword_2810C0190 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0188, dword_2810C0190))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v35, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1570);
        v30 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v35, 1);
        v37[0] = 0;
        v31 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v30, v37);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v31, " implied free columns.", 0x16uLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v35);
      }

      if (dword_2810C01A8 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C01A0, dword_2810C01A8))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v35, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1571);
        v32 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v35, 1);
        v37[0] = 0;
        v33 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v32, v37);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v33, " variables can be fixed.", 0x18uLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v35);
      }

      if (__p[0])
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1381, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(__p, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(__p, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(__p);
  }

  return 0;
}

void sub_23CBBA6F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void *__p)
{
  if (v18)
  {
    operator delete(v18);
    v20 = __p;
    if (!__p)
    {
LABEL_3:
      if (!v17)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v20 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v20);
  if (!v17)
  {
LABEL_4:
    if (!v16)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v17);
  if (!v16)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v16);
  _Unwind_Resume(exception_object);
}

void operations_research::glop::ImpliedFreePreprocessor::RecoverSolution(operations_research::glop::ImpliedFreePreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    v2 = *(a2 + 7);
    v3 = *(a2 + 8) - v2;
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = *(this + 9);
      v6 = v3 & 0x7FFFFFFF;
      do
      {
        v7 = *(v5 + v4);
        if (v7 != 4)
        {
          if (*(v2 + v4) == 4)
          {
            *(v2 + v4) = v7;
          }

          *(*(a2 + 1) + 8 * v4) = *(*(this + 6) + 8 * v4) + *(*(a2 + 1) + 8 * v4);
        }

        ++v4;
      }

      while (v6 != v4);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v8, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1578, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v8, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v8, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v8);
  }
}

uint64_t operations_research::glop::DoubletonFreeColumnPreprocessor::Run(operations_research::glop::DoubletonFreeColumnPreprocessor *this, uint64_t **a2)
{
  if (a2)
  {
    MutableTransposeSparseMatrix = operations_research::glop::LinearProgram::GetMutableTransposeSparseMatrix(a2);
    v5 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4);
    if (v5 >= 1)
    {
      v6 = MutableTransposeSparseMatrix;
      v7 = 0;
      v8 = v5 & 0x7FFFFFFF;
      do
      {
        v9 = &(*a2)[6 * v7];
        if (v9[1] == 2 && *&a2[20][v7] == -INFINITY && *&a2[23][v7] == INFINITY)
        {
          *&v45 = 0;
          memset(v47, 0, 41);
          LODWORD(v44) = v7;
          *(&v44 + 1) = a2[17][v7];
          v10 = v9[1];
          if (v10 >= 1)
          {
            v11 = 0;
            v12 = 0;
            v13 = v9[3];
            v14 = v9[4];
            v15 = *(this + 20);
            do
            {
              v16 = *(v13 + 4 * v12);
              if (v16 < v15 && ((*(*(this + 9) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v16) & 1) != 0)
              {
                break;
              }

              *(&v45 + (v11 >> 30)) = v16;
              *(&v45 + (v11 >> 29) + 8) = *(v14 + 8 * v12++);
              v11 += 0x100000000;
            }

            while (v10 != v12);
            if (v12 == 2)
            {
              v17 = *(&v45 + 1);
              v18 = v46;
              if (fabs(*(&v45 + 1)) >= fabs(v46))
              {
                v19 = v45;
              }

              else
              {
                *(&v45 + 1) = v46;
                v46 = v17;
                v19 = DWORD1(v45);
                *&v45 = __PAIR64__(v45, DWORD1(v45));
                v17 = v18;
              }

              v20 = &(*v6)[6 * v19];
              v47[0] = *v20;
              *v20 = 0;
              v47[1] = *(v20 + 8);
              *(v20 + 8) = 0;
              v21 = v47[2];
              v47[2] = *(v20 + 16);
              *(v20 + 16) = v21;
              LOBYTE(v47[5]) = *(v20 + 40);
              *(v20 + 40) = 0;
              *&v47[3] = *(v20 + 24);
              *(v20 + 24) = 0;
              *(v20 + 32) = 0;
              v22 = v19;
              v23 = *&a2[8][v22];
              v24 = a2[11];
              v25 = v23 / v17;
              if (v17 >= 0.0)
              {
                v26 = *&v24[v22] / v17;
              }

              else
              {
                v26 = v23 / v17;
              }

              if (v17 >= 0.0)
              {
                v27 = v25;
              }

              else
              {
                v27 = *&v24[v22] / v17;
              }

              operations_research::glop::LinearProgram::SetVariableBounds(a2, v44, v27, v26);
              operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::AddMultipleToSparseVectorInternal(v47, 0, v44, &(*v6)[6 * SDWORD1(v45)], -v46 / *(&v45 + 1), *(*(this + 2) + 256));
              v43 = v6;
              if (*(&v44 + 1) != 0.0)
              {
                v28 = v47[1];
                if (v47[1] >= 1)
                {
                  v30 = v47[4];
                  v29 = v47[3];
                  do
                  {
                    v32 = *v29++;
                    v31 = v32;
                    if (v32 != v44)
                    {
                      v33 = *&a2[17][v31];
                      v34 = *v30 * *(&v44 + 1) / *(&v45 + 1);
                      if (vabdd_f64(v33, v34) <= *(*(this + 2) + 256))
                      {
                        v35 = 0.0;
                      }

                      else
                      {
                        v35 = v33 - v34;
                      }

                      operations_research::glop::LinearProgram::SetObjectiveCoefficient(a2, v31, v35);
                    }

                    ++v30;
                    --v28;
                  }

                  while (v28);
                }
              }

              v36 = v45;
              v6 = v43;
              if (v45 >= *(this + 20))
              {
                std::vector<BOOL>::resize(this + 72, v45 + 1, 0);
              }

              *(*(this + 9) + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
              v37 = *(this + 7);
              if (v37 >= *(this + 8))
              {
                v40 = std::vector<operations_research::glop::DoubletonFreeColumnPreprocessor::RestoreInfo>::__emplace_back_slow_path<operations_research::glop::DoubletonFreeColumnPreprocessor::RestoreInfo const&>(this + 6, &v44);
              }

              else
              {
                v38 = v44;
                v39 = v45;
                *(v37 + 32) = v46;
                *v37 = v38;
                *(v37 + 16) = v39;
                operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::SparseVector((v37 + 40), v47);
                v40 = v37 + 88;
                *(this + 7) = v37 + 88;
              }

              *(this + 7) = v40;
            }
          }

          v41 = v47[0];
          v47[0] = 0;
          if (v41)
          {
            MEMORY[0x23EED9440](v41, 0x1000C8077774924);
          }
        }

        ++v7;
      }

      while (v7 != v8);
    }

    if (*(this + 10))
    {
      operations_research::glop::LinearProgram::UseTransposeMatrixAsReference(a2);
      operations_research::glop::LinearProgram::DeleteRows(a2, this + 9);
      return 1;
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v44, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1602, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v44, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v44, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v44);
  }

  return 0;
}

void sub_23CBBAD30(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v15 + 56) = v16;
  if (!a15)
  {
    _Unwind_Resume(exception_object);
  }

  MEMORY[0x23EED9440](a15, 0x1000C8077774924, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(exception_object);
}

void operations_research::glop::DoubletonFreeColumnPreprocessor::RecoverSolution(operations_research::glop::DoubletonFreeColumnPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  operations_research::glop::RowDeletionHelper::RestoreDeletedRows((this + 72), a2);
  v4 = *(this + 6);
  v5 = *(this + 7);
  if (v5 != v4)
  {
    v6 = *(a2 + 7);
    v7 = *(a2 + 1);
    v8 = *(this + 7);
    do
    {
      v10 = *(v8 - 88);
      v8 -= 88;
      v9 = v10;
      v11 = *(v6 + v10);
      v12 = *(v6 + v10);
      if (v11 > 2)
      {
        if (v11 == 4)
        {
          goto LABEL_15;
        }

        if (v11 == 3)
        {
          if (*(v5 - 64) <= 0.0)
          {
            v12 = 2;
          }

          else
          {
            v12 = 3;
          }

          goto LABEL_15;
        }
      }

      else
      {
        if (v11 == 1)
        {
          goto LABEL_15;
        }

        if (v11 == 2)
        {
          if (*(v5 - 64) <= 0.0)
          {
            v12 = 3;
          }

          else
          {
            v12 = 2;
          }

LABEL_15:
          *(*(a2 + 10) + *(v5 - 72)) = v12;
        }
      }

      v13 = *(v7 + 8 * v9);
      v14 = *(v5 - 40);
      if (v14 >= 1)
      {
        v15 = *(v5 - 24);
        v16 = *(v5 - 16);
        do
        {
          v18 = *v15++;
          v17 = v18;
          if (v18 != v9)
          {
            v13 = v13 + -*v16 / *(v5 - 64) * *(v7 + 8 * v17);
          }

          ++v16;
          --v14;
        }

        while (v14);
      }

      *(v7 + 8 * v9) = v13;
      if (v11)
      {
        *(v6 + v9) = 0;
        v19 = vshrq_n_s64(vshll_n_s32(*(v5 - 72), 0x20uLL), 0x1DuLL);
        *(*(a2 + 4) + v19.i64[0]) = (*(v5 - 80) - *(v5 - 56) * *(*(a2 + 4) + v19.i64[1])) / *(v5 - 64);
      }

      v5 = v8;
    }

    while (v8 != v4);
  }
}

void operations_research::glop::UnconstrainedVariablePreprocessor::RemoveZeroCostUnconstrainedVariable(uint64_t a1, int a2, uint64_t a3, double a4)
{
  if (*(a1 + 368) == *(a1 + 376))
  {
    v8 = *(a3 + 24);
    v37 = 0;
    if (v8)
    {
      std::vector<double>::__append(a1 + 368, v8, &v37);
      v9 = *(a3 + 24);
    }

    else
    {
      v9 = 0;
    }

    v37 = 0x3FF0000000000000;
    v10 = *(a1 + 392);
    v11 = (*(a1 + 400) - v10) >> 3;
    if (v9 <= v11)
    {
      if (v9 < v11)
      {
        *(a1 + 400) = v10 + 8 * v9;
      }
    }

    else
    {
      std::vector<double>::__append(a1 + 392, v9 - v11, &v37);
    }

    std::vector<BOOL>::resize(a1 + 416, (-1431655765 * ((*(a3 + 8) - *a3) >> 4)), 0);
  }

  v35 = a2;
  v36 = a2;
  SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(a3, a2);
  v13 = SparseColumn[1];
  if (v13 >= 1)
  {
    v14 = SparseColumn[3];
    v15 = SparseColumn[4];
    if (a4 == INFINITY)
    {
      v16 = 1.0;
    }

    else
    {
      v16 = -1.0;
    }

    if (a4 == INFINITY)
    {
      v17 = -1.0;
    }

    else
    {
      v17 = 1.0;
    }

    do
    {
      v20 = *v14++;
      v19 = v20;
      if (v20 >= *(a1 + 224))
      {
        v23 = v19 << 32;
        std::vector<BOOL>::resize(a1 + 216, ((v19 << 32) + 0x100000000) >> 32, 0);
        v21 = *(a1 + 216);
        v22 = 1 << v19;
      }

      else
      {
        v21 = *(a1 + 216);
        v22 = 1 << v19;
        if ((*(v21 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v19)) != 0)
        {
          goto LABEL_25;
        }

        v23 = v19 << 32;
      }

      v24 = v23 >> 32;
      *(v21 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= v22;
      TransposeSparseMatrix = operations_research::glop::LinearProgram::GetTransposeSparseMatrix(a3);
      operations_research::glop::ColumnsSaver::SaveColumn((a1 + 240), v19, &(*TransposeSparseMatrix)[6 * v24]);
LABEL_25:
      v26 = *(a1 + 392);
      if (*v15 > 0.0)
      {
        *(v26 + 8 * v19) = v17;
        v18 = (a3 + 88);
        if (a4 != INFINITY)
        {
          goto LABEL_19;
        }

LABEL_18:
        v18 = (a3 + 64);
        goto LABEL_19;
      }

      *(v26 + 8 * v19) = v16;
      v18 = (a3 + 88);
      if (a4 != INFINITY)
      {
        goto LABEL_18;
      }

LABEL_19:
      *(*(a1 + 368) + 8 * v19) = *(*v18 + 8 * v19);
      ++v15;
      --v13;
    }

    while (v13);
  }

  *(*(a1 + 416) + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
  v27 = 8 * v36;
  v28 = *(*(a3 + 160) + v27);
  v29 = *(a3 + 184);
  v30 = *(v29 + v27);
  if (fabs(v28) >= fabs(v30))
  {
    v31 = *(v29 + 8 * v36);
  }

  else
  {
    v31 = *(*(a3 + 160) + 8 * v36);
  }

  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v31 = 0.0;
  }

  if (v31 == v30)
  {
    v32 = 3;
  }

  else
  {
    v32 = 4;
  }

  if (v31 == v28)
  {
    v33 = 2;
  }

  else
  {
    v33 = v32;
  }

  if (v28 == v30)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  operations_research::glop::ColumnDeletionHelper::MarkColumnForDeletionWithState(a1 + 144, v35, v34, v31);
}