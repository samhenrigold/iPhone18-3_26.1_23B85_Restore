void sub_23CAA3FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *__p, uint64_t a19, char a20, void *a21, uint64_t a22, void *a23, void *a24, int a25, __int16 a26, char a27, char a28, void *a29, void *a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36)
{
  if (a17)
  {
    operator delete(__p);
    if ((a20 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a20 & 1) == 0)
  {
LABEL_6:
    if (a29)
    {
      operator delete(a30);
    }

    if (a35)
    {
      operator delete(a35);
    }

    if (*(v36 - 168))
    {
      operator delete(*(v36 - 160));
      _Unwind_Resume(exception_object);
    }

    _Unwind_Resume(exception_object);
  }

  operator delete(a21);
  goto LABEL_6;
}

uint64_t std::sort[abi:ne200100]<std::__wrap_iter<std::pair<long long,int> *>>(uint64_t *a1, uint64_t *a2)
{
  v2 = 126 - 2 * __clz((a2 - a1) >> 4);
  if (a2 == a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,false>(a1, a2, &v5, v3, 1);
}

void std::vector<std::pair<long long,int>>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<std::pair<long long,int>>::__append(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 16 * a2;
  }
}

void operations_research::sat::CpModelPresolver::ProcessSetPPC(operations_research::TimeLimit **this)
{
  v1 = this;
  v101 = *MEMORY[0x277D85DE8];
  v2 = operations_research::TimeLimit::LimitReached(this[3]);
  if (v2)
  {
    return;
  }

  v3 = v1[1];
  if ((*(v3 + 416) & 1) != 0 || !*(*(v3 + 49) + 792))
  {
    return;
  }

  strcpy(v91, "ProcessSetPPC");
  v92 = 269;
  v95 = *(v1 + 1);
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v94 = 0;
  v99 = 0;
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(v2);
  v4 = v1[1];
  v5 = *(*(v4 + 49) + 792);
  v89 = 0u;
  memset(v90, 0, 24);
  v87 = 0u;
  v88 = 0u;
  v77 = 0u;
  v78 = 0u;
  v76 = &v87;
  v79 = 0;
  v80 = v5;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v6 = *(*v4 + 56);
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v70 = v6;
  if (v6 < 1)
  {
LABEL_91:
    v72 = xmmword_23CE306D0;
    v100 = 0;
    operator new();
  }

  v7 = 0;
  v71 = v1;
  while (1)
  {
    v8 = *v1[1];
    v10 = *(v8 + 48);
    v9 = v8 + 48;
    v11 = v10 + 8 * v7 + 7;
    if (v10)
    {
      v9 = v11;
    }

    v12 = *v9;
    v13 = *(*v9 + 60);
    if (v13 > 25)
    {
      if (v13 != 29 && v13 != 26)
      {
        goto LABEL_7;
      }
    }

    else if (v13 != 3)
    {
      if (v13 == 12)
      {
        v14 = *(*(v12 + 48) + 16);
        if (v14 >= 3)
        {
          v15 = 0;
          v16 = 4 * v14;
          do
          {
            v17 = &operations_research::sat::_LinearConstraintProto_default_instance_;
            if (*(v12 + 60) == 12)
            {
              v17 = *(v12 + 48);
            }

            v18 = *(v17[3] + v15);
            CanBeUsedAsLiteral = operations_research::sat::PresolveContext::CanBeUsedAsLiteral(v71[1], v18);
            if (v18 >= 0 && CanBeUsedAsLiteral)
            {
              operator new();
            }

            v15 += 4;
          }

          while (v16 != v15);
          v1 = v71;
        }
      }

      goto LABEL_7;
    }

    if (operations_research::sat::CpModelPresolver::PresolveOneConstraint(v1, v7))
    {
      operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(v71[1], v7);
    }

    if (*(v71[1] + 416))
    {
      break;
    }

    v23 = *(v12 + 60);
    if (v13 == 3)
    {
      if (v23 == 3)
      {
        goto LABEL_34;
      }
    }

    else if (v13 == 26)
    {
      if (v23 == 26)
      {
        goto LABEL_34;
      }
    }

    else if (v23 == 29)
    {
LABEL_34:
      v24 = *(v12 + 48);
      v25 = *(v24 + 4);
      if (!v25)
      {
        goto LABEL_48;
      }

      goto LABEL_35;
    }

    v24 = &operations_research::sat::_BoolArgumentProto_default_instance_;
    v25 = dword_2810BF048;
    if (!dword_2810BF048)
    {
LABEL_48:
      v28 = 0;
      v34 = v74;
      v33 = v75;
      if (v74 >= v75)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }

LABEL_35:
    v26 = v24[3];
    v27 = 4 * v25;
    v28 = 0;
    do
    {
      v29 = *v26;
      if (~*v26 <= *v26)
      {
        v30 = *v26;
      }

      else
      {
        v30 = ~v29;
      }

      v31 = v28;
      v32 = v28 >> 2;
      if (((v28 >> 2) + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v28 >> 2 != -1)
      {
        if (!(((v28 >> 2) + 1) >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(4 * v32) = __PAIR64__(v30, v29) >> 31;
      v28 = 4 * v32 + 4;
      memcpy(0, 0, v31);
      ++v26;
      v27 -= 4;
    }

    while (v27);
    v34 = v74;
    v33 = v75;
    if (v74 >= v75)
    {
LABEL_49:
      v36 = v73;
      v37 = v34 - v73;
      v38 = (v34 - v73) >> 2;
      v39 = v38 + 1;
      if ((v38 + 1) >> 62)
      {
        goto LABEL_120;
      }

      v40 = v33 - v73;
      if (v40 >> 1 > v39)
      {
        v39 = v40 >> 1;
      }

      if (v40 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v41 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v41 = v39;
      }

      if (v41)
      {
        if (!(v41 >> 62))
        {
          operator new();
        }

LABEL_121:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v42 = v38;
      v43 = (4 * v38);
      v44 = &v43[-v42];
      *v43 = v7;
      v35 = (v43 + 1);
      memcpy(v44, v36, v37);
      v73 = v44;
      v74 = v35;
      v75 = 0;
      if (v36)
      {
        operator delete(v36);
      }

      goto LABEL_62;
    }

LABEL_45:
    *v34 = v7;
    v35 = v34 + 4;
LABEL_62:
    v74 = v35;
    v45 = v87;
    v46 = *(&v87 + 1) - v87;
    v47 = (v90[1] - v90[0]) >> 2;
    if (*(&v87 + 1) >= v88)
    {
      v49 = (v46 >> 2) + 1;
      if (v49 >> 62)
      {
LABEL_120:
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v50 = v88 - v87;
      if ((v88 - v87) >> 1 > v49)
      {
        v49 = v50 >> 1;
      }

      if (v50 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v51 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v51 = v49;
      }

      if (v51)
      {
        if (!(v51 >> 62))
        {
          operator new();
        }

        goto LABEL_121;
      }

      v52 = *(&v87 + 1) - v87;
      v53 = (4 * (v46 >> 2));
      *v53 = v47;
      v48 = (v53 + 1);
      memcpy(0, v45, v52);
      *&v87 = 0;
      *(&v87 + 1) = v48;
      *&v88 = 0;
      if (v45)
      {
        operator delete(v45);
      }
    }

    else
    {
      **(&v87 + 1) = v47;
      v48 = *(&v45 + 1) + 4;
    }

    *(&v87 + 1) = v48;
    LODWORD(v72) = v28 >> 2;
    std::vector<int>::push_back[abi:ne200100](&v88 + 8, &v72);
    std::vector<operations_research::sat::Literal>::__insert_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>(v90, v90[1], 0, (4 * (v28 >> 2)), v28 >> 2);
    v54 = v46 >> 2;
    v55 = *(*(v76 + 3) + 4 * (v46 >> 2));
    if (v55)
    {
      *(&v78 + 1) = vadd_s32(*(&v78 + 8), 0x100000001);
      v56 = *(&v77 + 1);
      if (*(&v77 + 1) >= v78)
      {
        v58 = v77;
        v59 = *(&v77 + 1) - v77;
        v60 = 0xAAAAAAAAAAAAAAABLL * ((*(&v77 + 1) - v77) >> 2) + 1;
        if (v60 > 0x1555555555555555)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v78 - v77) >> 2) > v60)
        {
          v60 = 0x5555555555555556 * ((v78 - v77) >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v78 - v77) >> 2) >= 0xAAAAAAAAAAAAAAALL)
        {
          v61 = 0x1555555555555555;
        }

        else
        {
          v61 = v60;
        }

        if (v61)
        {
          if (v61 <= 0x1555555555555555)
          {
            operator new();
          }

          goto LABEL_121;
        }

        v62 = (4 * ((*(&v77 + 1) - v77) >> 2));
        *v62 = v54;
        v62[1] = v55;
        v62[2] = 1;
        v57 = v62 + 3;
        v63 = v62 - v59;
        memcpy(v62 - v59, v58, v59);
        *&v77 = v63;
        *(&v77 + 1) = v57;
        *&v78 = 0;
        if (v58)
        {
          operator delete(v58);
        }
      }

      else
      {
        **(&v77 + 1) = v54;
        v56[1] = v55;
        v57 = v56 + 3;
        v56[2] = 1;
      }

      v1 = v71;
      *(&v77 + 1) = v57;
    }

    else
    {
      v1 = v71;
    }

LABEL_7:
    if (++v7 == v70)
    {
      goto LABEL_91;
    }
  }

  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  if (*(&v85 + 1))
  {
    operator delete(*(&v85 + 1));
  }

  if (v84)
  {
    *(&v84 + 1) = v84;
    operator delete(v84);
  }

  v64 = *(&v82 + 1);
  if (*(&v82 + 1))
  {
    v65 = v83;
    v66 = *(&v82 + 1);
    if (v83 != *(&v82 + 1))
    {
      v67 = v83;
      do
      {
        v69 = *(v67 - 24);
        v67 -= 24;
        v68 = v69;
        if (v69)
        {
          *(v65 - 16) = v68;
          operator delete(v68);
        }

        v65 = v67;
      }

      while (v67 != v64);
      v66 = *(&v82 + 1);
    }

    *&v83 = v64;
    operator delete(v66);
  }

  if (v81)
  {
    *(&v81 + 1) = v81;
    operator delete(v81);
  }

  if (v77)
  {
    *(&v77 + 1) = v77;
    operator delete(v77);
  }

  if (v90[0])
  {
    v90[1] = v90[0];
    operator delete(v90[0]);
  }

  if (*(&v88 + 1))
  {
    *&v89 = *(&v88 + 1);
    operator delete(*(&v88 + 1));
  }

  if (v87)
  {
    *(&v87 + 1) = v87;
    operator delete(v87);
  }

  operations_research::sat::PresolveTimer::~PresolveTimer(v91, v22);
}

void sub_23CAA4F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a22 >= 2)
  {
    operator delete((a24 - (a23 & 1) - 8));
    v62 = a27;
    if (!a27)
    {
LABEL_5:
      if (!v60)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v62 = a27;
    if (!a27)
    {
      goto LABEL_5;
    }
  }

  operator delete(v62);
  if (!v60)
  {
LABEL_7:
    operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::~InclusionDetector(&a30);
    operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0::~$_0(&a50);
    operations_research::sat::PresolveTimer::~PresolveTimer(&a60, v63);
    _Unwind_Resume(a1);
  }

LABEL_6:
  operator delete(v60);
  goto LABEL_7;
}

uint64_t operations_research::sat::CpModelPresolver::ProcessEncodingFromLinear(operations_research::sat::CpModelPresolver *this, int a2, const operations_research::sat::ConstraintProto *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = xmmword_23CE306D0;
  v153 = xmmword_23CE306D0;
  v7 = *(a3 + 15);
  if (v7 == 26)
  {
    v8 = *(a3 + 6);
    v9 = *(v8 + 16);
    if (v9)
    {
      v131 = xmmword_23CE306D0;
      v10 = a4;
      v11 = a5;
      v12 = this;
      v13 = a2;
      v14 = *(v8 + 24);
      v15 = &v14[v9];
      while (1)
      {
        v16 = *v14;
        if (~*v14 <= *v14)
        {
          v17 = *v14;
        }

        else
        {
          v17 = ~v16;
        }

        if (v153 > 1)
        {
          v19 = 0;
          _X11 = v154;
          __asm { PRFM            #4, [X11] }

          v25 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v17) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v17));
          v26 = vdup_n_s8(v25 & 0x7F);
          v27 = ((v25 >> 7) ^ (v154 >> 12)) & v153;
          v28 = *(v154 + v27);
          v29 = vceq_s8(v28, v26);
          if (!v29)
          {
            goto LABEL_18;
          }

          do
          {
LABEL_16:
            if (*(v155 + 8 * ((v27 + (__clz(__rbit64(v29)) >> 3)) & v153)) == v17)
            {
              goto LABEL_41;
            }

            v29 &= ((v29 & 0x8080808080808080) - 1) & 0x8080808080808080;
          }

          while (v29);
LABEL_18:
          while (!*&vceq_s8(v28, 0x8080808080808080))
          {
            v19 += 8;
            v27 = (v19 + v27) & v153;
            v28 = *(v154 + v27);
            v29 = vceq_s8(v28, v26);
            if (v29)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          _ZF = *(&v153 + 1) >= 2uLL && v154 == v17;
          if (_ZF)
          {
LABEL_41:
            absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 8508);
            goto LABEL_43;
          }
        }

        LODWORD(v149) = v17;
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(&v153, &v149, __p);
        if (v142 == 1)
        {
          *__p[1] = v149;
        }

        *(__p[1] + 1) = v16;
        if (++v14 == v15)
        {
          v45 = 0;
          goto LABEL_100;
        }
      }
    }

    v45 = 0;
  }

  else
  {
    if (v7 != 29)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v7, 29, "at_most_or_exactly_one.constraint_case() == ConstraintProto::kExactlyOne");
    }

    v30 = *(a3 + 6);
    v31 = *(v30 + 16);
    if (v31)
    {
      v131 = xmmword_23CE306D0;
      v10 = a4;
      v11 = a5;
      v12 = this;
      v13 = a2;
      v32 = *(v30 + 24);
      v33 = &v32[v31];
      do
      {
        v34 = *v32;
        if (~*v32 <= *v32)
        {
          v35 = *v32;
        }

        else
        {
          v35 = ~v34;
        }

        if (v153 > 1)
        {
          v37 = 0;
          _X11 = v154;
          __asm { PRFM            #4, [X11] }

          v40 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v35) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v35));
          v41 = vdup_n_s8(v40 & 0x7F);
          v42 = ((v40 >> 7) ^ (v154 >> 12)) & v153;
          v43 = *(v154 + v42);
          v44 = vceq_s8(v43, v41);
          if (!v44)
          {
            goto LABEL_38;
          }

          do
          {
LABEL_36:
            if (*(v155 + 8 * ((v42 + (__clz(__rbit64(v44)) >> 3)) & v153)) == v35)
            {
              goto LABEL_42;
            }

            v44 &= ((v44 & 0x8080808080808080) - 1) & 0x8080808080808080;
          }

          while (v44);
LABEL_38:
          while (!*&vceq_s8(v43, 0x8080808080808080))
          {
            v37 += 8;
            v42 = (v37 + v42) & v153;
            v43 = *(v154 + v42);
            v44 = vceq_s8(v43, v41);
            if (v44)
            {
              goto LABEL_36;
            }
          }
        }

        else if (*(&v153 + 1) >= 2uLL && v154 == v35)
        {
LABEL_42:
          absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 8516);
LABEL_43:
          absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(__p);
        }

        LODWORD(v149) = v35;
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(&v153, &v149, __p);
        if (v142 == 1)
        {
          *__p[1] = v149;
        }

        *(__p[1] + 1) = v34;
        ++v32;
      }

      while (v32 != v33);
      v45 = 1;
LABEL_100:
      a2 = v13;
      this = v12;
      a5 = v11;
      a4 = v10;
      v6 = v131;
    }

    else
    {
      v45 = 1;
    }
  }

  v46 = **(this + 1) + 48;
  if (*v46)
  {
    v46 = *v46 + 8 * a2 + 7;
  }

  v47 = *v46;
  if (*(*v46 + 60) == 12)
  {
    v48 = *(v47 + 48);
    v152 = **(v48 + 72);
    v49 = *(v48 + 16);
    if (v49 < 1)
    {
      goto LABEL_87;
    }
  }

  else
  {
    v152 = *off_2810BEE90;
    v49 = off_2810BEE58;
    if (off_2810BEE58 < 1)
    {
      goto LABEL_87;
    }
  }

  v132 = v6;
  v130 = v45;
  v126 = a4;
  v127 = a2;
  v133 = this;
  v50 = 0;
  v128 = a2;
  v129 = a5;
  LODWORD(v51) = 0x80000000;
  while (2)
  {
    v52 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    if (*(v47 + 60) == 12)
    {
      v52 = *(v47 + 48);
    }

    v53 = *(v52[3] + v50);
    v54 = v52[6][v50];
    if (~v53 <= v53)
    {
      v55 = *(v52[3] + v50);
    }

    else
    {
      v55 = ~v53;
    }

    if (v153 <= 1)
    {
      v56 = v154 == v55 && *(&v153 + 1) > 1uLL;
      v57 = &absl::lts_20240722::container_internal::kSooControl;
      if (!v56)
      {
        v57 = 0;
      }

      v58 = &v154;
      if (!v57)
      {
        goto LABEL_75;
      }

LABEL_66:
      if (*(v58 + 1) == v53)
      {
        operator new();
      }

      v152 -= v54;
      operator new();
    }

    v59 = 0;
    _X10 = v154;
    __asm { PRFM            #4, [X10] }

    v62 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v55) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v55));
    v63 = vdup_n_s8(v62 & 0x7F);
    v64 = ((v62 >> 7) ^ (v154 >> 12)) & v153;
    v65 = *(v154 + v64);
    v66 = vceq_s8(v65, v63);
    if (!v66)
    {
      goto LABEL_71;
    }

    do
    {
LABEL_69:
      v67 = (v64 + (__clz(__rbit64(v66)) >> 3)) & v153;
      if (*(v155 + 8 * v67) == v55)
      {
        v58 = (v155 + 8 * v67);
        if (!(v154 + v67))
        {
          goto LABEL_75;
        }

        goto LABEL_66;
      }

      v66 &= ((v66 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v66);
LABEL_71:
    while (!*&vceq_s8(v65, 0x8080808080808080))
    {
      v59 += 8;
      v64 = (v59 + v64) & v153;
      v65 = *(v154 + v64);
      v66 = vceq_s8(v65, v63);
      if (v66)
      {
        goto LABEL_69;
      }
    }

LABEL_75:
    if (v51 != 0x80000000)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v51, 0xFFFFFFFF80000000, "target_ref == std::numeric_limits<int>::min()");
    }

    if (v54 >= 0)
    {
      v68 = v54;
    }

    else
    {
      v68 = -v54;
    }

    if (v68 != 1)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v68, 1, "std::abs(coeff) == 1");
    }

    if (v54 == 1)
    {
      v51 = v53;
    }

    else
    {
      v51 = ~v53;
    }

    if (++v50 != v49)
    {
      continue;
    }

    break;
  }

  if (v51 == 0x80000000 || operations_research::sat::PresolveContext::CanBeUsedAsLiteral(*(v133 + 1), v51))
  {
LABEL_87:
    operator new();
  }

  v135 = v51;
  v149 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>,256,false>>::EmptyNode(void)::empty_node;
  v150 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>,256,false>>::EmptyNode(void)::empty_node;
  v151 = 0;
  if (*(&v153 + 1) >= 2uLL)
  {
    if (v153 >= 2)
    {
      v70 = v154;
      v71 = v155;
      if (*v154 <= -2)
      {
        do
        {
          v72 = __clz(__rbit64((*v70 | ~(*v70 >> 7)) & 0x101010101010101)) >> 3;
          v70 = (v70 + v72);
          v71 += 8 * v72;
        }

        while (*v70 < -1);
      }
    }

    operator new();
  }

  if ((v130 & 1) == 0)
  {
    operator new();
  }

  v146 = 0;
  v147 = 0;
  v145 = 0;
  operations_research::Domain::FromValues(&v145, v148);
  if (v145)
  {
    v146 = v145;
    operator delete(v145);
  }

  v144 = 0;
  if ((operations_research::sat::PresolveContext::IntersectDomainWith(*(v133 + 1), v51, v148, &v144) & 1) == 0)
  {
    v73 = 0;
    goto LABEL_109;
  }

  if (v144)
  {
    operator new();
  }

  if (operations_research::sat::PresolveContext::CanBeUsedAsLiteral(*(v133 + 1), v51))
  {
    operator new();
  }

  *__p = v132;
  operations_research::sat::PresolveContext::DomainOf(&v137, *(v133 + 1), v51);
  v139 = 0;
  v74 = v137;
  if (v137 >= 2)
  {
    if (v137)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(&v139, &v137);
      v74 = v137;
    }

    else
    {
      v139 = v137;
      *v140 = *v138;
    }
  }

  if (v74)
  {
    operator delete(v138[0]);
  }

  if (v139 > 1)
  {
    v77 = v139 & 1;
    v78 = v140;
    v76 = v140[0];
    if (v139)
    {
      v78 = v140[0];
    }

    v75 = *v78;
  }

  else
  {
    v75 = 0;
    v76 = v140[0];
    v77 = v139;
  }

  if (v77)
  {
    v79 = v76;
  }

  else
  {
    v79 = v140;
  }

  if ((v139 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v80 = &v79[2 * (v139 >> 1)];
    do
    {
      v136 = v75;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find_or_prepare_insert<long long>(__p, &v136, &v137);
      if (LOBYTE(v138[1]) == 1)
      {
        *v138[0] = v136;
      }

      if (v75 == v79[1])
      {
        v79 += 2;
        if (v79 != v80)
        {
          v75 = *v79;
        }
      }

      else
      {
        ++v75;
      }
    }

    while (v79 != v80);
    v77 = v139 & 1;
  }

  if (v77)
  {
    operator delete(v140[0]);
  }

  v81 = v150;
  v82 = *v149;
  v134 = v150[10];
  v83 = *v149 == v150 && v150[10] == 0;
  v84 = v133;
  if (v83)
  {
LABEL_195:
    v122 = **(v84 + 1);
    v124 = *(v122 + 48);
    v123 = (v122 + 48);
    v125 = v124 + 8 * v128 + 7;
    if (v124)
    {
      v123 = v125;
    }

    operations_research::sat::ConstraintProto::Clear(*v123);
    operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(v84 + 1));
    operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(v84 + 1), v127);
    v73 = 1;
    goto LABEL_199;
  }

  v85 = 0;
  while (2)
  {
    v86 = &v82[32 * v85];
    if (__p[0] > 1)
    {
      v90 = 0;
      _X11 = v142;
      __asm { PRFM            #4, [X11] }

      v87 = v86[2];
      v93 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v87) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v87));
      v94 = vdup_n_s8(v93 & 0x7F);
      v95 = ((v93 >> 7) ^ (v142 >> 12)) & __p[0];
      v96 = *(v142 + v95);
      v97 = vceq_s8(v96, v94);
      if (!v97)
      {
        goto LABEL_157;
      }

LABEL_155:
      while (*(v143 + 8 * ((v95 + (__clz(__rbit64(v97)) >> 3)) & __p[0])) != v87)
      {
        v97 &= ((v97 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v97)
        {
LABEL_157:
          while (!*&vceq_s8(v96, 0x8080808080808080))
          {
            v90 += 8;
            v95 = (v90 + v95) & __p[0];
            v96 = *(v142 + v95);
            v97 = vceq_s8(v96, v94);
            if (v97)
            {
              goto LABEL_155;
            }
          }

          goto LABEL_160;
        }
      }

      goto LABEL_148;
    }

    if (__p[1] >= 2)
    {
      v87 = v142;
      if (v142 == v86[2])
      {
LABEL_148:
        v88 = v86[3];
        if (v86[4] - v88 != 4)
        {
          goto LABEL_164;
        }

        _ZF = v87 == v152;
        v89 = v130;
        if (!_ZF)
        {
          v89 = 1;
        }

        if (v89 == 1)
        {
          ++*v126;
          if ((operations_research::sat::PresolveContext::InsertVarValueEncoding(*(v133 + 1), *v88, v51, v86[2]) & 1) == 0)
          {
            goto LABEL_198;
          }
        }

        else
        {
LABEL_164:
          ++*v129;
          VarValueEncoding = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(*(v133 + 1), v51, v86[2]);
          v101 = v86[3];
          for (i = v86[4]; v101 != i; ++v101)
          {
            operations_research::sat::PresolveContext::AddImplication(*(v133 + 1), *v101, VarValueEncoding);
          }

          if ((v130 & 1) != 0 || v86[2] != v152)
          {
            v103 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(v133 + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
            v104 = v103;
            if (*(v103 + 60) == 3)
            {
              v105 = *(v103 + 48);
            }

            else
            {
              operations_research::sat::ConstraintProto::clear_constraint(v103);
              *(v104 + 60) = 3;
              v106 = *(v104 + 8);
              if (v106)
              {
                v106 = *(v106 & 0xFFFFFFFFFFFFFFFELL);
              }

              v105 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v106);
              *(v104 + 48) = v105;
            }

            v107 = v86[3];
            v108 = v86[4];
            if (v107 == v108)
            {
              v114 = *(v105 + 4);
              v111 = *(v105 + 5);
            }

            else
            {
              v109 = *(v105 + 4);
              v111 = *(v105 + 5);
              v110 = (v105 + 2);
              do
              {
                v112 = *v107;
                if (v109 == v111)
                {
                  v115 = v110;
                  google::protobuf::RepeatedField<int>::Grow(v110, v109, (v109 + 1));
                  LODWORD(v109) = *(v105 + 4);
                  v111 = *(v105 + 5);
                  v110 = v115;
                }

                v113 = v105[3];
                v114 = (v109 + 1);
                *(v105 + 4) = v114;
                *(v113 + 4 * v109) = v112;
                ++v107;
                v109 = v114;
              }

              while (v107 != v108);
            }

            if (v114 == v111)
            {
              google::protobuf::RepeatedField<int>::Grow((v105 + 2), v114, (v114 + 1));
              LODWORD(v114) = *(v105 + 4);
            }

            v116 = v105[3];
            *(v105 + 4) = v114 + 1;
            *(v116 + 4 * v114) = ~VarValueEncoding;
          }
        }

LABEL_183:
        if (v82[11])
        {
          ++v85;
          v84 = v133;
          if (v85 == v82[10])
          {
            v117 = v82;
            LODWORD(v51) = v135;
            while (1)
            {
              v118 = *v117;
              if (*(*v117 + 11))
              {
                break;
              }

              v119 = v117[8];
              v117 = *v117;
              if (v119 != v118[10])
              {
                v85 = v119;
                v82 = v118;
                break;
              }
            }

LABEL_193:
            if (v82 == v81 && v85 == v134)
            {
              goto LABEL_195;
            }

            continue;
          }
        }

        else
        {
          v120 = &v82[8 * (v85 + 1) + 240];
          v84 = v133;
          do
          {
            v82 = *v120;
            v121 = *(*v120 + 11);
            v120 = *v120 + 240;
          }

          while (!v121);
          v85 = 0;
        }

        LODWORD(v51) = v135;
        goto LABEL_193;
      }
    }

    break;
  }

LABEL_160:
  v98 = v86[3];
  v99 = v86[4];
  if (v98 == v99)
  {
    goto LABEL_183;
  }

  while ((operations_research::sat::PresolveContext::SetLiteralToFalse(*(v133 + 1), *v98) & 1) != 0)
  {
    if (++v98 == v99)
    {
      goto LABEL_183;
    }
  }

LABEL_198:
  v73 = 0;
LABEL_199:
  if (__p[0] >= 2)
  {
    operator delete((v142 - (__p[1] & 1) - 8));
  }

