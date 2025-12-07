uint64_t operations_research::glop::RevisedSimplex::InitializeObjectiveAndTestIfUnchanged(operations_research::glop::RevisedSimplex *this, const operations_research::glop::LinearProgram *a2)
{
  v4 = *(this + 2);
  v5 = *(this + 27);
  v6 = *(this + 28);
  v7 = (this + 216);
  v23 = 0;
  v8 = (v6 - v5) >> 3;
  if (v4 <= v8)
  {
    if (v4 < v8)
    {
      *(this + 28) = v5 + 8 * v4;
    }
  }

  else
  {
    std::vector<double>::__append(this + 216, v4 - v8, &v23);
    v4 = *(this + 2);
  }

  v9 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
  if (v4 <= v9)
  {
    v11 = 1;
  }

  else
  {
    v10 = *v7;
    v11 = 1;
    v12 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
    do
    {
      if (v10[v12] != 0.0)
      {
        v11 = 0;
        v10[v12] = 0.0;
      }

      ++v12;
    }

    while (v4 != v12);
  }

  if (*(a2 + 408))
  {
    if (v9 >= 1)
    {
      v13 = *(a2 + 17);
      v14 = *v7;
      v15 = v9 & 0x7FFFFFFF;
      do
      {
        v16 = -*v13;
        if (*v14 != v16)
        {
          v11 = 0;
          *v14 = v16;
        }

        ++v14;
        ++v13;
        --v15;
      }

      while (v15);
    }

    v20 = *(a2 + 50);
    *(this + 30) = -*(a2 + 49);
    v21 = -v20;
  }

  else
  {
    if (v9 >= 1)
    {
      v17 = *(a2 + 17);
      v18 = *v7;
      v19 = v9 & 0x7FFFFFFF;
      do
      {
        if (*v18 != *v17)
        {
          v11 = 0;
          *v18 = *v17;
        }

        ++v18;
        ++v17;
        --v19;
      }

      while (v19);
    }

    v21 = *(a2 + 50);
    *(this + 30) = *(a2 + 49);
  }

  *(this + 31) = v21;
  return v11 & 1;
}

void operations_research::glop::RevisedSimplex::Polish(operations_research::glop::RevisedSimplex *this@<X0>, operations_research::TimeLimit *a2@<X1>, uint64_t a3@<X8>)
{
  v97 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    operator new();
  }

  v4 = a2;
  v91 = &unk_284F41B30;
  *&v92 = this;
  *(&v92 + 1) = a2;
  v93 = &v91;
  p_p = &__p;
  __p = &unk_284F41B30;
  *__p_8 = v92;
  ReducedCosts = operations_research::glop::ReducedCosts::GetReducedCosts((this + 12264));
  NotBasicBitRow = operations_research::glop::VariablesInfo::GetNotBasicBitRow((this + 8520));
  v7 = *(NotBasicBitRow + 8);
  v8 = (*(NotBasicBitRow + 16) - v7) >> 3;
  v83 = v4;
  if (*(NotBasicBitRow + 16) != v7)
  {
    v9 = *v7;
    if (*v7)
    {
      v10 = 0;
      goto LABEL_5;
    }

    if (v8 != 1)
    {
      v23 = 1;
      v10 = 64;
      while (1)
      {
        v9 = v7[v23];
        if (v9)
        {
          break;
        }

        ++v23;
        v10 += 64;
        if (v8 == v23)
        {
          goto LABEL_32;
        }
      }

LABEL_5:
      v11 = v10 | __clz(__rbit64(v9));
      v12 = (v9 - 1) & v9;
      if (!v8)
      {
        goto LABEL_32;
      }

      goto LABEL_8;
    }

LABEL_32:
    v14 = 0;
    v16 = 0;
    goto LABEL_33;
  }

  v11 = 0;
  v12 = 0;
  if (!v8)
  {
    goto LABEL_32;
  }

LABEL_8:
  v13 = 0;
  v14 = 0;
  v15 = v8 - 1;
  while (((*(*(operations_research::glop::VariablesInfo::GetIsRelevantBitRow((this + 8520)) + 8) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    v16 = v13;
LABEL_22:
    v4 = v83;
    v21 = v11 >> 6;
    if (!v12)
    {
      goto LABEL_23;
    }

LABEL_9:
    v13 = v16;
    v11 = __clz(__rbit64(v12)) | (v21 << 6);
    v12 &= v12 - 1;
  }

  v16 = v13;
  if (fabs(*(ReducedCosts + 8 * v11)) >= 0.000000001)
  {
    goto LABEL_22;
  }

  v17 = &v14[-v13];
  v18 = &v14[-v13] >> 2;
  v19 = v18 + 1;
  if ((v18 + 1) >> 62)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (-v13 >> 1 > v19)
  {
    v19 = -v13 >> 1;
  }

  if (-v13 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v20 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v20 = v19;
  }

  if (v20)
  {
    if (!(v20 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v16 = 0;
  v22 = (4 * v18);
  *v22 = v11;
  v14 = (v22 + 1);
  memcpy(0, v13, v17);
  v4 = v83;
  v21 = v11 >> 6;
  if (v12)
  {
    goto LABEL_9;
  }

LABEL_23:
  while (v15 != v21)
  {
    v12 = v7[++v21];
    if (v12)
    {
      goto LABEL_9;
    }
  }

LABEL_33:
  v84 = 0;
  v24 = 0;
  v25 = (this + 640);
  v26 = 0.0;
  v82 = v16;
  while (2)
  {
    v27 = *(this + 1797);
    v28 = *(this + 1646) + operations_research::glop::BasisFactorization::DeterministicTime((this + 3664)) + v27 * 0.000000002 + *(this + 1451) * 0.000000002 + *(this + 1719) * 0.000000002 + *(this + 1226) * 0.000000002;
    v4[14] = v4[14] + v28 - *(this + 1802);
    *(this + 1802) = v28;
    v29 = operations_research::TimeLimit::LimitReached(v4);
    if (v84 > 4)
    {
      v30 = 1;
    }

    else
    {
      v30 = v29;
    }

    if ((v30 & 1) == 0 && v16 != v14)
    {
      v31 = (v14 - v16) >> 2;
      if (v31 == 1)
      {
        v32 = 0;
      }

      else if (v31)
      {
        v33 = __clz(v31);
        v34 = -32;
        if (((v31 << v33) & 0x7FFFFFFF) == 0)
        {
          v34 = -31;
        }

        v35 = 0xFFFFFFFFFFFFFFFFLL >> (v34 + (v33 | 0x40u));
        do
        {
          v32 = (*(this + 444))(*(this + 442)) & v35;
        }

        while (v31 <= v32);
      }

      else
      {
        v32 = (*(this + 444))(*(this + 442));
      }

      v36 = *&v16[4 * v32];
      v37 = *(v14 - 1);
      v14 -= 4;
      *&v16[4 * v32] = v37;
      *v14 = v36;
      v38 = v36 >> 6;
      v39 = 1.0;
      if ((*(*(operations_research::glop::VariablesInfo::GetCanDecreaseBitRow((this + 8520)) + 8) + 8 * v38) & (1 << v36)) == 0)
      {
        v39 = -1.0;
        if ((*(*(operations_research::glop::VariablesInfo::GetCanIncreaseBitRow((this + 8520)) + 8) + 8 * v38) & (1 << v36)) == 0)
        {
          absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v89, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 2657);
          absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v89);
        }
      }

      if (operations_research::glop::ReducedCosts::NeedsBasisRefactorization((this + 12264)) && !operations_research::glop::BasisFactorization::IsRefactorized((this + 3664)))
      {
        operations_research::glop::BasisFactorization::Refactorize((this + 3664), a3);
        if (*a3)
        {
          goto LABEL_120;
        }

        if (*(a3 + 31) < 0)
        {
          operator delete(*(a3 + 8));
        }

        operations_research::glop::UpdateRow::Invalidate((this + 11360));
        operations_research::glop::RevisedSimplex::PermuteBasis(this);
      }

      operations_research::glop::Status::Status(a3);
      if (*a3)
      {
LABEL_120:
        operator delete(v16);
        goto LABEL_121;
      }

      if (*(a3 + 31) < 0)
      {
        operator delete(*(a3 + 8));
      }

      operations_research::glop::BasisFactorization::RightSolveForProblemColumn(this + 3664, v36, this + 80);
      v40 = *(this + 84);
      v41 = *(this + 85);
      if (v40 == v41)
      {
        v46 = *(this + 1);
        v47 = *(this + 80);
        LODWORD(v89[0]) = 0;
        if (v46 < 1)
        {
          v43 = 0.0;
        }

        else
        {
          v48 = 0;
          v43 = 0.0;
          do
          {
            v50 = *(v47 + 8 * v48);
            if (v50 != 0.0)
            {
              std::vector<int>::push_back[abi:ne200100](this + 672, v89);
              v49 = fabs(v50);
              if (v43 < v49)
              {
                v43 = v49;
              }

              v48 = LODWORD(v89[0]);
            }

            LODWORD(v89[0]) = ++v48;
          }

          while (v48 < v46);
        }

        v16 = v82;
        v4 = v83;
      }

      else
      {
        v42 = v41 - v40;
        if (v42 < 1)
        {
          v43 = 0.0;
        }

        else
        {
          v43 = 0.0;
          do
          {
            v44 = *v40++;
            v45 = fabs(*(*v25 + 8 * v44));
            if (v43 < v45)
            {
              v43 = v45;
            }

            --v42;
          }

          while (v42);
        }
      }

      *(this + 90) = v43;
      v89[0] = 0.0;
      v88 = 0;
      v90 = 0.0;
      v87 = 0;
      operations_research::glop::RevisedSimplex::ChooseLeavingVariableRow(this, v36, &v87, &v88, v89, &v90, a3, v39);
      if (*a3)
      {
        goto LABEL_121;
      }

      if (*(a3 + 31) < 0)
      {
        operator delete(*(a3 + 8));
        if ((v87 & 1) == 0)
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (v87)
        {
          goto LABEL_35;
        }

LABEL_83:
        v52 = fabs(v89[0]);
        if (v52 != INFINITY && v52 > 0.000001 && (v88 == -1 || fabs(*(*v25 + 8 * v88)) >= 0.1))
        {
          if (v39 <= 0.0)
          {
            v53 = v89[0];
          }

          else
          {
            v53 = -v89[0];
          }

          v54 = *(this + 1387);
          v55 = *(this + 2567);
          v56 = (*(this + 2568) - v55) >> 3;
          v51.f64[0] = 0.0;
          v86 = v51;
          if (v36 < v56)
          {
            v57 = *(v55 + 8 * v36);
            if (v57 != 0.0)
            {
              v58.f64[0] = v53 + *(v54 + 8 * v36);
              v58.f64[1] = *(v54 + 8 * v36);
              v59 = vabsq_f64(vmlaq_n_f64(vnegq_f64(vrndaq_f64(vmulq_n_f64(v58, v57))), v58, v57));
              v86 = vsubq_f64(v59, vdupq_laneq_s64(v59, 1));
            }
          }

          v60 = *(this + 84);
          v61 = (*(this + 85) - v60) >> 2;
          if (v61 >= 1)
          {
            do
            {
              v64 = *v60++;
              v63 = v64;
              v65 = *(*(this + 46) + 4 * v64);
              v66 = 0.0;
              if (v65 < v56)
              {
                v67 = 8 * v65;
                v68 = *(v55 + v67);
                if (v68 != 0.0)
                {
                  v69.f64[0] = *(v54 + v67) - *(*(this + 80) + 8 * v63) * v53;
                  v69.f64[1] = *(v54 + v67);
                  v70 = vabsq_f64(vmlaq_n_f64(vnegq_f64(vrndaq_f64(vmulq_n_f64(v69, v68))), v69, v68));
                  *&v66 = *&vsubq_f64(v70, vdupq_laneq_s64(v70, 1));
                }
              }

              v62.f64[1] = v86.f64[1];
              v62.f64[0] = v86.f64[0] + v66;
              v86 = v62;
              --v61;
            }

            while (v61);
          }

          if (v86.f64[0] <= -0.01)
          {
            operations_research::glop::VariableValues::UpdateOnPivoting(this + 11032, this + 80, v36, v53);
            v26 = v26 - v86.f64[0];
            ++v84;
            if (v88 == -1)
            {
              if (v53 <= 0.0)
              {
                if (v53 >= 0.0)
                {
                  goto LABEL_35;
                }

                v77 = 2;
              }

              else
              {
                v77 = 3;
              }

              operations_research::glop::VariablesInfo::UpdateToNonBasicStatus(this + 8520, v36, v77);
              operations_research::glop::VariableValues::SetNonBasicVariableValueFromStatus(this + 1379, v36);
            }

            else
            {
              v71 = *(*(this + 46) + 4 * v88);
              operations_research::glop::UpdateRow::ComputeUpdateRow(this + 1420, v88);
              operations_research::glop::PrimalEdgeNorms::UpdateBeforeBasisPivot(this + 2220, v36, v71, v88, this + 80, this + 1420);
              v72 = v88;
              UnitRowLeftInverse = operations_research::glop::UpdateRow::GetUnitRowLeftInverse((this + 11360));
              operations_research::glop::DualEdgeNorms::UpdateBeforeBasisPivot(this + 1230, v36, v72, this + 80, UnitRowLeftInverse);
              operations_research::glop::ReducedCosts::UpdateBeforeBasisPivot(this + 12264, v36, v88, this + 80, this + 1420);
              v74 = v88;
              v75 = -(*(*v25 + 8 * v88) * v53);
              if (v75 == 0.0)
              {
                v76 = v90;
                goto LABEL_103;
              }

              v76 = v90;
              v78 = *(this + 1387);
              v79 = 8 * v71;
              if (v75 > 0.0 && *(v78 + 8 * v71) >= v90)
              {
LABEL_103:
                v16 = v82;
                v4 = v83;
              }

              else
              {
                v16 = v82;
                v4 = v83;
                if (v75 >= 0.0 || *(v78 + v79) > v90)
                {
                  *(v78 + v79) = v90;
                }
              }

              operations_research::glop::RevisedSimplex::UpdateAndPivot(this, v36, v74, a3, v76);
              if (*a3 || (*(a3 + 31) & 0x80000000) == 0)
              {
                if (*a3)
                {
                  goto LABEL_121;
                }
              }

              else
              {
                operator delete(*(a3 + 8));
              }
            }
          }
        }
      }

LABEL_35:
      if (++v24 == 10)
      {
        break;
      }

      continue;
    }

    break;
  }

  if (dword_27E25CF70 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::glop::RevisedSimplex::Polish(operations_research::TimeLimit *)::$_2::operator() const(void)::site, dword_27E25CF70))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v89, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 2760);
    v80 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v89, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v80, "Polish num_pivots: ", 0x13uLL);
    LODWORD(v90) = v84;
    v81 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v80, &v90);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v81, " gain:", 6uLL);
    v90 = v26;
    absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v81, &v90);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v89);
  }

  operations_research::glop::Status::Status(a3);
LABEL_121:
  if (!p_p)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*p_p + 6))(p_p);
  if (p_p == &__p)
  {
    (*(*p_p + 4))(p_p);
  }

  else if (p_p)
  {
    (*(*p_p + 5))();
  }
}

void sub_23CBD4550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *absl::lts_20240722::StrCat<double,char [20],double>@<X0>(_OWORD *a1@<X0>, char *a2@<X1>, _OWORD *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, long double *a6@<X5>, const char *a7@<X6>, long double *a8@<X7>, std::string *a9@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v12 = *a2;
  v21[0] = *a1;
  v21[1] = v12;
  v13 = *a4;
  v21[2] = *a3;
  v21[3] = v13;
  v21[4] = *a5;
  v14 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v20, *a6, a2);
  v19[4] = v20;
  v19[5] = v14;
  v22 = v20;
  v23 = v14;
  v15 = strlen(a7);
  v24 = a7;
  v25 = v15;
  v18 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v19, *a8, v16);
  v26 = v19;
  v27 = v18;
  return absl::lts_20240722::strings_internal::CatPieces(v21, 8, a9);
}

void operations_research::glop::RevisedSimplex::PrimalPush(operations_research::glop::RevisedSimplex *this@<X0>, operations_research::TimeLimit *a2@<X1>, uint64_t a3@<X8>)
{
  v65 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    operator new();
  }

  v59 = &unk_284F41CB0;
  *&v60 = this;
  *(&v60 + 1) = a2;
  v61 = &v59;
  v64 = &v62;
  v62 = &unk_284F41CB0;
  v63 = v60;
  v54 = 0;
  operations_research::glop::PrimalEdgeNorms::Clear(this + 8880);
  operations_research::glop::DualEdgeNorms::Clear(this + 9840);
  operations_research::glop::UpdateRow::Invalidate((this + 11360));
  operations_research::glop::ReducedCosts::ClearAndRemoveCostShifts((this + 12264));
  NotBasicBitRow = operations_research::glop::VariablesInfo::GetNotBasicBitRow((this + 8520));
  v7 = *(NotBasicBitRow + 8);
  v8 = (*(NotBasicBitRow + 16) - v7) >> 3;
  if (*(NotBasicBitRow + 16) == v7)
  {
    v11 = 0;
    v12 = 0;
    if (v8)
    {
LABEL_8:
      v51 = a2;
      v13 = 0;
      v14 = v8 - 1;
      while (1)
      {
        if (*(*operations_research::glop::VariablesInfo::GetStatusRow((this + 8520)) + v11) == 4 && *(*(this + 1387) + 8 * v11) != 0.0)
        {
          v17 = v13;
          v18 = v13 >> 2;
          if (((v13 >> 2) + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (v13 >> 2 != -1)
          {
            if (!(((v13 >> 2) + 1) >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(4 * v18) = v11;
          v13 = 4 * v18 + 4;
          memcpy(0, 0, v17);
        }

        v15 = v11 >> 6;
        if (!v12)
        {
          break;
        }

LABEL_10:
        v11 = __clz(__rbit64(v12)) | (v15 << 6);
        v12 &= v12 - 1;
      }

      while (v14 != v15)
      {
        v12 = v7[++v15];
        if (v12)
        {
          goto LABEL_10;
        }
      }

      v19 = v13;
      if (!v13)
      {
LABEL_107:
        if (v19)
        {
          v48 = *(this + 457);
          if (*v48 == 1)
          {
            __p[0] = "Push terminated early with ";
            __p[1] = 27;
            v49 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v19 >> 2, v57, v16);
            *&v56[0] = v57;
            *&v56[1] = v49 - v57;
            *&v55[0] = " super-basic variables remaining.";
            *&v55[1] = 33;
            absl::lts_20240722::StrCat(__p, v56, v55, &v53);
            operations_research::SolverLogger::LogInfo(v48, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 3574, &v53);
            if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v53.__r_.__value_.__l.__data_);
            }
          }
        }

        goto LABEL_27;
      }

      v52 = (this + 640);
      do
      {
        v21 = *(this + 1797);
        v22 = *(this + 1646) + operations_research::glop::BasisFactorization::DeterministicTime((this + 3664)) + v21 * 0.000000002 + *(this + 1451) * 0.000000002 + *(this + 1719) * 0.000000002 + *(this + 1226) * 0.000000002;
        *(v51 + 14) = *(v51 + 14) + v22 - *(this + 1802);
        *(this + 1802) = v22;
        if (operations_research::TimeLimit::LimitReached(v51))
        {
          goto LABEL_107;
        }

        if (v54 == 1 && !operations_research::glop::BasisFactorization::IsRefactorized((this + 3664)))
        {
          operations_research::glop::BasisFactorization::Refactorize((this + 3664), a3);
          if (*a3)
          {
            goto LABEL_28;
          }

          if (*(a3 + 31) < 0)
          {
            operator delete(*(a3 + 8));
          }

          operations_research::glop::UpdateRow::Invalidate((this + 11360));
          operations_research::glop::RevisedSimplex::PermuteBasis(this);
        }

        v54 = 0;
        operations_research::glop::Status::Status(a3);
        if (*a3)
        {
          goto LABEL_28;
        }

        if (*(a3 + 31) < 0)
        {
          operator delete(*(a3 + 8));
        }

        if (operations_research::glop::BasisFactorization::IsRefactorized((this + 3664)))
        {
          operations_research::glop::RevisedSimplex::CorrectErrorsOnVariableValues(this);
          operations_research::glop::RevisedSimplex::DisplayIterationInfo(this, 1, 0);
        }

        v23 = v19;
        v25 = *(v19 - 4);
        v19 -= 4;
        v24 = v25;
        v26 = 8 * v25;
        v27 = *(*(this + 1387) + v26);
        if (*(*operations_research::glop::VariablesInfo::GetTypeRow((this + 8520)) + v25))
        {
          if (v27 - *(*(this + 1066) + v26) <= *(*(this + 1069) + v26) - v27)
          {
            v28 = 1.0;
          }

          else
          {
            v28 = -1.0;
          }
        }

        else if (v27 <= 0.0)
        {
          v28 = -1.0;
        }

        else
        {
          v28 = 1.0;
        }

        operations_research::glop::BasisFactorization::RightSolveForProblemColumn(this + 3664, v24, v52);
        v29 = *(this + 84);
        v30 = *(this + 85);
        if (v29 == v30)
        {
          v35 = *(this + 1);
          v36 = *(this + 80);
          LODWORD(__p[0]) = 0;
          if (v35 < 1)
          {
LABEL_71:
            v32 = 0.0;
            goto LABEL_72;
          }

          v37 = 0;
          v32 = 0.0;
          do
          {
            v39 = *(v36 + 8 * v37);
            if (v39 != 0.0)
            {
              std::vector<int>::push_back[abi:ne200100](this + 672, __p);
              v38 = fabs(v39);
              if (v32 < v38)
              {
                v32 = v38;
              }

              v37 = __p[0];
            }

            LODWORD(__p[0]) = ++v37;
          }

          while (v37 < v35);
        }

        else
        {
          v31 = v30 - v29;
          if (v31 < 1)
          {
            goto LABEL_71;
          }

          v32 = 0.0;
          do
          {
            v33 = *v29++;
            v34 = fabs(*&(*v52)[8 * v33]);
            if (v32 < v34)
            {
              v32 = v34;
            }

            --v31;
          }

          while (v31);
        }

LABEL_72:
        *(this + 90) = v32;
        v56[0] = 0.0;
        LODWORD(v53.__r_.__value_.__l.__data_) = 0;
        v55[0] = 0.0;
        operations_research::glop::RevisedSimplex::ChooseLeavingVariableRow(this, v24, &v54, &v53, v56, v55, a3, v28);
        if (*a3)
        {
          goto LABEL_28;
        }

        if (*(a3 + 31) < 0)
        {
          operator delete(*(a3 + 8));
          if (v54)
          {
            goto LABEL_36;
          }
        }

        else if (v54)
        {
          goto LABEL_36;
        }

        v40 = v56[0];
        if (fabs(v56[0]) == INFINITY)
        {
          if (*(*operations_research::glop::VariablesInfo::GetTypeRow((this + 8520)) + v24))
          {
            if (dword_27E25CF88 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::glop::RevisedSimplex::PrimalPush(operations_research::TimeLimit *)::$_1::operator() const(void)::site, dword_27E25CF88))
            {
              absl::lts_20240722::log_internal::LogMessage::LogMessage(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 3499);
              v50 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(__p, 1);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v50, "Infinite step for bounded variable ?!", 0x25uLL);
              absl::lts_20240722::log_internal::LogMessage::~LogMessage(__p);
            }

            *this = 9;
            goto LABEL_107;
          }

          v40 = fabs(v27);
          v56[0] = v40;
        }

        if (v28 <= 0.0)
        {
          v41 = v40;
        }

        else
        {
          v41 = -v40;
        }

        if (LODWORD(v53.__r_.__value_.__l.__data_) == -1)
        {
          v23 = v19;
          v44 = 0;
          v42 = -1;
        }

        else
        {
          v42 = *(*(this + 46) + 4 * SLODWORD(v53.__r_.__value_.__l.__data_));
          v43 = -(*(*(this + 80) + 8 * SLODWORD(v53.__r_.__value_.__l.__data_)) * v41);
          if (v43 == 0.0 || v43 > 0.0 && *(*(this + 1387) + 8 * v42) >= v55[0])
          {
            v23 = v19;
            v44 = 1;
          }

          else
          {
            v23 = v19;
            v44 = v43 < 0.0 && *(*(this + 1387) + 8 * v42) <= v55[0];
          }
        }

        operations_research::glop::VariableValues::UpdateOnPivoting(this + 11032, v52, v24, v41);
        data = v53.__r_.__value_.__l.__data_;
        if (LODWORD(v53.__r_.__value_.__l.__data_) != -1)
        {
          v46 = v55[0];
          if (!v44)
          {
            *(*(this + 1387) + 8 * v42) = v55[0];
          }

          operations_research::glop::RevisedSimplex::UpdateAndPivot(this, v24, data, a3, v46);
          if (*a3)
          {
            goto LABEL_28;
          }

          if (*(a3 + 31) < 0)
          {
            operator delete(*(a3 + 8));
          }

          goto LABEL_35;
        }

        if (*(*operations_research::glop::VariablesInfo::GetTypeRow((this + 8520)) + v24))
        {
          if (v41 > 0.0)
          {
            v47 = 3;
LABEL_102:
            operations_research::glop::VariablesInfo::UpdateToNonBasicStatus(this + 8520, v24, v47);
            operations_research::glop::VariableValues::SetNonBasicVariableValueFromStatus(this + 1379, v24);
            goto LABEL_35;
          }

          if (v41 < 0.0)
          {
            v47 = 2;
            goto LABEL_102;
          }
        }

        else
        {
          *(*(this + 1387) + v26) = 0;
        }

LABEL_35:
        ++*(this + 1793);
LABEL_36:
        v19 = v23;
      }

      while (v23);
    }
  }

  else
  {
    v9 = *v7;
    if (*v7)
    {
      v10 = 0;
      goto LABEL_5;
    }

    if (v8 != 1)
    {
      v20 = 1;
      v10 = 64;
      while (1)
      {
        v9 = v7[v20];
        if (v9)
        {
          break;
        }

        ++v20;
        v10 += 64;
        if (v8 == v20)
        {
          goto LABEL_27;
        }
      }

LABEL_5:
      v11 = v10 | __clz(__rbit64(v9));
      v12 = (v9 - 1) & v9;
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_8;
    }
  }

LABEL_27:
  operations_research::glop::Status::Status(a3);
LABEL_28:
  if (!v64)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v64 + 6))(v64);
  if (v64 == &v62)
  {
    (*(*v64 + 4))(v64);
  }

  else if (v64)
  {
    (*(*v64 + 5))();
  }
}

void sub_23CBD5100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void operations_research::glop::anonymous namespace::Cleanup::~Cleanup(operations_research::glop::_anonymous_namespace_::Cleanup *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2);
  v3 = *(this + 3);
  if (v3 == this)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }
}

uint64_t operations_research::glop::RevisedSimplex::GetConstraintStatus(uint64_t a1, int a2)
{
  v2 = *(*operations_research::glop::VariablesInfo::GetStatusRow((a1 + 8520)) + *(a1 + 12) + a2);
  if (v2 == 2)
  {
    return 3;
  }

  if (v2 == 3)
  {
    return 2;
  }

  return operations_research::glop::VariableToConstraintStatus(v2);
}

