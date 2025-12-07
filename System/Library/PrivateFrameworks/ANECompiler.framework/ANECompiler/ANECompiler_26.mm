void sub_23CA554E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v40 = *v39;
  if (*v39)
  {
    *(v39 + 8) = v40;
    v41 = a1;
    operator delete(v40);
    a1 = v41;
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::IntervalsRepository>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntervalsRepository>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntervalsRepository>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::IntervalsRepository>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operations_research::sat::Model::MyNew<operations_research::sat::IntervalsRepository>(a1);
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::IntervalsRepository>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::IntervalsRepository>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

void operations_research::sat::LoadBooleanSymmetries(operations_research::sat *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v44[6] = *MEMORY[0x277D85DE8];
  operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  if (*(this + 18))
  {
    v4 = *(this + 18);
  }

  else
  {
    v4 = &operations_research::sat::_SymmetryProto_default_instance_;
  }

  if (*(v4 + 6))
  {
    v5 = *(this + 8);
    if (v5)
    {
      if ((v5 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v6 = *(this + 14);
    if (v6 >= 1)
    {
      v7 = *(this + 6);
      if (v7)
      {
        v15 = 0;
        v16 = v7 + 7;
        do
        {
          v17 = *(v16 + 8 * v15);
          if (*(v17 + 60) == 12)
          {
            v18 = *(v17 + 48);
            if (*(v18 + 64) >= 3)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *(v18 + 24);
                v21 = 4 * v19;
                do
                {
                  v23 = *v20++;
                  v22 = v23;
                  if (~v23 > v23)
                  {
                    v22 = ~v22;
                  }

                  *((v22 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v22);
                  v21 -= 4;
                }

                while (v21);
              }
            }
          }

          ++v15;
        }

        while (v15 != v6);
      }

      else if (*(v7 + 60) == 12)
      {
        v8 = 0;
LABEL_12:
        v9 = *(v7 + 48);
        if (*(v9 + 64) >= 3)
        {
          v10 = *(v9 + 16);
          if (v10)
          {
            v11 = *(v9 + 24);
            v12 = 4 * v10;
            do
            {
              v14 = *v11++;
              v13 = v14;
              if (~v14 > v14)
              {
                v13 = ~v13;
              }

              *((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v13);
              v12 -= 4;
            }

            while (v12);
          }
        }

        while (++v8 != v6)
        {
          if (*(v7 + 60) == 12)
          {
            goto LABEL_12;
          }
        }
      }
    }

    v24 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
    v25 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SymmetryPropagator>(a2);
    operations_research::sat::SatSolver::AddPropagator(v24, v25);
    v26 = v4[2];
    if (v26)
    {
      v27 = (v26 + 7);
    }

    else
    {
      v27 = v4 + 2;
    }

    v28 = *(v4 + 6);
    if (v28)
    {
      v37 = &v27[v28];
      do
      {
        v38 = v27;
        v39 = *v27;
        v29 = *(*v27 + 4);
        if (!v29)
        {
LABEL_41:
          operator new();
        }

        v30 = v39[3];
        v31 = 4 * v29;
        while (((*((*v30 >> 3) & 0x1FFFFFFFFFFFFFF8) >> *v30) & 1) != 0)
        {
          v30 = (v30 + 4);
          v31 -= 4;
          if (!v31)
          {
            goto LABEL_41;
          }
        }

        v27 = v38 + 1;
      }

      while (v38 + 1 != v37);
    }

    v32 = v25;
    if (*operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(a2) == 1)
    {
      v33 = operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(a2);
      v44[0] = "Added ";
      v44[1] = 6;
      v35 = absl::lts_20240722::numbers_internal::FastIntToBuffer(((*(v32 + 6) - *(v32 + 5)) >> 3), v43, v34);
      v42[0] = v43;
      v42[1] = v35 - v43;
      v41[0] = " symmetry to the SAT solver.";
      v41[1] = 28;
      absl::lts_20240722::StrCat(v44, v42, v41, &__p);
      operations_research::SolverLogger::LogInfo(v33, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 371, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_23CA56080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if (!v27)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v27)
  {
    goto LABEL_3;
  }

  operator delete(v27);
  _Unwind_Resume(exception_object);
}

operations_research::sat::SymmetryPropagator *operations_research::sat::Model::GetOrCreate<operations_research::sat::SymmetryPropagator>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SymmetryPropagator>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SymmetryPropagator>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::SymmetryPropagator>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::SymmetryPropagator>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::SymmetryPropagator>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

void operations_research::sat::ExtractEncoding(operations_research::sat *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v192 = *MEMORY[0x277D85DE8];
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
  v154 = operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(a2);
  v161 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  v163 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  if (*(v163 + 528))
  {
    return;
  }

  v7 = *(this + 8);
  v167 = 0;
  v168 = 0;
  v166 = 0;
  *&v184 = &v166;
  BYTE8(v184) = 0;
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v8 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ImpliedBounds>(a2);
  v9 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ProductDetector>(a2);
  v164 = v6;
  v11 = *(this + 6);
  if (v11)
  {
    v12 = (v11 + 7);
  }

  else
  {
    v12 = this + 48;
  }

  v13 = *(this + 14);
  v160 = a2;
  if (v13)
  {
    v157 = v9;
    v14 = 0;
    v15 = (this + 24);
    v16 = 8 * v13;
    while (1)
    {
      v18 = *v12;
      if (*(*v12 + 60) != 12)
      {
        goto LABEL_15;
      }

      if (*(v18 + 16) != 1)
      {
        goto LABEL_15;
      }

      v19 = *(v18 + 48);
      if (*(v19 + 16) != 1)
      {
        goto LABEL_15;
      }

      v20 = **(v18 + 24);
      v21 = ~v20 <= v20 ? **(v18 + 24) : ~v20;
      HIDWORD(v23) = *(v5[6] + 4 * v21);
      LODWORD(v23) = **(v18 + 24);
      v22 = v23 >> 31;
      if ((*(*(*(v163 + 27) + 24) + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> ((v23 >> 31) & 0x3F ^ 1)))
      {
        goto LABEL_15;
      }

      v24 = **(v19 + 24);
      if (~v24 <= v24)
      {
        v25 = **(v19 + 24);
      }

      else
      {
        v25 = ~v24;
      }

      if (*v15)
      {
        v26 = *v15 + 8 * v25 + 7;
      }

      else
      {
        v26 = v15;
      }

      operations_research::Domain::FromFlatSpanOfIntervals(*(*v26 + 24), *(*v26 + 16), v179, v10);
      v28 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      if (*(v18 + 60) == 12)
      {
        v28 = *(v18 + 48);
      }

      operations_research::Domain::FromFlatSpanOfIntervals(v28[9], *(v28 + 16), &v184, v27);
      v29 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      if (*(v18 + 60) == 12)
      {
        v29 = *(v18 + 48);
      }

      v30 = *v29[6];
      if (v24 >= 0)
      {
        v31 = v30;
      }

      else
      {
        v31 = -v30;
      }

      operations_research::Domain::InverseMultiplicationBy(v178, &v184, v31);
      if (v184)
      {
        operator delete(*(&v184 + 1));
      }

      if (operations_research::Domain::IsEmpty(v178))
      {
        if (operations_research::sat::SatSolver::AddUnitClause(v163, v22 ^ 1u))
        {
          v32 = 3;
        }

        else
        {
          v32 = 1;
        }

        if (v178[0].__r_.__value_.__s.__data_[0])
        {
          goto LABEL_43;
        }

        goto LABEL_44;
      }

      if ((v178[0].__r_.__value_.__r.__words[0] & 0x1FFFFFFFELL) == 2)
      {
        v33 = operations_research::Domain::Max(v178);
        if (v33 >= operations_research::Domain::Max(v179))
        {
          v34 = operations_research::Domain::Min(v178);
          if (v34 > operations_research::Domain::Min(v179))
          {
            v156 = v15;
            if (~v25 <= v25)
            {
              v35 = v25;
            }

            else
            {
              v35 = ~v25;
            }

            v36 = *(*v5 + 4 * v35);
            v37 = operations_research::Domain::Min(v178);
            v44 = v14;
            v45 = v14 >> 5;
            if (((v14 >> 5) + 1) >> 59)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (v14 >> 5 != -1)
            {
              if (!(((v14 >> 5) + 1) >> 59))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v48 = 32 * v45;
            *v48 = v18;
            *(v48 + 8) = v22;
            *(v48 + 16) = v36 ^ (v25 >> 31);
            *(v48 + 24) = v37;
            v14 = 32 * v45 + 32;
            memcpy(0, 0, v44);
LABEL_71:
            v15 = v156;
            goto LABEL_72;
          }
        }

        v38 = operations_research::Domain::Min(v178);
        if (v38 <= operations_research::Domain::Min(v179))
        {
          v39 = operations_research::Domain::Max(v178);
          if (v39 < operations_research::Domain::Max(v179))
          {
            v156 = v15;
            if (~v25 <= v25)
            {
              v40 = v25;
            }

            else
            {
              v40 = ~v25;
            }

            v41 = *(*v5 + 4 * v40);
            v42 = operations_research::Domain::Max(v178);
            if (v42 >= 0x8000000000000002)
            {
              v43 = -v42;
            }

            else
            {
              v43 = 0x7FFFFFFFFFFFFFFFLL;
            }

            v46 = v14;
            v47 = v14 >> 5;
            if ((v47 + 1) >> 59)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (v47 != -1)
            {
              if (!((v47 + 1) >> 59))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            MEMORY[0xFFFFFFFFFFFFFFE0] = v18;
            MEMORY[0xFFFFFFFFFFFFFFE8] = v22;
            MEMORY[0xFFFFFFFFFFFFFFF0] = v41 ^ (v25 >= 0);
            MEMORY[0xFFFFFFFFFFFFFFF8] = v43;
            v14 = 0;
            memcpy(0, 0, v46);
            goto LABEL_71;
          }
        }
      }

LABEL_72:
      v49 = operations_research::Domain::Min(v178);
      if (v49 > operations_research::Domain::Min(v179))
      {
        if (~v25 <= v25)
        {
          v50 = v25;
        }

        else
        {
          v50 = ~v25;
        }

        v51 = *(*v5 + 4 * v50);
        v52 = operations_research::Domain::Min(v178);
        operations_research::sat::ImpliedBounds::Add(v8, v22, v51 ^ (v25 >> 31), v52);
      }

      v53 = operations_research::Domain::Max(v178);
      if (v53 < operations_research::Domain::Max(v179))
      {
        if (~v25 <= v25)
        {
          v54 = v25;
        }

        else
        {
          v54 = ~v25;
        }

        v55 = *(*v5 + 4 * v54);
        v56 = operations_research::Domain::Max(v178);
        if (v56 >= 0x8000000000000002)
        {
          v57 = -v56;
        }

        else
        {
          v57 = 0x7FFFFFFFFFFFFFFFLL;
        }

        operations_research::sat::ImpliedBounds::Add(v8, v22, v55 ^ (v25 >= 0), v57);
      }

      operations_research::Domain::IntersectionWith(&v165, v179, v178);
      if (!operations_research::Domain::IsEmpty(&v165))
      {
        v58 = operations_research::Domain::Min(&v165);
        if (v58 == operations_research::Domain::Max(&v165))
        {
          if (!operations_research::Domain::Min(&v165))
          {
            if (~v25 <= v25)
            {
              v59 = v25;
            }

            else
            {
              v59 = ~v25;
            }

            operations_research::sat::ProductDetector::ProcessConditionalZero(v157, v22, *(*v5 + 4 * v59) ^ (v25 >> 31));
          }

          v60 = v166;
          *&v184 = v18;
          DWORD2(v184) = v22;
          *&v185 = operations_research::Domain::Min(&v165);
          BYTE8(v185) = 1;
          std::vector<operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper,std::allocator<operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper>>::push_back[abi:ne200100](v60 + 24 * v25, &v184);
        }
      }

      if (v165.__r_.__value_.__s.__data_[0])
      {
        operator delete(v165.__r_.__value_.__l.__size_);
      }

      operations_research::Domain::Complement(&v184, v178);
      operations_research::Domain::IntersectionWith(&v165, v179, &v184);
      if (v184)
      {
        operator delete(*(&v184 + 1));
      }

      if (!operations_research::Domain::IsEmpty(&v165))
      {
        v61 = operations_research::Domain::Min(&v165);
        if (v61 == operations_research::Domain::Max(&v165))
        {
          v62 = v166;
          *&v184 = v18;
          DWORD2(v184) = v22;
          *&v185 = operations_research::Domain::Min(&v165);
          BYTE8(v185) = 0;
          std::vector<operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper,std::allocator<operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper>>::push_back[abi:ne200100](v62 + 24 * v25, &v184);
        }
      }

      if (v165.__r_.__value_.__s.__data_[0])
      {
        operator delete(v165.__r_.__value_.__l.__size_);
      }

      v32 = 0;
      if (v178[0].__r_.__value_.__s.__data_[0])
      {
LABEL_43:
        operator delete(v178[0].__r_.__value_.__l.__size_);
      }

LABEL_44:
      if (v179[0])
      {
        operator delete(v179[1]);
      }

      if (v32 != 3 && v32 != 0)
      {
        goto LABEL_209;
      }

LABEL_15:
      v12 += 8;
      v16 -= 8;
      if (!v16)
      {
        goto LABEL_105;
      }
    }
  }

  v14 = 0;
LABEL_105:
  v63 = v14 >> 5;
  v64 = 126 - 2 * __clz(v14 >> 5);
  if (v14)
  {
    v65 = v64;
  }

  else
  {
    v65 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::InequalityDetectionHelper *,false>(0, v14, v65, 1, v10);
  if (v63 < 2)
  {
    v67 = 0;
  }

  else
  {
    v67 = 0;
    v68 = 2;
    for (i = 1; i < v63; i = v68++)
    {
      v147 = 32 * (v68 - 2);
      v148 = 32 * i;
      if ((*(v147 + 8) ^ *(32 * i + 8)) == 1)
      {
        v149 = *(32 * (v68 - 2) + 0x10);
        v66 = *(32 * (v68 - 2) + 0x18);
        v150 = *(v161 + 5);
        v151 = 8 * v149;
        if (v66 > *(v150 + v151) && v66 <= -*(v150 + (v151 ^ 8)))
        {
          v152 = *(v148 + 24);
          v153 = (*(v148 + 16) << 32) >> 29;
          if (v152 > *(v150 + v153) && v152 <= -*(v150 + (v153 ^ 8)))
          {
            operations_research::sat::IntegerEncoder::Canonicalize(v164, v149, v66, &v184);
            operations_research::sat::IntegerEncoder::Canonicalize(v164, *(v148 + 16), *(v148 + 24), v179);
            if (v184 == v180.n128_u32[0] && *(&v184 + 1) == v180.n128_u64[1])
            {
              operations_research::sat::IntegerEncoder::AssociateToIntegerLiteral(v164, *(32 * (v68 - 2) + 8), *(32 * (v68 - 2) + 0x10), *(32 * (v68 - 2) + 0x18));
              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::find_or_prepare_insert<operations_research::sat::ConstraintProto const*>(v5 + 15, v147, v178);
              if (v178[0].__r_.__value_.__s.__data_[16] == 1)
              {
                *v178[0].__r_.__value_.__l.__size_ = *v147;
              }

              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::find_or_prepare_insert<operations_research::sat::ConstraintProto const*>(v5 + 15, v148, v178);
              if (v178[0].__r_.__value_.__s.__data_[16] == 1)
              {
                *v178[0].__r_.__value_.__l.__size_ = *v148;
              }

              v67 = (v67 + 1);
            }
          }
        }
      }
    }
  }

  if (v14)
  {
    v70 = 0;
    v71 = 0;
    while (1)
    {
      v72 = v71[1];
      v184 = *v71;
      v185 = v72;
      v73 = v5[15];
      if (v73 > 1)
      {
        break;
      }

      if (v5[16] < 2uLL || v5[17] != v184)
      {
        goto LABEL_118;
      }

LABEL_114:
      v71 += 2;
      if (v71 == v14)
      {
        if (*v154 == 1)
        {
          v89 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v67, &v180, v66);
          v179[0] = &v180;
          v179[1] = (v89 - &v180);
          v91 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v70, &v178[0].__r_.__value_.__s.__data_[16], v90);
          v178[0].__r_.__value_.__r.__words[0] = &v178[0].__r_.__value_.__r.__words[2];
          v178[0].__r_.__value_.__l.__size_ = v91 - &v178[0].__r_.__value_.__r.__words[2];
          *&v184 = "[Encoding] ";
          *(&v184 + 1) = 11;
          v185 = *v179;
          v186 = " literals associated to VAR >= value, and ";
          v187 = 42;
          v188 = &v178[0].__r_.__value_.__s.__data_[16];
          v189 = v91 - &v178[0].__r_.__value_.__r.__words[2];
          v190 = " half-associations.";
          v191 = 19;
          absl::lts_20240722::strings_internal::CatPieces(&v184, 5, &v165);
          operations_research::SolverLogger::LogInfo(v154, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 566, &v165);
          if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v165.__r_.__value_.__l.__data_);
          }
        }

        goto LABEL_137;
      }
    }

    v77 = 0;
    _X11 = v5[17];
    v79 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v184) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v184))) + v184;
    v80 = ((v79 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v79);
    v81 = vdup_n_s8(v80 & 0x7F);
    __asm { PRFM            #4, [X11] }

    v86 = ((_X11 >> 12) ^ (v80 >> 7)) & v73;
    v87 = *(_X11 + v86);
    v88 = vceq_s8(v87, v81);
    if (!v88)
    {
      goto LABEL_126;
    }

    do
    {
LABEL_124:
      if (*(v5[18] + 8 * ((v86 + (__clz(__rbit64(v88)) >> 3)) & v73)) == v184)
      {
        goto LABEL_114;
      }

      v88 &= ((v88 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v88);
LABEL_126:
    while (!*&vceq_s8(v87, 0x8080808080808080))
    {
      v77 += 8;
      v86 = (v77 + v86) & v73;
      v87 = *(_X11 + v86);
      v88 = vceq_s8(v87, v81);
      if (v88)
      {
        goto LABEL_124;
      }
    }

LABEL_118:
    v74 = DWORD2(v184);
    AssociatedLiteral = operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(v164, v185, *(&v185 + 1));
    v181 = &unk_284F3D130;
    v182 = v74 | (AssociatedLiteral << 32);
    v183 = &v181;
    v76 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v160);
    operations_research::sat::SatSolver::AddBinaryClause(v76, v182 ^ 1, SHIDWORD(v182));
    if (v183 == &v181)
    {
      (*(*v183 + 4))(v183);
      if (*(v163 + 528))
      {
        goto LABEL_209;
      }
    }

    else
    {
      if (v183)
      {
        (*(*v183 + 5))();
      }

      if (*(v163 + 528))
      {
        goto LABEL_209;
      }
    }

    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::find_or_prepare_insert<operations_research::sat::ConstraintProto const*>(v5 + 15, &v184, v179);
    if (v180.n128_u8[0] == 1)
    {
      *v179[1] = v184;
    }

    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::find_or_prepare_insert<operations_research::sat::ConstraintProto const*>(v5 + 19, &v184, v179);
    if (v180.n128_u8[0] == 1)
    {
      *v179[1] = v184;
    }

    v70 = (v70 + 1);
    goto LABEL_114;
  }

LABEL_137:
  v92 = v166;
  if (v167 != v166)
  {
    v93 = 0;
    v162 = 0;
    v94 = 0;
    v158 = 0;
    v159 = 0;
    v95 = 0;
    while (1)
    {
      v96 = &v92[24 * v93];
      v97 = v96[1];
      v98 = 126 - 2 * __clz((v97 - *v96) >> 5);
      v99 = v97 == *v96 ? 0 : v98;
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper *,false>(*v96, v97, v99, 1);
      if (*v96 != v96[1])
      {
        break;
      }

LABEL_140:
      v93 = ++v95;
      v92 = v166;
      if (0xAAAAAAAAAAAAAAABLL * ((v167 - v166) >> 3) <= v95)
      {
        goto LABEL_196;
      }
    }

    v184 = xmmword_23CE306D0;
    v100 = *(*v5 + 4 * v93);
    v102 = *v96;
    v101 = v96[1];
    if ((v101 - *v96) >= 0x21)
    {
      v103 = 2;
      v104 = 1;
      do
      {
        v105 = v103 - 2;
        v106 = &v102[2 * v105];
        v107 = v106[1].n128_i64[0];
        v108 = &v102[2 * v104];
        if (v107 == v108[1].n128_u64[0])
        {
          v109 = v106->n128_u32[2];
          if ((v109 ^ v108->n128_u32[2]) == 1 && v106[1].n128_u8[8] && (v108[1].n128_u8[8] & 1) == 0)
          {
            operations_research::sat::IntegerEncoder::AssociateToIntegerEqualValue(v164, v109, v100, v107);
            v110 = &(*v96)[2 * v105];
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::find_or_prepare_insert<operations_research::sat::ConstraintProto const*>(v5 + 15, v110, v179);
            if (v180.n128_u8[0] == 1)
            {
              *v179[1] = *v110;
            }

            v111 = &(*v96)[2 * v104];
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::find_or_prepare_insert<operations_research::sat::ConstraintProto const*>(v5 + 15, v111, v179);
            if (v180.n128_u8[0] == 1)
            {
              *v179[1] = *v111;
            }

            v112 = &(*v96)[2 * v105];
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find_or_prepare_insert<long long>(&v184, (v112 + 16), v179);
            if (v180.n128_u8[0] == 1)
            {
              *v179[1] = *(v112 + 16);
            }

            ++v162;
            v102 = *v96;
            v101 = v96[1];
          }
        }

        v104 = v103++;
      }

      while (v104 < (v101 - v102) >> 5);
    }

    v113 = *(v163 + 528);
    if (v113)
    {
      goto LABEL_162;
    }

    v155 = *(v163 + 528);
    if (v102 == v101)
    {
LABEL_161:
      IsFullyEncoded = operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(v164, v100);
      v159 += IsFullyEncoded ^ 1;
      v158 += IsFullyEncoded;
      v113 = v155;
LABEL_162:
      if (v184 >= 2)
      {
        operator delete((v185 - (BYTE8(v184) & 1) - 8));
      }

      if ((v113 & 1) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_209;
    }

    while (1)
    {
      v115 = v102[1];
      *v179 = *v102;
      v180 = v115;
      v116 = v5[15];
      if (v116 > 1)
      {
        v120 = 0;
        _X11 = v5[17];
        v122 = v179[0] + ((((v179[0] + &absl::lts_20240722::hash_internal::MixingHashState::kSeed) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v179[0] + &absl::lts_20240722::hash_internal::MixingHashState::kSeed)));
        v123 = ((v122 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v122);
        v124 = vdup_n_s8(v123 & 0x7F);
        __asm { PRFM            #4, [X11] }

        v126 = ((_X11 >> 12) ^ (v123 >> 7)) & v116;
        v127 = *(_X11 + v126);
        v128 = vceq_s8(v127, v124);
        if (!v128)
        {
          goto LABEL_176;
        }

LABEL_174:
        while (*(v5[18] + 8 * ((v126 + (__clz(__rbit64(v128)) >> 3)) & v116)) != v179[0])
        {
          v128 &= ((v128 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v128)
          {
LABEL_176:
            while (!*&vceq_s8(v127, 0x8080808080808080))
            {
              v120 += 8;
              v126 = (v120 + v126) & v116;
              v127 = *(_X11 + v126);
              v128 = vceq_s8(v127, v124);
              if (v128)
              {
                goto LABEL_174;
              }
            }

            goto LABEL_169;
          }
        }

        goto LABEL_165;
      }

      if (v5[16] < 2uLL || v5[17] != v179[0])
      {
        break;
      }

LABEL_165:
      v102 += 2;
      if (v102 == v101)
      {
        goto LABEL_161;
      }
    }

LABEL_169:
    if (v180.n128_u8[8] == 1)
    {
      v117 = LODWORD(v179[1]);
      v118 = operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(v164, v100, v180.n128_i64[0]);
      v175 = &unk_284F3D130;
      v176 = v117 | (v118 << 32);
      v177 = &v175;
      v119 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v160);
      operations_research::sat::SatSolver::AddBinaryClause(v119, v176 ^ 1, SHIDWORD(v176));
      if (v177 == &v175)
      {
        (*(*v177 + 4))(v177);
      }

      else if (v177)
      {
        (*(*v177 + 5))();
      }

      v132 = LODWORD(v179[1]);
      if (v180.n128_i64[0] >= 0x8000000000000002)
      {
        v133 = -v180.n128_u64[0];
      }

      else
      {
        v133 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v134 = operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(v164, v100 ^ 1u, v133);
      v172 = &unk_284F3D130;
      v173 = v132 | (v134 << 32);
      v174 = &v172;
      v135 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v160);
      operations_research::sat::SatSolver::AddBinaryClause(v135, v173 ^ 1, SHIDWORD(v173));
      v131 = v174;
      if (v174 == &v172)
      {
        (*(*v174 + 4))(v174);
        goto LABEL_191;
      }

      if (!v174)
      {
LABEL_191:
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::find_or_prepare_insert<operations_research::sat::ConstraintProto const*>(v5 + 15, v179, v178);
        if (v178[0].__r_.__value_.__s.__data_[16] == 1)
        {
          *v178[0].__r_.__value_.__l.__size_ = v179[0];
        }

        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::find_or_prepare_insert<operations_research::sat::ConstraintProto const*>(v5 + 19, v179, v178);
        if (v178[0].__r_.__value_.__s.__data_[16] == 1)
        {
          *v178[0].__r_.__value_.__l.__size_ = v179[0];
        }

        v94 = (v94 + 1);
        goto LABEL_165;
      }
    }

    else
    {
      LiteralAssociatedToEquality = operations_research::sat::IntegerEncoder::GetOrCreateLiteralAssociatedToEquality(v164, v100, v180.n128_i64[0]);
      v169 = &unk_284F3D130;
      v170 = LODWORD(v179[1]) | ((LiteralAssociatedToEquality ^ 1u) << 32);
      v171 = &v169;
      v130 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v160);
      operations_research::sat::SatSolver::AddBinaryClause(v130, v170 ^ 1, SHIDWORD(v170));
      v131 = v171;
      if (v171 == &v169)
      {
        (*(*v171 + 4))(v171);
        goto LABEL_191;
      }

      if (!v171)
      {
        goto LABEL_191;
      }
    }

    (*(*v131 + 5))(v131);
    goto LABEL_191;
  }

  v159 = 0;
  v158 = 0;
  v94 = 0;
  v162 = 0;
LABEL_196:
  if ((v162 > 0 || v94 >= 1) && *v154 == 1)
  {
    v136 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v162, &v180, v66);
    v179[0] = &v180;
    v179[1] = (v136 - &v180);
    v138 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v94, &v178[0].__r_.__value_.__s.__data_[16], v137);
    v178[0].__r_.__value_.__r.__words[0] = &v178[0].__r_.__value_.__r.__words[2];
    v178[0].__r_.__value_.__l.__size_ = v138 - &v178[0].__r_.__value_.__r.__words[2];
    *&v184 = "[Encoding] ";
    *(&v184 + 1) = 11;
    v185 = *v179;
    v186 = " literals associated to VAR == value, and ";
    v187 = 42;
    v188 = &v178[0].__r_.__value_.__s.__data_[16];
    v189 = v138 - &v178[0].__r_.__value_.__r.__words[2];
    v190 = " half-associations.";
    v191 = 19;
    absl::lts_20240722::strings_internal::CatPieces(&v184, 5, &v165);
    operations_research::SolverLogger::LogInfo(v154, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 653, &v165);
    if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v165.__r_.__value_.__l.__data_);
    }
  }

  if (v158 >= 1 && *v154 == 1)
  {
    *&v184 = "[Encoding] num_fully_encoded_variables:";
    *(&v184 + 1) = 39;
    v139 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v158, &v180, v66);
    v179[0] = &v180;
    v179[1] = (v139 - &v180);
    absl::lts_20240722::StrCat(&v184, v179, v178);
    operations_research::SolverLogger::LogInfo(v154, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 657, v178);
    if (SHIBYTE(v178[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v178[0].__r_.__value_.__l.__data_);
    }
  }

  if (v159 >= 1 && *v154 == 1)
  {
    *&v184 = "[Encoding] num_partially_encoded_variables:";
    *(&v184 + 1) = 43;
    v140 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v159, &v180, v66);
    v179[0] = &v180;
    v179[1] = (v140 - &v180);
    absl::lts_20240722::StrCat(&v184, v179, v178);
    operations_research::SolverLogger::LogInfo(v154, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 661, v178);
    if (SHIBYTE(v178[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v178[0].__r_.__value_.__l.__data_);
    }
  }

LABEL_209:
  v141 = v166;
  if (v166)
  {
    v142 = v167;
    v143 = v166;
    if (v167 != v166)
    {
      v144 = v167;
      do
      {
        v146 = *(v144 - 3);
        v144 -= 24;
        v145 = v146;
        if (v146)
        {
          *(v142 - 2) = v145;
          operator delete(v145);
        }

        v142 = v144;
      }

      while (v144 != v141);
      v143 = v166;
    }

    v167 = v141;
    operator delete(v143);
  }
}

void sub_23CA57764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, void *a54)
{
  if (a44)
  {
    operator delete(__p);
  }

  if (a53)
  {
    operator delete(a54);
  }

  if (a21)
  {
    operator delete(a21);
  }

  std::vector<std::vector<int>>::~vector[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::ImpliedBounds>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ImpliedBounds>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ImpliedBounds>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::ImpliedBounds>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operations_research::sat::Model::MyNew<operations_research::sat::ImpliedBounds>(a1);
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::ImpliedBounds>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::ImpliedBounds>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

operations_research::sat::ProductDetector *operations_research::sat::Model::GetOrCreate<operations_research::sat::ProductDetector>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ProductDetector>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ProductDetector>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::ProductDetector>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::ProductDetector>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::ProductDetector>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

void std::vector<operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper,std::allocator<operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v3 - *a1;
  v9 = v8 >> 5;
  v10 = (v8 >> 5) + 1;
  if (v10 >> 59)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v11 = v4 - v7;
  if (v11 >> 4 > v10)
  {
    v10 = v11 >> 4;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFE0)
  {
    v12 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v13 = (32 * v9);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v6 = 32 * v9 + 32;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void operations_research::sat::ExtractElementEncoding(operations_research::sat *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v3 = a2;
  v193 = *MEMORY[0x277D85DE8];
  v159 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v147 = operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(v3);
  v171 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(v3);
  v164 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v3);
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ImpliedBounds>(v3);
  v152 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ElementEncodings>(v3);
  v7 = *(this + 14);
  if (v7 < 1)
  {
    return;
  }

  v8 = 0;
  v155 = 0;
  v168 = 0;
  v9 = 0;
  v170 = 0;
  v10 = 0;
  v165 = 0;
  v166 = 0;
  v148 = this;
  v149 = (this + 48);
  v151 = (v5 + 29);
  v150 = (v3 + 40);
  v11 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d));
  v146 = v11 >> 7;
  v12 = vdup_n_s8(v11 & 0x7F);
  v158 = v3;
  v160 = v5;
  do
  {
    if (*v149)
    {
      v13 = *v149 + 8 * v8 + 7;
    }

    else
    {
      v13 = v149;
    }

    v14 = *v13;
    if (*(*v13 + 60) != 29)
    {
      goto LABEL_4;
    }

    v181[0].__r_.__value_.__r.__words[0] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::sat::ValueLiteralPair>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
    v181[0].__r_.__value_.__l.__size_ = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::sat::ValueLiteralPair>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
    v181[0].__r_.__value_.__r.__words[2] = 0;
    v161 = v14;
    v15 = *(v14 + 48);
    v16 = *(v15 + 16);
    v154 = v8;
    if (v16)
    {
      v17 = *(v15 + 24);
      __src = &v17[v16];
      do
      {
        v18 = 0;
        if (~*v17 <= *v17)
        {
          v19 = *v17;
        }

        else
        {
          v19 = ~*v17;
        }

        HIDWORD(v21) = *(*(v159 + 48) + 4 * v19);
        LODWORD(v21) = *v17;
        v20 = (v21 >> 31);
        _X9 = v5[27];
        __asm { PRFM            #4, [X9] }

        v27 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v20) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v20));
        v28 = vdup_n_s8(v27 & 0x7F);
        v29 = v5[25];
        v30 = ((v27 >> 7) ^ (_X9 >> 12)) & v29;
        v31 = *(_X9 + v30);
        v32 = vceq_s8(v31, v28);
        if (v32)
        {
LABEL_17:
          while (1)
          {
            v33 = v5[28] + 40 * ((v30 + (__clz(__rbit64(v32)) >> 3)) & v29);
            if (*v33 == v20)
            {
              break;
            }

            v32 &= ((v32 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v32)
            {
              goto LABEL_19;
            }
          }

          v34 = (v33 + 8);
          if (*(v33 + 16) >= 2uLL)
          {
            goto LABEL_25;
          }
        }

        else
        {
LABEL_19:
          while (!*&vceq_s8(v31, 0x8080808080808080))
          {
            v18 += 8;
            v30 = (v18 + v30) & v29;
            v31 = *(_X9 + v30);
            v32 = vceq_s8(v31, v28);
            if (v32)
            {
              goto LABEL_17;
            }
          }

          v34 = v151;
          if (*(v151 + 1) >= 2uLL)
          {
LABEL_25:
            v35 = v34 + 16;
            if (*v34 >= 2uLL)
            {
              v36 = *(v34 + 2);
              v35 = *(v34 + 3);
              if (*v36 <= -2)
              {
                do
                {
                  v37 = __clz(__rbit64((*v36 | ~(*v36 >> 7)) & 0x101010101010101)) >> 3;
                  v36 = (v36 + v37);
                  v35 += 16 * v37;
                }

                while (*v36 < -1);
              }
            }

            v184 = v35;
            operator new();
          }
        }

        ++v17;
        v5 = v160;
      }

      while (v17 != __src);
      size = v181[0].__r_.__value_.__l.__size_;
      v38 = v181[0].__r_.__value_.__r.__words[0];
      v3 = v158;
    }

    else
    {
      size = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::sat::ValueLiteralPair>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
      v38 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::sat::ValueLiteralPair>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
    }

    memset(&__p, 0, sizeof(__p));
    v153 = *(size + 10);
    if (*v38 != size || *(size + 10) != 0)
    {
      v162 = *v38;
      v156 = size;
      v157 = 0;
      v41 = 0;
      v163 = 0;
      v42 = v161;
      while (1)
      {
        v43 = *(v42 + 60);
        v44 = &operations_research::sat::_BoolArgumentProto_default_instance_;
        if (v43 == 29)
        {
          v44 = *(v161 + 48);
        }

        v45 = &v162[32 * v163];
        v46 = *(v45 + 3);
        v6 = (v45 + 24);
        v175 = v10;
        v172 = (v6 - 1);
        if ((v6[1] - v46) >> 4 >= *(v44 + 4))
        {
          v53 = v41;
          v173 = v6;
          __srca = v9;
          operations_research::sat::ElementEncodings::Add(v152, *(v6 - 2), v6, v8);
          v54 = v157;
          if (dword_2810BFBD8 >= 1)
          {
            v55 = v172;
            if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFBD0, dword_2810BFBD8))
            {
              v122 = v157 - v41;
              v123 = (v157 - v41) >> 2;
              v124 = v123 + 1;
              if ((v123 + 1) >> 62)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              if (-v41 >> 1 > v124)
              {
                v124 = -v41 >> 1;
              }

              if (-v41 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v125 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v125 = v124;
              }

              if (v125)
              {
                if (!(v125 >> 62))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              *(4 * v123) = *v172;
              memcpy(0, v53, v122);
              v41 = 0;
              v54 = 4 * v123 + 4;
              v55 = v172;
              v56 = v173;
              v184 = " X";
              v185 = 2;
              v127 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*v172, v183, v126);
              *&v182 = v183;
              *(&v182 + 1) = v127 - v183;
              absl::lts_20240722::StrAppend(&__p, &v184, &v182);
            }

            else
            {
              v56 = v173;
            }
          }

          else
          {
            v55 = v172;
            v56 = v173;
          }

          v57 = *(v55 + 1);
          v58 = *(v55 + 2);
          v59 = 126 - 2 * __clz(&v58[-v57] >> 4);
          if (v58 == v57)
          {
            v60 = 0;
          }

          else
          {
            v60 = v59;
          }

          std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::ValueLiteralPair::CompareByValue &,operations_research::sat::ValueLiteralPair*,false>(v57, v58, &v184, v60, 1);
          v157 = v54;
          v169 = v41;
          ++v155;
          v61 = *(v55 + 1);
          v62 = *(v55 + 2) - v61;
          if (!v62)
          {
LABEL_130:
            v8 = v154;
            v41 = v169;
            v116 = v162;
            if (v162[11])
            {
              goto LABEL_135;
            }

            goto LABEL_131;
          }

          v63 = 0;
          v167 = 0;
          v64 = 0;
          v65 = v62 >> 4;
          while (2)
          {
            v67 = 0;
            v68 = v64;
            v69 = v61[2 * v63];
            v70 = v64 + 1;
            v71 = 1;
            do
            {
              v64 = v70;
              v72 = v67;
              v73 = v71;
              v74 = v70;
              if (v65 <= v70)
              {
                break;
              }

              v75 = v61[2 * v70++];
              --v67;
              ++v71;
            }

            while (v75 == v69);
            v76 = *v172;
            if (v72)
            {
              if (operations_research::sat::IntegerEncoder::GetAssociatedEqualityLiteral(v171, v76, v61[2 * v63]) != -1)
              {
                if (v68 >= v64)
                {
                  v78 = __srca;
                  v79 = v170;
                }

                else
                {
                  v77 = (16 * v68) | 8;
                  v78 = __srca;
                  v79 = v170;
                  do
                  {
                    while (1)
                    {
                      v80 = *v56;
                      if (v78 >= v79)
                      {
                        break;
                      }

                      *v78 = *(v80 + v77);
                      v78 += 4;
                      v10 = v175;
                      v77 += 16;
                      if (!--v73)
                      {
                        goto LABEL_80;
                      }
                    }

                    v81 = v78 - __srca;
                    v82 = (v78 - __srca) >> 2;
                    v83 = v82 + 1;
                    if ((v82 + 1) >> 62)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    if ((v79 - __srca) >> 1 > v83)
                    {
                      v83 = (v79 - __srca) >> 1;
                    }

                    if (v79 - __srca >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v84 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v84 = v83;
                    }

                    if (v84)
                    {
                      if (!(v84 >> 62))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v85 = (4 * v82);
                    *v85 = *(v80 + v77);
                    v78 = (v85 + 1);
                    memcpy(0, __srca, v81);
                    __srca = 0;
                    v79 = 0;
                    v56 = v173;
                    v10 = v175;
                    v77 += 16;
                    --v73;
                  }

                  while (v73);
                }

LABEL_80:
                v170 = v79;
                v87 = operations_research::sat::IntegerEncoder::GetOrCreateLiteralAssociatedToEquality(v171, *v172, v69) ^ 1;
                if (v78 >= v170)
                {
                  v90 = v78 - __srca;
                  v91 = (v78 - __srca) >> 2;
                  v92 = v91 + 1;
                  if ((v91 + 1) >> 62)
                  {
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  if ((v170 - __srca) >> 1 > v92)
                  {
                    v92 = (v170 - __srca) >> 1;
                  }

                  if (v170 - __srca >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v93 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v93 = v92;
                  }

                  if (v93)
                  {
                    if (!(v93 >> 62))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  v94 = (4 * v91);
                  v170 = 0;
                  *v94 = v87;
                  v88 = (v94 + 1);
                  memcpy(0, __srca, v90);
                  v89 = 0;
                  v10 = v175;
                }

                else
                {
                  *v78 = v87;
                  v88 = v78 + 4;
                  v89 = __srca;
                }

                __srca = v89;
                operations_research::sat::SatSolver::AddProblemClause(v164, v89, (v88 - v89) >> 2, 0);
                ++v168;
LABEL_52:
                v61 = *(v172 + 1);
                v66 = *(v172 + 2);
                v65 = (v66 - v61) >> 4;
                v63 = v74;
                if (v65 <= v74)
                {
                  if (v167)
                  {
                    v96 = 0;
                    v95 = 0;
                    for (i = v10; v61 != v66; v61 += 2)
                    {
                      v98 = *v61;
                      v99 = i - v10;
                      v100 = v10;
                      v101 = (i - v10) >> 2;
                      v102 = v101 + 1;
                      v176 = v100;
                      if ((v101 + 1) >> 62)
                      {
                        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                      }

                      v174 = v96;
                      v103 = -v100;
                      v104 = -v100 >> 1;
                      if (v104 > v102)
                      {
                        v102 = v104;
                      }

                      if (v103 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v105 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v105 = v102;
                      }

                      if (v105)
                      {
                        if (!(v105 >> 62))
                        {
                          operator new();
                        }

                        std::__throw_bad_array_new_length[abi:ne200100]();
                      }

                      *(4 * v101) = *(v61 + 2);
                      i = 4 * v101 + 4;
                      memcpy(0, v176, v99);
                      v106 = v95 - v166;
                      v107 = 0xAAAAAAAAAAAAAAABLL * ((v95 - v166) >> 3);
                      v108 = v107 + 1;
                      if (v107 + 1 > 0xAAAAAAAAAAAAAAALL)
                      {
                        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                      }

                      if (0x5555555555555556 * (-v166 >> 3) > v108)
                      {
                        v108 = 0x5555555555555556 * (-v166 >> 3);
                      }

                      if (0xAAAAAAAAAAAAAAABLL * (-v166 >> 3) >= 0x555555555555555)
                      {
                        v109 = 0xAAAAAAAAAAAAAAALL;
                      }

                      else
                      {
                        v109 = v108;
                      }

                      if (v109)
                      {
                        if (v109 <= 0xAAAAAAAAAAAAAAALL)
                        {
                          operator new();
                        }

                        std::__throw_bad_array_new_length[abi:ne200100]();
                      }

                      v110 = 8 * ((v95 - v166) >> 3);
                      *v110 = -1;
                      *(v110 + 8) = 0;
                      *(v110 + 16) = v98;
                      v95 = v110 + 24;
                      v111 = 24 * v107 - v106;
                      memcpy((v110 - v106), v166, v106);
                      if (v166)
                      {
                        operator delete(v166);
                      }

                      v166 = v111;
                      v112 = v174 - v165;
                      v113 = 0xAAAAAAAAAAAAAAABLL * ((v174 - v165) >> 3) + 1;
                      if (v113 > 0xAAAAAAAAAAAAAAALL)
                      {
                        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                      }

                      if (0x5555555555555556 * (-v165 >> 3) > v113)
                      {
                        v113 = 0x5555555555555556 * (-v165 >> 3);
                      }

                      if (0xAAAAAAAAAAAAAAABLL * (-v165 >> 3) >= 0x555555555555555)
                      {
                        v114 = 0xAAAAAAAAAAAAAAALL;
                      }

                      else
                      {
                        v114 = v113;
                      }

                      if (v114)
                      {
                        if (v114 <= 0xAAAAAAAAAAAAAAALL)
                        {
                          operator new();
                        }

                        std::__throw_bad_array_new_length[abi:ne200100]();
                      }

                      v115 = 8 * ((v174 - v165) >> 3);
                      *v115 = -1;
                      *(v115 + 8) = 0;
                      *(v115 + 16) = -v98;
                      v96 = v115 + 24;
                      memcpy((v115 - v112), v165, v112);
                      if (v165)
                      {
                        operator delete(v165);
                      }

                      v165 = 8 * ((v174 - v165) >> 3) - v112;
                      v10 = 0;
                    }

                    operator new();
                  }

                  v9 = __srca;
                  v3 = v158;
                  goto LABEL_130;
                }

                continue;
              }
            }

            else if (operations_research::sat::IntegerEncoder::IsFixedOrHasAssociatedLiteral(v171, v76, v61[2 * v63]))
            {
              v86 = v69 >= 0x8000000000000002 ? -v69 : 0x7FFFFFFFFFFFFFFFLL;
              if (operations_research::sat::IntegerEncoder::IsFixedOrHasAssociatedLiteral(v171, *v172 ^ 1, v86))
              {
                operations_research::sat::IntegerEncoder::AssociateToIntegerEqualValue(v171, *(*(v172 + 1) + 16 * v63 + 8), *v172, v69);
                goto LABEL_52;
              }
            }

            break;
          }

          v167 = 1;
          goto LABEL_52;
        }

        if (dword_2810BFBC0 < 2 || !absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&_MergedGlobals_7, dword_2810BFBC0))
        {
          v116 = v162;
          if (v162[11])
          {
            goto LABEL_135;
          }

          goto LABEL_131;
        }

        v47 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v182, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 704);
        v48 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v47, 2);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v48, "X", 1uLL);
        LODWORD(v184) = *v172;
        v49 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v48, &v184);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v49, " has ", 5uLL);
        v184 = ((*(v172 + 2) - *(v172 + 1)) >> 4);
        v50 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v49, &v184);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v50, " implied values, and a domain of size ", 0x26uLL);
        v180 = &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d;
        v51 = *(v3 + 3);
        if (v51 > 1)
        {
          break;
        }

        v51 = *(v3 + 4);
        if (v51 < 2)
        {
          goto LABEL_43;
        }

        v51 = *v150;
        if (*v150 == &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
        {
          v51 = v150;
        }

        v52 = &absl::lts_20240722::container_internal::kSooControl;
        if (*v150 != &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
        {
          v52 = 0;
        }

LABEL_166:
        if (!v52)
        {
          operator new();
        }

        v136 = operations_research::sat::IntegerTrail::InitialVariableDomain(*(v51 + 8), *v172);
        v184 = operations_research::Domain::Size(v136);
        absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v50, &v184);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v182);
        v116 = v162;
        if (v162[11])
        {
LABEL_135:
          if (++v163 == v116[10])
          {
            while (1)
            {
              v120 = *v116;
              if (*(*v116 + 11))
              {
                break;
              }

              v121 = v116[8];
              v116 = *v116;
              if (v121 != v120[10])
              {
                v162 = v120;
                v163 = v121;
                goto LABEL_139;
              }
            }
          }

          goto LABEL_139;
        }