LABEL_109:
  if (v148[0])
  {
    operator delete(v148[1]);
  }

  if (v151)
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(v149);
  }

  if (v153 >= 2)
  {
    operator delete((v154 - (BYTE8(v153) & 1) - 8));
  }

  return v73;
}

void sub_23CAA6520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, void *a24, uint64_t a25, char a26, void *a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (a29 >= 2)
  {
    operator delete((a31 - (a30 & 1) - 8));
  }

  if (*(v37 - 200))
  {
    operator delete(*(v37 - 192));
  }

  absl::lts_20240722::btree_map<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>>::~btree_map(v37 - 176);
  if (v36)
  {
    operator delete(v36);
  }

  v39 = a1;
  if (__p)
  {
    operator delete(__p);
    v39 = a1;
    if (*(v37 - 144) < 2uLL)
    {
LABEL_9:
      _Unwind_Resume(v39);
    }
  }

  else if (*(v37 - 144) < 2uLL)
  {
    goto LABEL_9;
  }

  v40 = v39;
  operator delete((*(v37 - 128) - (*(v37 - 136) & 1) - 8));
  _Unwind_Resume(v40);
}

_BYTE *absl::lts_20240722::container_internal::btree_map_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>,256,false>>>::operator[]<long long>(uint64_t *a1, uint64_t *a2)
{
  v13 = a2;
  if (!a1[2])
  {
    operator new();
  }

  v2 = *a2;
  v3 = *a1;
  v4 = *(*a1 + 10);
  if (!*(*a1 + 10))
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = 0;
  v6 = (v3 + 16);
  do
  {
    v7 = *v6;
    v6 += 4;
    if (v7 >= v2)
    {
      goto LABEL_9;
    }

    ++v5;
  }

  while (v4 != v5);
  LODWORD(v5) = v4;
LABEL_9:
  while (!v3[11])
  {
    v3 = *&v3[8 * v5 + 240];
    v4 = v3[10];
    if (v3[10])
    {
      goto LABEL_4;
    }

LABEL_8:
    LODWORD(v5) = 0;
  }

  v8 = v5;
  v9 = v5;
  v10 = v3;
  while (v9 == v10[10])
  {
    v9 = v10[8];
    v10 = *v10;
    if (v10[11])
    {
      goto LABEL_17;
    }
  }

  if (v2 >= *&v10[32 * v9 + 16])
  {
    return &v10[32 * v9 + 24];
  }

LABEL_17:
  v10 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1, v3, v8, &std::piecewise_construct, &v13);
  LOBYTE(v9) = v11;
  return &v10[32 * v9 + 24];
}

uint64_t absl::lts_20240722::btree_map<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>>::~btree_map(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(*result);
    result = v1;
  }

  *result = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>,256,false>>::EmptyNode(void)::empty_node;
  *(result + 8) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>,256,false>>::EmptyNode(void)::empty_node;
  *(result + 16) = 0;
  return result;
}

void operations_research::sat::CpModelPresolver::DetectDuplicateConstraints(operations_research::TimeLimit **this)
{
  if ((operations_research::TimeLimit::LimitReached(this[3]) & 1) == 0 && (*(this[1] + 416) & 1) == 0)
  {
    operator new();
  }
}

void sub_23CAA76E0(_Unwind_Exception *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, int a31, __int16 a32, char a33, char a34, void *__p, void *a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a41)
  {
    operator delete(a41);
  }

  if (a53)
  {
    operator delete(a53);
  }

  operations_research::sat::PresolveTimer::~PresolveTimer(&a56, a2);
  _Unwind_Resume(a1);
}

void operations_research::sat::FindDuplicateConstraints(uint64_t *__return_ptr a1@<X8>, operations_research::sat *this@<X0>, const operations_research::sat::CpModelProto *a3@<X1>)
{
  v3 = a3;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operations_research::sat::ConstraintProto::ConstraintProto(v60, 0);
  __p[0] = 0;
  __p[1] = 0;
  v59 = 0;
  v56 = xmmword_23CE306D0;
  if (*(this + 16) & 1) == 0 || (v3)
  {
    goto LABEL_21;
  }

  v5 = v61;
  if ((v61 & 1) == 0)
  {
    v6 = v51[1];
    if ((v51[1] & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v5 != *(v6 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_6;
    }

LABEL_9:
    operations_research::sat::ConstraintProto::InternalSwap(v60, v51);
    goto LABEL_10;
  }

  v5 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
  v6 = v51[1];
  if (v51[1])
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5 == v6)
  {
    goto LABEL_9;
  }

LABEL_6:
  operations_research::sat::ConstraintProto::CopyFrom(v60, v51);
LABEL_10:
  operations_research::sat::ConstraintProto::~ConstraintProto(v51);
  google::protobuf::MessageLite::SerializeAsString(v51, v60);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[0]);
  }

  v59 = *v52;
  *__p = *v51;
  if ((v52[7] & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = v51[0];
  }

  if ((v52[7] & 0x80u) == 0)
  {
    v10 = v52[7];
  }

  else
  {
    v10 = v51[1];
  }

  v11 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v9, v10, v7, v8);
  v48 = (((v11 + v10) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v11 + v10));
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long long,int>,absl::lts_20240722::hash_internal::Hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<std::pair<unsigned long long const,int>>>::find_or_prepare_insert<unsigned long long>(&v56, &v48, v51);
  if (v52[0] == 1)
  {
    v12 = v51[1];
    *v51[1] = v48;
    v12[2] = 0;
  }

  *(v51[1] + 2) = -1;
LABEL_21:
  v13 = *(this + 14);
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = (this + 48);
    v16 = 8;
    do
    {
      if (*v15)
      {
        v18 = (*v15 + v16 - 1);
      }

      else
      {
        v18 = this + 48;
      }

      v19 = *v18;
      v20 = *(*v18 + 60);
      if (v20)
      {
        v21 = v20 == 19;
      }

      else
      {
        v21 = 1;
      }

      if (v21 || v20 == 4 && (v3 & 1) != 0)
      {
        goto LABEL_24;
      }

      operations_research::sat::ConstraintProto::ConstraintProto(v51, 0, v19);
      google::protobuf::internal::ArenaStringPtr::ClearToEmpty(&v53);
      v22 = v52;
      if ((v3 & 1) == 0)
      {
        if (*(v19 + 60) != 12)
        {
          goto LABEL_43;
        }

        if (v55 == 12)
        {
          v23 = v54;
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v51);
          v55 = 12;
          v24 = v51[1];
          if (v51[1])
          {
            v24 = *(v51[1] & 0xFFFFFFFFFFFFFFFELL);
          }

          v23 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v24);
          v54 = v23;
        }

        v22 = (v23 + 8);
      }

      *v22 = 0;
LABEL_43:
      v25 = v61;
      if (v61)
      {
        v25 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
        v26 = v51[1];
        if ((v51[1] & 1) == 0)
        {
LABEL_45:
          if (v25 == v26)
          {
            goto LABEL_49;
          }

          goto LABEL_46;
        }
      }

      else
      {
        v26 = v51[1];
        if ((v51[1] & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      if (v25 == *(v26 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_49:
        operations_research::sat::ConstraintProto::InternalSwap(v60, v51);
        goto LABEL_50;
      }

LABEL_46:
      operations_research::sat::ConstraintProto::CopyFrom(v60, v51);
LABEL_50:
      operations_research::sat::ConstraintProto::~ConstraintProto(v51);
      google::protobuf::MessageLite::SerializeAsString(v51, v60);
      if (SHIBYTE(v59) < 0)
      {
        operator delete(__p[0]);
      }

      v59 = *v52;
      *__p = *v51;
      if ((v52[7] & 0x80u) == 0)
      {
        v29 = __p;
      }

      else
      {
        v29 = v51[0];
      }

      if ((v52[7] & 0x80u) == 0)
      {
        v30 = v52[7];
      }

      else
      {
        v30 = v51[1];
      }

      v31 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v29, v30, v27, v28);
      v51[0] = ((((v31 + v30) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v31 + v30)));
      LODWORD(v51[1]) = v14;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long long,int>,absl::lts_20240722::hash_internal::Hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<std::pair<unsigned long long const,int>>>::find_or_prepare_insert<unsigned long long>(&v56, v51, &v48);
      if (v50 != 1)
      {
        v32 = *(v49 + 8);
        if (v32 == -1)
        {
          if (*(this + 16))
          {
            v37 = *(this + 16);
          }

          else
          {
            v37 = &operations_research::sat::_CpObjectiveProto_default_instance_;
          }
        }

        else
        {
          v33 = (*v15 + 8 * v32 + 7);
          if ((*v15 & 1) == 0)
          {
            v33 = (this + 48);
          }

          v34 = *v33;
          operations_research::sat::ConstraintProto::ConstraintProto(v51, 0, *v33);
          google::protobuf::internal::ArenaStringPtr::ClearToEmpty(&v53);
          v35 = v52;
          if (v3)
          {
LABEL_74:
            *v35 = 0;
          }

          else if (*(v34 + 60) == 12)
          {
            if (v55 == 12)
            {
              v36 = v54;
            }

            else
            {
              operations_research::sat::ConstraintProto::clear_constraint(v51);
              v55 = 12;
              v38 = v51[1];
              if (v51[1])
              {
                v38 = *(v51[1] & 0xFFFFFFFFFFFFFFFELL);
              }

              v36 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v38);
              v54 = v36;
            }

            v35 = (v36 + 8);
            goto LABEL_74;
          }
        }

        v39 = v61;
        if (v61)
        {
          v39 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
          v40 = v51[1];
          if (v51[1])
          {
            goto LABEL_80;
          }

LABEL_77:
          if (v39 != v40)
          {
            goto LABEL_78;
          }

LABEL_81:
          operations_research::sat::ConstraintProto::InternalSwap(v60, v51);
        }

        else
        {
          v40 = v51[1];
          if ((v51[1] & 1) == 0)
          {
            goto LABEL_77;
          }

LABEL_80:
          if (v39 == *(v40 & 0xFFFFFFFFFFFFFFFELL))
          {
            goto LABEL_81;
          }

LABEL_78:
          operations_research::sat::ConstraintProto::CopyFrom(v60, v51);
        }

        operations_research::sat::ConstraintProto::~ConstraintProto(v51);
        google::protobuf::MessageLite::SerializeAsString(v51, v60);
        if (v59 >= 0)
        {
          v41 = HIBYTE(v59);
        }

        else
        {
          v41 = __p[1];
        }

        v42 = v52[7];
        v43 = v52[7];
        if ((v52[7] & 0x80u) != 0)
        {
          v42 = v51[1];
        }

        if (v41 == v42)
        {
          if (v59 >= 0)
          {
            v44 = __p;
          }

          else
          {
            v44 = __p[0];
          }

          if ((v52[7] & 0x80u) == 0)
          {
            v45 = v51;
          }

          else
          {
            v45 = v51[0];
          }

          v46 = memcmp(v44, v45, v41) == 0;
          if (v43 < 0)
          {
LABEL_97:
            operator delete(v51[0]);
          }
        }

        else
        {
          v46 = 0;
          if (v52[7] < 0)
          {
            goto LABEL_97;
          }
        }

        if (v46)
        {
          v51[0] = __PAIR64__(v32, v14);
          std::vector<long long>::push_back[abi:ne200100](a1, v51);
        }

        goto LABEL_24;
      }

      v17 = v49;
      *v49 = v51[0];
      *(v17 + 8) = v51[1];
LABEL_24:
      ++v14;
      v16 += 8;
    }

    while (v13 != v14);
  }

  if (v56 >= 2)
  {
    operator delete((v57 - (BYTE8(v56) & 1) - 8));
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[0]);
  }

  operations_research::sat::ConstraintProto::~ConstraintProto(v60);
}

void sub_23CAA7E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a23 >= 2)
  {
    operator delete((a25 - (a24 & 1) - 8));
    if ((a32 & 0x80000000) == 0)
    {
LABEL_3:
      operations_research::sat::ConstraintProto::~ConstraintProto((v32 - 152));
      v34 = *a10;
      if (!*a10)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  operations_research::sat::ConstraintProto::~ConstraintProto((v32 - 152));
  v34 = *a10;
  if (!*a10)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  *(a10 + 8) = v34;
  operator delete(v34);
  _Unwind_Resume(a1);
}

void operations_research::sat::CpModelPresolver::DetectDifferentVariables(operations_research::TimeLimit **this)
{
  if ((operations_research::TimeLimit::LimitReached(this[3]) & 1) == 0 && (*(this[1] + 416) & 1) == 0)
  {
    operator new();
  }
}

void sub_23CAA9B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, unint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v66)
  {
    operator delete(v66);
  }

  operations_research::sat::Model::~Model(&a39);
  if (a49 >= 2)
  {
    operator delete((a51 - (a50 & 1) - 8));
  }

  std::vector<std::vector<int>>::~vector[abi:ne200100](&a60);
  if (a21)
  {
    operator delete(a21);
    if (!a65)
    {
LABEL_9:
      v70 = STACK[0x210];
      if (!STACK[0x210])
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if (!a65)
  {
    goto LABEL_9;
  }

  operator delete((STACK[0x200] - (a66 & 1) - 8));
  v70 = STACK[0x210];
  if (!STACK[0x210])
  {
LABEL_11:
    operations_research::sat::PresolveTimer::~PresolveTimer((v67 - 248), v69);
    _Unwind_Resume(a1);
  }

LABEL_10:
  STACK[0x218] = v70;
  operator delete(v70);
  goto LABEL_11;
}

void operations_research::sat::CpModelPresolver::DetectDifferentVariables(void)::$_0::operator()(uint64_t *a1, signed int a2, signed int a3, operations_research::Domain *this)
{
  operations_research::Domain::Complement(&v17, this);
  operations_research::Domain::PartAroundZero(&v15, &v17);
  if (v17)
  {
    operator delete(__p[0]);
  }

  IsEmpty = operations_research::Domain::IsEmpty(&v15);
  v8 = a2 == a3 || IsEmpty;
  if ((v8 & 1) == 0)
  {
    v14 = __PAIR64__(a3, a2);
    if (a2 > a3)
    {
      v14 = __PAIR64__(a2, a3);
      operations_research::Domain::Negation(&v17, &v15);
      if (v15)
      {
        operator delete(v16[0]);
      }

      v15 = v17;
      *v16 = *__p;
    }

    std::vector<long long>::push_back[abi:ne200100](*a1, &v14);
    if (operations_research::Domain::Min(&v15) == 0x8000000000000000)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = operations_research::Domain::Min(&v15);
      if (__OFADD__(-v10, 1))
      {
        v9 = (v10 > 0) + 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = 1 - v10;
      }
    }

    v11 = operations_research::Domain::Max(&v15);
    absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<int,int>,std::pair<long long,long long>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<std::pair<int,int> const,std::pair<long long,long long>>>>::try_emplace_impl<std::pair<int,int> const&>(a1[1], &v14, &v17);
    v12 = v11 + 1;
    v13 = __p[0];
    if (__OFADD__(v11, 1))
    {
      v12 = (v11 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    }

    *(__p[0] + 1) = v9;
    v13[2] = v12;
  }

  if (v15)
  {
    operator delete(v16[0]);
  }
}

void sub_23CAAA01C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, char a14, uint64_t a15)
{
  if (a11)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::CpModelPresolver::DetectDominatedLinearConstraints(operations_research::TimeLimit **this)
{
  if ((operations_research::TimeLimit::LimitReached(this[3]) & 1) == 0)
  {
    v2 = this[1];
    if ((*(v2 + 416) & 1) == 0)
    {
      if (*(*(v2 + 49) + 792))
      {
        operator new();
      }
    }
  }
}

void sub_23CAAB114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57)
{
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>,operations_research::Domain>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int> const,operations_research::Domain>>>::~raw_hash_set(&a29);
  if (__p)
  {
    a34 = __p;
    operator delete(__p);
  }

  operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::~InclusionDetector(&a36);
  operations_research::sat::PresolveTimer::~PresolveTimer(&a57, v58);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::CpModelPresolver::RemoveCommonPart(void *a1, void *a2, int **a3, uint64_t a4)
{
  v4 = a1;
  v5 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    v7 = a1[1];
    v8 = *(*v7 + 48);
    v9 = ((a2[1] >> 1) + 1);
    do
    {
      v10 = *(v5 + 1);
      v11 = v8 + 7 + 8 * *v5;
      if ((v8 & 1) == 0)
      {
        v11 = *v7 + 48;
      }

      v12 = *v11;
      if (*(*v11 + 60) == 12)
      {
        v13 = *(v12 + 48);
        if (v9 == *(v13 + 4))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v13 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        if (v9 == off_2810BEE58)
        {
LABEL_10:
          if (*v13[9] == v13[9][1])
          {
            v14 = v10 >= 0 ? *(v5 + 1) : -v10;
            if (!*(v12 + 16) && v14 == 1)
            {
              operator new();
            }
          }
        }
      }

      v5 += 4;
    }

    while (v5 != v6);
  }

  a1[5] = a1[4];
  if (a2[1] >= 2uLL)
  {
    if (*a2 >= 2uLL)
    {
      v17 = a2[2];
      v16 = a2[3];
      if (*v17 <= -2)
      {
        do
        {
          v18 = __clz(__rbit64((*v17 | ~(*v17 >> 7)) & 0x101010101010101)) >> 3;
          v17 = (v17 + v18);
          v16 += 16 * v18;
        }

        while (*v17 < -1);
      }
    }

    operator new();
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,false>(0, 0, __p, 0, 1);
  v19 = *(v4 + 8);
  operations_research::Domain::Domain(__p, 0, 0);
  v20 = operations_research::sat::PresolveContext::NewIntVarWithDefinition(v19, __p, 0, 0);
  if (__p[0])
  {
    operator delete(__p[1]);
  }

  v21 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(v4 + 8) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v22 = v21;
  if (*(v21 + 60) == 12)
  {
    v23 = *(v21 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v21);
    *(v22 + 60) = 12;
    v24 = *(v22 + 8);
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    v23 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v24);
    *(v22 + 48) = v23;
  }

  v26 = *(v23 + 4);
  v25 = *(v23 + 5);
  if (v26 == v25)
  {
    google::protobuf::RepeatedField<int>::Grow((v23 + 2), v25, (v25 + 1));
    v26 = *(v23 + 4);
  }

  v27 = v23[3];
  *(v23 + 4) = v26 + 1;
  *(v27 + 4 * v26) = v20;
  v29 = *(v23 + 10);
  v28 = *(v23 + 11);
  if (v29 == v28)
  {
    google::protobuf::RepeatedField<long long>::Grow((v23 + 5), v28, (v28 + 1));
    v29 = *(v23 + 10);
  }

  v30 = *(v23 + 16);
  v31 = v23[6];
  *(v23 + 10) = v29 + 1;
  *(v31 + 8 * v29) = -1;
  v32 = *(v23 + 17);
  if (v30 == v32)
  {
    google::protobuf::RepeatedField<long long>::Grow((v23 + 8), v32, (v32 + 1));
    v103 = *(v23 + 16);
    v32 = *(v23 + 17);
    v33 = v23[9];
    v34 = v103 + 1;
    *(v23 + 16) = v103 + 1;
    *(v33 + 8 * v103) = 0;
    if (v103 + 1 != v32)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v33 = v23[9];
    v34 = v30 + 1;
    *(v23 + 16) = v30 + 1;
    *(v33 + 8 * v30) = 0;
    if (v30 + 1 != v32)
    {
      goto LABEL_38;
    }
  }

  google::protobuf::RepeatedField<long long>::Grow((v23 + 8), v32, (v32 + 1));
  v34 = *(v23 + 16);
  v33 = v23[9];
LABEL_38:
  *(v23 + 16) = v34 + 1;
  *(v33 + 8 * v34) = 0;
  v35 = operations_research::sat::PossibleIntegerOverflow(**(v4 + 8), v23[3], *(v23 + 4), v23[6], *(v23 + 10), 0);
  v36 = v35;
  if (v35)
  {
    operator new();
  }

  operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(v4 + 8));
  if (v36)
  {
    return 0;
  }

  v38 = 0;
  v40 = *a3;
  v39 = a3[1];
  if (*a3 != v39)
  {
    v41 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
    v104 = v4;
    do
    {
      v42 = *v40;
      if (v42 == -1)
      {
        goto LABEL_45;
      }

      v43 = v4;
      v44 = *(v40 + 1);
      v45 = **(v43 + 8);
      v47 = *(v45 + 48);
      v46 = (v45 + 48);
      v48 = v47 + 8 * v42 + 7;
      if (v47)
      {
        v46 = v48;
      }

      v49 = *v46;
      v108 = *v40;
      if (*(*v46 + 60) == 12)
      {
        v50 = *(v49 + 48);
        v51 = v50 + 4;
        v52 = v50[4];
        if (v50[4] < 1)
        {
          goto LABEL_51;
        }
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v49);
        *(v49 + 60) = 12;
        v64 = *(v49 + 8);
        if (v64)
        {
          v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
        }

        v50 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v64);
        *(v49 + 48) = v50;
        v51 = v50 + 4;
        v52 = v50[4];
        if (v52 < 1)
        {
LABEL_51:
          v53 = 0;
          v54 = 0;
          goto LABEL_52;
        }
      }

      v65 = *(v50 + 3);
      v66 = *a2;
      if (*a2 >= 2uLL)
      {
        v73 = 0;
        v54 = 0;
        v53 = 0;
        do
        {
          v80 = 0;
          v81 = *(v65 + 4 * v73);
          _X16 = a2[2];
          __asm { PRFM            #4, [X16] }

          v87 = (((v41 + v81) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v41 + v81));
          v79 = (v87 >> 7) ^ (_X16 >> 12);
          v88 = vdup_n_s8(v87 & 0x7F);
          v89 = a2[3];
          v90 = v79 & v66;
          v91 = *(_X16 + (v79 & v66));
          v92 = vceq_s8(v91, v88);
          if (!v92)
          {
            goto LABEL_86;
          }

LABEL_84:
          while (*(v89 + 16 * ((v90 + (__clz(__rbit64(v92)) >> 3)) & v66)) != v81)
          {
            v92 &= ((v92 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v92)
            {
LABEL_86:
              while (!*&vceq_s8(v91, 0x8080808080808080))
              {
                v80 += 8;
                v90 = (v80 + v90) & v66;
                v91 = *(_X16 + v90);
                v92 = vceq_s8(v91, v88);
                if (v92)
                {
                  goto LABEL_84;
                }
              }

              v94 = *(v50 + 6);
              v95 = *(v94 + 8 * v73);
              if (v81 != v20 || (v54 = 1, v95))
              {
                *(v65 + 4 * v53) = v81;
                *(v94 + 8 * v53) = v95;
                v53 = (v53 + 1);
              }

              goto LABEL_82;
            }
          }

          v78 = 0;
          __asm { PRFM            #4, [X16] }

          while (1)
          {
            v74 = (v79 & v66);
            v75 = *&v74[_X16];
            v76 = vceq_s8(v75, v88);
            if (v76)
            {
              break;
            }

LABEL_79:
            if (vceq_s8(v75, 0x8080808080808080))
            {
              absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", v74);
            }

            v78 += 8;
            v79 = &v74[v78];
          }

          while (1)
          {
            v77 = &v74[__clz(__rbit64(v76)) >> 3] & v66;
            if (*(v89 + 16 * v77) == v81)
            {
              break;
            }

            v76 &= ((v76 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v76)
            {
              goto LABEL_79;
            }
          }

          v68 = *(v89 + 16 * v77 + 8) * v44;
          v69 = *(*(v50 + 6) + 8 * v73);
          if (v68 != v69)
          {
LABEL_101:
            absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v68, v69, "common_var_coeff_map.at(mutable_linear->vars(k)) * multiple == mutable_linear->coeffs(k)");
          }

LABEL_82:
          ++v73;
        }

        while (v73 != v52);
      }

      else if (a2[1] < 2uLL)
      {
        v54 = 0;
        v53 = 0;
        v96 = *(v50 + 6);
        v97 = v96;
        v98 = *(v50 + 3);
        do
        {
          v100 = *v98++;
          v99 = v100;
          v102 = *v97++;
          v101 = v102;
          if (v99 != v20 || (v54 = 1, v101))
          {
            *(v65 + 4 * v53) = v99;
            v96[v53] = v101;
            v53 = (v53 + 1);
          }

          --v52;
        }

        while (v52);
      }

      else
      {
        v67 = 0;
        v54 = 0;
        v53 = 0;
        do
        {
          v70 = *(v65 + 4 * v67);
          if (*(a2 + 4) == v70)
          {
            v68 = a2[3] * v44;
            v69 = *(*(v50 + 6) + 8 * v67);
            if (v68 != v69)
            {
              goto LABEL_101;
            }
          }

          else
          {
            v71 = *(v50 + 6);
            v72 = *(v71 + 8 * v67);
            if (v70 != v20 || (v54 = 1, v72))
            {
              *(v65 + 4 * v53) = v70;
              *(v71 + 8 * v53) = v72;
              v53 = (v53 + 1);
            }
          }

          ++v67;
        }

        while (v52 != v67);
      }

LABEL_52:
      v55 = v41;
      v56 = v39;
      v57 = v38;
      v58 = *v51;
      if (v58 <= v53)
      {
        v59 = v50 + 10;
        if (v50[10] <= v53)
        {
LABEL_54:
          if ((v54 & 1) == 0)
          {
            goto LABEL_58;
          }

          goto LABEL_55;
        }
      }

      else
      {
        *v51 = v53;
        v58 = v53;
        v59 = v50 + 10;
        if (v50[10] <= v53)
        {
          goto LABEL_54;
        }
      }

      *v59 = v53;
      if ((v54 & 1) == 0)
      {
LABEL_58:
        if (v58 == v50[5])
        {
          v107 = v51;
          google::protobuf::RepeatedField<int>::Grow(v51, v58, (v58 + 1));
          LODWORD(v58) = *v107;
        }

        v60 = *(v50 + 3);
        v50[4] = v58 + 1;
        *(v60 + 4 * v58) = v20;
        v62 = v50[10];
        v61 = v50[11];
        if (v62 == v61)
        {
          google::protobuf::RepeatedField<long long>::Grow(v59, v61, (v61 + 1));
          v62 = *v59;
        }

        v63 = *(v50 + 6);
        v50[10] = v62 + 1;
        *(v63 + 8 * v62) = 0;
        v38 = v57;
        v39 = v56;
        v41 = v55;
        goto LABEL_44;
      }

LABEL_55:
      v38 = v57;
      v39 = v56;
      v41 = v55;
LABEL_44:
      v4 = v104;
      operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(v104 + 8), v108);
LABEL_45:
      v40 += 4;
    }

    while (v40 != v39);
  }

  return 1;
}

void sub_23CAAC2C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *a25, void *a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::CpModelPresolver::FindBigAtMostOneAndLinearOverlap(operations_research::TimeLimit **this, operations_research::sat::ActivityBoundHelper *a2)
{
  if ((operations_research::TimeLimit::LimitReached(this[3]) & 1) == 0)
  {
    v3 = this[1];
    if ((*(v3 + 416) & 1) == 0)
    {
      if (*(*(v3 + 49) + 792))
      {
        operator new();
      }
    }
  }
}