void operations_research::glop::RevisedSimplex::GetPrettySolverStats(uint64_t *__return_ptr a1@<X8>, operations_research::glop::RevisedSimplex *this@<X0>)
{
  v13[16] = *MEMORY[0x277D85DE8];
  operations_research::glop::GetProblemStatusString(*this, __p);
  explicit = atomic_load_explicit(&qword_2810BD850, memory_order_acquire);
  if (!explicit)
  {
    LOBYTE(explicit) = absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_simplex_stop_after_first_basis);
  }

  v13[0] = __p;
  v5 = *(this + 1798);
  v13[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  v13[2] = v5;
  v6 = *(this + 1793);
  v13[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  v13[4] = v6;
  v7 = *(this + 1799);
  v13[5] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<unsigned long long>;
  v13[6] = v7;
  v8 = *(this + 1794);
  v13[7] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  v13[8] = v8;
  v9 = *(this + 1800);
  v13[9] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<unsigned long long>;
  v13[10] = v9;
  v10 = *(this + 1795);
  v13[11] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  v13[12] = v10;
  v13[13] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<unsigned long long>;
  v13[14] = explicit & 1;
  v13[15] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<BOOL>;
  absl::lts_20240722::str_format_internal::FormatPack("Problem status                               : %s\nSolving time                                 : %-6.4g\nNumber of iterations                         : %u\nTime for solvability (first phase)           : %-6.4g\nNumber of iterations for solvability         : %u\nTime for optimization                        : %-6.4g\nNumber of iterations for optimization        : %u\nStop after first basis                       : %d\n", 412, v13, 8uLL, a1);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23CBD553C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 operations_research::glop::RevisedSimplex::SetVariableNames(operations_research::glop::RevisedSimplex *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  v3 = *(this + 52);
  v4 = *(this + 53);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3);
  if (v2 <= v5)
  {
    if (v2 < v5)
    {
      v7 = (v3 + 24 * v2);
      while (v4 != v7)
      {
        v8 = *(v4 - 1);
        v4 -= 3;
        if (v8 < 0)
        {
          operator delete(*v4);
        }
      }

      *(this + 53) = v7;
    }
  }

  else
  {
    std::vector<std::string>::__append((this + 416), v2 - v5, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  LODWORD(v9) = *(this + 3);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v18 = ++v11;
      v19 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
      absl::lts_20240722::str_format_internal::FormatPack("x%d", 3, &v18, 1uLL, &__p);
      v12 = *(this + 52) + v10;
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      result = *&__p.__r_.__value_.__l.__data_;
      *(v12 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v12 = result;
      v9 = *(this + 3);
      v10 += 24;
    }

    while (v11 < v9);
  }

  if (v9 < *(this + 2))
  {
    v13 = v9;
    v14 = 24 * v9;
    v15 = v9 + 1;
    do
    {
      v18 = (v15 - *(this + 3));
      v19 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
      absl::lts_20240722::str_format_internal::FormatPack("s%d", 3, &v18, 1uLL, &__p);
      v16 = *(this + 52) + v14;
      if (*(v16 + 23) < 0)
      {
        operator delete(*v16);
      }

      ++v13;
      result = *&__p.__r_.__value_.__l.__data_;
      *(v16 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v16 = result;
      v14 += 24;
      ++v15;
    }

    while (v13 < *(this + 2));
  }

  return result;
}

void sub_23CBD575C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::glop::RevisedSimplex::UseSingletonColumnInInitialBasis(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23CBD5AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  if (v10)
  {
    operator delete(v10);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::glop::RevisedSimplex::InitializeMatrixAndTestIfUnchanged(uint64_t a1, unint64_t a2, int a3, BOOL *a4, char *a5, int *a6)
{
  ColumnsAndRowsExactlyEquals = operations_research::glop::AreFirstColumnsAndRowsExactlyEquals(*(a1 + 4), *(a1 + 12), a2, a1 + 16);
  if (a3)
  {
    FirstSlackVariable = operations_research::glop::LinearProgram::GetFirstSlackVariable(a2);
    if (!ColumnsAndRowsExactlyEquals)
    {
LABEL_3:
      *a4 = 0;
      goto LABEL_4;
    }
  }

  else
  {
    FirstSlackVariable = -1431655765 * ((*(a2 + 8) - *a2) >> 4);
    if (!ColumnsAndRowsExactlyEquals)
    {
      goto LABEL_3;
    }
  }

  v22 = *(a2 + 24);
  v23 = *(a1 + 4);
  if (v22 != v23 || FirstSlackVariable != *(a1 + 12))
  {
    if (v22 <= v23)
    {
      *a4 = 0;
      if (v22 != v23)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *a4 = FirstSlackVariable == *(a1 + 12);
      if (v22 != v23)
      {
LABEL_4:
        *a5 = 0;
        *a6 = 0;
        *(a1 + 12) = FirstSlackVariable;
        v14 = *(a2 + 24);
        *(a1 + 4) = v14;
        *(a1 + 8) = v14 + FirstSlackVariable;
        if (a3)
        {
          goto LABEL_5;
        }

        goto LABEL_36;
      }
    }

    v25 = *(a1 + 12);
    v26 = __OFSUB__(FirstSlackVariable, v25);
    v27 = FirstSlackVariable - v25;
    if ((v27 < 0) ^ v26 | (v27 == 0))
    {
      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    *a5 = v28;
    if ((v27 < 0) ^ v26 | (v27 == 0))
    {
      v27 = 0;
    }

    *a6 = v27;
    *(a1 + 12) = FirstSlackVariable;
    v29 = *(a2 + 24);
    *(a1 + 4) = v29;
    *(a1 + 8) = v29 + FirstSlackVariable;
    if (a3)
    {
LABEL_5:
      v38 = 0;
      v40 = 0;
      v41 = 0;
      __p = 0;
      v15 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 4);
      v42 = 0;
      if (v15 << 32)
      {
        std::vector<operations_research::glop::SparseColumn const*>::__append(&__p, v15, &v42);
      }

      if (v15 >= 1)
      {
        v16 = __p;
        v17 = v15 & 0x7FFFFFFF;
        if (v17 >= 6 && (__p >= a2 + 8 || __p + 8 * v17 <= a2))
        {
          v18 = v17 - (v15 & 3);
          v30 = vld1q_dup_f64(a2);
          v31 = xmmword_23CE48D30;
          v32 = (__p + 16);
          v33 = vdupq_n_s64(0x60uLL);
          v34 = vdupq_n_s64(4uLL);
          v35 = v18;
          do
          {
            v36.i64[0] = 48 * v31.i64[0];
            v36.i64[1] = 48 * v31.i64[1];
            v37 = vaddq_s64(v30, v36);
            v32[-1] = v37;
            *v32 = vaddq_s64(v37, v33);
            v31 = vaddq_s64(v31, v34);
            v32 += 2;
            v35 -= 4;
          }

          while (v35);
          if ((v15 & 3) == 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v18 = 0;
        }

        v19 = v17 - v18;
        v20 = 48 * v18;
        v21 = &v16[8 * v18];
        do
        {
          *v21 = *a2 + v20;
          v21 += 8;
          v20 += 48;
          --v19;
        }

        while (v19);
      }

LABEL_14:
      v38 = *(a2 + 24);
      operations_research::glop::CompactSparseMatrix::PopulateFromMatrixView(a1 + 16, &v38);
      if (__p)
      {
        v40 = __p;
        operator delete(__p);
      }

      if (*(a1 + 16089) == 1)
      {
        goto LABEL_17;
      }

      goto LABEL_37;
    }

LABEL_36:
    operations_research::glop::CompactSparseMatrix::PopulateFromSparseMatrixAndAddSlacks((a1 + 16), a2);
    if (*(a1 + 16089) == 1)
    {
LABEL_17:
      operations_research::glop::CompactSparseMatrix::PopulateFromTranspose((a1 + 96), (a1 + 16));
      return 0;
    }

LABEL_37:
    operations_research::glop::CompactSparseMatrix::Reset(a1 + 96, 0);
    return 0;
  }

  if (*(a1 + 16089) == 1)
  {
    if (*(a1 + 104) == *(a1 + 112))
    {
      operations_research::glop::CompactSparseMatrix::PopulateFromTranspose((a1 + 96), (a1 + 16));
    }

    return 1;
  }

  else
  {
    operations_research::glop::CompactSparseMatrix::Reset(a1 + 96, 0);
    return 1;
  }
}

void sub_23CBD5E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::glop::RevisedSimplex::OldBoundsAreUnchangedAndNewVariablesHaveOneBoundAtZero(uint64_t a1, void *a2, char a3, int a4)
{
  v4 = *(a1 + 12);
  v5 = v4 - a4;
  if (v4 - a4 >= 1)
  {
    v6 = 0;
    while (*(*(a1 + 8528) + v6) == *(a2[20] + v6) && *(*(a1 + 8552) + v6) == *(a2[23] + v6))
    {
      v6 += 8;
      if (8 * (v4 - a4) == v6)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  if (v5 < v4)
  {
    v7 = v4 - a4;
    while (*(a2[20] + 8 * v7) == 0.0 || *(a2[23] + 8 * v7) == 0.0)
    {
      ++v7;
      if (!--a4)
      {
        goto LABEL_12;
      }
    }

    return 0;
  }

LABEL_12:
  if (a3)
  {
    v9 = *(a1 + 8);
    if (v4 < v9)
    {
      while (*(*(a1 + 8528) + 8 * v5) == *(a2[20] + 8 * v4) && *(*(a1 + 8552) + 8 * v5) == *(a2[23] + 8 * v4))
      {
        ++v4;
        ++v5;
        if (v9 == v4)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  else
  {
    v10 = *(a1 + 4);
    if (v10 >= 1)
    {
      v11 = a2[11];
      v12 = a2[8];
      while (*(*(a1 + 8528) + 8 * v5) == -*v11 && *(*(a1 + 8552) + 8 * v5) == -*v12)
      {
        ++v12;
        ++v11;
        ++v5;
        if (!--v10)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return 1;
}

void operations_research::glop::RevisedSimplex::CreateInitialBasis(operations_research::glop::RevisedSimplex *this@<X0>, uint64_t a2@<X8>)
{
  v63 = *MEMORY[0x277D85DE8];
  operations_research::glop::VariablesInfo::InitializeToDefaultStatus((this + 8520));
  operations_research::glop::VariableValues::ResetAllNonBasicVariableValues(this + 1379, this + 76);
  v5 = *(this + 1);
  memset(&v54, 0, sizeof(v54));
  if (v5)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if ((*(this + 15932) & 1) == 0 && *(this + 4006) != 3 && *(this + 16192) == 1)
  {
    if (*(this + 2) >= 1)
    {
      for (i = 0; i < *(this + 2); ++i)
      {
        if (*(*(this + 9) + 8 * i + 8) - *(*(this + 9) + 8 * i) == 1)
        {
          v7 = *(*operations_research::glop::VariablesInfo::GetStatusRow((this + 8520)) + i);
          v8 = *(*(this + 27) + 8 * i);
          if (v8 > 0.0 && ((*(*(this + 1066) + 8 * i) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL ? (v9 = v7 == 3) : (v9 = 0), v9))
          {
            v11 = 2;
          }

          else
          {
            if (v8 >= 0.0)
            {
              continue;
            }

            if ((*(*(this + 1069) + 8 * i) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v7 != 2)
            {
              continue;
            }

            v11 = 3;
          }

          operations_research::glop::VariablesInfo::UpdateToNonBasicStatus(this + 8520, i, v11);
          operations_research::glop::VariableValues::SetNonBasicVariableValueFromStatus(this + 1379, i);
        }
      }
    }

    operations_research::glop::RevisedSimplex::ComputeVariableValuesError(this);
    std::vector<int>::assign(&v54, *(this + 1), &operations_research::glop::kInvalidCol);
    operations_research::glop::RevisedSimplex::UseSingletonColumnInInitialBasis(this, &v54);
    v12 = *(this + 1);
    if (v12 >= 1)
    {
      v13 = 0;
      begin = v54.__begin_;
      do
      {
        if (begin[v13] == -1)
        {
          begin[v13] = v13 + *(this + 3);
          v12 = *(this + 1);
        }

        ++v13;
      }

      while (v13 < v12);
    }
  }

  v15 = *(this + 4006);
  if ((v15 - 1) >= 2)
  {
    if (v15)
    {
      if (v15 != 3)
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&v61, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 1295);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v61, "Unsupported initial_basis parameters: ", 0x26uLL);
        LODWORD(v58) = *(this + 4006);
        absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::glop::GlopParameters_InitialBasisHeuristic,0>(&v61, &v58);
        v51 = &v61;
LABEL_84:
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v51);
        goto LABEL_64;
      }

      TypeRow = operations_research::glop::VariablesInfo::GetTypeRow((this + 8520));
      operations_research::glop::InitialBasis::InitialBasis(&v61, this + 16, this + 216, this + 8528, this + 8552, TypeRow);
      v17 = *(this + 2);
      if (*(this + 15932) == 1)
      {
        operations_research::glop::InitialBasis::GetDualMarosBasis(&v61, v17, &v54);
      }

      else
      {
        operations_research::glop::InitialBasis::GetPrimalMarosBasis(&v61, v17, &v54);
      }

      v29 = *(this + 1);
      if (v29 < 1)
      {
        v32 = 0;
      }

      else
      {
        v30 = *(this + 3);
        if (v29 <= 7)
        {
          v31 = 0;
          v32 = 0;
          goto LABEL_59;
        }

        v31 = v29 & 0x7FFFFFF8;
        v33 = vdupq_n_s32(v30);
        v34 = xmmword_23CE38660;
        v35 = (v54.__begin_ + 4);
        v36 = 0uLL;
        v37.i64[0] = 0x400000004;
        v37.i64[1] = 0x400000004;
        v38.i64[0] = 0x800000008;
        v38.i64[1] = 0x800000008;
        v39 = v31;
        v40 = 0uLL;
        do
        {
          v41 = vaddq_s32(v33, v34);
          v36 = vsubq_s32(v36, vmvnq_s8(vceqq_s32(v35[-1], v41)));
          v40 = vsubq_s32(v40, vmvnq_s8(vceqq_s32(*v35, vaddq_s32(v41, v37))));
          v34 = vaddq_s32(v34, v38);
          v35 += 2;
          v39 -= 8;
        }

        while (v39);
        v32 = vaddvq_s32(vaddq_s32(v40, v36));
        if (v31 != v29)
        {
LABEL_59:
          v42 = v30 + v31;
          v43 = &v54.__begin_[v31];
          v44 = v29 - v31;
          do
          {
            v45 = *v43++;
            if (v42 != v45)
            {
              ++v32;
            }

            ++v42;
            --v44;
          }

          while (v44);
        }
      }

      if (dword_2810C02E0 < 1 || !absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&_MergedGlobals_16, dword_2810C02E0))
      {
        goto LABEL_64;
      }

      absl::lts_20240722::log_internal::LogMessage::LogMessage(&v58, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 1238);
      v52 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v58, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v52, "Number of Maros basis changes: ", 0x1FuLL);
      LODWORD(v55) = v32;
      absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v52, &v55);
      goto LABEL_87;
    }

LABEL_64:
    operations_research::glop::RevisedSimplex::InitializeFirstBasis(this, &v54, a2);
    goto LABEL_65;
  }

  v18 = v54.__begin_;
  if (((v54.__end_ - v54.__begin_) >> 2) < 1)
  {
    goto LABEL_48;
  }

  v19 = 0;
  v20 = *(this + 1066);
  v21 = *(this + 1069);
  v22 = ((v54.__end_ - v54.__begin_) >> 2) & 0x7FFFFFFF;
  do
  {
    if (*(v20 + 8 * *v18) == *(v21 + 8 * *v18))
    {
      *v18 = -1;
      v19 = (v19 + 1);
    }

    ++v18;
    --v22;
  }

  while (v22);
  if (!v19)
  {
LABEL_48:
    v27 = *(this + 457);
    if (*v27 == 1)
    {
      v61 = "Crash is set to ";
      v62 = 16;
      v28 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 4006), v60, v4);
      v58 = v60;
      v59 = v28 - v60;
      v55 = " but there is no equality rows to remove from initial all slack basis. Starting from there.";
      v56 = 91;
      absl::lts_20240722::StrCat(&v61, &v58, &v55, &__p);
      operations_research::SolverLogger::LogInfo(v27, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 1254, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_64;
  }

  v23 = *(this + 457);
  if (*v23 == 1)
  {
    v61 = "Trying to remove ";
    v62 = 17;
    v24 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v19, v60, v4);
    v58 = v60;
    v59 = v24 - v60;
    v55 = " fixed variables from the initial basis.";
    v56 = 40;
    absl::lts_20240722::StrCat(&v61, &v58, &v55, &__p);
    operations_research::SolverLogger::LogInfo(v23, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 1258, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v25 = operations_research::glop::VariablesInfo::GetTypeRow((this + 8520));
  operations_research::glop::InitialBasis::InitialBasis(&v61, this + 16, this + 216, this + 8528, this + 8552, v25);
  v26 = *(this + 4006);
  if (v26 != 2)
  {
    if (v26 == 1)
    {
      if (*(this + 16088) != 1)
      {
        if (dword_2810C02F8 < 1 || !absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C02F0, dword_2810C02F8))
        {
          goto LABEL_64;
        }

        absl::lts_20240722::log_internal::LogMessage::LogMessage(&v58, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 1266);
        v47 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v58, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v47, "Bixby initial basis algorithm requires the problem ", 0x33uLL);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v47, "to be scaled. Skipping Bixby's algorithm.", 0x29uLL);
LABEL_87:
        v51 = &v58;
        goto LABEL_84;
      }

      operations_research::glop::InitialBasis::CompleteBixbyBasis(&v61, *(this + 3), &v54);
    }

    goto LABEL_64;
  }

  v46 = *(this + 2);
  if (*(this + 15932) == 1)
  {
    operations_research::glop::InitialBasis::CompleteTriangularDualBasis(&v61, v46, &v54);
  }

  else
  {
    operations_research::glop::InitialBasis::CompleteTriangularPrimalBasis(&v61, v46, &v54);
  }

  operations_research::glop::RevisedSimplex::InitializeFirstBasis(this, &v54, a2);
  if (*a2)
  {
    v48 = *(this + 457);
    if (*v48 == 1)
    {
      v58 = "Advanced basis algo failed, Reverting to all slack basis.";
      v59 = 57;
      absl::lts_20240722::StrCat(&v58, &v55);
      operations_research::SolverLogger::LogInfo(v48, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 1286, &v55);
      if (v57 < 0)
      {
        operator delete(v55);
      }
    }

    if (*(this + 1) >= 1)
    {
      v49 = 0;
      v50 = v54.__begin_;
      do
      {
        v50[v49] = v49 + *(this + 3);
        ++v49;
      }

      while (v49 < *(this + 1));
    }

    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    goto LABEL_64;
  }

LABEL_65:
  if (v54.__begin_)
  {
    v54.__end_ = v54.__begin_;
    operator delete(v54.__begin_);
  }
}

void sub_23CBD676C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::glop::RevisedSimplex::ComputeVariableValuesError(operations_research::glop::RevisedSimplex *this)
{
  v2 = *(this + 1);
  v22 = 0;
  v3 = v2 << 32;
  v4 = *(this + 92);
  v5 = *(this + 91);
  v6 = (v4 - v5) >> 3;
  if (v2 <= v6)
  {
    if (v2 < v6)
    {
      *(this + 92) = &v5[8 * v2];
    }
  }

  else
  {
    std::vector<double>::__append(this + 728, v2 - v6, &v22);
    v5 = *(this + 91);
  }

  bzero(v5, v3 >> 29);
  v7 = *(this + 2);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = *(this + 1387);
    v10 = *(this + 91);
    do
    {
      v11 = *(v9 + 8 * v8);
      if (v11 != 0.0)
      {
        v12 = *(this + 9);
        v13 = *(v12 + 8 * v8);
        v14 = *(v12 + (((v8 << 32) + 0x100000000) >> 29));
        v15 = v14 <= v13;
        v16 = v14 - v13;
        if (!v15)
        {
          v17 = -v11;
          v18 = (*(this + 6) + 4 * v13);
          v19 = (*(this + 3) + 8 * v13);
          do
          {
            v20 = *v19++;
            v21 = v20;
            LODWORD(v20) = *v18++;
            *(v10 + 8 * SLODWORD(v20)) = *(v10 + 8 * SLODWORD(v20)) + v17 * v21;
            --v16;
          }

          while (v16);
        }
      }

      ++v8;
    }

    while (v8 != v7);
  }
}

void operations_research::glop::RevisedSimplex::InitializeFirstBasis(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 368);
  if (a1 + 368 != a2)
  {
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>((a1 + 368), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  }

  v6 = *(a1 + 4);
  v7 = *(a1 + 368);
  v8 = (*(a1 + 376) - v7) >> 2;
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      *(a1 + 376) = v7 + 4 * v6;
    }
  }

  else
  {
    std::vector<int>::__append(v5, v6 - v8, &operations_research::glop::kInvalidCol);
    v6 = *(a1 + 4);
  }

  if (v6 >= 1)
  {
    v9 = 0;
    v10 = *(a1 + 368);
    do
    {
      if (*(v10 + 4 * v9) == -1)
      {
        *(v10 + 4 * v9) = v9 + *(a1 + 12);
        v6 = *(a1 + 4);
      }

      ++v9;
    }

    while (v9 < v6);
  }

  operations_research::glop::BasisFactorization::Initialize((a1 + 3664), a3);
  if (!*a3)
  {
    if (*(a3 + 31) < 0)
    {
      operator delete(*(a3 + 8));
    }

    operations_research::glop::RevisedSimplex::PermuteBasis(a1);
    v12 = operations_research::glop::BasisFactorization::ComputeInfinityNormConditionNumberUpperBound((a1 + 3664));
    if (v12 <= *(a1 + 16200))
    {
      if (*(a1 + 4) >= 1)
      {
        v16 = 0;
        do
        {
          operations_research::glop::VariablesInfo::UpdateToBasicStatus(a1 + 8520, *(*(a1 + 368) + 4 * v16++));
        }

        while (v16 < *(a1 + 4));
      }

      operations_research::glop::VariableValues::ResetAllNonBasicVariableValues((a1 + 11032), (a1 + 608));
      operations_research::glop::VariableValues::RecomputeBasicVariableValues((a1 + 11032));
      if (**(a1 + 3656))
      {
        v17 = *(a1 + 15976);
        if (operations_research::glop::VariableValues::ComputeMaximumPrimalResidual((a1 + 11032)) > v17)
        {
          v18 = *(a1 + 3656);
          if (*v18 == 1)
          {
            __dst = "The primal residual of the initial basis is above the tolerance, ";
            v31 = 65;
            v19 = operations_research::glop::VariableValues::ComputeMaximumPrimalResidual((a1 + 11032));
            v27 = v29;
            v28 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v29, v19, v20);
            v26[0].__r_.__value_.__r.__words[0] = " vs. ";
            v26[0].__r_.__value_.__l.__size_ = 5;
            v24[0] = v25;
            v24[1] = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v25, v17, v21);
            absl::lts_20240722::StrCat(&__dst, &v27, v26, v24, &__p);
            operations_research::SolverLogger::LogInfo(v18, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 1350, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      operations_research::glop::Status::Status(a3);
    }

    else
    {
      __dst = "The matrix condition number upper bound is too high: ";
      v31 = 53;
      v27 = v29;
      v28 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v29, v12, v11);
      absl::lts_20240722::StrCat(&__dst, &v27, v26);
      v13 = *(a1 + 3656);
      if (*v13 == 1)
      {
        if ((v26[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = v26;
        }

        else
        {
          v14 = v26[0].__r_.__value_.__r.__words[0];
        }

        if ((v26[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v26[0].__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v26[0].__r_.__value_.__l.__size_;
        }

        if (size >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (size >= 0x17)
        {
          operator new();
        }

        v32 = size;
        if (size)
        {
          memmove(&__dst, v14, size);
        }

        *(&__dst + size) = 0;
        operations_research::SolverLogger::LogInfo(v13, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 1328, &__dst);
        if (v32 < 0)
        {
          operator delete(__dst);
        }
      }

      if (SHIBYTE(v26[0].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v23, v26[0].__r_.__value_.__l.__data_, v26[0].__r_.__value_.__l.__size_);
      }

      else
      {
        v23 = v26[0];
      }

      operations_research::glop::Status::Status(a3, 1, &v23);
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if ((SHIBYTE(v26[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

LABEL_47:
        operator delete(v26[0].__r_.__value_.__l.__data_);
        return;
      }

      operator delete(v23.__r_.__value_.__l.__data_);
      if (SHIBYTE(v26[0].__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_47;
      }
    }
  }
}

void sub_23CBD6D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::glop::GlopParameters_InitialBasisHeuristic,0>(uint64_t a1, unsigned int *a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v6, *(a1 + 8));
  v4 = absl::lts_20240722::log_internal::LogMessage::OstreamView::stream(v6);
  MEMORY[0x23EED9180](v4, *a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v6);
  return a1;
}

void sub_23CBD6E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

void sub_23CBD6E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

void operations_research::glop::RevisedSimplex::CorrectErrorsOnVariableValues(operations_research::glop::RevisedSimplex *this)
{
  if (operations_research::glop::VariableValues::ComputeMaximumPrimalResidual((this + 11032)) >= *(this + 2000) * *(this + 1997))
  {
    operations_research::glop::VariableValues::RecomputeBasicVariableValues((this + 11032));
    if (dword_27E25CF58 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::glop::RevisedSimplex::CorrectErrorsOnVariableValues(void)::$_0::operator() const(void)::site, dword_27E25CF58))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v4, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 1700);
      v2 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v4, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v2, "Primal infeasibility (bounds error) = ", 0x26uLL);
      v5 = operations_research::glop::VariableValues::ComputeMaximumPrimalInfeasibility((this + 11032));
      v3 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v2, &v5);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v3, ", Primal residual |A.x - b| = ", 0x1EuLL);
      v5 = operations_research::glop::VariableValues::ComputeMaximumPrimalResidual((this + 11032));
      absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v3, &v5);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v4);
    }
  }
}

void sub_23CBD6F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void operations_research::glop::RevisedSimplex::ChooseLeavingVariableRow(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X2>, int *a4@<X3>, double *a5@<X4>, void *a6@<X5>, operations_research::glop::Status *a7@<X8>, double a8@<D0>)
{
  if (!a3)
  {
    operator new();
  }

  if (!a4)
  {
    operator new();
  }

  if (!a5)
  {
    operator new();
  }

  *(a1 + 20520) = *(a1 + 20512);
  v15 = *(*(a1 + 11096) + 8 * a2);
  if (a8 <= 0.0)
  {
    v16 = *(*(a1 + 8552) + 8 * a2) - v15;
    v17 = operations_research::glop::RevisedSimplex::ComputeHarrisRatioAndLeavingCandidates<false>(a1, (a1 + 20464), v16);
    *a4 = -1;
    if (v16 <= v17)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v16 = v15 - *(*(a1 + 8528) + 8 * a2);
    v17 = operations_research::glop::RevisedSimplex::ComputeHarrisRatioAndLeavingCandidates<true>(a1, (a1 + 20464), v16);
    *a4 = -1;
    if (v16 <= v17)
    {
LABEL_6:
      *a5 = v16;
      goto LABEL_42;
    }
  }

  *(a1 + 20520) = *(a1 + 20512);
  v18 = *(a1 + 20472);
  if (v18 < 1)
  {
    v21 = 0.0;
LABEL_31:
    if (v16 > 0.0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v19 = *(a1 + 20488);
  v20 = *(a1 + 20496);
  v21 = 0.0;
  do
  {
    v23 = *v20;
    if (*v20 <= v17)
    {
      LODWORD(v42[0]) = *v19;
      v24 = v42[0];
      v22 = fabs(*(*(a1 + 640) + 8 * SLODWORD(v42[0])));
      if (v22 >= v21)
      {
        if (v22 != v21)
        {
LABEL_25:
          *(a1 + 20520) = *(a1 + 20512);
          *a4 = v24;
          goto LABEL_12;
        }

        if (v16 >= 0.0)
        {
          if (v23 < 0.0 || v23 > v16)
          {
            goto LABEL_11;
          }
        }

        else if (v23 < v16)
        {
          goto LABEL_11;
        }

        if (v23 != v16)
        {
          goto LABEL_25;
        }

        std::vector<int>::push_back[abi:ne200100](a1 + 20512, v42);
      }

LABEL_11:
      v22 = v21;
      v23 = v16;
LABEL_12:
      v21 = v22;
      v16 = v23;
    }

    ++v20;
    ++v19;
    --v18;
  }

  while (v18);
  if (*(a1 + 20512) == *(a1 + 20520))
  {
    goto LABEL_31;
  }

  std::vector<int>::push_back[abi:ne200100](a1 + 20512, a4);
  v26 = (*(a1 + 20520) - *(a1 + 20512)) >> 2;
  if (v26 == 1)
  {
    v27 = 0;
  }

  else if (v26)
  {
    v32 = __clz(v26);
    v33 = -32;
    if (((v26 << v32) & 0x7FFFFFFF) == 0)
    {
      v33 = -31;
    }

    v34 = 0xFFFFFFFFFFFFFFFFLL >> (v33 + (v32 | 0x40u));
    do
    {
      v27 = (*(a1 + 3552))(*(a1 + 3536)) & v34;
    }

    while (v26 <= v27);
  }

  else
  {
    v27 = (*(a1 + 3552))(*(a1 + 3536));
  }

  *a4 = *(*(a1 + 20512) + 4 * v27);
  if (v16 <= 0.0)
  {
LABEL_32:
    v16 = *(a1 + 16136) * *(a1 + 15976) / v21;
  }

LABEL_33:
  *a5 = v16;
  if (v21 >= *(a1 + 16008) * *(a1 + 720))
  {
    goto LABEL_36;
  }

  if (operations_research::glop::BasisFactorization::IsRefactorized((a1 + 3664)))
  {
    if (dword_2810C0328 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0320, dword_2810C0328))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v42, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 1995);
      v35 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v42, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v35, "Couldn't avoid pivoting by ", 0x1BuLL);
      v41[0] = *(*(a1 + 640) + 8 * *a4);
      v36 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v35, v41);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v36, " direction_infinity_norm_ = ", 0x1CuLL);
      v41[0] = *(a1 + 720);
      v37 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v36, v41);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v37, " reduced cost = ", 0x10uLL);
      v41[0] = a8;
      absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v37, v41);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v42);
    }