LABEL_131:
        v117 = &v116[8 * (v163 + 1) + 240];
        do
        {
          v118 = *v117;
          v119 = *(*v117 + 11);
          v117 = *v117 + 240;
        }

        while (!v119);
        v162 = v118;
        v163 = 0;
LABEL_139:
        v42 = v161;
        if (v162 == v156 && v163 == v153)
        {
          v137 = (v157 - v41) >> 2;
          if (v137 > 1 && dword_2810BFBF0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFBE8, dword_2810BFBF0) && dword_2810BFC08 >= 1)
          {
            v3 = v158;
            if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFC00, dword_2810BFC08))
            {
              v138 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v184, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 790);
              v139 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v138, 1);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v139, "exactly_one(", 0xCuLL);
              LODWORD(v182) = v8;
              v140 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v139, &v182);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v140, ") encodes ", 0xAuLL);
              *&v182 = v137;
              v141 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v140, &v182);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v141, " variables at the same time: ", 0x1DuLL);
              absl::lts_20240722::log_internal::LogMessage::operator<<(v141, &__p);
              absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v184);
              v3 = v158;
            }
          }

          goto LABEL_173;
        }
      }

      v128 = 0;
      _X9 = *v150;
      __asm { PRFM            #4, [X9] }

      v131 = (v146 ^ (*v150 >> 12)) & v51;
      v132 = *(*v150 + v131);
      v133 = vceq_s8(v132, v12);
      if (!v133)
      {
        goto LABEL_158;
      }

LABEL_155:
      v134 = *(v3 + 6);
      do
      {
        v135 = (v131 + (__clz(__rbit64(v133)) >> 3)) & v51;
        if (*(v134 + 16 * v135) == &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
        {
          v51 = v134 + 16 * v135;
          v52 = (_X9 + v135);
          goto LABEL_166;
        }

        v133 &= ((v133 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v133);
LABEL_158:
      while (!*&vceq_s8(v132, 0x8080808080808080))
      {
        v128 += 8;
        v131 = (v128 + v131) & v51;
        v132 = *(_X9 + v131);
        v133 = vceq_s8(v132, v12);
        if (v133)
        {
          goto LABEL_155;
        }
      }

LABEL_43:
      v52 = 0;
      goto LABEL_166;
    }

LABEL_173:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v5 = v160;
    if (v181[0].__r_.__value_.__r.__words[2])
    {
      absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(v181[0].__r_.__value_.__l.__data_);
    }

    v7 = *(v148 + 14);
LABEL_4:
    ++v8;
  }

  while (v8 < v7);
  if (v155 > 0 && *v147 == 1 && (v184 = "[Encoding] num_element_encoding: ", v185 = 33, v142 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v155, v183, v6), *&v182 = v183, *(&v182 + 1) = v142 - v183, absl::lts_20240722::StrCat(&v184, &v182, v181), operations_research::SolverLogger::LogInfo(v147, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 797, v181), SHIBYTE(v181[0].__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(v181[0].__r_.__value_.__l.__data_);
    if (v168 < 1)
    {
      return;
    }
  }

  else if (v168 < 1)
  {
    return;
  }

  if (*v147 == 1)
  {
    v143 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v168, v183, v6);
    *&v182 = v183;
    *(&v182 + 1) = v143 - v183;
    v145 = absl::lts_20240722::numbers_internal::FastIntToBuffer(0, &v181[0].__r_.__value_.__s.__data_[16], v144);
    v181[0].__r_.__value_.__r.__words[0] = &v181[0].__r_.__value_.__r.__words[2];
    v181[0].__r_.__value_.__l.__size_ = v145 - &v181[0].__r_.__value_.__r.__words[2];
    v184 = "[Encoding] Added ";
    v185 = 17;
    v186 = v182;
    v187 = " element support clauses, and ";
    v188 = 30;
    v189 = &v181[0].__r_.__value_.__s.__data_[16];
    v190 = v145 - &v181[0].__r_.__value_.__r.__words[2];
    v191 = " dedicated propagators.";
    v192 = 23;
    absl::lts_20240722::strings_internal::CatPieces(&v184, 5, &__p);
    operations_research::SolverLogger::LogInfo(v147, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 802, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_23CA59930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, void *a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, _BYTE *a56, uint64_t a57, uint64_t a58)
{
  absl::lts_20240722::log_internal::LogMessage::~LogMessage((v59 - 208));
  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (v58)
  {
    operator delete(v58);
  }

  if (a58)
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(a56);
  }

  if (a35)
  {
    operator delete(a35);
    v61 = a36;
    if (!a36)
    {
LABEL_9:
      if (!a47)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v61 = a36;
    if (!a36)
    {
      goto LABEL_9;
    }
  }

  operator delete(v61);
  if (!a47)
  {
LABEL_10:
    if (!a48)
    {
LABEL_16:
      _Unwind_Resume(a1);
    }

LABEL_15:
    operator delete(a48);
    _Unwind_Resume(a1);
  }

LABEL_14:
  operator delete(a47);
  if (!a48)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::ElementEncodings>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ElementEncodings>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ElementEncodings>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::ElementEncodings>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::ElementEncodings>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::ElementEncodings>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

void operations_research::sat::PropagateEncodingFromEquivalenceRelations(operations_research::sat *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  v8 = *(this + 6);
  v7 = this + 48;
  v9 = (v8 + 7);
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  v11 = *(v7 + 2);
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = &v10[8 * v11];
    do
    {
      v15 = *v10;
      if (!*(*v10 + 16) && *(v15 + 60) == 12)
      {
        v16 = *(v15 + 48);
        if (*(v16 + 16) == 2 && *(v16 + 64) == 2)
        {
          v17 = *(v16 + 72);
          v18 = *v17;
          if (*v17 == v17[1])
          {
            v19 = *(v16 + 48);
            v21 = *v19;
            v20 = v19[1];
            v22 = v21 >= 0 ? v21 : -v21;
            v23 = v20 >= 0 ? v20 : -v20;
            if (v21 && v20 != 0)
            {
              v41 = v13;
              v25 = *(v16 + 24);
              v40 = v5;
              v26 = vmax_s32(vmvn_s8(*v25), *v25);
              v27 = *(*v5 + 4 * v26.i32[1]) ^ (HIDWORD(*v25) >> 31) ^ (v20 >> 63);
              v42 = *(*v5 + 4 * v26.i32[0]) ^ (v25->u32[0] >> 31) ^ (v21 >> 63);
              operations_research::sat::IntegerEncoder::PartialGreaterThanEncoding(v6, v42, &v44);
              v28 = v44;
              v29 = v45;
              v43 = v27;
              if (v44 != v45)
              {
                v30 = v27 ^ 1;
                do
                {
                  if ((v18 - *v28 * v22) / v23 - ((v18 - *v28 * v22) / v23 * v23 > v18 - *v28 * v22) >= 0x8000000000000002)
                  {
                    v31 = ((v18 - *v28 * v22) / v23 * v23 > v18 - *v28 * v22) - (v18 - *v28 * v22) / v23;
                  }

                  else
                  {
                    v31 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  operations_research::sat::IntegerEncoder::AssociateToIntegerLiteral(v6, *(v28 + 2), v30, v31);
                  ++v12;
                  v28 += 2;
                }

                while (v28 != v29);
                v28 = v44;
                v27 = v43;
              }

              if (v28)
              {
                v45 = v28;
                operator delete(v28);
              }

              operations_research::sat::IntegerEncoder::PartialGreaterThanEncoding(v6, v27, &v44);
              v32 = v44;
              v33 = v45;
              if (v44 != v45)
              {
                do
                {
                  if ((v18 - *v32 * v23) / v22 - ((v18 - *v32 * v23) / v22 * v22 > v18 - *v32 * v23) >= 0x8000000000000002)
                  {
                    v34 = ((v18 - *v32 * v23) / v22 * v22 > v18 - *v32 * v23) - (v18 - *v32 * v23) / v22;
                  }

                  else
                  {
                    v34 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  operations_research::sat::IntegerEncoder::AssociateToIntegerLiteral(v6, *(v32 + 2), v42 ^ 1, v34);
                  ++v12;
                  v32 += 2;
                }

                while (v32 != v33);
                v32 = v44;
              }

              if (v32)
              {
                v45 = v32;
                operator delete(v32);
              }

              v35 = operations_research::sat::IntegerEncoder::PartialDomainEncoding(v6, v42);
              v36 = v35[1];
              if (v36 != *v35)
              {
                if (((v36 - *v35) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                goto LABEL_52;
              }

              v37 = operations_research::sat::IntegerEncoder::PartialDomainEncoding(v6, v43);
              v38 = v37[1];
              if (v38 != *v37)
              {
                if (((v38 - *v37) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

LABEL_52:
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v13 = v41;
              v5 = v40;
            }
          }
        }
      }

      v10 += 8;
    }

    while (v10 != v14);
    if (v12 >= 1 && dword_2810BFC20 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFC18, dword_2810BFC20))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(&v44, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 884);
      v39 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v44, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v39, "Num associations from equivalences = ", 0x25uLL);
      v46 = v12;
      absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v39, &v46);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v44);
    }
  }
}

void sub_23CA5A224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CA5A238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void operations_research::sat::DetectOptionalVariables(operations_research::sat *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  if (*(v4 + 272) == 1 && (*(v4 + 284) & 1) == 0)
  {
    v5 = *(this + 8);
    if (v5)
    {
      if ((v5 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (*(this + 16))
    {
      v6 = *(this + 16);
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = *(v6 + 24);
        v9 = 4 * v7;
        do
        {
          v11 = *v8++;
          v10 = v11;
          if (~v11 > v11)
          {
            v10 = ~v10;
          }

          *((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v10;
          v9 -= 4;
        }

        while (v9);
      }
    }

    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = &v52;
    LOBYTE(v56) = 0;
    v49 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::EmptyNode(void)::empty_node;
    v50 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::EmptyNode(void)::empty_node;
    v51 = 0;
    if (*(this + 14) >= 1)
    {
      v12 = 0;
      v48 = (this + 48);
      while (1)
      {
        v13 = (*v48 & 1) != 0 ? (*v48 + 8 * v12 + 7) : (this + 48);
        v14 = *v13;
        if (*(*v13 + 16))
        {
          break;
        }

        operations_research::sat::UsedVariables(&v55, v14);
        v37 = v55;
        v38 = v56;
        if (v55 != v56)
        {
          v39 = v52;
          v40 = v55;
          do
          {
            v41 = v40->i32[0];
            v40 = (v40 + 4);
            *((v41 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v41;
            v39[3 * v41 + 1] = v39[3 * v41];
          }

          while (v40 != v38);
        }

        if (v37)
        {
          v56 = v37;
LABEL_14:
          operator delete(v37);
        }

LABEL_15:
        if (++v12 >= *(this + 14))
        {
          goto LABEL_67;
        }
      }

      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::clear(&v49);
      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = *(v14 + 24);
        v17 = 4 * v15;
        do
        {
          absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::insert_hint_unique<int,int const&>(&v49, v50, v50[10], v16, &v55, v16);
          ++v16;
          v17 -= 4;
        }

        while (v17);
      }

      operations_research::sat::UsedVariables(&v55, v14);
      v19 = v55;
      v18 = v56;
      if (v55 == v56)
      {
        if (v55)
        {
          goto LABEL_61;
        }

        goto LABEL_15;
      }

      while (1)
      {
        v20 = v19->i32[0];
        v21 = v20 >> 6;
        v22 = 1 << v20;
        v23 = (v52 + 24 * v20);
        if (((1 << v20) & *(8 * (v20 >> 6))) != 0)
        {
          begin = v23->__begin_;
          end = v23->__end_;
          if (v23->__begin_ == end)
          {
            v26 = 0;
            v36 = end - begin;
LABEL_58:
            if (v36 > v26)
            {
              v23->__end_ = &begin[v26];
            }

            goto LABEL_27;
          }

          LODWORD(v26) = 0;
          v27 = v50;
          v28 = v23->__begin_;
          v29 = *begin;
          v30 = v49;
          v31 = *(v49 + 10);
          if (!*(v49 + 10))
          {
LABEL_39:
            LODWORD(v32) = 0;
            goto LABEL_40;
          }

          while (1)
          {
            while (1)
            {
              v32 = 0;
              while (*(v30 + v32 + 3) < v29)
              {
                if (v31 == ++v32)
                {
                  LODWORD(v32) = v31;
                  break;
                }
              }

LABEL_40:
              if (*(v30 + 11))
              {
                break;
              }

              v30 = v30[v32 + 32];
              v31 = *(v30 + 10);
              if (!*(v30 + 10))
              {
                goto LABEL_39;
              }
            }

            while (v32 == *(v30 + 10))
            {
              LODWORD(v32) = *(v30 + 8);
              v30 = *v30;
              if (*(v30 + 11))
              {
                v33 = v27[10];
                v34 = v33;
                goto LABEL_53;
              }
            }

            v33 = v27[10];
            if (v29 >= *(v30 + v32 + 3))
            {
              v35 = v30;
            }

            else
            {
              v35 = v27;
            }

            if (v29 >= *(v30 + v32 + 3))
            {
              v34 = v32;
            }

            else
            {
              v34 = v27[10];
            }

            if (v35 != v27)
            {
LABEL_32:
              begin[v26] = v29;
              LODWORD(v26) = v26 + 1;
              goto LABEL_33;
            }

LABEL_53:
            if (v34 != v33)
            {
              goto LABEL_32;
            }

LABEL_33:
            if (++v28 == end)
            {
              break;
            }

            v29 = *v28;
            v30 = v49;
            v31 = *(v49 + 10);
            if (!*(v49 + 10))
            {
              goto LABEL_39;
            }
          }

          v26 = v26;
          v36 = end - begin;
          if (v26 <= v36)
          {
            goto LABEL_58;
          }

          std::vector<int>::__append(v23, v26 - v36);
        }

        else
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<int const>,google::protobuf::internal::RepeatedIterator<int const>>(v23, *(v14 + 24), (*(v14 + 24) + 4 * *(v14 + 16)), *(v14 + 16));
        }

LABEL_27:
        *(8 * v21) |= v22;
        v19 = (v19 + 4);
        if (v19 == v18)
        {
          v19 = v55;
          if (v55)
          {
LABEL_61:
            v56 = v19;
            v37 = v19;
            goto LABEL_14;
          }

          goto LABEL_15;
        }
      }
    }

LABEL_67:
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::clear(&v49);
    v42 = v52;
    if (v52)
    {
      v43 = v53;
      v44 = v52;
      if (v53 != v52)
      {
        v45 = v53;
        do
        {
          v47 = *(v45 - 3);
          v45 -= 24;
          v46 = v47;
          if (v47)
          {
            *(v43 - 2) = v46;
            operator delete(v46);
          }

          v43 = v45;
        }

        while (v45 != v42);
        v44 = v52;
      }

      v53 = v42;
      operator delete(v44);
    }
  }
}

void sub_23CA5A970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::clear(&a20);
  std::vector<std::vector<int>>::~vector[abi:ne200100](&a23);
  if (v23)
  {
    operator delete(v23);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

operations_research::sat::IntegerTrail *operations_research::sat::AddFullEncodingFromSearchBranching(operations_research::sat::IntegerTrail *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(this + 20))
  {
    v4 = this;
    v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
    this = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
    v7 = *(v4 + 9);
    v6 = v4 + 72;
    v8 = (v7 + 7);
    v9 = (v7 & 1) != 0 ? v8 : v6;
    v10 = *(v6 + 2);
    if (v10)
    {
      v11 = this;
      v12 = &v9[8 * v10];
      do
      {
        v13 = *v9;
        if (*(*v9 + 68) == 4)
        {
          v15 = *(v13 + 40);
          v14 = v13 + 40;
          v16 = v15 + 7;
          v17 = (v15 & 1) != 0 ? v16 : v14;
          v18 = *(v14 + 8);
          if (v18)
          {
            v19 = 8 * v18;
            do
            {
              v20 = **(*v17 + 24);
              if (~v20 <= v20)
              {
                v21 = **(*v17 + 24);
              }

              else
              {
                v21 = ~v20;
              }

              v22 = *(*v5 + 4 * v21);
              if (v22 != -1)
              {
                v23 = v22 ^ (v20 >> 31);
                if (*(*(v11 + 5) + 8 * v23) + *(*(v11 + 5) + ((8 * v23) ^ 8)))
                {
                  v27 = &unk_284F3BAC8;
                  v28 = v23;
                  v29 = &v27;
                  v24 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
                  if (!operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(v24, v28))
                  {
                    operations_research::sat::IntegerEncoder::FullyEncodeVariable(v24, v28);
                  }

                  v25 = operations_research::sat::IntegerEncoder::FullDomainEncoding(v24, v28);
                  v26 = v25[1] - *v25;
                  if (v26)
                  {
                    if ((v26 & 0x8000000000000000) == 0)
                    {
                      operator new();
                    }

                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  this = v29;
                  if (v29 == &v27)
                  {
                    this = (*(*v29 + 32))(v29);
                  }

                  else if (v29)
                  {
                    this = (*(*v29 + 40))();
                  }
                }
              }

              v17 += 8;
              v19 -= 8;
            }

            while (v19);
          }
        }

        v9 += 8;
      }

      while (v9 != v12);
    }
  }

  return this;
}

void sub_23CA5AC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::function<std::vector<operations_research::sat::ValueLiteralPair> ()(operations_research::sat::Model *)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_23CA5AC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::function<std::vector<operations_research::sat::ValueLiteralPair> ()(operations_research::sat::Model *)>::~function(va);
  _Unwind_Resume(a1);
}

void operations_research::sat::LoadBoolOrConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v25 = a2;
  v26 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  v6 = *(this + 6);
  if (*(this + 15) != 3)
  {
    v6 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  }

  operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(v6 + 4, &__p);
  v7 = *(this + 4);
  if (v7)
  {
    v8 = *(this + 3);
    v9 = v28;
    v10 = 4 * v7;
    do
    {
      v11 = *v8;
      if (~*v8 <= *v8)
      {
        v12 = *v8;
      }

      else
      {
        v12 = ~v11;
      }

      v13 = (__PAIR64__(*(*(v5 + 48) + 4 * v12), v11) >> 31) ^ 1;
      if (v9 < v29)
      {
        *v9 = v13;
        v9 += 4;
      }

      else
      {
        v14 = __p;
        v15 = v9 - __p;
        v16 = (v9 - __p) >> 2;
        v17 = v16 + 1;
        if ((v16 + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v18 = v29 - __p;
        if ((v29 - __p) >> 1 > v17)
        {
          v17 = v18 >> 1;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v19 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (!(v19 >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v20 = v16;
        v21 = (4 * v16);
        v22 = &v21[-v20];
        *v21 = v13;
        v9 = (v21 + 1);
        memcpy(v22, v14, v15);
        __p = v22;
        v28 = v9;
        v29 = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      v28 = v9;
      ++v8;
      v10 -= 4;
    }

    while (v10);
  }

  else
  {
    v9 = v28;
  }

  operations_research::sat::SatSolver::AddProblemClause(v26, __p, (v9 - __p) >> 2, 0);
  v23 = __p;
  if (v28 - __p == 12)
  {
    v24 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ProductDetector>(v25);
    operations_research::sat::ProductDetector::ProcessTernaryClause(v24, __p, (v28 - __p) >> 2);
    v23 = __p;
  }

  if (v23)
  {
    v28 = v23;
    operator delete(v23);
  }
}

void sub_23CA5AE58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(int *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*a2)
  {
    if ((*a2 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23CA5AF3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::LoadBoolAndConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  if (*(this + 4))
  {
    operator new();
  }

  v4 = 0;
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  v6 = *(this + 6);
  if (*(this + 15) != 4)
  {
    v6 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  }

  operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(v6 + 4, &v12);
  v7 = v12;
  v8 = v13;
  if (v12 != v13)
  {
    do
    {
      v9 = v4;
      v10 = v4 >> 2;
      if ((v10 + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v10 != -1)
      {
        if (!((v10 + 1) >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      MEMORY[0xFFFFFFFFFFFFFFFC] = *v7;
      memcpy(0, 0, v9);
      operations_research::sat::SatSolver::AddProblemClause(v5, 0, 0, 0);
      v4 = -4;
      ++v7;
    }

    while (v7 != v8);
    v7 = v12;
  }

  if (v7)
  {
    v13 = v7;
    operator delete(v7);
  }
}

void sub_23CA5B208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (!v13)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v13);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::LoadAtMostOneConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  if (!*(this + 4))
  {
    v4 = *(this + 6);
    if (*(this + 15) != 26)
    {
      v4 = &operations_research::sat::_BoolArgumentProto_default_instance_;
    }

    operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(v4 + 4, &__p);
    operations_research::sat::AtMostOneConstraint(&__p, v6);
  }

  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 1021);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, "Not supported.", 0xEuLL);
  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&__p);
}

void sub_23CA5B3F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::LoadExactlyOneConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  if (!*(this + 4))
  {
    v4 = *(this + 6);
    if (*(this + 15) != 29)
    {
      v4 = &operations_research::sat::_BoolArgumentProto_default_instance_;
    }

    operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(v4 + 4, &v5);
    operations_research::sat::ExactlyOneConstraint(&v5, v6);
  }

  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v5, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 1027);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v5, "Not supported.", 0xEuLL);
  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v5);
}

void sub_23CA5B5EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::LoadBoolXorConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  if (!*(this + 4))
  {
    v4 = *(this + 6);
    if (*(this + 15) != 5)
    {
      v4 = &operations_research::sat::_BoolArgumentProto_default_instance_;
    }

    operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(v4 + 4, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0;
    operator new();
  }

  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 1037);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, "Not supported.", 0xEuLL);
  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&__p);
}

void sub_23CA5B8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (v14)
  {
    operator delete(v14);
    v16 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v16 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v16);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::SplitAndLoadIntermediateConstraints(char a1, char a2, char **a3, char **a4, void *a5)
{
  v115[4] = *MEMORY[0x277D85DE8];
  v9 = *(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a5) + 284);
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v102 = a3;
  v12 = a3;
  v11 = *a3;
  v10 = v12[1];
  v104 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a5);
  v13 = (v10 - v11) >> 2;
  v14 = llround(sqrt(v13));
  v15 = v14;
  if (v14 < 1)
  {
    v97 = 0;
    v98 = 0;
    v19 = 0;
    v18 = 0;
    goto LABEL_126;
  }

  v97 = 0;
  v98 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v94 = v9 | a2;
  v95 = v9 | a1;
  v96 = v13;
  v105 = v14;
  while (2)
  {
    v111 = v110;
    v108 = v107;
    v101 = v17 + 1;
    v106 = (v17 + 1) * v13;
    if (v16 * v15 >= v106)
    {
      goto LABEL_4;
    }

    v99 = v19;
    v100 = v18;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    do
    {
      v30 = *&(*a4)[8 * v16];
      if (v30 >= 0)
      {
        v31 = *&(*a4)[8 * v16];
      }

      else
      {
        v31 = -v30;
      }

      if (v22 >= 0)
      {
        v32 = v22;
      }

      else
      {
        v32 = -v22;
      }

      if (v32 >= v31)
      {
        v22 = v31;
      }

      else
      {
        v22 = v32;
      }

      if (v32 > v31)
      {
        v31 = v32;
      }

      if (v22)
      {
        v33 = v31 % v22;
        if (v33)
        {
          v34 = v33 >> __clz(__rbit64(v33));
          v35 = v22;
          do
          {
            v36 = v35 >> __clz(__rbit64(v35));
            v35 = v36 - v34;
            if (v34 > v36)
            {
              v35 = v34 - v36;
            }

            if (v34 >= v36)
            {
              v34 = v36;
            }
          }

          while (v35);
          v22 = v34 << __clz(__rbit64(v33 | v22));
        }

        v37 = *&(*v102)[4 * v16];
        v39 = v111;
        v38 = v112;
        if (v111 < v112)
        {
LABEL_36:
          *v39 = v37;
          v40 = v39 + 4;
          goto LABEL_49;
        }
      }

      else
      {
        v22 = v31;
        v37 = *&(*v102)[4 * v16];
        v39 = v111;
        v38 = v112;
        if (v111 < v112)
        {
          goto LABEL_36;
        }
      }

      v41 = v110;
      v42 = v39 - v110;
      v43 = (v39 - v110) >> 2;
      v44 = v43 + 1;
      if ((v43 + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v45 = v38 - v110;
      if (v45 >> 1 > v44)
      {
        v44 = v45 >> 1;
      }

      if (v45 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v46 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v46 = v44;
      }

      if (v46)
      {
        if (!(v46 >> 62))
        {
          operator new();
        }

LABEL_131:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v47 = (v39 - v110) >> 2;
      v48 = (4 * v43);
      v49 = (4 * v43 - 4 * v47);
      *v48 = v37;
      v40 = (v48 + 1);
      memcpy(v49, v41, v42);
      v110 = v49;
      v111 = v40;
      v112 = 0;
      if (v41)
      {
        operator delete(v41);
      }

LABEL_49:
      v111 = v40;
      v50 = v108;
      if (v108 < v109)
      {
        *v108 = v30;
        v23 = v50 + 8;
      }

      else
      {
        v51 = v107;
        v52 = v108 - v107;
        v53 = (v108 - v107) >> 3;
        v54 = v53 + 1;
        if ((v53 + 1) >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v55 = v109 - v107;
        if ((v109 - v107) >> 2 > v54)
        {
          v54 = v55 >> 2;
        }

        if (v55 >= 0x7FFFFFFFFFFFFFF8)
        {
          v56 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v56 = v54;
        }

        if (v56)
        {
          if (!(v56 >> 61))
          {
            operator new();
          }

          goto LABEL_131;
        }

        *(8 * v53) = v30;
        v23 = (8 * v53 + 8);
        memcpy(0, v51, v52);
        v107 = 0;
        v108 = v23;
        v109 = 0;
        if (v51)
        {
          operator delete(v51);
        }
      }

      v108 = v23;
      v24 = *(v104 + 5);
      v25 = 8 * v37;
      v26 = *(v24 + v25) * v30;
      v27 = v30 * *(v24 + (v25 ^ 8));
      if (v26 >= -v27)
      {
        v28 = -v27;
      }

      else
      {
        v28 = v26;
      }

      v21 += v28;
      if (v26 <= -v27)
      {
        v29 = -v27;
      }

      else
      {
        v29 = v26;
      }

      v20 += v29;
      ++v16;
      v15 = v105;
    }

    while (v16 * v105 < v106);
    if (!v22)
    {
      v19 = v99;
      v18 = v100;
      v13 = v96;
      goto LABEL_4;
    }

    if (v22 >= 2)
    {
      if (v107 == v23)
      {
        goto LABEL_71;
      }

      if (v23 - v107 == 8)
      {
        v58 = v107;
      }

      else
      {
        v57 = ((v23 - v107 - 8) >> 3) + 1;
        v58 = (v107 + 8 * (v57 & 0x3FFFFFFFFFFFFFFELL));
        v59 = (v107 + 8);
        v60 = v57 & 0x3FFFFFFFFFFFFFFELL;
        do
        {
          v61 = *v59 / v22;
          *(v59 - 1) /= v22;
          *v59 = v61;
          v59 += 2;
          v60 -= 2;
        }

        while (v60);
        if (v57 == (v57 & 0x3FFFFFFFFFFFFFFELL))
        {
LABEL_71:
          v21 /= v22;
          v20 /= v22;
          goto LABEL_72;
        }
      }

      do
      {
        *v58++ /= v22;
      }

      while (v58 != v23);
      goto LABEL_71;
    }

LABEL_72:
    v62 = operations_research::sat::IntegerTrail::AddIntegerVariable(v104, v21, v20);
    v13 = v96;
    v63 = v62;
    v67 = (v98 - v100) >> 2;
    v68 = v67 + 1;
    if ((v67 + 1) >> 62)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (-v100 >> 1 > v68)
    {
      v68 = -v100 >> 1;
    }

    if (-v100 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v69 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v69 = v68;
    }

    if (v69)
    {
      if (!(v69 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v70 = (4 * v67);
    *v70 = v62;
    memcpy(0, v100, v98 - v100);
    v18 = 0;
    v98 = (v70 + 1);
    v71 = v97 - v99;
    v72 = (v97 - v99) >> 3;
    v73 = v72 + 1;
    if ((v72 + 1) >> 61)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (-v99 >> 2 > v73)
    {
      v73 = -v99 >> 2;
    }

    if (-v99 >= 0x7FFFFFFFFFFFFFF8)
    {
      v74 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v74 = v73;
    }

    if (v74)
    {
      if (!(v74 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(8 * v72) = v22;
    v97 = 8 * v72 + 8;
    memcpy(0, v99, v71);
    v19 = 0;
    v15 = v105;
    v75 = v111;
    if (v111 < v112)
    {
      *v111 = v63;
      v111 = v75 + 4;
      v65 = v108;
      v64 = v109;
      if (v108 >= v109)
      {
        goto LABEL_107;
      }

LABEL_74:
      *v65 = -1;
      v66 = v65 + 8;
      v108 = v66;
      if (v95)
      {
        goto LABEL_119;
      }

      goto LABEL_123;
    }

    v76 = v110;
    v77 = v111 - v110;
    v78 = (v111 - v110) >> 2;
    v79 = v78 + 1;
    if ((v78 + 1) >> 62)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v80 = v112 - v110;
    if ((v112 - v110) >> 1 > v79)
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

    v82 = (4 * v78);
    v83 = &v82[-((v111 - v110) >> 2)];
    *v82 = v63;
    v84 = (v82 + 1);
    memcpy(v83, v76, v77);
    v110 = v83;
    v111 = v84;
    v112 = 0;
    if (v76)
    {
      operator delete(v76);
    }

    v15 = v105;
    v111 = v84;
    v65 = v108;
    v64 = v109;
    if (v108 < v109)
    {
      goto LABEL_74;
    }

LABEL_107:
    v85 = v107;
    v86 = v65 - v107;
    v87 = (v65 - v107) >> 3;
    v88 = v87 + 1;
    if ((v87 + 1) >> 61)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v89 = v64 - v107;
    if (v89 >> 2 > v88)
    {
      v88 = v89 >> 2;
    }

    if (v89 >= 0x7FFFFFFFFFFFFFF8)
    {
      v90 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v90 = v88;
    }

    if (v90)
    {
      if (!(v90 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v91 = (v65 - v107) >> 3;
    v92 = (8 * v87);
    v93 = (8 * v87 - 8 * v91);
    *v92 = -1;
    v66 = (v92 + 1);
    memcpy(v93, v85, v86);
    v107 = v93;
    v108 = v66;
    v109 = 0;
    if (v85)
    {
      operator delete(v85);
    }

    v15 = v105;
    v108 = v66;
    if (v95)
    {
LABEL_119:
      memset(__p, 0, sizeof(__p));
      if (v66 != v107)
      {
        if (((v66 - v107) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      operations_research::sat::WeightedSumLowerOrEqual<std::vector<long long>>(&v110, __p, v115);
    }

LABEL_123:
    if (v94)
    {
      operations_research::sat::WeightedSumLowerOrEqual<std::vector<long long>>(&v110, &v107, v114);
    }

LABEL_4:
    v17 = v101;
    if (v101 != v15)
    {
      continue;
    }

    break;
  }

LABEL_126:
  std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(v102, v18, v98, (v98 - v18) >> 2);
  std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a4, v19, v97, (v97 - v19) >> 3);
  if (v107)
  {
    v108 = v107;
    operator delete(v107);
  }

  if (v110)
  {
    v111 = v110;
    operator delete(v110);
  }
}

void sub_23CA5C48C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
    v33 = a27;
    if (a27)
    {
LABEL_8:
      operator delete(v33);
      if (v32)
      {
LABEL_9:
        operator delete(v32);
        if (v31)
        {
LABEL_10:
          operator delete(v31);
          _Unwind_Resume(exception_object);
        }

LABEL_5:
        _Unwind_Resume(exception_object);
      }

LABEL_4:
      if (v31)
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }
  }

  else
  {
    v33 = a27;
    if (a27)
    {
      goto LABEL_8;
    }
  }

  if (v32)
  {
    goto LABEL_9;
  }

  goto LABEL_4;
}

void operations_research::sat::WeightedSumLowerOrEqual<std::vector<long long>>(void *a1@<X0>, void *a2@<X1>, uint64_t a4@<X8>)
{
  v5 = a1[1];
  if (v5 != *a1)
  {
    if (((v5 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v6 = a2[1] - *a2;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a4 + 24) = 0;
  operator new();
}

void sub_23CA5C6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  operator delete(v9);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  _Unwind_Resume(a1);
}

void sub_23CA5C704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  _Unwind_Resume(a1);
}

void sub_23CA5C718(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::LoadLinearConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v280 = *MEMORY[0x277D85DE8];
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v6 = v4;
  v246 = v4;
  v249 = this;
  if (*(this + 15) == 12)
  {
    v7 = *(this + 6);
    v8 = *(v7 + 4);
    if (v8)
    {
      v243 = (this + 16);
      v9 = v8 <= 2 && *(this + 4) == 1;
      if (!v9)
      {
        goto LABEL_54;
      }

      if (*(v7 + 16) != 2)
      {
        goto LABEL_54;
      }

      v10 = v7[9];
      if (*v10 || v10[1])
      {
        goto LABEL_54;
      }

      goto LABEL_22;
    }
  }

  else
  {
    if (off_2810BEE58)
    {
      v243 = (this + 16);
      v11 = off_2810BEE58 <= 2 && *(this + 4) == 1;
      if (!v11 || dword_2810BEE88 != 2 || *off_2810BEE90 || *(off_2810BEE90 + 1))
      {
        goto LABEL_54;
      }

      v7 = &operations_research::sat::_LinearConstraintProto_default_instance_;
LABEL_22:
      v12 = *(v7 + 10);
      if (v12)
      {
        v13 = v7[6];
        v14 = 8 * v12;
        while (1)
        {
          v15 = *v13;
          if (*v13 < 0)
          {
            v15 = -v15;
          }

          if (v15 != 1)
          {
            break;
          }

          ++v13;
          v14 -= 8;
          if (!v14)
          {
            goto LABEL_28;
          }
        }

LABEL_54:
        __src = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
        v30 = *(this + 6);
        if (*(this + 15) != 12)
        {
          v30 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        }

        operations_research::sat::CpModelMapping::Integers<google::protobuf::RepeatedField<int>>(v30 + 4, &v260);
        v31 = *(this + 6);
        if (*(this + 15) != 12)
        {
          v31 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        }

        v32 = *(v31 + 10);
        v258 = 0;
        v259 = 0;
        v257 = 0;
        if (v32)
        {
          if ((v32 & 0x80000000) == 0)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v261 == v260)
        {
          v35 = 0;
          v34 = 0;
          v38 = 0;
          v42 = 1;
        }

        else
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = *(this + 15);
          v37 = *(this + 6);
          v38 = 0;
          if (v36 == 12)
          {
            v39 = v37;
          }

          else
          {
            v39 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          }

          v40 = *(__src + 5);
          v41 = 1;
          LOBYTE(v42) = 1;
          do
          {
            if (v42)
            {
              v43 = *(v39[3] + v33);
              if (~v43 > v43)
              {
                v43 = ~v43;
              }

              v42 = *(v6[6] + 4 * v43) != -1;
            }

            else
            {
              v42 = 0;
            }

            v44 = 8 * *(v260 + v33);
            v45 = *(v40 + v44);
            v46 = *(v40 + (v44 ^ 8));
            if (v35 <= 1 - (v45 + v46))
            {
              v35 = 1 - (v45 + v46);
            }

            v47 = *(8 * v33);
            v48 = v47 * v45;
            v49 = v46 * v47;
            v50 = -(v46 * v47);
            if (v50 < v48)
            {
              v51 = -v49;
            }

            else
            {
              v51 = v48;
            }

            v38 += v51;
            if (v48 <= v50)
            {
              v52 = -v49;
            }

            else
            {
              v52 = v48;
            }

            v34 += v52;
            v33 = v41++;
          }

          while ((v261 - v260) >> 2 > v33);
        }

        v53 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
        v247 = v34;
        v248 = v38;
        v54 = *v243;
        v242 = v53;
        if (*(v53 + 755) != 1 || v54 != 1)
        {
LABEL_107:
          if (!v54)
          {
            v80 = operations_research::sat::Model::GetOrCreate<operations_research::sat::PrecedenceRelations>(a2);
            v81 = v80;
            v82 = &operations_research::sat::_LinearConstraintProto_default_instance_;
            if (*(v249 + 15) == 12)
            {
              v82 = *(v249 + 6);
            }

            v83 = v82[9];
            v84 = *v83;
            v85 = v83[*(v82 + 16) - 1];
            v86 = v248;
            if (v84 > v248)
            {
              v86 = v84;
            }

            v253 = v86;
            if (v247 >= v85)
            {
              v87 = v85;
            }

            else
            {
              v87 = v247;
            }

            v88 = (v261 - v260) >> 2;
            if (v88 == 2)
            {
              v158 = *v257;
              v159 = vabsq_s64(*v257);
              v160 = v159.i64[0];
              if (v159.i64[0] == v159.i64[1])
              {
                v161 = *v260 ^ (v158.i64[0] >> 63);
                v162 = *(v260 + 1) ^ (v158.i64[1] > 0);
                if ((v159.i64[0] ^ -v87) < 0 || -v87 % v159.i64[0] == 0)
                {
                  v164 = -v87 / v159.i64[0];
                }

                else
                {
                  v164 = -v87 / v159.i64[0] + 1;
                }

                operations_research::sat::PrecedenceRelations::Add(v80, *v260 ^ (v158.i64[0] >> 63), v162, v164);
                if ((v160 ^ v253) < 0 || v253 % v160 == 0)
                {
                  v166 = v253 / v160;
                }

                else
                {
                  v166 = v253 / v160 + 1;
                }

                operations_research::sat::PrecedenceRelations::Add(v81, v162, v161, v166);
              }
            }

            else if (v88 == 3)
            {
              v89 = 0;
              for (i = 0; ; ++i)
              {
                v97 = v257;
                if (!v89)
                {
                  goto LABEL_172;
                }

                v98 = *(v257 + i);
                if (v98 >= 0)
                {
                  v99 = *(v257 + i);
                }

                else
                {
                  v99 = -v98;
                }

                v100 = *v257;
                if (*v257 >= 0)
                {
                  v101 = *v257;
                }

                else
                {
                  v101 = -v100;
                }

                if (v99 == v101)
                {
                  v102 = v100 > 0;
                  v103 = *(v257 + v89 + 3);
                  v104 = *(__src + 5);
                  if (v103 < 1)
                  {
                    v105 = -*(v104 + ((8 * *(v260 + v89 + 3)) ^ 8));
                  }

                  else
                  {
                    v105 = *(v104 + 8 * *(v260 + v89 + 3));
                  }

                  v106 = *(v260 + i) ^ (v98 >> 63);
                  v107 = *v260 ^ v102;
                  v108 = v105 * v103 - v87;
                  v109 = v108 / v99;
                  v9 = v108 % v99 == 0;
                  v110 = v108 ^ v99;
                  if (v9 || v110 < 0)
                  {
                    v112 = v109;
                  }

                  else
                  {
                    v112 = v109 + 1;
                  }

                  operations_research::sat::PrecedenceRelations::Add(v81, v106, v107, v112);
                  v113 = *(__src + 5);
                  if (v103 < 1)
                  {
                    v114 = *(v113 + 8 * *(v260 + v89 + 3));
                  }

                  else
                  {
                    v114 = -*(v113 + ((8 * *(v260 + v89 + 3)) ^ 8));
                  }

                  v115 = v253 - v114 * v103;
                  v116 = v115 / v99;
                  v9 = v115 % v99 == 0;
                  v117 = v115 ^ v99;
                  if (v9 || v117 < 0)
                  {
                    v119 = v116;
                  }

                  else
                  {
                    v119 = v116 + 1;
                  }

                  operations_research::sat::PrecedenceRelations::Add(v81, v107, v106, v119);
                  v6 = v246;
                  v97 = v257;
                }

                if (v89 != -1)
                {
LABEL_172:
                  v120 = v97[i];
                  if (v120 >= 0)
                  {
                    v121 = v97[i];
                  }

                  else
                  {
                    v121 = -v120;
                  }

                  v122 = v97[1];
                  if (v122 >= 0)
                  {
                    v123 = v97[1];
                  }

                  else
                  {
                    v123 = -v122;
                  }

                  if (v121 == v123)
                  {
                    v124 = v122 > 0;
                    v125 = v97[v89 + 2];
                    v126 = *(__src + 5);
                    if (v125 <= 0)
                    {
                      v127 = -*(v126 + ((8 * *(v260 + v89 + 2)) ^ 8));
                    }

                    else
                    {
                      v127 = *(v126 + 8 * *(v260 + v89 + 2));
                    }

                    v128 = *(v260 + i) ^ (v120 >> 63);
                    v129 = *(v260 + 1) ^ v124;
                    v130 = v127 * v125 - v87;
                    v131 = v130 / v121;
                    v9 = v130 % v121 == 0;
                    v132 = v130 ^ v121;
                    if (v9 || v132 < 0)
                    {
                      v134 = v131;
                    }

                    else
                    {
                      v134 = v131 + 1;
                    }

                    operations_research::sat::PrecedenceRelations::Add(v81, v128, v129, v134);
                    v135 = *(__src + 5);
                    if (v125 <= 0)
                    {
                      v136 = *(v135 + 8 * *(v260 + v89 + 2));
                    }

                    else
                    {
                      v136 = -*(v135 + ((8 * *(v260 + v89 + 2)) ^ 8));
                    }

                    v137 = v253 - v136 * v125;
                    v138 = v137 / v121;
                    v9 = v137 % v121 == 0;
                    v139 = v137 ^ v121;
                    if (v9 || v139 < 0)
                    {
                      v141 = v138;
                    }

                    else
                    {
                      v141 = v138 + 1;
                    }

                    operations_research::sat::PrecedenceRelations::Add(v81, v129, v128, v141);
                    v6 = v246;
                  }

                  if (v89 == -2)
                  {
                    goto LABEL_108;
                  }

                  v97 = v257;
                }

                v142 = v97[i];
                if (v142 >= 0)
                {
                  v143 = v97[i];
                }

                else
                {
                  v143 = -v142;
                }

                v144 = v97[2];
                if (v144 >= 0)
                {
                  v145 = v97[2];
                }

                else
                {
                  v145 = -v144;
                }

                if (v143 == v145)
                {
                  v146 = v144 > 0;
                  v147 = v97[v89 + 1];
                  v148 = *(__src + 5);
                  if (v147 <= 0)
                  {
                    v149 = -*(v148 + ((8 * *(v260 + v89 + 1)) ^ 8));
                  }

                  else
                  {
                    v149 = *(v148 + 8 * *(v260 + v89 + 1));
                  }

                  v150 = *(v260 + i) ^ (v142 >> 63);
                  v151 = *(v260 + 2) ^ v146;
                  v152 = v149 * v147 - v87;
                  v153 = v152 / v143;
                  v9 = v152 % v143 == 0;
                  v154 = v152 ^ v143;
                  if (v9 || v154 < 0)
                  {
                    v156 = v153;
                  }

                  else
                  {
                    v156 = v153 + 1;
                  }

                  operations_research::sat::PrecedenceRelations::Add(v81, v150, v151, v156);
                  v157 = *(__src + 5);
                  if (v147 > 0)
                  {
                    v91 = -*(v157 + ((8 * *(v260 + v89 + 1)) ^ 8));
                  }

                  else
                  {
                    v91 = *(v157 + 8 * *(v260 + v89 + 1));
                  }

                  v92 = v253 - v91 * v147;
                  v93 = v92 / v143;
                  v9 = v92 % v143 == 0;
                  v94 = v92 ^ v143;
                  if (v9 || v94 < 0)
                  {
                    v96 = v93;
                  }

                  else
                  {
                    v96 = v93 + 1;
                  }

                  operations_research::sat::PrecedenceRelations::Add(v81, v151, v150, v96);
                  v6 = v246;
                }

                --v89;
              }
            }
          }

          goto LABEL_108;
        }

        if ((v261 - v260) > 8)
        {
LABEL_108:
          v70 = v249;
          v71 = *(v249 + 15);
          v72 = *(v249 + 6);
          if (v71 != 12)
          {
            v72 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          }

          if (*(v72 + 4) != 2 || (v73 = *(__src + 5), !(*(v73 + 8 * *v260) + *(v73 + ((8 * *v260) ^ 8)))) || (*(v73 + 8 * *(v260 + 1)) + *(v73 + ((8 * *(v260 + 1)) ^ 8)) ? (v74 = v35 <= *(v242 + 192)) : (v74 = 0), !v74))
          {
LABEL_284:
            if (*v243)
            {
              goto LABEL_288;
            }

            v191 = *(v249 + 6);
            if (v71 != 12)
            {
              v191 = &operations_research::sat::_LinearConstraintProto_default_instance_;
            }

            if (*(v191 + 16) != 2 || !v42)
            {
LABEL_288:
              if (v71 == 12)
              {
                v192 = *(v249 + 6);
                if (*(v192 + 4) <= *(v242 + 221))
                {
                  v193 = *(v192 + 16);
                  if (v193 != 2)
                  {
                    goto LABEL_291;
                  }

                  goto LABEL_305;
                }
              }

              else
              {
                v192 = &operations_research::sat::_LinearConstraintProto_default_instance_;
                if (off_2810BEE58 <= *(v242 + 221))
                {
                  goto LABEL_304;
                }
              }

              if (*(v192 + 16) <= 2)
              {
                v196 = v192[9];
                v194 = v248 < *v196;
                v195 = v247 > v196[1];
              }

              else
              {
                v194 = 1;
                v195 = 1;
              }

              operations_research::sat::SplitAndLoadIntermediateConstraints(v194, v195, &v260, &v257, a2);
              v71 = *(v249 + 15);
            }

            if (v71 == 12)
            {
              v192 = *(v249 + 6);
              v193 = *(v192 + 16);
              if (v193 != 2)
              {
LABEL_291:
                if (*v243 || v193 != 4)
                {
                  v245 = 0;
                  v250 = v261 - v260 == 4 && *v257 == 1;
                }

                else
                {
                  v250 = 0;
                  v245 = 1;
                }

                v244 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
                v201 = 0;
                v202 = 0;
                for (j = 0; ; j += 2)
                {
                  while (1)
                  {
                    if (*(v249 + 15) == 12)
                    {
                      v204 = *(v249 + 6);
                      if (j >= *(v204 + 64))
                      {
                        goto LABEL_379;
                      }

                      v205 = (*(v204 + 72) + 8 * j);
                      v207 = *v205;
                      v206 = v205[1];
                      if (!v250)
                      {
LABEL_332:
                        v214 = v245;
                        if (j <= 0)
                        {
                          v214 = 0;
                        }

                        if (v214 == 1)
                        {
                          v215 = *(v202 - 4) ^ 1;
                          if (v202 >= v201)
                          {
                            goto LABEL_336;
                          }

LABEL_349:
                          *v202 = v215;
                        }

                        else
                        {
                          v278[0] = &unk_284F3D550;
                          v279 = v278;
                          v218 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
                          v219 = *(v218 + 4);
                          operations_research::sat::SatSolver::SetNumVariables(v218, (v219 + 1));
                          v215 = 2 * v219;
                          if (v279 == v278)
                          {
                            (*(*v279 + 32))(v279);
                            if (v202 < v201)
                            {
                              goto LABEL_349;
                            }
                          }

                          else
                          {
                            if (v279)
                            {
                              (*(*v279 + 40))();
                            }

                            if (v202 < v201)
                            {
                              goto LABEL_349;
                            }
                          }

LABEL_336:
                          v216 = (v202 >> 2) + 1;
                          if (v216 >> 62)
                          {
                            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                          }

                          if (v201 >> 1 > v216)
                          {
                            v216 = v201 >> 1;
                          }

                          if (v201 >= 0x7FFFFFFFFFFFFFFCLL)
                          {
                            v217 = 0x3FFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v217 = v216;
                          }

                          if (v217)
                          {
                            if (!(v217 >> 62))
                            {
                              operator new();
                            }

                            std::__throw_bad_array_new_length[abi:ne200100]();
                          }

                          *(4 * (v202 >> 2)) = v215;
                          memcpy(0, 0, v202);
                        }

                        operator new();
                      }
                    }

                    else
                    {
                      if (j >= dword_2810BEE88)
                      {
LABEL_379:
                        v251 = v201;
                        operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(v243, &v267);
                        if (*(v242 + 284) == 1 && v267 != __p && __p - v267 != 4)
                        {
                          v276[0] = &unk_284F3D550;
                          v277 = v276;
                          v224 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
                          v225 = *(v224 + 4);
                          operations_research::sat::SatSolver::SetNumVariables(v224, (v225 + 1));
                          v226 = 2 * v225;
                          if (v277 == v276)
                          {
                            (*(*v277 + 32))(v277);
                          }

                          else if (v277)
                          {
                            (*(*v277 + 40))();
                          }

                          if (v267 != __p)
                          {
                            v227 = *v267 ^ 1;
                            v273 = &unk_284F3D130;
                            v274 = ((v226 | 1u) << 32) | v227;
                            v275 = &v273;
                            v228 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
                            operations_research::sat::SatSolver::AddBinaryClause(v228, v274 ^ 1, SHIDWORD(v274));
                            if (v275 == &v273)
                            {
                              (*(*v275 + 4))(v275);
                            }

                            else if (v275)
                            {
                              (*(*v275 + 5))();
                            }

                            operator new();
                          }

                          operator new();
                        }

                        if (v245)
                        {
                          v229 = v267;
                          if (!v267)
                          {
                            goto LABEL_428;
                          }

LABEL_425:
                          __p = v229;
                          operator delete(v229);
                        }

                        else
                        {
                          v230 = v267;
                          v231 = __p;
                          if (v267 != __p)
                          {
                            do
                            {
                              while (1)
                              {
                                v232 = *v230 ^ 1;
                                if (v202 >= v251)
                                {
                                  break;
                                }

                                *v202 = v232;
                                v202 += 4;
                                if (++v230 == v231)
                                {
                                  goto LABEL_421;
                                }
                              }

                              v233 = v202;
                              v234 = v202 >> 2;
                              v235 = v234 + 1;
                              if ((v234 + 1) >> 62)
                              {
                                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                              }

                              if (v251 >> 1 > v235)
                              {
                                v235 = v251 >> 1;
                              }

                              if (v251 >= 0x7FFFFFFFFFFFFFFCLL)
                              {
                                v236 = 0x3FFFFFFFFFFFFFFFLL;
                              }

                              else
                              {
                                v236 = v235;
                              }

                              if (v236)
                              {
                                if (!(v236 >> 62))
                                {
                                  operator new();
                                }

                                std::__throw_bad_array_new_length[abi:ne200100]();
                              }

                              v237 = (4 * v234);
                              v251 = 0;
                              *v237 = v232;
                              v202 = (v237 + 1);
                              memcpy(0, 0, v233);
                              ++v230;
                            }

                            while (v230 != v231);
                          }

LABEL_421:
                          v269 = &unk_284F3BBD8;
                          v270 = 0;
                          v271 = v202 >> 2;
                          v272 = &v269;
                          v238 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
                          operations_research::sat::SatSolver::AddProblemClause(v238, v270, v271, 0);
                          if (v272 == &v269)
                          {
                            (*(*v272 + 4))(v272);
                            v229 = v267;
                            if (v267)
                            {
                              goto LABEL_425;
                            }
                          }

                          else
                          {
                            if (v272)
                            {
                              (*(*v272 + 5))(v272);
                            }

                            v229 = v267;
                            if (v267)
                            {
                              goto LABEL_425;
                            }
                          }
                        }

LABEL_428:
                        if (v257)
                        {
                          v258 = v257;
                          operator delete(v257);
                        }

                        v24 = v260;
                        if (v260)
                        {
                          v261 = v260;
LABEL_432:
                          operator delete(v24);
                        }

                        return;
                      }

                      v208 = (off_2810BEE90 + 8 * j);
                      v207 = *v208;
                      v206 = v208[1];
                      if (!v250)
                      {
                        goto LABEL_332;
                      }
                    }

                    if (v207 != v206)
                    {
                      break;
                    }

                    LiteralAssociatedToEquality = operations_research::sat::IntegerEncoder::GetOrCreateLiteralAssociatedToEquality(v244, *v260, v207);
                    if (v202 >= v201)
                    {
                      v210 = v202;
                      v211 = v202 >> 2;
                      v212 = (v202 >> 2) + 1;
                      if (v212 >> 62)
                      {
                        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                      }

                      if (v201 >> 1 > v212)
                      {
                        v212 = v201 >> 1;
                      }

                      if (v201 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v213 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v213 = v212;
                      }

                      if (v213)
                      {
                        if (!(v213 >> 62))
                        {
                          operator new();
                        }

                        std::__throw_bad_array_new_length[abi:ne200100]();
                      }

                      goto LABEL_378;
                    }

LABEL_368:
                    *v202 = LiteralAssociatedToEquality;
                    v202 += 4;
                    j += 2;
                  }

                  if (v248 >= v207)
                  {
                    if (v206 >= 0x8000000000000002)
                    {
                      v220 = -v206;
                    }

                    else
                    {
                      v220 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    LiteralAssociatedToEquality = operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(v244, *v260 ^ 1u, v220);
                    if (v202 < v201)
                    {
                      goto LABEL_368;
                    }

                    v210 = v202;
                    v211 = v202 >> 2;
                    v221 = (v202 >> 2) + 1;
                    if (v221 >> 62)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    if (v201 >> 1 > v221)
                    {
                      v221 = v201 >> 1;
                    }

                    if (v201 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v213 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v213 = v221;
                    }

                    if (v213)
                    {
                      if (!(v213 >> 62))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }
                  }

                  else
                  {
                    if (v247 > v206)
                    {
                      goto LABEL_332;
                    }

                    LiteralAssociatedToEquality = operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(v244, *v260, v207);
                    if (v202 < v201)
                    {
                      goto LABEL_368;
                    }

                    v210 = v202;
                    v211 = v202 >> 2;
                    v222 = (v202 >> 2) + 1;
                    if (v222 >> 62)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    if (v201 >> 1 > v222)
                    {
                      v222 = v201 >> 1;
                    }

                    if (v201 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v213 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v213 = v222;
                    }

                    if (v213)
                    {
                      if (!(v213 >> 62))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }
                  }

LABEL_378:
                  v201 = 4 * v213;
                  *(4 * v211) = LiteralAssociatedToEquality;
                  v202 = 4 * v211 + 4;
                  memcpy(0, 0, v210);
                }
              }

LABEL_305:
              v197 = v192[9];
              v199 = *v197;
              v198 = v197[1];
              operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(v243, &v267);
              v200 = v247;
              if (v42 && v267 == __p)
              {
                v264 = 0;
                v265 = 0;
                v266 = 0;
                if (v261 != v260)
                {
                  operator new();
                }

                v223 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
                operations_research::sat::SatSolver::AddLinearConstraint(v223, v248 < v199, v199, v247 > v198, v198, &v264);
                if (v264)
                {
                  v265 = v264;
                  operator delete(v264);
                }
              }

              else
              {
                if (v248 < v199)
                {
                  if (v258 != v257)
                  {
                    if (((v258 - v257) & 0x8000000000000000) == 0)
                    {
                      operator new();
                    }

                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  operations_research::sat::AddWeightedSumLowerOrEqual(v267, (__p - v267) >> 2, v260, (v261 - v260) >> 2, 0, 0, -v199, a2);
                  v200 = v247;
                }

                if (v200 > v198)
                {
                  operations_research::sat::AddWeightedSumLowerOrEqual(v267, (__p - v267) >> 2, v260, (v261 - v260) >> 2, v257, (v258 - v257) >> 3, v198, a2);
                }
              }

              v169 = v267;
              if (!v267)
              {
                goto LABEL_428;
              }

              __p = v267;
              goto LABEL_427;
            }

LABEL_304:
            v193 = dword_2810BEE88;
            v192 = &operations_research::sat::_LinearConstraintProto_default_instance_;
            if (dword_2810BEE88 != 2)
            {
              goto LABEL_291;
            }

            goto LABEL_305;
          }

          v75 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
          if (*(v242 + 146) < 1)
          {
            goto LABEL_283;
          }

          v76 = v75;
          v77 = *(v249 + 15);
          if (v77 == 12)
          {
            v78 = *(v249 + 6);
          }

          else
          {
            v78 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          }

          if (*(v78 + 16) == 2 && *v78[9] == v78[9][1])
          {
            v79 = v77 == 12 ? *(*(v249 + 6) + 72) : off_2810BEE90;
            v167 = *v79;
            if (v248 != v167 && v247 != v167 && operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(v75, *v260) && operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(v76, *(v260 + 1)))
            {
              if (dword_2810BFC68 >= 3)
              {
                v70 = v249;
                if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810BFC60, dword_2810BFC68))
                {
                  absl::lts_20240722::log_internal::LogMessage::LogMessage(&v267, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 1346);
                  v241 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v267, 3);
                  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v241, "Load AC version of ", 0x13uLL);
                  absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::ConstraintProto,0>(v241, v249);
                }
              }

              operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(v243, v256);
              if (*(v70 + 15) == 12)
              {
                v168 = *(v70 + 6);
              }

              else
              {
                v168 = &operations_research::sat::_LinearConstraintProto_default_instance_;
              }

              v169 = v256[0];
              if (!v256[0])
              {
                goto LABEL_428;
              }

              v256[1] = v256[0];
              goto LABEL_427;
            }
          }

          if (*(v242 + 146) < 1)
          {
LABEL_283:
            v71 = *(v249 + 15);
            goto LABEL_284;
          }

          if (*(v249 + 15) == 12)
          {
            v170 = *(v249 + 6);
          }

          else
          {
            v170 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          }

          v171 = *(v170 + 4);
          if (v171 < 1)
          {
            v172 = 0;
            v173 = 0;
          }

          else
          {
            v172 = 0;
            v173 = 0;
            v174 = v170[6];
            v175 = v170[3];
            v176 = *(__src + 5);
            do
            {
              v178 = *v174++;
              v177 = v178;
              LODWORD(v178) = *v175;
              v175 = (v175 + 4);
              v179 = v178;
              if (~v178 <= v178)
              {
                v180 = v179;
              }

              else
              {
                v180 = ~v179;
              }

              v181 = 8 * (*(*v6 + 4 * v180) ^ (v179 >> 31));
              v182 = *(v176 + v181);
              v183 = *(v176 + (v181 ^ 8));
              if (v177 < 0)
              {
                v184 = -v183;
              }

              else
              {
                v184 = v182;
              }

              if (v177 >= 0)
              {
                v185 = -v183;
              }

              else
              {
                v185 = v182;
              }

              v172 += v184 * v177;
              v173 += v185 * v177;
              --v171;
            }

            while (v171);
          }

          operations_research::Domain::Domain(&v264, v172, v173);
          operations_research::Domain::FromFlatSpanOfIntervals(v170[9], *(v170 + 16), v262, v186);
          operations_research::Domain::Complement(v263, v262);
          operations_research::Domain::IntersectionWith(&v267, &v264, v263);
          if (v263[0])
          {
            operator delete(v263[1]);
            if ((v262[0] & 1) == 0)
            {
LABEL_263:
              if ((v264 & 1) == 0)
              {
                goto LABEL_265;
              }

              goto LABEL_264;
            }
          }

          else if ((v262[0] & 1) == 0)
          {
            goto LABEL_263;
          }

          operator delete(v262[1]);
          if ((v264 & 1) == 0)
          {
LABEL_265:
            if (operations_research::Domain::IsEmpty(&v267))
            {
              v187 = 0;
              v188 = 0;
            }

            else
            {
              v189 = operations_research::Domain::Min(&v267);
              v190 = operations_research::Domain::Size(&v267);
              v188 = v190 == 1;
              if (v190 == 1)
              {
                v187 = v189;
              }

              else
              {
                v187 = 0;
              }
            }

            if (v267)
            {
              operator delete(__p);
            }

            if (v188 && v248 != v187 && v247 != v187 && operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(v76, *v260) && operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(v76, *(v260 + 1)))
            {
              if (dword_2810BFC80 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810BFC78, dword_2810BFC80))
              {
                absl::lts_20240722::log_internal::LogMessage::LogMessage(&v267, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 1362);
                v240 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v267, 3);
                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v240, "Load NAC version of ", 0x14uLL);
                absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::ConstraintProto,0>(v240, v249);
              }

              operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(v243, v255);
              v169 = v255[0];
              if (!v255[0])
              {
                goto LABEL_428;
              }

              v255[1] = v255[0];
LABEL_427:
              operator delete(v169);
              goto LABEL_428;
            }

            goto LABEL_283;
          }

LABEL_264:
          operator delete(v265);
          goto LABEL_265;
        }

        if (*(v249 + 15) == 12)
        {
          v55 = *(v249 + 6);
        }

        else
        {
          v55 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        }

        v56 = v55[9];
        v57 = v56[*(v55 + 16) - 1];
        if (*v56 <= v38)
        {
          v58 = v38;
        }

        else
        {
          v58 = *v56;
        }

        if (v34 >= v57)
        {
          v59 = v57;
        }

        else
        {
          v59 = v34;
        }

        v60 = operations_research::sat::Model::GetOrCreate<operations_research::sat::GreaterThanAtLeastOneOfDetector>(a2);
        v62 = **(v249 + 3);
        if (~v62 <= v62)
        {
          v63 = **(v249 + 3);
        }

        else
        {
          v63 = ~v62;
        }

        v64 = *(v6[6] + 4 * v63);
        if (*(v249 + 15) == 12)
        {
          v65 = *(v249 + 6);
        }

        else
        {
          v65 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        }

        operations_research::Domain::FromFlatSpanOfIntervals(v65[9], *(v65 + 16), &v267, v61);
        v66 = (v261 - v260) >> 2;
        if (v66 == 2)
        {
          v68 = v257;
          v69 = *(v260 + 1);
          v67 = *(v257 + 1);
        }

        else
        {
          if (v66 != 1)
          {
LABEL_104:
            if (v267)
            {
              operator delete(__p);
            }

            v54 = *v243;
            goto LABEL_107;
          }

          v67 = 0;
          v68 = v257;
          v69 = 0xFFFFFFFFLL;
        }

        operations_research::sat::GreaterThanAtLeastOneOfDetector::Add(v60, (__PAIR64__(v64, v62) >> 31), *v260, *v68, v69, v67, v58, v59);
        goto LABEL_104;
      }

LABEL_28:
      v16 = **(this + 3);
      if (~v16 <= v16)
      {
        v17 = **(this + 3);
      }

      else
      {
        v17 = ~v16;
      }

      v18 = __PAIR64__(*(*(v4 + 48) + 4 * v17), v16) >> 31;
      v19 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ProductDetector>(a2);
      v20 = *(this + 15);
      if (v20 == 12)
      {
        v21 = *(this + 6);
        v22 = *(v21 + 4);
        if (v22 != 1)
        {
          v23 = *(this + 6);
          if (v22 != 2)
          {
            goto LABEL_54;
          }

          goto LABEL_50;
        }
      }

      else
      {
        if (off_2810BEE58 == 2)
        {
          v21 = *(this + 6);
          v23 = &operations_research::sat::_LinearConstraintProto_default_instance_;
LABEL_50:
          v27 = *v23[3];
          v28 = vmax_s32(vmvn_s8(v27), v27);
          if (v20 == 12)
          {
            v29 = v21;
          }

          else
          {
            v29 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          }

          operations_research::sat::ProductDetector::ProcessConditionalEquality(v19, v18, *(*v6 + 4 * v28.i32[0]) ^ (v27.i32[0] >> 31), *(*v6 + 4 * v28.i32[1]) ^ (v27.i32[1] >> 31) ^ (*v29[6] == v23[6][1]));
          goto LABEL_54;
        }

        v21 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        if (off_2810BEE58 != 1)
        {
          goto LABEL_54;
        }
      }

      v25 = *v21[3];
      if (~v25 <= v25)
      {
        v26 = *v21[3];
      }

      else
      {
        v26 = ~v25;
      }

      operations_research::sat::ProductDetector::ProcessConditionalZero(v19, v18, *(*v6 + 4 * v26) ^ (v25 >> 31));
      goto LABEL_54;
    }

    v7 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  operations_research::Domain::FromFlatSpanOfIntervals(v7[9], *(v7 + 16), &v267, v5);
  if (!operations_research::Domain::Contains(&v267, 0))
  {
    if (*(this + 4))
    {
      operator new();
    }

    if (dword_2810BFC50 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFC48, dword_2810BFC50))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(&v264, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 1209);
      v239 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v264, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v239, "Trivially UNSAT constraint: ", 0x1CuLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::ConstraintProto,0>(v239, this);
    }

    *(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2) + 528) = 1;
  }

  if (v267)
  {
    v24 = __p;
    goto LABEL_432;
  }
}

void sub_23CA5EB4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, char a37, void *a38, uint64_t a39, char a40, void *a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, _Unwind_Exception *exception_objecta, void *a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (!a34)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a34);
  _Unwind_Resume(exception_object);
}

void sub_23CA5EEEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::CpModelMapping::Integers<google::protobuf::RepeatedField<int>>(int *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*a2)
  {
    if ((*a2 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23CA5EFC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *operations_research::sat::Model::GetOrCreate<operations_research::sat::GreaterThanAtLeastOneOfDetector>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::GreaterThanAtLeastOneOfDetector>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::GreaterThanAtLeastOneOfDetector>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::GreaterThanAtLeastOneOfDetector>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::GreaterThanAtLeastOneOfDetector>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::GreaterThanAtLeastOneOfDetector>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

operations_research::sat::PrecedenceRelations *operations_research::sat::Model::GetOrCreate<operations_research::sat::PrecedenceRelations>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::PrecedenceRelations>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::PrecedenceRelations>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::PrecedenceRelations>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::PrecedenceRelations>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::PrecedenceRelations>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

void operations_research::sat::anonymous namespace::LoadEquivalenceAC(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, void *a7)
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a7);
  if (!operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(v10, a3))
  {
  }

  if (!operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(v10, a5))
  {
  }

  v22 = xmmword_23CE306D0;
  v11 = operations_research::sat::IntegerEncoder::FullDomainEncoding(v10, a3);
  v12 = *v11;
  v13 = v11[1];
  while (v12 != v13)
  {
    v14 = *(v12 + 8);
    v21 = *v12 * a2;
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>>::find_or_prepare_insert<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>(&v22, &v21, &v25);
    if (v27 == 1)
    {
      v15 = v26;
      *v26 = v21;
      *(v15 + 8) = 0;
    }

    *(v26 + 8) = v14;
    v12 += 16;
  }

  v16 = operations_research::sat::IntegerEncoder::FullDomainEncoding(v10, a5);
  v17 = v16[1];
  if (v17 != *v16)
  {
    if (((v17 - *v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (*(&v22 + 1) >= 2uLL)
  {
    if (v22 >= 2)
    {
      v18 = v23;
      v19 = v24;
      if (*v23 <= -2)
      {
        do
        {
          v20 = __clz(__rbit64((*v18 | ~(*v18 >> 7)) & 0x101010101010101)) >> 3;
          v18 = (v18 + v20);
          v19 += 16 * v20;
        }

        while (*v18 < -1);
      }
    }

    operator new();
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(0, 0, &v25, 0, 1);
  if (v22 >= 2)
  {
    operator delete(&v23[-(BYTE8(v22) & 1) - 8]);
  }
}

void sub_23CA5FCF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
    v31 = a10;
    if (!a10)
    {
LABEL_3:
      if (a13 < 2)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v31 = a10;
    if (!a10)
    {
      goto LABEL_3;
    }
  }

  operator delete(v31);
  if (a13 < 2)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete((a15 - (a14 & 1) - 8));
  _Unwind_Resume(exception_object);
}

void sub_23CA5FDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  if (a13 < 2)
  {
    JUMPOUT(0x23CA5FDB8);
  }

  JUMPOUT(0x23CA5FDE0);
}

void operations_research::sat::anonymous namespace::LoadEquivalenceNeqAC(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, void *a7)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a7);
  if (!operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(v10, a3))
  {
  }

  if (!operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(v10, a5))
  {
  }

  v19 = xmmword_23CE306D0;
  v11 = operations_research::sat::IntegerEncoder::FullDomainEncoding(v10, a3);
  v12 = *v11;
  v13 = v11[1];
  while (v12 != v13)
  {
    v14 = *(v12 + 8);
    v18 = *v12 * a2;
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>>::find_or_prepare_insert<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>(&v19, &v18, &v21);
    if (v23 == 1)
    {
      v15 = v22;
      *v22 = v18;
      *(v15 + 8) = 0;
    }

    *(v22 + 8) = v14;
    v12 += 16;
  }

  v16 = operations_research::sat::IntegerEncoder::FullDomainEncoding(v10, a5);
  v17 = v16[1];
  if (v17 != *v16)
  {
    if (((v17 - *v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (v19 >= 2)
  {
    operator delete((v20 - (BYTE8(v19) & 1) - 8));
  }
}

void sub_23CA601E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a13 >= 2)
  {
    operator delete((a15 - (a14 & 1) - 8));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::AddWeightedSumLowerOrEqual(int *a1, uint64_t a2, char *a3, unint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v67 = *MEMORY[0x277D85DE8];
  if (a4 == 1)
  {
    v13 = *a5;
    if ((*a5 & 0x8000000000000000) == 0)
    {
      v14 = *a5;
    }

    else
    {
      v14 = -v13;
    }

    v15 = *a3 ^ (v13 >> 63);
    if (a2)
    {
      operator new();
    }

    v64 = &unk_284F3D318;
    v65[0] = v15;
    v65[1] = a7 / v14 - (a7 / v14 * v14 > a7);
    v66 = &v64;
    operations_research::sat::LowerOrEqual(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,long long)::{lambda(operations_research::sat::Model *)#1}::operator()(v65, a8);
    if (v66 == &v64)
    {
      (*(*v66 + 4))(v66);
    }

    else if (v66)
    {
      (*(*v66 + 5))(v66);
    }

    return;
  }

  v18 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a8);
  v57 = a2;
  if (*(v18 + 747))
  {
    if (!a2)
    {
      goto LABEL_43;
    }

LABEL_29:
    v42 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a8);
    if (a4)
    {
      v43 = 0;
      v44 = 0;
      v45 = 1;
      do
      {
        while (1)
        {
          v46 = a5[v43];
          v47 = *&a3[4 * v43];
          if ((v46 & 0x8000000000000000) == 0)
          {
            break;
          }

          v44 += -*(*(v42 + 19) + 24 * (v47 ^ 1)) * v46;
          v43 = v45++;
          if (a4 <= v43)
          {
            goto LABEL_34;
          }
        }

        v44 += *(*(v42 + 19) + 24 * v47) * v46;
        v43 = v45++;
      }

      while (a4 > v43);
LABEL_34:
      if (v44 == a7)
      {
        v56 = a7;
        v48 = 0;
        v49 = 1;
        do
        {
          v50 = a5[v48];
          if (v50 >= 1)
          {
            operator new();
          }

          if (v50 < 0)
          {
            operator new();
          }

          v48 = v49++;
        }

        while (a4 > v48);
        goto LABEL_52;
      }
    }

    else if (!a7)
    {
      v56 = 0;
LABEL_52:
      if (v56 < 0)
      {
        if ((a2 & 0x3FFFFFFFFFFFFFFFLL) != 0)
        {
          operator new();
        }

        v60 = &unk_284F3BBD8;
        v61 = 0;
        v62 = 0;
        v63 = &v60;
        v54 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a8);
        operations_research::sat::SatSolver::AddProblemClause(v54, v61, v62, 0);
        if (v63 == &v60)
        {
          (*(*v63 + 4))(v63);
        }

        else if (v63)
        {
          (*(*v63 + 5))();
        }
      }

      return;
    }

    if (*(v18 + 747))
    {
LABEL_43:
      v51 = operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearPropagator>(a8);
      if ((a6 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        if (((8 * a6) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      operations_research::sat::LinearPropagator::AddConstraint(v51, a1, a2, a3, a4, 0, 0, a7);
      if ((v52 & 1) == 0)
      {
        v53 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a8);
        if (*(v53 + 74))
        {
          absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v59, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/integer_expr.h", 554);
          absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v59, "We currently do not support adding conflicting constraint at positive level.");
          absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v59);
        }

        *(v53 + 528) = 1;
      }

      return;
    }

LABEL_46:
    operator new();
  }

  if (a4 != 3)
  {
    if (a4 == 2)
    {
      v19 = *a5;
      if (*a5 == 1 || v19 == -1)
      {
        v20 = a5[1];
        if (v20 == 1 || v20 == -1)
        {
          v21 = *(a3 + 1);
          v22 = *a3 ^ (v19 != 1);
          v23 = v21 ^ (v20 != 1);
          if (a2)
          {
            v24 = -a7;
            v25 = v23 ^ 1;
          }

          else
          {
            v55 = operations_research::sat::Model::GetOrCreate<operations_research::sat::PrecedenceRelations>(a8);
            v24 = -a7;
            v25 = v23 ^ 1;
            operations_research::sat::PrecedenceRelations::Add(v55, v22, v23 ^ 1, v24);
          }

          v37 = operations_research::sat::Model::GetOrCreate<operations_research::sat::PrecedencesPropagator>(a8);
          v38 = v22;
          v40 = v25;
          v41 = v24;
          v39 = -1;
          goto LABEL_63;
        }
      }
    }

LABEL_28:
    if (!a2)
    {
      goto LABEL_46;
    }

    goto LABEL_29;
  }

  v26 = *a5;
  if (*a5 != 1 && v26 != -1)
  {
    goto LABEL_28;
  }

  v27 = a5[1];
  if (v27 != 1 && v27 != -1)
  {
    goto LABEL_28;
  }

  v28 = a5[2];
  if (v28 != 1 && v28 != -1)
  {
    goto LABEL_28;
  }

  v29 = a7;
  v30 = v27 != 1;
  v31 = v26 != 1;
  v32 = v28 == 1;
  v33 = a8;
  v34 = *a3;
  v35 = *(a3 + 1);
  v36 = *(a3 + 2);
  v37 = operations_research::sat::Model::GetOrCreate<operations_research::sat::PrecedencesPropagator>(v33);
  v38 = v34 ^ v31;
  v39 = v35 ^ v30;
  v40 = v36 ^ v32;
  v41 = -v29;
LABEL_63:

  operations_research::sat::PrecedencesPropagator::AddArc(v37, v38, v40, v41, v39, a1, v57);
}

void sub_23CA60C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::function<void ()(operations_research::sat::Model *)>::~function(va);
  if (v16)
  {
    operator delete(v16);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::function<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_> ()(operations_research::sat::Model *)>::~function(uint64_t a1)
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

void operations_research::sat::LoadAllDiffConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v4 = *(this + 6);
  if (*(this + 15) != 13)
  {
    v4 = &operations_research::sat::_AllDifferentConstraintProto_default_instance_;
  }

  operations_research::sat::CpModelMapping::Affines<google::protobuf::RepeatedPtrField<operations_research::sat::LinearExpressionProto>>(v4 + 4, &__p);
  operations_research::sat::AllDifferentOnBounds(&__p, v6);
}

void sub_23CA60ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::CpModelMapping::Affines<google::protobuf::RepeatedPtrField<operations_research::sat::LinearExpressionProto>>(int *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = a2[2];
  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23CA61054(_Unwind_Exception *a1)
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

void operations_research::sat::LoadIntProdConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v3 = a2;
  v90 = *MEMORY[0x277D85DE8];
  v76 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  if (*(this + 15) == 11)
  {
    v5 = *(this + 6);
  }

  else
  {
    v5 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v6 = v5[6];
  if (!v6)
  {
    v6 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v7 = *(v6 + 4);
  if (v7 > 1)
  {
    operations_research::sat::LoadIntProdConstraint(v7);
  }

  if (v7)
  {
    v8 = *v6[3];
    if (~v8 <= v8)
    {
      v9 = *v6[3];
    }

    else
    {
      v9 = ~v8;
    }

    v10 = *(*v76 + 4 * v9) ^ (v8 >> 31);
    v11 = *v6[6];
    v12 = v10 ^ (v11 >> 63);
    if (v11 >= 0)
    {
      v13 = *v6[6];
    }

    else
    {
      v13 = -v11;
    }
  }

  else
  {
    v13 = 0;
    v12 = -1;
  }

  v75 = v6[8];
  v15 = v5[3];
  v14 = v5 + 3;
  v16 = (v15 + 7);
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v14;
  }

  v18 = *(v14 + 2);
  if (v18)
  {
    v72 = v13;
    v73 = v12;
    v74 = v3;
    v19 = 0;
    v20 = 0;
    v21 = 8 * v18;
    do
    {
      v22 = *v17;
      v23 = *(*v17 + 4);
      if (v23 > 1)
      {
        absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v23, 1, "exp.vars().size() <= 1");
      }

      if (v23)
      {
        v24 = *v22[3];
        if (~v24 <= v24)
        {
          v25 = *v22[3];
        }

        else
        {
          v25 = ~v24;
        }

        v26 = *(*v76 + 4 * v25) ^ (v24 >> 31);
        v27 = *v22[6];
        v28 = v26 ^ (v27 >> 63);
        if (v27 >= 0)
        {
          v29 = *v22[6];
        }

        else
        {
          v29 = -v27;
        }

        v30 = v22[8];
      }

      else
      {
        v29 = 0;
        v28 = -1;
        v30 = v22[8];
      }

      v31 = v20 - v19;
      v32 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3);
      v33 = v32 + 1;
      if (v32 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * (-v19 >> 3) > v33)
      {
        v33 = 0x5555555555555556 * (-v19 >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v19 >> 3) >= 0x555555555555555)
      {
        v34 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v34 = v33;
      }

      if (v34)
      {
        if (v34 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v35 = 24 * v32;
      *v35 = v28;
      *(v35 + 8) = v29;
      *(v35 + 16) = v30;
      v20 = 24 * v32 + 24;
      v36 = (v35 - v31);
      memcpy((v35 - v31), v19, v31);
      if (v19)
      {
        operator delete(v19);
      }

      v19 = v36;
      ++v17;
      v21 -= 8;
    }

    while (v21);
    v3 = v74;
    v12 = v73;
    v13 = v72;
    v37 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v36) >> 3);
    if (v37)
    {
      if (v37 != 1)
      {
        if (v37 == 2)
        {
          v38 = *v36;
          v80 = *(v36 + 2);
          v79 = v38;
          v78 = *(v36 + 5);
          v77 = *(v36 + 24);
          *v83 = v38;
          *&v83[16] = v80;
          v84 = v77;
          *&__p_8 = v78;
          operator new();
        }

        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v83, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 1530);
        absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v83, "Loading int_prod with arity > 2, should not be here.");
        absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v83);
      }

      v52 = *(v74 + 3);
      if (v52 > 1)
      {
        v54 = 0;
        _X11 = *(v74 + 5);
        __asm { PRFM            #4, [X11] }

        v61 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
        v62 = vdup_n_s8(v61 & 0x7F);
        v63 = ((v61 >> 7) ^ (_X11 >> 12)) & v52;
        v64 = *(_X11 + v63);
        v65 = vceq_s8(v64, v62);
        if (!v65)
        {
          goto LABEL_84;
        }

LABEL_81:
        v66 = *(v74 + 6);
        while (1)
        {
          v67 = (v63 + (__clz(__rbit64(v65)) >> 3)) & v52;
          if (*(v66 + 16 * v67) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
          {
            break;
          }

          v65 &= ((v65 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v65)
          {
LABEL_84:
            while (!*&vceq_s8(v64, 0x8080808080808080))
            {
              v54 += 8;
              v63 = (v54 + v63) & v52;
              v64 = *(_X11 + v63);
              v65 = vceq_s8(v64, v62);
              if (v65)
              {
                goto LABEL_81;
              }
            }

            goto LABEL_98;
          }
        }

        v53 = (v66 + 16 * v67);
        if (_X11 + v67)
        {
          goto LABEL_88;
        }
      }

      else if (*(v74 + 4) >= 2uLL)
      {
        v53 = (v74 + 40);
        if (*(v74 + 5) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          if (&absl::lts_20240722::container_internal::kSooControl)
          {
LABEL_88:
            v68 = v53[1];
LABEL_99:
            *v83 = v68;
            *&v83[8] = 0u;
            v84 = 0u;
            __p_8 = 0u;
            LODWORD(v79) = v73;
            *(&v79 + 1) = v72;
            v80 = v75;
            operations_research::sat::LinearConstraintBuilder::AddTerm(v83, &v79, 1);
            v69 = *v36;
            v80 = *(v36 + 2);
            v79 = v69;
            operations_research::sat::LinearConstraintBuilder::AddTerm(v83, &v79, -1);
            operations_research::sat::LinearConstraintBuilder::Build(v83, &v79);
            operations_research::sat::LoadConditionalLinearConstraint(0, 0, &v79, v74);
            v70 = v82;
            v82 = 0;
            if (v70)
            {
              MEMORY[0x23EED9440](v70, 0x1000C8000313F17);
            }

            v71 = v81;
            v81 = 0;
            if (v71)
            {
              MEMORY[0x23EED9440](v71, 0x1000C8052888210);
            }

            if (*(&v84 + 1))
            {
              *&__p_8 = *(&v84 + 1);
              operator delete(*(&v84 + 1));
            }

            goto LABEL_105;
          }
        }
      }

LABEL_98:
      v68 = 0;
      goto LABEL_99;
    }
  }

  else
  {
    v19 = 0;
  }

  v39 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(v3);
  v40 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v3);
  if ((1 - v75) / v13 - ((1 - v75) / v13 * v13 > 1 - v75) >= 0x8000000000000002)
  {
    v41 = ((1 - v75) / v13 * v13 > 1 - v75) - (1 - v75) / v13;
  }

  else
  {
    v41 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v42 = 1;
  if (v75 <= 1)
  {
    v42 = -1;
  }

  if (v12 == -1)
  {
    v43 = 0xFFFFFFFFLL;
  }

  else
  {
    v43 = v12 ^ 1;
  }

  if (v12 == -1)
  {
    v44 = v42;
  }

  else
  {
    v44 = v41;
  }

  v89 = 0;
  if (!operations_research::sat::IntegerTrail::Enqueue(v39, v43, v44, v88))
  {
    v50 = 1;
    goto LABEL_90;
  }

  v45 = (1 - v75) / v13;
  if (v45 * v13 >= 1 - v75)
  {
    v46 = (1 - v75) / v13;
  }

  else
  {
    v46 = v45 + 1;
  }

  v47 = 1;
  if (v75 >= 1)
  {
    v47 = -1;
  }

  if (v12 == -1)
  {
    v48 = 0xFFFFFFFFLL;
  }

  else
  {
    v48 = v12;
  }

  if (v12 == -1)
  {
    v49 = v47;
  }

  else
  {
    v49 = v46;
  }

  v87 = 0;
  v50 = operations_research::sat::IntegerTrail::Enqueue(v39, v48, v49, v86) ^ 1;
  if (v87 == v86)
  {
    (*(*v87 + 32))(v87);
    v51 = v89;
    if (v89 != v88)
    {
      goto LABEL_91;
    }

LABEL_73:
    (*(*v51 + 32))(v51);
    if (!v50)
    {
      goto LABEL_95;
    }

LABEL_94:
    *(v40 + 528) = 1;
    goto LABEL_95;
  }

  if (!v87)
  {
LABEL_90:
    v51 = v89;
    if (v89 != v88)
    {
      goto LABEL_91;
    }

    goto LABEL_73;
  }

  (*(*v87 + 40))();
  v51 = v89;
  if (v89 == v88)
  {
    goto LABEL_73;
  }

LABEL_91:
  if (v51)
  {
    (*(*v51 + 40))(v51);
  }

  if (v50)
  {
    goto LABEL_94;
  }

LABEL_95:
  if (v19)
  {
LABEL_105:
    operator delete(v19);
  }
}

void sub_23CA61878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::~function(v34 - 160);
  std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::~function(v34 - 128);
  if (!v33)
  {
    _Unwind_Resume(a1);
  }

  operator delete(v33);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::~function(uint64_t a1)
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

void operations_research::sat::LinearConstraint::~LinearConstraint(operations_research::sat::LinearConstraint *this)
{
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    MEMORY[0x23EED9440](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    MEMORY[0x23EED9440](v3, 0x1000C8052888210);
  }
}

void operations_research::sat::LoadIntDivConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v7 = *(this + 6);
  if (*(this + 15) != 7)
  {
    v7 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v8 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  if (v7[6])
  {
    v8 = v7[6];
  }

  v9 = *(v8 + 4);
  if (v9 > 1)
  {
    operations_research::sat::LoadIntProdConstraint(*(v8 + 4));
  }

  v12 = v7[3];
  v10 = v7 + 3;
  v11 = v12;
  v13 = (v12 + 7);
  if ((v12 & 1) == 0)
  {
    v13 = v10;
  }

  v14 = *v13;
  v15 = *(*v13 + 4);
  if (v15 > 1)
  {
    operations_research::sat::LoadIntProdConstraint(v15);
  }

  if (v15)
  {
    v16 = *v14[3];
    if (~v16 <= v16)
    {
      v17 = *v14[3];
    }

    else
    {
      v17 = ~v16;
    }

    v18 = *v14[6];
    v19 = *(*v6 + 4 * v17) ^ (v16 >> 31) ^ (v18 >> 63);
    if (v18 >= 0)
    {
      v20 = *v14[6];
    }

    else
    {
      v20 = -v18;
    }
  }

  else
  {
    v20 = 0;
    v19 = -1;
  }

  v21 = v14[8];
  LODWORD(v58) = v19;
  *(&v58 + 1) = v20;
  v59 = v21;
  v22 = (v11 + 15);
  if ((v11 & 1) == 0)
  {
    v22 = v10;
  }

  v23 = *v22;
  v24 = *(*v22 + 4);
  if (v24 > 1)
  {
    operations_research::sat::LoadIntProdConstraint(v24);
  }

  if (!v24 || ((v25 = *v23[3], ~v25 <= v25) ? (v26 = *v23[3]) : (v26 = ~v25), (v27 = *v23[6], v28 = *(*v6 + 4 * v26) ^ (v25 >> 31) ^ (v27 >> 63), v27 >= 0) ? (v29 = *v23[6]) : (v29 = -v27), v30 = v23[8], LODWORD(v56) = v28, *(&v56 + 1) = v29, v57 = v30, v28 == -1))
  {
    v54 = v58;
    v55 = v59;
  }

  else
  {
    if (*(*(v5 + 5) + 8 * v28) + *(*(v5 + 5) + ((8 * v28) ^ 8)))
    {
      if (dword_2810BFC98 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFC90, dword_2810BFC98))
      {
        v31 = *(a2 + 3);
        if (v31 > 1)
        {
          v33 = 0;
          _X11 = *(a2 + 5);
          __asm { PRFM            #4, [X11] }

          v40 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
          v41 = vdup_n_s8(v40 & 0x7F);
          v42 = ((v40 >> 7) ^ (_X11 >> 12)) & v31;
          v43 = *(_X11 + v42);
          v44 = vceq_s8(v43, v41);
          if (!v44)
          {
            goto LABEL_46;
          }

LABEL_43:
          v45 = *(a2 + 6);
          do
          {
            v46 = (v42 + (__clz(__rbit64(v44)) >> 3)) & v31;
            if (*(v45 + 16 * v46) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
            {
              v31 = v45 + 16 * v46;
              v32 = (_X11 + v46);
              goto LABEL_51;
            }

            v44 &= ((v44 & 0x8080808080808080) - 1) & 0x8080808080808080;
          }

          while (v44);
LABEL_46:
          while (!*&vceq_s8(v43, 0x8080808080808080))
          {
            v33 += 8;
            v42 = (v33 + v42) & v31;
            v43 = *(_X11 + v42);
            v44 = vceq_s8(v43, v41);
            if (v44)
            {
              goto LABEL_43;
            }
          }

LABEL_49:
          v32 = 0;
        }

        else
        {
          v31 = *(a2 + 4);
          if (v31 < 2)
          {
            goto LABEL_49;
          }

          v31 = a2 + 40;
          if (*(a2 + 5) != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
          {
            goto LABEL_49;
          }

          v32 = &absl::lts_20240722::container_internal::kSooControl;
        }

LABEL_51:
        if (v32)
        {
          v47 = *(v31 + 8);
        }

        else
        {
          v47 = 0;
        }

        *v51 = v47;
        *&v51[8] = 0u;
        v52 = 0u;
        __p_8 = 0u;
        v48 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ProductDecomposer>(a2);
        if (operations_research::sat::ProductDecomposer::TryToLinearize(v48, &v58, &v56, v51) && dword_2810BFCB0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFCA8, dword_2810BFCB0))
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(v50, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 1549);
          v49 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v50, 1);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v49, "Division ", 9uLL);
          absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::ConstraintProto,0>(v49, this);
        }

        if (*(&v52 + 1))
        {
          *&__p_8 = *(&v52 + 1);
          operator delete(*(&v52 + 1));
        }
      }

      v52 = v58;
      *&__p_8 = v59;
      *v51 = v56;
      *&v51[16] = v57;
      operator new();
    }

    v54 = v58;
    v55 = v59;
  }

  operator new();
}

void sub_23CA61F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

operations_research::sat::IntegerTrail **operations_research::sat::Model::GetOrCreate<operations_research::sat::ProductDecomposer>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ProductDecomposer>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ProductDecomposer>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::ProductDecomposer>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::ProductDecomposer>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::ProductDecomposer>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

void operations_research::sat::LoadIntModConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  v7 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  if (*(this + 15) == 8)
  {
    v7 = *(this + 6);
  }

  v8 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  if (v7[6])
  {
    v8 = v7[6];
  }

  v9 = *(v8 + 4);
  if (v9 <= 1)
  {
    v12 = v7[3];
    v10 = v7 + 3;
    v11 = v12;
    v13 = (v12 + 7);
    if ((v12 & 1) == 0)
    {
      v13 = v10;
    }

    v14 = *(*v13 + 4);
    if (v14 <= 1)
    {
      v15 = (v11 + 15);
      if ((v11 & 1) == 0)
      {
        v15 = v10;
      }

      v16 = *v15;
      v17 = *(*v15 + 4);
      if (v17 <= 1)
      {
        if (v17)
        {
          v18 = *v16[3];
          if (~v18 <= v18)
          {
            v19 = *v16[3];
          }

          else
          {
            v19 = ~v18;
          }

          v20 = *(*v5 + 4 * v19) ^ (v18 >> 31) ^ (*v16[6] >> 63);
          if (v20 != -1)
          {
            if (*(*(v6 + 5) + 8 * v20) + *(*(v6 + 5) + ((8 * v20) ^ 8)))
            {
              operations_research::sat::LoadIntModConstraint(v21);
            }
          }
        }

        operator new();
      }

      operations_research::sat::LoadIntProdConstraint(v17);
    }

    operations_research::sat::LoadIntProdConstraint(v14);
  }

  operations_research::sat::LoadIntProdConstraint(*(v8 + 4));
}

void sub_23CA624B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::function<void ()(operations_research::sat::Model *)>::~function(va);
  _Unwind_Resume(a1);
}

void operations_research::sat::LoadLinMaxConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v28[4] = *MEMORY[0x277D85DE8];
  if (*(this + 15) == 27)
  {
    v3 = *(this + 6);
  }

  else
  {
    v3 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  if (*(v3 + 8))
  {
    operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
    if (*(this + 15) == 27)
    {
      v5 = *(this + 6);
    }

    else
    {
      v5 = &operations_research::sat::_LinearArgumentProto_default_instance_;
    }

    v6 = v5[6];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }

    operations_research::sat::CpModelMapping::GetExprFromProto(v7, &v27);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    if (*(this + 15) == 27)
    {
      v8 = *(this + 6);
    }

    else
    {
      v8 = &operations_research::sat::_LinearArgumentProto_default_instance_;
    }

    std::vector<operations_research::sat::LinearExpression>::reserve(&v24, *(v8 + 8));
    v9 = 0;
    for (i = 1; ; ++i)
    {
      if (*(this + 15) == 27)
      {
        v11 = *(this + 6);
        if (v9 >= *(v11 + 8))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v9 >= dword_2810BEFF8)
        {
LABEL_33:
          operations_research::sat::NegationOf(v19, &v27);
          operations_research::sat::IsEqualToMinOf(v19, v28, &v24);
        }

        v11 = &operations_research::sat::_LinearArgumentProto_default_instance_;
      }

      v13 = v11[3];
      v12 = (v11 + 3);
      v14 = &v13[i - 1] + 7;
      if (v13)
      {
        v12 = v14;
      }

      operations_research::sat::CpModelMapping::GetExprFromProto(*v12, v16);
      operations_research::sat::NegationOf(v19, v16);
      v15 = v25;
      if (v25 >= v26)
      {
        v25 = std::vector<operations_research::sat::LinearExpression>::__emplace_back_slow_path<operations_research::sat::LinearExpression>(&v24, v19);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      else
      {
        *(v25 + 16) = 0;
        v15[3] = 0;
        *v15 = 0;
        v15[1] = 0;
        *v15 = *v19;
        v15[2] = v20;
        v19[0] = 0;
        v19[1] = 0;
        v20 = 0;
        v15[4] = 0;
        v15[5] = 0;
        *(v15 + 3) = *__p;
        v15[5] = v22;
        __p[0] = 0;
        __p[1] = 0;
        v22 = 0;
        v15[6] = v23;
        v25 = (v15 + 7);
      }

      if (v19[0])
      {
        v19[1] = v19[0];
        operator delete(v19[0]);
      }

      if (v17)
      {
        v18 = v17;
        operator delete(v17);
      }

      if (v16[0])
      {
        v16[1] = v16[0];
        operator delete(v16[0]);
      }

      ++v9;
    }
  }

  *(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2) + 528) = 1;
}

void sub_23CA6285C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  operations_research::sat::LinearExpr::~LinearExpr(&a17);
  std::vector<operations_research::sat::LinearExpression>::~vector[abi:ne200100](&a24);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  _Unwind_Resume(a1);
}

void operations_research::sat::CpModelMapping::GetExprFromProto(const operations_research::sat::LinearExpressionProto *a2@<X1>, uint64_t x8_0@<X8>)
{
  v23 = 0;
  *__p = 0u;
  v22 = 0u;
  *v20 = 0u;
  operations_research::sat::CpModelMapping::Integers<google::protobuf::RepeatedField<int>>(a2 + 4, &v18);
  v4 = *(a2 + 10);
  *v20 = v18;
  __p[0] = v19;
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 6) + 8 * v6);
      if (v5 < *(&v22 + 1))
      {
        *v5 = v7;
        v5 += 8;
      }

      else
      {
        v8 = __p[1];
        v9 = v5 - __p[1];
        v10 = (v5 - __p[1]) >> 3;
        v11 = v10 + 1;
        if ((v10 + 1) >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v12 = *(&v22 + 1) - __p[1];
        if ((*(&v22 + 1) - __p[1]) >> 2 > v11)
        {
          v11 = v12 >> 2;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          if (!(v13 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v14 = (v5 - __p[1]) >> 3;
        v15 = (8 * v10);
        v16 = (8 * v10 - 8 * v14);
        *v15 = v7;
        v5 = (v15 + 1);
        memcpy(v16, v8, v9);
        __p[1] = v16;
        v22 = v5;
        if (v8)
        {
          operator delete(v8);
        }
      }

      *&v22 = v5;
      ++v6;
    }

    while (v6 < *(a2 + 10));
  }

  v23 = *(a2 + 8);
  operations_research::sat::CanonicalizeExpr(v20, x8_0);
  if (__p[1])
  {
    *&v22 = __p[1];
    operator delete(__p[1]);
  }

  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }
}

void sub_23CA62A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  _Unwind_Resume(a1);
}

void sub_23CA62A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  _Unwind_Resume(a1);
}

void sub_23CA62AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  _Unwind_Resume(a1);
}

void sub_23CA62ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  _Unwind_Resume(a1);
}

void std::vector<operations_research::sat::LinearExpression>::reserve(void *a1, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23CA62BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<operations_research::sat::LinearExpression>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void operations_research::sat::IsEqualToMinOf(void *a1@<X0>, uint64_t a2@<X8>, const operations_research::sat::LinearExpression **a3@<X1>)
{
  v4 = a1[1];
  if (v4 != *a1)
  {
    if (((v4 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[3];
  v5 = a1[4];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  memset(__p, 0, sizeof(__p));
  std::vector<operations_research::sat::LinearExpression>::__init_with_size[abi:ne200100]<operations_research::sat::LinearExpression*,operations_research::sat::LinearExpression*>(__p, *a3, a3[1], 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 3));
  *(a2 + 24) = 0;
  operator new();
}

void sub_23CA62E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  operations_research::sat::LinearExpr::~LinearExpr(v10);
  operator delete(v9);
  operations_research::sat::IsEqualToMinOf(operations_research::sat::LinearExpression const&,std::vector<operations_research::sat::LinearExpression> const&)::{lambda(operations_research::sat::Model *)#1}::~Model(&a9);
  _Unwind_Resume(a1);
}

void sub_23CA62E70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

char **std::vector<operations_research::sat::LinearExpression>::~vector[abi:ne200100](char **a1)
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
        v5 = *(v3 - 4);
        if (v5)
        {
          *(v3 - 3) = v5;
          operator delete(v5);
        }

        v6 = v3 - 56;
        v7 = *(v3 - 7);
        if (v7)
        {
          *(v3 - 6) = v7;
          operator delete(v7);
        }

        v3 -= 56;
      }

      while (v6 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void operations_research::sat::CpModelMapping::Intervals<google::protobuf::RepeatedField<int>>(int *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*a2)
  {
    if ((*a2 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23CA62FC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::LoadNoOverlap2dConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  if (*(this + 15) == 21)
  {
    v3 = *(this + 6);
  }

  else
  {
    v3 = &operations_research::sat::_NoOverlap2DConstraintProto_default_instance_;
  }

  if (*(v3 + 4))
  {
    operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
    v6 = *(this + 6);
    if (*(this + 15) != 21)
    {
      v6 = &operations_research::sat::_NoOverlap2DConstraintProto_default_instance_;
    }

    operations_research::sat::CpModelMapping::Intervals<google::protobuf::RepeatedField<int>>(v6 + 4, &v9);
    v7 = *(this + 6);
    if (*(this + 15) != 21)
    {
      v7 = &operations_research::sat::_NoOverlap2DConstraintProto_default_instance_;
    }

    operations_research::sat::CpModelMapping::Intervals<google::protobuf::RepeatedField<int>>(v7 + 10, &__p);
    operations_research::sat::AddNonOverlappingRectangles(&v9, &__p, a2);
  }
}

void sub_23CA630A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    v14 = a12;
    if (!a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::LoadCumulativeConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v6 = *(this + 15);
  v5 = (this + 60);
  v7 = *(v5 - 3);
  if (v6 != 22)
  {
    v7 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
  }

  operations_research::sat::CpModelMapping::Intervals<google::protobuf::RepeatedField<int>>(v7 + 6, &v22);
  v8 = *(v5 - 3);
  if (*v5 != 22)
  {
    v8 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
  }

  v9 = v8[9];
  if (!v9)
  {
    v9 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v10 = *(v9 + 4);
  if (v10 <= 1)
  {
    if (v10)
    {
      v11 = *v9[3];
      if (~v11 <= v11)
      {
        v12 = *v9[3];
      }

      else
      {
        v12 = ~v11;
      }

      v13 = *(*v4 + 4 * v12) ^ (v11 >> 31);
      v14 = *v9[6];
      v15 = v13 ^ (v14 >> 63);
      if (v14 >= 0)
      {
        v16 = *v9[6];
      }

      else
      {
        v16 = -v14;
      }
    }

    else
    {
      v16 = 0;
      v15 = -1;
    }

    v17 = v9[8];
    operations_research::sat::CpModelMapping::Affines<google::protobuf::RepeatedPtrField<operations_research::sat::LinearExpressionProto>>(v8 + 12, &__p);
    LODWORD(v18) = v15;
    v19 = v16;
    v20 = v17;
    operations_research::sat::Cumulative(&v22, &__p, v23);
  }

  absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v10, 1, "exp.vars().size() <= 1");
}

void sub_23CA6333C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (!a15)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::LoadReservoirConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
  v7 = *(this + 6);
  if (*(this + 15) != 24)
  {
    v7 = &operations_research::sat::_ReservoirConstraintProto_default_instance_;
  }

  operations_research::sat::CpModelMapping::Affines<google::protobuf::RepeatedPtrField<operations_research::sat::LinearExpressionProto>>(v7 + 4, &v39);
  v8 = *(this + 6);
  if (*(this + 15) != 24)
  {
    v8 = &operations_research::sat::_ReservoirConstraintProto_default_instance_;
  }

  v27 = v5;
  operations_research::sat::CpModelMapping::Affines<google::protobuf::RepeatedPtrField<operations_research::sat::LinearExpressionProto>>(v8 + 16, &v37);
  if (*(this + 15) == 24)
  {
    v9 = *(this + 6);
  }

  else
  {
    v9 = &operations_research::sat::_ReservoirConstraintProto_default_instance_;
  }

  v10 = *(v9 + 6);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 4 * v10;
    while (1)
    {
      if (*(this + 15) == 24)
      {
        v15 = *(this + 6);
        if (*(v15 + 10))
        {
          goto LABEL_13;
        }

LABEL_27:
        v18 = v6[82];
        if (v18 == -1)
        {
          v23 = *(*v6 + 16);
          operations_research::sat::SatSolver::SetNumVariables(*v6, (v23 + 1));
          v6[82] = 2 * v23;
          operations_research::sat::SatSolver::AddUnitClause(*v6, 2 * v23);
          v18 = v6[82];
          if (v12 >= v13)
          {
LABEL_31:
            v19 = v12;
            v20 = v12 >> 2;
            v24 = v20 + 1;
            if ((v20 + 1) >> 62)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (v13 >> 1 > v24)
            {
              v24 = v13 >> 1;
            }

            if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v22 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v24;
            }

            if (v22)
            {
              if (!(v22 >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            goto LABEL_40;
          }
        }

        else if (v12 >= v13)
        {
          goto LABEL_31;
        }

LABEL_10:
        *v12 = v18;
        v12 += 4;
        v11 += 4;
        if (v14 == v11)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v15 = &operations_research::sat::_ReservoirConstraintProto_default_instance_;
        if (!dword_2810BEB28)
        {
          goto LABEL_27;
        }

LABEL_13:
        v16 = *(v15[6] + v11);
        if (~v16 <= v16)
        {
          v17 = v16;
        }

        else
        {
          v17 = ~v16;
        }

        v18 = __PAIR64__(*(*(v27 + 48) + 4 * v17), v16) >> 31;
        if (v12 < v13)
        {
          goto LABEL_10;
        }

        v19 = v12;
        v20 = v12 >> 2;
        v21 = v20 + 1;
        if ((v20 + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v13 >> 1 > v21)
        {
          v21 = v13 >> 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v22 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          if (!(v22 >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

LABEL_40:
        v25 = (4 * v20);
        v13 = 4 * v22;
        *v25 = v18;
        v12 = (v25 + 1);
        memcpy(0, 0, v19);
        v11 += 4;
        if (v14 == v11)
        {
          goto LABEL_43;
        }
      }
    }
  }

  v12 = 0;
LABEL_43:
  v34 = 0;
  v35 = 0;
  v36 = 0;
  if (v40 != v39)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v40 - v39) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  if (v38 != v37)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v38 - v37) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  __p = 0;
  v29 = 0;
  v30 = 0;
  if (v12)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v26 = &operations_research::sat::_ReservoirConstraintProto_default_instance_;
  if (*(this + 15) == 24)
  {
    v26 = *(this + 6);
  }

  operations_research::sat::AddReservoirConstraint(&v34, &v31, &__p, v26[11], v26[12], a2);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
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

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }
}

void sub_23CA63800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
    v25 = a15;
    if (!a15)
    {
LABEL_3:
      v26 = a18;
      if (!a18)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v25 = a15;
    if (!a15)
    {
      goto LABEL_3;
    }
  }

  operator delete(v25);
  v26 = a18;
  if (!a18)
  {
LABEL_4:
    if (!v22)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v26);
  if (!v22)
  {
LABEL_5:
    v27 = a21;
    if (!a21)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v22);
  v27 = a21;
  if (!a21)
  {
LABEL_6:
    v28 = *(v23 - 104);
    if (!v28)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v27);
  v28 = *(v23 - 104);
  if (!v28)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  *(v23 - 96) = v28;
  operator delete(v28);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::LoadCircuitConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(this + 15) == 15)
  {
    v3 = *(this + 6);
  }

  else
  {
    v3 = &operations_research::sat::_CircuitConstraintProto_default_instance_;
  }

  v4 = *(v3 + 4);
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23CA63C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::ReindexArcs<std::vector<int>>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = (a1[1] - *a1) >> 2;
  if (!v3)
  {
    return 0;
  }

  v10[0] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::EmptyNode(void)::empty_node;
  v10[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::EmptyNode(void)::empty_node;
  v11 = 0;
  if (v3 >= 1)
  {
    operator new();
  }

  v8 = xmmword_23CE306D0;
  if (a3)
  {
    if (*a3 >= 2uLL)
    {
      operator delete((a3[2] - (a3[1] & 1) - 8));
    }

    v6 = v9;
    *a3 = v8;
    *(a3 + 1) = v6;
    v5 = v11;
  }

  else
  {
    v5 = v11;
    if (v8 >= 2)
    {
      operator delete((v9 - (BYTE8(v8) & 1) - 8));
    }
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::clear(v10);
  return v5;
}

void sub_23CA640E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, char a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (a10 >= 2)
  {
    operator delete((a12 - (a11 & 1) - 8));
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::clear(va);
  _Unwind_Resume(a1);
}

void operations_research::sat::LoadRoutesConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(this + 15) == 23)
  {
    v3 = *(this + 6);
  }

  else
  {
    v3 = &operations_research::sat::_RoutesConstraintProto_default_instance_;
  }

  v4 = *(v3 + 4);
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23CA6444C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::LoadConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v3 = *(this + 15);
  result = 1;
  switch(v3)
  {
    case 0:
    case 19:
      return result;
    case 3:
      operations_research::sat::LoadBoolOrConstraint(this, a2, a3);
      result = 1;
      break;
    case 4:
      operations_research::sat::LoadBoolAndConstraint(this, a2, a3);
      result = 1;
      break;
    case 5:
      operations_research::sat::LoadBoolXorConstraint(this, a2, a3);
    case 7:
      operations_research::sat::LoadIntDivConstraint(this, a2, a3);
    case 8:
      operations_research::sat::LoadIntModConstraint(this, a2, a3);
    case 11:
      operations_research::sat::LoadIntProdConstraint(this, a2, a3);
      result = 1;
      break;
    case 12:
      operations_research::sat::LoadLinearConstraint(this, a2, a3);
      result = 1;
      break;
    case 13:
      operations_research::sat::LoadAllDiffConstraint(this, a2, a3);
    case 15:
      operations_research::sat::LoadCircuitConstraint(this, a2, a3);
      result = 1;
      break;
    case 20:
      operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
      v7 = *(this + 6);
      if (*(this + 15) != 20)
      {
        v7 = &operations_research::sat::_NoOverlapConstraintProto_default_instance_;
      }

      operations_research::sat::CpModelMapping::Intervals<google::protobuf::RepeatedField<int>>(v7 + 4, __p);
      operations_research::sat::AddDisjunctive(__p, a2);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      result = 1;
      break;
    case 21:
      operations_research::sat::LoadNoOverlap2dConstraint(this, a2, a3);
      result = 1;
      break;
    case 22:
      operations_research::sat::LoadCumulativeConstraint(this, a2, a3);
    case 23:
      operations_research::sat::LoadRoutesConstraint(this, a2, a3);
      result = 1;
      break;
    case 24:
      operations_research::sat::LoadReservoirConstraint(this, a2, a3);
      result = 1;
      break;
    case 26:
      operations_research::sat::LoadAtMostOneConstraint(this, a2, a3);
    case 27:
      operations_research::sat::LoadLinMaxConstraint(this, a2, a3);
      result = 1;
      break;
    case 29:
      operations_research::sat::LoadExactlyOneConstraint(this, a2, a3);
    default:
      result = 0;
      break;
  }

  return result;
}

void sub_23CA6475C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::Implication(operations_research::sat::Literal,operations_research::sat::Literal)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::Implication(operations_research::sat::Literal,operations_research::sat::Literal)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_284F3D130;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__function::__func<operations_research::sat::Implication(operations_research::sat::Literal,operations_research::sat::Literal)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::Implication(operations_research::sat::Literal,operations_research::sat::Literal)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::operator()(uint64_t a1, void **a2)
{
  v3 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(*a2);
  v4 = *(a1 + 12);
  v5 = *(a1 + 8) ^ 1;

  return operations_research::sat::SatSolver::AddBinaryClause(v3, v5, v4);
}

uint64_t std::__function::__func<operations_research::sat::Implication(operations_research::sat::Literal,operations_research::sat::Literal)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::Implication(operations_research::sat::Literal,operations_research::sat::Literal)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE410BALL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE410BALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE410BALL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE410BALL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::~__func(void *result)
{
  *result = &unk_284F3D1B0;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void std::__function::__func<operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::~__func(void *a1)
{
  *a1 = &unk_284F3D1B0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void sub_23CA64A7C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void *std::__function::__func<operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::__clone(void *result, uint64_t a2)
{
  *(a2 + 8) = 0;
  *a2 = &unk_284F3D1B0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = result[1];
  v2 = result[2];
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a2 + 32) = *(result + 32);
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

void sub_23CA64B58(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void std::__function::__func<operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::destroy_deallocate(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__function::__func<operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE4125FLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE4125FLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE4125FLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE4125FLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1}::operator()(uint64_t a1, void *a2)
{
  operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a2);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  operator new();
}

void sub_23CA64D98(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  MEMORY[0x23EED9460](v1, v2);
  _Unwind_Resume(a1);
}

void *operations_research::sat::Model::Delete<operations_research::sat::BooleanXorPropagator>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3D220;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::BooleanXorPropagator>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3D220;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>>::find_or_prepare_insert<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>@<X0>(unint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1)
  {
    v6 = 0;
    _X10 = result[2];
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2));
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
      if (*(v19 + 16 * v20) == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v19 + 16 * v20;
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
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>>::GetPolicyFunctions(void)::value);
    v24 = v22[3] + 16 * result;
    *a3 = result + v22[2];
    *(a3 + 8) = v24;
    *(a3 + 16) = 1;
  }

  else
  {
    if (result[1] > 1)
    {
      v4 = result + 2;
      if (result[2] != *a2)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>>::resize_impl(result, 3uLL);
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

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>>::resize_impl(unint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1 < 2 && v3 > 1;
  v5 = v4;
  v6 = a1[2];
  if (v4)
  {
    v7 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v6) * 0x9DDFEA08EB382D69) >> 64) ^ (105 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v6))) & 0x7F;
  }

  else
  {
    v7 = 0x80;
  }

  v10 = v3 & 1;
  v11 = v2 < 2;
  v12 = v5;
  v8 = a1[3];
  v9[0] = v6;
  v9[1] = v8;
  v9[2] = v2;
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,16ul,true,true,8ul>(v9, a1, v7);
}

__n128 std::__function::__func<operations_research::sat::EnforcedClause(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::sat::Literal const>)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::EnforcedClause(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::sat::Literal const>)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3D298;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::EnforcedClause(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::sat::Literal const>)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::EnforcedClause(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::sat::Literal const>)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE41371)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE41371 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE41371))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE41371 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::EnforcedClause(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::sat::Literal const>)::{lambda(operations_research::sat::Model *)#1}::operator()(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 8) & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    operator new();
  }

  if ((*(a1 + 24) & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    operator new();
  }

  v3 = &unk_284F3BBD8;
  v4 = 0;
  v5 = 0;
  v6 = &v3;
  v2 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  operations_research::sat::SatSolver::AddProblemClause(v2, v4, v5, 0);
  if (v6 == &v3)
  {
    (*(*v6 + 4))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 5))();
  }
}