void sub_23CAAE898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, unint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (a51 >= 2)
  {
    operator delete((a53 - (a52 & 1) - 8));
    if (!a27)
    {
LABEL_3:
      v67 = a56;
      if (!a56)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if (!a27)
  {
    goto LABEL_3;
  }

  operator delete(a27);
  v67 = a56;
  if (!a56)
  {
LABEL_4:
    v68 = a59;
    if (!a59)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v67);
  v68 = a59;
  if (!a59)
  {
LABEL_5:
    if (!v65)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v68);
  if (!v65)
  {
LABEL_6:
    v69 = a62;
    if (!a62)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(v65);
  v69 = a62;
  if (!a62)
  {
LABEL_7:
    if (!__p)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_15:
  operator delete(v69);
  if (!__p)
  {
LABEL_9:
    operations_research::sat::PresolveTimer::~PresolveTimer(&a65, a2);
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(__p);
  goto LABEL_9;
}

unint64_t std::shuffle[abi:ne200100]<std::__wrap_iter<int *>,operations_research::sat::ModelRandomGenerator &>(unint64_t result, uint64_t a2, void *a3)
{
  v3 = (a2 - result) >> 2;
  if (v3 >= 2)
  {
    v4 = result;
    v5 = a2 - 4;
    if (a2 - 4 > result)
    {
      do
      {
        if (v3 != 1)
        {
          if (v3)
          {
            v7 = __clz(v3);
            if (((v3 << v7) & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v8 = 64;
            }

            else
            {
              v8 = 63;
            }

            v9 = v8 - v7;
            v10 = v9 >> 6;
            if ((v9 & 0x3F) != 0)
            {
              ++v10;
            }

            if (v10 <= v9)
            {
              v11 = 0xFFFFFFFFFFFFFFFFLL >> -(v9 / v10);
            }

            else
            {
              v11 = 0;
            }

            do
            {
              result = (a3[2])(*a3) & v11;
            }

            while (result >= v3);
            if (!result)
            {
              goto LABEL_4;
            }

LABEL_19:
            v12 = *v4;
            *v4 = v4[result];
            v4[result] = v12;
            goto LABEL_4;
          }

          result = (a3[2])(*a3);
          if (result)
          {
            goto LABEL_19;
          }
        }

LABEL_4:
        ++v4;
        --v3;
      }

      while (v4 < v5);
    }
  }

  return result;
}

void operations_research::sat::CpModelPresolver::FindBigVerticalLinearOverlap(operations_research::sat::CpModelPresolver *this, operations_research::sat::ActivityBoundHelper *a2)
{
  if ((operations_research::TimeLimit::LimitReached(*(this + 3)) & 1) == 0)
  {
    v3 = *(this + 1);
    if ((*(v3 + 416) & 1) == 0)
    {
      if (*(*(v3 + 392) + 792))
      {
        operator new();
      }
    }
  }
}

void sub_23CAB0080(_Unwind_Exception *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, uint64_t a45, unint64_t a46, uint64_t a47, uint64_t a48)
{
  if (a42 < 0)
  {
    operator delete(__p);
    if (v49)
    {
LABEL_8:
      operator delete(v49);
      v52 = a43;
      if (a43)
      {
LABEL_9:
        operator delete(v52);
        if (!v48)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

LABEL_6:
      if (!v48)
      {
LABEL_11:
        if (a46 >= 2)
        {
          operator delete((a48 - (a47 & 1) - 8));
        }

        operations_research::sat::PresolveTimer::~PresolveTimer((v50 - 248), a2);
        _Unwind_Resume(a1);
      }

LABEL_10:
      operator delete(v48);
      goto LABEL_11;
    }
  }

  else if (v49)
  {
    goto LABEL_8;
  }

  v52 = a43;
  if (a43)
  {
    goto LABEL_9;
  }

  goto LABEL_6;
}

void operations_research::sat::CpModelPresolver::FindBigHorizontalLinearOverlap(operations_research::TimeLimit **this, operations_research::sat::ActivityBoundHelper *a2)
{
  if ((operations_research::TimeLimit::LimitReached(this[3]) & 1) == 0)
  {
    v3 = this[1];
    if ((*(v3 + 416) & 1) == 0)
    {
      if (*(*(v3 + 49) + 792))
      {
        operator new();
      }
    }
  }
}

void sub_23CAB1734(_Unwind_Exception *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, void *a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
    if (!v63)
    {
LABEL_6:
      if (a32)
      {
        operator delete(a32);
      }

      if (a16)
      {
        operator delete(a16);
      }

      operations_research::sat::PresolveTimer::~PresolveTimer((v64 - 256), a2);
      _Unwind_Resume(a1);
    }
  }

  else if (!v63)
  {
    goto LABEL_6;
  }

  operator delete(v63);
  goto LABEL_6;
}

void operations_research::sat::CpModelPresolver::FindAlmostIdenticalLinearConstraints(operations_research::TimeLimit **this)
{
  if ((operations_research::TimeLimit::LimitReached(this[3]) & 1) == 0 && (*(this[1] + 416) & 1) == 0)
  {
    operator new();
  }
}

void sub_23CAB2448(_Unwind_Exception *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (v51)
  {
    operator delete(v51);
  }

  operations_research::sat::PresolveTimer::~PresolveTimer(&a46, a2);
  _Unwind_Resume(a1);
}

void operations_research::sat::CpModelPresolver::ExtractEncodingFromLinear(operations_research::TimeLimit **this)
{
  v3 = *MEMORY[0x277D85DE8];
  if ((operations_research::TimeLimit::LimitReached(this[3]) & 1) == 0)
  {
    v2 = this[1];
    if ((*(v2 + 416) & 1) == 0)
    {
      if (*(*(v2 + 49) + 792))
      {
        operator new();
      }
    }
  }
}

void sub_23CAB36A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v66)
  {
    operator delete(v66);
  }

  operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::~InclusionDetector(&a39);
  operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0::~$_0(&a59);
  if (__p)
  {
    a66 = __p;
    operator delete(__p);
  }

  operations_research::sat::PresolveTimer::~PresolveTimer((v67 - 256), v69);
  _Unwind_Resume(a1);
}

void operations_research::sat::CpModelPresolver::LookAtVariableWithDegreeTwo(operations_research::sat::PresolveContext **this, int a2)
{
  if (a2 < 0)
  {
    operations_research::sat::CpModelPresolver::LookAtVariableWithDegreeTwo(&v8);
  }

  if (!operations_research::sat::PresolveContext::ConstraintVariableGraphIsUpToDate(this[1]))
  {
    operations_research::sat::CpModelPresolver::LookAtVariableWithDegreeTwo(&v8);
  }

  v4 = this[1];
  if ((*(v4 + 416) & 1) == 0 && (*(v4 + 16) & 1) == 0 && !operations_research::sat::PresolveContext::IsFixed(v4, a2))
  {
    v5 = this[1];
    if (*(v5 + 1176) == 1 && operations_research::sat::PresolveContext::CanBeUsedAsLiteral(v5, a2))
    {
      v6 = (*(this[1] + 84) + 32 * a2);
      if ((v6[1] & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        v8 = 0;
        if (absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::begin(v6))
        {
          if ((*v7 & 0x80000000) == 0)
          {
            operator new();
          }
        }
      }
    }
  }
}

void sub_23CAB3C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, char a13, void *a14, uint64_t a15, char a16, void *a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, void *a26)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
    if ((a25 & 1) == 0)
    {
LABEL_5:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a25 & 1) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a26);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::CpModelPresolver::ProcessVariableInTwoAtMostOrExactlyOne(operations_research::sat::CpModelPresolver *this, int a2)
{
  v106 = a2;
  v3 = *(this + 1);
  if (*(v3 + 416))
  {
    return;
  }

  if (operations_research::sat::PresolveContext::IsFixed(v3, a2))
  {
    return;
  }

  if (operations_research::sat::PresolveContext::VariableWasRemoved(*(this + 1), a2))
  {
    return;
  }

  v5 = *(this + 1);
  if (*(v5 + 1176) != 1 || !operations_research::sat::PresolveContext::CanBeUsedAsLiteral(v5, a2))
  {
    return;
  }

  v6 = *(this + 1);
  v7 = a2;
  v8 = *(v6 + 672);
  v9 = (v8 + 32 * a2);
  v10 = *v9;
  if (*v9 > 1uLL)
  {
    v12 = 0;
    _X14 = v9[2];
    __asm { PRFM            #4, [X14] }

    v18 = ((0x378BC386FLL * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * 0x378BC386FLL);
    v19 = vdup_n_s8(v18 & 0x7F);
    v20 = ((v18 >> 7) ^ (_X14 >> 12)) & v10;
    v21 = *(_X14 + v20);
    v22 = vceq_s8(v21, v19);
    if (!v22)
    {
      goto LABEL_13;
    }

    do
    {
LABEL_11:
      if (*(v9[3] + 4 * ((v20 + (__clz(__rbit64(v22)) >> 3)) & v10)) == -1)
      {
        v11 = v9[1];
        goto LABEL_17;
      }

      v22 &= ((v22 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v22);
LABEL_13:
    while (!*&vceq_s8(v21, 0x8080808080808080))
    {
      v12 += 8;
      v20 = (v12 + v20) & v10;
      v21 = *(_X14 + v20);
      v22 = vceq_s8(v21, v19);
      if (v22)
      {
        goto LABEL_11;
      }
    }

    v11 = v9[1];
  }

  else
  {
    v11 = v9[1];
    if (v11 >= 2 && *(v9 + 4) == -1)
    {
LABEL_17:
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) != 6)
      {
        return;
      }

      v23 = *absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::at<int,absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>>((v6 + 512), &v106);
      v7 = v106;
      v8 = *(*(this + 1) + 672);
      goto LABEL_23;
    }
  }

  if ((v11 & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    return;
  }

  v23 = 0;
LABEL_23:
  v24 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::begin((v8 + 32 * v7));
  if (v24)
  {
    v26 = -1;
    v27 = -1;
    do
    {
      v28 = *v25;
      if ((v28 & 0x80000000) == 0)
      {
        v29 = **(this + 1);
        v31 = *(v29 + 48);
        v30 = v29 + 48;
        v32 = v31 + 8 * v28 + 7;
        if (v31)
        {
          v30 = v32;
        }

        v33 = *(*v30 + 60);
        if (v33 != 29 && v33 != 26)
        {
          return;
        }

        if (v26 == -1)
        {
          v26 = *v25;
        }

        else
        {
          v27 = *v25;
        }
      }

      v36 = *(v24 + 1);
      v24 = (v24 + 1);
      LOBYTE(v35) = v36;
      ++v25;
      if (v36 <= -2)
      {
        do
        {
          v37 = __clz(__rbit64((*v24 | ~(*v24 >> 7)) & 0x101010101010101)) >> 3;
          v24 = (v24 + v37);
          v25 += v37;
          v35 = *v24;
        }

        while (v35 < -1);
      }
    }

    while (v35 != 255);
    if (v26 != -1 && v27 != -1)
    {
      if (v26 <= v27)
      {
        v38 = v27;
      }

      else
      {
        v38 = v26;
      }

      if (v26 >= v27)
      {
        v39 = v27;
      }

      else
      {
        v39 = v26;
      }

      v40 = *(this + 1);
      v40[5] = v40[4];
      v41 = *v40;
      v42 = (v41 + 48);
      v43 = *(v41 + 48) - 1;
      v44 = *(v41 + 48) & 1;
      if (v44)
      {
        v42 = (v43 + 8 * v39 + 8);
      }

      v45 = *v42;
      v47 = (*v42 + 48);
      v46 = *v47;
      v48 = *(v45 + 60);
      v49 = *v47;
      if (v48 != 26)
      {
        if (v48 == 29)
        {
          v49 = *v47;
        }

        else
        {
          v49 = &operations_research::sat::_BoolArgumentProto_default_instance_;
        }
      }

      if (*(v49 + 4) >= 2u)
      {
        if (v48 != 26 && v48 != 29)
        {
          v46 = &operations_research::sat::_BoolArgumentProto_default_instance_;
        }

        v50 = *(v46 + 4);
        if (v50)
        {
          v51 = v46[3];
          v52 = 4 * v50;
          v53 = 0x80000000;
          do
          {
            v54 = *v51;
            LODWORD(__p[0]) = v54;
            if (~v54 <= v54)
            {
              v55 = v54;
            }

            else
            {
              v55 = ~v54;
            }

            if (v55 != v106)
            {
              std::vector<int>::push_back[abi:ne200100](*(this + 1) + 32, __p);
              v54 = v53;
            }

            v51 = (v51 + 4);
            v53 = v54;
            v52 -= 4;
          }

          while (v52);
          v41 = **(this + 1);
          v44 = *(v41 + 48) & 1;
          v43 = *(v41 + 48) - 1;
        }

        else
        {
          LODWORD(v54) = 0x80000000;
        }

        v56 = (v41 + 48);
        v57 = v43 + 8 * v38 + 8;
        if (v44)
        {
          v56 = v57;
        }

        v58 = *v56;
        v60 = (*v56 + 48);
        v59 = *v60;
        v61 = *(v58 + 60);
        v62 = *v60;
        if (v61 != 26)
        {
          if (v61 == 29)
          {
            v62 = *v60;
          }

          else
          {
            v62 = &operations_research::sat::_BoolArgumentProto_default_instance_;
          }
        }

        if (*(v62 + 4) >= 2u)
        {
          v102 = v39;
          v103 = v38;
          if (v61 != 26 && v61 != 29)
          {
            v59 = &operations_research::sat::_BoolArgumentProto_default_instance_;
          }

          v63 = *(v59 + 4);
          if (v63)
          {
            v64 = v59[3];
            v65 = 4 * v63;
            v66 = 0x80000000;
            do
            {
              v67 = *v64;
              LODWORD(__p[0]) = v67;
              if (~v67 <= v67)
              {
                v68 = v67;
              }

              else
              {
                v68 = ~v67;
              }

              if (v68 != v106)
              {
                std::vector<int>::push_back[abi:ne200100](*(this + 1) + 32, __p);
                v67 = v66;
              }

              v64 = (v64 + 4);
              v66 = v67;
              v65 -= 4;
            }

            while (v65);
          }

          else
          {
            LODWORD(v67) = 0x80000000;
          }

          if ((v67 ^ v54) == 0xFFFFFFFF)
          {
            v69 = *(v45 + 60);
            if (v69 == 29)
            {
              if (v54 >= 0)
              {
                v70 = v23;
              }

              else
              {
                v70 = -v23;
              }

              goto LABEL_96;
            }

            v71 = *(v58 + 60);
            if (v71 == 29)
            {
              if (v67 >= 0)
              {
                v70 = v23;
              }

              else
              {
                v70 = -v23;
              }

LABEL_95:
              v47 = v60;
LABEL_96:
              v72 = *v47;
              goto LABEL_97;
            }

            v101 = *(this + 1);
            if (*(v101 + 16) & 1) != 0 || v23 && (*(v101 + 576))
            {
              return;
            }

            if (v23 >= 0 == v54 >= 0)
            {
              if (v67 >= 0)
              {
                v70 = v23;
              }

              else
              {
                v70 = -v23;
              }

              if (v71 == 26)
              {
                goto LABEL_95;
              }
            }

            else
            {
              if (v54 < 0)
              {
                v70 = -v23;
              }

              else
              {
                v70 = v23;
              }

              if (v69 == 26)
              {
                goto LABEL_96;
              }
            }

            v72 = &operations_research::sat::_BoolArgumentProto_default_instance_;
LABEL_97:
            v73 = v72[3];
            v74 = *(v72 + 4);
            if (operations_research::sat::PresolveContext::ShiftCostInExactlyOne(*(this + 1), v73, v74, v70))
            {
              v75 = operations_research::sat::PresolveContext::NewMappingConstraint(*(this + 1), "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 99, 0x29B3);
              v76 = operations_research::sat::ConstraintProto::mutable_exactly_one(v75);
              google::protobuf::RepeatedField<int>::Assign<int const*>(v76 + 4, v73, &v73[4 * v74]);
              v77 = **(this + 1);
              v78 = *(v77 + 56);
              v79 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v77 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
              if (*(v45 + 60) == 29 && *(v58 + 60) == 29)
              {
                v80 = *(this + 1);
                v81 = *(v80 + 32);
                v82 = *(v80 + 40);
                while (v81 != v82)
                {
                  v83 = *v81++;
                  v84 = operations_research::sat::ConstraintProto::mutable_exactly_one(v79);
                  operations_research::sat::BoolArgumentProto::add_literals(v84, v83);
                }
              }

              else
              {
                v85 = *(this + 1);
                v86 = *(v85 + 32);
                v87 = *(v85 + 40);
                while (v86 != v87)
                {
                  v88 = *v86++;
                  v89 = operations_research::sat::ConstraintProto::mutable_at_most_one(v79);
                  operations_research::sat::BoolArgumentProto::add_literals(v89, v88);
                }
              }

              operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
              v90 = **(this + 1);
              v92 = *(v90 + 48);
              v91 = (v90 + 48);
              v93 = v92 + 8 * v102 + 7;
              if (v92)
              {
                v91 = v93;
              }

              operations_research::sat::ConstraintProto::Clear(*v91);
              operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v102);
              v94 = **(this + 1);
              v96 = *(v94 + 48);
              v95 = (v94 + 48);
              v97 = v96 + 8 * v103 + 7;
              if (v96)
              {
                v95 = v97;
              }

              operations_research::sat::ConstraintProto::Clear(*v95);
              operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v103);
              v98 = *(this + 1);
              std::string::basic_string[abi:ne200100]<0>(__p, "at_most_one: resolved two constraints with opposite literal");
              operations_research::sat::PresolveContext::UpdateRuleStats(v98, __p, 1, v99, v100);
              if (v105 < 0)
              {
                operator delete(__p[0]);
              }

              operations_research::sat::PresolveContext::MarkVariableAsRemoved(*(this + 1), v106);
              if (operations_research::sat::CpModelPresolver::PresolveAtMostOrExactlyOne(this, v79))
              {
                operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v78);
              }
            }
          }
        }
      }
    }
  }
}

void sub_23CAB43DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *google::protobuf::RepeatedField<int>::Assign<int const*>(int *result, char *a2, char *a3)
{
  *result = 0;
  v3 = a3 - a2;
  v4 = (a3 - a2) >> 2;
  if (result[1] < v4)
  {
    v17 = result;
    v18 = a2;
    v19 = a3;
    result = google::protobuf::RepeatedField<int>::Grow(result, 0, v4);
    a2 = v18;
    a3 = v19;
    v5 = *v17;
    v6 = *(v17 + 1);
    *v17 = v4;
    if (v18 == v19)
    {
      return result;
    }
  }

  else
  {
    v5 = 0;
    v6 = *(result + 1);
    *result = v4;
    if (a2 == a3)
    {
      return result;
    }
  }

  v7 = (v6 + 4 * v5);
  if ((v3 - 4) < 0x1C)
  {
    v8 = a2;
    goto LABEL_10;
  }

  v9 = 4 * v5 + v6;
  if ((v9 - a2) < 0x20)
  {
    v8 = a2;
    do
    {
LABEL_10:
      v16 = *v8;
      v8 += 4;
      *v7++ = v16;
    }

    while (v8 != a3);
    return result;
  }

  v10 = ((v3 - 4) >> 2) + 1;
  v11 = 4 * (v10 & 0x7FFFFFFFFFFFFFF8);
  v7 = (v7 + v11);
  v8 = &a2[v11];
  v12 = a2 + 16;
  v13 = (v9 + 16);
  v14 = v10 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v15 = *v12;
    *(v13 - 1) = *(v12 - 1);
    *v13 = v15;
    v12 += 32;
    v13 += 2;
    v14 -= 8;
  }

  while (v14);
  if (v10 != (v10 & 0x7FFFFFFFFFFFFFF8))
  {
    goto LABEL_10;
  }

  return result;
}

void operations_research::sat::CpModelPresolver::MaybeTransferLinear1ToAnotherVariable(operations_research::sat::CpModelPresolver *this, int a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = (*(*(this + 1) + 672) + 32 * a2);
  if (v2[1] >= 2uLL)
  {
    v3 = (v2 + 2);
    if (*v2 >= 2uLL)
    {
      v4 = v2[2];
      v3 = v2[3];
      if (*v4 <= -2)
      {
        do
        {
          v5 = __clz(__rbit64((*v4 | ~(*v4 >> 7)) & 0x101010101010101)) >> 3;
          v4 = (v4 + v5);
          v3 += v5;
        }

        while (*v4 < -1);
      }
    }

    else
    {
      v4 = &absl::lts_20240722::container_internal::kSooControl;
    }

    v6 = 0;
    do
    {
      v7 = *v3;
      if ((v7 & 0x80000000) == 0)
      {
        v8 = **(this + 1);
        v10 = *(v8 + 48);
        v9 = (v8 + 48);
        v11 = v10 + 8 * v7 + 7;
        if (v10)
        {
          v9 = v11;
        }

        v12 = *v9;
        if (*(v12 + 60) == 12 && *(*(v12 + 48) + 16) == 1)
        {
          operator new();
        }
      }

      ++v6;
      v14 = *(v4 + 1);
      v4 = (v4 + 1);
      LOBYTE(v13) = v14;
      ++v3;
      if (v14 <= -2)
      {
        do
        {
          v15 = __clz(__rbit64((*v4 | ~(*v4 >> 7)) & 0x101010101010101)) >> 3;
          v4 = (v4 + v15);
          v3 += v15;
          v13 = *v4;
        }

        while (v13 < -1);
      }
    }

    while (v13 != 255);
    if (v6 == 1 && (v7 & 0x80000000) == 0)
    {
      v16 = *(this + 1);
      v17 = *v16 + 48;
      if (*v17)
      {
        v17 = *v17 + 8 * v7 + 7;
      }

      v18 = (v16[81] + 24 * v7);
      if (v18[1] - *v18 == 8)
      {
        v19 = *v17;
        if (!*(*v17 + 16))
        {
          v20 = *(v19 + 60);
          if (v20 != 12)
          {
            v36 = 0;
            if (v20 == 27)
            {
              v21 = *(v19 + 48);
              v22 = *(v21 + 6);
              if (!v22)
              {
                v22 = &operations_research::sat::_LinearExpressionProto_default_instance_;
              }

              if (*(v22 + 4) == 1 && *v22[3] == a2)
              {
                v23 = *v22[6];
                if (v23 < 0)
                {
                  v23 = -v23;
                }

                {
                  std::string::basic_string[abi:ne200100]<0>(&__p, "linear1: transferred from abs(X) to X");
                  operations_research::sat::PresolveContext::UpdateRuleStats(v16, &__p, 1, v24, v25);
                  if (SHIBYTE(v33[1]) < 0)
                  {
                    operator delete(__p);
                  }

                  if (*(v19 + 60) == 27)
                  {
                    v26 = *(v19 + 48);
                  }

                  else
                  {
                    v26 = &operations_research::sat::_LinearArgumentProto_default_instance_;
                  }

                  v29 = v26[3];
                  v27 = (v26 + 3);
                  v28 = v29;
                  if (v27[3])
                  {
                    v30 = v27[3];
                  }

                  else
                  {
                    v30 = &operations_research::sat::_LinearExpressionProto_default_instance_;
                  }

                  if (v28)
                  {
                    v27 = (v28 + 7);
                  }

                  v31 = *v27;
                  operations_research::sat::LinearExpressionProto::LinearExpressionProto(&__p, 0, v30);
                  operations_research::sat::LinearExpressionProto::LinearExpressionProto(&v34, 0, v31);
                  std::function<std::pair<int,operations_research::Domain> ()(operations_research::Domain const&)>::operator=<operations_research::sat::CpModelPresolver::MaybeTransferLinear1ToAnotherVariable(int)::$_0,void>(v35, &__p);
                }
              }
            }

            operator new();
          }
        }
      }
    }
  }
}

void sub_23CAB4DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a25);
  if (a22)
  {
    operator delete(__p);
  }

  std::function<std::pair<int,operations_research::Domain> ()(operations_research::Domain const&)>::~function(v30 - 128);
  if (!a12)
  {
    _Unwind_Resume(a1);
  }

  operator delete(a12);
  _Unwind_Resume(a1);
}

void std::function<std::pair<int,operations_research::Domain> ()(operations_research::Domain const&)>::operator=<operations_research::sat::CpModelPresolver::MaybeTransferLinear1ToAnotherVariable(int)::$_0,void>(uint64_t a1, uint64_t a2)
{
  v4[14] = *MEMORY[0x277D85DE8];
  operations_research::sat::LinearExpressionProto::LinearExpressionProto(v3, 0, a2);
  operations_research::sat::LinearExpressionProto::LinearExpressionProto(v4, 0, a2 + 80);
  operator new();
}

void sub_23CAB5068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(v10);
  operator delete(v9);
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto((v11 + 80));
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(va);
  _Unwind_Resume(a1);
}

void sub_23CAB50A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(va);
  _Unwind_Resume(a1);
}

uint64_t std::function<std::pair<int,operations_research::Domain> ()(operations_research::Domain const&)>::~function(uint64_t a1)
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