LABEL_36:
    v28 = *a4;
    if (*a4 != -1)
    {
      v29 = *(*(a1 + 640) + 8 * v28) <= 0.0;
      v30 = 8 * *(*(a1 + 368) + 4 * v28);
      v31 = 8528;
      if (a8 > 0.0 != v29)
      {
        v31 = 8552;
      }

      *a6 = *(*(a1 + v31) + v30);
    }
  }

  else
  {
    if (dword_2810C0310 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0308, dword_2810C0310))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v42, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 1981);
      v38 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v42, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v38, "Refactorizing to avoid pivoting by ", 0x23uLL);
      v41[0] = *(*(a1 + 640) + 8 * *a4);
      v39 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v38, v41);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v39, " direction_infinity_norm_ = ", 0x1CuLL);
      v41[0] = *(a1 + 720);
      v40 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v39, v41);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v40, " reduced cost = ", 0x10uLL);
      v41[0] = a8;
      absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v40, v41);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v42);
    }

    *a3 = 1;
  }

LABEL_42:
  operations_research::glop::Status::Status(a7);
}

void sub_23CBD7690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBD76A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double operations_research::glop::RevisedSimplex::ComputeHarrisRatioAndLeavingCandidates<true>(uint64_t a1, uint64_t *a2, double a3)
{
  v6 = *(a1 + 16000);
  v7 = *(a1 + 15976);
  v8 = *(a1 + 16136);
  a2[1] = 0;
  *(a2 + 40) = 0;
  IsRefactorized = operations_research::glop::BasisFactorization::IsRefactorized((a1 + 3664));
  v10 = 15992;
  if (IsRefactorized)
  {
    v10 = 16016;
  }

  v11 = *(a1 + 672);
  v12 = (*(a1 + 680) - v11) >> 2;
  if (v12 >= 1)
  {
    v13 = v6 * v7;
    v14 = v7 * v8;
    v15 = *(a1 + v10);
    v16 = *(a1 + 640);
    do
    {
      v20 = *v11++;
      v19 = v20;
      v21 = fabs(*(v16 + 8 * v20));
      if (v21 > v15)
      {
        v22 = *(*(a1 + 640) + 8 * v19);
        v23 = (v22 <= 0.0 ? a1 + 8528 : a1 + 8552);
        v24 = (*(*v23 + 8 * *(*(a1 + 368) + 4 * v19)) - *(*(a1 + 11096) + 8 * *(*(a1 + 368) + 4 * v19))) / v22;
        if (v24 <= a3)
        {
          v25 = a2[1];
          if (v25 == a2[2] && (!v25 || v25 < 2 * v25))
          {
            operator new[]();
          }

          a2[1] = v25 + 1;
          v17 = a2[4];
          *(a2[3] + 4 * v25) = v19;
          *(v17 + 8 * v25) = v24;
          *(a2 + 40) = 1;
          v18 = v14 / v21;
          if (v14 / v21 < v13 / v21 + v24)
          {
            v18 = v13 / v21 + v24;
          }

          if (v18 < a3)
          {
            a3 = v18;
          }
        }
      }

      --v12;
    }

    while (v12);
  }

  return a3;
}

double operations_research::glop::RevisedSimplex::ComputeHarrisRatioAndLeavingCandidates<false>(uint64_t a1, uint64_t *a2, double a3)
{
  v6 = *(a1 + 16000);
  v7 = *(a1 + 15976);
  v8 = *(a1 + 16136);
  a2[1] = 0;
  *(a2 + 40) = 0;
  IsRefactorized = operations_research::glop::BasisFactorization::IsRefactorized((a1 + 3664));
  v10 = 15992;
  if (IsRefactorized)
  {
    v10 = 16016;
  }

  v11 = *(a1 + 672);
  v12 = (*(a1 + 680) - v11) >> 2;
  if (v12 >= 1)
  {
    v13 = v6 * v7;
    v14 = v7 * v8;
    v15 = *(a1 + v10);
    v16 = *(a1 + 640);
    do
    {
      v20 = *v11++;
      v19 = v20;
      v21 = fabs(*(v16 + 8 * v20));
      if (v21 > v15)
      {
        v22 = *(*(a1 + 640) + 8 * v19);
        v23 = (v22 <= 0.0 ? a1 + 8552 : a1 + 8528);
        v24 = (*(*(a1 + 11096) + 8 * *(*(a1 + 368) + 4 * v19)) - *(*v23 + 8 * *(*(a1 + 368) + 4 * v19))) / v22;
        if (v24 <= a3)
        {
          v25 = a2[1];
          if (v25 == a2[2] && (!v25 || v25 < 2 * v25))
          {
            operator new[]();
          }

          a2[1] = v25 + 1;
          v17 = a2[4];
          *(a2[3] + 4 * v25) = v19;
          *(v17 + 8 * v25) = v24;
          *(a2 + 40) = 1;
          v18 = v14 / v21;
          if (v14 / v21 < v13 / v21 + v24)
          {
            v18 = v13 / v21 + v24;
          }

          if (v18 < a3)
          {
            a3 = v18;
          }
        }
      }

      --v12;
    }

    while (v12);
  }

  return a3;
}

void operations_research::glop::RevisedSimplex::PrimalPhaseIChooseLeavingVariableRow(uint64_t a1, int a2, _BYTE *a3, _DWORD *a4, double *a5, void *a6, double a7)
{
  if (!a3)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v21, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 2067, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v21, "refactorize", 0xBuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v21, " == NULL", 8uLL);
LABEL_30:
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v21);
    return;
  }

  if (!a4)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v21, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 2068, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v21, "leaving_row", 0xBuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v21, " == NULL", 8uLL);
    goto LABEL_30;
  }

  if (!a5)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v21, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 2069, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v21, "step_length", 0xBuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v21, " == NULL", 8uLL);
    goto LABEL_30;
  }

  v7 = *(*(a1 + 11096) + 8 * a2);
  if (a7 <= 0.0)
  {
    v8 = *(*(a1 + 8552) + 8 * a2) - v7;
  }

  else
  {
    v8 = v7 - *(*(a1 + 8528) + 8 * a2);
  }

  v9 = *(a1 + 672);
  v10 = (*(a1 + 680) - v9) >> 2;
  if (v10 >= 1)
  {
    v11 = *(a1 + 15976);
    v12 = *(a1 + 640);
    do
    {
      v13 = *v9;
      v14 = *(v12 + 8 * v13);
      if (fabs(v14) >= v11)
      {
        v15 = *(*(a1 + 11096) + 8 * *(*(a1 + 368) + 4 * v13));
        if (a7 <= 0.0)
        {
          v16 = -v14;
        }

        else
        {
          v16 = *(v12 + 8 * v13);
        }

        v17 = (*(*(a1 + 8528) + 8 * *(*(a1 + 368) + 4 * v13)) - v11 - v15) / v16;
        if (v17 >= 0.0 && v17 < v8)
        {
          operator new();
        }

        v19 = (v11 + *(*(a1 + 8552) + 8 * *(*(a1 + 368) + 4 * v13)) - v15) / v16;
        if (v19 >= 0.0 && v19 < v8)
        {
          operator new();
        }
      }

      ++v9;
      --v10;
    }

    while (v10);
  }

  *a4 = -1;
  *a5 = v8;
}

void sub_23CBD8404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::glop::RevisedSimplex::DualChooseLeavingVariableRow(uint64_t a1@<X0>, _DWORD *a2@<X1>, double *a3@<X2>, void *a4@<X3>, operations_research::glop::Status *a5@<X8>)
{
  if (!a2)
  {
    operator new();
  }

  if (!a3)
  {
    operator new();
  }

  if (!a4)
  {
    operator new();
  }

  if (((*(a1 + 10608) - *(a1 + 10600)) & 0x7FFFFFFF8) == 0)
  {
    operations_research::glop::VariableValues::RecomputeDualPrices((a1 + 11032), *(a1 + 15936));
  }

  Maximum = operations_research::glop::DynamicMaximum<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::GetMaximum((a1 + 10552));
  *a2 = Maximum;
  if (Maximum != -1)
  {
    v11 = 8 * *(*(a1 + 368) + 4 * Maximum);
    v12 = *(*(a1 + 11096) + v11);
    v13 = (*(a1 + 8528) + v11);
    v14 = *v13;
    if (v12 >= *v13)
    {
      v13 = (*(a1 + 8552) + v11);
      v14 = *v13;
    }

    *a3 = v14 - v12;
    *a4 = *v13;
  }

  operations_research::glop::Status::Status(a5);
}