void sub_23CA65954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::function<void ()(operations_research::sat::Model *)>::~function(va);
  if (v7)
  {
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

operations_research::sat::LinearPropagator *operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearPropagator>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::LinearPropagator>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::LinearPropagator>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::LinearPropagator>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::LinearPropagator>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::LinearPropagator>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

__n128 std::__function::__func<operations_research::sat::LowerOrEqual(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,long long)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::LowerOrEqual(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,long long)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3D318;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::LowerOrEqual(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,long long)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::LowerOrEqual(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,long long)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE447C0)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE447C0 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE447C0))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE447C0 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::LowerOrEqual(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,long long)::{lambda(operations_research::sat::Model *)#1}::operator()(unsigned int *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  v5 = *(a1 + 1);
  if (v5 >= 0x8000000000000002)
  {
    v6 = -v5;
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((operations_research::sat::IntegerTrail::Enqueue(v4, *a1 ^ 1, v6, 0, 0, 0, 0) & 1) == 0)
  {
    *(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2) + 528) = 1;
    if (dword_27E25CBB0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::LowerOrEqual(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,long long)::{lambda(operations_research::sat::Model *)#1}::operator() const(operations_research::sat::Model *)::{lambda(void)#1}::operator() const(void)::site, dword_27E25CBB0))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v11, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/integer.h", 1892);
      v7 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v11, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Model trivially infeasible, variable ", 0x25uLL);
      v8 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v7, a1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v8, " has lower bound ", 0x11uLL);
      v9 = *a1;
      v13 = &unk_284F3D388;
      v14 = v9;
      v15 = &v13;
      v12 = std::__function::__func<operations_research::sat::LowerBound(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1},std::allocator<operations_research::sat::LowerBound(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1}>,long long ()(operations_research::sat::Model const&)>::operator()(&v13, a2);
      v10 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v8, &v12);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v10, " and LowerOrEqual() was called with an upper bound of ", 0x36uLL);
      v12 = *(a1 + 1);
      absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v10, &v12);
      std::function<long long ()(operations_research::sat::Model const&)>::~function(&v13);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v11);
    }
  }
}