void operations_research::sat::CpModelPresolver::ProcessVariableOnlyUsedInEncoding(operations_research::sat::CpModelPresolver *this, unsigned int a2)
{
  v238 = *MEMORY[0x277D85DE8];
  v233 = a2;
  v3 = *(this + 1);
  if (*(v3 + 416))
  {
    return;
  }

  if (*(v3 + 16))
  {
    return;
  }

  if (operations_research::sat::PresolveContext::IsFixed(v3, a2))
  {
    return;
  }

  if (operations_research::sat::PresolveContext::VariableWasRemoved(*(this + 1), a2))
  {
    return;
  }

  if (operations_research::sat::PresolveContext::CanBeUsedAsLiteral(*(this + 1), a2))
  {
    return;
  }

  v5 = *(this + 1);
  if (*(*(v5 + 49) + 248) == 1)
  {
    return;
  }

  IsOnlyUsedInEncodingAndMaybeInObjective = operations_research::sat::PresolveContext::VariableIsOnlyUsedInEncodingAndMaybeInObjective(v5, a2);
  v7 = *(this + 1);
  if (!IsOnlyUsedInEncodingAndMaybeInObjective)
  {
    if (operations_research::sat::PresolveContext::VariableIsOnlyUsedInLinear1AndOneExtraConstraint(v7, a2))
    {

      operations_research::sat::CpModelPresolver::MaybeTransferLinear1ToAnotherVariable(this, a2);
    }

    return;
  }

  if (!operations_research::sat::PresolveContext::VariableWithCostIsUniqueAndRemovable(v7, a2))
  {
    v8 = a2;
    goto LABEL_11;
  }

  v8 = a2;
  v88 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::begin((*(*(this + 1) + 672) + 32 * a2));
  if (!v88)
  {
    goto LABEL_275;
  }

  v90 = 0xFFFFFFFFLL;
  do
  {
    v91 = *v89;
    if ((v91 & 0x80000000) != 0)
    {
      v91 = v90;
    }

    else if (v90 != -1)
    {
      operations_research::sat::CpModelPresolver::ProcessVariableOnlyUsedInEncoding(v90, &v210);
    }

    v93 = *(v88 + 1);
    v88 = (v88 + 1);
    LOBYTE(v92) = v93;
    ++v89;
    if (v93 <= -2)
    {
      do
      {
        v94 = __clz(__rbit64((*v88 | ~(*v88 >> 7)) & 0x101010101010101)) >> 3;
        v88 = (v88 + v94);
        v89 += v94;
        v92 = *v88;
      }

      while (v92 < -1);
    }

    v95 = v92;
    v90 = v91;
  }

  while (v95 != 255);
  if (v91 == -1)
  {
LABEL_275:
    operations_research::sat::CpModelPresolver::ProcessVariableOnlyUsedInEncoding(&v210);
  }

  v96 = *(this + 1);
  v97 = (*v96 + 48);
  if (*v97)
  {
    v97 = (*v97 + 8 * v91 + 7);
  }

  v98 = *v97;
  v99 = operations_research::sat::PresolveContext::ObjectiveCoeff(v96, a2);
  if (*(v98 + 60) == 12)
  {
    v101 = *(v98 + 48);
    if (*v101[3] == a2)
    {
      v102 = v99;
      goto LABEL_139;
    }
  }

  else if (*off_2810BEE60 == a2)
  {
    v102 = v99;
    v101 = &operations_research::sat::_LinearConstraintProto_default_instance_;
LABEL_139:
    operations_research::Domain::FromFlatSpanOfIntervals(v101[9], *(v101 + 16), &v234, v100);
    if (*(v98 + 60) == 12)
    {
      v103 = *(v98 + 48);
    }

    else
    {
      v103 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    }

    operations_research::Domain::InverseMultiplicationBy(&v230, &v234, *v103[6]);
    operations_research::sat::PresolveContext::DomainOf(&v226, *(this + 1), v233);
    operations_research::Domain::IntersectionWith(&v210, &v230, &v226);
    if (v226)
    {
      operator delete(v227);
      if ((v230 & 1) == 0)
      {
LABEL_245:
        if ((v234 & 1) == 0)
        {
          goto LABEL_247;
        }

        goto LABEL_246;
      }
    }

    else if ((v230 & 1) == 0)
    {
      goto LABEL_245;
    }

    operator delete(*(&v230 + 1));
    if ((v234 & 1) == 0)
    {
LABEL_247:
      if (operations_research::Domain::IsEmpty(&v210))
      {
        v186 = **(this + 1);
        v188 = *(v186 + 48);
        v187 = (v186 + 48);
        v189 = v188 + 8 * v91 + 7;
        if (v188)
        {
          v187 = v189;
        }

        if (operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, *v187, v183, v184, v185))
        {
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v91);
        }
      }

      else
      {
        if (v102)
        {
          v190 = *(this + 1);
          if (v102 < 1)
          {
            v191 = operations_research::sat::PresolveContext::MaxOf(v190, v233);
            v192 = operations_research::Domain::Max(&v210);
          }

          else
          {
            v191 = operations_research::sat::PresolveContext::MinOf(v190, v233);
            v192 = operations_research::Domain::Min(&v210);
          }

          v200 = v192;
          v201 = *(this + 1);
          std::string::basic_string[abi:ne200100]<0>(&v230, "variables: reduced domain to two values");
          operations_research::sat::PresolveContext::UpdateRuleStats(v201, &v230, 1, v202, v203);
          if (SHIBYTE(v231) < 0)
          {
            operator delete(v230);
          }

          v204 = *(this + 1);
          v205 = v233;
          v234 = v191;
          v235 = v200;
          v206 = std::vector<long long>::vector[abi:ne200100](v232, &v234, 2uLL);
          operations_research::Domain::FromValues(v206, &v230);
          operations_research::sat::PresolveContext::IntersectDomainWith(v204, v205, &v230, 0);
          if (v230)
          {
            operator delete(*(&v230 + 1));
          }

          v199 = v232[0];
          if (!v232[0])
          {
            goto LABEL_270;
          }

          v232[1] = v232[0];
        }

        else
        {
          v193 = *(this + 1);
          std::string::basic_string[abi:ne200100]<0>(&v230, "variables: fix singleton var in linear1");
          operations_research::sat::PresolveContext::UpdateRuleStats(v193, &v230, 1, v194, v195);
          if (SHIBYTE(v231) < 0)
          {
            operator delete(v230);
          }

          v196 = *(this + 1);
          v197 = v233;
          v198 = operations_research::Domain::Min(&v210);
          operations_research::Domain::Domain(&v230, v198);
          operations_research::sat::PresolveContext::IntersectDomainWith(v196, v197, &v230, 0);
          if ((v230 & 1) == 0)
          {
            goto LABEL_270;
          }

          v199 = *(&v230 + 1);
        }

        operator delete(v199);
      }

LABEL_270:
      if ((v210 & 1) == 0)
      {
        return;
      }

      v177 = v211[0];
LABEL_236:
      operator delete(v177);
      return;
    }

LABEL_246:
    operator delete(v235);
    goto LABEL_247;
  }

LABEL_11:
  v230 = xmmword_23CE306D0;
  v234 = 0;
  v235 = 0;
  v236 = &unk_23CE31C20;
  v226 = 0;
  v227 = 0;
  v228 = &unk_23CE31C20;
  v10 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::begin((*(*(this + 1) + 672) + 32 * v8));
  if (v10)
  {
    v11 = v9;
    v12 = 0;
    while (1)
    {
      v13 = *v11;
      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_64;
      }

      v14 = *(this + 1);
      v15 = *(*v14 + 48);
      v16 = v15 + 8 * v13 + 7;
      if ((v15 & 1) == 0)
      {
        v16 = *v14 + 48;
      }

      v17 = *v16;
      v18 = *(*v16 + 60);
      if (v18 != 12)
      {
        absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v18, 12, "ct.constraint_case() == ConstraintProto::kLinear");
      }

      v19 = *(v17 + 48);
      if (*(v19 + 16) != 1)
      {
        absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(*(v19 + 16), 1, "ct.linear().vars().size() == 1");
      }

      v20 = *(v19 + 48);
      v21 = *v20;
      if (*v20 >= 0)
      {
        v22 = *v20;
      }

      else
      {
        v22 = -v21;
      }

      if (v22 != 1 || *(v17 + 16) != 1)
      {
        goto LABEL_68;
      }

      v23 = **(v19 + 24);
      if (~v23 <= v23)
      {
        v24 = **(v19 + 24);
      }

      else
      {
        v24 = ~v23;
      }

      operations_research::sat::PresolveContext::DomainOf(&v210, v14, v24);
      v26 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      if (*(v17 + 60) == 12)
      {
        v26 = *(v17 + 48);
      }

      operations_research::Domain::FromFlatSpanOfIntervals(v26[9], *(v26 + 16), &v219, v25);
      operations_research::Domain::InverseMultiplicationBy(&v222, &v219, v21);
      operations_research::Domain::IntersectionWith(&v224, &v222, &v210);
      if (v222)
      {
        operator delete(__p);
      }

      if (v219)
      {
        operator delete(*(&v219 + 1));
      }

      if (operations_research::Domain::IsEmpty(&v224))
      {
        operations_research::sat::PresolveContext::SetLiteralToFalse(*(this + 1), **(v17 + 24));
LABEL_34:
        v27 = 1;
        if (v224)
        {
          goto LABEL_35;
        }

        goto LABEL_62;
      }

      if (operations_research::Domain::IsFixed(&v224))
      {
        break;
      }

      operations_research::Domain::Complement(&v219, &v224);
      operations_research::Domain::IntersectionWith(&v222, &v210, &v219);
      if (v219)
      {
        operator delete(*(&v219 + 1));
      }

      if (operations_research::Domain::IsEmpty(&v222) || !operations_research::Domain::IsFixed(&v222))
      {
        v32 = 0;
        v27 = 8;
        v12 = 1;
      }

      else
      {
        v30 = operations_research::Domain::Min(&v222);
        if (operations_research::Domain::Contains(&v210, v30))
        {
          v216 = operations_research::Domain::Min(&v222);
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find_or_prepare_insert<long long>(&v230, &v216, &v219);
          if (v220 == 1)
          {
            **(&v219 + 1) = v216;
          }

          *&v219 = operations_research::Domain::Min(&v222);
          v31 = absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<int>>>>::operator[]<long long,absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<int>>,(long long *)0>(&v226, &v219);
          LODWORD(v216) = **(v17 + 24);
          std::vector<int>::push_back[abi:ne200100](v31, &v216);
        }

        v27 = 0;
        v32 = 1;
      }

      if (v222)
      {
        operator delete(__p);
        if (v32)
        {
          goto LABEL_59;
        }
      }

      else if (v32)
      {
        goto LABEL_59;
      }

      if (v224)
      {
LABEL_35:
        operator delete(v225);
        if (v210)
        {
          goto LABEL_36;
        }

        goto LABEL_63;
      }

LABEL_62:
      if (v210)
      {
LABEL_36:
        operator delete(v211[0]);
        if (v27)
        {
          goto LABEL_135;
        }

        goto LABEL_64;
      }

LABEL_63:
      if (v27)
      {
LABEL_135:
        if (v27 != 8)
        {
          goto LABEL_234;
        }

LABEL_67:
        if ((v12 & 1) == 0)
        {
          goto LABEL_74;
        }

LABEL_68:
        v36 = *(this + 1);
        std::string::basic_string[abi:ne200100]<0>(&v210, "TODO variables: only used in linear1.");
        operations_research::sat::PresolveContext::UpdateRuleStats(v36, &v210, 1, v37, v38);
        if ((SHIBYTE(v211[1]) & 0x80000000) == 0)
        {
          goto LABEL_234;
        }

        v39 = v210;
LABEL_233:
        operator delete(v39);
        goto LABEL_234;
      }

LABEL_64:
      v34 = *(v10 + 1);
      v10 = (v10 + 1);
      LOBYTE(v33) = v34;
      ++v11;
      if (v34 <= -2)
      {
        do
        {
          v35 = __clz(__rbit64((*v10 | ~(*v10 >> 7)) & 0x101010101010101)) >> 3;
          v10 = (v10 + v35);
          v11 += v35;
          v33 = *v10;
        }

        while (v33 < -1);
      }

      if (v33 == 255)
      {
        goto LABEL_67;
      }
    }

    v28 = operations_research::Domain::Min(&v224);
    if (operations_research::Domain::Contains(&v210, v28))
    {
      *&v219 = operations_research::Domain::Min(&v224);
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find_or_prepare_insert<long long>(&v230, &v219, &v222);
      if (BYTE8(__p) == 1)
      {
        *__p = v219;
      }

      v222 = operations_research::Domain::Min(&v224);
      v29 = absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<int>>>>::operator[]<long long,absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<int>>,(long long *)0>(&v234, &v222);
      LODWORD(v219) = **(v17 + 24);
      std::vector<int>::push_back[abi:ne200100](v29, &v219);
    }

    else if ((operations_research::sat::PresolveContext::SetLiteralToFalse(*(this + 1), **(v17 + 24)) & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_59:
    v27 = 0;
    if (v224)
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

LABEL_74:
  if (v227 <= 1 && v235 < 2)
  {
    goto LABEL_234;
  }

  v40 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::begin(&v230);
  std::vector<long long>::vector[abi:ne200100]<absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::iterator,0>(&v224, v40, v41, 0);
  std::__sort<std::__less<long long,long long> &,long long *>();
  v42 = v224;
  v43 = v225;
  if (v224 == v225)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v210, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 10982);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v210);
  }

  operations_research::sat::PresolveContext::DomainOf(&v210, *(this + 1), v233);
  v207 = v43;
  v208 = v42;
  v209 = operations_research::Domain::Size(&v210);
  if (v210)
  {
    operator delete(v211[0]);
  }

  v44 = v224;
  v45 = v225;
  if (v224 != v225)
  {
    do
    {
      v55 = *v44;
      VarValueEncoding = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(*(this + 1), v233, *v44);
      v57 = 0;
      _X9 = v236;
      __asm { PRFM            #4, [X9] }

      v64 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v55) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v55));
      v65 = v64 >> 7;
      v66 = vdup_n_s8(v64 & 0x7F);
      v67 = ((v64 >> 7) ^ (v236 >> 12)) & v234;
      v68 = *(v236 + v67);
      v69 = vceq_s8(v68, v66);
      if (!v69)
      {
        goto LABEL_92;
      }

      do
      {
LABEL_90:
        v70 = (v67 + (__clz(__rbit64(v69)) >> 3)) & v234;
        if (*(v237 + 32 * v70) == v55)
        {
          v71 = v237 + 32 * v70;
          v72 = *(v71 + 8);
          for (i = *(v71 + 16); v72 != i; ++v72)
          {
            operations_research::sat::PresolveContext::AddImplication(*(this + 1), *v72, VarValueEncoding);
          }

          goto LABEL_97;
        }

        v69 &= ((v69 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v69);
LABEL_92:
      while (!*&vceq_s8(v68, 0x8080808080808080))
      {
        v57 += 8;
        v67 = (v57 + v67) & v234;
        v68 = *(v236 + v67);
        v69 = vceq_s8(v68, v66);
        if (v69)
        {
          goto LABEL_90;
        }
      }

LABEL_97:
      v50 = 0;
      _X9 = v228;
      __asm { PRFM            #4, [X9] }

      for (j = v65 ^ (v228 >> 12); ; j = v50 + v46)
      {
        v46 = j & v226;
        v47 = *(v228 + v46);
        v48 = vceq_s8(v47, v66);
        if (v48)
        {
          break;
        }

LABEL_84:
        if (vceq_s8(v47, 0x8080808080808080))
        {
          goto LABEL_88;
        }

        v50 += 8;
      }

      while (1)
      {
        v49 = (v46 + (__clz(__rbit64(v48)) >> 3)) & v226;
        if (*(v229 + 32 * v49) == v55)
        {
          break;
        }

        v48 &= ((v48 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v48)
        {
          goto LABEL_84;
        }
      }

      v52 = v229 + 32 * v49;
      v53 = *(v52 + 8);
      for (k = *(v52 + 16); v53 != k; ++v53)
      {
        operations_research::sat::PresolveContext::AddImplication(*(this + 1), *v53, ~VarValueEncoding);
      }

LABEL_88:
      ++v44;
    }

    while (v44 != v45);
  }

  operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
  v76 = (v207 - v208) >> 3;
  v222 = 0;
  if (v76 != v209)
  {
    operations_research::sat::PresolveContext::DomainOf(&v219, *(this + 1), v233);
    std::vector<long long>::vector[abi:ne200100](v214, &v224);
    operations_research::Domain::FromValues(v214, v215);
    operations_research::Domain::Complement(&v216, v215);
    operations_research::Domain::IntersectionWith(&v210, &v219, &v216);
    if (v222)
    {
      operator delete(__p);
    }

    v222 = v210;
    __p = *v211;
    v210 = 0;
    if (v216)
    {
      operator delete(v217);
      if ((v215[0] & 1) == 0)
      {
LABEL_103:
        v77 = v214[0];
        if (!v214[0])
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      }
    }

    else if ((v215[0] & 1) == 0)
    {
      goto LABEL_103;
    }

    operator delete(v215[1]);
    v77 = v214[0];
    if (!v214[0])
    {
LABEL_105:
      if (v219)
      {
        operator delete(*(&v219 + 1));
      }

      goto LABEL_107;
    }

LABEL_104:
    v214[1] = v77;
    operator delete(v77);
    goto LABEL_105;
  }

LABEL_107:
  v78 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::contains<int>((*(*(this + 1) + 672) + 32 * v233), &operations_research::sat::kObjectiveConstraint);
  v79 = *(this + 1);
  if (!v78)
  {
    std::string::basic_string[abi:ne200100]<0>(&v210, "variables: only used in encoding");
    operations_research::sat::PresolveContext::UpdateRuleStats(v79, &v210, 1, v85, v86);
    operations_research::sat::CpModelPresolver::MaybeTransferLinear1ToAnotherVariable(&v210);
    goto LABEL_172;
  }

  v80 = *absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::at<int,absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>>((v79 + 512), &v233);
  if (v76 == v209)
  {
    v81 = v224;
    v82 = v225;
    v83 = (v225 - 8);
    if (v80 > 0)
    {
      v83 = v224;
    }

    v84 = *v83;
LABEL_145:
    if (v81 != v82)
    {
      if (v84 >= 0)
      {
        v104 = v84;
      }

      else
      {
        v104 = -v84;
      }

      do
      {
        v105 = *v81 - v84;
        if (__OFSUB__(*v81, v84))
        {
          v105 = (*v81 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v105 < 0)
        {
          v105 = -v105;
        }

        v106 = (v104 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        _VF = __OFADD__(v104, v105);
        v104 += v105;
        if (_VF)
        {
          v104 = v106;
        }

        if (v104 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_240;
        }

        ++v81;
      }

      while (v81 != v82);
    }

    operations_research::sat::ConstraintProto::ConstraintProto(&v210, 0);
    v107 = operations_research::sat::ConstraintProto::mutable_linear(&v210);
    operations_research::sat::BoolArgumentProto::add_literals(v107, v233);
    operations_research::sat::LinearConstraintProto::add_coeffs(v107, -1);
    operations_research::sat::LinearConstraintProto::add_domain(v107, -v84);
    operations_research::sat::LinearConstraintProto::add_domain(v107, -v84);
    v108 = v224;
    v109 = v225;
    if (v224 != v225)
    {
      do
      {
        v110 = *v108 - v84;
        if (*v108 != v84)
        {
          v111 = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(*(this + 1), v233, *v108);
          if (v111 < 0)
          {
            if (v213 == 12)
            {
              v112 = v212;
            }

            else
            {
              v112 = &operations_research::sat::_LinearConstraintProto_default_instance_;
            }

            v113 = v107[9];
            *v113 = *v112[9] - v110;
            if (v213 == 12)
            {
              v114 = v212;
            }

            else
            {
              v114 = &operations_research::sat::_LinearConstraintProto_default_instance_;
            }

            v113[1] = v114[9][1] - v110;
            operations_research::sat::BoolArgumentProto::add_literals(v107, ~v111);
            operations_research::sat::LinearConstraintProto::add_coeffs(v107, -v110);
          }

          else
          {
            operations_research::sat::BoolArgumentProto::add_literals(v107, v111);
            operations_research::sat::LinearConstraintProto::add_coeffs(v107, v110);
          }
        }

        ++v108;
      }

      while (v108 != v109);
    }

    v115 = operations_research::sat::PresolveContext::SubstituteVariableInObjective(*(this + 1), v233, -1, &v210);
    v116 = *(this + 1);
    if ((v115 & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v219, "TODO variables: only used in objective and in encoding");
      operations_research::sat::PresolveContext::UpdateRuleStats(v116, &v219, 1, v178, v179);
      if (v221 < 0)
      {
        operator delete(v219);
      }

      operations_research::sat::ConstraintProto::~ConstraintProto(&v210);
      goto LABEL_229;
    }

    std::string::basic_string[abi:ne200100]<0>(&v219, "variables: only used in objective and in encoding");
    operations_research::sat::PresolveContext::UpdateRuleStats(v116, &v219, 1, v117, v118);
    operations_research::sat::CpModelPresolver::ProcessVariableOnlyUsedInEncoding(&v219, &v210);
LABEL_172:
    v216 = 0;
    v217 = 0;
    v218 = 0;
    v120 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::begin((*(*(this + 1) + 672) + 32 * v233));
    if (v120)
    {
      v121 = v119;
      do
      {
        LODWORD(v215[0]) = *v121;
        if ((v215[0] & 0x80000000) == 0)
        {
          std::vector<int>::push_back[abi:ne200100](&v216, v215);
        }

        v123 = *(v120 + 1);
        v120 = (v120 + 1);
        LOBYTE(v122) = v123;
        ++v121;
        if (v123 <= -2)
        {
          do
          {
            v124 = __clz(__rbit64((*v120 | ~(*v120 >> 7)) & 0x101010101010101)) >> 3;
            v120 = (v120 + v124);
            v121 += v124;
            v122 = *v120;
          }

          while (v122 < -1);
        }
      }

      while (v122 != 255);
    }

    std::__sort<std::__less<int,int> &,int *>();
    v126 = v216;
    v125 = v217;
    if (v216 != v217)
    {
      do
      {
        v127 = *v126;
        if ((v127 & 0x80000000) == 0)
        {
          v128 = **(this + 1);
          v130 = *(v128 + 48);
          v129 = (v128 + 48);
          v131 = v130 + 8 * v127 + 7;
          if (v130)
          {
            v129 = v131;
          }

          operations_research::sat::ConstraintProto::Clear(*v129);
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v127);
        }

        ++v126;
      }

      while (v126 != v125);
      v126 = v216;
    }

    if (v126)
    {
      v217 = v126;
      operator delete(v126);
    }

    v132 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    if (v76 == v209)
    {
      v133 = v224;
      v134 = v225;
      if (v224 != v225)
      {
        do
        {
          v135 = *v133;
          v136 = operations_research::sat::ConstraintProto::mutable_exactly_one(v132);
          v137 = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(*(this + 1), v233, v135);
          operations_research::sat::BoolArgumentProto::add_literals(v136, v137);
          ++v133;
        }

        while (v133 != v134);
      }

      operations_research::sat::CpModelPresolver::PresolveExactlyOne(this, v132);
    }

    else
    {
      v138 = operations_research::sat::PresolveContext::NewMappingConstraint(*(this + 1), "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 99, 0x2B6F);
      v139 = operations_research::sat::ConstraintProto::mutable_linear(v138);
      operations_research::sat::BoolArgumentProto::add_literals(v139, v233);
      v140 = operations_research::sat::ConstraintProto::mutable_linear(v138);
      operations_research::sat::LinearConstraintProto::add_coeffs(v140, 1);
      v141 = operations_research::sat::ConstraintProto::mutable_linear(v138);
      operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(&v222, v141);
      v142 = v224;
      v143 = v225;
      if (v224 != v225)
      {
        do
        {
          v144 = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(*(this + 1), v233, *v142);
          operations_research::sat::BoolArgumentProto::add_literals(v138, ~v144);
          v145 = operations_research::sat::ConstraintProto::mutable_at_most_one(v132);
          operations_research::sat::BoolArgumentProto::add_literals(v145, v144);
          ++v142;
        }

        while (v142 != v143);
      }

      operations_research::sat::CpModelPresolver::PresolveAtMostOne(this, v132);
    }

    v146 = v224;
    v147 = v225;
    if (v224 != v225)
    {
      do
      {
        v148 = *v146;
        v149 = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(*(this + 1), v233, *v146);
        v150 = operations_research::sat::PresolveContext::NewMappingConstraint(*(this + 1), "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 99, 0x2B80);
        v151 = v150;
        v153 = *(v150 + 16);
        v152 = *(v150 + 20);
        if (v153 == v152)
        {
          v176 = (v150 + 16);
          google::protobuf::RepeatedField<int>::Grow(v150 + 16, v152, (v152 + 1));
          v153 = *v176;
        }

        v154 = *(v151 + 24);
        *(v151 + 16) = v153 + 1;
        *(v154 + 4 * v153) = v149;
        if (*(v151 + 60) == 12)
        {
          v155 = *(v151 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v151);
          *(v151 + 60) = 12;
          v156 = *(v151 + 8);
          if (v156)
          {
            v156 = *(v156 & 0xFFFFFFFFFFFFFFFELL);
          }

          v155 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v156);
          *(v151 + 48) = v155;
        }

        v157 = v233;
        v159 = *(v155 + 4);
        v158 = *(v155 + 5);
        if (v159 == v158)
        {
          google::protobuf::RepeatedField<int>::Grow((v155 + 2), v158, (v158 + 1));
          v159 = *(v155 + 4);
        }

        v160 = v155[3];
        *(v155 + 4) = v159 + 1;
        *(v160 + 4 * v159) = v157;
        if (*(v151 + 60) == 12)
        {
          v161 = *(v151 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v151);
          *(v151 + 60) = 12;
          v162 = *(v151 + 8);
          if (v162)
          {
            v162 = *(v162 & 0xFFFFFFFFFFFFFFFELL);
          }

          v161 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v162);
          *(v151 + 48) = v161;
        }

        v164 = *(v161 + 10);
        v163 = *(v161 + 11);
        if (v164 == v163)
        {
          google::protobuf::RepeatedField<long long>::Grow((v161 + 5), v163, (v163 + 1));
          v164 = *(v161 + 10);
        }

        v165 = v161[6];
        *(v161 + 10) = v164 + 1;
        *(v165 + 8 * v164) = 1;
        if (*(v151 + 60) == 12)
        {
          v166 = *(v151 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v151);
          *(v151 + 60) = 12;
          v167 = *(v151 + 8);
          if (v167)
          {
            v167 = *(v167 & 0xFFFFFFFFFFFFFFFELL);
          }

          v166 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v167);
          *(v151 + 48) = v166;
        }

        v169 = *(v166 + 16);
        v168 = *(v166 + 17);
        if (v169 == v168)
        {
          google::protobuf::RepeatedField<long long>::Grow((v166 + 8), v168, (v168 + 1));
          v169 = *(v166 + 16);
        }

        v170 = v166[9];
        *(v166 + 16) = v169 + 1;
        *(v170 + 8 * v169) = v148;
        if (*(v151 + 60) == 12)
        {
          v171 = *(v151 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v151);
          *(v151 + 60) = 12;
          v172 = *(v151 + 8);
          if (v172)
          {
            v172 = *(v172 & 0xFFFFFFFFFFFFFFFELL);
          }

          v171 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v172);
          *(v151 + 48) = v171;
        }

        v174 = *(v171 + 16);
        v173 = *(v171 + 17);
        if (v174 == v173)
        {
          google::protobuf::RepeatedField<long long>::Grow((v171 + 8), v173, (v173 + 1));
          v174 = *(v171 + 16);
        }

        v175 = v171[9];
        *(v171 + 16) = v174 + 1;
        *(v175 + 8 * v174) = v148;
        ++v146;
      }

      while (v146 != v147);
    }

    operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
    operations_research::sat::PresolveContext::MarkVariableAsRemoved(*(this + 1), v233);
    goto LABEL_229;
  }

  if (*(*(this + 1) + 576) != 1 || operations_research::Domain::IsFixed(&v222))
  {
    if (v80 < 1)
    {
      v87 = operations_research::Domain::Max(&v222);
    }

    else
    {
      v87 = operations_research::Domain::Min(&v222);
    }

    operations_research::Domain::Domain(&v210, v87);
    if (v222)
    {
      operator delete(__p);
    }

    v222 = v210;
    __p = *v211;
    v84 = operations_research::Domain::Min(&v222);
    v81 = v224;
    v82 = v225;
    goto LABEL_145;
  }

LABEL_240:
  v180 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(&v210, "TODO variables: only used in objective and in encoding");
  operations_research::sat::PresolveContext::UpdateRuleStats(v180, &v210, 1, v181, v182);
  if (SHIBYTE(v211[1]) < 0)
  {
    operator delete(v210);
  }

LABEL_229:
  if (v222)
  {
    operator delete(__p);
  }

  v39 = v224;
  if (v224)
  {
    v225 = v224;
    goto LABEL_233;
  }

LABEL_234:
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<long long>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<long long>>>>::~raw_hash_set(&v226);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<long long>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<long long>>>>::~raw_hash_set(&v234);
  if (v230 >= 2)
  {
    v177 = (v231 - (BYTE8(v230) & 1) - 8);
    goto LABEL_236;
  }
}