void sub_23CBD8810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (*(v29 - 49) < 0)
  {
    operator delete(*(v29 - 72));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::glop::RevisedSimplex::DualPhaseIUpdatePrice(uint64_t a1, int a2, int a3)
{
  if ((*(a1 + 12979) & 1) == 0 && (*(a1 + 12981) & 1) == 0 && (operations_research::glop::DualEdgeNorms::NeedsBasisRefactorization((a1 + 9840)) & 1) == 0 && *(a1 + 14272) != *(a1 + 14280))
  {
    TypeRow = operations_research::glop::VariablesInfo::GetTypeRow((a1 + 8520));
    v7 = *(a1 + 15992);
    EdgeSquaredNorms = operations_research::glop::DualEdgeNorms::GetEdgeSquaredNorms((a1 + 9840));
    v9 = *(a1 + 14272);
    v10 = *(a1 + 640);
    v11 = *(v9 + 8 * a2) / *(v10 + 8 * a2);
    v12 = *(a1 + 672);
    v13 = (*(a1 + 680) - v12) >> 2;
    if (v13 >= 1)
    {
      do
      {
        v15 = *v12++;
        v14 = v15;
        v16 = *(a1 + 14272);
        v17 = 8 * v15;
        v18 = *(v16 + v17) - *(v10 + v17) * v11;
        *(v16 + v17) = v18;
        v19 = v15 >> 3;
        if (v18 == 0.0 || (v20 = *(*TypeRow + *(*(a1 + 368) + 4 * v14)), (v20 - 3) >= 2) && (v20 == 2 ? (v21 = v18 < -v7) : (v21 = 0), !v21 && (v20 == 1 ? (v22 = v18 <= v7) : (v22 = 1), v22)))
        {
          *(*(a1 + 10632) + (v19 & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v14);
        }

        else
        {
          v23 = *(EdgeSquaredNorms + v17);
          *(*(a1 + 10632) + (v19 & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
          v24 = v18 * v18 / v23;
          *(*(a1 + 10600) + v17) = v24;
          if (*(a1 + 10656) <= v24)
          {
            operations_research::glop::DynamicMaximum<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::UpdateTopK(a1 + 10552, v14, v24);
          }
        }

        --v13;
      }

      while (v13);
      v9 = *(a1 + 14272);
    }

    *(v9 + 8 * a2) = v11;
    v25 = *(a1 + 256);
    v26 = 8 * a3;
    *(v9 + 8 * a2) = v11 - *(v25 + v26);
    if (*(v25 + v26) != 0.0)
    {
      --*(a1 + 280);
    }

    *(v25 + 8 * a3) = 0;
    *(v25 + 8 * *(*(a1 + 368) + 4 * a2)) = 0;
    v27 = *(v9 + 8 * a2);
    if (v27 != 0.0 && ((v28 = *(*TypeRow + a3), (v28 - 3) < 2) || v28 == 2 && v27 < -v7 || v28 == 1 && v27 > v7))
    {
      v29 = *(EdgeSquaredNorms + 8 * a2);
      *(*(a1 + 10632) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
      v30 = v27 * v27 / v29;
      *(*(a1 + 10600) + 8 * a2) = v30;
      if (*(a1 + 10656) <= v30)
      {

        operations_research::glop::DynamicMaximum<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::UpdateTopK(a1 + 10552, a2, v30);
      }
    }

    else
    {
      *(*(a1 + 10632) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << a2);
    }
  }
}

void operations_research::glop::RevisedSimplex::DualPhaseIChooseLeavingVariableRow(uint64_t a1@<X0>, _DWORD *a2@<X1>, double *a3@<X2>, void *a4@<X3>, operations_research::glop::Status *a5@<X8>)
{
  if (!a2)
  {
    operator new();
  }

  if (!a3)
  {
    operator new();
  }

  if ((*(a1 + 12979) & 1) == 0 && (*(a1 + 12981) & 1) == 0 && (operations_research::glop::DualEdgeNorms::NeedsBasisRefactorization((a1 + 9840)) & 1) == 0 && *(a1 + 14272) != *(a1 + 14280))
  {
    v32[0] = operations_research::glop::UpdateRow::GetNonZeroPositions((a1 + 11360));
    v32[1] = v10;
    operations_research::glop::RevisedSimplex::DualPhaseIUpdatePriceOnReducedCostChange<absl::lts_20240722::Span<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> const>>(a1, v32);
    *a2 = -1;
    if (!*(a1 + 280))
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  *(a1 + 280) = 0;
  v11 = *(a1 + 4);
  v32[0] = 0;
  v12 = v11 << 32;
  v13 = *(a1 + 14272);
  v14 = (*(a1 + 14280) - v13) >> 3;
  if (v11 <= v14)
  {
    if (v11 < v14)
    {
      *(a1 + 14280) = &v13[8 * v11];
    }
  }

  else
  {
    std::vector<double>::__append(a1 + 14272, v11 - v14, v32);
    v13 = *(a1 + 14272);
  }

  bzero(v13, v12 >> 29);
  v15 = *(a1 + 4);
  *(a1 + 10672) = *(a1 + 10664);
  *(a1 + 10656) = 0xFFF0000000000000;
  v16 = *(a1 + 10600);
  v17 = (*(a1 + 10608) - v16) >> 3;
  if (v15 <= v17)
  {
    if (v15 < v17)
    {
      *(a1 + 10608) = v16 + 8 * v15;
    }
  }

  else
  {
    std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(a1 + 10600, v15 - v17);
  }

  v18 = v15 & ~(v15 >> 31);
  *(a1 + 10624) = v18;
  v19 = (v18 + 63) >> 6;
  v20 = *(a1 + 10632);
  v21 = *(a1 + 10640) - v20;
  v22 = v21 >> 3;
  v32[0] = 0;
  if (v19 <= v21 >> 3)
  {
    if (v19 < v21 >> 3)
    {
      *(a1 + 10640) = &v20[8 * v19];
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(a1 + 10632, v19 - (v21 >> 3), v32);
    v20 = *(a1 + 10632);
  }

  if (v19 >= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v19;
  }

  bzero(v20, 8 * v23);
  v24 = *(a1 + 8);
  v32[0] = 0;
  v25 = v24 << 32;
  v26 = *(a1 + 256);
  v27 = (*(a1 + 264) - v26) >> 3;
  if (v24 <= v27)
  {
    if (v24 < v27)
    {
      *(a1 + 264) = &v26[8 * v24];
    }
  }

  else
  {
    std::vector<double>::__append(a1 + 256, v24 - v27, v32);
    v26 = *(a1 + 256);
  }

  bzero(v26, v25 >> 29);
  IsRelevantBitRow = operations_research::glop::VariablesInfo::GetIsRelevantBitRow((a1 + 8520));
  operations_research::glop::RevisedSimplex::DualPhaseIUpdatePriceOnReducedCostChange<operations_research::Bitset64<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>(a1, IsRelevantBitRow);
  *a2 = -1;
  if (*(a1 + 280))
  {
LABEL_29:
    Maximum = operations_research::glop::DynamicMaximum<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::GetMaximum((a1 + 10552));
    *a2 = Maximum;
    if (Maximum != -1)
    {
      v30 = *(*(a1 + 14272) + 8 * Maximum);
      *a3 = v30;
      v31 = 8528;
      if (v30 < 0.0)
      {
        v31 = 8552;
      }

      *a4 = *(*(a1 + v31) + 8 * *(*(a1 + 368) + 4 * Maximum));
    }
  }

LABEL_33:
  operations_research::glop::Status::Status(a5);
}

void sub_23CBD8FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,double>::AssignToZero(char **a1, uint64_t a2)
{
  v10 = 0;
  v3 = a2 << 32;
  v4 = a2;
  v5 = *a1;
  v7 = (a1[1] - v5) >> 3;
  v8 = a2 >= v7;
  v9 = a2 - v7;
  if (v9 != 0 && v8)
  {
    std::vector<double>::__append(a1, v9, &v10);
    v5 = *a1;
LABEL_4:
    bzero(v5, v3 >> 29);
    return;
  }

  if (v8)
  {
    goto LABEL_4;
  }

  a1[1] = &v5[8 * v4];
  bzero(v5, v3 >> 29);
}

void operations_research::glop::RevisedSimplex::DualPhaseIUpdatePriceOnReducedCostChange<operations_research::Bitset64<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>(uint64_t a1, uint64_t a2)
{
  v88 = *(operations_research::glop::VariablesInfo::GetCanDecreaseBitRow((a1 + 8520)) + 8);
  v4 = *(operations_research::glop::VariablesInfo::GetCanIncreaseBitRow((a1 + 8520)) + 8);
  ReducedCosts = operations_research::glop::ReducedCosts::GetReducedCosts((a1 + 12264));
  v6 = *(a1 + 13136);
  v7 = *(a1 + 256);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16) - v8;
  v10 = v9 >> 3;
  if (v9)
  {
    v11 = *v8;
    if (*v8)
    {
      i = 0;
    }

    else
    {
      if (v10 == 1)
      {
        return;
      }

      v69 = 1;
      for (i = 64; ; i += 64)
      {
        v11 = v8[v69];
        if (v11)
        {
          break;
        }

        if (v10 == ++v69)
        {
          return;
        }
      }
    }

    v13 = i | __clz(__rbit64(v11));
    v14 = (v11 - 1) & v11;
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    if (!v10)
    {
      return;
    }
  }

  v15 = 0;
  v16 = v10 - 1;
  v86 = ReducedCosts;
  v87 = v4;
  v85 = *(a1 + 256);
  while (1)
  {
    v17 = 8 * v13;
    v18 = *(ReducedCosts + v17);
    v19 = v13 >> 6;
    if ((*(v4 + 8 * v19) & (1 << v13)) != 0 && v18 < -v6)
    {
      v24 = (v7 + v17);
      v25 = *(v7 + 8 * v13);
      v23 = 1.0;
      if (v25 == 1.0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v21 = *(v88 + 8 * v19) & (1 << v13);
      if (v18 <= v6 || v21 == 0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = -1.0;
      }

      v24 = (v7 + v17);
      v25 = *(v7 + 8 * v13);
      if (v23 == v25)
      {
        goto LABEL_43;
      }

      if (v23 == 0.0)
      {
        v26 = -1;
LABEL_25:
        *(a1 + 280) += v26;
        goto LABEL_26;
      }
    }

    if (v25 == 0.0)
    {
      v26 = 1;
      goto LABEL_25;
    }

LABEL_26:
    if ((v15 & 1) == 0)
    {
      v27 = *(a1 + 4);
      v89 = 0;
      v28 = *(a1 + 288);
      v29 = (*(a1 + 296) - v28) >> 3;
      if (v27 <= v29)
      {
        if (v27 < v29)
        {
          *(a1 + 296) = v28 + 8 * v27;
        }
      }

      else
      {
        std::vector<double>::__append(a1 + 288, v27 - v29, &v89);
      }

      operations_research::glop::ScatteredVector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::ScatteredRowEntry>>::ClearSparseMask((a1 + 288));
      *(a1 + 328) = *(a1 + 320);
      v25 = *v24;
    }

    v30 = *(a1 + 72);
    v31 = ((v13 << 32) + 0x100000000) >> 29;
    v32 = *(a1 + 48);
    v33 = *(a1 + 24);
    *(a1 + 14376) += 10 * (*(v30 + v31) - *(v30 + 8 * v13));
    v34 = v23 - v25;
    if (v23 - v25 != 0.0)
    {
      v35 = *(v30 + 8 * v13);
      v36 = *(v30 + v31);
      v37 = v36 - v35;
      if (v36 > v35)
      {
        v38 = (v33 + 8 * v35);
        v39 = (v32 + 4 * v35);
        do
        {
          v40 = *v39++;
          v41 = *v38;
          LODWORD(v89) = v40;
          v42 = v34 * v41;
          *(*(a1 + 288) + 8 * v40) = v42 + *(*(a1 + 288) + 8 * v40);
          v43 = *(a1 + 344);
          v44 = v40 >> 6;
          v45 = 1 << v40;
          v46 = *(v43 + 8 * (v40 >> 6));
          v47 = v46 & (1 << v40);
          if (v42 != 0.0 && v47 == 0)
          {
            *(v43 + 8 * v44) = v46 | v45;
            std::vector<int>::push_back[abi:ne200100](a1 + 320, &v89);
            *(a1 + 312) = 0;
          }

          ++v38;
          --v37;
        }

        while (v37);
      }
    }

    *v24 = v23;
    v15 = 1;
    ReducedCosts = v86;
    v4 = v87;
    v7 = v85;
LABEL_43:
    v49 = v13 >> 6;
    if (!v14)
    {
      break;
    }

LABEL_8:
    v13 = __clz(__rbit64(v14)) | (v49 << 6);
    v14 &= v14 - 1;
  }

  while (v16 != v49)
  {
    v14 = v8[++v49];
    if (v14)
    {
      goto LABEL_8;
    }
  }

  if (v15)
  {
    v50 = *(a1 + 320);
    v51 = *(a1 + 328);
    if (v50 == v51 || ((*(a1 + 296) - *(a1 + 288)) >> 3) * 0.8 < ((v51 - v50) >> 2))
    {
      operations_research::glop::ScatteredVector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::ScatteredRowEntry>>::ClearSparseMask((a1 + 288));
      *(a1 + 328) = *(a1 + 320);
    }

    operations_research::glop::ScatteredVector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::ScatteredRowEntry>>::ClearSparseMask((a1 + 288));
    EdgeSquaredNorms = operations_research::glop::DualEdgeNorms::GetEdgeSquaredNorms((a1 + 9840));
    TypeRow = operations_research::glop::VariablesInfo::GetTypeRow((a1 + 8520));
    v54 = *(a1 + 15992);
    operations_research::glop::BasisFactorization::RightSolve((a1 + 3664), (a1 + 288));
    v56 = *(a1 + 320);
    v55 = *(a1 + 328);
    if (v56 == v55)
    {
      *(a1 + 10672) = *(a1 + 10664);
      *(a1 + 10656) = 0x7FF0000000000000;
      v70 = *(a1 + 4);
      v71 = v70;
      v72 = *(a1 + 288);
      if (v70 > 0)
      {
        v73 = 0;
        v74 = *TypeRow;
        do
        {
          v75 = v72[v73];
          if (v75 != 0.0)
          {
            v76 = *(a1 + 14272);
            v77 = v75 + *(v76 + 8 * v73);
            *(v76 + 8 * v73) = v77;
            v78 = v73 >> 3;
            if (v77 != 0.0 && ((v79 = *(v74 + *(*(a1 + 368) + 4 * v73)), (v79 - 3) < 2) || (v77 < -v54 ? (v80 = v79 == 2) : (v80 = 0), v80 || (v77 > v54 ? (v81 = v79 == 1) : (v81 = 0), v81))))
            {
              v82 = v77 * v77 / *(EdgeSquaredNorms + 8 * v73);
              *(*(a1 + 10632) + (v78 & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
              *(*(a1 + 10600) + 8 * v73) = v82;
            }

            else
            {
              *(*(a1 + 10632) + (v78 & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v73);
            }
          }

          ++v73;
        }

        while (v70 != v73);
        v72 = *(a1 + 288);
      }

      v89 = 0;
      v83 = v70 << 32;
      v84 = (*(a1 + 296) - v72) >> 3;
      if (v71 <= v84)
      {
        if (v71 < v84)
        {
          *(a1 + 296) = &v72[v71];
        }
      }

      else
      {
        std::vector<double>::__append(a1 + 288, v71 - v84, &v89);
        v72 = *(a1 + 288);
      }

      bzero(v72, v83 >> 29);
    }

    else
    {
      v57 = v55 - v56;
      if (v57 >= 1)
      {
        v58 = *(a1 + 288);
        do
        {
          v60 = *v56;
          v61 = *(a1 + 14272);
          v62 = 8 * *v56;
          v63 = *(v58 + v62) + *(v61 + v62);
          *(v61 + v62) = v63;
          if (v63 == 0.0 || (v64 = *(*TypeRow + *(*(a1 + 368) + 4 * v60)), (v64 - 3) >= 2) && (v64 == 2 ? (v65 = v63 < -v54) : (v65 = 0), !v65 && (v64 == 1 ? (v66 = v63 <= v54) : (v66 = 1), v66)))
          {
            *(*(a1 + 10632) + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v60);
          }

          else
          {
            v67 = *(EdgeSquaredNorms + 8 * v60);
            *(*(a1 + 10632) + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
            v68 = v63 * v63 / v67;
            *(*(a1 + 10600) + 8 * v60) = v68;
            if (*(a1 + 10656) <= v68)
            {
              operations_research::glop::DynamicMaximum<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::UpdateTopK(a1 + 10552, v60, v68);
            }
          }

          v59 = *v56++;
          *(*(a1 + 288) + 8 * v59) = 0;
          --v57;
        }

        while (v57);
      }
    }

    *(a1 + 328) = *(a1 + 320);
  }
}

void operations_research::glop::RevisedSimplex::DualPhaseIUpdatePriceOnReducedCostChange<absl::lts_20240722::Span<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> const>>(uint64_t a1, int **a2)
{
  v79 = *(operations_research::glop::VariablesInfo::GetCanDecreaseBitRow((a1 + 8520)) + 8);
  v4 = *(operations_research::glop::VariablesInfo::GetCanIncreaseBitRow((a1 + 8520)) + 8);
  ReducedCosts = operations_research::glop::ReducedCosts::GetReducedCosts((a1 + 12264));
  v6 = a2[1];
  if ((v6 & 0x3FFFFFFFFFFFFFFFLL) == 0)
  {
    return;
  }

  v7 = ReducedCosts;
  v8 = 0;
  v9 = *(a1 + 13136);
  v10 = *(a1 + 256);
  v11 = *a2;
  v12 = &v11[v6];
  do
  {
    while (1)
    {
      v14 = *v11;
      v15 = 8 * v14;
      v16 = *(v7 + v15);
      if (((1 << v14) & *(v4 + 8 * (v14 >> 6))) != 0 && v16 < -v9)
      {
        break;
      }

      if (v16 <= v9 || (*(v79 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = -1.0;
      }

      v13 = *(v10 + 8 * v14);
      if (v19 == v13)
      {
        goto LABEL_5;
      }

      v20 = (v10 + v15);
      if (v19 == 0.0)
      {
        v21 = -1;
LABEL_22:
        *(a1 + 280) += v21;
        goto LABEL_23;
      }

LABEL_20:
      if (v13 == 0.0)
      {
        v21 = 1;
        goto LABEL_22;
      }

LABEL_23:
      if ((v8 & 1) == 0)
      {
        v22 = *(a1 + 4);
        v80 = 0;
        v23 = *(a1 + 288);
        v24 = (*(a1 + 296) - v23) >> 3;
        if (v22 <= v24)
        {
          if (v22 < v24)
          {
            *(a1 + 296) = v23 + 8 * v22;
          }
        }

        else
        {
          std::vector<double>::__append(a1 + 288, v22 - v24, &v80);
        }

        operations_research::glop::ScatteredVector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::ScatteredRowEntry>>::ClearSparseMask((a1 + 288));
        *(a1 + 328) = *(a1 + 320);
        v13 = *v20;
      }

      v78 = v20;
      v25 = *(a1 + 72);
      v26 = ((v14 << 32) + 0x100000000) >> 29;
      v27 = *(a1 + 48);
      v28 = *(a1 + 24);
      *(a1 + 14376) += 10 * (*(v25 + v26) - *(v25 + 8 * v14));
      v29 = v19 - v13;
      if (v19 - v13 != 0.0)
      {
        v30 = *(v25 + 8 * v14);
        v31 = *(v25 + v26);
        v32 = v31 - v30;
        if (v31 > v30)
        {
          v33 = (v28 + 8 * v30);
          v34 = (v27 + 4 * v30);
          do
          {
            v35 = *v34++;
            v36 = *v33;
            LODWORD(v80) = v35;
            v37 = v29 * v36;
            *(*(a1 + 288) + 8 * v35) = v37 + *(*(a1 + 288) + 8 * v35);
            v38 = *(a1 + 344);
            v39 = v35 >> 6;
            v40 = 1 << v35;
            v41 = *(v38 + 8 * (v35 >> 6));
            v42 = v41 & (1 << v35);
            if (v37 != 0.0 && v42 == 0)
            {
              *(v38 + 8 * v39) = v41 | v40;
              std::vector<int>::push_back[abi:ne200100](a1 + 320, &v80);
              *(a1 + 312) = 0;
            }

            ++v33;
            --v32;
          }

          while (v32);
        }
      }

      *v78 = v19;
      ++v11;
      v8 = 1;
      if (v11 == v12)
      {
        goto LABEL_42;
      }
    }

    v13 = *(v10 + 8 * v14);
    if (v13 != 1.0)
    {
      v20 = (v10 + v15);
      v19 = 1.0;
      goto LABEL_20;
    }

LABEL_5:
    ++v11;
  }

  while (v11 != v12);
  if ((v8 & 1) == 0)
  {
    return;
  }

LABEL_42:
  v44 = *(a1 + 320);
  v45 = *(a1 + 328);
  if (v44 == v45 || ((*(a1 + 296) - *(a1 + 288)) >> 3) * 0.8 < ((v45 - v44) >> 2))
  {
    operations_research::glop::ScatteredVector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::ScatteredRowEntry>>::ClearSparseMask((a1 + 288));
    *(a1 + 328) = *(a1 + 320);
  }

  operations_research::glop::ScatteredVector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::ScatteredRowEntry>>::ClearSparseMask((a1 + 288));
  EdgeSquaredNorms = operations_research::glop::DualEdgeNorms::GetEdgeSquaredNorms((a1 + 9840));
  TypeRow = operations_research::glop::VariablesInfo::GetTypeRow((a1 + 8520));
  v48 = *(a1 + 15992);
  operations_research::glop::BasisFactorization::RightSolve((a1 + 3664), (a1 + 288));
  v50 = *(a1 + 320);
  v49 = *(a1 + 328);
  if (v50 == v49)
  {
    *(a1 + 10672) = *(a1 + 10664);
    *(a1 + 10656) = 0x7FF0000000000000;
    v64 = *(a1 + 4);
    v65 = v64;
    v66 = *(a1 + 288);
    if (v64 > 0)
    {
      v67 = 0;
      v68 = *TypeRow;
      do
      {
        v69 = v66[v67];
        if (v69 != 0.0)
        {
          v70 = *(a1 + 14272);
          v71 = v69 + *(v70 + 8 * v67);
          *(v70 + 8 * v67) = v71;
          if (v71 != 0.0 && ((v72 = *(v68 + *(*(a1 + 368) + 4 * v67)), (v72 - 3) < 2) || (v71 < -v48 ? (v73 = v72 == 2) : (v73 = 0), v73 || (v71 > v48 ? (v74 = v72 == 1) : (v74 = 0), v74))))
          {
            v75 = v71 * v71 / *(EdgeSquaredNorms + 8 * v67);
            *(*(a1 + 10632) + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
            *(*(a1 + 10600) + 8 * v67) = v75;
          }

          else
          {
            *(*(a1 + 10632) + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v67);
          }
        }

        ++v67;
      }

      while (v64 != v67);
      v66 = *(a1 + 288);
    }

    v80 = 0;
    v76 = v64 << 32;
    v77 = (*(a1 + 296) - v66) >> 3;
    if (v65 <= v77)
    {
      if (v65 < v77)
      {
        *(a1 + 296) = &v66[v65];
      }
    }

    else
    {
      std::vector<double>::__append(a1 + 288, v65 - v77, &v80);
      v66 = *(a1 + 288);
    }

    bzero(v66, v76 >> 29);
  }

  else
  {
    v51 = v49 - v50;
    if (v51 >= 1)
    {
      v52 = *(a1 + 288);
      do
      {
        v54 = *v50;
        v55 = *(a1 + 14272);
        v56 = 8 * *v50;
        v57 = *(v52 + v56) + *(v55 + v56);
        *(v55 + v56) = v57;
        v58 = v54 >> 3;
        if (v57 == 0.0 || (v59 = *(*TypeRow + *(*(a1 + 368) + 4 * v54)), (v59 - 3) >= 2) && (v59 == 2 ? (v60 = v57 < -v48) : (v60 = 0), !v60 && (v59 == 1 ? (v61 = v57 <= v48) : (v61 = 1), v61)))
        {
          *(*(a1 + 10632) + (v58 & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v54);
        }

        else
        {
          v62 = *(EdgeSquaredNorms + 8 * v54);
          *(*(a1 + 10632) + (v58 & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
          v63 = v57 * v57 / v62;
          *(*(a1 + 10600) + 8 * v54) = v63;
          if (*(a1 + 10656) <= v63)
          {
            operations_research::glop::DynamicMaximum<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::UpdateTopK(a1 + 10552, v54, v63);
          }
        }

        v53 = *v50++;
        *(*(a1 + 288) + 8 * v53) = 0;
        --v51;
      }

      while (v51);
    }
  }

  *(a1 + 328) = *(a1 + 320);
}

void operations_research::glop::RevisedSimplex::UpdateAndPivot(uint64_t a1@<X0>, int a2@<W1>, signed int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  if (*(a1 + 11600) == a3)
  {
    v10 = *(*(a1 + 11568) + 8 * a2);
  }

  else
  {
    operations_research::glop::UpdateRow::ComputeUnitRowLeftInverse(a1 + 11360, a3);
    UnitRowLeftInverse = operations_research::glop::UpdateRow::GetUnitRowLeftInverse((a1 + 11360));
    v10 = operations_research::glop::CompactSparseMatrix::ColumnScalarProduct((a1 + 16), a2, UnitRowLeftInverse);
  }

  v12 = *(*(a1 + 368) + 4 * a3);
  v13 = *(*(a1 + 8528) + 8 * v12);
  if (v13 == a5)
  {
    v14 = 2;
  }

  else
  {
    v14 = 3;
  }

  if (v13 == *(*(a1 + 8552) + 8 * v12))
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(*(a1 + 11096) + 8 * v12);
  if (v16 != a5)
  {
    operations_research::RatioDistribution::Add(a1 + 15264, v16 - a5);
    v12 = *(*(a1 + 368) + 4 * a3);
  }

  operations_research::glop::VariablesInfo::UpdateToNonBasicStatus(a1 + 8520, v12, v15);
  *(*(a1 + 368) + 4 * a3) = a2;
  operations_research::glop::VariablesInfo::UpdateToBasicStatus(a1 + 8520, a2);
  operations_research::glop::UpdateRow::Invalidate((a1 + 11360));
  v18 = *(*(a1 + 640) + 8 * a3);
  v19 = vabdd_f64(v10, v18);
  v20 = fabs(v10);
  v21 = fabs(v18);
  if (v21 < v20)
  {
    v20 = v21;
  }

  v17.n128_f64[0] = *(a1 + 15952) * (v20 + 1.0);
  if (v19 <= v17.n128_f64[0])
  {
    operations_research::glop::BasisFactorization::Update((a1 + 3664), a2, a3, a4, v17);
    if (*a4)
    {
      return;
    }

LABEL_25:
    if (*(a4 + 31) < 0)
    {
      operator delete(*(a4 + 8));
      if (!operations_research::glop::BasisFactorization::IsRefactorized((a1 + 3664)))
      {
        goto LABEL_28;
      }
    }

    else if (!operations_research::glop::BasisFactorization::IsRefactorized((a1 + 3664)))
    {
LABEL_28:
      operations_research::glop::Status::Status(a4);
      return;
    }

    operations_research::glop::RevisedSimplex::PermuteBasis(a1);
    goto LABEL_28;
  }

  if (dword_2810C0340 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0338, dword_2810C0340))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v26, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 2581);
    v23 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v26, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v23, "Refactorizing: imprecise pivot ", 0x1FuLL);
    v27 = v18;
    v24 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v23, &v27);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v24, " diff = ", 8uLL);
    v27 = v19;
    absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v24, &v27);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v26);
  }

  if (*(a1 + 4576) <= 9)
  {
    if (*(a1 + 16056) * 1.5 <= 0.9)
    {
      v22 = *(a1 + 16056) * 1.5;
    }

    else
    {
      v22 = 0.9;
    }

    if (dword_2810C0358 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0350, dword_2810C0358))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v26, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 2588);
      v25 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v26, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v25, "Increasing LU pivot threshold ", 0x1EuLL);
      v27 = v22;
      absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v25, &v27);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v26);
    }

    *(a1 + 16056) = v22;
    *(a1 + 15920) |= 0x800000u;
    *(a1 + 4572) = *(a1 + 16028);
    *(a1 + 4568) = *(a1 + 16130);
    operations_research::glop::GlopParameters::CopyFrom((a1 + 3832), (a1 + 15904));
    operations_research::glop::GlopParameters::CopyFrom((a1 + 6264), (a1 + 15904));
    operations_research::glop::GlopParameters::CopyFrom((a1 + 8168), (a1 + 15904));
  }

  *(a1 + 440) = 2;
  operations_research::glop::BasisFactorization::ForceRefactorization((a1 + 3664), a4);
  if (!*a4)
  {
    goto LABEL_25;
  }
}

void sub_23CBD9FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBD9FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void operations_research::glop::RevisedSimplex::SetIntegralityScale(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 20536);
  v4 = *(a1 + 20544) - v3;
  if (a2 >= (v4 >> 3))
  {
    v10 = 0;
    v5 = a2 << 32;
    v6 = ((a2 << 32) + 0x100000000) >> 32;
    v7 = v4 >> 3;
    if (v6 <= v7)
    {
      if (v6 < v7)
      {
        *(a1 + 20544) = v3 + 8 * v6;
      }
    }

    else
    {
      v9 = a3;
      std::vector<double>::__append(a1 + 20536, v6 - v7, &v10);
      a3 = v9;
      v3 = *(a1 + 20536);
    }
  }

  else
  {
    v5 = a2 << 32;
  }

  *(v3 + (v5 >> 29)) = a3;
}

void operations_research::glop::RevisedSimplex::DisplayIterationInfo(uint64_t a1, int a2, int a3)
{
  v100 = *MEMORY[0x277D85DE8];
  if (**(a1 + 3656) != 1)
  {
    return;
  }

  v5 = a2 == 0;
  if (a2)
  {
    v6 = "Primal ";
  }

  else
  {
    v6 = "Dual ";
  }

  if (v5)
  {
    v7 = 5;
  }

  else
  {
    v7 = 7;
  }

  v81 = v7;
  memcpy(&__dst, v6, v7);
  *(&__dst | v7) = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  if ((a3 - 1) < 6)
  {
    MEMORY[0x23EED9020](&v76, off_278BC3D88[a3 - 1]);
  }

  v9 = *(a1 + 20452);
  if (v9 == 2)
  {
    v25 = *(a1 + 3656);
    if (*v25 != 1)
    {
      goto LABEL_90;
    }

    if ((v81 & 0x80u) == 0)
    {
      *&v26 = COERCE_DOUBLE(&__dst);
    }

    else
    {
      v26 = __dst;
    }

    if ((v81 & 0x80u) == 0)
    {
      v27 = v81;
    }

    else
    {
      v27 = v80;
    }

    v28 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(a1 + 14344) - (*(a1 + 14352) + *(a1 + 14360)), v84, v8);
    *&v83 = v84;
    *(&v83 + 1) = v28 - v84;
    StatusRow = operations_research::glop::VariablesInfo::GetStatusRow((a1 + 8520));
    v31 = *(a1 + 8);
    if (v31 < 1)
    {
      v34 = 0;
    }

    else
    {
      v32 = StatusRow;
      v33 = 0;
      v34 = 0;
      v35 = *v32;
      do
      {
        if (*(v35 + v33) == 4 && *(*(a1 + 11096) + 8 * v33) != 0.0)
        {
          v34 = (v34 + 1);
        }

        ++v33;
      }

      while (v31 != v33);
    }

    v57 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v34, &__p[0].__r_.__value_.__s.__data_[16], v30);
    __p[0].__r_.__value_.__r.__words[0] = &__p[0].__r_.__value_.__r.__words[2];
    __p[0].__r_.__value_.__l.__size_ = v57 - &__p[0].__r_.__value_.__r.__words[2];
    v85 = *&v26;
    v86 = v27;
    v87 = "push phase, iteration # ";
    v88 = 24;
    v89 = v83;
    v90 = ", remaining_variables_to_push = ";
    v91 = 32;
    v92 = &__p[0].__r_.__value_.__r.__words[2];
    v93 = v57 - &__p[0].__r_.__value_.__r.__words[2];
    v58 = HIBYTE(v78);
    v59 = &v76;
    if (v78 < 0)
    {
      v59 = v76;
      v58 = v77;
    }

    v94 = v59;
    v95 = v58;
    absl::lts_20240722::strings_internal::CatPieces(&v85, 6, &v75);
    operations_research::SolverLogger::LogInfo(v25, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 3721, &v75);
  }

  else
  {
    if (v9 != 1)
    {
      if (v9)
      {
        goto LABEL_90;
      }

      v10 = *(a1 + 14344);
      memset(__p, 0, 24);
      if (*(a1 + 15932) == 1)
      {
        if (*(a1 + 16193) == 1)
        {
          operations_research::glop::ReducedCosts::ComputeSumOfDualInfeasibilities((a1 + 12264));
          v12 = v11;
        }

        else
        {
          v46 = *(a1 + 216);
          v47 = *(a1 + 224) - v46;
          if ((v47 >> 3) < 1)
          {
            v56 = 0.0;
          }

          else
          {
            v48 = *(a1 + 11096);
            v49 = (v47 >> 3) & 0x7FFFFFFF;
            v50 = 0.0;
            v51 = 0.0;
            do
            {
              v52 = *v46++;
              v53 = v52;
              v54 = *v48++;
              v55 = v51 + v53 * v54;
              v56 = v50 + v55;
              v51 = v55 + v50 - (v50 + v55);
              v50 = v56;
              --v49;
            }

            while (v49);
          }

          v12 = -v56;
        }

        MEMORY[0x23EED9020](__p, "sum_dual_infeasibilities");
      }

      else
      {
        v12 = operations_research::glop::VariableValues::ComputeSumOfPrimalInfeasibilities((a1 + 11032));
        MEMORY[0x23EED9020](__p, "sum_primal_infeasibilities");
      }

      v61 = *(a1 + 3656);
      if (*v61 == 1)
      {
        if ((v81 & 0x80u) == 0)
        {
          *&v62 = COERCE_DOUBLE(&__dst);
        }

        else
        {
          v62 = __dst;
        }

        if ((v81 & 0x80u) == 0)
        {
          v63 = v81;
        }

        else
        {
          v63 = v80;
        }

        v64 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v10, v84, v36);
        *&v83 = v84;
        *(&v83 + 1) = v64 - v84;
        v65 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
        v66 = *&__p[0].__r_.__value_.__l.__data_;
        v85 = v12;
        v86 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
        absl::lts_20240722::str_format_internal::FormatPack("%.15E", 5, &v85, 1uLL, v73);
        v67 = __p;
        v85 = *&v62;
        v86 = v63;
        if ((v65 & 0x80u) != 0)
        {
          v67 = v66;
        }

        v87 = "feasibility phase, iteration # ";
        v88 = 31;
        if ((v65 & 0x80u) == 0)
        {
          v68 = v65;
        }

        else
        {
          v68 = *(&v66 + 1);
        }

        v89 = v83;
        v90 = ", ";
        v91 = 2;
        v92 = v67;
        v93 = v68;
        v94 = " = ";
        v95 = 3;
        v69 = v74;
        if ((v74 & 0x80u) == 0)
        {
          v70 = v73;
        }

        else
        {
          v70 = v73[0];
        }

        if ((v74 & 0x80u) != 0)
        {
          v69 = v73[1];
        }

        v96 = v70;
        v97 = v69;
        v71 = HIBYTE(v78);
        v72 = &v76;
        if (v78 < 0)
        {
          v72 = v76;
          v71 = v77;
        }

        v98 = v72;
        v99 = v71;
        absl::lts_20240722::strings_internal::CatPieces(&v85, 8, &v75);
        operations_research::SolverLogger::LogInfo(v61, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 3701, &v75);
        if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v75.__r_.__value_.__l.__data_);
        }

        if (v74 < 0)
        {
          operator delete(v73[0]);
        }
      }

      if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_90;
      }

      v60 = __p[0].__r_.__value_.__r.__words[0];
      goto LABEL_89;
    }

    v13 = *(a1 + 216);
    v14 = *(a1 + 224) - v13;
    if ((v14 >> 3) < 1)
    {
      v23 = 0.0;
      v24 = *(a1 + 3656);
      if (*v24 != 1)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v15 = *(a1 + 11096);
      v16 = (v14 >> 3) & 0x7FFFFFFF;
      v17 = 0.0;
      v18 = 0.0;
      do
      {
        v19 = *v13++;
        v20 = v19;
        v21 = *v15++;
        v22 = v18 + v20 * v21;
        v23 = v17 + v22;
        v18 = v22 + v17 - (v17 + v22);
        v17 = v23;
        --v16;
      }

      while (v16);
      v24 = *(a1 + 3656);
      if (*v24 != 1)
      {
        goto LABEL_90;
      }
    }

    v38 = *(a1 + 240);
    v37 = *(a1 + 248);
    if ((v81 & 0x80u) == 0)
    {
      *&v39 = COERCE_DOUBLE(&__dst);
    }

    else
    {
      v39 = __dst;
    }

    if ((v81 & 0x80u) == 0)
    {
      v40 = v81;
    }

    else
    {
      v40 = v80;
    }

    v41 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(a1 + 14344) - *(a1 + 14352), v84, v8);
    *&v83 = v84;
    *(&v83 + 1) = v41 - v84;
    v85 = v37 * (v23 + v38);
    v86 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
    absl::lts_20240722::str_format_internal::FormatPack("%.15E", 5, &v85, 1uLL, &v75);
    size = HIBYTE(v75.__r_.__value_.__r.__words[2]);
    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &v75;
    }

    else
    {
      v43 = v75.__r_.__value_.__r.__words[0];
    }

    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v75.__r_.__value_.__l.__size_;
    }

    v85 = *&v39;
    v86 = v40;
    v87 = "optimization phase, iteration # ";
    v88 = 32;
    v89 = v83;
    v90 = ", objective = ";
    v91 = 14;
    v92 = v43;
    v93 = size;
    v44 = HIBYTE(v78);
    v45 = &v76;
    if (v78 < 0)
    {
      v45 = v76;
      v44 = v77;
    }

    v94 = v45;
    v95 = v44;
    absl::lts_20240722::strings_internal::CatPieces(&v85, 6, __p);
    operations_research::SolverLogger::LogInfo(v24, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 3713, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    v60 = v75.__r_.__value_.__r.__words[0];
LABEL_89:
    operator delete(v60);
  }

LABEL_90:
  if ((SHIBYTE(v78) & 0x80000000) == 0)
  {
    if ((v81 & 0x80000000) == 0)
    {
      return;
    }

LABEL_94:
    operator delete(__dst);
    return;
  }

  operator delete(v76);
  if (v81 < 0)
  {
    goto LABEL_94;
  }
}

void sub_23CBDA710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if (a14 < 0)
    {
LABEL_5:
      operator delete(a9);
      if ((a38 & 0x80000000) == 0)
      {
LABEL_9:
        if (a26 < 0)
        {
          operator delete(a21);
          if ((a32 & 0x80000000) == 0)
          {
            goto LABEL_11;
          }
        }

        else if ((a32 & 0x80000000) == 0)
        {
LABEL_11:
          _Unwind_Resume(a1);
        }

        operator delete(a27);
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a33);
      goto LABEL_9;
    }
  }

  else if (a14 < 0)
  {
    goto LABEL_5;
  }

  if ((a38 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void operations_research::glop::RevisedSimplex::MakeBoxedVariableDualFeasible<std::vector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>(double *a1, int **a2, char a3)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v5 = a1[1642];
  ReducedCosts = operations_research::glop::ReducedCosts::GetReducedCosts((a1 + 1533));
  StatusRow = operations_research::glop::VariablesInfo::GetStatusRow((a1 + 1065));
  v8 = *a2;
  v7 = a2[1];
  if (*a2 == v7)
  {
    return;
  }

  v9 = StatusRow;
  v20 = a3;
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = *v8;
    v13 = *(ReducedCosts + 8 * v12);
    v14 = *(*v9 + v12);
    if (v13 > v5 && v14 == 3)
    {
      operations_research::glop::VariablesInfo::UpdateToNonBasicStatus((a1 + 1065), v12, 2);
      v17 = v11;
      v18 = v11 >> 2;
      if ((v18 + 1) >> 62)
      {
        goto LABEL_30;
      }

      if (v18 != -1)
      {
        if (!((v18 + 1) >> 62))
        {
          operator new();
        }

LABEL_31:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v19 = -4;
      goto LABEL_24;
    }

    if (v13 < -v5 && v14 == 2)
    {
      operations_research::glop::VariablesInfo::UpdateToNonBasicStatus((a1 + 1065), v12, 3);
      v17 = v11;
      if (((v11 >> 2) + 1) >> 62)
      {
LABEL_30:
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v11 >> 2 != -1)
      {
        if (!(((v11 >> 2) + 1) >> 62))
        {
          operator new();
        }

        goto LABEL_31;
      }

      v19 = 4 * (v11 >> 2);
LABEL_24:
      *v19 = v12;
      v11 = v19 + 4;
      memcpy(0, 0, v17);
      v23 = 0;
      v25 = 0;
      v10 = 0;
      v24 = v11;
    }

    ++v8;
  }

  while (v8 != v7);
  if (v11)
  {
    operations_research::IntegerDistribution::Add((a1 + 1878), v11 >> 2);
    operations_research::glop::VariableValues::UpdateGivenNonBasicVariables((a1 + 1379), &v23, v20);
    v10 = v23;
  }

  if (v10)
  {
    v24 = v10;
    operator delete(v10);
  }
}

void sub_23CBDAAA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::glop::RevisedSimplex::StatString(std::string *__return_ptr a1@<X8>, operations_research::glop::RevisedSimplex *this@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  operations_research::StatsGroup::StatString(&__p, (this + 14424));
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

  std::string::append(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operations_research::StatsGroup::StatString(&__p, (this + 15184));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v6, v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operations_research::StatsGroup::StatString(&__p, (this + 13544));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v8, v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operations_research::StatsGroup::StatString(&__p, (this + 10688));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &__p;
  }

  else
  {
    v10 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v10, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operations_research::StatsGroup::StatString(&__p, (this + 12656));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &__p;
  }

  else
  {
    v12 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v12, v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operations_research::StatsGroup::StatString(&__p, (this + 11120));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v14, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operations_research::StatsGroup::StatString(&__p, (this + 9240));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &__p;
  }

  else
  {
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v16, v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operations_research::StatsGroup::StatString(&__p, (this + 9840));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v18, v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operations_research::StatsGroup::StatString(&__p, (this + 11944));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v20, v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operations_research::glop::BasisFactorization::StatString(&__p, (this + 3664));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &__p;
  }

  else
  {
    v22 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v22, v23);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operations_research::StatsGroup::StatString(&__p, (this + 15824));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &__p;
  }

  else
  {
    v24 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v24, v25);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_23CBDAE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((*(v15 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v15 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v15);
  _Unwind_Resume(exception_object);
}

void sub_23CBDAF0C()
{
  if (*(v0 + 23) < 0)
  {
    JUMPOUT(0x23CBDAEFCLL);
  }

  JUMPOUT(0x23CBDAEE4);
}

void operations_research::glop::BasisFactorization::StatString(std::string *__return_ptr a1@<X8>, operations_research::glop::BasisFactorization *this@<X0>)
{
  operations_research::StatsGroup::StatString(&v8, (this + 8));
  operations_research::glop::LuFactorization::StatString(&__p, (this + 952));
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

  v6 = std::string::append(&v8, p_p, size);
  *a1 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_11:
    operator delete(v8.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_11;
  }
}

void sub_23CBDAFE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void operations_research::glop::RevisedSimplex::SimpleVariableInfo(void *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v25[14] = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = *(*operations_research::glop::VariablesInfo::GetTypeRow((a1 + 1065)) + a2);
  v7 = *(*operations_research::glop::VariablesInfo::GetStatusRow((a1 + 1065)) + a2);
  v8 = a1[52];
  v9 = *(a1[1387] + 8 * a2);
  explicit = atomic_load_explicit(&qword_281A21928, memory_order_acquire);
  if (!explicit)
  {
    LOBYTE(explicit) = absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_simplex_display_numbers_as_fractions);
  }

  operations_research::glop::Stringify(v23, (explicit & 1), v9);
  operations_research::glop::GetVariableStatusString(v7, v21);
  operations_research::glop::GetVariableTypeString(v6, v19);
  v11 = *(a1[1066] + 8 * a2);
  v12 = atomic_load_explicit(&qword_281A21928, memory_order_acquire);
  if (!v12)
  {
    LOBYTE(v12) = absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_simplex_display_numbers_as_fractions);
  }

  operations_research::glop::Stringify(v17, (v12 & 1), v11);
  v13 = *(a1[1069] + 8 * a2);
  v14 = atomic_load_explicit(&qword_281A21928, memory_order_acquire);
  if (!v14)
  {
    LOBYTE(v14) = absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_simplex_display_numbers_as_fractions);
  }

  operations_research::glop::Stringify(__p, (v14 & 1), v13);
  v25[0] = a2;
  v25[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  v25[2] = v8 + 24 * a2;
  v25[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  v25[4] = v23;
  v25[5] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  v25[6] = v21;
  v25[7] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  v25[8] = v19;
  v25[9] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  v25[10] = v17;
  v25[11] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  v25[12] = __p;
  v25[13] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  absl::lts_20240722::str_format_internal::AppendPack(a3, "%d (%s) = %s, %s, %s, [%s,%s]", 29, v25, 7uLL);
  if (v16 < 0)
  {
    operator delete(__p[0]);
    if ((v18 & 0x80000000) == 0)
    {
LABEL_9:
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v17[0]);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_10:
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v19[0]);
  if ((v22 & 0x80000000) == 0)
  {
LABEL_11:
    if ((v24 & 0x80000000) == 0)
    {
      return;
    }

LABEL_17:
    operator delete(v23[0]);
    return;
  }

LABEL_16:
  operator delete(v21[0]);
  if (v24 < 0)
  {
    goto LABEL_17;
  }
}

void sub_23CBDB290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
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

      goto LABEL_10;
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

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a21);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a27);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v38 + 23) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a33);
  if ((*(v38 + 23) & 0x80000000) == 0)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  operator delete(*v38);
  _Unwind_Resume(exception_object);
}