void sub_23CA65F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::function<long long ()(operations_research::sat::Model const&)>::~function(va);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a9);
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(uint64_t a1, unsigned int *a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5 = a1;
  v6[0] = v3;
  v6[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  absl::lts_20240722::str_format_internal::FormatUntyped(&v5, absl::lts_20240722::str_format_internal::FormatRawSinkImpl::Flush<absl::lts_20240722::log_internal::StringifySink>, "%v", 2, v6, 1uLL);
  return a1;
}

uint64_t std::function<long long ()(operations_research::sat::Model const&)>::~function(uint64_t a1)
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

uint64_t std::__function::__func<operations_research::sat::LowerBound(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1},std::allocator<operations_research::sat::LowerBound(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1}>,long long ()(operations_research::sat::Model const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284F3D388;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<operations_research::sat::LowerBound(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1},std::allocator<operations_research::sat::LowerBound(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1}>,long long ()(operations_research::sat::Model const&)>::operator()(uint64_t a1, void *a2)
{
  v3 = a2[3];
  if (v3 > 1)
  {
    v8 = 0;
    _X11 = a2[5];
    __asm { PRFM            #4, [X11] }

    v15 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d));
    v16 = (v15 >> 7) ^ (_X11 >> 12);
    v17 = vdup_n_s8(v15 & 0x7F);
    v18 = a2[6];
    v19 = v16 & v3;
    v20 = *(_X11 + v19);
    v2 = vceq_s8(v20, v17);
    if (!v2)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_8:
      v21 = (v19 + (__clz(__rbit64(v2)) >> 3)) & v3;
      if (*(v18 + 16 * v21) == &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
      {
        return *(*(*(v18 + 16 * v21 + 8) + 40) + 8 * *(a1 + 8));
      }

      v2 &= ((v2 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v2);
LABEL_10:
    while (!*&vceq_s8(v20, 0x8080808080808080))
    {
      v8 += 8;
      v19 = (v8 + v19) & v3;
      v20 = *(_X11 + v19);
      v2 = vceq_s8(v20, v17);
      if (v2)
      {
        goto LABEL_8;
      }
    }
  }

  else if (a2[4] >= 2uLL)
  {
    v6 = a2[5];
    v4 = a2 + 5;
    v5 = v6;
    if (v6 == &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
    {
      v2 = v4;
    }

    else
    {
      v2 = v5;
    }
  }

  return *(*(*(v2 + 8) + 40) + 8 * *(a1 + 8));
}

uint64_t std::__function::__func<operations_research::sat::LowerBound(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1},std::allocator<operations_research::sat::LowerBound(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1}>,long long ()(operations_research::sat::Model const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE4156ELL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE4156ELL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE4156ELL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE4156ELL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::Implication(absl::lts_20240722::Span<operations_research::sat::Literal const>,operations_research::sat::IntegerLiteral)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::Implication(absl::lts_20240722::Span<operations_research::sat::Literal const>,operations_research::sat::IntegerLiteral)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3D428;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::Implication(absl::lts_20240722::Span<operations_research::sat::Literal const>,operations_research::sat::IntegerLiteral)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::Implication(absl::lts_20240722::Span<operations_research::sat::Literal const>,operations_research::sat::IntegerLiteral)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE4168ELL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE4168ELL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE4168ELL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE4168ELL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::Implication(absl::lts_20240722::Span<operations_research::sat::Literal const>,operations_research::sat::IntegerLiteral)::{lambda(operations_research::sat::Model *)#1}::operator()(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  v5 = a1[1];
  v6 = *(v4 + 5);
  v7 = 8 * *a1;
  if (v5 > *(v6 + v7))
  {
    if (v5 <= -*(v6 + (v7 ^ 8)))
    {
      v9 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
      operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(v9, *a1, a1[1]);
      operator new();
    }

    v8 = a1[3];
    if ((v8 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      operator new();
    }

    v11 = &unk_284F3BBD8;
    v12 = 0;
    v13 = 0;
    v14 = &v11;
    v10 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
    operations_research::sat::SatSolver::AddProblemClause(v10, v12, v13, 0);
    if (v14 == &v11)
    {
      (*(*v14 + 4))(v14);
    }

    else if (v14)
    {
      (*(*v14 + 5))(v14);
    }
  }
}

void sub_23CA6684C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::function<void ()(operations_research::sat::Model *)>::~function(va);
  if (v3)
  {
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

operations_research::sat::PrecedencesPropagator *operations_research::sat::Model::GetOrCreate<operations_research::sat::PrecedencesPropagator>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::PrecedencesPropagator>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::PrecedencesPropagator>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::PrecedencesPropagator>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::PrecedencesPropagator>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::PrecedencesPropagator>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

operations_research::sat::PrecedencesPropagator *operations_research::sat::PrecedencesPropagator::PrecedencesPropagator(operations_research::sat::PrecedencesPropagator *this, operations_research::sat::Model *a2)
{
  strcpy(this + 8, "PrecedencesPropagator");
  *(this + 31) = 21;
  *(this + 4) = 0xFFFFFFFFLL;
  v4 = this + 40;
  *this = &unk_284F44060;
  *(this + 5) = &unk_284F440A8;
  *(this + 6) = operations_research::sat::Model::GetOrCreate<operations_research::sat::PrecedenceRelations>(a2);
  *(this + 7) = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a2);
  *(this + 8) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  v5 = *(a2 + 3);
  if (v5 > 1)
  {
    v7 = 0;
    _X11 = *(a2 + 5);
    __asm { PRFM            #4, [X11] }

    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d));
    v15 = vdup_n_s8(v14 & 0x7F);
    v16 = ((v14 >> 7) ^ (_X11 >> 12)) & v5;
    v17 = *(_X11 + v16);
    v18 = vceq_s8(v17, v15);
    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_5:
    v19 = *(a2 + 6);
    while (1)
    {
      v20 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v5;
      if (*(v19 + 16 * v20) == &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d)
      {
        break;
      }

      v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v18)
      {
LABEL_8:
        while (!*&vceq_s8(v17, 0x8080808080808080))
        {
          v7 += 8;
          v16 = (v7 + v16) & v5;
          v17 = *(_X11 + v16);
          v18 = vceq_s8(v17, v15);
          if (v18)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_3;
      }
    }

    v21 = (v19 + 16 * v20);
    v6 = (_X11 + v20);
    if (!(_X11 + v20))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (*(a2 + 4) < 2uLL)
  {
LABEL_3:
    v6 = 0;
    goto LABEL_13;
  }

  v21 = a2 + 40;
  v6 = &absl::lts_20240722::container_internal::kSooControl;
  if (*(a2 + 5) != &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d)
  {
    v6 = 0;
    v21 = 0;
  }

  if (v6)
  {
LABEL_12:
    v6 = *(v21 + 1);
  }

LABEL_13:
  *(this + 9) = v6;
  v22 = operations_research::sat::Model::GetOrCreate<operations_research::sat::GenericLiteralWatcher>(a2);
  *(this + 10) = v22;
  v23 = operations_research::sat::GenericLiteralWatcher::Register(v22, v4);
  *(this + 24) = 0;
  *(this + 22) = v23;
  *(this + 152) = 0u;
  *(this + 200) = 0u;
  *(this + 248) = 0u;
  *(this + 344) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 63) = 0;
  *(this + 104) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  v24 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  operations_research::sat::SatSolver::AddPropagator(v24, this);
  v25 = *(this + 8);
  v27 = this + 96;
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(this + 96, (*(v25 + 48) - *(v25 + 40)) >> 3);
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v25 + 744, &v27);
  operations_research::sat::GenericLiteralWatcher::SetPropagatorPriority(*(this + 10), *(this + 22), 0);
  return this;
}

void sub_23CA66EC8(_Unwind_Exception *a1)
{
  v9 = *(v1 + 464);
  if (v9)
  {
    *(v1 + 472) = v9;
    operator delete(v9);
    v10 = *(v1 + 440);
    if (!v10)
    {
LABEL_3:
      v11 = *(v1 + 416);
      if (!v11)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v10 = *(v1 + 440);
    if (!v10)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 448) = v10;
  operator delete(v10);
  v11 = *(v1 + 416);
  if (!v11)
  {
LABEL_4:
    v12 = *(v1 + 392);
    if (!v12)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v11);
  v12 = *(v1 + 392);
  if (!v12)
  {
LABEL_5:
    std::deque<int>::~deque[abi:ne200100](v7);
    v13 = *(v1 + 320);
    if (!v13)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v12);
  std::deque<int>::~deque[abi:ne200100](v7);
  v13 = *(v1 + 320);
  if (!v13)
  {
LABEL_6:
    v14 = *(v1 + 296);
    if (!v14)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v1 + 328) = v13;
  operator delete(v13);
  v14 = *(v1 + 296);
  if (!v14)
  {
LABEL_7:
    v15 = *(v1 + 272);
    if (!v15)
    {
LABEL_9:
      absl::StrongVector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>,std::allocator<absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>>>::~StrongVector(v6);
      absl::StrongVector<operations_research::StrongIndex<operations_research::sat::PrecedencesPropagator::OptionalArcIndex_index_tag_>,operations_research::sat::PrecedencesPropagator::ArcInfo,std::allocator<operations_research::sat::PrecedencesPropagator::ArcInfo>>::~StrongVector((v3 + 128));
      absl::StrongVector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>,std::allocator<absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>>>::~StrongVector(v5);
      absl::StrongVector<operations_research::StrongIndex<operations_research::sat::PrecedencesPropagator::OptionalArcIndex_index_tag_>,operations_research::sat::PrecedencesPropagator::ArcInfo,std::allocator<operations_research::sat::PrecedencesPropagator::ArcInfo>>::~StrongVector((v3 + 80));
      absl::StrongVector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>,std::allocator<absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>>>::~StrongVector(v4);
      operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(v3);
      *v1 = v2;
      if (*(v1 + 31) < 0)
      {
        operator delete(*(v1 + 8));
      }

      _Unwind_Resume(a1);
    }

LABEL_8:
    *(v1 + 280) = v15;
    operator delete(v15);
    goto LABEL_9;
  }

LABEL_15:
  *(v1 + 304) = v14;
  operator delete(v14);
  v15 = *(v1 + 272);
  if (!v15)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void ***absl::StrongVector<operations_research::StrongIndex<operations_research::sat::PrecedencesPropagator::OptionalArcIndex_index_tag_>,operations_research::sat::PrecedencesPropagator::ArcInfo,std::allocator<operations_research::sat::PrecedencesPropagator::ArcInfo>>::~StrongVector(void ***a1)
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
        if (*(v3 - 5))
        {
          operator delete(*(v3 - 4));
        }

        v3 -= 8;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}