void sub_23CAB65A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *__p, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27, void *a28, uint64_t a29, void *a30, void *a31, uint64_t a32, void *a33, void *a34, int a35, __int16 a36, char a37, char a38, char a39, void *a40, uint64_t a41, void *a42, void *a43, uint64_t a44, char a45, void *a46)
{
  if (*(v46 - 224))
  {
    operator delete(*(v46 - 216));
  }

  if (a13)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<long long>::vector[abi:ne200100](void *a1, const void *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (!(a3 >> 61))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_23CAB6A10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<int>>>>::operator[]<long long,absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<int>>,(long long *)0>(unint64_t *a1, void *a2)
{
  v2 = 0;
  _X9 = a1[2];
  __asm { PRFM            #4, [X9] }

  v9 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2));
  v10 = *a1;
  v11 = vdup_n_s8(v9 & 0x7F);
  v12 = ((v9 >> 7) ^ (_X9 >> 12)) & *a1;
  v13 = *(_X9 + v12);
  v14 = vceq_s8(v13, v11);
  if (v14)
  {
LABEL_2:
    v15 = a1[3];
    while (1)
    {
      v16 = (v12 + (__clz(__rbit64(v14)) >> 3)) & v10;
      if (*(v15 + 32 * v16) == *a2)
      {
        return (v15 + 32 * v16 + 8);
      }

      v14 &= ((v14 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = vceq_s8(v13, 0x8080808080808080);
      if (v17)
      {
        break;
      }

      v2 += 8;
      v12 = (v2 + v12) & v10;
      v13 = *(_X9 + v12);
      v14 = vceq_s8(v13, v11);
      if (v14)
      {
        goto LABEL_2;
      }
    }

    v20 = (a1[3] + 32 * absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1, (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2)), (v12 + (__clz(__rbit64(v17)) >> 3)) & v10, v2, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<int>>>>::GetPolicyFunctions(void)::value));
    *v20 = *a2;
    v20[1] = 0;
    v20[2] = 0;
    v20[3] = 0;
    return v20 + 1;
  }
}

void operations_research::sat::CpModelPresolver::TryToSimplifyDomain(operations_research::sat::CpModelPresolver *this, absl::lts_20240722::numbers_internal *a2)
{
  v3 = *(this + 1);
  if ((*(v3 + 416) & 1) == 0 && !operations_research::sat::PresolveContext::IsFixed(v3, a2) && (operations_research::sat::PresolveContext::VariableWasRemoved(*(this + 1), a2) & 1) == 0 && !operations_research::sat::PresolveContext::VariableIsNotUsedAnymore(*(this + 1), a2))
  {
    operations_research::sat::PresolveContext::GetAffineRelation(v15, *(this + 1), a2);
    if (LODWORD(v15[0]) == a2)
    {
      operations_research::sat::PresolveContext::DomainOf(&v13, *(this + 1), a2);
      if (operations_research::Domain::Size(&v13) == 2 && (operations_research::Domain::Min(&v13) || operations_research::Domain::Max(&v13) != 1))
      {
        operations_research::sat::PresolveContext::CanonicalizeDomainOfSizeTwo(*(this + 1), a2);
      }

      else
      {
        v5 = v13;
        if (operations_research::Domain::Size(&v13) == (v5 >> 1))
        {
          v6 = operations_research::Domain::Min(&v13);
          p_p = &__p;
          if (v13)
          {
            p_p = __p;
          }

          v8 = (__p + 16);
          if ((v13 & 1) == 0)
          {
            v8 = v15;
          }

          v9 = *v8 - v6;
          if ((v13 >> 1) < 3)
          {
            if (v9 != 1)
            {
LABEL_24:
              operations_research::sat::PresolveContext::CanonicalizeAffineVariable(*(this + 1), a2, 1, v9, v6);
            }
          }

          else
          {
            v10 = 2;
            while (1)
            {
              v11 = p_p[2 * v10] - v6;
              if (v11)
              {
                v12 = v9;
                do
                {
                  v9 = v11;
                  v11 = v12 % v11;
                  v12 = v9;
                }

                while (v11);
              }

              if (v9 == 1)
              {
                break;
              }

              if (++v10 == v13 >> 1)
              {
                goto LABEL_24;
              }
            }
          }
        }
      }

      if (v13)
      {
        operator delete(__p);
      }
    }
  }
}

void sub_23CAB6CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *__p)
{
  if (a9)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::CpModelPresolver::EncodeAllAffineRelations(operations_research::sat::CpModelPresolver *this)
{
  v35[4] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  if (*(*v2 + 32) <= 0)
  {

    operations_research::sat::PresolveContext::RemoveAllVariablesFromAffineRelationConstraint(v2);
    return;
  }

  v3 = 0;
  v4 = 0;
  while (1)
  {
    if (!operations_research::sat::PresolveContext::IsFixed(v2, v4))
    {
      operations_research::sat::PresolveContext::GetAffineRelation(&v33, *(this + 1), v4);
      if (v4 != v33 && !operations_research::sat::PresolveContext::VariableIsNotUsedAnymore(*(this + 1), v4))
      {
        break;
      }
    }

LABEL_7:
    v4 = (v4 + 1);
    v2 = *(this + 1);
    if (v4 >= *(*v2 + 32))
    {
      goto LABEL_32;
    }
  }

  if (operations_research::sat::CpModelPresolver::PresolveAffineRelationIfAny(this, v4))
  {
    if (!operations_research::sat::PresolveContext::VariableIsNotUsedAnymore(*(this + 1), v4) && !operations_research::sat::PresolveContext::IsFixed(*(this + 1), v4))
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      v6 = v5;
      if (*(v5 + 60) == 12)
      {
        v7 = *(v5 + 48);
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v5);
        *(v6 + 60) = 12;
        v8 = *(v6 + 8);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v8);
        *(v6 + 48) = v7;
      }

      v10 = *(v7 + 4);
      v9 = *(v7 + 5);
      if (v10 == v9)
      {
        google::protobuf::RepeatedField<int>::Grow((v7 + 2), v9, (v9 + 1));
        v10 = *(v7 + 4);
        LODWORD(v9) = *(v7 + 5);
      }

      v11 = v7[3];
      v12 = (v10 + 1);
      *(v7 + 4) = v12;
      *(v11 + 4 * v10) = v4;
      v14 = *(v7 + 10);
      v13 = *(v7 + 11);
      if (v14 == v13)
      {
        google::protobuf::RepeatedField<long long>::Grow((v7 + 5), *(v7 + 11), (v13 + 1));
        v14 = *(v7 + 10);
        v12 = *(v7 + 4);
        LODWORD(v9) = *(v7 + 5);
      }

      v15 = v7[6];
      *(v7 + 10) = v14 + 1;
      *(v15 + 8 * v14) = 1;
      v16 = v33;
      if (v12 == v9)
      {
        google::protobuf::RepeatedField<int>::Grow((v7 + 2), v12, (v12 + 1));
        LODWORD(v12) = *(v7 + 4);
      }

      v17 = v7[3];
      *(v7 + 4) = v12 + 1;
      *(v17 + 4 * v12) = v16;
      v18 = v34;
      v20 = *(v7 + 10);
      v19 = *(v7 + 11);
      if (v20 == v19)
      {
        google::protobuf::RepeatedField<long long>::Grow((v7 + 5), v19, (v19 + 1));
        v20 = *(v7 + 10);
      }

      v21 = *(v7 + 16);
      v22 = v7[6];
      *(v7 + 10) = v20 + 1;
      *(v22 + 8 * v20) = -v18;
      v23 = v35[0];
      v24 = *(v7 + 17);
      if (v21 == v24)
      {
        google::protobuf::RepeatedField<long long>::Grow((v7 + 8), v24, (v24 + 1));
        v21 = *(v7 + 16);
        v24 = *(v7 + 17);
      }

      v25 = v7[9];
      v26 = v21 + 1;
      *(v7 + 16) = v21 + 1;
      *(v25 + 8 * v21) = v23;
      v27 = v35[0];
      if (v21 + 1 == v24)
      {
        google::protobuf::RepeatedField<long long>::Grow((v7 + 8), v24, (v24 + 1));
        v26 = *(v7 + 16);
        v25 = v7[9];
      }

      *(v7 + 16) = v26 + 1;
      *(v25 + 8 * v26) = v27;
      operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
      ++v3;
    }

    goto LABEL_7;
  }

  v2 = *(this + 1);
LABEL_32:
  operations_research::sat::PresolveContext::RemoveAllVariablesFromAffineRelationConstraint(v2);
  if (v3 >= 1)
  {
    v29 = *(this + 2);
    if (*v29 == 1)
    {
      v30 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v3, v35, v28);
      v33 = v35;
      v34 = v30 - v35;
      v32[0] = " affine relations still in the model.";
      v32[1] = 37;
      absl::lts_20240722::StrCat(&v33, v32, &__p);
      operations_research::SolverLogger::LogInfo(v29, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 11221, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_23CAB70C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveAffineRelationIfAny(operations_research::sat::PresolveContext **this, uint64_t a2)
{
  operations_research::sat::PresolveContext::GetAffineRelation(v45, this[1], a2);
  if (LODWORD(v45[0]) == a2)
  {
    return 1;
  }

  result = operations_research::sat::PresolveContext::PropagateAffineRelation(this[1], a2);
  if (result)
  {
    if (!operations_research::sat::PresolveContext::IsFixed(this[1], a2) && operations_research::sat::PresolveContext::VariableIsUnique(this[1], a2))
    {
      v5 = operations_research::sat::PresolveContext::NewMappingConstraint(this[1], "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 99, 0x2BEE);
      v6 = v5;
      if (*(v5 + 60) == 12)
      {
        v7 = *(v5 + 48);
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v5);
        *(v6 + 60) = 12;
        v8 = *(v6 + 8);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v8);
        *(v6 + 48) = v7;
      }

      v11 = *(v7 + 4);
      v9 = *(v7 + 5);
      v10 = (v7 + 2);
      if (v11 == v9)
      {
        v40 = v7;
        v31 = v7 + 2;
        google::protobuf::RepeatedField<int>::Grow((v7 + 2), v9, (v9 + 1));
        v10 = v31;
        v7 = v40;
        v11 = *(v40 + 4);
        LODWORD(v9) = *(v40 + 5);
      }

      v12 = v7[3];
      v13 = (v11 + 1);
      *(v7 + 4) = v13;
      *(v12 + 4 * v11) = a2;
      v16 = *(v7 + 10);
      v15 = *(v7 + 11);
      v14 = (v7 + 5);
      if (v16 == v15)
      {
        v36 = v7 + 5;
        v41 = v7;
        v32 = v10;
        google::protobuf::RepeatedField<long long>::Grow((v7 + 5), v15, (v15 + 1));
        v14 = v36;
        v7 = v41;
        v10 = v32;
        v16 = v41[10];
        v13 = v41[4];
        LODWORD(v9) = v41[5];
      }

      v17 = v7[6];
      *(v7 + 10) = v16 + 1;
      *(v17 + 8 * v16) = 1;
      v18 = v45[0];
      if (v13 == v9)
      {
        v37 = v14;
        v42 = v7;
        v33 = v10;
        google::protobuf::RepeatedField<int>::Grow(v10, v13, (v13 + 1));
        v14 = v37;
        v7 = v42;
        LODWORD(v13) = *v33;
      }

      v19 = v7[3];
      *(v7 + 4) = v13 + 1;
      *(v19 + 4 * v13) = v18;
      v20 = -v45[1];
      v22 = *(v7 + 10);
      v21 = *(v7 + 11);
      if (v22 == v21)
      {
        v43 = v7;
        v34 = v14;
        google::protobuf::RepeatedField<long long>::Grow(v14, v21, (v21 + 1));
        v7 = v43;
        v22 = *v34;
      }

      v23 = v7 + 8;
      v24 = *(v7 + 16);
      v25 = v7[6];
      *(v7 + 10) = v22 + 1;
      *(v25 + 8 * v22) = v20;
      v26 = v46;
      v27 = *(v7 + 17);
      if (v24 == v27)
      {
        v38 = v7 + 8;
        v44 = v7;
        google::protobuf::RepeatedField<long long>::Grow((v7 + 8), v27, (v27 + 1));
        v23 = v38;
        v7 = v44;
        v24 = *(v44 + 16);
        v27 = *(v44 + 17);
      }

      v28 = v7[9];
      v29 = v24 + 1;
      *(v7 + 16) = v24 + 1;
      *(v28 + 8 * v24) = v26;
      v30 = v46;
      if (v24 + 1 == v27)
      {
        v35 = v7;
        v39 = v23;
        google::protobuf::RepeatedField<long long>::Grow(v23, v27, (v27 + 1));
        v23 = v39;
        v29 = *(v35 + 16);
        v28 = v35[9];
      }

      *v23 = v29 + 1;
      *(v28 + 8 * v29) = v30;
      operations_research::sat::PresolveContext::RemoveVariableFromAffineRelation(this[1], a2);
    }

    return 1;
  }

  return result;
}

uint64_t operations_research::sat::CpModelPresolver::ProcessChangedVariables(operations_research::sat::PresolveContext **a1, void *a2, void **a3)
{
  if ((*(a1[1] + 416) & 1) == 0 && (operations_research::TimeLimit::LimitReached(a1[3]) & 1) == 0)
  {
    std::vector<BOOL>::resize(a2, *(*a1[1] + 56), 0);
    v7 = a1[1];
    v8 = *(v7 + 21);
    v9 = *(v7 + 22);
    if (v9 != v8)
    {
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v23 = v8[v10];
        if (!operations_research::sat::PresolveContext::VariableIsNotUsedAnymore(a1[1], v23))
        {
          if (*(a1[1] + 416))
          {
            return 0;
          }

          result = operations_research::sat::CpModelPresolver::PresolveAffineRelationIfAny(a1, v23);
          if (!result)
          {
            return result;
          }

          if (!operations_research::sat::PresolveContext::VariableIsNotUsedAnymore(a1[1], v23))
          {
            operations_research::sat::CpModelPresolver::TryToSimplifyDomain(a1, v23);
            v24 = a1[1];
            if (*(v24 + 416))
            {
              return 0;
            }

            operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(v24);
            result = operations_research::sat::PresolveContext::CanonicalizeOneObjectiveVariable(a1[1], v23);
            if (!result)
            {
              return result;
            }

            std::vector<BOOL>::resize(a2, *(*a1[1] + 56), 0);
            v25 = (*(a1[1] + 84) + 32 * v23);
            if (v25[1] >= 2uLL)
            {
              break;
            }
          }
        }

LABEL_19:
        v10 = ++v11;
        v8 = *(v7 + 21);
        if (v11 >= ((*(v7 + 22) - v8) >> 2))
        {
          v7 = a1[1];
          v8 = *(v7 + 21);
          v9 = *(v7 + 22);
          goto LABEL_33;
        }
      }

      v19 = (v25 + 2);
      if (*v25 >= 2uLL)
      {
        v17 = v25[2];
        v19 = v25[3];
        if (*v17 <= -2)
        {
          do
          {
            v26 = __clz(__rbit64((*v17 | ~(*v17 >> 7)) & 0x101010101010101)) >> 3;
            v17 = (v17 + v26);
            v19 += v26;
          }

          while (*v17 < -1);
        }
      }

      else
      {
        v17 = &absl::lts_20240722::container_internal::kSooControl;
      }

      while (1)
      {
        v20 = *v19;
        if ((v20 & 0x80000000) == 0)
        {
          v21 = *(*a2 + 8 * (v20 >> 6));
          if ((v21 & (1 << v20)) == 0)
          {
            break;
          }
        }

        v22 = *(v17 + 1);
        v17 = (v17 + 1);
        LOBYTE(v13) = v22;
        ++v19;
        if (v22 <= -2)
        {
          goto LABEL_17;
        }

LABEL_18:
        if (v13 == 255)
        {
          goto LABEL_19;
        }
      }

      v12 = a3[2];
      v13 = a3[1];
      *(*a2 + 8 * (v20 >> 6)) = v21 | (1 << v20);
      if (v12 == v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = ((v12 - v13) << 7) - 1;
      }

      v15 = a3[5];
      v16 = a3[4] + v15;
      if (v14 == v16)
      {
        std::deque<int>::__add_back_capacity(a3);
        v13 = a3[1];
        v15 = a3[5];
        v16 = &v15[a3[4]];
      }

      *(*(v13 + ((v16 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v16 & 0x3FF)) = v20;
      a3[5] = v15 + 1;
      v18 = *(v17 + 1);
      v17 = (v17 + 1);
      LOBYTE(v13) = v18;
      ++v19;
      if (v18 > -2)
      {
        goto LABEL_18;
      }

      do
      {
LABEL_17:
        v13 = __clz(__rbit64((*v17 | ~(*v17 >> 7)) & 0x101010101010101)) >> 3;
        v17 = (v17 + v13);
        v19 += v13;
        LODWORD(v13) = *v17;
      }

      while (v13 < -1);
      goto LABEL_18;
    }

LABEL_33:
    if (v8 != v9)
    {
      v27 = *(v7 + 18);
      v28 = v8;
      if (v9 - 1 == v8)
      {
        goto LABEL_48;
      }

      v29 = (((v9 - 1) - v8) >> 2) + 1;
      v28 = &v8[v29 & 0x7FFFFFFFFFFFFFFELL];
      v30 = v8 + 1;
      v31 = v29 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v32 = (*v30 >> 3) & 0x1FFFFFFFFFFFFFF8;
        *(v27 + ((*(v30 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) = 0;
        *(v27 + v32) = 0;
        v30 += 2;
        v31 -= 2;
      }

      while (v31);
      if (v29 != (v29 & 0x7FFFFFFFFFFFFFFELL))
      {
LABEL_48:
        do
        {
          v33 = *v28++;
          *(v27 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) = 0;
        }

        while (v28 != v9);
      }
    }

    *(v7 + 22) = v8;
    v34 = a3[4];
    v35 = (v34 >> 7) & 0x1FFFFFFFFFFFFF8;
    v36 = a3[1];
    v37 = &v36[v35];
    if (a3[2] == v36)
    {
      v45 = 0;
      v39 = 0;
      v48 = a3[5];
      v40 = a3 + 5;
      v44 = &v36[8 * ((v48 + v34) >> 10)];
    }

    else
    {
      v38 = a3[4] & 0x3FF;
      v39 = &(*v37)[4 * v38];
      v41 = a3[5];
      v40 = a3 + 5;
      v42 = v41 + v34;
      v43 = ((v41 + v34) >> 7) & 0x1FFFFFFFFFFFFF8;
      v44 = &v36[v43];
      v45 = (*&v36[v43] + 4 * (v42 & 0x3FF));
      if (v45 != v39)
      {
        v46 = v42 & 0x3FF | ((v43 - v35) << 7);
        if (v46 != v38)
        {
          v47 = 63 - __clz(v46 - v38);
LABEL_45:
          std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,false>(v37, v39, v44, v45, &v49, 2 * v47, 1);
          return *v40 != 0;
        }
      }
    }

    v47 = 0;
    goto LABEL_45;
  }

  return 0;
}

void operations_research::sat::CpModelPresolver::PresolveToFixPoint(operations_research::sat::CpModelPresolver *this)
{
  v144 = *MEMORY[0x277D85DE8];
  if (*(*(this + 1) + 416))
  {
    return;
  }

  strcpy(v119, "PresolveToFixPoint");
  *&v119[19] = 0;
  *&v119[23] = 274;
  v122 = *(this + 1);
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v121 = 0;
  v126 = 0;
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(this);
  v2 = *(this + 1);
  if (*(v2[49] + 304) <= 0)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = *(v2[49] + 304);
  }

  v116 = xmmword_23CE306D0;
  v4 = *(*v2 + 56);
  memset(v115, 0, sizeof(v115));
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v113 = 0u;
  v114 = 0u;
  *v112 = 0u;
  v5 = *(this + 1);
  if (*(*(v5 + 392) + 288) == 1)
  {
    std::__shuffle[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<int,int *,int &,int **,long,1024l>,std::__deque_iterator<int,int *,int &,int **,long,1024l>,operations_research::sat::ModelRandomGenerator &>(0, 0, 0, 0, *(v5 + 408));
  }

  else
  {
    *v127 = this;
    std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,false>(0, 0, 0, 0, v127, 0, 1);
  }

  v7 = 0;
  v105 = 0;
  for (i = 0; i != 1000; ++i)
  {
    if (!v114.i64[1])
    {
      break;
    }

    if (operations_research::TimeLimit::LimitReached(*(this + 3)))
    {
      break;
    }

    v9 = *(this + 1);
    if ((*(v9 + 416) & 1) != 0 || *(v9 + 24) > v3)
    {
      break;
    }

    if (v114.i64[1])
    {
      while (1)
      {
        v9 = *(this + 1);
        if (*(v9 + 416))
        {
          break;
        }

        v10 = operations_research::TimeLimit::LimitReached(*(this + 3));
        v9 = *(this + 1);
        if ((v10 & 1) != 0 || *(v9 + 24) > v3)
        {
          break;
        }

        v11 = v112[1];
        v12 = *(*(v112[1] + ((v114.i64[0] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v114.i16[0] & 0x3FF));
        *(v115[0] + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v12);
        v114 = vaddq_s64(v114, xmmword_23CE306C0);
        if (v114.i64[0] >= 0x800uLL)
        {
          operator delete(*v11);
          v112[1] = v112[1] + 8;
          v114.i64[0] -= 1024;
          v9 = *(this + 1);
        }

        v13 = *(*v9 + 56);
        v15 = operations_research::sat::CpModelPresolver::PresolveOneConstraint(this, v12);
        v16 = *(this + 1);
        if (LOBYTE(v16[17].__end_) == 1 && **(this + 2) == 1)
        {
          *v127 = "Unsat after presolving constraint #";
          *&v127[8] = 35;
          v17 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v12, &v141[0].__r_.__value_.__s.__data_[16], v14);
          v141[0].__r_.__value_.__r.__words[0] = &v141[0].__r_.__value_.__r.__words[2];
          v141[0].__r_.__value_.__l.__size_ = v17 - &v141[0].__r_.__value_.__r.__words[2];
          *v142 = " (warning, dump might be inconsistent): ";
          v143 = 40;
          google::protobuf::Message::ShortDebugString(&v111);
        }

        v18 = v16->__begin_[14];
        if (v18 > v13)
        {
          operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(v16);
          std::vector<BOOL>::resize(v115, v18, 1);
          v19 = v112[1];
          v20 = v113;
          v22 = v114.i64[1];
          v21 = v114.i64[0];
          do
          {
            if (v20 == v19)
            {
              v23 = 0;
            }

            else
            {
              v23 = ((v20 - v19) << 7) - 1;
            }

            v24 = v22 + v21;
            if (v23 == v22 + v21)
            {
              std::deque<int>::__add_back_capacity(v112);
              v19 = v112[1];
              v20 = v113;
              v22 = v114.i64[1];
              v21 = v114.i64[0];
              v24 = v114.i64[0] + v114.i64[1];
            }

            *(*&v19[(v24 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v24 & 0x3FF)) = v13;
            v114.i64[1] = ++v22;
            ++v13;
          }

          while (v18 != v13);
        }

        if (v15)
        {
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v12);
        }

        if (!v114.i64[1])
        {
          v9 = *(this + 1);
          break;
        }
      }

      if (*(v9 + 416))
      {
        goto LABEL_176;
      }
    }

    std::vector<BOOL>::resize(v115, *(*v9 + 56), 0);
    v25 = *(this + 1);
    v26 = v25[28];
    v27 = v25[29];
    if (v27 != v26)
    {
      v28 = 0;
      v29 = 0;
      while (1)
      {
        v39 = v26[v28];
        if (!operations_research::sat::PresolveContext::VariableIsNotUsedAnymore(*(this + 1), v26[v28]))
        {
          if ((*(*(this + 1) + 416) & 1) != 0 || !operations_research::sat::CpModelPresolver::PresolveAffineRelationIfAny(this, v39))
          {
            goto LABEL_176;
          }

          v40 = (*(*(this + 1) + 672) + 32 * v39);
          v41 = v40[1] >> 1;
          if (v41)
          {
            if (v41 == 2)
            {
              operations_research::sat::CpModelPresolver::LookAtVariableWithDegreeTwo(this, v39);
            }

            else if ((v41 & 0xFFFFFFFE) != 2)
            {
              if (v41 == 1)
              {
                v42 = (v40 + 2);
                if (*v40 >= 2uLL)
                {
                  v43 = v40[2];
                  v42 = v40[3];
                  if (*v43 <= -2)
                  {
                    do
                    {
                      v44 = __clz(__rbit64((*v43 | ~(*v43 >> 7)) & 0x101010101010101)) >> 3;
                      v43 = (v43 + v44);
                      v42 += v44;
                    }

                    while (*v43 < -1);
                  }
                }

                v45 = *v42;
                if ((v45 & 0x80000000) == 0)
                {
                  if (v116 > 1)
                  {
                    v37 = 0;
                    _X10 = v117;
                    __asm { PRFM            #4, [X10] }

                    v58 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v39) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v39))) + v45;
                    v59 = ((v58 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v58);
                    v38 = (v59 >> 7) ^ (v117 >> 12);
                    v60 = vdup_n_s8(v59 & 0x7F);
                    while (1)
                    {
                      v30 = v38 & v116;
                      v31 = *(v117 + v30);
                      v32 = vceq_s8(v31, v60);
                      if (v32)
                      {
                        break;
                      }

LABEL_47:
                      if (vceq_s8(v31, 0x8080808080808080))
                      {
                        goto LABEL_66;
                      }

                      v37 += 8;
                      v38 = v37 + v30;
                    }

                    while (1)
                    {
                      v33 = (v118 + 8 * ((v30 + (__clz(__rbit64(v32)) >> 3)) & v116));
                      v35 = *v33;
                      v34 = v33[1];
                      if (v35 == v39 && v34 == v45)
                      {
                        break;
                      }

                      v32 &= ((v32 & 0x8080808080808080) - 1) & 0x8080808080808080;
                      if (!v32)
                      {
                        goto LABEL_47;
                      }
                    }
                  }

                  else if (*(&v116 + 1) < 2uLL || v117 != __PAIR64__(v45, v39))
                  {
LABEL_66:
                    v141[0].__r_.__value_.__r.__words[0] = __PAIR64__(v45, v39);
                    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<int,int>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<int,int>>>::find_or_prepare_insert<std::pair<int,int>>(&v116, v141, v127);
                    if (v127[16] == 1)
                    {
                      **&v127[8] = v141[0].__r_.__value_.__r.__words[0];
                    }

                    v46 = *(v115[0] + (v45 >> 6));
                    if ((v46 & (1 << v45)) == 0)
                    {
                      v47 = v113;
                      v48 = v112[1];
                      v49 = ((v113 - v112[1]) << 7) - 1;
                      *(v115[0] + (v45 >> 6)) = v46 | (1 << v45);
                      if (v47 == v48)
                      {
                        v50 = 0;
                      }

                      else
                      {
                        v50 = v49;
                      }

                      v51 = v114.i64[1];
                      v52 = v114.i64[1] + v114.i64[0];
                      if (v50 == v114.i64[1] + v114.i64[0])
                      {
                        std::deque<int>::__add_back_capacity(v112);
                        v51 = v114.i64[1];
                        v48 = v112[1];
                        v52 = v114.i64[0] + v114.i64[1];
                      }

                      *(*&v48[(v52 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v52 & 0x3FF)) = v45;
                      v114.i64[1] = v51 + 1;
                    }
                  }
                }
              }

              goto LABEL_57;
            }

            operations_research::sat::CpModelPresolver::ProcessVariableInTwoAtMostOrExactlyOne(this, v39);
            std::vector<BOOL>::resize(v115, *(**(this + 1) + 56), 0);
          }
        }

LABEL_57:
        v28 = ++v29;
        v26 = v25[28];
        if (v29 >= ((v25[29] - v26) >> 2))
        {
          v25 = *(this + 1);
          v26 = v25[28];
          v27 = v25[29];
          break;
        }
      }
    }

    if (v26 != v27)
    {
      v61 = v25[25];
      v62 = v26;
      if (v27 - 1 == v26)
      {
        goto LABEL_199;
      }

      v63 = (((v27 - 1) - v26) >> 2) + 1;
      v62 = &v26[v63 & 0x7FFFFFFFFFFFFFFELL];
      v64 = v26 + 1;
      v65 = v63 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v66 = (*v64 >> 3) & 0x1FFFFFFFFFFFFFF8;
        *(v61 + ((*(v64 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) = 0;
        *(v61 + v66) = 0;
        v64 += 2;
        v65 -= 2;
      }

      while (v65);
      if (v63 != (v63 & 0x7FFFFFFFFFFFFFFELL))
      {
LABEL_199:
        do
        {
          v67 = *v62++;
          *(v61 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) = 0;
        }

        while (v62 != v27);
      }
    }

    v25[29] = v26;
    if (operations_research::sat::CpModelPresolver::ProcessChangedVariables(this, v115, v112))
    {
      goto LABEL_114;
    }

    if (*(**(this + 1) + 32) >= 1)
    {
      v68 = 0;
      do
      {
        operations_research::sat::CpModelPresolver::ProcessVariableOnlyUsedInEncoding(this, v68++);
      }

      while (v68 < *(**(this + 1) + 32));
    }

    if (operations_research::sat::CpModelPresolver::ProcessChangedVariables(this, v115, v112))
    {
LABEL_114:
      v76 = v7;
      goto LABEL_115;
    }

    v70 = *(this + 1);
    if ((v70[16] & 1) != 0 || *(*v70 + 96))
    {
      break;
    }

    v71 = -1;
    while (1)
    {
      v72 = *(this + 1);
      if (*(v72 + 416))
      {
        goto LABEL_176;
      }

      memset(v127, 0, 76);
      operations_research::sat::ScanModelForDualBoundStrengthening(v72, v127, v69);
      if ((operations_research::sat::DualBoundStrengthening::Strengthen(v127, *(this + 1)) & 1) == 0)
      {
        v73 = 0;
        v74 = 1;
        v75 = *&v127[48];
        if (!*&v127[48])
        {
          goto LABEL_99;
        }

LABEL_98:
        *&v127[56] = v75;
        operator delete(v75);
        goto LABEL_99;
      }

      if (operations_research::sat::CpModelPresolver::ProcessChangedVariables(this, v115, v112))
      {
        v73 = 0;
        v74 = 19;
        v75 = *&v127[48];
        if (*&v127[48])
        {
          goto LABEL_98;
        }
      }

      else
      {
        v73 = *&v127[72] != 0;
        if (*&v127[72])
        {
          v74 = 0;
        }

        else
        {
          v74 = 19;
        }

        v75 = *&v127[48];
        if (*&v127[48])
        {
          goto LABEL_98;
        }
      }

LABEL_99:
      if (*&v127[24])
      {
        *&v127[32] = *&v127[24];
        operator delete(*&v127[24]);
      }

      if (*v127)
      {
        *&v127[8] = *v127;
        operator delete(*v127);
      }

      if (!v73)
      {
        break;
      }

      if (--v71 == -11)
      {
        v105 += 10;
        goto LABEL_113;
      }
    }

    v105 -= v71;
    if (v74 != 19)
    {
      v76 = v7;
LABEL_127:
      if (v74 && v74 != 7)
      {
        goto LABEL_176;
      }

      goto LABEL_115;
    }

LABEL_113:
    if (v114.i64[1])
    {
      goto LABEL_114;
    }

    v76 = (v7 + 1);
    if (v7 <= 1)
    {
      if (*(*(this + 1) + 416))
      {
        goto LABEL_176;
      }

      std::string::basic_string[abi:ne200100]<0>(v109, "DetectDominanceRelations");
      operations_research::sat::PresolveTimer::PresolveTimer(v141, v109, *(this + 2), *(this + 3));
      if (v110 < 0)
      {
        operator delete(v109[0]);
      }

      *v127 = 0;
      memset(&v127[8], 0, 80);
      v128 = 0u;
      v129 = 0u;
      v130 = 0u;
      v131 = 0u;
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      v137 = 0u;
      v138 = 0u;
      v139 = 0u;
      v140 = 0;
      operations_research::sat::ScanModelForDominanceDetection(*(this + 1), v127, v77);
      if (operations_research::sat::ExploitDominanceRelations(v127, *(this + 1), v78))
      {
        v79 = operations_research::sat::CpModelPresolver::ProcessChangedVariables(this, v115, v112);
        v80 = v79 ^ 1;
        v74 = v79 ? 7 : 0;
      }

      else
      {
        v80 = 0;
        v74 = 1;
      }

      operations_research::sat::VarDomination::~VarDomination(v127);
      operations_research::sat::PresolveTimer::~PresolveTimer(v141, v81);
      if ((v80 & 1) == 0)
      {
        goto LABEL_127;
      }
    }

LABEL_115:
    v7 = v76;
  }

  v82 = *(this + 1);
  if (v82[416])
  {
    goto LABEL_176;
  }

  v83 = *(*v82 + 56);
  if (v83 < 1)
  {
LABEL_163:
    v108 = 9;
    strcpy(&v107, "num_loops");
    operations_research::sat::PresolveTimer::AddCounter(v119, &v107, i);
    if (v108 < 0)
    {
      operator delete(v107);
    }

    strcpy(v106, "num_dual_strengthening");
    BYTE7(v106[1]) = 22;
    operations_research::sat::PresolveTimer::AddCounter(v119, v106, v105);
    if (SBYTE7(v106[1]) < 0)
    {
      operator delete(*&v106[0]);
    }

    operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(*(this + 1) + 272, *(*(this + 1) + 272));
    goto LABEL_176;
  }

  v84 = 0;
  while (2)
  {
    v85 = *(this + 1);
    v86 = *v85 + 48;
    if (*v86)
    {
      v86 = *v86 + 8 * v84 + 7;
    }

    v87 = *v86;
    v88 = *(*v86 + 60);
    if (v88 > 20)
    {
      if (v88 == 21)
      {
        v89 = operations_research::sat::CpModelPresolver::PresolveNoOverlap2D(this, v87, v87);
LABEL_152:
        if ((v89 & 1) == 0)
        {
LABEL_134:
          if (++v84 == v83)
          {
            goto LABEL_163;
          }

          continue;
        }
      }

      else if (v88 != 22 || !operations_research::sat::CpModelPresolver::PresolveCumulative(this, v87))
      {
        goto LABEL_134;
      }

      operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v84);
      goto LABEL_134;
    }

    break;
  }

  if (v88 != 3)
  {
    if (v88 == 20)
    {
      v89 = operations_research::sat::CpModelPresolver::PresolveNoOverlap(this, v87);
      goto LABEL_152;
    }

    goto LABEL_134;
  }

  operations_research::sat::DomainDeductions::ProcessClause(v85 + 31, *(*(v87 + 6) + 24), *(*(v87 + 6) + 16), v127);
  v90 = *v127;
  v91 = *&v127[8];
  if (*v127 == *&v127[8])
  {
LABEL_155:
    if (v90)
    {
      v94 = *&v127[8];
      v95 = v90;
      if (*&v127[8] != v90)
      {
        do
        {
          if (*(v94 - 3))
          {
            operator delete(*(v94 - 2));
          }

          v94 -= 4;
        }

        while (v94 != v90);
        v95 = *v127;
      }

      *&v127[8] = v90;
      operator delete(v95);
    }

    goto LABEL_134;
  }

  while (1)
  {
    v142[0] = 0;
    v93 = *v90;
    v92 = (v90 + 1);
    if ((operations_research::sat::PresolveContext::IntersectDomainWith(*(this + 1), v93, v92, v142) & 1) == 0)
    {
      break;
    }

    if (v142[0])
    {
      operator new();
    }

    v90 = (v92 + 24);
    if (v90 == v91)
    {
      v90 = *v127;
      goto LABEL_155;
    }
  }

  v96 = *v127;
  if (*v127)
  {
    v97 = *&v127[8];
    v98 = *v127;
    if (*&v127[8] != *v127)
    {
      do
      {
        if (*(v97 - 24))
        {
          operator delete(*(v97 - 16));
        }

        v97 -= 32;
      }

      while (v97 != v96);
      v98 = *v127;
    }

    *&v127[8] = v96;
    operator delete(v98);
  }

LABEL_176:
  v99 = v112[1];
  v100 = v113;
  v114.i64[1] = 0;
  v101 = (v113 - v112[1]) >> 3;
  if (v101 >= 3)
  {
    do
    {
      operator delete(*v99);
      v100 = v113;
      v99 = (v112[1] + 8);
      v112[1] = v99;
      v101 = (v113 - v99) >> 3;
    }

    while (v101 > 2);
  }

  if (v101 == 1)
  {
    v102 = 512;
LABEL_182:
    v114.i64[0] = v102;
  }

  else if (v101 == 2)
  {
    v102 = 1024;
    goto LABEL_182;
  }

  if (v99 != v100)
  {
    do
    {
      v103 = *v99++;
      operator delete(v103);
    }

    while (v99 != v100);
    v104 = v113;
    if (v113 != v112[1])
    {
      do
      {
        v104 -= 8;
      }

      while (v104 != v112[1]);
      *&v113 = v104;
    }
  }

  if (v112[0])
  {
    operator delete(v112[0]);
  }

  if (v115[0])
  {
    operator delete(v115[0]);
  }

  if (v116 >= 2)
  {
    operator delete((v117 - (BYTE8(v116) & 1) - 8));
  }

  operations_research::sat::PresolveTimer::~PresolveTimer(v119, v6);
}

void sub_23CAB8754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, unint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::deque<int>::~deque[abi:ne200100](&a32);
  if (a39)
  {
    operator delete(a39);
  }

  if (a42 >= 2)
  {
    operator delete((a44 - (a43 & 1) - 8));
  }

  operations_research::sat::PresolveTimer::~PresolveTimer(&a47, v48);
  _Unwind_Resume(a1);
}

void ***std::vector<std::pair<int,operations_research::Domain>>::~vector[abi:ne200100](void ***a1)
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
        if (*(v3 - 3))
        {
          operator delete(*(v3 - 2));
        }

        v3 -= 4;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

double operations_research::sat::ModelCopy::ModelCopy(operations_research::sat::ModelCopy *this, operations_research::sat::PresolveContext *a2)
{
  *this = a2;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *&result = 1;
  *(this + 56) = xmmword_23CE306D0;
  *(this + 22) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  *(this + 120) = xmmword_23CE306D0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 19) = 0;
  *(this + 11) = xmmword_23CE306D0;
  return result;
}

google::protobuf::internal::RepeatedPtrFieldBase *operations_research::sat::ModelCopy::ImportVariablesAndMaybeIgnoreNames(google::protobuf::internal::RepeatedPtrFieldBase *this, const operations_research::sat::CpModelProto *a2)
{
  v3 = *this;
  if (*(*(*this + 392) + 813) == 1)
  {
    v4 = this;
    v5 = *v3;
    if (*(v5 + 8) >= 1)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(v5 + 6);
      v5 = **v4;
    }

    this = google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 24), *(a2 + 8));
    v6 = *(a2 + 3);
    if (v6)
    {
      v7 = (v6 + 7);
    }

    else
    {
      v7 = (a2 + 24);
    }

    v8 = *(a2 + 8);
    if (v8)
    {
      v9 = &v7[v8];
      do
      {
        v10 = *v7;
        this = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**v4 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntegerVariableProto>);
        if (this != v10)
        {
          *(this + 4) = 0;
          v11 = *(v10 + 16);
          if (v11)
          {
            if (*(this + 5) < v11)
            {
              v26 = this;
              this = google::protobuf::RepeatedField<long long>::Grow(this + 16, 0, *(v10 + 16));
              v12 = *(v26 + 4);
              v13 = *(v26 + 3);
              *(v26 + 4) = v12 + v11;
              if (v11 >= 1)
              {
LABEL_14:
                v14 = *(v10 + 24);
                v15 = (v13 + 8 * v12);
                if (v11 < 4)
                {
                  goto LABEL_19;
                }

                v16 = 8 * v12;
                if ((8 * v12 + v13 - v14) < 0x20)
                {
                  goto LABEL_19;
                }

                v17 = v11;
                v18 = v11 & 0x7FFFFFFC;
                LODWORD(v11) = v11 - (v11 & 0x7FFFFFFC);
                v15 += v18;
                v19 = &v14[v18];
                v20 = (v14 + 2);
                v21 = (v13 + v16 + 16);
                v22 = v18;
                do
                {
                  v23 = *v20;
                  *(v21 - 1) = *(v20 - 1);
                  *v21 = v23;
                  v20 += 2;
                  v21 += 2;
                  v22 -= 4;
                }

                while (v22);
                v14 = v19;
                if (v18 != v17)
                {
LABEL_19:
                  v24 = v11 + 1;
                  do
                  {
                    v25 = *v14++;
                    *v15++ = v25;
                    --v24;
                  }

                  while (v24 > 1);
                }
              }
            }

            else
            {
              v12 = 0;
              v13 = *(this + 3);
              *(this + 4) = v11;
              if (v11 >= 1)
              {
                goto LABEL_14;
              }
            }
          }
        }

        ++v7;
      }

      while (v7 != v9);
    }
  }

  else
  {
    v27 = *v3;
    if (*v3 != a2)
    {
      if (*(v27 + 8) >= 1)
      {
        this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(v27 + 6);
      }

      if (*(a2 + 8))
      {

        return google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((v27 + 24), (a2 + 24), google::protobuf::Arena::CopyConstruct<operations_research::sat::IntegerVariableProto>);
      }
    }
  }

  return this;
}