void operations_research::glop::RevisedSimplex::DisplayInfoOnVariables(operations_research::glop::RevisedSimplex *this)
{
  if (dword_2810C0490 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810C0488, dword_2810C0490))
  {
    v2 = this;
    if (*(this + 2) >= 1)
    {
      v3 = 0;
      v4 = 0;
      v5 = &unk_2810C0000;
      do
      {
        v6 = v5[298];
        if (v6 < 3)
        {
          goto LABEL_7;
        }

        v22 = v4;
        v20 = *(*(v2 + 27) + 8 * v4);
        v21 = *(*(v2 + 1387) + 8 * v4);
        IsEnabled3 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810C04A0, v6);
        v4 = v22;
        v2 = this;
        if (!IsEnabled3)
        {
          goto LABEL_7;
        }

        v19 = v3;
        v8 = absl::lts_20240722::log_internal::LogMessage::LogMessage(v31, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 3781);
        v9 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v8, 3);
        operations_research::glop::RevisedSimplex::SimpleVariableInfo(this, v22, v29);
        v10 = absl::lts_20240722::log_internal::LogMessage::operator<<(v9, v29);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v10, ". ", 2uLL);
        v11 = absl::lts_20240722::log_internal::LogMessage::operator<<(v10, (*(this + 52) + v19));
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v11, " = ", 3uLL);
        explicit = atomic_load_explicit(&qword_281A21928, memory_order_acquire);
        if (!explicit)
        {
          LOBYTE(explicit) = absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_simplex_display_numbers_as_fractions);
        }

        operations_research::glop::Stringify(v27, (explicit & 1), v21);
        v13 = absl::lts_20240722::log_internal::LogMessage::operator<<(v11, v27);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v13, " * ", 3uLL);
        v14 = atomic_load_explicit(&qword_281A21928, memory_order_acquire);
        if (!v14)
        {
          LOBYTE(v14) = absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_simplex_display_numbers_as_fractions);
        }

        operations_research::glop::Stringify(v25, (v14 & 1), v20);
        v15 = absl::lts_20240722::log_internal::LogMessage::operator<<(v13, v25);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "(obj) = ", 8uLL);
        v16 = atomic_load_explicit(&qword_281A21928, memory_order_acquire);
        if (!v16)
        {
          LOBYTE(v16) = absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_simplex_display_numbers_as_fractions);
        }

        operations_research::glop::Stringify(__p, (v16 & 1), v21 * v20);
        absl::lts_20240722::log_internal::LogMessage::operator<<(v15, __p);
        if (v24 < 0)
        {
          operator delete(__p[0]);
          if ((v26 & 0x80000000) == 0)
          {
LABEL_18:
            if (v28 < 0)
            {
              goto LABEL_24;
            }

            goto LABEL_19;
          }
        }

        else if ((v26 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        operator delete(v25[0]);
        if (v28 < 0)
        {
LABEL_24:
          operator delete(v27[0]);
          if ((v30 & 0x80000000) == 0)
          {
            goto LABEL_21;
          }

LABEL_20:
          operator delete(v29[0]);
          goto LABEL_21;
        }

LABEL_19:
        if (v30 < 0)
        {
          goto LABEL_20;
        }

LABEL_21:
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v31);
        v2 = this;
        v4 = v22;
        v3 = v19;
        v5 = &unk_2810C0000;
LABEL_7:
        ++v4;
        v3 += 24;
      }

      while (v4 < *(v2 + 2));
    }

    if (dword_2810C04C0 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810C04B8, dword_2810C04C0))
    {
      v17 = absl::lts_20240722::log_internal::LogMessage::LogMessage(v29, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/revised_simplex.cc", 3786);
      v18 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v17, 3);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v18, "------", 6uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v29);
    }
  }
}

void sub_23CBDB690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a30 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v30 - 49) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((a30 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a25);
  if ((*(v30 - 49) & 0x80000000) == 0)
  {
LABEL_5:
    absl::lts_20240722::log_internal::LogMessage::~LogMessage((v30 - 48));
    _Unwind_Resume(a1);
  }

LABEL_4:
  operator delete(*(v30 - 72));
  goto LABEL_5;
}

void sub_23CBDB778()
{
  if ((*(v0 - 49) & 0x80000000) == 0)
  {
    JUMPOUT(0x23CBDB6ECLL);
  }

  JUMPOUT(0x23CBDB6E4);
}

operations_research::glop::RevisedSimplex::IterationStats *operations_research::glop::RevisedSimplex::IterationStats::IterationStats(operations_research::glop::RevisedSimplex::IterationStats *this)
{
  *(this + 23) = 14;
  strcpy(this, "IterationStats");
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 9) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 7) = this + 64;
  operations_research::DistributionStat::DistributionStat(this + 80, "total", 5uLL, this);
  *(this + 10) = &unk_284F44CD0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 20) = 0;
  operations_research::DistributionStat::DistributionStat(this + 184, "normal", 6uLL, this);
  *(this + 23) = &unk_284F44CD0;
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 33) = 0;
  operations_research::DistributionStat::DistributionStat(this + 288, "bound_flip", 0xAuLL, this);
  *(this + 36) = &unk_284F44CD0;
  *(this + 47) = 0;
  *(this + 48) = 0;
  *(this + 46) = 0;
  operations_research::DistributionStat::DistributionStat(this + 392, "refactorize", 0xBuLL, this);
  *(this + 49) = &unk_284F44CD0;
  *(this + 60) = 0;
  *(this + 61) = 0;
  *(this + 59) = 0;
  operations_research::DistributionStat::DistributionStat(this + 496, "degenerate", 0xAuLL, this);
  *(this + 62) = &unk_284F44CD0;
  *(this + 72) = 0;
  *(this + 74) = 0;
  *(this + 73) = 0;
  operations_research::DistributionStat::DistributionStat(this + 600, "num_dual_flips", 0xEuLL, this);
  *(this + 75) = &unk_284F44DF0;
  operations_research::DistributionStat::DistributionStat(this + 680, "degenerate_run_size", 0x13uLL, this);
  *(this + 85) = &unk_284F44DF0;
  return this;
}