uint64_t operations_research::sat::ModelCopy::ImportAndSimplifyConstraints(operations_research::sat::PresolveContext **this, const operations_research::sat::CpModelProto *a2, int a3)
{
  operations_research::sat::PresolveContext::InitializeNewDomains(*this);
  *v36 = *(*(*this + 49) + 813);
  *(this + 22) = *(**this + 56);
  if (*(a2 + 14) < 1)
  {
    return 1;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = (a2 + 48);
  do
  {
    if (*v9)
    {
      v11 = (*v9 + 8 * v6 + 7);
    }

    else
    {
      v11 = (a2 + 48);
    }

    v12 = *v11;
    if (a3)
    {
      if ((operations_research::sat::ModelCopy::PrepareEnforcementCopyWithDup(this, *v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (!operations_research::sat::ModelCopy::PrepareEnforcementCopy(this, *v11))
    {
      goto LABEL_5;
    }

    v16 = *(v12 + 15);
    if (v16 > 19)
    {
      if (v16 <= 21)
      {
        if (v16 == 20)
        {
          if (!a3)
          {
            operations_research::sat::ModelCopy::CopyAndMapNoOverlap(this, v12);
            goto LABEL_5;
          }

          if (v7 < v8)
          {
            goto LABEL_57;
          }

          v17 = v7;
          v18 = v7 >> 2;
          v21 = (v7 >> 2) + 1;
          if (v21 >> 62)
          {
            goto LABEL_99;
          }

          if (v8 >> 1 > v21)
          {
            v21 = v8 >> 1;
          }

          if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v20 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v21;
          }

          if (v20)
          {
            if (!(v20 >> 62))
            {
              operator new();
            }

LABEL_100:
            std::__throw_bad_array_new_length[abi:ne200100]();
          }
        }

        else
        {
          if (!a3)
          {
            operations_research::sat::ModelCopy::CopyAndMapNoOverlap2D(this, v12);
            goto LABEL_5;
          }

          if (v7 < v8)
          {
            goto LABEL_57;
          }

          v17 = v7;
          v18 = v7 >> 2;
          v19 = (v7 >> 2) + 1;
          if (v19 >> 62)
          {
            goto LABEL_99;
          }

          if (v8 >> 1 > v19)
          {
            v19 = v8 >> 1;
          }

          if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
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

            goto LABEL_100;
          }
        }

LABEL_82:
        v8 = 4 * v20;
        *(4 * v18) = v6;
        v7 = 4 * v18 + 4;
        memcpy(0, 0, v17);
        goto LABEL_5;
      }

      switch(v16)
      {
        case 22:
          if (!a3)
          {
            operations_research::sat::ModelCopy::CopyAndMapCumulative(this, v12);
            goto LABEL_5;
          }

          if (v7 < v8)
          {
LABEL_57:
            *v7 = v6;
            v7 += 4;
            goto LABEL_5;
          }

          v17 = v7;
          v18 = v7 >> 2;
          v29 = (v7 >> 2) + 1;
          if (v29 >> 62)
          {
LABEL_99:
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (v8 >> 1 > v29)
          {
            v29 = v8 >> 1;
          }

          if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v20 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v29;
          }

          if (v20)
          {
            if (!(v20 >> 62))
            {
              operator new();
            }

            goto LABEL_100;
          }

          goto LABEL_82;
        case 26:
          v10 = operations_research::sat::ModelCopy::CopyAtMostOne(this, v12);
          break;
        case 29:
          v10 = operations_research::sat::ModelCopy::CopyExactlyOne(this, v12);
          break;
        default:
          goto LABEL_59;
      }
    }

    else if (v16 <= 3)
    {
      if (!v16)
      {
        goto LABEL_5;
      }

      if (v16 != 3)
      {
        goto LABEL_59;
      }

      if (a3)
      {
        v10 = operations_research::sat::ModelCopy::CopyBoolOrWithDupSupport(this, v12);
      }

      else
      {
        v10 = operations_research::sat::ModelCopy::CopyBoolOr(this, v12);
      }
    }

    else
    {
      switch(v16)
      {
        case 4:
          if (this[12] == this[13])
          {
            v23 = *(v12 + 6);
            v24 = *(v23 + 16);
            if (v24)
            {
              v35 = v8;
              v25 = *(v23 + 24);
              v26 = 4 * v24;
              do
              {
                v27 = *v25;
                v28 = *this;
                strcpy(__p, "BOOL_and: non-reified.");
                v38 = 22;
                operations_research::sat::PresolveContext::UpdateRuleStats(v28, __p, 1, v14, v15);
                if (v38 < 0)
                {
                  operator delete(*__p);
                }

                if ((operations_research::sat::PresolveContext::SetLiteralToTrue(*this, v27) & 1) == 0)
                {
                  return operations_research::sat::ModelCopy::CreateUnsatModel(this, v6, v12);
                }

                ++v25;
                v26 -= 4;
              }

              while (v26);
              v8 = v35;
            }

            goto LABEL_5;
          }

          if (a3)
          {
            v10 = operations_research::sat::ModelCopy::CopyBoolAndWithDupSupport(this, v12, v13, v14, v15);
          }

          else
          {
            v10 = operations_research::sat::ModelCopy::CopyBoolAnd(this, v12);
          }

          break;
        case 12:
          v10 = operations_research::sat::ModelCopy::CopyLinear(this, v12);
          break;
        case 19:
          operations_research::sat::ModelCopy::CopyInterval(this, v12, v6, v36[0]);
          if (a3)
          {
            operations_research::sat::ModelCopy::AddLinearConstraintForInterval(this, v12);
          }

          goto LABEL_5;
        default:
LABEL_59:
          v22 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          operations_research::sat::ConstraintProto::CopyFrom(v22, v12);
          if (*v36)
          {
            google::protobuf::internal::ArenaStringPtr::ClearToEmpty(v22 + 5);
          }

          goto LABEL_5;
      }
    }

    if ((v10 & 1) == 0)
    {
      return operations_research::sat::ModelCopy::CreateUnsatModel(this, v6, v12);
    }

LABEL_5:
    ++v6;
  }

  while (v6 < *(a2 + 14));
  v30 = 0;
  if (v7)
  {
    while (1)
    {
      while (1)
      {
        v31 = (*v9 + 8 * *v30 + 7);
        if ((*v9 & 1) == 0)
        {
          v31 = a2 + 48;
        }

        v32 = *v31;
        v33 = *(*v31 + 60);
        if (v33 != 20)
        {
          break;
        }

        operations_research::sat::ModelCopy::CopyAndMapNoOverlap(this, v32);
LABEL_86:
        if (++v30 == v7)
        {
          return 1;
        }
      }

      if (v33 == 21)
      {
        operations_research::sat::ModelCopy::CopyAndMapNoOverlap2D(this, v32);
        goto LABEL_86;
      }

      if (v33 == 22)
      {
        operations_research::sat::ModelCopy::CopyAndMapCumulative(this, v32);
        goto LABEL_86;
      }

      absl::lts_20240722::log_internal::LogMessage::LogMessage(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 11671, 2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(__p, "Shouldn't be here.", 0x12uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(__p);
      if (++v30 == v7)
      {
        return 1;
      }
    }
  }

  return 1;
}

void sub_23CAB9148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::ModelCopy::PrepareEnforcementCopyWithDup(operations_research::sat::ModelCopy *this, const operations_research::sat::ConstraintProto *a2)
{
  v4 = this + 96;
  *(this + 13) = *(this + 12);
  v6 = (this + 120);
  v5 = *(this + 15);
  if (v5 > 1)
  {
    absl::lts_20240722::container_internal::ClearBackingArray(this + 15, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value, v5 < 0x80, 1u);
    v7 = *(a2 + 4);
    if (!v7)
    {
      return 1;
    }
  }

  else
  {
    *(this + 16) = 0;
    v7 = *(a2 + 4);
    if (!v7)
    {
      return 1;
    }
  }

  v8 = *(a2 + 3);
  v9 = &v8[v7];
  do
  {
    v37 = *v8;
    if (!operations_research::sat::PresolveContext::LiteralIsTrue(*this, v37))
    {
      v10 = *v6;
      if (*v6 > 1)
      {
        v12 = 0;
        _X10 = *(this + 17);
        __asm { PRFM            #4, [X10] }

        v11 = v37;
        v19 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v37) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v37));
        v20 = vdup_n_s8(v19 & 0x7F);
        v21 = ((v19 >> 7) ^ (_X10 >> 12)) & v10;
        v22 = *(_X10 + v21);
        v23 = vceq_s8(v22, v20);
        if (!v23)
        {
          goto LABEL_15;
        }

        do
        {
LABEL_13:
          if (*(*(this + 18) + 4 * ((v21 + (__clz(__rbit64(v23)) >> 3)) & v10)) == v37)
          {
            goto LABEL_11;
          }

          v23 &= ((v23 & 0x8080808080808080) - 1) & 0x8080808080808080;
        }

        while (v23);
LABEL_15:
        while (!*&vceq_s8(v22, 0x8080808080808080))
        {
          v12 += 8;
          v21 = (v12 + v21) & v10;
          v22 = *(_X10 + v21);
          v23 = vceq_s8(v22, v20);
          if (v23)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        v11 = v37;
        if (*(this + 16) >= 2uLL && *(this + 34) == v37)
        {
LABEL_11:
          operator new();
        }
      }

      if (operations_research::sat::PresolveContext::LiteralIsFalse(*this, v11))
      {
        operator new();
      }

      v24 = ~v37;
      v25 = *v6;
      if (*v6 > 1)
      {
        v26 = 0;
        _X11 = *(this + 17);
        __asm { PRFM            #4, [X11] }

        v29 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v24) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v24));
        v30 = vdup_n_s8(v29 & 0x7F);
        v31 = ((v29 >> 7) ^ (_X11 >> 12)) & v25;
        v32 = *(_X11 + v31);
        v33 = vceq_s8(v32, v30);
        if (!v33)
        {
          goto LABEL_27;
        }

        do
        {
LABEL_25:
          if (*(*(this + 18) + 4 * ((v31 + (__clz(__rbit64(v33)) >> 3)) & v25)) == v24)
          {
            goto LABEL_31;
          }

          v33 &= ((v33 & 0x8080808080808080) - 1) & 0x8080808080808080;
        }

        while (v33);
LABEL_27:
        while (!*&vceq_s8(v32, 0x8080808080808080))
        {
          v26 += 8;
          v31 = (v26 + v31) & v25;
          v32 = *(_X11 + v31);
          v33 = vceq_s8(v32, v30);
          if (v33)
          {
            goto LABEL_25;
          }
        }
      }

      else if (*(this + 16) >= 2uLL && *(this + 34) == v24)
      {
LABEL_31:
        operator new();
      }

      std::vector<int>::push_back[abi:ne200100](v4, &v37);
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v6, &v37, __p);
      if (v36 == 1)
      {
        *__p[1] = v37;
      }
    }

    ++v8;
  }

  while (v8 != v9);
  return 1;
}

void sub_23CAB95B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::ModelCopy::PrepareEnforcementCopy(operations_research::sat::ModelCopy *this, const operations_research::sat::ConstraintProto *a2)
{
  v2 = this + 96;
  *(this + 13) = *(this + 12);
  v3 = *(a2 + 4);
  if (v3)
  {
    v5 = *(a2 + 3);
    v6 = 4 * v3;
    do
    {
      v8 = *v5;
      if (!operations_research::sat::PresolveContext::LiteralIsTrue(*this, v8))
      {
        if (operations_research::sat::PresolveContext::LiteralIsFalse(*this, v8))
        {
          operator new();
        }

        std::vector<int>::push_back[abi:ne200100](v2, &v8);
      }

      ++v5;
      v6 -= 4;
    }

    while (v6);
  }

  return 1;
}

void sub_23CAB9708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::ModelCopy::CopyBoolOrWithDupSupport(operations_research::sat::ModelCopy *this, const operations_research::sat::ConstraintProto *a2)
{
  v4 = this + 152;
  *(this + 20) = *(this + 19);
  v6 = (this + 176);
  v5 = *(this + 22);
  if (v5 > 1)
  {
    absl::lts_20240722::container_internal::ClearBackingArray(this + 22, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value, v5 < 0x80, 1u);
  }

  else
  {
    *(this + 23) = 0;
  }

  v7 = *(this + 12);
  v8 = *(this + 13);
  while (v7 != v8)
  {
    v37 = ~*v7;
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v6, &v37, __p);
    if (__p[16] == 1)
    {
      **&__p[8] = v37;
    }

    std::vector<int>::push_back[abi:ne200100](v4, &v37);
    ++v7;
  }

  v9 = *(a2 + 6);
  if (*(a2 + 15) != 3)
  {
    v9 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  }

  v10 = *(v9 + 4);
  if (!v10)
  {
    return operations_research::sat::ModelCopy::FinishBoolOrCopy(this);
  }

  v11 = v9[3];
  v12 = &v11[v10];
  while (1)
  {
    v37 = *v11;
    IsTrue = operations_research::sat::PresolveContext::LiteralIsTrue(*this, v37);
    v16 = *this;
    if (IsTrue)
    {
      break;
    }

    if (!operations_research::sat::PresolveContext::LiteralIsFalse(v16, v37))
    {
      v19 = ~v37;
      v20 = *v6;
      if (*v6 > 1)
      {
        v21 = 0;
        _X11 = *(this + 24);
        __asm { PRFM            #4, [X11] }

        v28 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v19) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v19));
        v29 = vdup_n_s8(v28 & 0x7F);
        v30 = ((v28 >> 7) ^ (_X11 >> 12)) & v20;
        v31 = *(_X11 + v30);
        v32 = vceq_s8(v31, v29);
        if (!v32)
        {
          goto LABEL_24;
        }

LABEL_22:
        while (*(*(this + 25) + 4 * ((v30 + (__clz(__rbit64(v32)) >> 3)) & v20)) != v19)
        {
          v32 &= ((v32 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v32)
          {
LABEL_24:
            while (!*&vceq_s8(v31, 0x8080808080808080))
            {
              v21 += 8;
              v30 = (v21 + v30) & v20;
              v31 = *(_X11 + v30);
              v32 = vceq_s8(v31, v29);
              if (v32)
              {
                goto LABEL_22;
              }
            }

            goto LABEL_19;
          }
        }

LABEL_27:
        v33 = *this;
        v36 = 20;
        strcpy(__p, "BOOL_or: always true");
        operations_research::sat::PresolveContext::UpdateRuleStats(v33, __p, 1, v17, v18);
        goto LABEL_28;
      }

      if (*(this + 23) >= 2uLL && *(this + 48) == v19)
      {
        goto LABEL_27;
      }

LABEL_19:
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v6, &v37, __p);
      if (__p[16] == 1)
      {
        **&__p[8] = v37;
        std::vector<int>::push_back[abi:ne200100](v4, &v37);
      }
    }

    if (++v11 == v12)
    {
      return operations_research::sat::ModelCopy::FinishBoolOrCopy(this);
    }
  }

  v36 = 20;
  strcpy(__p, "BOOL_or: always true");
  operations_research::sat::PresolveContext::UpdateRuleStats(v16, __p, 1, v13, v14);
LABEL_28:
  if (v36 < 0)
  {
    operator delete(*__p);
  }

  return 1;
}

void sub_23CAB9A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::ModelCopy::CreateUnsatModel(operations_research::sat::PresolveContext **this, absl::lts_20240722::numbers_internal *a2, const operations_research::sat::ConstraintProto *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = **this;
  if (*(v4 + 56) >= 1)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>((v4 + 48));
    v4 = **this;
  }

  v5 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v4 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  if (*(v5 + 60) != 3)
  {
    v6 = v5;
    operations_research::sat::ConstraintProto::clear_constraint(v5);
    *(v6 + 60) = 3;
    v7 = *(v6 + 8);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(v6 + 48) = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v7);
  }

  if ((*(*this + 416) & 1) == 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    google::protobuf::TextFormat::Printer::Printer(v10);
    operations_research::sat::SetupTextFormatPrinter(v10, v8);
  }

  return 0;
}

void sub_23CAB9DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49)
{
  if (a48)
  {
    a49 = a48;
    operator delete(a48);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_4:
      google::protobuf::TextFormat::Printer::~Printer(&a19);
      if (a38 < 0)
      {
        operator delete(a33);
      }

      _Unwind_Resume(a1);
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(__p);
  goto LABEL_4;
}

uint64_t operations_research::sat::ModelCopy::CopyBoolOr(operations_research::sat::ModelCopy *this, const operations_research::sat::ConstraintProto *a2)
{
  v4 = this + 152;
  *(this + 20) = *(this + 19);
  v5 = *(this + 12);
  v6 = *(this + 13);
  while (v5 != v6)
  {
    v7 = *v5++;
    v14 = ~v7;
    std::vector<int>::push_back[abi:ne200100](v4, &v14);
  }

  v8 = *(a2 + 6);
  if (*(a2 + 15) != 3)
  {
    v8 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  }

  v9 = *(v8 + 4);
  if (!v9)
  {
    return operations_research::sat::ModelCopy::FinishBoolOrCopy(this);
  }

  v10 = v8[3];
  v11 = 4 * v9;
  while (1)
  {
    v13 = *v10;
    if (operations_research::sat::PresolveContext::LiteralIsTrue(*this, v13))
    {
      break;
    }

    if (!operations_research::sat::PresolveContext::LiteralIsFalse(*this, v13))
    {
      std::vector<int>::push_back[abi:ne200100](v4, &v13);
    }

    ++v10;
    v11 -= 4;
    if (!v11)
    {
      return operations_research::sat::ModelCopy::FinishBoolOrCopy(this);
    }
  }

  return 1;
}

BOOL operations_research::sat::ModelCopy::CopyBoolAndWithDupSupport(operations_research::sat::ModelCopy *this, const operations_research::sat::ConstraintProto *a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v7 = this + 152;
  *(this + 20) = *(this + 19);
  v9 = (this + 176);
  v8 = *(this + 22);
  if (v8 > 1)
  {
    absl::lts_20240722::container_internal::ClearBackingArray(this + 22, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value, v8 < 0x80, 1u);
  }

  else
  {
    *(this + 23) = 0;
  }

  v10 = *(a2 + 6);
  if (*(a2 + 15) != 4)
  {
    v10 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  }

  v11 = *(v10 + 4);
  if (!v11)
  {
LABEL_42:
    v49 = *this;
    if (*(this + 19) == *(this + 20))
    {
      v105 = 15;
      strcpy(__p, "BOOL and: empty");
      operations_research::sat::PresolveContext::UpdateRuleStats(v49, __p, 1, a4, a5);
      if (v105 < 0)
      {
        operator delete(*__p);
      }

      return 1;
    }

    v50 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v49 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    v51 = v50;
    v53 = (v50 + 16);
    v52 = *(v50 + 16);
    v55 = *(this + 12);
    v54 = *(this + 13);
    v56 = v54 - v55;
    v57 = v52 + ((v54 - v55) >> 2);
    if (v57 > *(v50 + 20))
    {
      google::protobuf::RepeatedField<int>::Grow(v50 + 16, v52, v52 + ((v54 - v55) >> 2));
      LODWORD(v52) = *v53;
      v58 = *(v51 + 24);
      *(v51 + 16) = v57;
      if (v55 == v54)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v58 = *(v50 + 24);
      *(v50 + 16) = v57;
      if (v55 == v54)
      {
        goto LABEL_51;
      }
    }

    v59 = (v58 + 4 * v52);
    if ((v56 - 4) < 0x1C)
    {
      goto LABEL_91;
    }

    v60 = 4 * v52 + v58;
    if ((v60 - v55) < 0x20)
    {
      goto LABEL_91;
    }

    v61 = ((v56 - 4) >> 2) + 1;
    v62 = 4 * (v61 & 0x7FFFFFFFFFFFFFF8);
    v59 = (v59 + v62);
    v63 = &v55[v62];
    v64 = (v55 + 16);
    v65 = (v60 + 16);
    v66 = v61 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v67 = *v64;
      *(v65 - 1) = *(v64 - 1);
      *v65 = v67;
      v64 += 2;
      v65 += 2;
      v66 -= 8;
    }

    while (v66);
    v55 = v63;
    if (v61 != (v61 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_91:
      do
      {
        v68 = *v55;
        v55 += 4;
        *v59++ = v68;
      }

      while (v55 != v54);
    }

LABEL_51:
    if (*(v51 + 60) == 4)
    {
      v69 = *(v51 + 48);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v51);
      *(v51 + 60) = 4;
      v84 = *(v51 + 8);
      if (v84)
      {
        v84 = *(v84 & 0xFFFFFFFFFFFFFFFELL);
      }

      v69 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v84);
      *(v51 + 48) = v69;
    }

    v85 = *(v69 + 4);
    v86 = v69 + 2;
    v88 = *(this + 19);
    v87 = *(this + 20);
    v89 = v87 - v88;
    v90 = v85 + ((v87 - v88) >> 2);
    if (v90 > *(v69 + 5))
    {
      v103 = v69;
      google::protobuf::RepeatedField<int>::Grow((v69 + 2), v85, v85 + ((v87 - v88) >> 2));
      LODWORD(v85) = *v86;
      v91 = v103[3];
      *(v103 + 4) = v90;
      if (v88 != v87)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v91 = v69[3];
      *(v69 + 4) = v90;
      if (v88 != v87)
      {
LABEL_75:
        v92 = (v91 + 4 * v85);
        if ((v89 - 4) < 0x1C)
        {
          goto LABEL_92;
        }

        v93 = 4 * v85 + v91;
        if ((v93 - v88) < 0x20)
        {
          goto LABEL_92;
        }

        v94 = ((v89 - 4) >> 2) + 1;
        v95 = 4 * (v94 & 0x7FFFFFFFFFFFFFF8);
        v92 = (v92 + v95);
        v96 = &v88[v95];
        v97 = (v88 + 16);
        v98 = (v93 + 16);
        v99 = v94 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v100 = *v97;
          *(v98 - 1) = *(v97 - 1);
          *v98 = v100;
          v97 += 2;
          v98 += 2;
          v99 -= 8;
        }

        while (v99);
        v88 = v96;
        if (v94 != (v94 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_92:
          do
          {
            v101 = *v88;
            v88 += 4;
            *v92++ = v101;
          }

          while (v88 != v87);
        }
      }
    }

    return 1;
  }

  v12 = v10[3];
  v13 = &v12[v11];
  while (1)
  {
    v106 = *v12;
    if (operations_research::sat::PresolveContext::LiteralIsFalse(*this, v106))
    {
      break;
    }

    v16 = ~v106;
    v17 = *v9;
    if (*v9 > 1)
    {
      v21 = 0;
      _X11 = *(this + 24);
      __asm { PRFM            #4, [X11] }

      v28 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v16) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v16));
      v29 = vdup_n_s8(v28 & 0x7F);
      v30 = ((v28 >> 7) ^ (_X11 >> 12)) & v17;
      v31 = *(_X11 + v30);
      v32 = vceq_s8(v31, v29);
      if (!v32)
      {
        goto LABEL_24;
      }

      do
      {
LABEL_22:
        if (*(*(this + 25) + 4 * ((v30 + (__clz(__rbit64(v32)) >> 3)) & v17)) == v16)
        {
          goto LABEL_53;
        }

        v32 &= ((v32 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v32);
LABEL_24:
      while (!*&vceq_s8(v31, 0x8080808080808080))
      {
        v21 += 8;
        v30 = (v21 + v30) & v17;
        v31 = *(_X11 + v30);
        v32 = vceq_s8(v31, v29);
        if (v32)
        {
          goto LABEL_22;
        }
      }
    }

    else if (*(this + 23) >= 2uLL && *(this + 48) == v16)
    {
LABEL_53:
      operator new();
    }

    v18 = *(this + 15);
    if (v18 > 1)
    {
      v33 = 0;
      _X11 = *(this + 17);
      __asm { PRFM            #4, [X11] }

      v36 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v16) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v16));
      v37 = vdup_n_s8(v36 & 0x7F);
      v38 = ((v36 >> 7) ^ (_X11 >> 12)) & v18;
      v39 = *(_X11 + v38);
      v40 = vceq_s8(v39, v37);
      if (!v40)
      {
        goto LABEL_30;
      }

      do
      {
LABEL_28:
        if (*(*(this + 18) + 4 * ((v38 + (__clz(__rbit64(v40)) >> 3)) & v18)) == v16)
        {
          goto LABEL_54;
        }

        v40 &= ((v40 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v40);
LABEL_30:
      while (!*&vceq_s8(v39, 0x8080808080808080))
      {
        v33 += 8;
        v38 = (v33 + v38) & v18;
        v39 = *(_X11 + v38);
        v40 = vceq_s8(v39, v37);
        if (v40)
        {
          goto LABEL_28;
        }
      }
    }

    else if (*(this + 16) >= 2uLL && *(this + 34) == v16)
    {
LABEL_54:
      v70 = *this;
      v105 = 21;
      strcpy(__p, "BOOL and: not(x) => x");
      operations_research::sat::PresolveContext::UpdateRuleStats(v70, __p, 1, v14, v15);
      goto LABEL_55;
    }

    if (!operations_research::sat::PresolveContext::LiteralIsTrue(*this, v106))
    {
      v19 = *(this + 15);
      if (v19 > 1)
      {
        v41 = 0;
        _X10 = *(this + 17);
        __asm { PRFM            #4, [X10] }

        v44 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v106) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v106));
        v45 = vdup_n_s8(v44 & 0x7F);
        v46 = ((v44 >> 7) ^ (_X10 >> 12)) & v19;
        v47 = *(_X10 + v46);
        v48 = vceq_s8(v47, v45);
        if (!v48)
        {
          goto LABEL_36;
        }

LABEL_34:
        while (*(*(this + 18) + 4 * ((v46 + (__clz(__rbit64(v48)) >> 3)) & v19)) != v106)
        {
          v48 &= ((v48 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v48)
          {
LABEL_36:
            while (!*&vceq_s8(v47, 0x8080808080808080))
            {
              v41 += 8;
              v46 = (v41 + v46) & v19;
              v47 = *(_X10 + v46);
              v48 = vceq_s8(v47, v45);
              if (v48)
              {
                goto LABEL_34;
              }
            }

            goto LABEL_39;
          }
        }
      }

      else if (*(this + 16) < 2uLL || *(this + 34) != v106)
      {
LABEL_39:
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v9, &v106, __p);
        if (__p[16] == 1)
        {
          **&__p[8] = v106;
          std::vector<int>::push_back[abi:ne200100](v7, &v106);
        }

        goto LABEL_41;
      }

      v20 = *this;
      v105 = 16;
      strcpy(__p, "BOOL and: x => x");
      operations_research::sat::PresolveContext::UpdateRuleStats(v20, __p, 1, a4, a5);
      if (v105 < 0)
      {
        operator delete(*__p);
      }
    }

LABEL_41:
    if (++v12 == v13)
    {
      goto LABEL_42;
    }
  }

  v102 = *this;
  strcpy(__p, "BOOL and: always false");
  v105 = 22;
  operations_research::sat::PresolveContext::UpdateRuleStats(v102, __p, 1, v14, v15);
LABEL_55:
  if (v105 < 0)
  {
    operator delete(*__p);
  }

  v71 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v72 = v71;
  if (*(v71 + 60) != 3)
  {
    operations_research::sat::ConstraintProto::clear_constraint(v71);
    *(v72 + 60) = 3;
    v82 = *(v72 + 8);
    if (v82)
    {
      v73 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(*(v82 & 0xFFFFFFFFFFFFFFFELL));
      *(v72 + 48) = v73;
      v75 = *(this + 12);
      v74 = *(this + 13);
      if (v75 != v74)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v73 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v82);
      *(v72 + 48) = v73;
      v75 = *(this + 12);
      v74 = *(this + 13);
      if (v75 != v74)
      {
        goto LABEL_59;
      }
    }

    goto LABEL_66;
  }

  v73 = *(v71 + 48);
  v75 = *(this + 12);
  v74 = *(this + 13);
  if (v75 == v74)
  {
LABEL_66:
    v80 = *(v73 + 4);
    return v80 != 0;
  }

LABEL_59:
  v76 = *(v73 + 4);
  v77 = *(v73 + 5);
  do
  {
    v78 = *v75;
    if (v76 == v77)
    {
      v81 = v73;
      google::protobuf::RepeatedField<int>::Grow((v73 + 2), v76, (v76 + 1));
      v73 = v81;
      LODWORD(v76) = *(v81 + 4);
      v77 = *(v81 + 5);
    }

    v79 = v73[3];
    v80 = v76 + 1;
    *(v73 + 4) = v76 + 1;
    *(v79 + 4 * v76) = ~v78;
    ++v75;
    v76 = (v76 + 1);
  }

  while (v75 != v74);
  return v80 != 0;
}

void sub_23CABA78C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL operations_research::sat::ModelCopy::CopyBoolAnd(operations_research::sat::PresolveContext **this, const operations_research::sat::ConstraintProto *a2)
{
  v2 = *(a2 + 6);
  if (*(a2 + 15) != 4)
  {
    v2 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  }

  v3 = *(v2 + 4);
  if (!v3)
  {
    return 1;
  }

  LODWORD(v6) = 0;
  v7 = v2[3];
  v8 = 4 * v3;
  do
  {
    v9 = *v7;
    IsFalse = operations_research::sat::PresolveContext::LiteralIsFalse(*this, *v7);
    v11 = *this;
    if (IsFalse)
    {
      v31 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v11 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      v32 = v31;
      if (*(v31 + 60) == 3)
      {
        v33 = *(v31 + 48);
        v35 = this[12];
        v34 = this[13];
        if (v35 != v34)
        {
          goto LABEL_20;
        }

LABEL_27:
        v40 = *(v33 + 4);
        return v40 != 0;
      }

      operations_research::sat::ConstraintProto::clear_constraint(v31);
      *(v32 + 60) = 3;
      v42 = *(v32 + 8);
      if (v42)
      {
        v33 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(*(v42 & 0xFFFFFFFFFFFFFFFELL));
        *(v32 + 48) = v33;
        v35 = this[12];
        v34 = this[13];
        if (v35 == v34)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v33 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v42);
        *(v32 + 48) = v33;
        v35 = this[12];
        v34 = this[13];
        if (v35 == v34)
        {
          goto LABEL_27;
        }
      }

LABEL_20:
      v36 = *(v33 + 4);
      v37 = *(v33 + 5);
      do
      {
        v38 = *v35;
        if (v36 == v37)
        {
          v41 = v33;
          google::protobuf::RepeatedField<int>::Grow((v33 + 2), v36, (v36 + 1));
          v33 = v41;
          LODWORD(v36) = *(v41 + 4);
          v37 = *(v41 + 5);
        }

        v39 = v33[3];
        v40 = v36 + 1;
        *(v33 + 4) = v36 + 1;
        *(v39 + 4 * v36) = ~v38;
        v35 = (v35 + 4);
        v36 = (v36 + 1);
      }

      while (v35 != v34);
      return v40 != 0;
    }

    v6 = v6 + !operations_research::sat::PresolveContext::LiteralIsTrue(v11, v9);
    ++v7;
    v8 -= 4;
  }

  while (v8);
  if (v6 < 1)
  {
    return 1;
  }

  v12 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v13 = v12;
  v14 = *(v12 + 16);
  v16 = this[12];
  v15 = this[13];
  v17 = v15 - v16;
  v18 = v14 + ((v15 - v16) >> 2);
  if (v18 > *(v12 + 20))
  {
    v53 = (v12 + 16);
    v54 = this[12];
    v55 = this[13];
    google::protobuf::RepeatedField<int>::Grow(v12 + 16, v14, v14 + ((v15 - v16) >> 2));
    v16 = v54;
    v15 = v55;
    LODWORD(v14) = *v53;
    v19 = *(v13 + 24);
    *(v13 + 16) = v18;
    if (v54 != v55)
    {
LABEL_10:
      v20 = (v19 + 4 * v14);
      if ((v17 - 4) < 0x1C)
      {
        goto LABEL_52;
      }

      v21 = 4 * v14 + v19;
      if ((v21 - v16) < 0x20)
      {
        goto LABEL_52;
      }

      v22 = ((v17 - 4) >> 2) + 1;
      v23 = 4 * (v22 & 0x7FFFFFFFFFFFFFF8);
      v20 = (v20 + v23);
      v24 = (v16 + v23);
      v25 = (v16 + 16);
      v26 = (v21 + 16);
      v27 = v22 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v28 = *v25;
        *(v26 - 1) = *(v25 - 1);
        *v26 = v28;
        v25 += 2;
        v26 += 2;
        v27 -= 8;
      }

      while (v27);
      v16 = v24;
      if (v22 != (v22 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_52:
        do
        {
          v29 = *v16;
          v16 = (v16 + 4);
          *v20++ = v29;
        }

        while (v16 != v15);
      }
    }
  }

  else
  {
    v19 = *(v12 + 24);
    *(v12 + 16) = v18;
    if (v16 != v15)
    {
      goto LABEL_10;
    }
  }

  if (*(v13 + 60) == 4)
  {
    v30 = *(v13 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v13);
    *(v13 + 60) = 4;
    v44 = *(v13 + 8);
    if (v44)
    {
      v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
    }

    v30 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v44);
    *(v13 + 48) = v30;
  }

  if (*(v30 + 5) < v6)
  {
    google::protobuf::RepeatedField<int>::Grow((v30 + 2), *(v30 + 4), v6);
    v45 = *(a2 + 6);
    if (*(a2 + 15) != 4)
    {
      v45 = &operations_research::sat::_BoolArgumentProto_default_instance_;
    }

    v46 = *(v45 + 4);
    if (v46)
    {
LABEL_36:
      v47 = v45[3];
      v48 = 4 * v46;
      do
      {
        v50 = *v47;
        if (!operations_research::sat::PresolveContext::LiteralIsTrue(*this, *v47))
        {
          v51 = v30[2];
          v52 = v51;
          if (v51 == HIDWORD(v51))
          {
            google::protobuf::RepeatedField<int>::Grow((v30 + 2), HIDWORD(v51), (HIDWORD(v51) + 1));
            v52 = *(v30 + 4);
          }

          v49 = v30[3];
          *(v30 + 4) = v52 + 1;
          *(v49 + 4 * v52) = v50;
        }

        ++v47;
        v48 -= 4;
      }

      while (v48);
    }
  }

  else
  {
    v45 = *(a2 + 6);
    if (*(a2 + 15) != 4)
    {
      v45 = &operations_research::sat::_BoolArgumentProto_default_instance_;
    }

    v46 = *(v45 + 4);
    if (v46)
    {
      goto LABEL_36;
    }
  }

  return 1;
}

BOOL operations_research::sat::ModelCopy::CopyLinear(operations_research::sat::ModelCopy *this, const operations_research::sat::ConstraintProto *a2)
{
  v3 = this;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  *(this + 2) = *(this + 1);
  v104 = (this + 32);
  v105 = this + 8;
  *(this + 5) = *(this + 4);
  if (*(a2 + 15) != 12)
  {
    goto LABEL_2;
  }

  while (1)
  {
LABEL_5:
    v9 = *(a2 + 6);
    if (v4 >= *(v9 + 16))
    {
      goto LABEL_17;
    }

    v8 = *(*(v9 + 24) + 4 * v4);
    LODWORD(v109[0]) = v8;
    v111[0] = *(*(v9 + 48) + 8 * v4);
    if (v111[0])
    {
      break;
    }

LABEL_4:
    ++v4;
    if (*(a2 + 15) != 12)
    {
      goto LABEL_2;
    }
  }

  while (1)
  {
    IsFixed = operations_research::sat::PresolveContext::IsFixed(*v3, v8);
    v11 = v111[0];
    if (IsFixed)
    {
      v7 += operations_research::sat::PresolveContext::MinOf(*v3, v109[0]) * v11;
      ++v4;
      if (*(a2 + 15) == 12)
      {
        goto LABEL_5;
      }

      goto LABEL_2;
    }

    v12 = *v3;
    if (v111[0] < 1)
    {
      v16 = operations_research::sat::PresolveContext::MaxOf(v12, v109[0]);
      v17 = v111[0];
      v6 += v16 * v11;
      v5 += operations_research::sat::PresolveContext::MinOf(*v3, v109[0]) * v17;
      v15 = v109[0];
      if ((v109[0] & 0x80000000) == 0)
      {
LABEL_12:
        std::vector<int>::push_back[abi:ne200100](v105, v109);
        std::vector<long long>::push_back[abi:ne200100](v104, v111);
        v3 = this;
        ++v4;
        if (*(a2 + 15) == 12)
        {
          goto LABEL_5;
        }

        goto LABEL_2;
      }
    }

    else
    {
      v13 = operations_research::sat::PresolveContext::MinOf(v12, v109[0]);
      v14 = v111[0];
      v6 += v13 * v11;
      v5 += operations_research::sat::PresolveContext::MaxOf(*v3, v109[0]) * v14;
      v15 = v109[0];
      if ((v109[0] & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    LODWORD(v110[0]) = ~v15;
    std::vector<int>::push_back[abi:ne200100](v105, v110);
    v110[0] = -v111[0];
    std::vector<long long>::push_back[abi:ne200100](v104, v110);
    v3 = this;
    ++v4;
    if (*(a2 + 15) == 12)
    {
      goto LABEL_5;
    }

LABEL_2:
    if (v4 >= off_2810BEE58)
    {
      break;
    }

    v8 = *(off_2810BEE60 + v4);
    LODWORD(v109[0]) = v8;
    v111[0] = *(off_2810BEE78 + v4);
    if (!v111[0])
    {
      goto LABEL_4;
    }
  }

LABEL_17:
  operations_research::Domain::Domain(v111, v6, v5);
  if (*(a2 + 15) == 12)
  {
    v19 = *(a2 + 6);
  }

  else
  {
    v19 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  operations_research::Domain::FromFlatSpanOfIntervals(v19[9], *(v19 + 16), v109, v18);
  operations_research::Domain::Domain(v107, -v7);
  operations_research::Domain::AdditionWith(v110, v109, v107, v20);
  if (v107[0])
  {
    operator delete(__p);
  }

  if (v109[0])
  {
    operator delete(*(&v109[0] + 1));
  }

  if (!operations_research::Domain::IsIncludedIn(v111, v110))
  {
    operations_research::Domain::IntersectionWith(v109, v111, v110);
    IsEmpty = operations_research::Domain::IsEmpty(v109);
    if (v109[0])
    {
      operator delete(*(&v109[0] + 1));
    }

    if (IsEmpty)
    {
      v25 = *(a2 + 4);
      if (!v25)
      {
        v85 = 0;
        goto LABEL_68;
      }

      *(v3 + 20) = *(v3 + 19);
      v26 = *(a2 + 3);
      v27 = 4 * v25;
      do
      {
        v28 = *v26;
        if (!operations_research::sat::PresolveContext::LiteralIsTrue(*v3, *v26))
        {
          LODWORD(v109[0]) = ~v28;
          std::vector<int>::push_back[abi:ne200100](v3 + 152, v109);
        }

        ++v26;
        v27 -= 4;
      }

      while (v27);
      v49 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**v3 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      v50 = v49;
      if (*(v49 + 60) == 3)
      {
        v51 = *(v49 + 48);
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v49);
        *(v50 + 60) = 3;
        v87 = *(v50 + 8);
        if (v87)
        {
          v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
        }

        v51 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v87);
        *(v50 + 48) = v51;
      }

      v88 = *(v51 + 4);
      v90 = *(v3 + 19);
      v89 = *(v3 + 20);
      v91 = v89 - v90;
      v92 = v88 + ((v89 - v90) >> 2);
      if (v92 > *(v51 + 5))
      {
        google::protobuf::RepeatedField<int>::Grow((v51 + 2), v88, v88 + ((v89 - v90) >> 2));
        LODWORD(v88) = *(v51 + 4);
        v93 = v51[3];
        *(v51 + 4) = v92;
        if (v90 != v89)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v93 = v51[3];
        *(v51 + 4) = v92;
        if (v90 != v89)
        {
LABEL_79:
          v94 = (v93 + 4 * v88);
          if ((v91 - 4) < 0x1C)
          {
            goto LABEL_96;
          }

          v95 = 4 * v88 + v93;
          if ((v95 - v90) < 0x20)
          {
            goto LABEL_96;
          }

          v96 = ((v91 - 4) >> 2) + 1;
          v97 = 4 * (v96 & 0x7FFFFFFFFFFFFFF8);
          v94 = (v94 + v97);
          v98 = &v90[v97];
          v99 = (v90 + 16);
          v100 = (v95 + 16);
          v101 = v96 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v102 = *v99;
            *(v100 - 1) = *(v99 - 1);
            *v100 = v102;
            v99 += 2;
            v100 += 2;
            v101 -= 8;
          }

          while (v101);
          v90 = v98;
          if (v96 != (v96 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_96:
            do
            {
              v103 = *v90;
              v90 += 4;
              *v94++ = v103;
            }

            while (v90 != v89);
          }
        }
      }

      v85 = *(v3 + 19) != *(v3 + 20);
      goto LABEL_68;
    }

    v29 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**v3 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    v30 = v29;
    v31 = *(v29 + 16);
    v32 = (v29 + 16);
    v34 = *(v3 + 12);
    v33 = *(v3 + 13);
    v35 = v33 - v34;
    v36 = v31 + ((v33 - v34) >> 2);
    if (v36 > *(v29 + 20))
    {
      google::protobuf::RepeatedField<int>::Grow(v29 + 16, v31, v31 + ((v33 - v34) >> 2));
      LODWORD(v31) = *v32;
      v37 = *(v30 + 24);
      *(v30 + 16) = v36;
      if (v34 == v33)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v37 = *(v29 + 24);
      *(v29 + 16) = v36;
      if (v34 == v33)
      {
        goto LABEL_43;
      }
    }

    v38 = (v37 + 4 * v31);
    if ((v35 - 4) < 0x1C)
    {
      goto LABEL_97;
    }

    v39 = 4 * v31 + v37;
    if ((v39 - v34) < 0x20)
    {
      goto LABEL_97;
    }

    v40 = ((v35 - 4) >> 2) + 1;
    v41 = 4 * (v40 & 0x7FFFFFFFFFFFFFF8);
    v38 = (v38 + v41);
    v42 = &v34[v41];
    v43 = (v34 + 16);
    v44 = (v39 + 16);
    v45 = v40 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v46 = *v43;
      *(v44 - 1) = *(v43 - 1);
      *v44 = v46;
      v43 += 2;
      v44 += 2;
      v45 -= 8;
    }

    while (v45);
    v34 = v42;
    if (v40 != (v40 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_97:
      do
      {
        v47 = *v34;
        v34 += 4;
        *v38++ = v47;
      }

      while (v34 != v33);
    }

LABEL_43:
    if (*(v30 + 60) == 12)
    {
      v48 = *(v30 + 48);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v30);
      *(v30 + 60) = 12;
      v52 = *(v30 + 8);
      if (v52)
      {
        v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
      }

      v48 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v52);
      *(v30 + 48) = v48;
    }

    v53 = *(v48 + 4);
    v55 = *(v3 + 1);
    v54 = *(v3 + 2);
    v56 = v54 - v55;
    v57 = v53 + ((v54 - v55) >> 2);
    if (v57 > *(v48 + 5))
    {
      google::protobuf::RepeatedField<int>::Grow((v48 + 2), v53, v53 + ((v54 - v55) >> 2));
      LODWORD(v53) = *(v48 + 4);
      v58 = v48[3];
      *(v48 + 4) = v57;
      if (v55 == v54)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v58 = v48[3];
      *(v48 + 4) = v57;
      if (v55 == v54)
      {
        goto LABEL_58;
      }
    }

    v59 = (v58 + 4 * v53);
    if ((v56 - 4) < 0x1C)
    {
      goto LABEL_98;
    }

    v60 = 4 * v53 + v58;
    if ((v60 - v55) < 0x20)
    {
      goto LABEL_98;
    }

    v61 = ((v56 - 4) >> 2) + 1;
    v62 = 4 * (v61 & 0x7FFFFFFFFFFFFFF8);
    v59 = (v59 + v62);
    v63 = &v55[v62];
    v64 = (v55 + 16);
    v65 = (v60 + 16);
    v66 = v61 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v67 = *v64;
      *(v65 - 1) = *(v64 - 1);
      *v65 = v67;
      v64 += 2;
      v65 += 2;
      v66 -= 8;
    }

    while (v66);
    v55 = v63;
    if (v61 != (v61 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_98:
      do
      {
        v68 = *v55;
        v55 += 4;
        *v59++ = v68;
      }

      while (v55 != v54);
    }

LABEL_58:
    v69 = *(v48 + 10);
    v71 = *(v3 + 4);
    v70 = *(v3 + 5);
    v72 = v70 - v71;
    v73 = v69 + ((v70 - v71) >> 3);
    if (v73 > *(v48 + 11))
    {
      google::protobuf::RepeatedField<long long>::Grow((v48 + 5), v69, v69 + ((v70 - v71) >> 3));
      LODWORD(v69) = *(v48 + 10);
      v74 = v48[6];
      *(v48 + 10) = v73;
      if (v71 != v70)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v74 = v48[6];
      *(v48 + 10) = v73;
      if (v71 != v70)
      {
LABEL_60:
        v75 = (v74 + 8 * v69);
        if ((v72 - 8) < 0x38)
        {
          goto LABEL_99;
        }

        v76 = 8 * v69 + v74;
        if ((v76 - v71) < 0x20)
        {
          goto LABEL_99;
        }

        v77 = ((v72 - 8) >> 3) + 1;
        v78 = 8 * (v77 & 0x3FFFFFFFFFFFFFFCLL);
        v75 = (v75 + v78);
        v79 = &v71[v78];
        v80 = (v71 + 16);
        v81 = (v76 + 16);
        v82 = v77 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v83 = *v80;
          *(v81 - 1) = *(v80 - 1);
          *v81 = v83;
          v80 += 2;
          v81 += 2;
          v82 -= 4;
        }

        while (v82);
        v71 = v79;
        if (v77 != (v77 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_99:
          do
          {
            v84 = *v71;
            v71 += 8;
            *v75++ = v84;
          }

          while (v71 != v70);
        }
      }
    }

    operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(v110, v48);
    goto LABEL_67;
  }

  v23 = *v3;
  BYTE7(v109[1]) = 19;
  strcpy(v109, "linear: always true");
  operations_research::sat::PresolveContext::UpdateRuleStats(v23, v109, 1, v21, v22);
  if (SBYTE7(v109[1]) < 0)
  {
    operator delete(*&v109[0]);
  }

LABEL_67:
  v85 = 1;
LABEL_68:
  if (v110[0])
  {
    operator delete(v110[1]);
  }

  if (v111[0])
  {
    operator delete(v111[1]);
  }

  return v85;
}