void sub_23CBDB9B0(_Unwind_Exception *a1)
{
  *(v1 + 600) = &unk_284F3A5F8;
  if (*(v1 + 631) < 0)
  {
    operator delete(*(v1 + 608));
    *(v1 + 496) = &unk_284F3A5F8;
    if ((*(v1 + 527) & 0x80000000) == 0)
    {
LABEL_3:
      *(v1 + 392) = &unk_284F3A5F8;
      if ((*(v1 + 423) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    *(v1 + 496) = &unk_284F3A5F8;
    if ((*(v1 + 527) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(v1 + 504));
  *(v1 + 392) = &unk_284F3A5F8;
  if ((*(v1 + 423) & 0x80000000) == 0)
  {
LABEL_4:
    *(v1 + 288) = &unk_284F3A5F8;
    if ((*(v1 + 319) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(v1 + 400));
  *(v1 + 288) = &unk_284F3A5F8;
  if ((*(v1 + 319) & 0x80000000) == 0)
  {
LABEL_5:
    *(v1 + 184) = &unk_284F3A5F8;
    if ((*(v1 + 215) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v1 + 296));
  *(v1 + 184) = &unk_284F3A5F8;
  if ((*(v1 + 215) & 0x80000000) == 0)
  {
LABEL_6:
    *(v1 + 80) = &unk_284F3A5F8;
    if ((*(v1 + 111) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(*(v1 + 192));
  *(v1 + 80) = &unk_284F3A5F8;
  if ((*(v1 + 111) & 0x80000000) == 0)
  {
LABEL_7:
    operations_research::StatsGroup::~StatsGroup(v1);
    _Unwind_Resume(a1);
  }

LABEL_13:
  operator delete(*(v1 + 88));
  operations_research::StatsGroup::~StatsGroup(v1);
  _Unwind_Resume(a1);
}

operations_research::glop::RevisedSimplex::RatioTestStats *operations_research::glop::RevisedSimplex::RatioTestStats::RatioTestStats(operations_research::glop::RevisedSimplex::RatioTestStats *this)
{
  *(this + 23) = 14;
  strcpy(this, "RatioTestStats");
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 9) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 7) = this + 64;
  operations_research::DistributionStat::DistributionStat(this + 80, "bound_shift", 0xBuLL, this);
  *(this + 10) = &unk_284F44D90;
  operations_research::DistributionStat::DistributionStat(this + 160, "abs_used_pivot", 0xEuLL, this);
  *(this + 20) = &unk_284F44D90;
  operations_research::DistributionStat::DistributionStat(this + 240, "abs_tested_pivot", 0x10uLL, this);
  *(this + 30) = &unk_284F44D90;
  operations_research::DistributionStat::DistributionStat(this + 320, "abs_skipped_pivot", 0x11uLL, this);
  *(this + 40) = &unk_284F44D90;
  operations_research::DistributionStat::DistributionStat(this + 400, "direction_density", 0x11uLL, this);
  *(this + 50) = &unk_284F44D30;
  operations_research::DistributionStat::DistributionStat(this + 480, "leaving_choices", 0xFuLL, this);
  *(this + 60) = &unk_284F44DF0;
  operations_research::DistributionStat::DistributionStat(this + 560, "num_perfect_ties", 0x10uLL, this);
  *(this + 70) = &unk_284F44DF0;
  return this;
}

void sub_23CBDBE80(_Unwind_Exception *a1)
{
  *(v1 + 480) = &unk_284F3A5F8;
  if (*(v1 + 511) < 0)
  {
    operator delete(*(v1 + 488));
    *(v1 + 400) = &unk_284F3A5F8;
    if ((*(v1 + 431) & 0x80000000) == 0)
    {
LABEL_3:
      *(v1 + 320) = &unk_284F3A5F8;
      if ((*(v1 + 351) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    *(v1 + 400) = &unk_284F3A5F8;
    if ((*(v1 + 431) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(v1 + 408));
  *(v1 + 320) = &unk_284F3A5F8;
  if ((*(v1 + 351) & 0x80000000) == 0)
  {
LABEL_4:
    *(v1 + 240) = &unk_284F3A5F8;
    if ((*(v1 + 271) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(v1 + 328));
  *(v1 + 240) = &unk_284F3A5F8;
  if ((*(v1 + 271) & 0x80000000) == 0)
  {
LABEL_5:
    *(v1 + 160) = &unk_284F3A5F8;
    if ((*(v1 + 191) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v1 + 248));
  *(v1 + 160) = &unk_284F3A5F8;
  if ((*(v1 + 191) & 0x80000000) == 0)
  {
LABEL_6:
    *(v1 + 80) = &unk_284F3A5F8;
    if ((*(v1 + 111) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(*(v1 + 168));
  *(v1 + 80) = &unk_284F3A5F8;
  if ((*(v1 + 111) & 0x80000000) == 0)
  {
LABEL_7:
    operations_research::StatsGroup::~StatsGroup(v1);
    _Unwind_Resume(a1);
  }

LABEL_13:
  operator delete(*(v1 + 88));
  operations_research::StatsGroup::~StatsGroup(v1);
  _Unwind_Resume(a1);
}

void std::vector<operations_research::glop::SparseColumn const*>::__append(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if ((a2 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v18 = &v5[a2];
      v19 = *a3;
      v20 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v20 < 3)
      {
        goto LABEL_36;
      }

      v21 = v20 + 1;
      v22 = &v5[v21 & 0x3FFFFFFFFFFFFFFCLL];
      v23 = vdupq_n_s64(v19);
      v24 = (v5 + 2);
      v25 = v21 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v24[-1] = v23;
        *v24 = v23;
        v24 += 2;
        v25 -= 4;
      }

      while (v25);
      v5 = v22;
      if (v21 != (v21 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_36:
        do
        {
          *v5++ = v19;
        }

        while (v5 != v18);
      }

      v5 = v18;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = (v5 - *a1) >> 3;
    v7 = v6 + a2;
    if ((v6 + a2) >> 61)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
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
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v26 = 8 * v6;
    if ((a2 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v26 + 8 * a2;
      v11 = *a3;
      v12 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      v13 = (8 * v6);
      if (v12 < 3)
      {
        goto LABEL_37;
      }

      v14 = v12 + 1;
      v13 = (v26 + 8 * (v14 & 0x3FFFFFFFFFFFFFFCLL));
      v15 = vdupq_n_s64(v11);
      v16 = (v26 + 16);
      v17 = v14 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v16[-1] = v15;
        *v16 = v15;
        v16 += 2;
        v17 -= 4;
      }

      while (v17);
      if (v14 != (v14 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_37:
        do
        {
          *v13++ = v11;
        }

        while (v13 != v10);
      }
    }

    else
    {
      v10 = 8 * v6;
    }

    v27 = *a1;
    v28 = *(a1 + 8) - *a1;
    v29 = v26 - v28;
    memcpy((v26 - v28), *a1, v28);
    *a1 = v29;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v27)
    {

      operator delete(v27);
    }
  }
}

void operations_research::glop::LuFactorization::StatString(std::string *__return_ptr a1@<X8>, operations_research::glop::LuFactorization *this@<X0>)
{
  operations_research::StatsGroup::StatString(&v8, (this + 1408));
  operations_research::StatsGroup::StatString(&__p, (this + 1976));
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

  v6 = std::string::append(&v8, p_p, size);
  *a1 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_11:
    operator delete(v8.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_11;
  }
}

void sub_23CBDC408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<operations_research::glop::RevisedSimplex::Solve(operations_research::glop::LinearProgram const&,operations_research::TimeLimit *)::$_0,std::allocator<operations_research::glop::RevisedSimplex::Solve(operations_research::glop::LinearProgram const&,operations_research::TimeLimit *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F41AB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double std::__function::__func<operations_research::glop::RevisedSimplex::Solve(operations_research::glop::LinearProgram const&,operations_research::TimeLimit *)::$_0,std::allocator<operations_research::glop::RevisedSimplex::Solve(operations_research::glop::LinearProgram const&,operations_research::TimeLimit *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(v1 + 14376) * 0.000000002;
  result = *(v1 + 13168) + operations_research::glop::BasisFactorization::DeterministicTime((v1 + 3664)) + v3 + *(v1 + 11608) * 0.000000002 + *(v1 + 13752) * 0.000000002 + *(v1 + 9808) * 0.000000002;
  *(v2 + 112) = *(v2 + 112) + result - *(v1 + 14416);
  *(v1 + 14416) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::glop::RevisedSimplex::Solve(operations_research::glop::LinearProgram const&,operations_research::TimeLimit *)::$_0,std::allocator<operations_research::glop::RevisedSimplex::Solve(operations_research::glop::LinearProgram const&,operations_research::TimeLimit *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research4glop14RevisedSimplex5SolveERKNS0_13LinearProgramEPNS_9TimeLimitEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research4glop14RevisedSimplex5SolveERKNS0_13LinearProgramEPNS_9TimeLimitEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research4glop14RevisedSimplex5SolveERKNS0_13LinearProgramEPNS_9TimeLimitEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research4glop14RevisedSimplex5SolveERKNS0_13LinearProgramEPNS_9TimeLimitEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      v9 = v8;
      v10 = a4;
      operator delete(v9);
      a4 = v10;
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v11 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v11 = a4;
      }

      v12 = v7 >= 0x7FFFFFFFFFFFFFF8;
      v13 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v11;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (a4 > (v14 - v8) >> 3)
  {
    v16 = &__src[v15];
    if (v14 == v8)
    {
      v17 = result[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = memmove(*result, __src, v15);
      v17 = v6[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    v21 = &a3[v8] - &__src[v14] - 8;
    if (v21 >= 0x38)
    {
      v18 = v17;
      if (v8 + v17 - &__src[v14] >= 0x20)
      {
        v22 = (v21 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v16 += v23;
        v18 = (v17 + v23);
        v24 = (v17 + 16);
        v25 = &__src[v14 - v8 + 16];
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v25;
          *(v24 - 1) = *(v25 - 1);
          *v24 = v27;
          v24 += 2;
          v25 += 32;
          v26 -= 4;
        }

        while (v26);
        if (v22 == (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v28 = *v16;
      v16 += 8;
      *v18 = v28;
      v18 += 8;
    }

    while (v16 != a3);
LABEL_26:
    v20 = v18;
    goto LABEL_27;
  }

  v19 = a3 - __src;
  if (v19)
  {
    result = memmove(*result, __src, v19);
  }

  v20 = v8 + v19;
LABEL_27:
  v6[1] = v20;
  return result;
}

void std::vector<std::string>::__append(std::vector<std::string> *this, std::vector<std::string>::size_type __n, std::vector<std::string>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    v11 = __n;
    if (24 * __n)
    {
      v12 = &end[v11];
      do
      {
        if (SHIBYTE(__x->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(end, __x->__r_.__value_.__l.__data_, __x->__r_.__value_.__l.__size_);
        }

        else
        {
          v13 = *&__x->__r_.__value_.__l.__data_;
          end->__r_.__value_.__r.__words[2] = __x->__r_.__value_.__r.__words[2];
          *&end->__r_.__value_.__l.__data_ = v13;
        }

        ++end;
        --v11;
      }

      while (v11 * 24);
      end = v12;
    }

    this->__end_ = end;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v8 = v7 + __n;
    if (v7 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = (24 * v7);
    v25 = v14;
    v15 = __n;
    if (24 * __n)
    {
      v16 = &v14[v15];
      v17 = SHIBYTE(__x->__r_.__value_.__r.__words[2]);
      if (v17 < 0)
      {
        v20 = v15 * 24 - 24;
        if ((v17 & 0x80) != 0)
        {
          goto LABEL_28;
        }

LABEL_27:
        v21 = *&__x->__r_.__value_.__l.__data_;
        v14->__r_.__value_.__r.__words[2] = __x->__r_.__value_.__r.__words[2];
        *&v14->__r_.__value_.__l.__data_ = v21;
        while (v20)
        {
          ++v14;
          v20 -= 24;
          if ((*(&__x->__r_.__value_.__s + 23) & 0x80) == 0)
          {
            goto LABEL_27;
          }

LABEL_28:
          std::string::__init_copy_ctor_external(v14, __x->__r_.__value_.__l.__data_, __x->__r_.__value_.__l.__size_);
        }

        v14 = v25;
      }

      else
      {
        v18 = v14;
        do
        {
          v19 = *&__x->__r_.__value_.__l.__data_;
          v18->__r_.__value_.__r.__words[2] = __x->__r_.__value_.__r.__words[2];
          *&v18->__r_.__value_.__l.__data_ = v19;
          ++v18;
          --v15;
        }

        while (v15 * 24);
      }
    }

    else
    {
      v16 = v14;
    }

    v22 = this->__end_ - this->__begin_;
    v23 = (v14 - v22);
    memcpy(v14 - v22, this->__begin_, v22);
    begin = this->__begin_;
    this->__begin_ = v23;
    this->__end_ = v16;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {
      operator delete(begin);
    }
  }
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::glop::anonymous namespace::ColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(int *result, int *a2, uint64_t **a3, uint64_t a4, char a5)
{
LABEL_1:
  v10 = result;
  while (1)
  {
    result = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        v93 = *(a2 - 1);
        v94 = *v10;
        if (*(**a3 + 8 * v93) < *(**a3 + 8 * *v10))
        {
          *v10 = v93;
          *(a2 - 1) = v94;
        }

        return;
      }

      goto LABEL_9;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v101 = **a3;

      return;
    }

    if (v11 == 5)
    {
      v85 = *(a2 - 1);
      v86 = v10[3];
      v87 = **a3;
      if (*(v87 + 8 * v85) >= *(v87 + 8 * v86))
      {
        return;
      }

      v10[3] = v85;
      *(a2 - 1) = v86;
      v89 = v10[2];
      v88 = v10[3];
      v90 = *(v87 + 8 * v88);
      if (v90 >= *(v87 + 8 * v89))
      {
        return;
      }

      v10[2] = v88;
      v10[3] = v89;
      v91 = v10[1];
      if (v90 >= *(v87 + 8 * v91))
      {
        return;
      }

      v10[1] = v88;
      v10[2] = v91;
      v92 = *v10;
      goto LABEL_159;
    }

LABEL_9:
    if (v11 <= 23)
    {
      v102 = *a3;
      if (a5)
      {
        if (v10 != a2)
        {
          v103 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v104 = 0;
            v105 = *v102;
            v106 = v10;
            do
            {
              v109 = *v106;
              v108 = v106[1];
              v106 = v103;
              v110 = *(v105 + 8 * v108);
              if (v110 < *(v105 + 8 * v109))
              {
                v111 = v104;
                do
                {
                  *(v10 + v111 + 4) = v109;
                  if (!v111)
                  {
                    v107 = v10;
                    goto LABEL_122;
                  }

                  v109 = *(v10 + v111 - 4);
                  v111 -= 4;
                }

                while (v110 < *(v105 + 8 * v109));
                v107 = (v10 + v111 + 4);
LABEL_122:
                *v107 = v108;
              }

              v103 = v106 + 1;
              v104 += 4;
            }

            while (v106 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v146 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v147 = *v102;
          do
          {
            v149 = *result;
            v148 = result[1];
            result = v146;
            v150 = *(v147 + 8 * v148);
            if (v150 < *(v147 + 8 * v149))
            {
              do
              {
                *v146 = v149;
                v149 = *(v146 - 2);
                --v146;
              }

              while (v150 < *(v147 + 8 * v149));
              *v146 = v148;
            }

            v146 = result + 1;
          }

          while (result + 1 != a2);
        }
      }

      return;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v112 = (v11 - 2) >> 1;
        v113 = v112;
        do
        {
          v115 = 4 * v113;
          if (v112 >= (4 * v113) >> 2)
          {
            v116 = (v115 >> 1) | 1;
            v117 = &v10[v116];
            v118 = **a3;
            if ((v115 >> 1) + 2 < v11)
            {
              v119 = vshrq_n_s64(vshll_n_s32(*v117, 0x20uLL), 0x1DuLL);
              if (*(v118 + v119.i64[0]) < *(v118 + v119.i64[1]))
              {
                v117 = (v117 + 4);
                v116 = (v115 >> 1) + 2;
              }
            }

            v120 = &v10[v115 / 4];
            v121 = v117->i32[0];
            v122 = v10[v113];
            v123 = *(v118 + 8 * v122);
            if (*(v118 + 8 * v117->i32[0]) >= v123)
            {
              do
              {
                v124 = v117;
                *v120 = v121;
                if (v112 < v116)
                {
                  break;
                }

                v125 = 2 * v116;
                v116 = (2 * v116) | 1;
                v117 = &v10[v116];
                v126 = v125 + 2;
                if (v126 < v11)
                {
                  v127 = vshrq_n_s64(vshll_n_s32(*v117, 0x20uLL), 0x1DuLL);
                  if (*(v118 + v127.i64[0]) < *(v118 + v127.i64[1]))
                  {
                    v117 = (v117 + 4);
                    v116 = v126;
                  }
                }

                v121 = v117->i32[0];
                v120 = v124;
              }

              while (*(v118 + 8 * v117->i32[0]) >= v123);
              v124->i32[0] = v122;
            }
          }

          v114 = v113-- <= 0;
        }

        while (!v114);
        do
        {
          v128 = 0;
          v129 = *v10;
          v130 = *a3;
          v131 = v10;
          do
          {
            v132 = v131;
            v133 = v131 + 4 * v128;
            v131 = (v133 + 4);
            v134 = 2 * v128;
            v128 = (2 * v128) | 1;
            v135 = v134 + 2;
            if (v135 < v11)
            {
              v136 = vshrq_n_s64(vshll_n_s32(*v131, 0x20uLL), 0x1DuLL);
              if (*(*v130 + v136.i64[0]) < *(*v130 + v136.i64[1]))
              {
                v131 = (v133 + 8);
                v128 = v135;
              }
            }

            v132->i32[0] = v131->i32[0];
          }

          while (v128 <= ((v11 - 2) >> 1));
          if (v131 == --a2)
          {
            v131->i32[0] = v129;
          }

          else
          {
            v131->i32[0] = *a2;
            *a2 = v129;
            v137 = (v131 - v10 + 4) >> 2;
            v114 = v137 < 2;
            v138 = v137 - 2;
            if (!v114)
            {
              v139 = v138 >> 1;
              v140 = &v10[v139];
              v141 = *v140;
              v142 = v131->i32[0];
              v143 = **a3;
              v144 = *(v143 + 8 * v131->i32[0]);
              if (*(v143 + 8 * *v140) < v144)
              {
                do
                {
                  v145 = v140;
                  v131->i32[0] = v141;
                  if (!v139)
                  {
                    break;
                  }

                  v139 = (v139 - 1) >> 1;
                  v140 = &v10[v139];
                  v141 = *v140;
                  v131 = v145;
                }

                while (*(v143 + 8 * *v140) < v144);
                v145->i32[0] = v142;
              }
            }
          }

          v114 = v11-- <= 2;
        }

        while (!v114);
      }

      return;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = **a3;
    v15 = *(a2 - 1);
    v16 = *(v14 + 8 * v15);
    if (v11 < 0x81)
    {
      v21 = *v10;
      v22 = *v13;
      v23 = *(v14 + 8 * *v10);
      v24 = *(v14 + 8 * *v13);
      if (v23 < v24)
      {
        if (v16 < v23)
        {
          *v13 = v15;
          goto LABEL_36;
        }

        *v13 = v21;
        *v10 = v22;
        v37 = *(a2 - 1);
        if (*(v14 + 8 * v37) < v24)
        {
          *v10 = v37;
LABEL_36:
          *(a2 - 1) = v22;
        }

LABEL_37:
        --a4;
        v27 = *v10;
        if ((a5 & 1) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_38;
      }

      if (v16 >= v23)
      {
        goto LABEL_37;
      }

      *v10 = v15;
      *(a2 - 1) = v21;
      v26 = *v13;
      if (*(v14 + 8 * *v10) >= *(v14 + 8 * *v13))
      {
        goto LABEL_37;
      }

      *v13 = *v10;
      *v10 = v26;
      --a4;
      v27 = v26;
      if ((a5 & 1) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_38;
    }

    v17 = *v12;
    v18 = *v10;
    v19 = *(v14 + 8 * *v12);
    v20 = *(v14 + 8 * *v10);
    if (v19 >= v20)
    {
      if (v16 < v19)
      {
        *v12 = v15;
        *(a2 - 1) = v17;
        v25 = *v10;
        if (*(v14 + 8 * *v12) < *(v14 + 8 * *v10))
        {
          *v10 = *v12;
          *v12 = v25;
        }
      }
    }

    else
    {
      if (v16 >= v19)
      {
        *v10 = v17;
        *v12 = v18;
        v28 = *(a2 - 1);
        if (*(v14 + 8 * v28) >= v20)
        {
          goto LABEL_28;
        }

        *v12 = v28;
      }

      else
      {
        *v10 = v15;
      }

      *(a2 - 1) = v18;
    }

LABEL_28:
    v29 = v12 - 1;
    v30 = *(v12 - 1);
    v31 = v10[1];
    v32 = *(v14 + 8 * v30);
    v33 = *(v14 + 8 * v31);
    v34 = *(a2 - 2);
    v35 = *(v14 + 8 * v34);
    if (v32 >= v33)
    {
      if (v35 < v32)
      {
        *v29 = v34;
        *(a2 - 2) = v30;
        v36 = v10[1];
        if (*(v14 + 8 * *v29) < *(v14 + 8 * v36))
        {
          v10[1] = *v29;
          *v29 = v36;
        }
      }
    }

    else
    {
      if (v35 >= v32)
      {
        v10[1] = v30;
        *v29 = v31;
        v39 = *(a2 - 2);
        if (*(v14 + 8 * v39) >= v33)
        {
          goto LABEL_42;
        }

        *v29 = v39;
      }

      else
      {
        v10[1] = v34;
      }

      *(a2 - 2) = v31;
    }

LABEL_42:
    v42 = v12[1];
    v40 = v12 + 1;
    v41 = v42;
    v43 = v10[2];
    v44 = *(v14 + 8 * v42);
    v45 = *(v14 + 8 * v43);
    v46 = *(a2 - 3);
    v47 = *(v14 + 8 * v46);
    if (v44 >= v45)
    {
      if (v47 < v44)
      {
        *v40 = v46;
        *(a2 - 3) = v41;
        v48 = v10[2];
        if (*(v14 + 8 * *v40) < *(v14 + 8 * v48))
        {
          v10[2] = *v40;
          *v40 = v48;
        }
      }

      goto LABEL_51;
    }

    if (v47 < v44)
    {
      v10[2] = v46;
LABEL_50:
      *(a2 - 3) = v43;
      goto LABEL_51;
    }

    v10[2] = v41;
    *v40 = v43;
    v49 = *(a2 - 3);
    if (*(v14 + 8 * v49) < v45)
    {
      *v40 = v49;
      goto LABEL_50;
    }

LABEL_51:
    v50 = *v13;
    v51 = *v29;
    v52 = *(v14 + 8 * *v13);
    v53 = *(v14 + 8 * *v29);
    v54 = *v40;
    v55 = *(v14 + 8 * *v40);
    if (v52 >= v53)
    {
      if (v55 >= v52)
      {
        goto LABEL_59;
      }

      *v13 = v54;
      *v40 = v50;
      v40 = v13;
      v50 = v51;
      if (v55 < v53)
      {
LABEL_58:
        *v29 = v54;
        *v40 = v51;
LABEL_59:
        v57 = *v10;
        *v10 = v50;
        *v13 = v57;
        --a4;
        v27 = *v10;
        if ((a5 & 1) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_38;
      }

      v75 = *v10;
      *v10 = v54;
      *v13 = v75;
      --a4;
      v27 = *v10;
      if (a5)
      {
        goto LABEL_38;
      }

LABEL_60:
      v38 = 8 * v27;
      v58 = *(v14 + v38);
      if (*(v14 + 8 * *(v10 - 1)) < v58)
      {
        goto LABEL_61;
      }

      if (v58 >= *(v14 + 8 * *(a2 - 1)))
      {
        v77 = (v10 + 1);
        do
        {
          v10 = v77;
          if (v77 >= a2)
          {
            break;
          }

          v77 += 4;
        }

        while (v58 >= *(v14 + 8 * *v10));
      }

      else
      {
        do
        {
          v76 = v10[1];
          ++v10;
        }

        while (v58 >= *(v14 + 8 * v76));
      }

      v78 = a2;
      if (v10 < a2)
      {
        v78 = a2;
        do
        {
          v79 = *--v78;
        }

        while (v58 < *(v14 + 8 * v79));
      }

      if (v10 < v78)
      {
        v80 = *v10;
        v81 = *v78;
        do
        {
          *v10 = v81;
          *v78 = v80;
          do
          {
            v82 = v10[1];
            ++v10;
            v80 = v82;
          }

          while (v58 >= *(v14 + 8 * v82));
          do
          {
            v83 = *--v78;
            v81 = v83;
          }

          while (v58 < *(v14 + 8 * v83));
        }

        while (v10 < v78);
      }

      v84 = v10 - 1;
      if (v10 - 1 != result)
      {
        *result = *v84;
      }

      a5 = 0;
      *v84 = v27;
    }

    else
    {
      if (v55 < v52)
      {
        goto LABEL_58;
      }

      *v29 = v50;
      *v13 = v51;
      v29 = v13;
      v50 = v54;
      if (v55 < v53)
      {
        goto LABEL_58;
      }

      v56 = *v10;
      *v10 = v51;
      *v13 = v56;
      --a4;
      v27 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_38:
      v38 = 8 * v27;
LABEL_61:
      v59 = 0;
      v60 = **a3;
      v61 = *(v60 + v38);
      do
      {
        v62 = v10[++v59];
      }

      while (*(v60 + 8 * v62) < v61);
      v63 = &v10[v59];
      v64 = a2;
      if (v59 == 1)
      {
        v64 = a2;
        do
        {
          if (v63 >= v64)
          {
            break;
          }

          v66 = *--v64;
        }

        while (*(v60 + 8 * v66) >= v61);
      }

      else
      {
        do
        {
          v65 = *--v64;
        }

        while (*(v60 + 8 * v65) >= v61);
      }

      if (v63 >= v64)
      {
        v73 = v63 - 1;
        if (v63 - 1 == v10)
        {
          goto LABEL_79;
        }

LABEL_78:
        *v10 = *v73;
        goto LABEL_79;
      }

      v67 = *v64;
      v68 = v62;
      v69 = &v10[v59];
      v70 = v64;
      do
      {
        *v69 = v67;
        *v70 = v68;
        do
        {
          v71 = v69[1];
          ++v69;
          v68 = v71;
        }

        while (*(v60 + 8 * v71) < v61);
        do
        {
          v72 = *--v70;
          v67 = v72;
        }

        while (*(v60 + 8 * v72) >= v61);
      }

      while (v69 < v70);
      v73 = v69 - 1;
      if (v69 - 1 != v10)
      {
        goto LABEL_78;
      }

LABEL_79:
      *v73 = v27;
      if (v63 < v64)
      {
        goto LABEL_82;
      }

      v10 = v73 + 1;
      {
        a2 = v73;
        if (!v74)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v74)
      {
LABEL_82:
        a5 = 0;
        v10 = v73 + 1;
      }
    }
  }

  v87 = **a3;
  v95 = *v10;
  v96 = v10[1];
  v97 = *(v87 + 8 * v96);
  v98 = *(v87 + 8 * *v10);
  v99 = *(a2 - 1);
  v100 = *(v87 + 8 * v99);
  if (v97 >= v98)
  {
    if (v100 >= v97)
    {
      return;
    }

    v10[1] = v99;
    *(a2 - 1) = v96;
    v92 = *v10;
    v88 = v10[1];
    v90 = *(v87 + 8 * v88);
LABEL_159:
    if (v90 < *(v87 + 8 * v92))
    {
      *v10 = v88;
      v10[1] = v92;
    }

    return;
  }

  if (v100 >= v97)
  {
    *v10 = v96;
    v10[1] = v95;
    v151 = *(a2 - 1);
    if (*(v87 + 8 * v151) >= v98)
    {
      return;
    }

    v10[1] = v151;
  }

  else
  {
    *v10 = v99;
  }

  *(a2 - 1) = v95;
}

double std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::anonymous namespace::ColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,0>(int *a1, int *a2, int *a3, int *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *a1;
  v7 = *(a5 + 8 * *a2);
  v8 = 8 * *a1;
  v9 = *(a5 + v8);
  v10 = *a3;
  v11 = *(a5 + 8 * *a3);
  if (v7 >= v9)
  {
    if (v11 >= v7)
    {
      v13 = 8 * v10;
      v5 = *a3;
    }

    else
    {
      *a2 = v10;
      *a3 = v5;
      v12 = *a1;
      v13 = 8 * v5;
      if (*(a5 + 8 * *a2) < *(a5 + 8 * *a1))
      {
        *a1 = *a2;
        *a2 = v12;
        v5 = *a3;
        v14 = *a4;
        result = *(a5 + 8 * *a4);
        if (result >= *(a5 + 8 * *a3))
        {
          return result;
        }

        goto LABEL_14;
      }
    }

    v14 = *a4;
    result = *(a5 + 8 * *a4);
    if (result >= *(a5 + v13))
    {
      return result;
    }
  }

  else
  {
    if (v11 < v7)
    {
      *a1 = v10;
      goto LABEL_10;
    }

    *a1 = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(a5 + 8 * *a3) < v9)
    {
      *a2 = v5;
LABEL_10:
      *a3 = v6;
      v5 = v6;
      v14 = *a4;
      result = *(a5 + 8 * *a4);
      if (result >= *(a5 + v8))
      {
        return result;
      }

      goto LABEL_14;
    }

    v14 = *a4;
    result = *(a5 + 8 * *a4);
    if (result >= *(a5 + 8 * v5))
    {
      return result;
    }
  }

LABEL_14:
  *a3 = v14;
  *a4 = v5;
  v16 = *a2;
  result = *(a5 + 8 * *a3);
  if (result < *(a5 + 8 * *a2))
  {
    *a2 = *a3;
    *a3 = v16;
    v17 = *a1;
    result = *(a5 + 8 * *a2);
    if (result < *(a5 + 8 * *a1))
    {
      *a1 = *a2;
      *a2 = v17;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::anonymous namespace::ColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(int *a1, int *a2, uint64_t **a3)
{
  v3 = a2 - a1;
  if (v3 <= 2)
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v16 = *(a2 - 1);
      v17 = *a1;
      if (*(**a3 + 8 * v16) >= *(**a3 + 8 * *a1))
      {
        return 1;
      }

      *a1 = v16;
      goto LABEL_42;
    }

LABEL_18:
    v25 = a1 + 2;
    v24 = a1[2];
    v26 = a1[1];
    v27 = **a3;
    v28 = *a1;
    v29 = *(v27 + 8 * v26);
    v30 = *(v27 + 8 * *a1);
    v31 = *(v27 + 8 * v24);
    if (v29 >= v30)
    {
      if (v31 >= v29 || (a1[1] = v24, *v25 = v26, v32 = a1, v33 = a1 + 1, v31 >= v30))
      {
LABEL_29:
        v36 = a1 + 3;
        if (a1 + 3 == a2)
        {
          return 1;
        }

        v37 = 0;
        for (i = 12; ; i += 4)
        {
          v39 = *v36;
          v40 = *v25;
          v41 = *(v27 + 8 * *v36);
          if (v41 < *(v27 + 8 * *v25))
          {
            break;
          }

LABEL_32:
          v25 = v36++;
          if (v36 == a2)
          {
            return 1;
          }
        }

        v42 = i;
        do
        {
          *(a1 + v42) = v40;
          v43 = v42 - 4;
          if (v42 == 4)
          {
            *a1 = v39;
            if (++v37 != 8)
            {
              goto LABEL_32;
            }

            return v36 + 1 == a2;
          }

          v40 = *(a1 + v42 - 8);
          v42 -= 4;
        }

        while (v41 < *(v27 + 8 * v40));
        *(a1 + v43) = v39;
        if (++v37 != 8)
        {
          goto LABEL_32;
        }

        return v36 + 1 == a2;
      }
    }

    else
    {
      v32 = a1;
      v33 = a1 + 2;
      if (v31 >= v29)
      {
        *a1 = v26;
        a1[1] = v28;
        v32 = a1 + 1;
        v33 = a1 + 2;
        if (v31 >= v30)
        {
          goto LABEL_29;
        }
      }
    }

    *v32 = v24;
    *v33 = v28;
    goto LABEL_29;
  }

  switch(v3)
  {
    case 3:
      v18 = **a3;
      v17 = *a1;
      v19 = a1[1];
      v20 = *(v18 + 8 * v19);
      v21 = *(v18 + 8 * *a1);
      v22 = *(a2 - 1);
      v23 = *(v18 + 8 * v22);
      if (v20 < v21)
      {
        if (v23 >= v20)
        {
          *a1 = v19;
          a1[1] = v17;
          v44 = *(a2 - 1);
          if (*(v18 + 8 * v44) >= v21)
          {
            return 1;
          }

          a1[1] = v44;
        }

        else
        {
          *a1 = v22;
        }

LABEL_42:
        *(a2 - 1) = v17;
        return 1;
      }

      if (v23 >= v20)
      {
        return 1;
      }

      a1[1] = v22;
      *(a2 - 1) = v19;
      v35 = *a1;
      v34 = a1[1];
      if (*(v18 + 8 * v34) >= *(v18 + 8 * *a1))
      {
        return 1;
      }

      *a1 = v34;
      a1[1] = v35;
      return 1;
    case 4:
      return 1;
    case 5:
      v8 = *(a2 - 1);
      v9 = a1[3];
      v10 = **a3;
      if (*(v10 + 8 * v8) >= *(v10 + 8 * v9))
      {
        return 1;
      }

      a1[3] = v8;
      *(a2 - 1) = v9;
      v12 = a1[2];
      v11 = a1[3];
      v13 = *(v10 + 8 * v11);
      if (v13 >= *(v10 + 8 * v12))
      {
        return 1;
      }

      a1[2] = v11;
      a1[3] = v12;
      v14 = a1[1];
      if (v13 >= *(v10 + 8 * v14))
      {
        return 1;
      }

      a1[1] = v11;
      a1[2] = v14;
      v15 = *a1;
      if (v13 >= *(v10 + 8 * *a1))
      {
        return 1;
      }

      *a1 = v11;
      a1[1] = v15;
      return 1;
    default:
      goto LABEL_18;
  }
}

void operations_research::glop::ApplyPermutation<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>(void *a1, std::vector<int> *a2, std::vector<int> *this)
{
  if (this)
  {
    v3 = a1[1] - *a1;
    if ((v3 & 0x3FFFFFFFCLL) != 0)
    {
      end = a2->__end_;
      v5 = (end - a2->__begin_);
      v6 = this->__end_ - this->__begin_;
      v7 = v5 >= v6;
      v8 = v5 - v6;
      if (v8 != 0 && v7)
      {
        v9 = a1;
        v10 = a2;
        v11 = this;
        std::vector<int>::__append(this, v8, end - 1);
        a1 = v9;
        a2 = v10;
        this = v11;
      }

      else if (!v7)
      {
        this->__end_ = &this->__begin_[v5];
      }

      if ((v3 >> 2) >= 1)
      {
        v15 = *a1;
        begin = a2->__begin_;
        v17 = (v3 >> 2) & 0x7FFFFFFF;
        v18 = this->__begin_;
        do
        {
          v19 = *v15++;
          v20 = v19;
          v21 = *begin++;
          v18[v20] = v21;
          --v17;
        }

        while (v17);
      }
    }

    else if (this != a2)
    {
      v12 = a2->__end_;
      v13 = v12 - a2->__begin_;
      v14 = a2->__begin_;

      std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(this, v14, v12, v13);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v22, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/permutation.h", 204, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v22, "result", 6uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v22, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v22);
  }
}

__n128 std::__function::__func<operations_research::glop::RevisedSimplex::Polish(operations_research::TimeLimit *)::$_0,std::allocator<operations_research::glop::RevisedSimplex::Polish(operations_research::TimeLimit *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F41B30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double std::__function::__func<operations_research::glop::RevisedSimplex::Polish(operations_research::TimeLimit *)::$_0,std::allocator<operations_research::glop::RevisedSimplex::Polish(operations_research::TimeLimit *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(v1 + 14376) * 0.000000002;
  result = *(v1 + 13168) + operations_research::glop::BasisFactorization::DeterministicTime((v1 + 3664)) + v3 + *(v1 + 11608) * 0.000000002 + *(v1 + 13752) * 0.000000002 + *(v1 + 9808) * 0.000000002;
  *(v2 + 112) = *(v2 + 112) + result - *(v1 + 14416);
  *(v1 + 14416) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::glop::RevisedSimplex::Polish(operations_research::TimeLimit *)::$_0,std::allocator<operations_research::glop::RevisedSimplex::Polish(operations_research::TimeLimit *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research4glop14RevisedSimplex6PolishEPNS_9TimeLimitEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research4glop14RevisedSimplex6PolishEPNS_9TimeLimitEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research4glop14RevisedSimplex6PolishEPNS_9TimeLimitEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research4glop14RevisedSimplex6PolishEPNS_9TimeLimitEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::glop::RevisedSimplex::PrimalMinimize(operations_research::TimeLimit *)::$_0,std::allocator<operations_research::glop::RevisedSimplex::PrimalMinimize(operations_research::TimeLimit *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F41BB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double std::__function::__func<operations_research::glop::RevisedSimplex::PrimalMinimize(operations_research::TimeLimit *)::$_0,std::allocator<operations_research::glop::RevisedSimplex::PrimalMinimize(operations_research::TimeLimit *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(v1 + 14376) * 0.000000002;
  result = *(v1 + 13168) + operations_research::glop::BasisFactorization::DeterministicTime((v1 + 3664)) + v3 + *(v1 + 11608) * 0.000000002 + *(v1 + 13752) * 0.000000002 + *(v1 + 9808) * 0.000000002;
  *(v2 + 112) = *(v2 + 112) + result - *(v1 + 14416);
  *(v1 + 14416) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::glop::RevisedSimplex::PrimalMinimize(operations_research::TimeLimit *)::$_0,std::allocator<operations_research::glop::RevisedSimplex::PrimalMinimize(operations_research::TimeLimit *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research4glop14RevisedSimplex14PrimalMinimizeEPNS_9TimeLimitEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research4glop14RevisedSimplex14PrimalMinimizeEPNS_9TimeLimitEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research4glop14RevisedSimplex14PrimalMinimizeEPNS_9TimeLimitEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research4glop14RevisedSimplex14PrimalMinimizeEPNS_9TimeLimitEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::glop::RevisedSimplex::DualMinimize(BOOL,operations_research::TimeLimit *)::$_0,std::allocator<operations_research::glop::RevisedSimplex::DualMinimize(BOOL,operations_research::TimeLimit *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F41C30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double std::__function::__func<operations_research::glop::RevisedSimplex::DualMinimize(BOOL,operations_research::TimeLimit *)::$_0,std::allocator<operations_research::glop::RevisedSimplex::DualMinimize(BOOL,operations_research::TimeLimit *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(v1 + 14376) * 0.000000002;
  result = *(v1 + 13168) + operations_research::glop::BasisFactorization::DeterministicTime((v1 + 3664)) + v3 + *(v1 + 11608) * 0.000000002 + *(v1 + 13752) * 0.000000002 + *(v1 + 9808) * 0.000000002;
  *(v2 + 112) = *(v2 + 112) + result - *(v1 + 14416);
  *(v1 + 14416) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::glop::RevisedSimplex::DualMinimize(BOOL,operations_research::TimeLimit *)::$_0,std::allocator<operations_research::glop::RevisedSimplex::DualMinimize(BOOL,operations_research::TimeLimit *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research4glop14RevisedSimplex12DualMinimizeEbPNS_9TimeLimitEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research4glop14RevisedSimplex12DualMinimizeEbPNS_9TimeLimitEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research4glop14RevisedSimplex12DualMinimizeEbPNS_9TimeLimitEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research4glop14RevisedSimplex12DualMinimizeEbPNS_9TimeLimitEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::glop::RevisedSimplex::PrimalPush(operations_research::TimeLimit *)::$_0,std::allocator<operations_research::glop::RevisedSimplex::PrimalPush(operations_research::TimeLimit *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F41CB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double std::__function::__func<operations_research::glop::RevisedSimplex::PrimalPush(operations_research::TimeLimit *)::$_0,std::allocator<operations_research::glop::RevisedSimplex::PrimalPush(operations_research::TimeLimit *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(v1 + 14376) * 0.000000002;
  result = *(v1 + 13168) + operations_research::glop::BasisFactorization::DeterministicTime((v1 + 3664)) + v3 + *(v1 + 11608) * 0.000000002 + *(v1 + 13752) * 0.000000002 + *(v1 + 9808) * 0.000000002;
  *(v2 + 112) = *(v2 + 112) + result - *(v1 + 14416);
  *(v1 + 14416) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::glop::RevisedSimplex::PrimalPush(operations_research::TimeLimit *)::$_0,std::allocator<operations_research::glop::RevisedSimplex::PrimalPush(operations_research::TimeLimit *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research4glop14RevisedSimplex10PrimalPushEPNS_9TimeLimitEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research4glop14RevisedSimplex10PrimalPushEPNS_9TimeLimitEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research4glop14RevisedSimplex10PrimalPushEPNS_9TimeLimitEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research4glop14RevisedSimplex10PrimalPushEPNS_9TimeLimitEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t operations_research::glop::Status::Status(uint64_t this)
{
  *this = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  return this;
}

uint64_t operations_research::glop::Status::Status(uint64_t result, int a2, __int128 *a3)
{
  *result = a2;
  if (a2)
  {
    v3 = *a3;
    *(result + 24) = *(a3 + 2);
    *(result + 8) = v3;
    *(a3 + 8) = 0uLL;
    *a3 = 0;
  }

  else
  {
    *(result + 31) = 0;
    *(result + 8) = 0;
  }

  return result;
}

void *operations_research::glop::GetErrorCodeString@<X0>(void *result@<X0>, char *a2@<X8>)
{
  v4 = result;
  if (result <= 1)
  {
    if (!result)
    {
      a2[23] = 7;
      strcpy(a2, "GLOP_OK");
      return result;
    }

    if (result == 1)
    {
      a2[23] = 8;
      strcpy(a2, "ERROR_LU");
      return result;
    }
  }

  else
  {
    switch(result)
    {
      case 2:
        a2[23] = 11;
        strcpy(a2, "ERROR_BOUND");
        return result;
      case 3:
        a2[23] = 10;
        strcpy(a2, "ERROR_NULL");
        return result;
      case 4:
        a2[23] = 15;
        strcpy(a2, "INVALID_PROBLEM");
        return result;
    }
  }

  absl::lts_20240722::log_internal::LogMessage::LogMessage(v3, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/status.cc", 45, 2);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v3, "Invalid Status::ErrorCode ", 0x1AuLL);
  absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::glop::GlopParameters_InitialBasisHeuristic,0>(v3, &v4);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(v3);
  return std::string::basic_string[abi:ne200100]<0>(a2, "UNKNOWN Status::ErrorCode");
}

void sub_23CBDE550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::glop::UpdateRow::UpdateRow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 40) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 32) = a6;
  *(a1 + 184) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 236) = -1;
  *(a1 + 248) = 0;
  operations_research::glop::GlopParameters::GlopParameters(a1 + 256, 0);
  operations_research::glop::UpdateRow::Stats::Stats((a1 + 584));
  return a1;
}

void sub_23CBDE608(_Unwind_Exception *a1)
{
  operations_research::glop::GlopParameters::~GlopParameters((v1 + 32));
  v6 = v1[26];
  if (v6)
  {
    v1[27] = v6;
    operator delete(v6);
    v7 = *v4;
    if (!*v4)
    {
LABEL_3:
      v8 = *v3;
      if (!*v3)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v7 = *v4;
    if (!*v4)
    {
      goto LABEL_3;
    }
  }

  v1[24] = v7;
  operator delete(v7);
  v8 = *v3;
  if (!*v3)
  {
LABEL_4:
    v9 = v1[15];
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  v1[20] = v8;
  operator delete(v8);
  v9 = v1[15];
  if (!v9)
  {
LABEL_5:
    operations_research::glop::ScatteredColumn::~ScatteredColumn(v2);
    _Unwind_Resume(a1);
  }

LABEL_9:
  v1[16] = v9;
  operator delete(v9);
  operations_research::glop::ScatteredColumn::~ScatteredColumn(v2);
  _Unwind_Resume(a1);
}

double operations_research::glop::UpdateRow::Invalidate(operations_research::glop::UpdateRow *this)
{
  result = NAN;
  *(this + 236) = -1;
  return result;
}

uint64_t operations_research::glop::UpdateRow::ComputeAndGetUnitRowLeftInverse(uint64_t a1, int a2)
{
  *(a1 + 236) = -1;
  operations_research::glop::BasisFactorization::TemporaryLeftSolveForUnitRow(*(a1 + 32), a2, (a1 + 40));
  return a1 + 40;
}

void operations_research::glop::UpdateRow::ComputeUnitRowLeftInverse(uint64_t a1, int a2)
{
  if (*(a1 + 236) != a2)
  {
    *(a1 + 236) = a2;
    operations_research::glop::BasisFactorization::LeftSolveForUnitRow(*(a1 + 32), a2, (a1 + 40));
  }
}

void operations_research::glop::UpdateRow::ComputeUpdateRow(int **this, int a2)
{
  if (*(this + 60) != a2)
  {
    v25 = v5;
    v26 = v4;
    v27 = v2;
    v28 = v3;
    *(this + 60) = a2;
    if (*(this + 59) != a2)
    {
      *(this + 59) = a2;
      operations_research::glop::BasisFactorization::LeftSolveForUnitRow(this[4], a2, this + 5);
    }

    if (*(this + 441) != 1)
    {
      operations_research::glop::UpdateRow::ComputeUpdatesColumnWise(this);
      NumEntriesInRelevantColumns = operations_research::glop::VariablesInfo::GetNumEntriesInRelevantColumns(this[2]);
      v15 = (*this)[1];
      v16 = this[31] + NumEntriesInRelevantColumns;
LABEL_12:
      v17 = &v16[v15];
LABEL_21:
      this[31] = v17;
      return;
    }

    v7 = *(this + 64);
    this[16] = this[15];
    v8 = *(this[1] + 7);
    v10 = this[9];
    v9 = this[10];
    if (v10 == v9)
    {
      v18 = (this[6] - this[5]) >> 3;
      v24 = 0;
      if (v18 < 1)
      {
        v12 = 0;
        v20 = this[15];
        if (this[16] - v20 == 4)
        {
          goto LABEL_20;
        }

LABEL_24:
        v21 = operations_research::glop::VariablesInfo::GetNumEntriesInRelevantColumns(this[2]);
        if (vcvtd_n_f64_s64(v21, 1uLL) <= v12)
        {
          v22 = v21;
          operations_research::glop::UpdateRow::ComputeUpdatesColumnWise(this);
          v15 = (*this)[1];
          v16 = this[31] + v22;
        }

        else
        {
          if ((*this)[1] * 1.1 > v12)
          {
            operations_research::glop::UpdateRow::ComputeUpdatesRowWiseHypersparse(this);
            v17 = (this[31] + 5 * v12 + (*this)[1] / 64);
            goto LABEL_21;
          }

          operations_research::glop::UpdateRow::ComputeUpdatesRowWise(this);
          v15 = **this;
          v16 = this[31] + v12;
        }

        goto LABEL_12;
      }

      v12 = 0;
      v19 = 0;
      do
      {
        if (fabs(*&this[5][2 * v19]) > v7)
        {
          std::vector<int>::push_back[abi:ne200100]((this + 15), &v24);
          v19 = v24;
          v12 = *(v8 + (((v24 << 32) + 0x100000000) >> 29)) + v12 - *(v8 + 8 * v24);
        }

        v24 = ++v19;
      }

      while (v19 < v18);
    }

    else
    {
      v11 = v9 - v10;
      if (v11 < 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = 0;
        v13 = this[5];
        do
        {
          if (fabs(*&v13[2 * *v10]) > v7)
          {
            v23 = *v10;
            std::vector<int>::push_back[abi:ne200100]((this + 15), &v23);
            v12 = *(v8 + (((*v10 << 32) + 0x100000000) >> 29)) + v12 - *(v8 + 8 * *v10);
          }

          ++v10;
          --v11;
        }

        while (v11);
      }
    }

    v20 = this[15];
    if (this[16] - v20 == 4)
    {
LABEL_20:
      operations_research::glop::UpdateRow::ComputeUpdatesForSingleRow(this, *v20);
      v17 = (this[31] + v12);
      goto LABEL_21;
    }

    goto LABEL_24;
  }
}

uint64_t operations_research::glop::UpdateRow::ComputeUpdatesForSingleRow(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v6 = a1[26];
  v7 = a1[27];
  v5 = a1 + 26;
  v8 = *(*&v4 + 4);
  v31 = 0;
  v9 = (v7 - v6) >> 3;
  if (v8 <= v9)
  {
    if (v8 < v9)
    {
      a1[27] = v6 + 8 * v8;
    }
  }

  else
  {
    std::vector<double>::__append(v5, v8 - v9, &v31);
    v4 = *a1;
  }

  v10 = a1[19];
  v11 = *(*&v4 + 4);
  v12 = (a1[20] - v10) >> 2;
  if (v11 <= v12)
  {
    if (v11 < v12)
    {
      a1[20] = &v10[v11];
    }
  }

  else
  {
    std::vector<int>::__append((a1 + 19), v11 - v12);
    v10 = a1[19];
  }

  result = operations_research::glop::VariablesInfo::GetIsRelevantBitRow(a1[2]);
  v14 = a1[1];
  v15 = v14[7];
  v16 = *(v15 + 8 * a2);
  v17 = *(v15 + (((a2 << 32) + 0x100000000) >> 29));
  v18 = v17 <= v16;
  v19 = v17 - v16;
  if (!v18)
  {
    v20 = *(a1 + 64);
    v21 = *(a1[5] + 8 * a2);
    v22 = a1[26];
    v23 = v14[1];
    v24 = v14[4];
    v25 = *(result + 8);
    v26 = (v24 + 4 * v16);
    v27 = (v23 + 8 * v16);
    do
    {
      v29 = *v26++;
      v28 = v29;
      if ((*(v25 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = v21 * *v27;
        if (fabs(v30) > v20)
        {
          *(v22 + 8 * v28) = v30;
          *v10++ = v28;
        }
      }

      ++v27;
      --v19;
    }

    while (v19);
  }

  *(a1 + 36) = (v10 - a1[19]) >> 2;
  return result;
}

void operations_research::glop::UpdateRow::ComputeUpdatesRowWiseHypersparse(operations_research::glop::UpdateRow *this)
{
  v2 = *(*this + 4);
  v3 = v2 & ~(v2 >> 31);
  *(this + 44) = v3;
  v5 = (this + 184);
  v4 = *(this + 23);
  v6 = (v3 + 63) >> 6;
  v7 = *(this + 24) - v4;
  v8 = v7 >> 3;
  v76 = 0;
  if (v6 <= v7 >> 3)
  {
    if (v6 < v7 >> 3)
    {
      *(this + 24) = &v4[8 * v6];
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(v5, v6 - (v7 >> 3), &v76);
    v4 = *v5;
  }

  if (v6 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  bzero(v4, 8 * v9);
  v11 = *(this + 26);
  v10 = *(this + 27);
  v76 = 0;
  v12 = (v10 - v11) >> 3;
  if (v2 <= v12)
  {
    if (v2 < v12)
    {
      *(this + 27) = v11 + 8 * v2;
    }
  }

  else
  {
    std::vector<double>::__append(this + 208, v2 - v12, &v76);
    v11 = *(this + 26);
  }

  v13 = *(this + 15);
  v14 = *(this + 16);
  if (v13 != v14)
  {
    v15 = *(this + 1);
    v16 = v15[1];
    v17 = v15[4];
    v18 = v15[7];
    v19 = *(this + 23);
    v20 = *(this + 5);
    do
    {
      v21 = *v13;
      v22 = 8 * v21;
      v23 = *(v18 + v22);
      v24 = *(v18 + (((v21 << 32) + 0x100000000) >> 29));
      v25 = v24 <= v23;
      v26 = v24 - v23;
      if (!v25)
      {
        v27 = *(v20 + v22);
        v28 = (v17 + 4 * v23);
        v29 = (v16 + 8 * v23);
        do
        {
          while (1)
          {
            v30 = *v28++;
            v31 = v27 * *v29;
            v32 = v30 >> 6;
            v33 = *(v19 + 8 * (v30 >> 6));
            v34 = 1 << v30;
            v35 = 8 * v30;
            if (((1 << v30) & v33) == 0)
            {
              break;
            }

            *(v11 + v35) = v31 + *(v11 + v35);
            ++v29;
            if (!--v26)
            {
              goto LABEL_14;
            }
          }

          *(v11 + v35) = v31;
          *(v19 + 8 * v32) = v34 | v33;
          ++v29;
          --v26;
        }

        while (v26);
      }

LABEL_14:
      ++v13;
    }

    while (v13 != v14);
  }

  IsRelevantBitRow = operations_research::glop::VariablesInfo::GetIsRelevantBitRow(*(this + 2));
  v38 = *(this + 23);
  v37 = *(this + 24);
  v39 = (v37 - v38) >> 3;
  v40 = *(IsRelevantBitRow + 8);
  v41 = (*(IsRelevantBitRow + 16) - v40) >> 3;
  if (v41 >= v39)
  {
    v41 = (v37 - v38) >> 3;
  }

  if (v41 >= 1)
  {
    v42 = v41 & 0x7FFFFFFF;
    if (v42 <= 5 || (v38 < v40 + 8 * v42 ? (v43 = v40 >= v38 + 8 * v42) : (v43 = 1), !v43))
    {
      v44 = 0;
LABEL_35:
      v49 = v42 - v44;
      v50 = 8 * v44;
      v51 = (v38 + 8 * v44);
      v52 = (v40 + v50);
      do
      {
        v53 = *v52++;
        *v51++ &= v53;
        --v49;
      }

      while (v49);
      goto LABEL_37;
    }

    v44 = v42 - (v41 & 3);
    v45 = (v40 + 16);
    v46 = (v38 + 16);
    v47 = v44;
    do
    {
      v48 = vandq_s8(*v46, *v45);
      v46[-1] = vandq_s8(v46[-1], v45[-1]);
      *v46 = v48;
      v45 += 2;
      v46 += 2;
      v47 -= 4;
    }

    while (v47);
    if ((v41 & 3) != 0)
    {
      goto LABEL_35;
    }
  }

LABEL_37:
  v54 = v41;
  if (v39 <= v41)
  {
    goto LABEL_44;
  }

  v55 = v39 - (((v41 << 32) + 0x100000000) >> 32);
  if (v39 < ((v41 << 32) + 0x100000000) >> 32)
  {
    v55 = 0;
  }

  v56 = v55 + 1;
  if (v55 + 1 <= 0x1B)
  {
    goto LABEL_41;
  }

  v72 = v39 - (v41 + 1);
  if (v39 < v41 + 1)
  {
    v72 = 0;
  }

  if (v41 + v72 < v41 || v41 + 1 + v72 < v41 + 1 || HIDWORD(v72))
  {
LABEL_41:
    v57 = v41;
LABEL_42:
    v58 = v41 + 1;
    do
    {
      *(v38 + 8 * v57) = 0;
      v57 = v58++;
    }

    while (v39 > v57);
    goto LABEL_44;
  }

  v57 = v41 + (v56 & 0xFFFFFFFFFFFFFFFCLL);
  LODWORD(v41) = v41 + (v56 & 0xFFFFFFFC);
  v73 = (v38 + 8 * v54 + 16);
  v74 = v56 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    *(v73 - 1) = 0uLL;
    *v73 = 0uLL;
    v73 += 2;
    v74 -= 4;
  }

  while (v74);
  if (v56 != (v56 & 0xFFFFFFFFFFFFFFFCLL))
  {
    goto LABEL_42;
  }

LABEL_44:
  v59 = *(this + 19);
  v60 = *(*this + 4);
  v61 = (*(this + 20) - v59) >> 2;
  if (v60 <= v61)
  {
    if (v60 < v61)
    {
      *(this + 20) = &v59[v60];
    }
  }

  else
  {
    std::vector<int>::__append((this + 152), v60 - v61);
    v59 = *(this + 19);
    v37 = *(this + 24);
  }

  v62 = *(this + 64);
  v63 = *(this + 23);
  v64 = (v37 - v63) >> 3;
  if (v63 == v37)
  {
    v67 = 0;
    v68 = 0;
    v69 = v59;
    if (!v64)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v65 = *v63;
    if (*v63)
    {
      v66 = 0;
    }

    else
    {
      v69 = v59;
      if (v64 == 1)
      {
        goto LABEL_76;
      }

      v75 = 1;
      v66 = 64;
      while (1)
      {
        v65 = v63[v75];
        if (v65)
        {
          break;
        }

        ++v75;
        v66 += 64;
        if (v64 == v75)
        {
          v69 = v59;
          goto LABEL_76;
        }
      }
    }

    v67 = v66 | __clz(__rbit64(v65));
    v68 = (v65 - 1) & v65;
    v69 = v59;
    if (!v64)
    {
      goto LABEL_76;
    }
  }

  v70 = v64 - 1;
  v69 = v59;
  while (1)
  {
    if (fabs(*(v11 + 8 * v67)) > v62)
    {
      *v69++ = v67;
    }

    v71 = v67 >> 6;
    if (!v68)
    {
      break;
    }

LABEL_55:
    v67 = __clz(__rbit64(v68)) | (v71 << 6);
    v68 &= v68 - 1;
  }

  while (v70 != v71)
  {
    v68 = v63[++v71];
    if (v68)
    {
      goto LABEL_55;
    }
  }

LABEL_76:
  *(this + 36) = (v69 - v59) >> 2;
}

uint64_t operations_research::glop::UpdateRow::ComputeUpdatesRowWise(operations_research::glop::UpdateRow *this)
{
  v2 = *(*this + 4);
  v4 = *(this + 26);
  v5 = *(this + 27);
  v6 = (this + 208);
  v42 = 0;
  v7 = v2 << 32;
  v8 = (v5 - v4) >> 3;
  if (v2 <= v8)
  {
    if (v2 < v8)
    {
      *(this + 27) = &v4[8 * v2];
    }
  }

  else
  {
    std::vector<double>::__append(v6, v2 - v8, &v42);
    v4 = *v6;
  }

  bzero(v4, v7 >> 29);
  v9 = *(this + 26);
  v10 = *(this + 15);
  v11 = *(this + 16);
  if (v10 != v11)
  {
    v12 = *(this + 1);
    v13 = v12[1];
    v14 = v12[4];
    v15 = v12[7];
    v16 = *(this + 5);
    do
    {
      v17 = *v10;
      v18 = 8 * v17;
      v19 = *(v15 + v18);
      v20 = *(v15 + (((v17 << 32) + 0x100000000) >> 29));
      v21 = v20 <= v19;
      v22 = v20 - v19;
      if (!v21)
      {
        v23 = *(v16 + v18);
        v24 = (v14 + 4 * v19);
        v25 = (v13 + 8 * v19);
        do
        {
          v26 = *v25++;
          v27 = v26;
          LODWORD(v26) = *v24++;
          *(v9 + 8 * SLODWORD(v26)) = *(v9 + 8 * SLODWORD(v26)) + v23 * v27;
          --v22;
        }

        while (v22);
      }

      ++v10;
    }

    while (v10 != v11);
  }

  v28 = *(this + 19);
  v29 = *(*this + 4);
  v30 = (*(this + 20) - v28) >> 2;
  if (v29 <= v30)
  {
    if (v29 < v30)
    {
      *(this + 20) = &v28[v29];
    }
  }

  else
  {
    std::vector<int>::__append((this + 152), v29 - v30);
    v28 = *(this + 19);
  }

  v31 = *(this + 64);
  result = operations_research::glop::VariablesInfo::GetIsRelevantBitRow(*(this + 2));
  v33 = *(result + 8);
  v34 = (*(result + 16) - v33) >> 3;
  if (*(result + 16) == v33)
  {
    v37 = 0;
    v38 = 0;
    if (!v34)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v35 = *v33;
    if (*v33)
    {
      v36 = 0;
    }

    else
    {
      if (v34 == 1)
      {
        goto LABEL_34;
      }

      v41 = 1;
      v36 = 64;
      while (1)
      {
        v35 = v33[v41];
        if (v35)
        {
          break;
        }

        ++v41;
        v36 += 64;
        if (v34 == v41)
        {
          goto LABEL_34;
        }
      }
    }

    v37 = v36 | __clz(__rbit64(v35));
    v38 = (v35 - 1) & v35;
    if (!v34)
    {
      goto LABEL_34;
    }
  }

  v39 = v34 - 1;
  while (1)
  {
    if (fabs(*(v9 + 8 * v37)) > v31)
    {
      *v28++ = v37;
    }

    v40 = v37 >> 6;
    if (!v38)
    {
      break;
    }

LABEL_23:
    v37 = __clz(__rbit64(v38)) | (v40 << 6);
    v38 &= v38 - 1;
  }

  while (v39 != v40)
  {
    v38 = v33[++v40];
    if (v38)
    {
      goto LABEL_23;
    }
  }

LABEL_34:
  *(this + 36) = (v28 - *(this + 19)) >> 2;
  return result;
}

uint64_t operations_research::glop::UpdateRow::ComputeUpdatesColumnWise(operations_research::glop::UpdateRow *this)
{
  v2 = *this;
  v4 = *(this + 26);
  v5 = *(this + 27);
  v3 = this + 208;
  v6 = *(v2 + 4);
  v35 = 0;
  v7 = (v5 - v4) >> 3;
  if (v6 <= v7)
  {
    if (v6 < v7)
    {
      *(this + 27) = v4 + 8 * v6;
    }
  }

  else
  {
    std::vector<double>::__append(v3, v6 - v7, &v35);
    v2 = *this;
  }

  v8 = *(this + 19);
  v9 = *(v2 + 4);
  v10 = (*(this + 20) - v8) >> 2;
  if (v9 <= v10)
  {
    if (v9 < v10)
    {
      *(this + 20) = &v8[v9];
    }
  }

  else
  {
    std::vector<int>::__append((this + 152), v9 - v10);
    v8 = *(this + 19);
    v2 = *this;
  }

  v11 = *(this + 64);
  v12 = *(this + 26);
  v13 = *(v2 + 8);
  v14 = *(v2 + 32);
  v15 = *(v2 + 56);
  v16 = *(this + 5);
  result = operations_research::glop::VariablesInfo::GetIsRelevantBitRow(*(this + 2));
  v18 = *(result + 8);
  v19 = *(result + 16) - v18;
  v20 = v19 >> 3;
  if (v19)
  {
    v21 = *v18;
    if (*v18)
    {
      v22 = 0;
    }

    else
    {
      if (v20 == 1)
      {
        goto LABEL_35;
      }

      v34 = 1;
      v22 = 64;
      while (1)
      {
        v21 = v18[v34];
        if (v21)
        {
          break;
        }

        ++v34;
        v22 += 64;
        if (v20 == v34)
        {
          goto LABEL_35;
        }
      }
    }

    v23 = v22 | __clz(__rbit64(v21));
    v19 = (v21 - 1) & v21;
    if (!v20)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v23 = 0;
    if (!v20)
    {
      goto LABEL_35;
    }
  }

  v24 = v20 - 1;
  while (1)
  {
    v25 = *(v15 + 8 * v23);
    v26 = *(v15 + (((v23 << 32) + 0x100000000) >> 29));
    v27 = 0.0;
    if (v26 - 3 > v25)
    {
      v28 = 0.0;
      v29 = 0.0;
      v30 = 0.0;
      do
      {
        v27 = v27 + *(v13 + 8 * v25) * *(v16 + 8 * *(v14 + 4 * v25));
        v28 = v28 + *(v13 + 8 * (v25 + 1)) * *(v16 + 8 * *(v14 + 4 * (v25 + 1)));
        v29 = v29 + *(v13 + 8 * (v25 + 2)) * *(v16 + 8 * *(v14 + 4 * (v25 + 2)));
        v30 = v30 + *(v13 + 8 * (v25 + 3)) * *(v16 + 8 * *(v14 + 4 * (v25 + 3)));
        v25 += 4;
      }

      while (v25 < v26 - 3);
      v27 = v27 + v28 + v29 + v30;
    }

    if (v25 < v26)
    {
      v31 = v25;
      v27 = v27 + *(v13 + 8 * v25) * *(v16 + 8 * *(v14 + 4 * v25));
      v32 = v25 + 1;
      if (v32 < v26)
      {
        v27 = v27 + *(v13 + 8 * v32) * *(v16 + 8 * *(v14 + 4 * v32));
        if (v31 + 2 < v26)
        {
          v27 = v27 + *(v13 + 8 * (v31 + 2)) * *(v16 + 8 * *(v14 + 4 * (v31 + 2)));
        }
      }
    }

    if (fabs(v27) > v11)
    {
      *v8++ = v23;
      *(v12 + 8 * v23) = v27;
    }

    v33 = v23 >> 6;
    if (!v19)
    {
      break;
    }

LABEL_16:
    v23 = __clz(__rbit64(v19)) | (v33 << 6);
    v19 &= v19 - 1;
  }

  while (v24 != v33)
  {
    v19 = v18[++v33];
    if (v19)
    {
      goto LABEL_16;
    }
  }

LABEL_35:
  *(this + 36) = (v8 - *(this + 19)) >> 2;
  return result;
}

uint64_t operations_research::glop::UpdateRow::ComputeFullUpdateRow(uint64_t a1, unsigned int a2, char **a3)
{
  v34 = a2;
  if (*(a1 + 236) != a2)
  {
    operations_research::glop::UpdateRow::ComputeFullUpdateRow(&v34, (a1 + 236), v33);
  }

  v6 = *(*a1 + 4);
  v33[0] = 0;
  v7 = v6 << 32;
  v8 = *a3;
  v9 = (a3[1] - *a3) >> 3;
  if (v6 <= v9)
  {
    if (v6 < v9)
    {
      a3[1] = &v8[8 * v6];
    }
  }

  else
  {
    std::vector<double>::__append(a3, v6 - v9, v33);
    v8 = *a3;
  }

  bzero(v8, v7 >> 29);
  *&(*a3)[8 * *(**(a1 + 24) + 4 * a2)] = 0x3FF0000000000000;
  v10 = *(a1 + 512);
  v11 = *(*a1 + 8);
  v12 = *(*a1 + 32);
  v13 = *(*a1 + 56);
  v14 = *(a1 + 40);
  result = operations_research::glop::VariablesInfo::GetNotBasicBitRow(*(a1 + 16));
  v16 = *(result + 8);
  v17 = *(result + 16) - v16;
  v18 = v17 >> 3;
  if (v17)
  {
    v19 = *v16;
    if (*v16)
    {
      i = 0;
    }

    else
    {
      if (v18 == 1)
      {
        return result;
      }

      v32 = 1;
      for (i = 64; ; i += 64)
      {
        v19 = v16[v32];
        if (v19)
        {
          break;
        }

        if (v18 == ++v32)
        {
          return result;
        }
      }
    }

    v21 = i | __clz(__rbit64(v19));
    v17 = (v19 - 1) & v19;
    if (!v18)
    {
      return result;
    }
  }

  else
  {
    v21 = 0;
    if (!v18)
    {
      return result;
    }
  }

  v22 = v18 - 1;
  while (1)
  {
    v24 = *(v13 + 8 * v21);
    v25 = *(v13 + (((v21 << 32) + 0x100000000) >> 29));
    v26 = 0.0;
    if (v25 - 3 > v24)
    {
      v27 = 0.0;
      v28 = 0.0;
      v29 = 0.0;
      do
      {
        v26 = v26 + *(v11 + 8 * v24) * *(v14 + 8 * *(v12 + 4 * v24));
        v27 = v27 + *(v11 + 8 * (v24 + 1)) * *(v14 + 8 * *(v12 + 4 * (v24 + 1)));
        v28 = v28 + *(v11 + 8 * (v24 + 2)) * *(v14 + 8 * *(v12 + 4 * (v24 + 2)));
        v29 = v29 + *(v11 + 8 * (v24 + 3)) * *(v14 + 8 * *(v12 + 4 * (v24 + 3)));
        v24 += 4;
      }

      while (v24 < v25 - 3);
      v26 = v26 + v27 + v28 + v29;
    }

    if (v24 < v25)
    {
      v30 = v24;
      v26 = v26 + *(v11 + 8 * v24) * *(v14 + 8 * *(v12 + 4 * v24));
      v31 = v24 + 1;
      if (v31 < v25)
      {
        v26 = v26 + *(v11 + 8 * v31) * *(v14 + 8 * *(v12 + 4 * v31));
        if (v30 + 2 < v25)
        {
          v26 = v26 + *(v11 + 8 * (v30 + 2)) * *(v14 + 8 * *(v12 + 4 * (v30 + 2)));
        }
      }
    }

    if (fabs(v26) > v10)
    {
      *&(*a3)[8 * v21] = v26;
    }

    v23 = v21 >> 6;
    if (!v17)
    {
      break;
    }

LABEL_14:
    v21 = __clz(__rbit64(v17)) | (v23 << 6);
    v17 &= v17 - 1;
  }

  while (v22 != v23)
  {
    v17 = v16[++v23];
    if (v17)
    {
      goto LABEL_14;
    }
  }

  return result;
}

operations_research::glop::UpdateRow::Stats *operations_research::glop::UpdateRow::Stats::Stats(operations_research::glop::UpdateRow::Stats *this)
{
  *(this + 23) = 9;
  strcpy(this, "UpdateRow");
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 9) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 7) = this + 64;
  operations_research::DistributionStat::DistributionStat(this + 80, "unit_row_left_inverse_density", 0x1DuLL, this);
  *(this + 10) = &unk_284F44D30;
  operations_research::DistributionStat::DistributionStat(this + 160, "unit_row_left_inverse_accuracy", 0x1EuLL, this);
  *(this + 20) = &unk_284F44D90;
  operations_research::DistributionStat::DistributionStat(this + 240, "update_row_density", 0x12uLL, this);
  *(this + 30) = &unk_284F44D30;
  return this;
}

void sub_23CBDF814(_Unwind_Exception *a1)
{
  *(v1 + 160) = &unk_284F3A5F8;
  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
    *(v1 + 80) = &unk_284F3A5F8;
    if ((*(v1 + 111) & 0x80000000) == 0)
    {
LABEL_3:
      operations_research::StatsGroup::~StatsGroup(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    *(v1 + 80) = &unk_284F3A5F8;
    if ((*(v1 + 111) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(v1 + 88));
  operations_research::StatsGroup::~StatsGroup(v1);
  _Unwind_Resume(a1);
}

double operations_research::glop::VariableValues::VariableValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = 0;
  *(a1 + 48) = a7;
  *(a1 + 56) = a8;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 111) = 14;
  *(a1 + 80) = 0;
  strcpy((a1 + 88), "VariableValues");
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = a1 + 152;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 257) = 0u;
  return result;
}

void operations_research::glop::VariableValues::SetNonBasicVariableValueFromStatus(void *a1, int a2)
{
  v4 = a1[3];
  v5 = a1[8];
  v6 = a1[9];
  v7 = a1 + 8;
  v8 = *(a1[1] + 4);
  v13[0] = 0;
  v9 = (v6 - v5) >> 3;
  if (v8 <= v9)
  {
    v10 = v4;
    if (v8 < v9)
    {
      a1[9] = v5 + 8 * v8;
      v10 = v4;
    }
  }

  else
  {
    std::vector<double>::__append((a1 + 8), v8 - v9, v13);
    v10 = a1[3];
  }

  v11 = *(*operations_research::glop::VariablesInfo::GetStatusRow(v10) + a2);
  if (v11 <= 1)
  {
    if (v11 != 1)
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v13, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/variable_values.cc", 78, 2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v13, "SetNonBasicVariableValueFromStatus() shouldn't ", 0x2FuLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v13, "be called on a BASIC variable.", 0x1EuLL);
      goto LABEL_16;
    }

LABEL_10:
    v12 = *(v4 + 1);
    goto LABEL_11;
  }

  switch(v11)
  {
    case 2u:
      goto LABEL_10;
    case 3u:
      v12 = *(v4 + 4);
LABEL_11:
      *(*v7 + 8 * a2) = *(v12 + 8 * a2);
      return;
    case 4u:
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v13, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/variable_values.cc", 74, 2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v13, "SetNonBasicVariableValueFromStatus() shouldn't ", 0x2FuLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v13, "be called on a FREE variable.", 0x1DuLL);
LABEL_16:
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v13);
      break;
  }
}

void operations_research::glop::VariableValues::ResetAllNonBasicVariableValues(void *a1, uint64_t *a2)
{
  v4 = a1[3];
  StatusRow = operations_research::glop::VariablesInfo::GetStatusRow(v4);
  v6 = *(a1[1] + 4);
  v18 = 0;
  v7 = a1[8];
  v8 = (a1[9] - v7) >> 3;
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      a1[9] = v7 + 8 * v6;
    }
  }

  else
  {
    std::vector<double>::__append((a1 + 8), v6 - v8, &v18);
  }

  if (v6 >= 1)
  {
    v9 = 0;
    v10 = *StatusRow;
    v11 = *a2;
    v12 = ((a2[1] - *a2) >> 3);
    while (1)
    {
      v17 = *(v10 + v9);
      if ((v17 - 1) < 2)
      {
        break;
      }

      if (v17 == 3)
      {
        v14 = *(v4 + 4);
        v13 = 8 * v9;
        goto LABEL_8;
      }

      if (v17 != 4)
      {
        goto LABEL_11;
      }

      v13 = 8 * v9;
      v16 = 0;
      if (v9 < v12)
      {
        v15 = (v11 + v13);
        goto LABEL_9;
      }

LABEL_10:
      *(a1[8] + v13) = v16;
LABEL_11:
      if (++v9 == v6)
      {
        return;
      }
    }

    v13 = 8 * v9;
    v14 = *(v4 + 1);
LABEL_8:
    v15 = (v14 + v13);
LABEL_9:
    v16 = *v15;
    goto LABEL_10;
  }
}

void operations_research::glop::VariableValues::RecomputeBasicVariableValues(operations_research::glop::VariableValues *this)
{
  v2 = **(this + 1);
  *(this + 26) = *(this + 25);
  v4 = *(this + 21);
  v5 = *(this + 22);
  v6 = (this + 168);
  v7 = v2;
  v43 = 0;
  v8 = v2 << 32;
  v9 = (v5 - v4) >> 3;
  if (v2 <= v9)
  {
    if (v2 < v9)
    {
      *(this + 22) = &v4[8 * v2];
    }
  }

  else
  {
    std::vector<double>::__append(v6, v2 - v9, &v43);
    v4 = *v6;
  }

  bzero(v4, v8 >> 29);
  NotBasicBitRow = operations_research::glop::VariablesInfo::GetNotBasicBitRow(*(this + 3));
  v11 = *(NotBasicBitRow + 8);
  v12 = *(NotBasicBitRow + 16) - v11;
  v13 = v12 >> 3;
  if (!v12)
  {
    v16 = 0;
    if (!v13)
    {
      goto LABEL_25;
    }

LABEL_11:
    v17 = *(this + 8);
    v18 = *(this + 21);
    v19 = v13 - 1;
    while (1)
    {
      v20 = *(v17 + 8 * v16);
      if (v20 != 0.0)
      {
        v21 = *(this + 1);
        v22 = v21[7];
        v23 = *(v22 + 8 * v16);
        v24 = *(v22 + (((v16 << 32) + 0x100000000) >> 29));
        v25 = v24 <= v23;
        v26 = v24 - v23;
        if (!v25)
        {
          v27 = -v20;
          v28 = v21[1];
          v29 = (v21[4] + 4 * v23);
          v30 = (v28 + 8 * v23);
          do
          {
            v31 = *v30++;
            v32 = v31;
            LODWORD(v31) = *v29++;
            *(v18 + 8 * SLODWORD(v31)) = *(v18 + 8 * SLODWORD(v31)) + v27 * v32;
            --v26;
          }

          while (v26);
        }
      }

      v33 = v16 >> 6;
      if (!v12)
      {
        break;
      }

LABEL_12:
      v16 = __clz(__rbit64(v12)) | (v33 << 6);
      v12 &= v12 - 1;
    }

    while (v19 != v33)
    {
      v12 = v11[++v33];
      if (v12)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_25;
  }

  v14 = *v11;
  if (*v11)
  {
    v15 = 0;
  }

  else
  {
    if (v13 == 1)
    {
      goto LABEL_25;
    }

    v34 = 1;
    v15 = 64;
    while (1)
    {
      v14 = v11[v34];
      if (v14)
      {
        break;
      }

      ++v34;
      v15 += 64;
      if (v13 == v34)
      {
        goto LABEL_25;
      }
    }
  }

  v16 = v15 | __clz(__rbit64(v14));
  v12 = (v14 - 1) & v14;
  if (v13)
  {
    goto LABEL_11;
  }

LABEL_25:
  operations_research::glop::BasisFactorization::RightSolve(*(this + 4), v6);
  if (v7 >= 1)
  {
    v35 = *(this + 21);
    v36 = **(this + 2);
    v37 = *(this + 8);
    do
    {
      v38 = *v35++;
      v39 = v38;
      LODWORD(v38) = *v36++;
      *(v37 + 8 * v38) = v39;
      --v7;
    }

    while (v7);
  }

  v40 = *(this + 7);
  *(v40 + 120) = *(v40 + 112);
  *(v40 + 104) = 0xFFF0000000000000;
  v41 = *(v40 + 48);
  if (*(v40 + 56) != v41)
  {
    *(v40 + 56) = v41;
  }

  *(v40 + 72) = 0;
  v42 = *(v40 + 80);
  if (*(v40 + 88) != v42)
  {
    *(v40 + 88) = v42;
  }
}

double operations_research::glop::VariableValues::ComputeMaximumPrimalResidual(operations_research::glop::VariableValues *this)
{
  *(this + 26) = *(this + 25);
  v2 = **(this + 1);
  v4 = *(this + 21);
  v5 = *(this + 22);
  v6 = (this + 168);
  v25 = 0;
  v7 = v2 << 32;
  v8 = (v5 - v4) >> 3;
  if (v2 <= v8)
  {
    if (v2 < v8)
    {
      *(this + 22) = &v4[8 * v2];
    }
  }

  else
  {
    std::vector<double>::__append(v6, v2 - v8, &v25);
    v4 = *v6;
  }

  bzero(v4, v7 >> 29);
  v9 = *(this + 1);
  v10 = *(v9 + 4);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(this + 8);
    v13 = *(this + 21);
    do
    {
      v14 = *(v12 + 8 * v11);
      if (v14 != 0.0)
      {
        v15 = *(v9 + 56);
        v16 = *(v15 + 8 * v11);
        v17 = *(v15 + (((v11 << 32) + 0x100000000) >> 29));
        v18 = v17 <= v16;
        v19 = v17 - v16;
        if (!v18)
        {
          v20 = (*(v9 + 32) + 4 * v16);
          v21 = (*(v9 + 8) + 8 * v16);
          do
          {
            v22 = *v21++;
            v23 = v22;
            LODWORD(v22) = *v20++;
            *(v13 + 8 * SLODWORD(v22)) = *(v13 + 8 * SLODWORD(v22)) + v14 * v23;
            --v19;
          }

          while (v19);
        }
      }

      ++v11;
    }

    while (v11 != v10);
  }

  return operations_research::glop::InfinityNorm(v6);
}

double operations_research::glop::VariableValues::ComputeMaximumPrimalInfeasibility(operations_research::glop::VariableValues *this)
{
  v1 = *(*(this + 1) + 4);
  if (v1 < 1)
  {
    return 0.0;
  }

  v2 = *(this + 8);
  v3 = *(this + 3);
  v4 = *(v3 + 8);
  v5 = *(v3 + 32);
  result = 0.0;
  do
  {
    v7 = *v2++;
    v8 = v7;
    v9 = *v5++;
    v10 = v8 - v9;
    v11 = *v4++;
    v12 = v11 - v8;
    if (v10 >= v12)
    {
      v12 = v10;
    }

    if (result < v12)
    {
      result = v12;
    }

    --v1;
  }

  while (v1);
  return result;
}

double operations_research::glop::VariableValues::ComputeSumOfPrimalInfeasibilities(operations_research::glop::VariableValues *this)
{
  v1 = *(*(this + 1) + 4);
  if (v1 < 1)
  {
    return 0.0;
  }

  v2 = *(this + 8);
  v3 = *(this + 3);
  v4 = *(v3 + 8);
  v5 = *(v3 + 32);
  if (v1 > 3)
  {
    v6 = v1 & 0x7FFFFFFC;
    v8 = v4 + 1;
    v9 = v5 + 1;
    v10 = v2 + 1;
    result = 0.0;
    v11 = v6;
    do
    {
      v12 = v10[-1];
      v13 = vsubq_f64(v12, v9[-1]);
      v14 = vsubq_f64(*v10, *v9);
      v15 = vsubq_f64(v8[-1], v12);
      v16 = vsubq_f64(*v8, *v10);
      v17 = vmaxnmq_f64(vbslq_s8(vcgtq_f64(v15, v13), v15, v13), 0);
      v18 = vmaxnmq_f64(vbslq_s8(vcgtq_f64(v16, v14), v16, v14), 0);
      result = result + v17.f64[0] + v17.f64[1] + v18.f64[0] + v18.f64[1];
      v8 += 2;
      v9 += 2;
      v10 += 2;
      v11 -= 4;
    }

    while (v11);
    if (v6 == v1)
    {
      return result;
    }
  }

  else
  {
    v6 = 0;
    result = 0.0;
  }

  v19 = &v4->f64[v6];
  v20 = &v5->f64[v6];
  v21 = &v2->f64[v6];
  v22 = v1 - v6;
  do
  {
    v23 = *v21++;
    v24 = v23;
    v25 = *v20++;
    v26 = v24 - v25;
    v27 = *v19++;
    v28 = v27 - v24;
    if (v26 >= v28)
    {
      v28 = v26;
    }

    result = result + fmax(v28, 0.0);
    --v22;
  }

  while (v22);
  return result;
}

double operations_research::glop::VariableValues::UpdateOnPivoting(uint64_t a1, uint64_t *a2, int a3, double a4)
{
  v4 = *(a1 + 64);
  v5 = a2[4];
  v6 = (a2[5] - v5) >> 2;
  if (v6 >= 1)
  {
    v7 = **(a1 + 16);
    v8 = *a2;
    do
    {
      v9 = *v5++;
      v10 = 8 * *(v7 + 4 * v9);
      *(v4 + v10) = *(v4 + v10) - *(v8 + 8 * v9) * a4;
      --v6;
    }

    while (v6);
  }

  v11 = 8 * a3;
  result = *(v4 + v11) + a4;
  *(v4 + v11) = result;
  return result;
}

void operations_research::glop::VariableValues::UpdateGivenNonBasicVariables(uint64_t a1, int **a2, char a3)
{
  if (a3)
  {
    v5 = **(a1 + 8);
    v70 = 0;
    v6 = *(a1 + 248);
    v7 = (a1 + 248);
    v8 = (*(a1 + 256) - v6) >> 3;
    if (v5 <= v8)
    {
      if (v5 < v8)
      {
        *(a1 + 256) = v6 + 8 * v5;
      }
    }

    else
    {
      std::vector<double>::__append(a1 + 248, v5 - v8, &v70);
    }

    operations_research::glop::ScatteredVector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::ScatteredRowEntry>>::ClearSparseMask((a1 + 248));
    v12 = *a2;
    v13 = a2[1];
    if (*a2 != v13)
    {
      v14 = 0;
      while (1)
      {
        v27 = *v12;
        v28 = v27 << 32;
        v29 = 8 * v27;
        v30 = *(*(a1 + 64) + v29);
        operations_research::glop::VariableValues::SetNonBasicVariableValueFromStatus(a1, v27);
        v31 = *(*(a1 + 64) + v29) - v30;
        if (v14)
        {
          break;
        }

        if (v31 != 0.0)
        {
          v32 = *(a1 + 8);
          v33 = v32[7];
          v34 = *(v33 + v29);
          v35 = *(v33 + ((v28 + 0x100000000) >> 29));
          v36 = v35 - v34;
          if (v35 > v34)
          {
            v37 = (v32[1] + 8 * v34);
            v38 = (v32[4] + 4 * v34);
            do
            {
              v39 = *v38++;
              v40 = *v37;
              LODWORD(v70) = v39;
              v41 = v31 * v40;
              *(*(a1 + 248) + 8 * v39) = v41 + *(*(a1 + 248) + 8 * v39);
              v42 = *(a1 + 304);
              v43 = v39 >> 6;
              v44 = 1 << v39;
              v45 = *(v42 + 8 * (v39 >> 6));
              v46 = v45 & (1 << v39);
              if (v41 != 0.0 && v46 == 0)
              {
                *(v42 + 8 * v43) = v45 | v44;
                std::vector<int>::push_back[abi:ne200100](a1 + 280, &v70);
                *(a1 + 272) = 0;
              }

              ++v37;
              --v36;
            }

            while (v36);
          }
        }

        v48 = *(a1 + 280);
        v49 = *(a1 + 288);
        if (v48 == v49)
        {
LABEL_12:
          v14 = 1;
          if (++v12 == v13)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v14 = ((*(a1 + 256) - *(a1 + 248)) >> 3) * 0.8 < ((v49 - v48) >> 2);
          if (++v12 == v13)
          {
            goto LABEL_31;
          }
        }
      }

      if (v31 != 0.0)
      {
        v15 = *(a1 + 8);
        v16 = v15[7];
        v17 = *(v16 + v29);
        v18 = *(v16 + ((v28 + 0x100000000) >> 29));
        v19 = v18 <= v17;
        v20 = v18 - v17;
        if (!v19)
        {
          v21 = *v7;
          v22 = v15[1];
          v23 = (v15[4] + 4 * v17);
          v24 = (v22 + 8 * v17);
          do
          {
            v25 = *v24++;
            v26 = v25;
            LODWORD(v25) = *v23++;
            *&v21[8 * SLODWORD(v25)] = *&v21[8 * SLODWORD(v25)] + v31 * v26;
            --v20;
          }

          while (v20);
        }
      }

      goto LABEL_12;
    }

LABEL_31:
    operations_research::glop::ScatteredVector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::ScatteredRowEntry>>::ClearSparseMask((a1 + 248));
    v50 = *(a1 + 280);
    v51 = *(a1 + 288);
    if (v50 == v51 || ((*(a1 + 256) - *(a1 + 248)) >> 3) * 0.8 < ((v51 - v50) >> 2))
    {
      operations_research::glop::ScatteredVector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::ScatteredRowEntry>>::ClearSparseMask((a1 + 248));
      *(a1 + 288) = *(a1 + 280);
    }

    operations_research::glop::BasisFactorization::RightSolve(*(a1 + 32), (a1 + 248));
    v52 = *(a1 + 280);
    v53 = *(a1 + 288);
    if (v52 == v53)
    {
      v62 = v5;
      if (v5 >= 1)
      {
        v63 = *(a1 + 248);
        v64 = **(a1 + 16);
        v65 = *(a1 + 64);
        do
        {
          v66 = *v63++;
          v67 = v66;
          LODWORD(v66) = *v64++;
          *(v65 + 8 * SLODWORD(v66)) = *(v65 + 8 * SLODWORD(v66)) - v67;
          --v62;
        }

        while (v62);
      }

      v70 = 0;
      v68 = *(a1 + 248);
      v69 = (*(a1 + 256) - v68) >> 3;
      if (v5 <= v69)
      {
        if (v5 < v69)
        {
          *(a1 + 256) = &v68[8 * v5];
        }
      }

      else
      {
        std::vector<double>::__append(a1 + 248, v5 - v69, &v70);
        v68 = *v7;
      }

      bzero(v68, 8 * v5);
      operations_research::glop::VariableValues::RecomputeDualPrices(a1, 0);
    }

    else
    {
      v54 = v53 - v52;
      if (v54 >= 1)
      {
        v55 = *v7;
        v56 = **(a1 + 16);
        v57 = *(a1 + 64);
        v58 = v54;
        v59 = *(a1 + 280);
        do
        {
          v60 = *v59++;
          v61 = 8 * *(v56 + 4 * v60);
          *(v57 + v61) = *(v57 + v61) - *&v55[8 * v60];
          *&v55[8 * v60] = 0;
          --v58;
        }

        while (v58);
      }

      operations_research::glop::VariableValues::UpdateDualPrices(a1, v52, v54);
      *(a1 + 288) = *(a1 + 280);
    }
  }

  else
  {
    v9 = *a2;
    v10 = a2[1];
    if (*a2 != v10)
    {
      do
      {
        v11 = *v9++;
        operations_research::glop::VariableValues::SetNonBasicVariableValueFromStatus(a1, v11);
      }

      while (v9 != v10);
    }
  }
}

uint64_t operations_research::glop::VariableValues::RecomputeDualPrices(operations_research::glop::VariableValues *this, char a2)
{
  v4 = **(this + 1);
  v5 = *(this + 7);
  *(v5 + 120) = *(v5 + 112);
  *(v5 + 104) = 0xFFF0000000000000;
  v6 = *(v5 + 48);
  v7 = (*(v5 + 56) - v6) >> 3;
  if (v4 <= v7)
  {
    if (v4 < v7)
    {
      *(v5 + 56) = v6 + 8 * v4;
    }
  }

  else
  {
    std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(v5 + 48, v4 - v7);
  }

  v8 = v4 & ~(v4 >> 31);
  v9 = *(v5 + 80);
  *(v5 + 72) = v8;
  v10 = (v8 + 63) >> 6;
  v11 = *(v5 + 88) - v9;
  v12 = v11 >> 3;
  v37 = 0;
  if (v10 <= v11 >> 3)
  {
    if (v10 < v11 >> 3)
    {
      *(v5 + 88) = &v9[8 * v10];
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(v5 + 80, v10 - (v11 >> 3), &v37);
    v9 = *(v5 + 80);
  }

  if (v10 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  bzero(v9, 8 * v13);
  v14 = *(this + 6);
  v15 = *(this + 7);
  v15[15] = v15[14];
  v15[13] = 0x7FF0000000000000;
  *(this + 40) = a2;
  v16 = *(*this + 72);
  result = operations_research::glop::DualEdgeNorms::GetEdgeSquaredNorms(v14);
  v18 = *(this + 3);
  v19 = **(this + 2);
  v20 = *(this + 8);
  v21 = *(v18 + 8);
  v22 = *(v18 + 32);
  if (a2)
  {
    if (v4 >= 1)
    {
      for (i = 0; i != v4; ++i)
      {
        v24 = 8 * *(v19 + 4 * i);
        v25 = *(v20 + v24);
        v26 = v25 - *(v22 + v24);
        v27 = *(v21 + v24) - v25;
        if (v26 >= v27)
        {
          v27 = v26;
        }

        if (v27 > v16)
        {
          v28 = *(this + 7);
          v29 = fabs(v27) / *(result + 8 * i);
          *(*(v28 + 80) + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << i;
          *(*(v28 + 48) + 8 * i) = v29;
        }
      }
    }
  }

  else if (v4 >= 1)
  {
    for (j = 0; j != v4; ++j)
    {
      v31 = 8 * *(v19 + 4 * j);
      v32 = *(v20 + v31);
      v33 = v32 - *(v22 + v31);
      v34 = *(v21 + v31) - v32;
      if (v33 >= v34)
      {
        v34 = v33;
      }

      if (v34 > v16)
      {
        v35 = *(this + 7);
        v36 = v34 * v34 / *(result + 8 * j);
        *(*(v35 + 80) + ((j >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << j;
        *(*(v35 + 48) + 8 * j) = v36;
      }
    }
  }

  return result;
}

void operations_research::glop::VariableValues::UpdateDualPrices(operations_research::glop::VariableValues *this, int *a2, uint64_t a3)
{
  if (**(this + 1) == ((*(*(this + 7) + 56) - *(*(this + 7) + 48)) >> 3))
  {
    v6 = *(*this + 72);
    v7 = **(this + 2);
    EdgeSquaredNorms = operations_research::glop::DualEdgeNorms::GetEdgeSquaredNorms(*(this + 6));
    v9 = *(this + 8);
    v10 = *(this + 3);
    v11 = *(v10 + 8);
    v12 = *(v10 + 32);
    v13 = a3 & 0x3FFFFFFFFFFFFFFFLL;
    if (*(this + 40) == 1)
    {
      if (v13)
      {
        v14 = 4 * a3;
        do
        {
          v15 = *a2;
          v16 = 8 * *(v7 + 4 * *a2);
          v17 = *(v9 + v16);
          v18 = v17 - *(v12 + v16);
          v19 = *(v11 + v16) - v17;
          if (v18 >= v19)
          {
            v19 = v18;
          }

          v20 = *(this + 7);
          if (v19 <= v6)
          {
            *(*(v20 + 80) + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v15);
          }

          else
          {
            v21 = 8 * v15;
            v22 = *(EdgeSquaredNorms + v21);
            *(*(v20 + 80) + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
            v23 = fabs(v19) / v22;
            *(*(v20 + 48) + v21) = v23;
            if (*(v20 + 104) <= v23)
            {
              operations_research::glop::DynamicMaximum<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::UpdateTopK(v20, v15, v23);
            }
          }

          ++a2;
          v14 -= 4;
        }

        while (v14);
      }
    }

    else if (v13)
    {
      v25 = 4 * a3;
      do
      {
        v26 = *a2;
        v27 = 8 * *(v7 + 4 * *a2);
        v28 = *(v9 + v27);
        v29 = v28 - *(v12 + v27);
        v30 = *(v11 + v27) - v28;
        if (v29 >= v30)
        {
          v30 = v29;
        }

        v31 = *(this + 7);
        if (v30 <= v6)
        {
          *(*(v31 + 80) + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v26);
        }

        else
        {
          v32 = 8 * v26;
          v33 = *(EdgeSquaredNorms + v32);
          *(*(v31 + 80) + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
          v34 = v30 * v30 / v33;
          *(*(v31 + 48) + v32) = v34;
          if (*(v31 + 104) <= v34)
          {
            operations_research::glop::DynamicMaximum<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::UpdateTopK(v31, v26, v34);
          }
        }

        ++a2;
        v25 -= 4;
      }

      while (v25);
    }
  }

  else
  {
    v24 = *(this + 40);

    operations_research::glop::VariableValues::RecomputeDualPrices(this, v24);
  }
}

double operations_research::glop::VariablesInfo::VariablesInfo(operations_research::glop::VariablesInfo *this, const operations_research::glop::CompactSparseMatrix *a2)
{
  *this = a2;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 20) = 0;
  *(this + 46) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 24) = 0;
  *(this + 54) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 62) = 0;
  *(this + 30) = 0;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 70) = 0;
  *(this + 34) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 78) = 0;
  *(this + 38) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 176) = 1;
  return result;
}

uint64_t operations_research::glop::VariablesInfo::LoadBoundsAndReturnTrueIfUnchanged(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a1 + 4);
  v9 = *(a1 + 8);
  v7 = (a1 + 8);
  v8 = v9;
  v10 = *(a1 + 16);
  v11 = *a2;
  v12 = *(a2 + 8);
  if (v10 - v9 == v12 - v11)
  {
    if (v8 == v10)
    {
LABEL_6:
      v16 = *(a1 + 32);
      v15 = *(a1 + 40);
      v17 = *a3;
      if (v15 - v16 == *(a3 + 8) - *a3)
      {
        if (v16 == v15)
        {
          return 1;
        }

        while (*v16 == *v17)
        {
          ++v16;
          v17 += 8;
          if (v16 == v15)
          {
            return 1;
          }
        }
      }
    }

    else
    {
      v14 = v11;
      while (*v8 == *v14)
      {
        ++v8;
        ++v14;
        if (v8 == v10)
        {
          goto LABEL_6;
        }
      }
    }
  }

  if (v7 != a2)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v7, v11, v12, (v12 - v11) >> 3);
  }

  if (a1 + 32 != a3)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a1 + 32), *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  }

  v20 = *(a1 + 128);
  v19 = *(a1 + 136);
  if (v6 <= &v19[-v20])
  {
    if (v6 < &v19[-v20])
    {
      *(a1 + 136) = &v6[v20];
    }

    if (v6 < 1)
    {
      return 0;
    }
  }

  else
  {
    v21 = *(a1 + 144);
    if (v21 - v19 < (v6 - &v19[-v20]))
    {
      if ((v6 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v22 = &v6[v20];
    bzero(v19, v6 - &v19[-v20]);
    *(a1 + 136) = v22;
    if (v6 < 1)
    {
      return 0;
    }
  }

  v23 = *(a1 + 8);
  v24 = *(a1 + 32);
  v25 = *(a1 + 128);
  if (v6 < 8)
  {
    v26 = 0;
    goto LABEL_37;
  }

  if (v6 >= 0x10)
  {
    v42 = vdupq_n_s64(0xFFF0000000000000);
    v26 = (v6 & 0x7FFFFFF0);
    v43 = vdupq_n_s64(0x7FF0000000000000uLL);
    v44.i64[0] = 0x303030303030303;
    v44.i64[1] = 0x303030303030303;
    v45.i64[0] = 0x404040404040404;
    v45.i64[1] = 0x404040404040404;
    v46.i64[0] = 0x101010101010101;
    v46.i64[1] = 0x101010101010101;
    v47.i64[0] = 0x202020202020202;
    v47.i64[1] = 0x202020202020202;
    v48 = v26;
    v49 = *(a1 + 128);
    v50 = *(a1 + 8);
    v51 = *(a1 + 32);
    do
    {
      v52 = v50[1];
      v53 = v50[2];
      v54 = v50[3];
      v55 = v50[4];
      v56 = v50[5];
      v57 = v50[6];
      v58 = v50[7];
      v59 = v51[1];
      v60 = v51[2];
      v61 = v51[3];
      v62 = v51[4];
      v63 = v51[5];
      v64 = v51[6];
      v65 = v51[7];
      v66 = vuzp1q_s8(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*v51, v43), vceqq_f64(v59, v43)), vuzp1q_s32(vceqq_f64(v60, v43), vceqq_f64(v61, v43)))), vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v62, v43), vceqq_f64(v63, v43)), vuzp1q_s32(vceqq_f64(v64, v43), vceqq_f64(v65, v43)))));
      v67 = vuzp1q_s8(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*v50, v42), vceqq_f64(v52, v42)), vuzp1q_s32(vceqq_f64(v53, v42), vceqq_f64(v54, v42)))), vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v55, v42), vceqq_f64(v56, v42)), vuzp1q_s32(vceqq_f64(v57, v42), vceqq_f64(v58, v42)))));
      *v49++ = vorrq_s8(vandq_s8(vbslq_s8(v67, vbslq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*v50, *v51), vceqq_f64(v52, v59)), vuzp1q_s32(vceqq_f64(v53, v60), vceqq_f64(v54, v61))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(v55, v62), vceqq_f64(v56, v63)), vuzp1q_s32(vceqq_f64(v57, v64), vceqq_f64(v58, v65)))), v45, v44), v47), v66), vandq_s8(vbicq_s8(v67, v66), v46));
      v51 += 8;
      v50 += 8;
      v48 -= 16;
    }

    while (v48);
    if (v26 == v6)
    {
      return 0;
    }

    if ((v6 & 8) == 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;
  v26 = (v6 & 0x7FFFFFF8);
  v28 = (v24 + 8 * v27);
  v29 = (v23 + 8 * v27);
  v30 = &v27[v25];
  v31 = v27 - v26;
  v32 = vdupq_n_s64(0xFFF0000000000000);
  v33 = vdupq_n_s64(0x7FF0000000000000uLL);
  do
  {
    v34 = v29[1];
    v35 = v29[2];
    v36 = v29[3];
    v37 = v28[1];
    v38 = v28[2];
    v39 = v28[3];
    v40 = vmovn_s16(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*v28, v33), vceqq_f64(v37, v33)), vuzp1q_s32(vceqq_f64(v38, v33), vceqq_f64(v39, v33)))));
    v41 = vmovn_s16(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*v29, v32), vceqq_f64(v34, v32)), vuzp1q_s32(vceqq_f64(v35, v32), vceqq_f64(v36, v32)))));
    *v30++ = vorr_s8(vand_s8(vbsl_s8(v41, vbsl_s8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*v29, *v28), vceqq_f64(v34, v37)), vuzp1q_s32(vceqq_f64(v35, v38), vceqq_f64(v36, v39)))), 0x404040404040404, 0x303030303030303), 0x202020202020202), v40), vand_s8(vbic_s8(v41, v40), 0x101010101010101));
    v28 += 4;
    v29 += 4;
    v31 += 8;
  }

  while (v31);
  if (v26 != v6)
  {
LABEL_37:
    v68 = (v24 + 8 * v26);
    v69 = (v23 + 8 * v26);
    v70 = &v26[v25];
    v71 = (v6 - v26);
    do
    {
      v73 = *v68;
      if (*v69 == -INFINITY)
      {
        v72 = 2 * (v73 != INFINITY);
      }

      else if (v73 == INFINITY)
      {
        v72 = 1;
      }

      else if (*v69 == v73)
      {
        v72 = 4;
      }

      else
      {
        v72 = 3;
      }

      *v70++ = v72;
      ++v68;
      ++v69;
      --v71;
    }

    while (v71);
  }

  return 0;
}