void sub_23CABB31C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, void *a15, void *a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, void *__p, uint64_t a24, char a25, void *a26)
{
  if (a22)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

BOOL operations_research::sat::ModelCopy::CopyAtMostOne(operations_research::sat::ModelCopy *this, const operations_research::sat::ConstraintProto *a2)
{
  v2 = this + 152;
  *(this + 20) = *(this + 19);
  v3 = *(a2 + 6);
  if (*(a2 + 15) != 26)
  {
    v3 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  }

  v4 = *(v3 + 4);
  if (!v4)
  {
    return 1;
  }

  v6 = 0;
  v7 = v3[3];
  v8 = 4 * v4;
  do
  {
    v51 = *v7;
    if (!operations_research::sat::PresolveContext::LiteralIsFalse(*this, v51))
    {
      std::vector<int>::push_back[abi:ne200100](v2, &v51);
      v6 += operations_research::sat::PresolveContext::LiteralIsTrue(*this, v51);
    }

    ++v7;
    v8 -= 4;
  }

  while (v8);
  v9 = *(this + 20) - *(this + 19);
  result = v9 < 5;
  if (v9 >= 5 && v6 <= 1)
  {
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    v13 = v12;
    v15 = (v12 + 16);
    v14 = *(v12 + 16);
    v17 = *(this + 12);
    v16 = *(this + 13);
    v18 = v16 - v17;
    v19 = v14 + ((v16 - v17) >> 2);
    if (v19 > *(v12 + 20))
    {
      google::protobuf::RepeatedField<int>::Grow(v12 + 16, v14, v14 + ((v16 - v17) >> 2));
      LODWORD(v14) = *v15;
      v20 = *(v13 + 24);
      *(v13 + 16) = v19;
      if (v17 == v16)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v20 = *(v12 + 24);
      *(v12 + 16) = v19;
      if (v17 == v16)
      {
        goto LABEL_21;
      }
    }

    v21 = (v20 + 4 * v14);
    if ((v18 - 4) < 0x1C)
    {
      goto LABEL_42;
    }

    v22 = 4 * v14 + v20;
    if ((v22 - v17) < 0x20)
    {
      goto LABEL_42;
    }

    v23 = ((v18 - 4) >> 2) + 1;
    v24 = 4 * (v23 & 0x7FFFFFFFFFFFFFF8);
    v21 = (v21 + v24);
    v25 = &v17[v24];
    v26 = (v17 + 16);
    v27 = (v22 + 16);
    v28 = v23 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v29 = *v26;
      *(v27 - 1) = *(v26 - 1);
      *v27 = v29;
      v26 += 2;
      v27 += 2;
      v28 -= 8;
    }

    while (v28);
    v17 = v25;
    if (v23 != (v23 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_42:
      do
      {
        v30 = *v17;
        v17 += 4;
        *v21++ = v30;
      }

      while (v17 != v16);
    }

LABEL_21:
    if (*(v13 + 60) == 26)
    {
      v31 = *(v13 + 48);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v13);
      *(v13 + 60) = 26;
      v32 = *(v13 + 8);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v32);
      *(v13 + 48) = v31;
    }

    v33 = *(v31 + 4);
    v34 = v31 + 2;
    v36 = *(this + 19);
    v35 = *(this + 20);
    v37 = v35 - v36;
    v38 = v33 + ((v35 - v36) >> 2);
    if (v38 > *(v31 + 5))
    {
      v50 = v31;
      google::protobuf::RepeatedField<int>::Grow((v31 + 2), v33, v33 + ((v35 - v36) >> 2));
      LODWORD(v33) = *v34;
      v39 = v50[3];
      *(v50 + 4) = v38;
      if (v36 != v35)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v39 = v31[3];
      *(v31 + 4) = v38;
      if (v36 != v35)
      {
LABEL_28:
        v40 = (v39 + 4 * v33);
        if ((v37 - 4) < 0x1C)
        {
          goto LABEL_43;
        }

        v41 = 4 * v33 + v39;
        if ((v41 - v36) < 0x20)
        {
          goto LABEL_43;
        }

        v42 = ((v37 - 4) >> 2) + 1;
        v43 = 4 * (v42 & 0x7FFFFFFFFFFFFFF8);
        v40 = (v40 + v43);
        v44 = &v36[v43];
        v45 = (v36 + 16);
        v46 = (v41 + 16);
        v47 = v42 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v48 = *v45;
          *(v46 - 1) = *(v45 - 1);
          *v46 = v48;
          v45 += 2;
          v46 += 2;
          v47 -= 8;
        }

        while (v47);
        v36 = v44;
        if (v42 != (v42 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_43:
          do
          {
            v49 = *v36;
            v36 += 4;
            *v40++ = v49;
          }

          while (v36 != v35);
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t operations_research::sat::ModelCopy::CopyExactlyOne(operations_research::sat::ModelCopy *this, const operations_research::sat::ConstraintProto *a2)
{
  v2 = this + 152;
  *(this + 20) = *(this + 19);
  v3 = *(a2 + 6);
  if (*(a2 + 15) != 29)
  {
    v3 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  }

  v4 = *(v3 + 4);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  v7 = v3[3];
  v8 = 4 * v4;
  do
  {
    v56 = *v7;
    if (!operations_research::sat::PresolveContext::LiteralIsFalse(*this, v56))
    {
      std::vector<int>::push_back[abi:ne200100](v2, &v56);
      v6 += operations_research::sat::PresolveContext::LiteralIsTrue(*this, v56);
    }

    ++v7;
    v8 -= 4;
  }

  while (v8);
  v9 = *(this + 19);
  v10 = *(this + 20);
  if (v9 == v10 || v6 >= 2)
  {
    return 0;
  }

  if (v10 - v9 == 4 && v6 == 1)
  {
    return 1;
  }

  v14 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v15 = v14;
  v17 = (v14 + 16);
  v16 = *(v14 + 16);
  v19 = *(this + 12);
  v18 = *(this + 13);
  v20 = v18 - v19;
  v21 = v16 + ((v18 - v19) >> 2);
  if (v21 > *(v14 + 20))
  {
    v54 = v16 + ((v18 - v19) >> 2);
    v52 = *(this + 13);
    v53 = *(this + 12);
    google::protobuf::RepeatedField<int>::Grow(v14 + 16, v16, v21);
    v19 = v53;
    v18 = v52;
    LODWORD(v16) = *v17;
    v22 = *(v15 + 24);
    *(v15 + 16) = v54;
    if (v53 == v52)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v22 = *(v14 + 24);
    *(v14 + 16) = v21;
    if (v19 == v18)
    {
      goto LABEL_25;
    }
  }

  v23 = (v22 + 4 * v16);
  if ((v20 - 4) < 0x1C)
  {
    goto LABEL_45;
  }

  v24 = 4 * v16 + v22;
  if ((v24 - v19) < 0x20)
  {
    goto LABEL_45;
  }

  v25 = ((v20 - 4) >> 2) + 1;
  v26 = 4 * (v25 & 0x7FFFFFFFFFFFFFF8);
  v23 = (v23 + v26);
  v27 = &v19[v26];
  v28 = (v19 + 16);
  v29 = (v24 + 16);
  v30 = v25 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v31 = *v28;
    *(v29 - 1) = *(v28 - 1);
    *v29 = v31;
    v28 += 2;
    v29 += 2;
    v30 -= 8;
  }

  while (v30);
  v19 = v27;
  if (v25 != (v25 & 0x7FFFFFFFFFFFFFF8))
  {
LABEL_45:
    do
    {
      v32 = *v19;
      v19 += 4;
      *v23++ = v32;
    }

    while (v19 != v18);
  }

LABEL_25:
  if (*(v15 + 60) == 29)
  {
    v33 = *(v15 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v15);
    *(v15 + 60) = 29;
    v34 = *(v15 + 8);
    if (v34)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    v33 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v34);
    *(v15 + 48) = v33;
  }

  v35 = *(v33 + 4);
  v36 = v33 + 2;
  v38 = *(this + 19);
  v37 = *(this + 20);
  v39 = v37 - v38;
  v40 = v35 + ((v37 - v38) >> 2);
  if (v40 > *(v33 + 5))
  {
    v55 = v33;
    google::protobuf::RepeatedField<int>::Grow((v33 + 2), v35, v35 + ((v37 - v38) >> 2));
    LODWORD(v35) = *v36;
    v41 = v55[3];
    *(v55 + 4) = v40;
    if (v38 != v37)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v41 = v33[3];
    *(v33 + 4) = v40;
    if (v38 != v37)
    {
LABEL_32:
      v42 = (v41 + 4 * v35);
      if ((v39 - 4) < 0x1C)
      {
        goto LABEL_46;
      }

      v43 = 4 * v35 + v41;
      if ((v43 - v38) < 0x20)
      {
        goto LABEL_46;
      }

      v44 = ((v39 - 4) >> 2) + 1;
      v45 = 4 * (v44 & 0x7FFFFFFFFFFFFFF8);
      v42 = (v42 + v45);
      v46 = &v38[v45];
      v47 = (v38 + 16);
      v48 = (v43 + 16);
      v49 = v44 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v50 = *v47;
        *(v48 - 1) = *(v47 - 1);
        *v48 = v50;
        v47 += 2;
        v48 += 2;
        v49 -= 8;
      }

      while (v49);
      v38 = v46;
      if (v44 != (v44 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_46:
        do
        {
          v51 = *v38;
          v38 += 4;
          *v42++ = v51;
        }

        while (v38 != v37);
      }
    }
  }

  return 1;
}

uint64_t operations_research::sat::ModelCopy::CopyInterval(operations_research::sat::ModelCopy *this, const operations_research::sat::IntervalConstraintProto **a2, unsigned int a3, char a4)
{
  v30 = a3;
  v5 = *(this + 22);
  if (v5)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v5, 0, "starting_constraint_index_ == 0");
  }

  v8 = *(**this + 56);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(this + 7, &v30, v31);
  if (v33 == 1)
  {
    *v32 = v30;
  }

  *(v32 + 4) = v8;
  v9 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  if ((a4 & 1) == 0)
  {
    operations_research::sat::ConstraintProto::CopyFrom(v9, a2);
    return 1;
  }

  v10 = v9;
  if (v9 != a2)
  {
    *(v9 + 16) = 0;
    v11 = *(a2 + 4);
    if (v11)
    {
      if (*(v9 + 20) < v11)
      {
        google::protobuf::RepeatedField<int>::Grow(v9 + 16, 0, *(a2 + 4));
        v9 = v10;
        v12 = *(v10 + 16);
        v13 = *(v10 + 24);
        *(v10 + 16) = v12 + v11;
        if (v11 >= 1)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v12 = 0;
        v13 = *(v9 + 24);
        *(v9 + 16) = v11;
        if (v11 >= 1)
        {
LABEL_9:
          v14 = a2[3];
          v15 = (v13 + 4 * v12);
          if (v11 < 8)
          {
            goto LABEL_14;
          }

          v16 = 4 * v12 + v13;
          if ((v16 - v14) < 0x20)
          {
            goto LABEL_14;
          }

          v17 = v11;
          v18 = v11 & 0x7FFFFFF8;
          LODWORD(v11) = v11 - (v11 & 0x7FFFFFF8);
          v15 += v18;
          v19 = (v14 + 4 * v18);
          v20 = (v14 + 16);
          v21 = (v16 + 16);
          v22 = v18;
          do
          {
            v23 = *v20;
            *(v21 - 1) = *(v20 - 1);
            *v21 = v23;
            v20 += 2;
            v21 += 2;
            v22 -= 8;
          }

          while (v22);
          v14 = v19;
          if (v18 != v17)
          {
LABEL_14:
            v24 = v11 + 1;
            do
            {
              v25 = *v14;
              v14 = (v14 + 4);
              *v15++ = v25;
              --v24;
            }

            while (v24 > 1);
          }
        }
      }
    }
  }

  if (*(a2 + 15) == 19)
  {
    v26 = a2[6];
  }

  else
  {
    v26 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
  }

  if (*(v9 + 60) == 19)
  {
    v27 = *(v9 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v10);
    *(v10 + 60) = 19;
    v29 = *(v10 + 8);
    if (v29)
    {
      v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntervalConstraintProto>(v29);
    *(v10 + 48) = v27;
  }

  operations_research::sat::IntervalConstraintProto::CopyFrom(v27, v26);
  return 1;
}

uint64_t operations_research::sat::ModelCopy::AddLinearConstraintForInterval(operations_research::sat::PresolveContext **this, const operations_research::sat::ConstraintProto *a2)
{
  if (*(a2 + 15) == 19)
  {
    v4 = *(a2 + 6);
  }

  else
  {
    v4 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
  }

  v5 = v4[5];
  if (v5)
  {
    v6 = v4[5];
  }

  else
  {
    v6 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  if (*(v6 + 4) || (v4[3] ? (v7 = v4[3]) : (v7 = &operations_research::sat::_LinearExpressionProto_default_instance_), (v8 = (v7[8] + v6[8]), v4[4]) ? (v9 = v4[4]) : (v9 = &operations_research::sat::_LinearExpressionProto_default_instance_), v8 != v9[8] || (v10 = *(v7 + 4), v10 != *(v9 + 4)) || memcmp(v7[3], v9[3], 4 * v10) || (v11 = *(v7 + 10), v11 != *(v9 + 10)) || memcmp(v7[6], v9[6], 8 * v11)))
  {
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    v15 = v12;
    if (v12 != a2)
    {
      *(v12 + 16) = 0;
      v16 = *(a2 + 4);
      if (v16)
      {
        if (*(v12 + 20) < v16)
        {
          google::protobuf::RepeatedField<int>::Grow(v12 + 16, 0, *(a2 + 4));
          v17 = *(v15 + 16);
          v18 = *(v15 + 24);
          *(v15 + 16) = v17 + v16;
          if (v16 < 1)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v17 = 0;
          v18 = *(v12 + 24);
          *(v12 + 16) = v16;
          if (v16 < 1)
          {
            goto LABEL_30;
          }
        }

        v19 = *(a2 + 3);
        v20 = (v18 + 4 * v17);
        if (v16 < 8)
        {
          goto LABEL_28;
        }

        v21 = (4 * v17 + v18);
        if ((v21 - v19) < 0x20)
        {
          goto LABEL_28;
        }

        v22 = v16;
        v23 = v16 & 0x7FFFFFF8;
        LODWORD(v16) = v16 - (v16 & 0x7FFFFFF8);
        v20 += v23;
        v24 = (v19 + 4 * v23);
        v25 = v19 + 1;
        v26 = v21 + 1;
        v27 = v23;
        do
        {
          v14 = v25[-1];
          v28 = *v25;
          v26[-1] = v14;
          *v26 = v28;
          v25 += 2;
          v26 += 2;
          v27 -= 8;
        }

        while (v27);
        v19 = v24;
        if (v23 != v22)
        {
LABEL_28:
          v29 = v16 + 1;
          do
          {
            v30 = v19->n128_u32[0];
            v19 = (v19 + 4);
            *v20++ = v30;
            --v29;
          }

          while (v29 > 1);
        }
      }
    }

LABEL_30:
    if (*(v15 + 60) == 12)
    {
      v31 = *(v15 + 48);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v15);
      *(v15 + 60) = 12;
      v32 = *(v15 + 8);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v32);
      *(v15 + 48) = v31;
    }

    v34 = *(v31 + 16);
    v33 = *(v31 + 17);
    if (v34 == v33)
    {
      google::protobuf::RepeatedField<long long>::Grow((v31 + 8), v33, (v33 + 1));
      v108 = *(v31 + 16);
      v33 = *(v31 + 17);
      v35 = v31[9];
      v36 = v108 + 1;
      *(v31 + 16) = v108 + 1;
      *(v35 + 8 * v108) = 0;
      if (v108 + 1 != v33)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v35 = v31[9];
      v36 = v34 + 1;
      *(v31 + 16) = v34 + 1;
      *(v35 + 8 * v34) = 0;
      if (v34 + 1 != v33)
      {
LABEL_37:
        *(v31 + 16) = v36 + 1;
        *(v35 + 8 * v36) = 0;
        if (v4[3])
        {
          v37 = v4[3];
        }

        else
        {
          v37 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        operations_research::sat::AddLinearExpressionToLinearConstraint(v37, 1, v31, v13, v14);
        if (v4[5])
        {
          v40 = v4[5];
        }

        else
        {
          v40 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        operations_research::sat::AddLinearExpressionToLinearConstraint(v40, 1, v31, v38, v39);
        if (v4[4])
        {
          v43 = v4[4];
        }

        else
        {
          v43 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        operations_research::sat::AddLinearExpressionToLinearConstraint(v43, 0xFFFFFFFFFFFFFFFFLL, v31, v41, v42);
        v5 = v4[5];
        goto LABEL_47;
      }
    }

    google::protobuf::RepeatedField<long long>::Grow((v31 + 8), v33, (v33 + 1));
    v36 = *(v31 + 16);
    v35 = v31[9];
    goto LABEL_37;
  }

LABEL_47:
  if (!v5)
  {
    v5 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  result = operations_research::sat::PresolveContext::MinOf(*this, v5);
  if (result < 0)
  {
    v45 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    v46 = v45;
    if (v45 != a2)
    {
      *(v45 + 16) = 0;
      v47 = *(a2 + 4);
      if (v47)
      {
        if (*(v45 + 20) < v47)
        {
          google::protobuf::RepeatedField<int>::Grow(v45 + 16, 0, *(a2 + 4));
          v48 = *(v46 + 16);
          v49 = *(v46 + 24);
          *(v46 + 16) = v48 + v47;
          if (v47 < 1)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v48 = 0;
          v49 = *(v45 + 24);
          *(v45 + 16) = v47;
          if (v47 < 1)
          {
            goto LABEL_61;
          }
        }

        v50 = *(a2 + 3);
        v51 = (v49 + 4 * v48);
        if (v47 < 8)
        {
          goto LABEL_59;
        }

        v52 = 4 * v48 + v49;
        if ((v52 - v50) < 0x20)
        {
          goto LABEL_59;
        }

        v53 = v47;
        v54 = v47 & 0x7FFFFFF8;
        LODWORD(v47) = v47 - (v47 & 0x7FFFFFF8);
        v51 += v54;
        v55 = &v50[v54];
        v56 = (v50 + 4);
        v57 = (v52 + 16);
        v58 = v54;
        do
        {
          v59 = *v56;
          *(v57 - 1) = *(v56 - 1);
          *v57 = v59;
          v56 += 2;
          v57 += 2;
          v58 -= 8;
        }

        while (v58);
        v50 = v55;
        if (v54 != v53)
        {
LABEL_59:
          v60 = v47 + 1;
          do
          {
            v61 = *v50++;
            *v51++ = v61;
            --v60;
          }

          while (v60 > 1);
        }
      }
    }

LABEL_61:
    if (*(v46 + 60) == 12)
    {
      v62 = *(v46 + 48);
      if (v62 == v5)
      {
        goto LABEL_76;
      }
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v46);
      *(v46 + 60) = 12;
      v63 = *(v46 + 8);
      if (v63)
      {
        v62 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(*(v63 & 0xFFFFFFFFFFFFFFFELL));
        *(v46 + 48) = v62;
        if (v62 == v5)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v62 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v63);
        *(v46 + 48) = v62;
        if (v62 == v5)
        {
          goto LABEL_76;
        }
      }
    }

    *(v62 + 4) = 0;
    v64 = *(v5 + 4);
    if (!v64)
    {
      goto LABEL_76;
    }

    if (*(v62 + 5) < v64)
    {
      v111 = v62;
      google::protobuf::RepeatedField<int>::Grow((v62 + 2), 0, *(v5 + 4));
      v65 = *(v111 + 4);
      v66 = v111[3];
      *(v111 + 4) = v65 + v64;
      if (v64 < 1)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v65 = 0;
      v66 = v62[3];
      *(v62 + 4) = v64;
      if (v64 < 1)
      {
        goto LABEL_76;
      }
    }

    v67 = v5[3];
    v68 = v66 + v65;
    if (v64 < 8)
    {
      goto LABEL_74;
    }

    v69 = v66 + 4 * v65;
    if ((v69 - v67) < 0x20)
    {
      goto LABEL_74;
    }

    v70 = v64;
    v71 = v64 & 0x7FFFFFF8;
    LODWORD(v64) = v64 - (v64 & 0x7FFFFFF8);
    v68 += v71;
    v72 = (v67 + 4 * v71);
    v73 = (v67 + 2);
    v74 = (v69 + 16);
    v75 = v71;
    do
    {
      v76 = *v73;
      *(v74 - 1) = *(v73 - 1);
      *v74 = v76;
      v73 += 2;
      v74 += 2;
      v75 -= 8;
    }

    while (v75);
    v67 = v72;
    if (v71 != v70)
    {
LABEL_74:
      v77 = v64 + 1;
      do
      {
        v78 = *v67;
        v67 = (v67 + 4);
        *v68++ = v78;
        --v77;
      }

      while (v77 > 1);
    }

LABEL_76:
    if (*(v46 + 60) == 12)
    {
      v79 = *(v46 + 48);
      if (v79 == v5)
      {
        goto LABEL_91;
      }
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v46);
      *(v46 + 60) = 12;
      v80 = *(v46 + 8);
      if (v80)
      {
        v79 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(*(v80 & 0xFFFFFFFFFFFFFFFELL));
        *(v46 + 48) = v79;
        if (v79 == v5)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v79 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v80);
        *(v46 + 48) = v79;
        if (v79 == v5)
        {
          goto LABEL_91;
        }
      }
    }

    *(v79 + 10) = 0;
    v81 = *(v5 + 10);
    if (v81)
    {
      if (*(v79 + 11) < v81)
      {
        v112 = v79;
        google::protobuf::RepeatedField<long long>::Grow((v79 + 5), 0, *(v5 + 10));
        v82 = *(v112 + 10);
        v83 = v112[6];
        *(v112 + 10) = v82 + v81;
        if (v81 < 1)
        {
          goto LABEL_91;
        }

LABEL_84:
        v84 = v5[6];
        v85 = &v83[v82];
        if (v81 < 8)
        {
          goto LABEL_89;
        }

        v86 = &v83[v82];
        if ((v86 - v84) < 0x20)
        {
          goto LABEL_89;
        }

        v87 = v81;
        v88 = v81 & 0x7FFFFFFC;
        LODWORD(v81) = v81 - (v81 & 0x7FFFFFFC);
        v85 += v88;
        v89 = &v84[v88];
        v90 = (v84 + 2);
        v91 = v86 + 2;
        v92 = v88;
        do
        {
          v93 = *v90;
          *(v91 - 1) = *(v90 - 1);
          *v91 = v93;
          v90 += 2;
          v91 += 2;
          v92 -= 4;
        }

        while (v92);
        v84 = v89;
        if (v88 != v87)
        {
LABEL_89:
          v94 = v81 + 1;
          do
          {
            v95 = *v84++;
            *v85++ = v95;
            --v94;
          }

          while (v94 > 1);
        }

        goto LABEL_91;
      }

      v82 = 0;
      v83 = v79[6];
      *(v79 + 10) = v81;
      if (v81 >= 1)
      {
        goto LABEL_84;
      }
    }

LABEL_91:
    if (*(v46 + 60) == 12)
    {
      v96 = *(v46 + 48);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v46);
      *(v46 + 60) = 12;
      v97 = *(v46 + 8);
      if (v97)
      {
        v97 = *(v97 & 0xFFFFFFFFFFFFFFFELL);
      }

      v96 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v97);
      *(v46 + 48) = v96;
    }

    v98 = -v5[8];
    v100 = *(v96 + 16);
    v99 = *(v96 + 17);
    v101 = (v96 + 8);
    if (v100 == v99)
    {
      v109 = v96;
      google::protobuf::RepeatedField<long long>::Grow((v96 + 8), v99, (v99 + 1));
      v96 = v109;
      v100 = *v101;
    }

    v102 = v96[9];
    *(v96 + 16) = v100 + 1;
    *(v102 + 8 * v100) = v98;
    if (*(v46 + 60) == 12)
    {
      result = *(v46 + 48);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v46);
      *(v46 + 60) = 12;
      v103 = *(v46 + 8);
      if (v103)
      {
        v103 = *(v103 & 0xFFFFFFFFFFFFFFFELL);
      }

      result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v103);
      *(v46 + 48) = result;
    }

    v105 = *(result + 64);
    v104 = *(result + 68);
    v106 = (result + 64);
    if (v105 == v104)
    {
      v110 = result;
      google::protobuf::RepeatedField<long long>::Grow(result + 64, v104, (v104 + 1));
      result = v110;
      v105 = *v106;
    }

    v107 = *(result + 72);
    *(result + 64) = v105 + 1;
    *(v107 + 8 * v105) = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}