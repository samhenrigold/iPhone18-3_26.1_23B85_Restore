void sub_23CA9365C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, void *__p, uint64_t a33, uint64_t a34, void *a35)
{
  if (*(v35 - 121) < 0)
  {
    operator delete(*(v35 - 144));
  }

  absl::lts_20240722::flat_hash_map<long long,std::vector<operations_research::sat::LinearExpressionProto>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<operations_research::sat::LinearExpressionProto>>>>::~flat_hash_map(&a34);
  if (*(v35 - 200))
  {
    operator delete(*(v35 - 192));
  }

  std::vector<operations_research::sat::LinearExpressionProto>::~vector[abi:ne200100]((v35 - 176));
  _Unwind_Resume(a1);
}

void *operations_research::sat::ConstraintProto::mutable_all_diff(operations_research::sat::ConstraintProto *this)
{
  if (*(this + 15) == 13)
  {
    return *(this + 6);
  }

  operations_research::sat::ConstraintProto::clear_constraint(this);
  *(this + 15) = 13;
  v3 = *(this + 1);
  if (v3)
  {
    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::AllDifferentConstraintProto>(*(v3 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::AllDifferentConstraintProto>(v3);
  }

  *(this + 6) = result;
  return result;
}

void *absl::lts_20240722::flat_hash_map<long long,std::vector<operations_research::sat::LinearExpressionProto>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<operations_research::sat::LinearExpressionProto>>>>::~flat_hash_map(void *a1)
{
  if (*a1)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<operations_research::sat::LinearExpressionProto>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<operations_research::sat::LinearExpressionProto>>>>::destroy_slots(a1);
    operator delete((a1[2] - (a1[1] & 1) - 8));
  }

  return a1;
}

uint64_t operations_research::sat::CpModelPresolver::PresolveNoOverlap(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  if (*(*(this + 1) + 416))
  {
    return 0;
  }

  if (*(a2 + 15) == 20)
  {
    v4 = *(a2 + 6);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(a2);
    *(a2 + 15) = 20;
    v5 = *(a2 + 1);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlapConstraintProto>(v5);
    *(a2 + 6) = v4;
  }

  v105 = xmmword_23CE306D0;
  *v102 = xmmword_23CE306D0;
  v6 = *(v4 + 4);
  if (v6)
  {
    v7 = v4[3];
    v8 = 4 * v6;
    do
    {
      v101 = *v7;
      if ((operations_research::sat::PresolveContext::ConstraintIsInactive(*(this + 1), v101) & 1) == 0)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v105, &v101, &__p);
        if (LOBYTE(v100[1]) == 1 || (absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v102, &v101, &__p), LOBYTE(v100[1]) == 1))
        {
          *v100[0] = v101;
        }
      }

      ++v7;
      v8 -= 4;
    }

    while (v8);
    v9 = *(v4 + 4);
    if (v105 > 1)
    {
      absl::lts_20240722::container_internal::ClearBackingArray(&v105, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value, v105 < 0x80, 1u);
      v98 = (v4 + 2);
      v97 = v9;
      if (v9 >= 1)
      {
LABEL_17:
        v10 = 0;
        v11 = 0;
        v12 = 1;
        while (1)
        {
          v101 = *(v4[3] + 4 * v10);
          if (operations_research::sat::PresolveContext::ConstraintIsInactive(*(this + 1), v101))
          {
            goto LABEL_18;
          }

          if (v102[0] > 1)
          {
            v20 = 0;
            _X10 = v103;
            __asm { PRFM            #4, [X10] }

            v27 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v101) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v101));
            v28 = vdup_n_s8(v27 & 0x7F);
            v29 = ((v27 >> 7) ^ (v103 >> 12)) & v102[0];
            v30 = *(v103 + v29);
            v31 = vceq_s8(v30, v28);
            if (!v31)
            {
              goto LABEL_32;
            }

LABEL_30:
            while (*(v104 + 4 * ((v29 + (__clz(__rbit64(v31)) >> 3)) & v102[0])) != v101)
            {
              v31 &= ((v31 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v31)
              {
LABEL_32:
                while (!*&vceq_s8(v30, 0x8080808080808080))
                {
                  v20 += 8;
                  v29 = (v20 + v29) & v102[0];
                  v30 = *(v103 + v29);
                  v31 = vceq_s8(v30, v28);
                  if (v31)
                  {
                    goto LABEL_30;
                  }
                }

                goto LABEL_73;
              }
            }
          }

          else if (v102[1] < 2 || v103 != v101)
          {
            goto LABEL_73;
          }

          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v105, &v101, &__p);
          if ((v100[1] & 1) == 0)
          {
LABEL_18:
            v12 = ++v10 < v9;
            if (v10 == v9)
            {
              goto LABEL_78;
            }
          }

          else
          {
            v13 = v101;
            *v100[0] = v101;
            v14 = *(this + 1);
            v15 = (*v14 + 48);
            if (*v15)
            {
              v15 = (*v15 + 8 * v13 + 7);
            }

            v16 = *v15;
            if (operations_research::sat::PresolveContext::SizeMin(v14, v13) >= 1)
            {
              if (operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, v16, v17, v18, v19))
              {
                operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v101);
                operator new();
              }

              goto LABEL_83;
            }

            if (operations_research::sat::PresolveContext::SizeMax(*(this + 1), v101) >= 1)
            {
              if (operations_research::sat::PresolveContext::ConstraintIsOptional(*(this + 1), v101))
              {
                v32 = **(v16 + 24);
                v33 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
                v36 = v33;
                v38 = *(v33 + 16);
                v37 = *(v33 + 20);
                v39 = (v33 + 16);
                if (v38 == v37)
                {
                  google::protobuf::RepeatedField<int>::Grow(v33 + 16, v37, (v37 + 1));
                  v38 = *v39;
                }

                v40 = *(v36 + 24);
                *(v36 + 16) = v38 + 1;
                *(v40 + 4 * v38) = v32;
                if (*(v36 + 60) == 12)
                {
                  v41 = *(v36 + 48);
                }

                else
                {
                  operations_research::sat::ConstraintProto::clear_constraint(v36);
                  *(v36 + 60) = 12;
                  v47 = *(v36 + 8);
                  if (v47)
                  {
                    v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  v41 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v47);
                  *(v36 + 48) = v41;
                }

                v49 = *(v41 + 16);
                v48 = *(v41 + 17);
                if (v49 == v48)
                {
                  google::protobuf::RepeatedField<long long>::Grow((v41 + 8), v48, (v48 + 1));
                  v49 = *(v41 + 16);
                }

                v50 = v41[9];
                *(v41 + 16) = v49 + 1;
                *(v50 + 8 * v49) = 0;
                if (*(v36 + 60) == 12)
                {
                  v51 = *(v36 + 48);
                }

                else
                {
                  operations_research::sat::ConstraintProto::clear_constraint(v36);
                  *(v36 + 60) = 12;
                  v52 = *(v36 + 8);
                  if (v52)
                  {
                    v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  v51 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v52);
                  *(v36 + 48) = v51;
                }

                v54 = *(v51 + 16);
                v53 = *(v51 + 17);
                if (v54 == v53)
                {
                  google::protobuf::RepeatedField<long long>::Grow((v51 + 8), v53, (v53 + 1));
                  v54 = *(v51 + 16);
                }

                v55 = v51[9];
                *(v51 + 16) = v54 + 1;
                *(v55 + 8 * v54) = 0;
                v56 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
                if (*(v16 + 60) == 19)
                {
                  v56 = *(v16 + 48);
                }

                v57 = v56[5];
                if (v57)
                {
                  v58 = v57;
                }

                else
                {
                  v58 = &operations_research::sat::_LinearExpressionProto_default_instance_;
                }

                if (*(v36 + 60) == 12)
                {
                  v59 = *(v36 + 48);
                }

                else
                {
                  operations_research::sat::ConstraintProto::clear_constraint(v36);
                  *(v36 + 60) = 12;
                  v60 = *(v36 + 8);
                  if (v60)
                  {
                    v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  v59 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v60);
                  *(v36 + 48) = v59;
                }

                operations_research::sat::AddLinearExpressionToLinearConstraint(v58, 1, v59, v34, v35);
                operator new();
              }

              v42 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
              if (*(v16 + 60) == 19)
              {
                v42 = *(v16 + 48);
              }

              v43 = *(this + 1);
              v44 = v42[5];
              operations_research::Domain::Domain(&__p, 0);
              if (v44)
              {
                v45 = v44;
              }

              else
              {
                v45 = &operations_research::sat::_LinearExpressionProto_default_instance_;
              }

              v46 = operations_research::sat::PresolveContext::IntersectDomainWith(v43, v45, &__p, 0);
              if (__p)
              {
                operator delete(v100[0]);
              }

              if (v46)
              {
                operator new();
              }

              goto LABEL_83;
            }

LABEL_73:
            *(v4[3] + 4 * v11++) = v101;
            v12 = ++v10 < v9;
            if (v10 == v9)
            {
              goto LABEL_78;
            }
          }
        }
      }

      goto LABEL_77;
    }
  }

  else
  {
    v9 = 0;
  }

  *(&v105 + 1) = 0;
  v98 = (v4 + 2);
  v97 = v9;
  if (v9 >= 1)
  {
    goto LABEL_17;
  }

LABEL_77:
  v11 = 0;
LABEL_78:
  if (v11 < v97)
  {
    if (*v98 > v11)
    {
      *v98 = v11;
    }

    operator new();
  }

  v12 = 0;
LABEL_83:
  v61 = v98;
  if (v102[0] >= 2)
  {
    operator delete((v103 - (v102[1] & 1) - 8));
  }

  if (v105 >= 2)
  {
    operator delete((v106 - (BYTE8(v105) & 1) - 8));
    if (v12)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  LODWORD(v63) = *v98;
  if (*v98 > 1)
  {
    v106 = 0;
    v105 = 0uLL;
    if (*v98 >= 1)
    {
      v64 = 0;
      do
      {
        while (1)
        {
          v65 = *(v4[3] + 4 * v64);
          started = operations_research::sat::PresolveContext::StartMin(*(this + 1), v65);
          v67 = operations_research::sat::PresolveContext::EndMax(*(this + 1), v65);
          v68 = *(&v105 + 1);
          if (*(&v105 + 1) >= v106)
          {
            break;
          }

          **(&v105 + 1) = v65;
          *(v68 + 8) = started;
          *(v68 + 16) = v67;
          *(&v105 + 1) = v68 + 24;
          if (++v64 >= *v61)
          {
            goto LABEL_106;
          }
        }

        v69 = v105;
        v70 = *(&v105 + 1) - v105;
        v71 = 0xAAAAAAAAAAAAAAABLL * ((*(&v105 + 1) - v105) >> 3);
        v72 = v71 + 1;
        if (v71 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v106 - v105) >> 3) > v72)
        {
          v72 = 0x5555555555555556 * ((v106 - v105) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v106 - v105) >> 3) >= 0x555555555555555)
        {
          v73 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v73 = v72;
        }

        if (v73)
        {
          if (v73 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v74 = 8 * ((*(&v105 + 1) - v105) >> 3);
        *v74 = v65;
        *(v74 + 8) = started;
        *(v74 + 16) = v67;
        v75 = 24 * v71 + 24;
        v76 = 24 * v71 - v70;
        memcpy((v74 - v70), v69, v70);
        *&v105 = v76;
        *(&v105 + 1) = v75;
        v106 = 0;
        if (v69)
        {
          operator delete(v69);
        }

        v61 = v98;
        *(&v105 + 1) = v75;
        ++v64;
      }

      while (v64 < *v98);
    }

LABEL_106:
    v102[0] = 0;
    v102[1] = 0;
    v103 = 0;
    operations_research::sat::GetOverlappingIntervalComponents(&v105, v102);
    v77 = v102[0];
    v78 = v102[1];
    if (0xAAAAAAAAAAAAAAABLL * ((v102[1] - v102[0]) >> 3) >= 2)
    {
      if (v102[0] == v102[1])
      {
LABEL_128:
        operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
        operator new();
      }

      while (1)
      {
        if ((v77[1] - *v77) >= 5)
        {
          v79 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          v80 = v79;
          if (*(v79 + 60) != 20)
          {
            operations_research::sat::ConstraintProto::clear_constraint(v79);
            *(v80 + 60) = 20;
            v84 = *(v80 + 8);
            if (v84)
            {
              v84 = *(v84 & 0xFFFFFFFFFFFFFFFELL);
            }

            v81 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlapConstraintProto>(v84);
            *(v80 + 48) = v81;
            v82 = *v77;
            v83 = v77[1];
            if (*v77 == v83)
            {
              goto LABEL_109;
            }

LABEL_117:
            v85 = *(v81 + 4);
            v86 = *(v81 + 5);
            do
            {
              v87 = *v82;
              if (v85 == v86)
              {
                google::protobuf::RepeatedField<int>::Grow((v81 + 2), v85, (v85 + 1));
                LODWORD(v85) = *(v81 + 4);
                v86 = *(v81 + 5);
              }

              v88 = v81[3];
              *(v81 + 4) = v85 + 1;
              *(v88 + 4 * v85) = v87;
              ++v82;
              v85 = (v85 + 1);
            }

            while (v82 != v83);
            goto LABEL_109;
          }

          v81 = *(v79 + 48);
          v82 = *v77;
          v83 = v77[1];
          if (*v77 != v83)
          {
            goto LABEL_117;
          }
        }

LABEL_109:
        v77 += 3;
        if (v77 == v78)
        {
          goto LABEL_128;
        }
      }
    }

    if (v102[0])
    {
      v89 = v102[0];
      if (v102[1] != v102[0])
      {
        v90 = v102[1];
        do
        {
          v92 = *(v90 - 3);
          v90 -= 3;
          v91 = v92;
          if (v92)
          {
            *(v78 - 2) = v91;
            operator delete(v91);
          }

          v78 = v90;
        }

        while (v90 != v77);
        v89 = v102[0];
      }

      v102[1] = v77;
      operator delete(v89);
    }

    if (v105)
    {
      *(&v105 + 1) = v105;
      operator delete(v105);
    }

    LODWORD(v63) = *v61;
  }

  if (v63 < 1)
  {
    if (!v63)
    {
      goto LABEL_148;
    }
  }

  else
  {
    v93 = 0;
    v94 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v95 = *(v4[3] + 4 * v93);
      if (operations_research::sat::PresolveContext::IntervalIsConstant(*(this + 1), v95))
      {
        operator new();
      }

      v96 = operations_research::sat::PresolveContext::SizeMin(*(this + 1), v95);
      if (v96 < v94)
      {
        v94 = v96;
      }

      ++v93;
      v63 = *v98;
    }

    while (v93 < v63);
    if (!v63)
    {
LABEL_148:
      operator new();
    }
  }

  if (v63 == 1)
  {
    operator new();
  }

  return 0;
}

void sub_23CA94D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (*(v36 - 144) >= 2uLL)
  {
    operator delete((*(v36 - 128) - (*(v36 - 136) & 1) - 8));
  }

  if (v35)
  {
    operator delete(v35);
  }

  _Unwind_Resume(exception_object);
}

void *operations_research::sat::ConstraintProto::mutable_no_overlap(operations_research::sat::ConstraintProto *this)
{
  if (*(this + 15) == 20)
  {
    return *(this + 6);
  }

  operations_research::sat::ConstraintProto::clear_constraint(this);
  *(this + 15) = 20;
  v3 = *(this + 1);
  if (v3)
  {
    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlapConstraintProto>(*(v3 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlapConstraintProto>(v3);
  }

  *(this + 6) = result;
  return result;
}

BOOL operations_research::sat::CpModelPresolver::PresolveNoOverlap2D(operations_research::sat::CpModelPresolver *this, int a2, operations_research::sat::ConstraintProto *a3)
{
  if (*(*(this + 1) + 416))
  {
    return 0;
  }

  v4 = this;
  if (*(a3 + 15) == 21)
  {
    v5 = *(a3 + 6);
    v56 = a3;
    v57 = this;
    v6 = *(v5 + 4);
    if (v6 < 1)
    {
LABEL_5:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 1;
      v11 = 1;
      IsConstant = 1;
      goto LABEL_40;
    }
  }

  else
  {
    v5 = &operations_research::sat::_NoOverlap2DConstraintProto_default_instance_;
    v56 = a3;
    v57 = this;
    v6 = dword_2810BEA40;
    if (dword_2810BEA40 < 1)
    {
      goto LABEL_5;
    }
  }

  v49 = 0;
  v12 = 0;
  v9 = 0;
  v54 = 0;
  v7 = 0;
  IsConstant = 1;
  v53 = 1;
  do
  {
    v13 = *(v5[3] + v12);
    v14 = *(v5[6] + v12);
    if (operations_research::sat::PresolveContext::ConstraintIsInactive(*(v57 + 1), v13) & 1) != 0 || (operations_research::sat::PresolveContext::ConstraintIsInactive(*(v57 + 1), v14))
    {
      goto LABEL_9;
    }

    v15 = v56;
    if (*(v56 + 15) == 21)
    {
      v16 = *(v56 + 6);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v56);
      *(v56 + 15) = 21;
      v17 = *(v56 + 1);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlap2DConstraintProto>(v17);
      v15 = v56;
      *(v56 + 6) = v16;
    }

    *(v16[3] + 4 * v9) = v13;
    v52 = v7;
    if (*(v15 + 60) == 21)
    {
      v18 = *(v15 + 48);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v15);
      *(v56 + 15) = 21;
      v19 = *(v56 + 1);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlap2DConstraintProto>(v19);
      *(v56 + 6) = v18;
    }

    v51 = v9;
    *(v18[6] + 4 * v9) = v14;
    started = operations_research::sat::PresolveContext::StartMin(*(v57 + 1), v13);
    v20 = operations_research::sat::PresolveContext::EndMax(*(v57 + 1), v13);
    v21 = operations_research::sat::PresolveContext::StartMin(*(v57 + 1), v14);
    v22 = operations_research::sat::PresolveContext::EndMax(*(v57 + 1), v14);
    v23 = v54;
    v24 = v54 >> 5;
    if (((v54 >> 5) + 1) >> 59)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (v54 >> 5 != -1)
    {
      if (!(((v54 >> 5) + 1) >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v25 = (32 * v24);
    *v25 = started;
    v25[1] = v20;
    v25[2] = v21;
    v25[3] = v22;
    v54 = 32 * v24 + 32;
    memcpy(0, 0, v23);
    if (((v52 >> 2) + 1) >> 62)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (v52 >> 2 != -1)
    {
      if (!(((v52 >> 2) + 1) >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v26 = (4 * (v52 >> 2));
    *v26 = v51;
    v7 = (v26 + 1);
    memcpy(0, 0, v52);
    if (IsConstant)
    {
      IsConstant = operations_research::sat::PresolveContext::IntervalIsConstant(*(v57 + 1), v13);
      if (!v53)
      {
        goto LABEL_35;
      }
    }

    else
    {
      IsConstant = 0;
      if (!v53)
      {
LABEL_35:
        v53 = 0;
        goto LABEL_36;
      }
    }

    v53 = operations_research::sat::PresolveContext::IntervalIsConstant(*(v57 + 1), v14);
LABEL_36:
    v9 = v51 + 1;
    if (!operations_research::sat::PresolveContext::SizeMax(*(v57 + 1), v13) || !operations_research::sat::PresolveContext::SizeMax(*(v57 + 1), v14))
    {
      v49 = 1;
    }

LABEL_9:
    ++v12;
  }

  while (v12 < *(v5 + 4));
  v10 = v49 ^ 1;
  v4 = v57;
  v11 = v53;
  v8 = v54;
LABEL_40:
  operations_research::sat::GetOverlappingRectangleComponents(0, (v8 >> 5), 0, v7 >> 2, &v58);
  v28 = v58;
  v27 = v59;
  if ((v59 - v58) >= 0x11)
  {
    if (v58 == v59)
    {
LABEL_60:
      operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(v4 + 1));
      operator new();
    }

    while (2)
    {
      v29 = v28[1];
      if (v29 >= 2)
      {
        v30 = *v28;
        v31 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(v4 + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
        v32 = v31;
        if (*(v31 + 60) == 21)
        {
          v33 = *(v31 + 48);
          if ((v29 & 0x3FFFFFFFFFFFFFFFLL) == 0)
          {
            goto LABEL_43;
          }

LABEL_51:
          v35 = 4 * v29;
          do
          {
            v36 = *v30;
            v37 = *(v5[3] + v36);
            v39 = *(v33 + 4);
            v38 = *(v33 + 5);
            if (v39 == v38)
            {
              v45 = v33;
              google::protobuf::RepeatedField<int>::Grow((v33 + 2), v38, (v38 + 1));
              v33 = v45;
              v39 = *(v45 + 4);
            }

            v40 = v33[3];
            *(v33 + 4) = v39 + 1;
            *(v40 + 4 * v39) = v37;
            v41 = *(v5[6] + v36);
            v43 = *(v33 + 10);
            v42 = *(v33 + 11);
            if (v43 == v42)
            {
              v46 = v33;
              google::protobuf::RepeatedField<int>::Grow((v33 + 5), v42, (v42 + 1));
              v33 = v46;
              v43 = *(v46 + 10);
            }

            v44 = v33[6];
            *(v33 + 10) = v43 + 1;
            *(v44 + 4 * v43) = v41;
            ++v30;
            v35 -= 4;
          }

          while (v35);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v31);
          *(v32 + 60) = 21;
          v34 = *(v32 + 8);
          if (v34)
          {
            v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
          }

          v33 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlap2DConstraintProto>(v34);
          *(v32 + 48) = v33;
          if ((v29 & 0x3FFFFFFFFFFFFFFFLL) != 0)
          {
            goto LABEL_51;
          }
        }
      }

LABEL_43:
      v28 += 2;
      if (v28 == v27)
      {
        goto LABEL_60;
      }

      continue;
    }
  }

  if (v10 & (IsConstant | v11))
  {
    operator new();
  }

  v48 = v9 < v6;
  v3 = v9 < v6;
  if (v48)
  {
    operator new();
  }

  if (v9 == 1)
  {
    operator new();
  }

  if (!v9)
  {
    operator new();
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  return v3;
}

void sub_23CA95B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  v34 = *(v32 - 112);
  if (v34)
  {
    *(v32 - 104) = v34;
    operator delete(v34);
    v35 = a19;
    if (!a19)
    {
LABEL_5:
      v36 = v31;
      if (!v31)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v35 = a19;
    if (!a19)
    {
      goto LABEL_5;
    }
  }

  operator delete(v35);
  v36 = v31;
  if (!v31)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v36);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveCumulative(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  if (*(*(this + 1) + 416))
  {
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  if (*(a2 + 15) == 22)
  {
    v5 = *(a2 + 6);
    *(v5 + 16) |= 1u;
    v6 = *(v5 + 72);
    if (v6)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  operations_research::sat::ConstraintProto::clear_constraint(a2);
  *(a2 + 15) = 22;
  v7 = *(a2 + 1);
  if (v7)
  {
    v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::Arena::DefaultConstruct<operations_research::sat::CumulativeConstraintProto>(v7);
  v5 = v8;
  *(a2 + 6) = v8;
  *(v8 + 16) |= 1u;
  v6 = *(v8 + 72);
  if (!v6)
  {
LABEL_9:
    v9 = *(v5 + 8);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v9);
    v6 = v10;
    *(v5 + 72) = v10;
  }

LABEL_12:
  v2 = operations_research::sat::PresolveContext::CanonicalizeLinearExpression(*(this + 1), *(a2 + 3), *(a2 + 4), v6);
  if (*(a2 + 15) == 22)
  {
    v11 = *(a2 + 6);
    v13 = *(v11 + 48);
    v12 = v11 + 48;
    v14 = (v13 + 7);
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = v12;
    }

    v16 = *(v12 + 8);
    if (!v16)
    {
      goto LABEL_26;
    }
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(a2);
    *(a2 + 15) = 22;
    v17 = *(a2 + 1);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::CumulativeConstraintProto>(v17);
    *(a2 + 6) = v18;
    v20 = *(v18 + 48);
    v19 = v18 + 48;
    v21 = (v20 + 7);
    if (v20)
    {
      v15 = v21;
    }

    else
    {
      v15 = v19;
    }

    v16 = *(v19 + 8);
    if (!v16)
    {
      goto LABEL_26;
    }
  }

  v22 = 8 * v16;
  do
  {
    v23 = *v15++;
    v2 |= operations_research::sat::PresolveContext::CanonicalizeLinearExpression(*(this + 1), *(a2 + 3), *(a2 + 4), v23);
    v22 -= 8;
  }

  while (v22);
LABEL_26:
  v351 = a2;
  if (*(v5 + 72))
  {
    v24 = *(v5 + 72);
  }

  else
  {
    v24 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v25 = operations_research::sat::PresolveContext::MaxOf(*(this + 1), v24);
  LOBYTE(v370) = 0;
  v26 = *(this + 1);
  if (*(v5 + 72))
  {
    v27 = *(v5 + 72);
  }

  else
  {
    v27 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v363 = v25;
  operations_research::Domain::Domain(__p, 0, v25);
  v29 = operations_research::sat::PresolveContext::IntersectDomainWith(v26, v27, __p, &v370);
  if (__p[0])
  {
    operator delete(__p[1]);
  }

  if ((v29 & 1) == 0)
  {
    goto LABEL_292;
  }

  if (v370 == 1)
  {
    operator new();
  }

  *__p = xmmword_23CE306D0;
  LODWORD(v30) = *(v5 + 24);
  if (v30 < 1)
  {
    v32 = 0;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = (v5 + 48);
    v34 = 8;
    do
    {
      LODWORD(v368) = *(*(v5 + 32) + 4 * v31);
      DWORD1(v368) = v32;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(__p, &v368, &v370);
      if (v371 != 1)
      {
        if (*v33)
        {
          v35 = (*v33 + v34 - 1);
        }

        else
        {
          v35 = (v5 + 48);
        }

        if (operations_research::sat::PresolveContext::IsFixed(*(this + 1), *v35))
        {
          v36 = *v33 - 1;
          v37 = v36 + 8 * *(*(&v370 + 1) + 4) + 8;
          if ((*v33 & 1) == 0)
          {
            v37 = v5 + 48;
          }

          v38 = *v37;
          v39 = *(*v37 + 64);
          v40 = (v36 + v34);
          if ((*v33 & 1) == 0)
          {
            v40 = (v5 + 48);
          }

          *(v38 + 64) = operations_research::sat::PresolveContext::FixedValue(*(this + 1), *v40) + v39;
          operator new();
        }

        operator new();
      }

      **(&v370 + 1) = v368;
      *(*(v5 + 32) + 4 * v32) = *(*(v5 + 32) + 4 * v31);
      v41 = *(v5 + 48);
      v42 = v41 - 1 + 8 * v32;
      if (v41)
      {
        v43 = (v41 - 1 + v34);
      }

      else
      {
        v43 = (v5 + 48);
      }

      v44 = *v43;
      v45 = (v42 + 8);
      if ((*(v5 + 48) & 1) == 0)
      {
        v45 = (v5 + 48);
      }

      operations_research::sat::LinearExpressionProto::CopyFrom(*v45, v44);
      ++v32;
      ++v31;
      v30 = *(v5 + 24);
      v34 += 8;
    }

    while (v31 < v30);
  }

  if (v32 < v30)
  {
    v46 = *(v5 + 48);
    *(v5 + 24) = v32;
    if (v46)
    {
      v47 = v46 + 7;
    }

    else
    {
      v47 = v5 + 48;
    }

    v48 = *(v5 + 56) - v32;
    if (v48 >= 1)
    {
      if (!*(v5 + 64))
      {
        v49 = (v47 + 8 * v32);
        v50 = (*(v5 + 56) - v32);
        do
        {
          google::protobuf::internal::InternalOutOfLineDeleteMessageLite(*v49++, v28);
          --v50;
        }

        while (v50);
      }

      google::protobuf::internal::RepeatedPtrFieldBase::CloseGap((v5 + 48), v32, v48);
    }

    LOBYTE(v2) = 1;
  }

  if (__p[0] >= 2)
  {
    operator delete((v365 - (__p[1] & 1) - 8));
  }

  if (*(v5 + 24) < 1)
  {
    v80 = 0;
    v79 = 0;
    v78 = 0;
LABEL_121:
    if (v78)
    {
      goto LABEL_122;
    }

    goto LABEL_123;
  }

  v51 = 0;
  v352 = 0;
  v52 = 0;
  v354 = 0;
  v356 = 0;
  v53 = (v5 + 48);
  v54 = 8;
  do
  {
    if (operations_research::sat::PresolveContext::ConstraintIsInactive(*(this + 1), *(*(v5 + 32) + 4 * v51)))
    {
      goto LABEL_74;
    }

    if (*v53)
    {
      v57 = (*v53 + v54 - 1);
    }

    else
    {
      v57 = (v5 + 48);
    }

    v58 = *v57;
    if (!operations_research::sat::PresolveContext::MaxOf(*(this + 1), *v57))
    {
      ++v52;
      goto LABEL_74;
    }

    v59 = *(*(v5 + 32) + 4 * v51);
    if (!operations_research::sat::PresolveContext::SizeMax(*(this + 1), v59))
    {
      ++v356;
      goto LABEL_74;
    }

    started = operations_research::sat::PresolveContext::StartMin(*(this + 1), v59);
    v61 = operations_research::sat::PresolveContext::EndMax(*(this + 1), v59);
    v62 = *(this + 1);
    if (started <= v61)
    {
      if (operations_research::sat::PresolveContext::MinOf(v62, v58) <= v363)
      {
        goto LABEL_92;
      }

      IsOptional = operations_research::sat::PresolveContext::ConstraintIsOptional(*(this + 1), v59);
      v67 = *(this + 1);
      if (!IsOptional)
      {
        v73 = (*v67 + 48);
        if (*v73)
        {
          v73 = (*v73 + 8 * v59 + 7);
        }

        v74 = *v73;
        v75 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
        if (*(v74 + 60) == 19)
        {
          v75 = *(v74 + 48);
        }

        if (v75[5])
        {
          v76 = v75[5];
        }

        else
        {
          v76 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        operations_research::Domain::Domain(__p, 0, 0);
        v77 = operations_research::sat::PresolveContext::IntersectDomainWith(v67, v76, __p, 0);
        if (__p[0])
        {
          operator delete(__p[1]);
        }

        if (v77)
        {
          operator new();
        }

        goto LABEL_292;
      }

      if (operations_research::sat::PresolveContext::SizeMin(*(this + 1), v59) < 1)
      {
LABEL_92:
        *(*(v5 + 32) + 4 * v352) = v59;
        v68 = *(v5 + 48);
        v69 = v68 - 1 + 8 * v352;
        if (v68)
        {
          v70 = (v68 - 1 + v54);
        }

        else
        {
          v70 = (v5 + 48);
        }

        v71 = *v70;
        v72 = (v69 + 8);
        if ((*(v5 + 48) & 1) == 0)
        {
          v72 = (v5 + 48);
        }

        operations_research::sat::LinearExpressionProto::CopyFrom(*v72, v71);
        ++v352;
        goto LABEL_74;
      }

      v64 = *(this + 1);
    }

    else
    {
      v63 = operations_research::sat::PresolveContext::ConstraintIsOptional(v62, v59);
      v64 = *(this + 1);
      if (!v63)
      {
        v228 = "cumulative: inconsistent intervals cannot be performed.";
        v229 = 55;
LABEL_313:
        LOBYTE(v2) = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(v64, v228, v229);
        return v2 & 1;
      }
    }

    v65 = *v64 + 48;
    if (*v65)
    {
      v65 = *v65 + 8 * v59 + 7;
    }

    if ((operations_research::sat::PresolveContext::SetLiteralToFalse(v64, **(*v65 + 24)) & 1) == 0)
    {
      goto LABEL_292;
    }

    ++v354;
LABEL_74:
    ++v51;
    v55 = *(v5 + 24);
    v54 += 8;
  }

  while (v51 < v55);
  v78 = v52 > 0;
  v79 = v356 > 0;
  v80 = v354 > 0;
  if (v352 >= v55)
  {
    goto LABEL_121;
  }

  v81 = *(v5 + 48);
  *(v5 + 24) = v352;
  if (v81)
  {
    v82 = v81 + 7;
  }

  else
  {
    v82 = v5 + 48;
  }

  v83 = *(v5 + 56) - v352;
  if (v83 >= 1)
  {
    if (!*(v5 + 64))
    {
      v84 = (v82 + 8 * v352);
      v85 = (*(v5 + 56) - v352);
      do
      {
        v86 = *v84++;
        google::protobuf::internal::InternalOutOfLineDeleteMessageLite(v86, v56);
        --v85;
      }

      while (v85);
    }

    google::protobuf::internal::RepeatedPtrFieldBase::CloseGap((v5 + 48), v352, v83);
  }

  LOBYTE(v2) = 1;
  if (v78)
  {
LABEL_122:
    operator new();
  }

LABEL_123:
  if (v79)
  {
    operator new();
  }

  if (v80)
  {
    operator new();
  }

  if (*(v5 + 56) >= 1)
  {
    v87 = 0;
    v88 = 8;
    do
    {
      v89 = *(*(v5 + 32) + 4 * v87);
      v90 = *(v5 + 48);
      if (v90)
      {
        v91 = (v90 + v88 - 1);
      }

      else
      {
        v91 = (v5 + 48);
      }

      v92 = *v91;
      if ((operations_research::sat::PresolveContext::ConstraintIsOptional(*(this + 1), *(*(v5 + 32) + 4 * v87)) & 1) == 0 && operations_research::sat::PresolveContext::SizeMin(*(this + 1), v89))
      {
        LOBYTE(v370) = 0;
        v93 = *(this + 1);
        operations_research::Domain::Domain(__p, 0, v363);
        v94 = operations_research::sat::PresolveContext::IntersectDomainWith(v93, v92, __p, &v370);
        if (__p[0])
        {
          operator delete(__p[1]);
        }

        if ((v94 & 1) == 0)
        {
          goto LABEL_292;
        }

        if (v370 == 1)
        {
          operator new();
        }
      }

      ++v87;
      v88 += 8;
    }

    while (v87 < *(v5 + 56));
  }

  if (*(v5 + 24) > 1)
  {
    v95 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v365 = 0;
    do
    {
      v97 = *(*(v5 + 32) + 4 * v95);
      v98 = operations_research::sat::PresolveContext::StartMin(*(this + 1), v97);
      v99 = operations_research::sat::PresolveContext::EndMax(*(this + 1), v97);
      v100 = __p[1];
      if (__p[1] < v365)
      {
        *__p[1] = v95;
        v96 = v100 + 3;
        v100[1] = v98;
        v100[2] = v99;
      }

      else
      {
        v101 = __p[0];
        v102 = __p[1] - __p[0];
        v103 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3);
        v104 = v103 + 1;
        if (v103 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v365 - __p[0]) >> 3) > v104)
        {
          v104 = 0x5555555555555556 * ((v365 - __p[0]) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v365 - __p[0]) >> 3) >= 0x555555555555555)
        {
          v105 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v105 = v104;
        }

        if (v105)
        {
          if (v105 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v106 = 8 * ((__p[1] - __p[0]) >> 3);
        *v106 = v95;
        *(v106 + 8) = v98;
        *(v106 + 16) = v99;
        v96 = (24 * v103 + 24);
        v107 = (24 * v103 - v102);
        memcpy(v107, v101, v102);
        __p[0] = v107;
        __p[1] = v96;
        v365 = 0;
        if (v101)
        {
          operator delete(v101);
        }
      }

      __p[1] = v96;
      ++v95;
    }

    while (v95 < *(v5 + 24));
    v370 = 0uLL;
    v371 = 0;
    operations_research::sat::GetOverlappingIntervalComponents(__p, &v370);
    v108 = v370;
    v109 = (*(&v370 + 1) - v370) >> 3;
    v110 = 0xAAAAAAAAAAAAAAABLL * v109;
    if (0xAAAAAAAAAAAAAAABLL * v109 >= 2)
    {
      v357 = 0xAAAAAAAAAAAAAAABLL * v109;
      if (v370 != *(&v370 + 1))
      {
        v111 = (v5 + 48);
        v360 = *(&v370 + 1);
        while (1)
        {
          v112 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          v113 = v112;
          if (*(v112 + 60) != 22)
          {
            break;
          }

          v114 = *(v112 + 48);
          v115 = *v108;
          v116 = v108[1];
          if (*v108 != v116)
          {
            goto LABEL_165;
          }

LABEL_171:
          if (*(v5 + 72))
          {
            v127 = *(v5 + 72);
          }

          else
          {
            v127 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          *(v114 + 16) |= 1u;
          v128 = *(v114 + 72);
          if (!v128)
          {
            v129 = *(v114 + 8);
            if (v129)
            {
              v129 = *(v129 & 0xFFFFFFFFFFFFFFFELL);
            }

            google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v129);
            *(v114 + 72) = v128;
          }

          operations_research::sat::LinearExpressionProto::CopyFrom(v128, v127);
          v108 += 3;
          if (v108 == v360)
          {
            goto LABEL_179;
          }
        }

        operations_research::sat::ConstraintProto::clear_constraint(v112);
        *(v113 + 60) = 22;
        v117 = *(v113 + 8);
        if (v117)
        {
          v117 = *(v117 & 0xFFFFFFFFFFFFFFFELL);
        }

        google::protobuf::Arena::DefaultConstruct<operations_research::sat::CumulativeConstraintProto>(v117);
        v114 = v118;
        *(v113 + 48) = v118;
        v115 = *v108;
        v116 = v108[1];
        if (*v108 == v116)
        {
          goto LABEL_171;
        }

        do
        {
LABEL_165:
          v119 = *v115;
          v120 = *(*(v5 + 32) + 4 * v119);
          v122 = *(v114 + 24);
          v121 = *(v114 + 28);
          if (v122 == v121)
          {
            google::protobuf::RepeatedField<int>::Grow(v114 + 24, v121, (v121 + 1));
            v122 = *(v114 + 24);
          }

          v123 = *(v114 + 32);
          *(v114 + 24) = v122 + 1;
          *(v123 + 4 * v122) = v120;
          if (*v111)
          {
            v124 = (*v111 + 8 * v119 + 7);
          }

          else
          {
            v124 = (v5 + 48);
          }

          v125 = *v124;
          v126 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v114 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
          operations_research::sat::LinearExpressionProto::CopyFrom(v126, v125);
          ++v115;
        }

        while (v115 != v116);
        goto LABEL_171;
      }

LABEL_179:
      operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
      v110 = v357;
      v130 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(&v368, "cumulative: split into disjoint components");
      operations_research::sat::PresolveContext::UpdateRuleStats(v130, &v368, 1, v131, v132);
      if (SHIBYTE(v369) < 0)
      {
        operator delete(v368);
      }

      operations_research::sat::ConstraintProto::Clear(v351);
    }

    std::vector<std::vector<int>>::~vector[abi:ne200100](&v370);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v110 >= 2)
    {
      goto LABEL_292;
    }
  }

  *&v368 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::EmptyNode(void)::empty_node;
  *(&v368 + 1) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::EmptyNode(void)::empty_node;
  v369 = 0;
  if (*(v5 + 72))
  {
    v133 = *(v5 + 72);
  }

  else
  {
    v133 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v134 = operations_research::sat::PresolveContext::MinOf(*(this + 1), v133);
  if (*(v5 + 24) >= 1)
  {
    v135 = 0;
    v136 = 8;
    do
    {
      v137 = *(*(v5 + 32) + 4 * v135);
      v138 = *(v5 + 48);
      if (v138)
      {
        v139 = (v138 + v136 - 1);
      }

      else
      {
        v139 = (v5 + 48);
      }

      v140 = operations_research::sat::PresolveContext::MaxOf(*(this + 1), *v139);
      __p[0] = operations_research::sat::PresolveContext::StartMin(*(this + 1), v137);
      v141 = absl::lts_20240722::container_internal::btree_map_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>>::operator[]<long long>(&v368, __p);
      *v141 += v140;
      __p[0] = operations_research::sat::PresolveContext::EndMax(*(this + 1), v137);
      v142 = absl::lts_20240722::container_internal::btree_map_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>>::operator[]<long long>(&v368, __p);
      *v142 -= v140;
      ++v135;
      v136 += 8;
    }

    while (v135 < *(v5 + 24));
  }

  *__p = xmmword_23CE306D0;
  v143 = *(&v368 + 1);
  v144 = *v368;
  if (*v368 == *(&v368 + 1) && !*(*(&v368 + 1) + 10))
  {
    goto LABEL_246;
  }

  v361 = *(*(&v368 + 1) + 10);
  v145 = 0;
  v146 = 0;
  v147 = 0;
  do
  {
    v148 = &v144[16 * v147];
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,long long>>>::find_or_prepare_insert<long long>(__p, v148 + 2, &v370);
    if (v371 == 1)
    {
      v149 = *(&v370 + 1);
      **(&v370 + 1) = *(v148 + 2);
      *(v149 + 8) = 0;
    }

    *(*(&v370 + 1) + 8) = v145;
    v146 += *(v148 + 3);
    if (v146 > v134)
    {
      ++v145;
    }

    if (v144[11])
    {
      if (++v147 == v144[10])
      {
        v150 = v144;
        while (1)
        {
          v151 = *v150;
          if (*(*v150 + 11))
          {
            break;
          }

          v152 = v150[8];
          v150 = *v150;
          if (v152 != v151[10])
          {
            v144 = v151;
            v147 = v152;
            break;
          }
        }
      }
    }

    else
    {
      v153 = &v144[8 * (v147 + 1) + 256];
      do
      {
        v144 = *v153;
        v154 = *(*v153 + 11);
        v153 = *v153 + 256;
      }

      while (!v154);
      v147 = 0;
    }
  }

  while (v144 != v143 || v147 != v361);
  if (v146)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v146, 0, "current_load == 0");
  }

  if (v145)
  {
    LODWORD(v155) = *(v5 + 24);
    if (v155 < 1)
    {
      v157 = 0;
    }

    else
    {
      v156 = 0;
      v157 = 0;
      do
      {
        v158 = *(*(v5 + 32) + 4 * v156);
        v159 = operations_research::sat::PresolveContext::StartMin(*(this + 1), v158);
        v160 = operations_research::sat::PresolveContext::EndMax(*(this + 1), v158);
        if (v159 < v160)
        {
          v162 = __p[0];
          if (__p[0] >= 2)
          {
            v165 = 0;
            _X9 = v365;
            __asm { PRFM            #4, [X9] }

            v172 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v160) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v160));
            v173 = vdup_n_s8(v172 & 0x7F);
            v174 = ((v365 >> 12) ^ (v172 >> 7)) & __p[0];
            v175 = *(v365 + v174);
            v176 = vceq_s8(v175, v173);
            if (!v176)
            {
              goto LABEL_227;
            }

LABEL_225:
            while (1)
            {
              v177 = (v174 + (__clz(__rbit64(v176)) >> 3)) & __p[0];
              if (*(v366 + 16 * v177) == v160)
              {
                break;
              }

              v176 &= ((v176 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v176)
              {
LABEL_227:
                while (!*&vceq_s8(v175, 0x8080808080808080))
                {
                  v165 += 8;
                  v174 = (v165 + v174) & __p[0];
                  v175 = *(v365 + v174);
                  v176 = vceq_s8(v175, v173);
                  if (v176)
                  {
                    goto LABEL_225;
                  }
                }

LABEL_269:
                absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", v161);
              }
            }

            v178 = 0;
            v163 = *(v366 + 16 * v177 + 8);
            __asm { PRFM            #4, [X9] }

            v180 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v159) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v159));
            v181 = vdup_n_s8(v180 & 0x7F);
            v182 = ((v365 >> 12) ^ (v180 >> 7)) & __p[0];
            v183 = *(v365 + v182);
            v184 = vceq_s8(v183, v181);
            if (!v184)
            {
              goto LABEL_233;
            }

            do
            {
LABEL_231:
              v185 = (v182 + (__clz(__rbit64(v184)) >> 3)) & __p[0];
              if (*(v366 + 16 * v185) == v159)
              {
                v162 = (v366 + 16 * v185);
                v164 = (v365 + v185);
                goto LABEL_238;
              }

              v184 &= ((v184 & 0x8080808080808080) - 1) & 0x8080808080808080;
            }

            while (v184);
LABEL_233:
            while (!*&vceq_s8(v183, 0x8080808080808080))
            {
              v178 += 8;
              v182 = (v178 + v182) & __p[0];
              v183 = *(v365 + v182);
              v184 = vceq_s8(v183, v181);
              if (v184)
              {
                goto LABEL_231;
              }
            }

            v164 = 0;
          }

          else
          {
            if (__p[1] < 2 || v365 != v160)
            {
              goto LABEL_269;
            }

            LODWORD(v163) = v366;
            v162 = &v365;
            v164 = &absl::lts_20240722::container_internal::kSooControl;
            if (v365 != v159)
            {
              v164 = 0;
            }
          }

LABEL_238:
          if (!v164)
          {
            goto LABEL_269;
          }

          if (v163 != *(v162 + 2))
          {
            *(*(v5 + 32) + 4 * v157) = *(*(v5 + 32) + 4 * v156);
            v186 = *(v5 + 48);
            v187 = v186 + 7;
            if (v186)
            {
              v188 = (v186 + 7 + 8 * v156);
            }

            else
            {
              v188 = (v5 + 48);
            }

            v189 = *v188;
            v190 = (v187 + 8 * v157);
            if ((*(v5 + 48) & 1) == 0)
            {
              v190 = (v5 + 48);
            }

            operations_research::sat::LinearExpressionProto::CopyFrom(*v190, v189);
            ++v157;
          }
        }

        ++v156;
        v155 = *(v5 + 24);
      }

      while (v156 < v155);
    }

    v194 = v351;
    if (v157 >= v155)
    {
      v195 = 0;
    }

    else
    {
      v213 = *(v5 + 48);
      *(v5 + 24) = v157;
      if (v213)
      {
        v214 = v213 + 7;
      }

      else
      {
        v214 = v5 + 48;
      }

      google::protobuf::RepeatedPtrField<operations_research::sat::LinearExpressionProto>::erase((v5 + 48), (v214 + 8 * v157), v214 + 8 * *(v5 + 56));
      v215 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(&v370, "cumulative: remove never conflicting intervals.");
      operations_research::sat::PresolveContext::UpdateRuleStats(v215, &v370, 1, v216, v217);
      if (SHIBYTE(v371) < 0)
      {
        operator delete(v370);
      }

      v195 = 0;
      LOBYTE(v2) = 1;
    }
  }

  else
  {
LABEL_246:
    v191 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(&v370, "cumulative: max profile is always under the min capacity");
    operations_research::sat::PresolveContext::UpdateRuleStats(v191, &v370, 1, v192, v193);
    v194 = v351;
    if (SHIBYTE(v371) < 0)
    {
      operator delete(v370);
    }

    operations_research::sat::ConstraintProto::Clear(v351);
    v195 = 1;
  }

  if (__p[0] >= 2)
  {
    operator delete((v365 - (__p[1] & 1) - 8));
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::clear(&v368);
  if (v195)
  {
LABEL_292:
    LOBYTE(v2) = 1;
    return v2 & 1;
  }

  v196 = *(v5 + 24);
  if (!v196)
  {
    v209 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(__p, "cumulative: no intervals");
    operations_research::sat::PresolveContext::UpdateRuleStats(v209, __p, 1, v210, v211);
    if (SHIBYTE(v365) < 0)
    {
      operator delete(__p[0]);
    }

    v212 = v194;
    goto LABEL_268;
  }

  if (v196 < 1)
  {
    v358 = 0;
    v198 = 0;
  }

  else
  {
    v197 = 0;
    v198 = 0;
    v358 = 0;
    v199 = 8;
    do
    {
      v200 = *(*(v5 + 32) + 4 * v197);
      v201 = *(this + 1);
      v202 = (*v201 + 48);
      if (*v202)
      {
        v202 = (*v202 + 8 * v200 + 7);
      }

      v203 = *v202;
      v204 = (v5 + 48);
      if (*(v5 + 48))
      {
        v204 = (*(v5 + 48) + v199 - 1);
      }

      v205 = *v204;
      v206 = operations_research::sat::PresolveContext::MaxOf(v201, *v204);
      if (!*(v203 + 16) && operations_research::sat::PresolveContext::SizeMin(*(this + 1), v200) >= 1)
      {
        v207 = operations_research::sat::PresolveContext::MinOf(*(this + 1), v205);
        v208 = v358;
        if (v358 <= v207)
        {
          v208 = v207;
        }

        v358 = v208;
      }

      v198 += v206;
      ++v197;
      v199 += 8;
    }

    while (v197 < *(v5 + 24));
  }

  if (*(v5 + 72))
  {
    v218 = *(v5 + 72);
  }

  else
  {
    v218 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  if (v358 > operations_research::sat::PresolveContext::MinOf(*(this + 1), v218))
  {
    v219 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(__p, "cumulative: propagate min capacity.");
    operations_research::sat::PresolveContext::UpdateRuleStats(v219, __p, 1, v220, v221);
    if (SHIBYTE(v365) < 0)
    {
      operator delete(__p[0]);
    }

    v222 = *(this + 1);
    operations_research::Domain::Domain(__p, v358, 0x7FFFFFFFFFFFFFFFLL);
    v223 = operations_research::sat::PresolveContext::IntersectDomainWith(v222, v218, __p, 0);
    if (__p[0])
    {
      operator delete(__p[1]);
    }

    if ((v223 & 1) == 0)
    {
      goto LABEL_292;
    }
  }

  v224 = operations_research::sat::PresolveContext::MaxOf(*(this + 1), v218);
  v225 = *(this + 1);
  if (v358 > v224)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "cumulative: cannot fit performed demands");
    operations_research::sat::PresolveContext::UpdateRuleStats(v225, __p, 1, v226, v227);
    if (SHIBYTE(v365) < 0)
    {
      operator delete(__p[0]);
    }

    v64 = *(this + 1);
    v228 = &byte_23CE7F131;
    v229 = 0;
    goto LABEL_313;
  }

  v231 = operations_research::sat::PresolveContext::MinOf(*(this + 1), v218);
  v232 = *(this + 1);
  if (v198 <= v231)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "cumulative: capacity exceeds sum of demands");
    operations_research::sat::PresolveContext::UpdateRuleStats(v232, __p, 1, v244, v245);
    v212 = v351;
    if (SHIBYTE(v365) < 0)
    {
      operator delete(__p[0]);
      v212 = v351;
    }

LABEL_268:
    operations_research::sat::ConstraintProto::Clear(v212);
    goto LABEL_292;
  }

  if (*(v5 + 72))
  {
    v233 = *(v5 + 72);
  }

  else
  {
    v233 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  if (!operations_research::sat::PresolveContext::IsFixed(*(this + 1), v233))
  {
    goto LABEL_344;
  }

  v234 = 0;
  v235 = 0;
  while (1)
  {
    if (*(v351 + 15) == 22)
    {
      v237 = *(v351 + 6);
      v238 = *(v237 + 14);
    }

    else
    {
      v238 = dword_2810BEAE8;
      v237 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
    }

    if (v234 >= v238)
    {
      break;
    }

    v240 = v237[6];
    v239 = (v237 + 6);
    v241 = &v240[v234] + 7;
    if (v240)
    {
      v239 = v241;
    }

    v242 = *v239;
    if (operations_research::sat::PresolveContext::IsFixed(*(this + 1), *v239))
    {
      v243 = operations_research::sat::PresolveContext::MinOf(*(this + 1), v242);
      if (v243)
      {
        do
        {
          v236 = v243;
          v243 = v235 % v243;
          v235 = v236;
        }

        while (v243);
      }

      else
      {
        v236 = v235;
      }

      ++v234;
      v235 = v236;
      if (v236 != 1)
      {
        continue;
      }
    }

    goto LABEL_344;
  }

  if (v235 < 2)
  {
    goto LABEL_344;
  }

  v246 = 0;
  v247 = (v5 + 48);
  v248 = 1;
  while (2)
  {
    if (*(v351 + 15) == 22)
    {
      v249 = *(v351 + 6);
      v250 = *(v249 + 14);
    }

    else
    {
      v250 = dword_2810BEAE8;
      v249 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
    }

    if (v246 < v250)
    {
      v252 = v249[6];
      v251 = (v249 + 6);
      v253 = &v252[v248 - 1] + 7;
      if (v252)
      {
        v251 = v253;
      }

      v254 = operations_research::sat::PresolveContext::MinOf(*(this + 1), *v251) / v235;
      operations_research::sat::LinearExpressionProto::LinearExpressionProto(__p, 0);
      v367 = v254;
      if (*v247)
      {
        v255 = (*v247 + v248 * 8 - 1);
      }

      else
      {
        v255 = (v5 + 48);
      }

      v256 = *v255;
      if (*v255 != __p)
      {
        v257 = v256[1];
        if (v257)
        {
          v257 = *(v257 & 0xFFFFFFFFFFFFFFFELL);
          v258 = __p[1];
          if (__p[1])
          {
            goto LABEL_336;
          }

LABEL_333:
          if (v257 != v258)
          {
            goto LABEL_334;
          }

LABEL_319:
          operations_research::sat::LinearExpressionProto::InternalSwap(v256, __p);
        }

        else
        {
          v258 = __p[1];
          if ((__p[1] & 1) == 0)
          {
            goto LABEL_333;
          }

LABEL_336:
          if (v257 == *(v258 & 0xFFFFFFFFFFFFFFFELL))
          {
            goto LABEL_319;
          }

LABEL_334:
          operations_research::sat::LinearExpressionProto::CopyFrom(v256, __p);
        }
      }

      operations_research::sat::LinearExpressionProto::~LinearExpressionProto(__p);
      ++v246;
      ++v248;
      continue;
    }

    break;
  }

  if (*(v5 + 72))
  {
    v259 = *(v5 + 72);
  }

  else
  {
    v259 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v260 = operations_research::sat::PresolveContext::MinOf(*(this + 1), v259) / v235;
  operations_research::sat::LinearExpressionProto::LinearExpressionProto(__p, 0);
  v367 = v260;
  operations_research::sat::CumulativeConstraintProto::mutable_capacity(v5);
  operations_research::sat::LinearExpressionProto::operator=(v261, __p);
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(__p);
  v262 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(__p, "cumulative: divide demands and capacity by gcd");
  operations_research::sat::PresolveContext::UpdateRuleStats(v262, __p, 1, v263, v264);
  if (SHIBYTE(v365) < 0)
  {
    operator delete(__p[0]);
  }

  LOBYTE(v2) = 1;
LABEL_344:
  v265 = *(v5 + 24);
  v266 = *(v5 + 72);
  if (!v266)
  {
    v266 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v350 = v266;
  std::vector<operations_research::sat::LinearExpressionProto>::vector[abi:ne200100](__p, v265);
  if (v265 < 1)
  {
    v362 = 0;
    LOBYTE(v268) = 0;
    v355 = 0;
LABEL_375:
    if (v362 == v265)
    {
      v292 = *(this + 1);
      if ((v355 != v265) | v268 & 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v370, "cumulative: convert to no_overlap");
        operations_research::sat::PresolveContext::UpdateRuleStats(v292, &v370, 1, v293, v294);
        if (SHIBYTE(v371) < 0)
        {
          operator delete(v370);
        }

        if (*(v5 + 56) >= 1)
        {
          v295 = 0;
          v296 = (v5 + 48);
          v297 = 8;
          do
          {
            if (*v296)
            {
              v298 = (*v296 + v297 - 1);
            }

            else
            {
              v298 = (v5 + 48);
            }

            v299 = *v298;
            v300 = operations_research::sat::PresolveContext::MaxOf(*(this + 1), *v298);
            if (v300 > operations_research::sat::PresolveContext::MinOf(*(this + 1), v350))
            {
              v301 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
              v302 = v301;
              v303 = **(this + 1);
              v305 = *(v303 + 48);
              v304 = v303 + 48;
              v306 = v305 + 8 * *(*(v5 + 32) + 4 * v295) + 7;
              if (v305)
              {
                v304 = v306;
              }

              google::protobuf::RepeatedField<int>::operator=((v301 + 16), (*v304 + 16));
              v307 = operations_research::sat::ConstraintProto::mutable_linear(v302);
              operations_research::sat::LinearConstraintProto::add_domain(v307, 0);
              v308 = operations_research::sat::ConstraintProto::mutable_linear(v302);
              operations_research::sat::LinearConstraintProto::add_domain(v308, 0x7FFFFFFFFFFFFFFFLL);
              v309 = operations_research::sat::ConstraintProto::mutable_linear(v302);
              operations_research::sat::AddLinearExpressionToLinearConstraint(v350, 1, v309, v310, v311);
              v312 = operations_research::sat::ConstraintProto::mutable_linear(v302);
              operations_research::sat::AddLinearExpressionToLinearConstraint(v299, 0xFFFFFFFFFFFFFFFFLL, v312, v313, v314);
            }

            ++v295;
            v297 += 8;
          }

          while (v295 < *(v5 + 56));
        }

        v342 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
        v343 = operations_research::sat::ConstraintProto::mutable_no_overlap(v342);
        v344 = *(v5 + 24);
        if (v344)
        {
          v345 = v343;
          v346 = *(v5 + 32);
          v347 = 4 * v344;
          do
          {
            operations_research::sat::BoolArgumentProto::add_literals(v345, *v346++);
            v347 -= 4;
          }

          while (v347);
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v370, "cumulative: convert to all_different");
        operations_research::sat::PresolveContext::UpdateRuleStats(v292, &v370, 1, v319, v320);
        if (SHIBYTE(v371) < 0)
        {
          operator delete(v370);
        }

        v321 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
        v322 = operations_research::sat::ConstraintProto::mutable_all_diff(v321);
        v324 = __p[0];
        v323 = __p[1];
        if (__p[0] != __p[1])
        {
          v325 = v322;
          do
          {
            v326 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v325 + 2), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
            operations_research::sat::LinearExpressionProto::CopyFrom(v326, v324);
            v324 = (v324 + 80);
          }

          while (v324 != v323);
        }

        if (!operations_research::sat::PresolveContext::IsFixed(*(this + 1), v350))
        {
          v327 = operations_research::sat::PresolveContext::MinOf(*(this + 1), v350);
          v329 = *(v5 + 48);
          v328 = v5 + 48;
          v330 = v329 + 7;
          v331 = ((v329 & 1) != 0 ? v330 : v328);
          v332 = *(v328 + 8);
          if (v332)
          {
            v333 = v327;
            v334 = 8 * v332;
            do
            {
              v335 = *v331;
              if (v333 < operations_research::sat::PresolveContext::MaxOf(*(this + 1), *v331))
              {
                v336 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
                v337 = operations_research::sat::ConstraintProto::mutable_linear(v336);
                operations_research::sat::LinearConstraintProto::add_domain(v337, 0);
                operations_research::sat::LinearConstraintProto::add_domain(v337, 0x7FFFFFFFFFFFFFFFLL);
                operations_research::sat::AddLinearExpressionToLinearConstraint(v350, 1, v337, v338, v339);
                operations_research::sat::AddLinearExpressionToLinearConstraint(v335, 0xFFFFFFFFFFFFFFFFLL, v337, v340, v341);
              }

              ++v331;
              v334 -= 8;
            }

            while (v334);
          }
        }
      }

      operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
      operations_research::sat::ConstraintProto::Clear(v351);
LABEL_413:
      LOBYTE(v2) = 1;
    }
  }

  else
  {
    v267 = 0;
    v355 = 0;
    v268 = 0;
    v362 = 0;
    v353 = (v5 + 48);
    while (1)
    {
      v269 = *(*(v5 + 32) + 4 * v267);
      v270 = operations_research::sat::PresolveContext::ConstraintIsOptional(*(this + 1), v269);
      v271 = **(this + 1);
      v273 = *(v271 + 48);
      v272 = v271 + 48;
      v274 = v273 + 8 * *(*(v5 + 32) + 4 * v267) + 7;
      if (v273)
      {
        v272 = v274;
      }

      v275 = *v272;
      v276 = *(*v272 + 60);
      v277 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
      if (v276 == 19)
      {
        v277 = *(v275 + 48);
      }

      v359 = v268;
      v278 = v277[3];
      if (v278)
      {
        v279 = v278;
      }

      else
      {
        v279 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      operations_research::sat::LinearExpressionProto::CopyFrom((__p[0] + 80 * v267), v279);
      if (*v353)
      {
        v280 = (*v353 + 8 * v267 + 7);
      }

      else
      {
        v280 = (v5 + 48);
      }

      v281 = *v280;
      if (operations_research::sat::PresolveContext::SizeMin(*(this + 1), v269) == 1)
      {
        v282 = operations_research::sat::PresolveContext::SizeMax(*(this + 1), v269);
        v283 = v355;
        if (v282 == 1)
        {
          v283 = v355 + 1;
        }

        v355 = v283;
      }

      if (!operations_research::sat::PresolveContext::SizeMin(*(this + 1), v269))
      {
        break;
      }

      v284 = operations_research::sat::PresolveContext::MinOf(*(this + 1), v281);
      v285 = operations_research::sat::PresolveContext::MaxOf(*(this + 1), v281);
      v286 = v362;
      if (v284 > v363 / 2)
      {
        v286 = v362 + 1;
      }

      v362 = v286;
      if (v284 > v363)
      {
        v315 = *(this + 1);
        std::string::basic_string[abi:ne200100]<0>(&v370, "cumulative: demand_min exceeds capacity max");
        operations_research::sat::PresolveContext::UpdateRuleStats(v315, &v370, 1, v316, v317);
        if (SHIBYTE(v371) < 0)
        {
          operator delete(v370);
        }

        if (operations_research::sat::PresolveContext::ConstraintIsOptional(*(this + 1), v269))
        {
          v318 = *(v275 + 16);
          if (v318 != 1)
          {
            absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v318, 1, "ct.enforcement_literal().size() == 1");
          }

          LOBYTE(v2) = operations_research::sat::PresolveContext::SetLiteralToFalse(*(this + 1), **(v275 + 24)) ^ 1 | v2;
        }

        else
        {
          LOBYTE(v2) = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(*(this + 1), &byte_23CE7F131, 0);
        }

        break;
      }

      if (v285 > v363)
      {
        v287 = *(this + 1);
        if (*(v275 + 16))
        {
          std::string::basic_string[abi:ne200100]<0>(&v370, "cumulative: demand_max of optional interval exceeds capacity.");
          operations_research::sat::PresolveContext::UpdateRuleStats(v287, &v370, 1, v348, v349);
          if (SHIBYTE(v371) < 0)
          {
            operator delete(v370);
          }

          break;
        }

        std::string::basic_string[abi:ne200100]<0>(&v370, "cumulative: demand_max exceeds capacity max.");
        operations_research::sat::PresolveContext::UpdateRuleStats(v287, &v370, 1, v288, v289);
        if (SHIBYTE(v371) < 0)
        {
          operator delete(v370);
        }

        v290 = *(this + 1);
        operations_research::Domain::Domain(&v370, 0x8000000000000000, v363);
        v291 = operations_research::sat::PresolveContext::IntersectDomainWith(v290, v281, &v370, 0);
        if (v370)
        {
          operator delete(*(&v370 + 1));
        }

        if ((v291 & 1) == 0)
        {
          goto LABEL_413;
        }
      }

      v268 = v270 | v359;
      if (++v267 == v265)
      {
        goto LABEL_375;
      }
    }
  }

  std::vector<operations_research::sat::LinearExpressionProto>::~vector[abi:ne200100](__p);
  return v2 & 1;
}

void sub_23CA97D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, void *__p)
{
  if (a23)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x23CA97E54);
}

void sub_23CA97D74()
{
  if (*(v0 - 129) < 0)
  {
    operator delete(*(v0 - 152));
  }

  JUMPOUT(0x23CA97DCCLL);
}

void sub_23CA97DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23, char a24, uint64_t a25)
{
  if (a23 >= 2)
  {
    operator delete((a25 - (a24 & 1) - 8));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x23CA97E54);
}

void sub_23CA97E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25)
{
  std::vector<std::vector<int>>::~vector[abi:ne200100]((v25 - 128));
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::CumulativeConstraintProto::mutable_capacity(operations_research::sat::CumulativeConstraintProto *this)
{
  *(this + 4) |= 1u;
  if (!*(this + 9))
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

    *(this + 9) = v3;
  }
}

operations_research::sat::LinearExpressionProto *operations_research::sat::LinearExpressionProto::operator=(operations_research::sat::LinearExpressionProto *result, const operations_research::sat::LinearExpressionProto *a2)
{
  if (result != a2)
  {
    v2 = *(result + 1);
    if (v2)
    {
      v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
      v3 = *(a2 + 1);
      if ((v3 & 1) == 0)
      {
LABEL_4:
        if (v2 != v3)
        {
LABEL_5:
          v4 = result;
          operations_research::sat::LinearExpressionProto::CopyFrom(result, a2);
          return v4;
        }

        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(a2 + 1);
      if ((v3 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v2 != *(v3 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_5;
    }

LABEL_8:
    v5 = result;
    operations_research::sat::LinearExpressionProto::InternalSwap(result, a2);
    return v5;
  }

  return result;
}

uint64_t *std::vector<operations_research::sat::LinearExpressionProto>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (a2 < 0x333333333333334)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_23CA9800C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::__exception_guard_exceptions<std::vector<operations_research::sat::LinearExpressionProto>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveRoutes(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2, char *a3)
{
  v33[6] = *MEMORY[0x277D85DE8];
  if ((*(*(this + 1) + 416) & 1) != 0 || *(a2 + 4))
  {
    return 0;
  }

  if (*(a2 + 15) == 23)
  {
    v5 = *(a2 + 6);
    v6 = *(v5 + 16);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    if (v6 < 1)
    {
LABEL_7:
      v7 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(a2);
    *(a2 + 15) = 23;
    v9 = *(a2 + 1);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v5 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::RoutesConstraintProto>(v9);
    *(a2 + 6) = v5;
    v6 = *(v5 + 16);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    if (v6 < 1)
    {
      goto LABEL_7;
    }
  }

  v10 = 0;
  v7 = 0;
  v25 = v6;
  v11 = 4 * v6;
  do
  {
    v13 = *(v5[9] + v10);
    v14 = *(v5[3] + v10);
    v15 = *(v5[6] + v10);
    v16 = v28;
    if (v28 <= v14)
    {
      std::vector<BOOL>::resize(&v27, v14 + 1, 0);
      v16 = v28;
    }

    if (v16 <= v15)
    {
      std::vector<BOOL>::resize(&v27, v15 + 1, 0);
    }

    if (operations_research::sat::PresolveContext::LiteralIsFalse(*(this + 1), v13))
    {
      operator new();
    }

    *(v5[9] + 4 * v7) = v13;
    *(v5[3] + 4 * v7) = v14;
    *(v5[6] + 4 * v7++) = v15;
    v12 = v27;
    *(v27 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    *&v12[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
    v10 += 4;
  }

  while (v11 != v10);
  LODWORD(v6) = v25;
  if (!v7)
  {
    result = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(*(this + 1), "routes: graph with nodes and no arcs", 36);
    goto LABEL_40;
  }

LABEL_20:
  if (v28)
  {
    v17 = 0;
    v18 = 0;
    while (((*(v27 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17) & 1) != 0)
    {
      v18 = (v18 + 1);
      v17 = v18;
      if (v28 <= v18)
      {
        goto LABEL_24;
      }
    }

    v19 = *(this + 1);
    v33[0] = "routes: node ";
    v33[1] = 13;
    v20 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v18, v32, a3);
    v31[0] = v32;
    v31[1] = v20 - v32;
    v30[0] = " misses incoming or outgoing arcs";
    v30[1] = 33;
    absl::lts_20240722::StrCat(v33, v31, v30, &__p);
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

    result = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(v19, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v23 = result;
      operator delete(__p.__r_.__value_.__l.__data_);
      result = v23;
    }

    goto LABEL_40;
  }

LABEL_24:
  if (v7 < v6)
  {
    if (*(v5 + 16) > v7)
    {
      *(v5 + 16) = v7;
      if (*(v5 + 4) <= v7)
      {
LABEL_27:
        if (*(v5 + 10) <= v7)
        {
LABEL_29:
          result = 1;
          goto LABEL_40;
        }

LABEL_28:
        *(v5 + 10) = v7;
        goto LABEL_29;
      }
    }

    else if (*(v5 + 4) <= v7)
    {
      goto LABEL_27;
    }

    *(v5 + 4) = v7;
    if (*(v5 + 10) <= v7)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  result = 0;
LABEL_40:
  if (v27)
  {
    v24 = result;
    operator delete(v27);
    return v24;
  }

  return result;
}

void sub_23CA983E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveCircuit(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  if ((*(*(this + 1) + 416) & 1) != 0 || *(a2 + 4))
  {
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  if (*(a2 + 15) == 15)
  {
    v5 = *(a2 + 6);
    v6 = v5;
    v7 = v5;
    goto LABEL_18;
  }

  operations_research::sat::ConstraintProto::clear_constraint(a2);
  *(a2 + 15) = 15;
  v9 = *(a2 + 1);
  if (v9)
  {
    v6 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::CircuitConstraintProto>(*(v9 & 0xFFFFFFFFFFFFFFFELL));
    *(a2 + 6) = v6;
    if (*(a2 + 15) == 15)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::CircuitConstraintProto>(v9);
    *(a2 + 6) = v6;
    if (*(a2 + 15) == 15)
    {
LABEL_9:
      v5 = v6;
      v7 = v6;
      goto LABEL_18;
    }
  }

  operations_research::sat::ConstraintProto::clear_constraint(a2);
  *(a2 + 15) = 15;
  v10 = *(a2 + 1);
  if (v10)
  {
    v5 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::CircuitConstraintProto>(*(v10 & 0xFFFFFFFFFFFFFFFELL));
    *(a2 + 6) = v5;
    if (*(a2 + 15) == 15)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::CircuitConstraintProto>(v10);
    *(a2 + 6) = v5;
    if (*(a2 + 15) == 15)
    {
LABEL_13:
      v7 = v5;
      goto LABEL_18;
    }
  }

  operations_research::sat::ConstraintProto::clear_constraint(a2);
  *(a2 + 15) = 15;
  v11 = *(a2 + 1);
  if (v11)
  {
    v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
  }

  v7 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::CircuitConstraintProto>(v11);
  *(a2 + 6) = v7;
LABEL_18:
  operations_research::sat::ReindexArcs<google::protobuf::RepeatedField<int>>(v5 + 4, (v7 + 5), 0);
  v135 = 0;
  v136 = 0;
  v137 = 0;
  v132 = 0;
  v133 = 0;
  v134 = 0;
  v12 = *(v6 + 16);
  v122 = v6;
  v124 = v12;
  if (v12 < 1)
  {
    v118 = 0;
    LODWORD(v2) = 0;
  }

  else
  {
    v13 = 0;
    LODWORD(v2) = 0;
    do
    {
      *__p = *(v6[9] + 4 * v13);
      v14 = *(v6[3] + 4 * v13);
      v15 = *(v6[6] + 4 * v13);
      if (v14 <= v15)
      {
        v16 = *(v6[6] + 4 * v13);
      }

      else
      {
        v16 = *(v6[3] + 4 * v13);
      }

      v17 = v16 + 1;
      if (v2 <= v16 + 1)
      {
        v2 = (v16 + 1);
      }

      else
      {
        v2 = v2;
      }

      v18 = v136;
      v19 = 0xAAAAAAAAAAAAAAABLL * (v136 - v135);
      if (v19 <= v16)
      {
        v20 = v17;
        if (v17 <= v19)
        {
          if (v17 < v19)
          {
            v21 = &v135[3 * v17];
            if (v136 != v21)
            {
              v22 = v136;
              do
              {
                v24 = *(v22 - 3);
                v22 -= 3;
                v23 = v24;
                if (v24)
                {
                  *(v18 - 2) = v23;
                  operator delete(v23);
                }

                v18 = v22;
              }

              while (v22 != v21);
            }

            v136 = v21;
            v6 = v122;
            v12 = v124;
          }
        }

        else
        {
          std::vector<std::vector<int>>::__append(&v135, v17 - v19);
        }

        v25 = v133;
        v26 = 0xAAAAAAAAAAAAAAABLL * (v133 - v132);
        if (v20 <= v26)
        {
          if (v20 < v26)
          {
            v27 = &v132[3 * v20];
            if (v133 != v27)
            {
              v28 = v133;
              do
              {
                v30 = *(v28 - 3);
                v28 -= 3;
                v29 = v30;
                if (v30)
                {
                  *(v25 - 2) = v29;
                  operator delete(v29);
                }

                v25 = v28;
              }

              while (v28 != v27);
            }

            v133 = v27;
            v6 = v122;
          }
        }

        else
        {
          std::vector<std::vector<int>>::__append(&v132, v20 - v26);
        }
      }

      std::vector<int>::push_back[abi:ne200100](&v135[3 * v15], __p);
      std::vector<int>::push_back[abi:ne200100](&v132[3 * v14], __p);
      ++v13;
    }

    while (v13 != v12);
    if (v2 < 1)
    {
      v118 = 0;
    }

    else
    {
      v34 = v132 + 1;
      v35 = v135 + 1;
      v36 = v2;
      do
      {
        if (*(v35 - 1) == *v35 || *(v34 - 1) == *v34)
        {
          LOBYTE(v2) = operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, a2, v31, v32, v33);
          goto LABEL_98;
        }

        v34 += 3;
        v35 += 3;
        --v36;
      }

      while (v36);
      v118 = 1;
    }
  }

  v125 = 0;
  v37 = v135;
  v38 = v136;
  if (v135 != v136)
  {
    do
    {
      v39 = *v37;
      v40 = v37[1];
      if (v40 - *v37 == 4)
      {
        if (!operations_research::sat::PresolveContext::LiteralIsTrue(*(this + 1), *v39))
        {
          if ((operations_research::sat::PresolveContext::SetLiteralToTrue(*(this + 1), **v37) & 1) == 0)
          {
LABEL_97:
            LOBYTE(v2) = 1;
            goto LABEL_98;
          }

          ++v125;
        }
      }

      else
      {
        while (v39 != v40)
        {
          v41 = *v39;
          if (operations_research::sat::PresolveContext::LiteralIsTrue(*(this + 1), *v39))
          {
            v43 = *v37;
            v42 = v37[1];
            while (v43 != v42)
            {
              v44 = *v43;
              if (*v43 != v41)
              {
                if (!operations_research::sat::PresolveContext::IsFixed(*(this + 1), *v43))
                {
                  operator new();
                }

                if (!operations_research::sat::PresolveContext::SetLiteralToFalse(*(this + 1), v44))
                {
                  goto LABEL_97;
                }
              }

              ++v43;
            }

            v12 = v124;
            break;
          }

          ++v39;
        }
      }

      v37 += 3;
    }

    while (v37 != v38);
  }

  v45 = v132;
  v46 = v133;
LABEL_76:
  while (v45 != v46)
  {
    v47 = *v45;
    v48 = v45[1];
    if (v48 - *v45 == 4)
    {
      if (!operations_research::sat::PresolveContext::LiteralIsTrue(*(this + 1), *v47))
      {
        if (!operations_research::sat::PresolveContext::SetLiteralToTrue(*(this + 1), **v45))
        {
          goto LABEL_97;
        }

        ++v125;
      }
    }

    else
    {
      while (v47 != v48)
      {
        v49 = *v47;
        if (operations_research::sat::PresolveContext::LiteralIsTrue(*(this + 1), *v47))
        {
          v50 = *v45;
          v51 = v45[1];
          if (*v45 == v51)
          {
            v12 = v124;
            v45 += 3;
            goto LABEL_76;
          }

          while (1)
          {
            v52 = *v50;
            if (*v50 != v49)
            {
              if (!operations_research::sat::PresolveContext::IsFixed(*(this + 1), *v50))
              {
                operator new();
              }

              if (!operations_research::sat::PresolveContext::SetLiteralToFalse(*(this + 1), v52))
              {
                goto LABEL_97;
              }
            }

            if (++v50 == v51)
            {
              v12 = v124;
              v45 += 3;
              goto LABEL_76;
            }
          }
        }

        ++v47;
      }
    }

    v45 += 3;
  }

  if (v125 >= 1)
  {
    operator new();
  }

  if (v2)
  {
    operator new();
  }

  if (v12 >= 1)
  {
    v65 = 0;
    v66 = 0;
    v126 = 0;
    v67 = -1;
    while (1)
    {
      LODWORD(v2) = *(v6[9] + v65);
      if (!operations_research::sat::PresolveContext::LiteralIsFalse(*(this + 1), v2))
      {
        IsTrue = operations_research::sat::PresolveContext::LiteralIsTrue(*(this + 1), v2);
        v70 = v6[3];
        v71 = *(v70 + v65);
        if (IsTrue)
        {
          if (*(4 * v71) != -1)
          {
            LOBYTE(v2) = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(*(this + 1), &byte_23CE7F131, 0);
            goto LABEL_98;
          }

          v68 = v6[6];
          v72 = *(v68 + v65);
          *(4 * v71) = v72;
          v71 = *(v70 + v65);
          if (v71 != v72)
          {
            v67 = *(v70 + v65);
          }

          ++v66;
        }

        else
        {
          v68 = v6[6];
        }

        ++*(4 * v71);
        ++*(4 * *(v68 + v65));
        *(v70 + 4 * v126) = *(v70 + v65);
        *(v68 + 4 * v126) = *(v68 + v65);
        *(v6[9] + 4 * v126++) = v2;
      }

      v65 += 4;
      if (4 * v12 == v65)
      {
        goto LABEL_126;
      }
    }
  }

  v126 = 0;
  v66 = 0;
  v67 = -1;
LABEL_126:
  if (v118)
  {
    v73 = 0;
    v74 = 0;
    v75 = 0;
    while (1)
    {
      v76 = *v75++;
      if (!v76 || !*v74)
      {
        break;
      }

      ++v74;
      if (!--v73)
      {
        goto LABEL_131;
      }
    }

    LOBYTE(v2) = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(*(this + 1), &byte_23CE7F131, 0);
    goto LABEL_98;
  }

LABEL_131:
  if (v67 == -1)
  {
    if (v66 == v126)
    {
      v86 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(__p, "circuit: empty circuit.");
      operations_research::sat::PresolveContext::UpdateRuleStats(v86, __p, 1, v87, v88);
      v89 = a2;
      if (v131 < 0)
      {
        operator delete(*__p);
        v89 = a2;
      }

      operations_research::sat::ConstraintProto::Clear(v89);
      goto LABEL_207;
    }

LABEL_165:
    if (v118)
    {
      v94 = 0;
      while (1)
      {
        v123 = v94;
        v95 = 24 * v94;
        v96 = &v135[3 * v94];
        v97 = v132;
        v98 = *v96;
        v99 = v96[1];
        if (*v96 != v99)
        {
          v119 = v132;
          v121 = 24 * v94;
          while (1)
          {
            v100 = *v98;
            if (!operations_research::sat::PresolveContext::LiteralIsFalse(*(this + 1), *v98))
            {
              break;
            }

            LODWORD(v12) = v124;
            if (++v98 == v99)
            {
              goto LABEL_177;
            }
          }

          if (!operations_research::sat::PresolveContext::LiteralIsTrue(*(this + 1), v100))
          {
            operator new();
          }

          LODWORD(v12) = v124;
LABEL_177:
          v97 = v119;
          v95 = v121;
        }

        v101 = *(v97 + v95);
        v102 = *(v97 + v95 + 8);
        if (v101 == v102)
        {
          goto LABEL_169;
        }

        v103 = 0;
        v104 = 0;
        while (1)
        {
          v106 = *v101;
          if (!operations_research::sat::PresolveContext::LiteralIsFalse(*(this + 1), *v101))
          {
            break;
          }

          v105 = v104;
LABEL_181:
          LODWORD(v12) = v124;
          ++v101;
          v104 = v105;
          if (v101 == v102)
          {
            goto LABEL_195;
          }
        }

        if (!operations_research::sat::PresolveContext::LiteralIsTrue(*(this + 1), v106))
        {
          break;
        }

        v105 = v104;
        v103 = v104;
        LODWORD(v12) = v124;
LABEL_195:
        if (v103 - v105 == 8)
        {
          if ((v105[1] ^ *v105) != 0xFFFFFFFF)
          {
            v114 = *(this + 1);
            v131 = 17;
            strcpy(__p, "circuit: degree 2");
            operations_research::sat::PresolveContext::UpdateRuleStats(v114, __p, 1, v107, v108);
            if (v131 < 0)
            {
              operator delete(*__p);
            }

            operations_research::sat::PresolveContext::StoreBooleanEqualityRelation(*(this + 1), *v105, ~v105[1]);
          }

          operator delete(v105);
        }

LABEL_169:
        v94 = v123 + 1;
        if (v123 == -1)
        {
          goto LABEL_200;
        }
      }

      v109 = &v103[-v104];
      v110 = &v103[-v104] >> 2;
      v111 = v110 + 1;
      if ((v110 + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (-v104 >> 1 > v111)
      {
        v111 = -v104 >> 1;
      }

      if (-v104 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v112 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v112 = v111;
      }

      if (v112)
      {
        if (!(v112 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v105 = 0;
      v113 = (4 * v110);
      *v113 = v106;
      v103 = (v113 + 1);
      memcpy(0, v104, v109);
      goto LABEL_181;
    }

LABEL_200:
    if (v126 >= v12)
    {
      LOBYTE(v2) = 0;
      goto LABEL_98;
    }

    if (*(v6 + 4) <= v126)
    {
      if (*(v6 + 10) <= v126)
      {
LABEL_203:
        if (*(v6 + 16) <= v126)
        {
          goto LABEL_205;
        }

        goto LABEL_204;
      }
    }

    else
    {
      *(v6 + 4) = v126;
      if (*(v6 + 10) <= v126)
      {
        goto LABEL_203;
      }
    }

    *(v6 + 10) = v126;
    if (*(v6 + 16) <= v126)
    {
LABEL_205:
      v115 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(__p, "circuit: removed false arcs.");
      operations_research::sat::PresolveContext::UpdateRuleStats(v115, __p, 1, v116, v117);
      if (v131 < 0)
      {
        operator delete(*__p);
      }

LABEL_207:
      LOBYTE(v2) = 1;
      goto LABEL_98;
    }

LABEL_204:
    *(v6 + 16) = v126;
    goto LABEL_205;
  }

  LOBYTE(v129[0]) = 0;
  std::vector<BOOL>::vector(__p, 0, v129);
  v77 = *__p;
  v78 = v67;
  while (1)
  {
    v79 = v78 >> 6;
    v80 = *(v77 + 8 * v79);
    if ((v80 & (1 << v78)) != 0)
    {
      break;
    }

    *(v77 + 8 * v79) = v80 | (1 << v78);
    v78 = *(4 * v78);
    if (v78 == -1)
    {
      v78 = -1;
      break;
    }
  }

  if (v78 == v67)
  {
    LOBYTE(v127[0]) = 0;
    std::vector<BOOL>::vector(v129, 0, v127);
    if (v12 >= 1)
    {
      for (i = 0; 4 * v12 != i; i += 4)
      {
        v85 = *(v6[3] + i);
        if (((1 << v85) & *(*__p + 8 * (v85 >> 6))) == 0)
        {
          if (v85 == *(v6[6] + i))
          {
            *(v129[0] + (v85 >> 6)) |= 1 << v85;
            if ((operations_research::sat::PresolveContext::SetLiteralToTrue(*(this + 1), *(v6[9] + i)) & 1) == 0)
            {
              goto LABEL_145;
            }
          }

          else if (!operations_research::sat::PresolveContext::SetLiteralToFalse(*(this + 1), *(v6[9] + i)))
          {
LABEL_145:
            LOBYTE(v2) = 1;
            goto LABEL_160;
          }
        }
      }
    }

    if (v118)
    {
      v90 = 0;
      while ((*(*__p + 8 * (v90 >> 6)) & (1 << v90)) != 0 || (*(v129[0] + (v90 >> 6)) & (1 << v90)) != 0)
      {
        if (!++v90)
        {
          goto LABEL_157;
        }
      }

      LOBYTE(v2) = operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, a2, v81, v82, v83);
      v6 = v122;
      LODWORD(v12) = v124;
    }

    else
    {
LABEL_157:
      v91 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(v127, "circuit: fully specified.");
      operations_research::sat::PresolveContext::UpdateRuleStats(v91, v127, 1, v92, v93);
      if (v128 < 0)
      {
        operator delete(v127[0]);
      }

      operations_research::sat::ConstraintProto::Clear(a2);
      LOBYTE(v2) = 1;
    }

LABEL_160:
    if (v129[0])
    {
      operator delete(v129[0]);
    }
  }

  if (*__p)
  {
    operator delete(*__p);
  }

  if (v78 != v67)
  {
    goto LABEL_165;
  }

LABEL_98:
  v53 = v132;
  if (v132)
  {
    v54 = v133;
    v55 = v132;
    if (v133 != v132)
    {
      v56 = v133;
      do
      {
        v58 = *(v56 - 3);
        v56 -= 3;
        v57 = v58;
        if (v58)
        {
          *(v54 - 2) = v57;
          operator delete(v57);
        }

        v54 = v56;
      }

      while (v56 != v53);
      v55 = v132;
    }

    v133 = v53;
    operator delete(v55);
  }

  v59 = v135;
  if (v135)
  {
    v60 = v136;
    v61 = v135;
    if (v136 != v135)
    {
      v62 = v136;
      do
      {
        v64 = *(v62 - 3);
        v62 -= 3;
        v63 = v64;
        if (v64)
        {
          *(v60 - 2) = v63;
          operator delete(v63);
        }

        v60 = v62;
      }

      while (v62 != v59);
      v61 = v135;
    }

    v136 = v59;
    operator delete(v61);
  }

  return v2 & 1;
}

void sub_23CA9937C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
    v34 = a28;
    if (!a28)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v34 = a28;
    if (!a28)
    {
LABEL_7:
      if (a11)
      {
        operator delete(a11);
        if (!a16)
        {
LABEL_9:
          if (!a9)
          {
LABEL_14:
            std::vector<std::vector<int>>::~vector[abi:ne200100]((v33 - 136));
            std::vector<std::vector<int>>::~vector[abi:ne200100]((v33 - 112));
            _Unwind_Resume(a1);
          }

LABEL_13:
          operator delete(a9);
          std::vector<std::vector<int>>::~vector[abi:ne200100]((v33 - 136));
          std::vector<std::vector<int>>::~vector[abi:ne200100]((v33 - 112));
          _Unwind_Resume(a1);
        }
      }

      else if (!a16)
      {
        goto LABEL_9;
      }

      operator delete(a16);
      if (!a9)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  operator delete(v34);
  goto LABEL_7;
}

uint64_t operations_research::sat::ReindexArcs<google::protobuf::RepeatedField<int>>(unsigned int *a1, uint64_t a2, void *a3)
{
  v3 = *a1;
  if (!*a1)
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

void sub_23CA99968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, char a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (a10 >= 2)
  {
    operator delete((a12 - (a11 & 1) - 8));
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::clear(va);
  _Unwind_Resume(a1);
}

void *std::vector<BOOL>::vector(void *a1, unint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

uint64_t operations_research::sat::CpModelPresolver::PresolveAutomaton(operations_research::sat::PresolveContext **this, operations_research::sat::ConstraintProto *a2)
{
  if ((*(this[1] + 416) & 1) == 0 && !*(a2 + 4))
  {
    if (*(a2 + 15) == 17)
    {
      v5 = *(a2 + 6);
      if (!*(v5 + 28))
      {
        return 0;
      }
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(a2);
      *(a2 + 15) = 17;
      v6 = *(a2 + 1);
      if (v6)
      {
        v5 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::AutomatonConstraintProto>(*(v6 & 0xFFFFFFFFFFFFFFFELL));
        *(a2 + 6) = v5;
        if (!*(v5 + 28))
        {
          return 0;
        }
      }

      else
      {
        v5 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::AutomatonConstraintProto>(v6);
        *(a2 + 6) = v5;
        if (!*(v5 + 28))
        {
          return 0;
        }
      }
    }

    if (*(v5 + 22))
    {
      v7 = &operations_research::sat::_AutomatonConstraintProto_default_instance_;
      if (*(a2 + 15) == 17)
      {
        v7 = v5;
      }

      operations_research::sat::PresolveContext::GetAffineRelation(v8, this[1], *v7[15]);
      operator new();
    }
  }

  return 0;
}

void sub_23CA9A250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, void *a18, int a19, __int16 a20, char a21, char a22, char a23, void *a24, uint64_t a25, uint64_t a26, void *a27)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a24);
  }

  std::vector<absl::lts_20240722::flat_hash_set<long long,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>>::~vector[abi:ne200100](&a27);
  std::vector<absl::lts_20240722::flat_hash_set<long long,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>>::~vector[abi:ne200100]((v27 - 112));
  if (a10)
  {
    operator delete(a10);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveReservoir(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  if ((*(*(this + 1) + 416) & 1) != 0 || *(a2 + 4))
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (*(a2 + 15) == 24)
  {
    v6 = *(a2 + 6);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(a2);
    *(a2 + 15) = 24;
    v7 = *(a2 + 1);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::ReservoirConstraintProto>(v7);
    v6 = v8;
    *(a2 + 6) = v8;
  }

  v9 = *(v6 + 16);
  if (v9)
  {
    v10 = (v9 + 7);
  }

  else
  {
    v10 = (v6 + 16);
  }

  v11 = *(v6 + 24);
  if (v11)
  {
    v3 = 0;
    v12 = 8 * v11;
    do
    {
      v13 = *v10++;
      v3 |= operations_research::sat::PresolveContext::CanonicalizeLinearExpression(*(this + 1), *(a2 + 3), *(a2 + 4), v13);
      v12 -= 8;
    }

    while (v12);
  }

  else
  {
    v3 = 0;
  }

  v15 = (v6 + 64);
  v14 = *(v6 + 64);
  if (v14)
  {
    v16 = (v14 + 7);
  }

  else
  {
    v16 = (v6 + 64);
  }

  v17 = *(v6 + 72);
  if (v17)
  {
    v18 = 8 * v17;
    do
    {
      v19 = *v16++;
      v3 |= operations_research::sat::PresolveContext::CanonicalizeLinearExpression(*(this + 1), *(a2 + 3), *(a2 + 4), v19);
      v18 -= 8;
    }

    while (v18);
  }

  v20 = (v6 + 40);
  if (*(v6 + 40))
  {
    LODWORD(v21) = *(v6 + 72);
    if (v21 < 1)
    {
      goto LABEL_91;
    }

    goto LABEL_33;
  }

  TrueLiteral = operations_research::sat::PresolveContext::GetTrueLiteral(*(this + 1));
  if (*(v6 + 24) >= 1)
  {
    v23 = 0;
    v24 = *(v6 + 40);
    v25 = *(v6 + 44);
    do
    {
      if (v24 == v25)
      {
        v27 = TrueLiteral;
        google::protobuf::RepeatedField<int>::Grow(v6 + 40, v24, (v24 + 1));
        TrueLiteral = v27;
        LODWORD(v24) = *(v6 + 40);
        v25 = *(v6 + 44);
      }

      v26 = *(v6 + 48);
      *(v6 + 40) = v24 + 1;
      *(v26 + 4 * v24) = TrueLiteral;
      ++v23;
      v24 = (v24 + 1);
    }

    while (v23 < *(v6 + 24));
  }

  LOBYTE(v3) = 1;
  LODWORD(v21) = *(v6 + 72);
  if (v21 >= 1)
  {
LABEL_33:
    v28 = 0;
    v29 = 0;
    v30 = 8;
    do
    {
      if (*v15)
      {
        v31 = (*v15 + v30 - 1);
      }

      else
      {
        v31 = (v6 + 64);
      }

      if (operations_research::sat::PresolveContext::IsFixed(*(this + 1), *v31) && ((*v15 & 1) != 0 ? (v32 = (*v15 + v30 - 1)) : (v32 = (v6 + 64)), !operations_research::sat::PresolveContext::FixedValue(*(this + 1), *v32)) || operations_research::sat::PresolveContext::LiteralIsFalse(*(this + 1), *(*(v6 + 48) + 4 * v28)))
      {
        ++v29;
      }

      ++v28;
      v21 = *(v6 + 72);
      v30 += 8;
    }

    while (v28 < v21);
    if (v29 >= 1)
    {
      if (v21 < 1)
      {
        v35 = 0;
      }

      else
      {
        v34 = 0;
        v35 = 0;
        v36 = 8;
        do
        {
          if (*v15)
          {
            v37 = (*v15 + v36 - 1);
          }

          else
          {
            v37 = (v6 + 64);
          }

          if (!operations_research::sat::PresolveContext::IsFixed(*(this + 1), *v37) || ((*v15 & 1) != 0 ? (v38 = (*v15 + v36 - 1)) : (v38 = (v6 + 64)), operations_research::sat::PresolveContext::FixedValue(*(this + 1), *v38)))
          {
            if (!operations_research::sat::PresolveContext::LiteralIsFalse(*(this + 1), *(*(v6 + 48) + 4 * v34)))
            {
              v39 = *(v6 + 64);
              v40 = 8 * v35;
              v41 = v39 - 1 + v40;
              if (v39)
              {
                v42 = (v39 - 1 + v36);
              }

              else
              {
                v42 = (v6 + 64);
              }

              v43 = *v42;
              v44 = (v41 + 8);
              if ((*(v6 + 64) & 1) == 0)
              {
                v44 = (v6 + 64);
              }

              operations_research::sat::LinearExpressionProto::CopyFrom(*v44, v43);
              v45 = *(v6 + 16);
              v46 = v45 - 1 + v40;
              if (v45)
              {
                v47 = (v45 - 1 + v36);
              }

              else
              {
                v47 = (v6 + 16);
              }

              v48 = *v47;
              v49 = (v46 + 8);
              if ((*(v6 + 16) & 1) == 0)
              {
                v49 = (v6 + 16);
              }

              operations_research::sat::LinearExpressionProto::CopyFrom(*v49, v48);
              *(*(v6 + 48) + 4 * v35++) = *(*(v6 + 48) + 4 * v34);
            }
          }

          ++v34;
          v21 = *(v6 + 72);
          v36 += 8;
        }

        while (v34 < v21);
      }

      if (*v15)
      {
        v50 = *v15 + 7;
      }

      else
      {
        v50 = v6 + 64;
      }

      v51 = v21 - v35;
      if (v21 - v35 >= 1)
      {
        if (!*(v6 + 80))
        {
          v52 = (v50 + 8 * v35);
          v53 = (v21 - v35);
          do
          {
            v54 = *v52++;
            google::protobuf::internal::InternalOutOfLineDeleteMessageLite(v54, v33);
            --v53;
          }

          while (v53);
        }

        google::protobuf::internal::RepeatedPtrFieldBase::CloseGap((v6 + 64), v35, v51);
      }

      v55 = *(v6 + 16);
      if (v55)
      {
        v56 = v55 + 7;
      }

      else
      {
        v56 = v6 + 16;
      }

      v57 = *(v6 + 24) - v35;
      if (v57 >= 1)
      {
        if (!*(v6 + 32))
        {
          v58 = (v56 + 8 * v35);
          v59 = (*(v6 + 24) - v35);
          do
          {
            v60 = *v58++;
            google::protobuf::internal::InternalOutOfLineDeleteMessageLite(v60, v33);
            --v59;
          }

          while (v59);
        }

        google::protobuf::internal::RepeatedPtrFieldBase::CloseGap((v6 + 16), v35, v57);
      }

      if (*v20 > v35)
      {
        *v20 = v35;
      }

      operator new();
    }
  }

LABEL_91:
  if (*v15)
  {
    v61 = (*v15 + 7);
  }

  else
  {
    v61 = (v6 + 64);
  }

  if (!v21)
  {
    v149 = (v6 + 16);
LABEL_122:
    v66 = 0;
    goto LABEL_123;
  }

  v62 = 8 * v21;
  do
  {
    if (!operations_research::sat::PresolveContext::IsFixed(*(this + 1), *v61))
    {
      return v3 & 1;
    }

    ++v61;
    v62 -= 8;
  }

  while (v62);
  v149 = (v6 + 16);
  v63 = *(v6 + 72);
  if (!v63)
  {
    goto LABEL_122;
  }

  if (*v15)
  {
    v64 = (*v15 + 7);
  }

  else
  {
    v64 = (v6 + 64);
  }

  v65 = operations_research::sat::PresolveContext::FixedValue(*(this + 1), *v64);
  if (v65 >= 0)
  {
    v66 = v65;
  }

  else
  {
    v66 = -v65;
  }

  if (v63 >= 1)
  {
    v151 = v63;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v152 = 0;
    v150 = 0;
    v70 = v66;
    while (1)
    {
      if (*v15)
      {
        v71 = (*v15 + 8 * v67 + 7);
      }

      else
      {
        v71 = (v6 + 64);
      }

      v72 = operations_research::sat::PresolveContext::FixedValue(*(this + 1), *v71);
      if (v72)
      {
        if (v72 >= 0)
        {
          v73 = v72;
        }

        else
        {
          v73 = -v72;
        }

        do
        {
          v66 = v73;
          v73 = v70 % v73;
          v70 = v66;
        }

        while (v73);
        if (v72 < 1)
        {
          goto LABEL_119;
        }

        ++v150;
        v69 += v72;
        ++v67;
        v70 = v66;
        if (v67 == v151)
        {
          goto LABEL_124;
        }
      }

      else
      {
        v66 = v70;
LABEL_119:
        ++v152;
        v68 += v72;
        ++v67;
        v70 = v66;
        if (v67 == v151)
        {
          goto LABEL_124;
        }
      }
    }
  }

LABEL_123:
  v150 = 0;
  v152 = 0;
  v69 = 0;
  v68 = 0;
LABEL_124:
  v75 = *(v6 + 88);
  v74 = *(v6 + 96);
  if (v68 >= v75 && v69 <= v74)
  {
    operator new();
  }

  if (v68 > v74 || v69 < v75)
  {
    operator new();
  }

  if (v68 > v75)
  {
    *(v6 + 88) = v68;
    v76 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(&__p, "reservoir: increase min_level to reachable value");
    operations_research::sat::PresolveContext::UpdateRuleStats(v76, &__p, 1, v77, v78);
    if (SHIBYTE(v159[1]) < 0)
    {
      operator delete(__p);
    }

    v74 = *(v6 + 96);
  }

  if (v69 < v74)
  {
    *(v6 + 96) = v69;
    v79 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(&__p, "reservoir: reduce max_level to reachable value");
    operations_research::sat::PresolveContext::UpdateRuleStats(v79, &__p, 1, v80, v81);
    if (SHIBYTE(v159[1]) < 0)
    {
      operator delete(__p);
    }
  }

  v82 = *(v6 + 88);
  if (v82 >= 1 || (*(v6 + 96) & 0x8000000000000000) != 0 || v150 && v152)
  {
    if (v66 > 1)
    {
      if (*(v6 + 72) >= 1)
      {
        v83 = 0;
        v84 = *v15;
        v85 = 8;
        do
        {
          if (v84)
          {
            v86 = (v84 + v85 - 1);
          }

          else
          {
            v86 = (v6 + 64);
          }

          v87 = *v86;
          *(v87 + 8) = operations_research::sat::PresolveContext::FixedValue(*(this + 1), *v86) / v66;
          v84 = *(v6 + 64);
          v88 = (v84 + v85 - 1);
          if ((v84 & 1) == 0)
          {
            v88 = (v6 + 64);
          }

          v89 = *v88;
          *(v89 + 16) = 0;
          *(v89 + 40) = 0;
          ++v83;
          v85 += 8;
        }

        while (v83 < *(v6 + 72));
        v82 = *(v6 + 88);
      }

      operations_research::Domain::Domain(v156, v82, *(v6 + 96));
      operations_research::Domain::InverseMultiplicationBy(&__p, v156, v66);
      if (v156[0])
      {
        operator delete(v156[1]);
      }

      *(v6 + 88) = operations_research::Domain::Min(&__p);
      *(v6 + 96) = operations_research::Domain::Max(&__p);
      v90 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(v156, "reservoir: simplify level_changes and levels by gcd.");
      operations_research::sat::PresolveContext::UpdateRuleStats(v90, v156, 1, v91, v92);
      if (SBYTE7(v157) < 0)
      {
        operator delete(v156[0]);
      }

      if (__p)
      {
        operator delete(v159[0]);
      }
    }

    if (v150 == 1 && v152 >= 1)
    {
      v93 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(&__p, "TODO reservoir: one producer, multiple consumers.");
      operations_research::sat::PresolveContext::UpdateRuleStats(v93, &__p, 1, v94, v95);
      if (SHIBYTE(v159[1]) < 0)
      {
        operator delete(__p);
      }
    }

    __p = 0;
    v159[0] = 0;
    v159[1] = &unk_23CE31C20;
    if (*(v6 + 72) >= 1)
    {
      v96 = 0;
      do
      {
        if (*v149)
        {
          v97 = (*v149 + 8 * v96 + 7);
        }

        else
        {
          v97 = v149;
        }

        v98 = *v97;
        if (operations_research::sat::PresolveContext::IsFixed(*(this + 1), *v97))
        {
          v99 = 0x80000000;
        }

        else
        {
          v99 = **(v98 + 3);
        }

        if (operations_research::sat::PresolveContext::IsFixed(*(this + 1), v98))
        {
          v100 = 0;
        }

        else
        {
          v100 = **(v98 + 6);
        }

        if (operations_research::sat::PresolveContext::IsFixed(*(this + 1), v98))
        {
          v101 = operations_research::sat::PresolveContext::FixedValue(*(this + 1), v98);
        }

        else
        {
          v101 = *(v98 + 8);
        }

        v102 = 0;
        v103 = *(*(v6 + 48) + 4 * v96);
        LODWORD(v156[0]) = v99;
        v156[1] = v100;
        *&v157 = v101;
        DWORD2(v157) = v103;
        _X10 = v159[1];
        __asm { PRFM            #4, [X10] }

        v109 = &v100[(((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v99) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v99))];
        v110 = v101 + (((v109 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v109));
        v111 = (((v110 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v110)) + v103;
        v112 = ((v111 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v111);
        v113 = vdup_n_s8(v112 & 0x7F);
        v114 = ((v112 >> 7) ^ (v159[1] >> 12)) & __p;
        v115 = *(v159[1] + v114);
        v116 = vceq_s8(v115, v113);
        if (!v116)
        {
          goto LABEL_183;
        }

        do
        {
LABEL_175:
          v117 = v160 + 32 * ((v114 + (__clz(__rbit64(v116)) >> 3)) & __p);
          _ZF = *v117 == v99 && *(v117 + 8) == v100;
          if (_ZF && *(v117 + 16) == v101 && *(v117 + 24) == v103)
          {
            operator new();
          }

          v116 &= ((v116 & 0x8080808080808080) - 1) & 0x8080808080808080;
        }

        while (v116);
LABEL_183:
        while (!*&vceq_s8(v115, 0x8080808080808080))
        {
          v102 += 8;
          v114 = (v102 + v114) & __p;
          v115 = *(v159[1] + v114);
          v116 = vceq_s8(v115, v113);
          if (v116)
          {
            goto LABEL_175;
          }
        }

        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::tuple<int,long long,long long,int>>,absl::lts_20240722::hash_internal::Hash<std::tuple<int,long long,long long,int>>,std::equal_to<std::tuple<int,long long,long long,int>>,std::allocator<std::tuple<int,long long,long long,int>>>::find_or_prepare_insert_non_soo<std::tuple<int,long long,long long,int>>(&__p, v156, &v153);
        if (v155 == 1)
        {
          v119 = v154;
          v120 = v157;
          *v154 = *v156;
          v119[1] = v120;
        }

        ++v96;
      }

      while (v96 < *(v6 + 72));
      if (__p)
      {
        operator delete(v159[1] - (v159[0] & 1) - 8);
      }
    }
  }

  else
  {
    v121 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    v122 = operations_research::sat::ConstraintProto::mutable_linear(v121);
    if (*(v6 + 72) < 1)
    {
      v124 = 0;
    }

    else
    {
      v123 = 0;
      v124 = 0;
      v125 = 8;
      do
      {
        while (1)
        {
          v126 = *(v6 + 64);
          v127 = ((v126 & 1) != 0 ? v126 + v125 - 1 : v6 + 64);
          v128 = operations_research::sat::PresolveContext::FixedValue(*(this + 1), *v127);
          v129 = *(*(v6 + 48) + 4 * v123);
          if (v129 < 0)
          {
            break;
          }

          v130 = v122[2];
          v131 = v130;
          if (v130 == HIDWORD(v130))
          {
            v142 = v128;
            google::protobuf::RepeatedField<int>::Grow((v122 + 2), HIDWORD(v130), (HIDWORD(v130) + 1));
            v128 = v142;
            v131 = *(v122 + 4);
          }

          v132 = v122[3];
          *(v122 + 4) = v131 + 1;
          *(v132 + 4 * v131) = v129;
          v134 = *(v122 + 10);
          v133 = *(v122 + 11);
          if (v134 == v133)
          {
            v143 = v128;
            google::protobuf::RepeatedField<long long>::Grow((v122 + 5), v133, (v133 + 1));
            v128 = v143;
            v134 = *(v122 + 10);
          }

          v135 = v122[6];
          *(v122 + 10) = v134 + 1;
          *(v135 + 8 * v134) = v128;
          ++v123;
          v125 += 8;
          if (v123 >= *(v6 + 72))
          {
            goto LABEL_216;
          }
        }

        v136 = v122[2];
        v137 = v136;
        if (v136 == HIDWORD(v136))
        {
          v144 = v128;
          google::protobuf::RepeatedField<int>::Grow((v122 + 2), HIDWORD(v136), (HIDWORD(v136) + 1));
          v128 = v144;
          v137 = *(v122 + 4);
        }

        v138 = v122[3];
        *(v122 + 4) = v137 + 1;
        *(v138 + 4 * v137) = ~v129;
        v140 = *(v122 + 10);
        v139 = *(v122 + 11);
        if (v140 == v139)
        {
          v145 = v128;
          google::protobuf::RepeatedField<long long>::Grow((v122 + 5), v139, (v139 + 1));
          v128 = v145;
          v140 = *(v122 + 10);
        }

        v141 = v122[6];
        *(v122 + 10) = v140 + 1;
        *(v141 + 8 * v140) = -v128;
        v124 += v128;
        ++v123;
        v125 += 8;
      }

      while (v123 < *(v6 + 72));
    }

LABEL_216:
    operations_research::sat::LinearConstraintProto::add_domain(v122, *(v6 + 88) - v124);
    operations_research::sat::LinearConstraintProto::add_domain(v122, *(v6 + 96) - v124);
    v146 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(&__p, "reservoir: converted to linear");
    operations_research::sat::PresolveContext::UpdateRuleStats(v146, &__p, 1, v147, v148);
    if (SHIBYTE(v159[1]) < 0)
    {
      operator delete(__p);
    }

    operations_research::sat::ConstraintProto::Clear(a2);
    LOBYTE(v3) = 1;
  }

  return v3 & 1;
}

void sub_23CA9B0D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::CpModelPresolver::ConvertToBoolAnd(operations_research::sat::CpModelPresolver *this)
{
  v28 = xmmword_23CE306D0;
  v2 = *(this + 1);
  v3 = *(v2->__begin_ + 14);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 8;
    while (1)
    {
      v8 = **(this + 1);
      v10 = *(v8 + 48);
      v9 = (v8 + 48);
      v11 = v10 + v7 - 1;
      if (v10)
      {
        v9 = v11;
      }

      v12 = *v9;
      if (*(v12 + 16))
      {
        goto LABEL_4;
      }

      v13 = *(v12 + 60);
      if (v13 == 26)
      {
        v19 = *(v12 + 48);
        if (*(v19 + 16) != 2)
        {
          goto LABEL_4;
        }

        if (v5 >= v6)
        {
          v15 = v5;
          v16 = v5 >> 2;
          v20 = v16 + 1;
          if ((v16 + 1) >> 62)
          {
LABEL_43:
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (v6 >> 1 > v20)
          {
            v20 = v6 >> 1;
          }

          if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v18 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v20;
          }

          if (v18)
          {
            if (!(v18 >> 62))
            {
              operator new();
            }

LABEL_44:
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          goto LABEL_32;
        }
      }

      else
      {
        if (v13 != 3)
        {
          goto LABEL_4;
        }

        v14 = *(v12 + 48);
        if (*(v14 + 16) != 2)
        {
          goto LABEL_4;
        }

        if (v5 >= v6)
        {
          v15 = v5;
          v16 = v5 >> 2;
          v17 = v16 + 1;
          if ((v16 + 1) >> 62)
          {
            goto LABEL_43;
          }

          if (v6 >> 1 > v17)
          {
            v17 = v6 >> 1;
          }

          if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v18 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            if (!(v18 >> 62))
            {
              operator new();
            }

            goto LABEL_44;
          }

LABEL_32:
          v21 = (4 * v16);
          v6 = 4 * v18;
          *v21 = v4;
          v5 = (v21 + 1);
          memcpy(0, 0, v15);
          goto LABEL_4;
        }
      }

      *v5 = v4;
      v5 += 4;
LABEL_4:
      ++v4;
      v7 += 8;
      if (v3 == v4)
      {
        v2 = *(this + 1);
        goto LABEL_35;
      }
    }
  }

  v5 = 0;
LABEL_35:
  operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(v2);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v23 = **(this + 1);
      v25 = *(v23 + 48);
      v24 = (v23 + 48);
      v26 = *i;
      v27 = v25 + 8 * v26 + 7;
      if (v25)
      {
        v24 = v27;
      }

      operations_research::sat::ConstraintProto::Clear(*v24);
      operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v26);
    }
  }

  if (v28 >= 2)
  {
    operator delete((v29 - (BYTE8(v28) & 1) - 8));
  }
}

void sub_23CA9B444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
    if (a9 < 2)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (a9 < 2)
  {
    goto LABEL_3;
  }

  operator delete((a11 - (a10 & 1) - 8));
  _Unwind_Resume(exception_object);
}

void *operations_research::sat::anonymous namespace::AddImplication(unsigned int a1, int a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v55 = a1;
  v6 = *a4;
  if (*a4 > 1uLL)
  {
    v22 = 0;
    _X9 = a4[2];
    __asm { PRFM            #4, [X9] }

    v29 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a1) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a1));
    v30 = vdup_n_s8(v29 & 0x7F);
    v31 = ((_X9 >> 12) ^ (v29 >> 7)) & v6;
    v32 = *(_X9 + v31);
    v33 = vceq_s8(v32, v30);
    if (!v33)
    {
      goto LABEL_15;
    }

LABEL_13:
    while (*(a4[3] + 8 * ((v31 + (__clz(__rbit64(v33)) >> 3)) & v6)) != a1)
    {
      v33 &= ((v33 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v33)
      {
LABEL_15:
        while (!*&vceq_s8(v32, 0x8080808080808080))
        {
          v22 += 8;
          v31 = (v22 + v31) & v6;
          v32 = *(_X9 + v31);
          v33 = vceq_s8(v32, v30);
          if (v33)
          {
            goto LABEL_13;
          }
        }

        v40 = 0;
        v41 = ~a2;
        __asm { PRFM            #4, [X9] }

        v43 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v41) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v41));
        v44 = vdup_n_s8(v43 & 0x7F);
        v45 = ((_X9 >> 12) ^ (v43 >> 7)) & v6;
        v46 = *(_X9 + v45);
        v47 = vceq_s8(v46, v44);
        if (!v47)
        {
          goto LABEL_29;
        }

LABEL_27:
        while (*(a4[3] + 8 * ((v45 + (__clz(__rbit64(v47)) >> 3)) & v6)) != v41)
        {
          v47 &= ((v47 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v47)
          {
LABEL_29:
            while (!*&vceq_s8(v46, 0x8080808080808080))
            {
              v40 += 8;
              v45 = (v40 + v45) & v6;
              v46 = *(_X9 + v45);
              v47 = vceq_s8(v46, v44);
              if (v47)
              {
                goto LABEL_27;
              }
            }

            goto LABEL_3;
          }
        }

        goto LABEL_33;
      }
    }

    goto LABEL_19;
  }

  if (a4[1] < 2uLL)
  {
    goto LABEL_3;
  }

  v34 = *(a4 + 4);
  if (v34 == a1)
  {
LABEL_19:
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(a4, &v55, v56);
    if (v58 == 1)
    {
      *v57 = v55;
    }

    v36 = *(a3 + 48);
    v35 = a3 + 48;
    v37 = v36 + 8 * *(v57 + 4) + 7;
    if ((v36 & 1) == 0)
    {
      v37 = v35;
    }

    v9 = *v37;
    if (*(*v37 + 60) != 4)
    {
LABEL_8:
      operations_research::sat::ConstraintProto::clear_constraint(v9);
      *(v9 + 60) = 4;
      v15 = *(v9 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v15);
      *(v9 + 48) = result;
      v17 = result + 2;
      v18 = result[2];
      v19 = HIDWORD(v18);
      v20 = v18;
      if (v18 != HIDWORD(v18))
      {
        goto LABEL_11;
      }

LABEL_25:
      v39 = result;
      google::protobuf::RepeatedField<int>::Grow(v17, v19, (v19 + 1));
      result = v39;
      v20 = *(v39 + 4);
      goto LABEL_11;
    }

LABEL_24:
    result = *(v9 + 48);
    v38 = result[2];
    v17 = result + 2;
    v19 = HIDWORD(v38);
    v20 = v38;
    if (v38 != HIDWORD(v38))
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  LODWORD(v41) = ~a2;
  if (v34 != ~a2)
  {
LABEL_3:
    v7 = *(a3 + 56);
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(a4, &v55, v56);
    if (v58 == 1)
    {
      *v57 = v55;
    }

    *(v57 + 4) = v7;
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a3 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    v9 = v8;
    v10 = v55;
    v11 = (v8 + 16);
    v12 = *(v8 + 16);
    v13 = v12;
    if (v12 == HIDWORD(v12))
    {
      google::protobuf::RepeatedField<int>::Grow(v8 + 16, HIDWORD(v12), (HIDWORD(v12) + 1));
      v13 = *v11;
    }

    v14 = *(v9 + 24);
    *(v9 + 16) = v13 + 1;
    *(v14 + 4 * v13) = v10;
    if (*(v9 + 60) != 4)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_33:
  v54 = v41;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(a4, &v54, v56);
  if (v58 == 1)
  {
    *v57 = v54;
  }

  v49 = *(a3 + 48);
  v48 = a3 + 48;
  v50 = v49 + 8 * *(v57 + 4) + 7;
  if ((v49 & 1) == 0)
  {
    v50 = v48;
  }

  v51 = *v50;
  if (*(*v50 + 60) == 4)
  {
    result = *(v51 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v51);
    *(v51 + 60) = 4;
    v52 = *(v51 + 8);
    if (v52)
    {
      v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v52);
    *(v51 + 48) = result;
  }

  v5 = ~v55;
  v17 = result + 2;
  v53 = result[2];
  v19 = HIDWORD(v53);
  v20 = v53;
  if (v53 == HIDWORD(v53))
  {
    goto LABEL_25;
  }

LABEL_11:
  v21 = result[3];
  *(result + 4) = v20 + 1;
  *(v21 + 4 * v20) = v5;
  return result;
}

void sub_23CA9C938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  if (*(v62 - 225) < 0)
  {
    operator delete(*(v62 - 248));
  }

  std::vector<std::vector<int>>::~vector[abi:ne200100](&a17);
  operations_research::sat::PresolveTimer::~PresolveTimer(&__p, v64);
  operations_research::sat::Model::~Model(&a52);
  std::unique_ptr<operations_research::sat::PresolveTimer>::~unique_ptr[abi:ne200100](&a62, v65);
  _Unwind_Resume(a1);
}

void sub_23CA9CAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  operations_research::sat::Model::~Model(&a52);
  std::unique_ptr<operations_research::sat::PresolveTimer>::~unique_ptr[abi:ne200100](&a62);
  _Unwind_Resume(a1);
}

void sub_23CA9CC58(_Unwind_Exception *a1)
{
  std::vector<std::string>::~vector[abi:ne200100]((v2 + 96));
  std::vector<std::pair<std::string,long long>>::~vector[abi:ne200100]((v2 + 72));
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
    MEMORY[0x23EED9460](v2, v1);
    _Unwind_Resume(a1);
  }

  MEMORY[0x23EED9460](v2, v1);
  _Unwind_Resume(a1);
}

operations_research::sat::Prober *operations_research::sat::Model::GetOrCreate<operations_research::sat::Prober>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::Prober>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::Prober>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::Prober>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::Prober>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::Prober>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

uint64_t std::function<void ()(operations_research::sat::Literal)>::~function(uint64_t a1)
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

operations_research::sat::PresolveTimer **std::unique_ptr<operations_research::sat::PresolveTimer>::~unique_ptr[abi:ne200100](std::string **a1, uint64_t a2)
{
  v2 = a1;
  v3 = *a1;
  *v2 = 0;
  if (v3)
  {
    v4 = v2;
    operations_research::sat::PresolveTimer::~PresolveTimer(v3, a2);
    MEMORY[0x23EED9460]();
    return v4;
  }

  return v2;
}

uint64_t operations_research::sat::CpModelPresolver::PresolvePureSatPart(operations_research::sat::CpModelPresolver *this)
{
  v106[125] = *MEMORY[0x277D85DE8];
  v1 = *(this + 1);
  if (v1[416] & 1) != 0 || (v1[16])
  {
    v2 = 1;
    return v2 & 1;
  }

  v4 = this;
  v5 = *(*v1 + 32);
  if (v5)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v101 = 0;
  v100 = 0;
  v99 = 0;
  memset(v94, 0, sizeof(v94));
  v95 = xmmword_23CE306D0;
  v98 = 0;
  v96 = 0;
  v97 = 0;
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(v94);
  operations_research::TimeLimit::MergeWithGlobalTimeLimit(v6, *(v4 + 3));
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v94);
  operations_research::sat::SatSolver::SetNumVariables(v7, 0);
  v8 = **(v4 + 1);
  if (*(v8 + 56) < 1)
  {
    v2 = *(v7 + 528) ^ 1;
    goto LABEL_118;
  }

  v70 = v7;
  v9 = 0;
  v10 = 0;
  v67 = 0;
  do
  {
    v15 = *(v8 + 48);
    v14 = v8 + 48;
    v16 = v15 + 8 * v9 + 7;
    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = v14;
    }

    v69 = *v17;
    v18 = *(*v17 + 60);
    if (v18 == 4)
    {
      v19 = *(v69 + 16);
      v20 = *(*(v69 + 48) + 16);
      if (v19 < 2 || v20 < 2)
      {
        if (!v19)
        {
          operator new();
        }

LABEL_35:
        operator new();
      }

      if (v20 + v20 * v19 <= 10000)
      {
        goto LABEL_35;
      }

      v12 = v67 + 1;
      goto LABEL_12;
    }

    if (v18 != 3)
    {
      v11 = v18 == 0;
      v12 = v67;
      if (!v11)
      {
        v12 = v67 + 1;
      }

LABEL_12:
      v67 = v12;
      goto LABEL_13;
    }

    if (*(*(v69 + 48) + 16))
    {
      operator new();
    }

    if (*(v69 + 16))
    {
      operator new();
    }

    operations_research::sat::SatSolver::AddProblemClause(v70, 0, 0, 0);
    v4 = this;
    v22 = **(this + 1);
    v24 = *(v22 + 48);
    v23 = (v22 + 48);
    v25 = v24 + 8 * v9 + 7;
    if (v24)
    {
      v23 = v25;
    }

    operations_research::sat::ConstraintProto::Clear(*v23);
    operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v9);
    ++v10;
LABEL_13:
    ++v9;
    v13 = *(v4 + 1);
    v8 = *v13;
  }

  while (v9 < *(*v13 + 56));
  v2 = *(v70 + 528) ^ 1;
  if ((*(v70 + 528) & 1) != 0 || !v10)
  {
    goto LABEL_118;
  }

  memset(v93, 0, sizeof(v93));
  operations_research::sat::SatParameters::SatParameters(v88, 0, v13[49]);
  if (v90 == 1)
  {
    v91 = 0;
    v89 |= 1u;
  }

  operations_research::sat::SatPostsolver::SatPostsolver(v73, 0);
  memset(&__p, 0, sizeof(__p));
  if ((*(*(*(this + 1) + 392) + 281) & 1) == 0 && v67 == 0)
  {
    if ((operations_research::sat::LookForTrivialSatSolution(v94, 1.0, *(this + 2), v26) & 1) == 0)
    {
      goto LABEL_91;
    }

    v27 = *(v70 + 216);
    if (!*(v27 + 12))
    {
      {
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v102, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 7318);
        absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v102);
      }

      v2 = 1;
      goto LABEL_92;
    }

    v51 = *(*(*(this + 1) + 392) + 504);
    v52 = operations_research::sat::Model::GetOrCreate<operations_research::sat::Inprocessing>(v94);
    *(v52 + 13) = *(this + 2);
    if ((operations_research::sat::Inprocessing::PresolveLoop(v52, v51, 1uLL) & 1) == 0)
    {
      goto LABEL_91;
    }

    v53 = operations_research::sat::Model::GetOrCreate<operations_research::sat::PostsolveClauses>(v94);
    v54 = v53[1];
    if (v53[2] != v54)
    {
      v55 = v53[4];
      v56 = (v54 + 8 * (v55 / 0xAA));
      v57 = *v56 + 24 * (v55 % 0xAA);
      v58 = *(v54 + 8 * ((v53[5] + v55) / 0xAA)) + 24 * ((v53[5] + v55) % 0xAA);
      while (v57 != v58)
      {
        operations_research::sat::SatPostsolver::Add(v73, **v57, *v57, (*(v57 + 8) - *v57) >> 2);
        v57 += 24;
        if (v57 - *v56 == 4080)
        {
          v59 = v56[1];
          ++v56;
          v57 = v59;
        }
      }
    }

    operations_research::sat::ProbeAndFindEquivalentLiteral(v70, v73, 0, &__p, *(this + 2));
    if (*(v70 + 528))
    {
LABEL_91:
      v2 = 0;
      goto LABEL_92;
    }
  }

  else
  {
    v92 = 0;
    v89 |= 2u;
  }

  if (!operations_research::sat::SatSolver::ResetToLevelZero(v70))
  {
    goto LABEL_91;
  }

  v28 = *(this + 3);
  *(v28 + 112) = *(operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(v94) + 14) + *(v28 + 112);
  operations_research::sat::SatPresolver::SatPresolver(v102, v73, *(this + 2));
  operations_research::sat::SatPresolver::SetNumVariables(v102, 0);
  if (__p.__begin_ != __p.__end_)
  {
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(&v105, __p.__begin_, __p.__end_, __p.__end_ - __p.__begin_);
  }

  v106[123] = *(this + 3);
  operations_research::sat::SatParameters::CopyFrom(v106, v88);
  v29 = *(v70 + 216);
  if (*(v29 + 12) >= 1)
  {
    v30 = 0;
    do
    {
      operations_research::sat::SatPostsolver::FixVariable(v73, *(*(v29 + 48) + 4 * v30++));
      v29 = *(v70 + 216);
    }

    while (v30 < *(v29 + 12));
  }

  operations_research::sat::SatSolver::ExtractClauses<operations_research::sat::SatPresolver>(v70, v102);
  v31 = this;
  if ((operations_research::sat::SatPresolver::Presolve(v102, v93) & 1) == 0)
  {
    goto LABEL_82;
  }

  v32 = (v104 - v103) >> 3;
  if (v32 <= 0)
  {
    goto LABEL_80;
  }

  if (dword_27E25CBF0 >= 1)
  {
    v31 = this;
    if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::CpModelPresolver::PresolvePureSatPart(void)::$_1::operator() const(void)::site, dword_27E25CBF0))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v71, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 7381);
      v66 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v71, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v66, "New variables added by the SAT presolver.", 0x29uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v71);
      v31 = this;
    }
  }

  v33 = v99;
  v34 = v100;
  while (2)
  {
    while (2)
    {
      v35 = *(**(v31 + 1) + 32);
      if (v34 >= v101)
      {
        v36 = v34 - v33;
        v37 = (v34 - v33) >> 2;
        v38 = v37 + 1;
        if ((v37 + 1) >> 62)
        {
          v100 = v34;
          v99 = v33;
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v39 = v101 - v33;
        if ((v101 - v33) >> 1 > v38)
        {
          v38 = v39 >> 1;
        }

        if (v39 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v40 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v38;
        }

        if (v40)
        {
          if (!(v40 >> 62))
          {
            operator new();
          }

          v100 = v34;
          v99 = v33;
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(4 * v37) = v35;
        v34 = (4 * v37 + 4);
        memcpy(0, v33, v36);
        v101 = 0;
        if (v33)
        {
          operator delete(v33);
        }

        v33 = 0;
      }

      else
      {
        *v34 = v35;
        v34 += 4;
      }

      v31 = this;
      v41 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntegerVariableProto>);
      v42 = v41;
      v44 = *(v41 + 16);
      v43 = *(v41 + 20);
      v45 = (v41 + 16);
      if (v44 != v43)
      {
        v46 = *(v41 + 24);
        v47 = v44 + 1;
        *(v41 + 16) = v44 + 1;
        *(v46 + 8 * v44) = 0;
        if (v44 + 1 == v43)
        {
          break;
        }

        goto LABEL_75;
      }

      google::protobuf::RepeatedField<long long>::Grow(v41 + 16, v43, (v43 + 1));
      v48 = *(v42 + 16);
      v43 = *(v42 + 20);
      v46 = *(v42 + 24);
      v47 = v48 + 1;
      *(v42 + 16) = v48 + 1;
      *(v46 + 8 * v48) = 0;
      if (v48 + 1 != v43)
      {
LABEL_75:
        *v45 = v47 + 1;
        *(v46 + 8 * v47) = 1;
        if (!--v32)
        {
          goto LABEL_79;
        }

        continue;
      }

      break;
    }

    google::protobuf::RepeatedField<long long>::Grow(v45, v43, (v43 + 1));
    v49 = *(v42 + 16);
    v50 = *(v42 + 24);
    *v45 = v49 + 1;
    *(v50 + 8 * v49) = 1;
    if (--v32)
    {
      continue;
    }

    break;
  }

LABEL_79:
  v100 = v34;
  v99 = v33;
  operations_research::sat::PresolveContext::InitializeNewDomains(*(this + 1));
LABEL_80:
  {
    operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(v31 + 1));
    v2 = 1;
    goto LABEL_83;
  }

LABEL_82:
  v2 = 0;
LABEL_83:
  operations_research::sat::SatPresolver::~SatPresolver(v102);
LABEL_92:
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  v60 = v77;
  v61 = v78;
  v80 = 0;
  v62 = v78 - v77;
  if (v62 >= 3)
  {
    do
    {
      operator delete(*v60);
      v61 = v78;
      v60 = v77 + 1;
      v77 = v60;
      v62 = v78 - v60;
    }

    while (v62 > 2);
  }

  if (v62 == 1)
  {
    v63 = 512;
LABEL_106:
    v79 = v63;
  }

  else if (v62 == 2)
  {
    v63 = 1024;
    goto LABEL_106;
  }

  if (v60 != v61)
  {
    do
    {
      v64 = *v60++;
      operator delete(v64);
    }

    while (v60 != v61);
    v65 = v78;
    if (v78 != v77)
    {
      do
      {
        --v65;
      }

      while (v65 != v77);
      v78 = v65;
    }
  }

  if (v76)
  {
    operator delete(v76);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  operations_research::sat::SatParameters::~SatParameters(v88);
  if (v93[0])
  {
    operator delete(v93[0]);
  }

LABEL_118:
  operations_research::sat::Model::~Model(v94);
  if (v99)
  {
    operator delete(v99);
  }

  return v2 & 1;
}

void sub_23CA9E03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  operations_research::sat::SatPresolver::~SatPresolver(&STACK[0x558]);
  if (__p)
  {
    operator delete(__p);
  }

  operations_research::sat::SatPostsolver::~SatPostsolver(&a22);
  operations_research::sat::SatParameters::~SatParameters(&a42);
  if (STACK[0x4D8])
  {
    operator delete(STACK[0x4D8]);
  }

  if (v42)
  {
    operator delete(v42);
  }

  operations_research::sat::Model::~Model(&STACK[0x4F0]);
  v44 = STACK[0x540];
  if (STACK[0x540])
  {
    STACK[0x548] = v44;
    operator delete(v44);
    if (!a15)
    {
LABEL_9:
      _Unwind_Resume(a1);
    }
  }

  else if (!a15)
  {
    goto LABEL_9;
  }

  operator delete(a15);
  _Unwind_Resume(a1);
}

BOOL operations_research::sat::anonymous namespace::FixFromAssignment(unsigned int *a1, void *a2, operations_research::sat::PresolveContext *this)
{
  v3 = *a1;
  if (v3 >= 2)
  {
    v9 = 0;
    v4 = 0;
    v10 = v3 >> 1;
    while (1)
    {
      v11 = *(*a2 + 4 * v9);
      v12 = *(*(a1 + 1) + ((v9 >> 2) & 0x3FFFFFFFFFFFFFF8)) >> (2 * (v9 & 0x1Fu));
      if (v12)
      {
        if ((operations_research::sat::PresolveContext::SetLiteralToTrue(this, v11) & 1) == 0)
        {
          return v4;
        }
      }

      else if ((v12 & 2) != 0 && !operations_research::sat::PresolveContext::SetLiteralToFalse(this, v11))
      {
        return v4;
      }

      v4 = ++v9 >= v10;
      if (v9 == v10)
      {
        return v4;
      }
    }
  }

  return 1;
}

operations_research::sat::Inprocessing *operations_research::sat::Model::GetOrCreate<operations_research::sat::Inprocessing>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::Inprocessing>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::Inprocessing>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::Inprocessing>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::Inprocessing>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::Inprocessing>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

_OWORD *operations_research::sat::Model::GetOrCreate<operations_research::sat::PostsolveClauses>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::PostsolveClauses>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::PostsolveClauses>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::PostsolveClauses>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::PostsolveClauses>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::PostsolveClauses>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void operations_research::sat::SatSolver::ExtractClauses<operations_research::sat::SatPresolver>(uint64_t a1, operations_research::sat::SatPresolver *a2)
{
  if (*(a1 + 528) == 1)
  {
    operations_research::sat::SatSolver::ExtractClauses<operations_research::sat::SatPresolver>(&v24);
  }

  operations_research::sat::SatSolver::Backtrack(a1, 0);
  if (operations_research::sat::SatSolver::FinishPropagation(a1))
  {
    if (*(a1 + 360) < *(*(a1 + 216) + 12))
    {
      operations_research::sat::SatSolver::ProcessNewlyFixedVariables(a1);
    }

    operations_research::sat::ClauseManager::DeleteRemovedClauses(*(a1 + 32));
    operations_research::sat::SatPresolver::SetNumVariables(a2, *(a1 + 16));
    operations_research::sat::BinaryImplicationGraph::ExtractAllBinaryClauses<operations_research::sat::SatPresolver>(*(a1 + 24), a2);
    v4 = *(a1 + 32);
    v5 = *(v4 + 280);
    for (i = *(v4 + 288); v5 != i; ++v5)
    {
      v10 = 0;
      v12 = *v5;
      v13 = *(a1 + 32);
      _X10 = v13[41];
      __asm { PRFM            #4, [X10] }

      v20 = *v5 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *v5) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *v5)));
      v21 = ((v20 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v20);
      v22 = vdup_n_s8(v21 & 0x7F);
      v23 = v13[39];
      for (j = (v21 >> 7) ^ (_X10 >> 12); ; j = v10 + v7)
      {
        v7 = j & v23;
        v8 = *(_X10 + v7);
        v9 = vceq_s8(v8, v22);
        if (v9)
        {
          break;
        }

LABEL_10:
        if (vceq_s8(v8, 0x8080808080808080))
        {
          operations_research::sat::SatPresolver::AddClause(a2, v12 + 1, *v12);
          goto LABEL_13;
        }

        v10 += 8;
      }

      while (*(v13[42] + 24 * ((v7 + (__clz(__rbit64(v9)) >> 3)) & v23)) != v12)
      {
        v9 &= ((v9 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v9)
        {
          goto LABEL_10;
        }
      }

LABEL_13:
      ;
    }
  }
}

void operations_research::sat::anonymous namespace::ExtractClauses<operations_research::sat::SatPresolver>(void *a1, uint64_t a2, uint64_t a3)
{
  v30 = xmmword_23CE306D0;
  v3 = *(a2 + 328);
  if ((-1431655765 * ((*(a2 + 336) - v3) >> 3)) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = (v3 + 24 * v7);
      v9 = *v8;
      v10 = v8[1];
      if (*v8 != v10)
      {
        if (v10 - v9 != 8)
        {
          v11 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a3 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          v12 = v11;
          if (*(v11 + 60) == 3)
          {
            v13 = *(v11 + 48);
            v15 = *v8;
            v14 = v8[1];
            v16 = (v14 - *v8) >> 2;
            if (*(v13 + 5) >= v16)
            {
              goto LABEL_16;
            }

            goto LABEL_13;
          }

          operations_research::sat::ConstraintProto::clear_constraint(v11);
          *(v12 + 60) = 3;
          v17 = *(v12 + 8);
          if (v17)
          {
            v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v17);
          *(v12 + 48) = v13;
          v15 = *v8;
          v14 = v8[1];
          v16 = (v14 - *v8) >> 2;
          if (*(v13 + 5) < v16)
          {
LABEL_13:
            google::protobuf::RepeatedField<int>::Grow((v13 + 2), *(v13 + 4), v16);
            v15 = *v8;
            v14 = v8[1];
          }

LABEL_16:
          while (2)
          {
            if (v15 == v14)
            {
              goto LABEL_4;
            }

            v23 = *(*a1 + 4 * (*v15 >> 1));
            v24 = *(v12 + 60);
            if (*v15)
            {
              if (v24 == 3)
              {
                v18 = *(v12 + 48);
              }

              else
              {
                operations_research::sat::ConstraintProto::clear_constraint(v12);
                *(v12 + 60) = 3;
                v27 = *(v12 + 8);
                if (v27)
                {
                  v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
                }

                v18 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v27);
                *(v12 + 48) = v18;
              }

              v23 = ~v23;
              v28 = v18[2];
              v22 = v28;
              if (v28 == HIDWORD(v28))
              {
                google::protobuf::RepeatedField<int>::Grow((v18 + 2), HIDWORD(v28), (HIDWORD(v28) + 1));
LABEL_32:
                v22 = *(v18 + 4);
              }
            }

            else if (v24 == 3)
            {
              v18 = *(v12 + 48);
              v20 = v18[2];
              v19 = (v18 + 2);
              v21 = HIDWORD(v20);
              v22 = v20;
              if (v20 == HIDWORD(v20))
              {
                goto LABEL_22;
              }
            }

            else
            {
              operations_research::sat::ConstraintProto::clear_constraint(v12);
              *(v12 + 60) = 3;
              v25 = *(v12 + 8);
              if (v25)
              {
                v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
              }

              v18 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v25);
              *(v12 + 48) = v18;
              v19 = (v18 + 2);
              v26 = v18[2];
              v21 = HIDWORD(v26);
              v22 = v26;
              if (v26 == HIDWORD(v26))
              {
LABEL_22:
                google::protobuf::RepeatedField<int>::Grow(v19, v21, (v21 + 1));
                goto LABEL_32;
              }
            }

            v29 = v18[3];
            *(v18 + 4) = v22 + 1;
            *(v29 + 4 * v22) = v23;
            ++v15;
            continue;
          }
        }
      }

LABEL_4:
      ++v7;
      v3 = *(a2 + 328);
    }

    while (v7 < (-1431655765 * ((*(a2 + 336) - v3) >> 3)));
    if (v30 >= 2)
    {
      operator delete((v31 - (BYTE8(v30) & 1) - 8));
    }
  }
}

void sub_23CA9EA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, char a10, uint64_t a11)
{
  if (a9 >= 2)
  {
    v11 = a1;
    operator delete((a11 - (a10 & 1) - 8));
    a1 = v11;
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::anonymous namespace::ExtractClauses<operations_research::sat::SatPostsolver>(void *a1, operations_research::sat::SatPostsolver *this, uint64_t a3)
{
  if (((*(this + 2) - *(this + 1)) >> 2) < 1)
  {
    return;
  }

  v6 = 0;
  do
  {
    operations_research::sat::SatPostsolver::Clause(&v26, this, v6);
    v7 = v26;
    if (v26 == v27)
    {
      goto LABEL_34;
    }

    v8 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a3 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    v9 = v8;
    if (*(v8 + 60) == 3)
    {
      v10 = *(v8 + 48);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v8);
      *(v9 + 60) = 3;
      v11 = *(v9 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v11);
      *(v9 + 48) = v10;
    }

    v7 = v26;
    v12 = v27;
    v13 = (v27 - v26) >> 2;
    if (*(v10 + 5) < v13)
    {
      google::protobuf::RepeatedField<int>::Grow((v10 + 2), *(v10 + 4), v13);
      v7 = v26;
      v12 = v27;
      if (v26 == v27)
      {
        goto LABEL_34;
      }

LABEL_17:
      while (1)
      {
        v19 = *(*a1 + 4 * (*v7 >> 1));
        v20 = *(v9 + 60);
        if (*v7)
        {
          break;
        }

        if (v20 != 3)
        {
          operations_research::sat::ConstraintProto::clear_constraint(v9);
          *(v9 + 60) = 3;
          v21 = *(v9 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v21);
          *(v9 + 48) = v14;
          v15 = (v14 + 2);
          v22 = v14[2];
          v17 = HIDWORD(v22);
          v18 = v22;
          if (v22 != HIDWORD(v22))
          {
            goto LABEL_30;
          }

LABEL_22:
          google::protobuf::RepeatedField<int>::Grow(v15, v17, (v17 + 1));
LABEL_33:
          v18 = *(v14 + 4);
          goto LABEL_30;
        }

        v14 = *(v9 + 48);
        v16 = v14[2];
        v15 = (v14 + 2);
        v17 = HIDWORD(v16);
        v18 = v16;
        if (v16 == HIDWORD(v16))
        {
          goto LABEL_22;
        }

LABEL_30:
        v25 = v14[3];
        *(v14 + 4) = v18 + 1;
        *(v25 + 4 * v18) = v19;
        if (++v7 == v12)
        {
          v7 = v26;
          goto LABEL_34;
        }
      }

      if (v20 == 3)
      {
        v14 = *(v9 + 48);
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v9);
        *(v9 + 60) = 3;
        v23 = *(v9 + 8);
        if (v23)
        {
          v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v23);
        *(v9 + 48) = v14;
      }

      v19 = ~v19;
      v24 = v14[2];
      v18 = v24;
      if (v24 != HIDWORD(v24))
      {
        goto LABEL_30;
      }

      google::protobuf::RepeatedField<int>::Grow((v14 + 2), HIDWORD(v24), (HIDWORD(v24) + 1));
      goto LABEL_33;
    }

    if (v26 != v27)
    {
      goto LABEL_17;
    }

LABEL_34:
    if (v7)
    {
      v27 = v7;
      operator delete(v7);
    }

    ++v6;
  }

  while (v6 < ((*(this + 2) - *(this + 1)) >> 2));
}

void sub_23CA9ED24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    v11 = a1;
    operator delete(__p);
    a1 = v11;
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::SatPostsolver::~SatPostsolver(operations_research::sat::SatPostsolver *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  std::deque<int>::~deque[abi:ne200100](this + 32);
  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }
}

void operations_research::sat::CpModelPresolver::ShiftObjectiveWithExactlyOnes(operations_research::sat::CpModelPresolver *this)
{
  v2 = *(this + 1);
  if ((*(v2 + 416) & 1) == 0)
  {
    if (operations_research::sat::PresolveContext::CanonicalizeObjective(v2, 1))
    {
      v3 = *(**(this + 1) + 56);
      if (v3 >= 1)
      {
        v4 = 0;
        v5 = 8;
        do
        {
          v6 = **(this + 1);
          v8 = *(v6 + 48);
          v7 = (v6 + 48);
          v9 = v8 + v5 - 1;
          if (v8)
          {
            v7 = v9;
          }

          v10 = *v7;
          if (!*(v10 + 16) && *(v10 + 60) == 29)
          {
            operator new();
          }

          ++v4;
          v5 += 8;
        }

        while (v3 != v4);
      }
    }
  }
}

void sub_23CA9F258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (!a9)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!a9)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::CpModelPresolver::ExpandObjective(operations_research::sat::CpModelPresolver *this)
{
  if (*(*(this + 1) + 416))
  {
    return;
  }

  v1 = this;
  strcpy(v192, "ExpandObjective");
  v193 = 271;
  v196 = *(this + 1);
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v195 = 0;
  v200 = 0;
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(this);
  if ((operations_research::sat::PresolveContext::CanonicalizeObjective(*(v1 + 1), 1) & 1) == 0)
  {
    goto LABEL_252;
  }

  v3 = **(v1 + 1);
  v4 = *(v3 + 56);
  v159 = *(v3 + 32);
  v189 = 0;
  v190 = 0;
  v191 = 0;
  __p = &v189;
  LOBYTE(v187) = 0;
  if (2 * v159)
  {
    if (((2 * v159) & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v167 = v1;
  if (v4 < 1)
  {
    v66 = 0;
    LODWORD(v160) = 0;
    v67 = 0;
    v68 = 0;
    goto LABEL_115;
  }

  v5 = 0;
  v6 = 0;
  v160 = 0;
  v161 = v4;
  v166 = 0;
  v7 = 0;
  do
  {
    v8 = v6;
    v9 = *(v1 + 1);
    v10 = *v9 + 48;
    if (*v10)
    {
      v10 = *v10 + 8 * v5 + 7;
    }

    v11 = *v10;
    if (*(*v10 + 16))
    {
LABEL_10:
      v6 = v8;
      goto LABEL_11;
    }

    v12 = *(v11 + 60);
    v172 = v11;
    if (v12 != 12)
    {
      v6 = v8;
      if (v12 == 29)
      {
        v13 = *(*(v11 + 48) + 16);
        ++v7;
        v166 = (v13 + v166);
        if (v13 >= 1)
        {
          v168 = v5;
          v164 = v7;
          v14 = 0;
          do
          {
            v15 = &operations_research::sat::_BoolArgumentProto_default_instance_;
            if (*(v11 + 60) == 29)
            {
              v15 = *(v11 + 48);
            }

            v16 = *(v15[3] + v14);
            if (v16 < 0)
            {
              v17 = 2 * ~v16 + 1;
            }

            else
            {
              v17 = 2 * v16;
            }

            v18 = v17 ^ 1;
            if (*(4 * v18) == -1 || v13 > *(4 * v18))
            {
              *(4 * v18) = v168;
              *(4 * v18) = v13;
            }

            v19 = 0;
            v170 = v17 ^ 1;
            do
            {
              if (v14 != v19)
              {
                v21 = &operations_research::sat::_BoolArgumentProto_default_instance_;
                if (*(v11 + 60) == 29)
                {
                  v21 = *(v11 + 48);
                }

                v22 = *(v21[3] + v19);
                if (v22 < 0)
                {
                  v23 = 2 * ~v22 + 1;
                }

                else
                {
                  v23 = 2 * v22;
                }

                v24 = &v189[3 * v18];
                v26 = v24[1];
                v25 = v24[2];
                if (v26 < v25)
                {
                  *v26 = v23;
                  v20 = (v26 + 1);
                }

                else
                {
                  v27 = v6;
                  v28 = *v24;
                  v29 = v26 - *v24;
                  v30 = v29 >> 2;
                  v31 = (v29 >> 2) + 1;
                  if (v31 >> 62)
                  {
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  v32 = v25 - v28;
                  if (v32 >> 1 > v31)
                  {
                    v31 = v32 >> 1;
                  }

                  if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v33 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v33 = v31;
                  }

                  if (v33)
                  {
                    if (!(v33 >> 62))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  *(4 * v30) = v23;
                  v20 = 4 * v30 + 4;
                  memcpy(0, v28, v29);
                  *v24 = 0;
                  v24[1] = v20;
                  v24[2] = 0;
                  if (v28)
                  {
                    operator delete(v28);
                  }

                  LODWORD(v6) = v27;
                  LODWORD(v18) = v170;
                  v11 = v172;
                }

                v24[1] = v20;
                v6 = (v6 + 1);
              }

              ++v19;
            }

            while (v13 != v19);
            ++v14;
          }

          while (v14 < v13 && v6 <= 100000000);
          v1 = v167;
          v5 = v168;
          v4 = v161;
          v7 = v164;
        }
      }

      goto LABEL_11;
    }

    v34 = *(v11 + 48);
    if (*(v34 + 64) != 2 || **(v34 + 72) != *(*(v34 + 72) + 8))
    {
      goto LABEL_10;
    }

    v165 = v7;
    v169 = v5;
    if (*(v34 + 16) < 1)
    {
      v36 = 0;
      v37 = 0;
    }

    else
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = *(v34 + 16);
      do
      {
        v39 = *(*(v34 + 24) + 4 * v35);
        v40 = *(*(v34 + 48) + 8 * v35);
        if (v40 < 1)
        {
          v41 = operations_research::sat::PresolveContext::MaxOf(v9, *(*(v34 + 24) + 4 * v35));
          v42 = operations_research::sat::PresolveContext::MinOf(v9, v39);
        }

        else
        {
          v41 = operations_research::sat::PresolveContext::MinOf(v9, *(*(v34 + 24) + 4 * v35));
          v42 = operations_research::sat::PresolveContext::MaxOf(v9, v39);
        }

        v36 += v42 * v40;
        v37 += v41 * v40;
        ++v35;
      }

      while (v38 != v35);
      v43 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      v1 = v167;
      v5 = v169;
      v4 = v161;
      v7 = v165;
      if (*(v172 + 60) != 12)
      {
        v44 = off_2810BEE58;
        v6 = v8;
        if (off_2810BEE58 >= 1)
        {
          goto LABEL_63;
        }

        goto LABEL_108;
      }
    }

    v43 = *(v172 + 48);
    v44 = *(v43 + 4);
    v6 = v8;
    if (v44 >= 1)
    {
LABEL_63:
      v45 = 0;
      v171 = 0;
      v46 = *v43[9];
      v162 = v36 - v46;
      v163 = v46 - v37;
      v47 = v160;
      v48 = v166;
      v49 = v172;
      while (1)
      {
        v50 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        if (*(v49 + 60) == 12)
        {
          v50 = *(v49 + 48);
        }

        v51 = v50[6][v45];
        if (v51 >= 0)
        {
          v52 = v50[6][v45];
        }

        else
        {
          v52 = -v51;
        }

        if (v52 != 1)
        {
          goto LABEL_65;
        }

        if (v6 > 100000000)
        {
LABEL_105:
          v166 = v48;
          v160 = v47;
          v65 = v171 & 1;
          v1 = v167;
          v5 = v169;
          v4 = v161;
          v7 = v165;
          goto LABEL_109;
        }

        v53 = v6;
        v54 = *(v50[3] + v45);
        if (v51 >= 1)
        {
          v55 = (2 * v54);
        }

        else
        {
          v55 = (2 * v54) + 1;
        }

        v56 = operations_research::sat::PresolveContext::MaxOf(v167[1], v54);
        v57 = operations_research::sat::PresolveContext::MinOf(v167[1], v54);
        v58 = v56 - v57;
        if (v163 <= v56 - v57)
        {
          if (v163 >= v56 - v57)
          {
            v47 = v47;
          }

          else
          {
            v47 = (v47 + 1);
          }

          v60 = v55 ^ 1;
          v6 = v53;
          if (*(4 * (v55 ^ 1)) == -1 || v44 > *(4 * v60))
          {
            *(4 * v60) = v169;
            *(4 * v60) = v44;
          }

          v61 = 0;
          v48 = (v48 + 1);
          do
          {
            if (v45 != v61)
            {
              v62 = &operations_research::sat::_LinearConstraintProto_default_instance_;
              if (*(v172 + 60) == 12)
              {
                v62 = *(v172 + 48);
              }

              LODWORD(__p) = (v62[6][v61] < 1) | (2 * *(v62[3] + v61));
              std::vector<int>::push_back[abi:ne200100](&v189[3 * v60], &__p);
              v6 = (v6 + 1);
            }

            ++v61;
          }

          while (v44 != v61);
          v171 = 1;
          v59 = v162 < v58;
          if (v162 <= v58)
          {
LABEL_92:
            if (v59)
            {
              v47 = (v47 + 1);
            }

            else
            {
              v47 = v47;
            }

            if (*(4 * v55) == -1 || v44 > *(4 * v55))
            {
              *(4 * v55) = v169;
              *(4 * v55) = v44;
            }

            v63 = 0;
            v48 = (v48 + 1);
            v49 = v172;
            do
            {
              if (v45 != v63)
              {
                v64 = &operations_research::sat::_LinearConstraintProto_default_instance_;
                if (*(v172 + 60) == 12)
                {
                  v64 = *(v172 + 48);
                }

                LODWORD(__p) = (v64[6][v63] >= 0) | (2 * *(v64[3] + v63));
                std::vector<int>::push_back[abi:ne200100](&v189[3 * v55], &__p);
                v6 = (v6 + 1);
              }

              ++v63;
            }

            while (v44 != v63);
            v171 = 1;
            goto LABEL_65;
          }
        }

        else
        {
          v6 = v53;
          v59 = v162 < v58;
          if (v162 <= v58)
          {
            goto LABEL_92;
          }
        }

        v49 = v172;
LABEL_65:
        if (++v45 == v44)
        {
          goto LABEL_105;
        }
      }
    }

LABEL_108:
    v65 = 0;
LABEL_109:
    v7 += v65;
LABEL_11:
    ++v5;
  }

  while (v5 < v4 && v6 <= 100000000);
  if (v160 >= 1)
  {
    operator new();
  }

  v66 = v6;
  v67 = v166;
  v68 = v7;
LABEL_115:
  util::graph::FastTopologicalSort<std::vector<std::vector<int>>>(&v189, &__p);
  if (__p != 1)
  {
    if (v159)
    {
      if ((v159 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v184 = 0uLL;
    v185 = 0;
    FindStronglyConnectedComponents<int,std::vector<std::vector<int>>,std::vector<std::vector<int>>>(-1431655765 * ((v190 - v189) >> 3), &v189, &v184);
    v75 = v184;
    if (v184 != *(&v184 + 1))
    {
      while (1)
      {
        v76 = *v75;
        v77 = v75[1] - *v75;
        if (v77 != 4)
        {
          break;
        }

        v75 += 3;
        if (v75 == *(&v184 + 1))
        {
          goto LABEL_148;
        }
      }

      if (v77 < 5)
      {
LABEL_147:
        operator new();
      }

      v78 = *v76;
      v79 = (*v76 / 2);
      if (*v76)
      {
        v80 = 1;
      }

      else
      {
        v80 = -1;
      }

      if (v78)
      {
        v81 = -1;
      }

      else
      {
        v81 = 1;
      }

      v82 = 2;
      if (v78)
      {
        v88 = 1;
        while (1)
        {
          v89 = v76[v88];
          v90 = (v89 + (v89 >> 31)) >> 1;
          if (v89)
          {
            v91 = *(8 * v90);
            v92 = v80;
          }

          else
          {
            v91 = -*(8 * v90);
            v92 = v81;
          }

          if ((operations_research::sat::PresolveContext::StoreAffineRelation(v167[1], v79, v90, v92, (v91 - *(8 * v79)) * v81, 0) & 1) == 0)
          {
            break;
          }

          v88 = v82;
          v76 = *v75;
          ++v82;
          if (v88 >= v75[1] - *v75)
          {
            goto LABEL_147;
          }
        }
      }

      else
      {
        v83 = 1;
        while (1)
        {
          v84 = v76[v83];
          v85 = (v84 + (v84 >> 31)) >> 1;
          if (v84)
          {
            v86 = *(8 * v85);
            v87 = v80;
          }

          else
          {
            v86 = -*(8 * v85);
            v87 = v81;
          }

          if ((operations_research::sat::PresolveContext::StoreAffineRelation(v167[1], v79, v85, v87, (v86 + *(8 * v79)) * v81, 0) & 1) == 0)
          {
            break;
          }

          v83 = v82;
          v76 = *v75;
          ++v82;
          if (v83 >= v75[1] - *v75)
          {
            goto LABEL_147;
          }
        }
      }
    }

LABEL_148:
    v93 = v184;
    if (v184)
    {
      v94 = *(&v184 + 1);
      v95 = v184;
      if (*(&v184 + 1) != v184)
      {
        v96 = *(&v184 + 1);
        do
        {
          v98 = *(v96 - 24);
          v96 -= 24;
          v97 = v98;
          if (v98)
          {
            *(v94 - 16) = v97;
            operator delete(v97);
          }

          v94 = v96;
        }

        while (v96 != v93);
        v95 = v184;
      }

      *(&v184 + 1) = v93;
      operator delete(v95);
    }

    goto LABEL_239;
  }

  v69 = v187;
  v70 = v188;
  if (v187 == v188)
  {
    v73 = 0;
    v72 = 0;
    v74 = v160;
    goto LABEL_227;
  }

  v71 = 0;
  v72 = 0;
  while (2)
  {
    v99 = *v69;
    if (v189[3 * v99] != v189[3 * v99 + 1])
    {
      v100 = (v99 / 2);
      v101 = v167[1];
      v102 = *(v101 + 64);
      if (v102 > 1)
      {
        v104 = 0;
        _X10 = *(v101 + 66);
        __asm { PRFM            #4, [X10] }

        v111 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v100) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v100));
        v112 = vdup_n_s8(v111 & 0x7F);
        v113 = ((v111 >> 7) ^ (_X10 >> 12)) & v102;
        v114 = *(_X10 + v113);
        v115 = vceq_s8(v114, v112);
        if (!v115)
        {
          goto LABEL_170;
        }

LABEL_167:
        v116 = *(v101 + 67);
        while (1)
        {
          v117 = (v113 + (__clz(__rbit64(v115)) >> 3)) & v102;
          if (*(v116 + 16 * v117) == v100)
          {
            break;
          }

          v115 &= ((v115 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v115)
          {
LABEL_170:
            while (!*&vceq_s8(v114, 0x8080808080808080))
            {
              v104 += 8;
              v113 = (v104 + v113) & v102;
              v114 = *(_X10 + v113);
              v115 = vceq_s8(v114, v112);
              if (v115)
              {
                goto LABEL_167;
              }
            }

            goto LABEL_159;
          }
        }

        v103 = (v116 + 16 * v117);
        if (!(_X10 + v117))
        {
          goto LABEL_159;
        }
      }

      else
      {
        if (*(v101 + 65) < 2uLL)
        {
          goto LABEL_159;
        }

        if (*(v101 + 132) != v100)
        {
          goto LABEL_159;
        }

        v103 = v101 + 528;
        if (!&absl::lts_20240722::container_internal::kSooControl)
        {
          goto LABEL_159;
        }
      }

      v118 = *(v103 + 1);
      if (!v118 || (((v118 < 1) ^ v99) & 1) != 0)
      {
        goto LABEL_159;
      }

      v119 = *(*v101 + 48);
      v120 = v119 + 8 * *(4 * v99) + 7;
      if ((v119 & 1) == 0)
      {
        v120 = *v101 + 48;
      }

      v121 = *v120;
      v122 = *(*v120 + 60);
      if (v122 == 12)
      {
        v130 = *(v121 + 6);
        v131 = *(v130 + 4);
        if (v131 <= 0)
        {
          goto LABEL_158;
        }

        v132 = 0;
        while (*(v130[3] + v132) != v100)
        {
          if (v131 == ++v132)
          {
            goto LABEL_158;
          }
        }
      }

      else
      {
        if (v122 == 29)
        {
          v123 = *(v121 + 6);
          v124 = *(v123 + 16);
          if (v124)
          {
            v125 = *(v123 + 24);
            v126 = 4 * v124;
            v127 = v125;
            while (1)
            {
              v128 = *v127;
              v129 = ~*v127 <= *v127 ? *v127 : ~v128;
              if (v129 == v100)
              {
                break;
              }

              ++v127;
              v126 -= 4;
              if (!v126)
              {
                goto LABEL_158;
              }
            }

            v133 = v128 >= 0 ? v118 : -v118;
            if (v133)
            {
              v134 = operations_research::sat::PresolveContext::ShiftCostInExactlyOne(v101, v125, v124, v133);
              v135 = v167[1];
              if (v134)
              {
                v136 = *(v135 + 64);
                if (v136 > 1)
                {
                  v139 = 0;
                  _X10 = *(v135 + 66);
                  __asm { PRFM            #4, [X10] }

                  v142 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v100) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v100));
                  v143 = vdup_n_s8(v142 & 0x7F);
                  v144 = ((v142 >> 7) ^ (_X10 >> 12)) & v136;
                  v145 = *(_X10 + v144);
                  v146 = vceq_s8(v145, v143);
                  if (!v146)
                  {
                    goto LABEL_216;
                  }

LABEL_213:
                  v147 = *(v135 + 67);
                  do
                  {
                    v148 = (v144 + (__clz(__rbit64(v146)) >> 3)) & v136;
                    if (*(v147 + 16 * v148) == v100)
                    {
                      v135 = (v147 + 16 * v148);
                      v137 = (_X10 + v148);
                      goto LABEL_221;
                    }

                    v146 &= ((v146 & 0x8080808080808080) - 1) & 0x8080808080808080;
                  }

                  while (v146);
LABEL_216:
                  while (!*&vceq_s8(v145, 0x8080808080808080))
                  {
                    v139 += 8;
                    v144 = (v139 + v144) & v136;
                    v145 = *(_X10 + v144);
                    v146 = vceq_s8(v145, v143);
                    if (v146)
                    {
                      goto LABEL_213;
                    }
                  }
                }

                else if (*(v135 + 65) >= 2uLL && *(v135 + 132) == v100)
                {
                  v135 = (v135 + 528);
                  v137 = &absl::lts_20240722::container_internal::kSooControl;
                  goto LABEL_221;
                }

                v137 = 0;
LABEL_221:
                if (v137)
                {
                  v149 = *(v135 + 1);
                  if (v149)
                  {
                    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v149, 0, "context_->ObjectiveCoeff(var) == 0");
                  }
                }

LABEL_223:
                ++v72;
                goto LABEL_159;
              }

LABEL_157:
              if (*(v135 + 416))
              {
                goto LABEL_239;
              }
            }
          }

          goto LABEL_158;
        }

        if (off_2810BEE58 <= 0)
        {
          goto LABEL_158;
        }

        v132 = 0;
        while (*(off_2810BEE60 + v132) != v100)
        {
          if (off_2810BEE58 == ++v132)
          {
            goto LABEL_158;
          }
        }

        v130 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      }

      v138 = v130[6][v132];
      if (v138)
      {
        if (operations_research::sat::PresolveContext::SubstituteVariableInObjective(v101, v100, v138, v121))
        {
          goto LABEL_223;
        }

        v135 = v167[1];
        goto LABEL_157;
      }

LABEL_158:
      ++v71;
    }

LABEL_159:
    if (++v69 != v70)
    {
      continue;
    }

    break;
  }

  v73 = v71;
  v74 = v160;
  if (v72 >= 1)
  {
    v150 = v167[1];
    std::string::basic_string[abi:ne200100]<0>(&v184, "objective: expanded via tight equality");
    operations_research::sat::PresolveContext::UpdateRuleStats(v150, &v184, v72, v151, v152);
    if (SHIBYTE(v185) < 0)
    {
      operator delete(v184);
    }
  }

LABEL_227:
  v183 = 12;
  strcpy(&v182, "propagations");
  operations_research::sat::PresolveTimer::AddCounter(v192, &v182, v74);
  if (v183 < 0)
  {
    operator delete(v182);
  }

  v181 = 7;
  strcpy(v180, "entries");
  operations_research::sat::PresolveTimer::AddCounter(v192, v180, v66);
  if (v181 < 0)
  {
    operator delete(v180[0]);
  }

  v179 = 15;
  strcpy(&v178, "tight_variables");
  operations_research::sat::PresolveTimer::AddCounter(v192, &v178, v67);
  if (v179 < 0)
  {
    operator delete(v178);
  }

  v177[23] = 17;
  strcpy(v177, "tight_constraints");
  operations_research::sat::PresolveTimer::AddCounter(v192, v177, v68);
  if ((v177[23] & 0x80000000) != 0)
  {
    operator delete(*v177);
  }

  v176 = 7;
  strcpy(v175, "expands");
  operations_research::sat::PresolveTimer::AddCounter(v192, v175, v72);
  if (v176 < 0)
  {
    operator delete(v175[0]);
  }

  v174 = 6;
  strcpy(v173, "issues");
  operations_research::sat::PresolveTimer::AddCounter(v192, v173, v73);
  if (v174 < 0)
  {
    operator delete(v173[0]);
  }

LABEL_239:
  if (__p == 1)
  {
    if (v187)
    {
      v188 = v187;
      operator delete(v187);
    }
  }

  else if ((__p & 1) == 0)
  {
    absl::lts_20240722::status_internal::StatusRep::Unref(__p, v2);
  }

  v153 = v189;
  if (v189)
  {
    v154 = v190;
    v155 = v189;
    if (v190 != v189)
    {
      v156 = v190;
      do
      {
        v158 = *(v156 - 3);
        v156 -= 3;
        v157 = v158;
        if (v158)
        {
          *(v154 - 2) = v157;
          operator delete(v157);
        }

        v154 = v156;
      }

      while (v156 != v153);
      v155 = v189;
    }

    v190 = v153;
    operator delete(v155);
  }

LABEL_252:
  operations_research::sat::PresolveTimer::~PresolveTimer(v192, v2);
}

void sub_23CAA04C0(_Unwind_Exception *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47)
{
  absl::lts_20240722::StatusOr<std::vector<int>>::~StatusOr(&a47, a2);
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  std::vector<std::vector<int>>::~vector[abi:ne200100]((v47 - 256));
  operations_research::sat::PresolveTimer::~PresolveTimer((v47 - 232), v49);
  _Unwind_Resume(a1);
}

void util::graph::FastTopologicalSort<std::vector<std::vector<int>>>(unsigned int ***a1@<X0>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * (v3 - *a1);
  if (v4 >> 31)
  {
    absl::lts_20240722::InvalidArgumentError("More than kint32max nodes", 0x19uLL, v9);
    v5 = v9[0];
    *a2 = v9[0];
    v9[0] = 55;
    if (v5 == 1)
    {
      absl::lts_20240722::internal_statusor::Helper::HandleInvalidStatusCtorArg(a2);
      v7 = v9[0];
      if ((v9[0] & 1) == 0)
      {
LABEL_13:
        absl::lts_20240722::status_internal::StatusRep::Unref(v7, v6);
      }
    }
  }

  else
  {
    if (v3 != *a1)
    {
      operator new();
    }

    if (!v4)
    {
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *a2 = 1;
      *(a2 + 8) = 0;
      return;
    }

    absl::lts_20240722::InvalidArgumentError("The graph has a cycle", 0x15uLL, v9);
    v8 = v9[0];
    *a2 = v9[0];
    v9[0] = 55;
    if (v8 == 1)
    {
      absl::lts_20240722::internal_statusor::Helper::HandleInvalidStatusCtorArg(a2);
      v7 = v9[0];
      if ((v9[0] & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }
}

void sub_23CAA0BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *absl::lts_20240722::StatusOr<std::vector<int>>::~StatusOr(uint64_t *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = a1[1];
    if (v4)
    {
      a1[2] = v4;
      operator delete(v4);
      return a1;
    }
  }

  else if ((v3 & 1) == 0)
  {
    absl::lts_20240722::status_internal::StatusRep::Unref(v3, a2);
  }

  return a1;
}

void operations_research::sat::CpModelPresolver::MergeNoOverlapConstraints(operations_research::sat::CpModelPresolver *this)
{
  v124 = *MEMORY[0x277D85DE8];
  v1 = *(this + 1);
  if (v1[416])
  {
    return;
  }

  v2 = *(*v1 + 56);
  __p = 0;
  v94 = 0;
  v95 = 0;
  if (v2 < 1)
  {
    return;
  }

  v3 = 0;
  v84 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v78 = v2;
  do
  {
    v9 = **(this + 1);
    v11 = *(v9 + 48);
    v10 = (v9 + 48);
    v12 = v11 + 8 * v3 + 7;
    if (v11)
    {
      v10 = v12;
    }

    v13 = *v10;
    if (*(v13 + 60) == 20)
    {
      v79 = v5;
      v80 = v6;
      v82 = v4;
      v108 = 0;
      *&v109 = 0;
      v107 = 0;
      v14 = *(v13 + 48);
      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = 0;
        v17 = *(v14 + 24);
        v18 = 4 * v15;
        do
        {
          v19 = 2 * *v17;
          if (v16 < v109)
          {
            *v16++ = v19;
          }

          else
          {
            v20 = v107;
            v21 = v16 - v107;
            v22 = (v16 - v107) >> 2;
            v23 = v22 + 1;
            if ((v22 + 1) >> 62)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v24 = v109 - v107;
            if ((v109 - v107) >> 1 > v23)
            {
              v23 = v24 >> 1;
            }

            if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v25 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = v23;
            }

            if (v25)
            {
              if (!(v25 >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v26 = v22;
            v27 = (4 * v22);
            v28 = &v27[-v26];
            *v27 = v19;
            v16 = v27 + 1;
            memcpy(v28, v20, v21);
            v107 = v28;
            v108 = v16;
            *&v109 = 0;
            if (v20)
            {
              operator delete(v20);
            }
          }

          v108 = v16;
          ++v17;
          v18 -= 4;
        }

        while (v18);
      }

      v29 = v94;
      if (v94 >= v95)
      {
        v4 = v82;
        v31 = std::vector<std::vector<operations_research::sat::Literal>>::__emplace_back_slow_path<std::vector<operations_research::sat::Literal> const&>(&__p, &v107);
        v30 = v79;
        v6 = v80;
      }

      else
      {
        *v94 = 0;
        *(v29 + 1) = 0;
        *(v29 + 2) = 0;
        v30 = v79;
        v6 = v80;
        if (v108 != v107)
        {
          if (((v108 - v107) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v31 = v29 + 24;
        v4 = v82;
      }

      v94 = v31;
      if (v30 < v6)
      {
        *v30 = v3;
        v5 = (v30 + 4);
        v8 = v107;
        v7 = v108;
        if (!v107)
        {
LABEL_6:
          LODWORD(v84) = v84 + ((v7 - v8) >> 2);
          ++HIDWORD(v84);
          v2 = v78;
          goto LABEL_7;
        }
      }

      else
      {
        v32 = v30 - v4;
        v33 = (v30 - v4) >> 2;
        v34 = v33 + 1;
        if ((v33 + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if ((v6 - v4) >> 1 > v34)
        {
          v34 = (v6 - v4) >> 1;
        }

        if (v6 - v4 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v35 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v35 = v34;
        }

        if (v35)
        {
          if (!(v35 >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v6 = 0;
        *(4 * v33) = v3;
        v5 = 4 * v33 + 4;
        memcpy(0, v4, v32);
        v4 = 0;
        v8 = v107;
        v7 = v108;
        if (!v107)
        {
          goto LABEL_6;
        }
      }

      v108 = v8;
      operator delete(v8);
      goto LABEL_6;
    }

LABEL_7:
    ++v3;
  }

  while (v3 != v2);
  if (HIDWORD(v84))
  {
    memset(v88, 0, sizeof(v88));
    v89 = xmmword_23CE306D0;
    v91 = 0;
    v92 = 0;
    v90 = 0;
    v36 = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(v88);
    operations_research::sat::Trail::Resize(v36, v2);
    v37 = operations_research::sat::Model::GetOrCreate<operations_research::sat::BinaryImplicationGraph>(v88);
    operations_research::sat::BinaryImplicationGraph::Resize(v37, v2);
    v38 = __p;
    v39 = v94;
    if (__p != v94)
    {
      while ((operations_research::sat::BinaryImplicationGraph::AddAtMostOne(v37, *v38, (v38[1] - *v38) >> 2) & 1) != 0)
      {
        v38 += 3;
        if (v38 == v39)
        {
          goto LABEL_49;
        }
      }

      v68 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v107, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 7799);
LABEL_88:
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v68);
    }

LABEL_49:
    if ((operations_research::sat::BinaryImplicationGraph::DetectEquivalences(v37, 0) & 1) == 0)
    {
      v68 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v107, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 7801);
      goto LABEL_88;
    }

    v40 = *(*(*(this + 1) + 392) + 664);
    if (v40 >= 9.22337204e18)
    {
      v41 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else if (v40 <= -9.22337204e18)
    {
      v41 = 0x8000000000000000;
    }

    else
    {
      v41 = v40;
    }

    operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(v37, &__p, v41);
    if (v94 != __p)
    {
      v42 = 0;
      v43 = 0;
      v83 = 0;
      v44 = 0;
      while (1)
      {
        v46 = v4;
        v47 = **(this + 1);
        v49 = *(v47 + 48);
        v48 = (v47 + 48);
        v50 = (v49 + 8 * *(v4 + v42) + 7);
        if ((v49 & 1) == 0)
        {
          v50 = v48;
        }

        v51 = *v50;
        operations_research::sat::ConstraintProto::Clear(*v50);
        v45 = __p;
        v52 = (__p + 24 * v42);
        v53 = *v52;
        v54 = v52[1];
        if (*v52 != v54)
        {
          break;
        }

LABEL_59:
        v42 = ++v43;
        v4 = v46;
        if (0xAAAAAAAAAAAAAAABLL * ((v94 - v45) >> 3) <= v43)
        {
          goto LABEL_73;
        }
      }

      v81 = v44;
      while (2)
      {
        v60 = *v53;
        if (*v53)
        {
          v68 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v107, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 7816);
          goto LABEL_88;
        }

        if (*(v51 + 15) == 20)
        {
          v55 = *(v51 + 6);
          v57 = *(v55 + 4);
          v56 = *(v55 + 5);
          v58 = (v55 + 2);
          if (v57 == v56)
          {
            goto LABEL_71;
          }
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v51);
          *(v51 + 15) = 20;
          v61 = *(v51 + 1);
          if (v61)
          {
            v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
          }

          v55 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlapConstraintProto>(v61);
          *(v51 + 6) = v55;
          v57 = *(v55 + 4);
          v56 = *(v55 + 5);
          v58 = (v55 + 2);
          if (v57 == v56)
          {
LABEL_71:
            google::protobuf::RepeatedField<int>::Grow(v58, v56, (v56 + 1));
            v57 = *v58;
          }
        }

        v59 = v55[3];
        *(v55 + 4) = v57 + 1;
        *(v59 + 4 * v57) = v60 >> 1;
        if (++v53 == v54)
        {
          ++v83;
          v45 = __p;
          v44 = (v81 + ((*(__p + 3 * v42 + 1) - *(__p + 3 * v42)) >> 2));
          goto LABEL_59;
        }

        continue;
      }
    }

    v44 = 0;
    v83 = 0;
LABEL_73:
    if (v84 != __PAIR64__(v83, v44))
    {
      if (dword_27E25CC08 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::CpModelPresolver::MergeNoOverlapConstraints(void)::$_0::operator() const(void)::site, dword_27E25CC08))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v87, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 7824);
        v69 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v87, 1);
        v71 = absl::lts_20240722::numbers_internal::FastIntToBuffer(HIDWORD(v84), v100, v70);
        *&v99 = v100;
        *(&v99 + 1) = v71 - v100;
        v73 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v84, v98, v72);
        v96 = v98;
        v97 = v73 - v98;
        v107 = "Merged ";
        v108 = 7;
        v109 = v99;
        v110 = " no-overlaps (";
        v111 = 14;
        v112 = v98;
        v113 = v73 - v98;
        v114 = " intervals) into ";
        v115 = 17;
        v75 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v83, v106, v74);
        v104 = v106;
        v105 = v75 - v106;
        v116 = v106;
        v117 = v75 - v106;
        v118 = " no-overlaps (";
        v119 = 14;
        v77 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v44, v103, v76);
        v101 = v103;
        v102 = v77 - v103;
        v120 = v103;
        v121 = v77 - v103;
        v122 = " intervals).";
        v123 = 12;
        absl::lts_20240722::strings_internal::CatPieces(&v107, 9, &v86);
        absl::lts_20240722::log_internal::LogMessage::operator<<(v69, &v86);
        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v86.__r_.__value_.__l.__data_);
        }

        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v87);
      }

      operator new();
    }

    operations_research::sat::Model::~Model(v88);
  }

  v62 = __p;
  if (__p)
  {
    v63 = v94;
    v64 = __p;
    if (v94 != __p)
    {
      v65 = v94;
      do
      {
        v67 = *(v65 - 3);
        v65 -= 24;
        v66 = v67;
        if (v67)
        {
          *(v63 - 2) = v66;
          operator delete(v66);
        }

        v63 = v65;
      }

      while (v65 != v62);
      v64 = __p;
    }

    v94 = v62;
    operator delete(v64);
  }
}

void sub_23CAA1558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a21);
  operations_research::sat::Model::~Model(&a23);
  std::vector<std::vector<int>>::~vector[abi:ne200100](&a33);
  if (v34)
  {
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::Trail::Resize(operations_research::sat::Trail *this, int a2)
{
  v4 = 2 * a2;
  if (2 * a2 < 1)
  {
    v4 = 0;
  }

  else if (*(this + 4) > v4)
  {
    v5 = *(this + 3) + (((v4 + 63) >> 3) & 0x1FFFFFF8);
    *(v5 - 8) &= ~(-2 << (v4 + 63));
  }

  *(this + 4) = v4;
  v7 = *(this + 3);
  v8 = *(this + 4);
  v6 = this + 24;
  v9 = (v4 + 63) >> 6;
  v21 = 0;
  v10 = (v8 - v7) >> 3;
  if (v9 <= v10)
  {
    if (v9 < v10)
    {
      *(this + 4) = v7 + 8 * v9;
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(v6, v9 - v10, &v21);
  }

  v11 = *(this + 12);
  v12 = (*(this + 13) - v11) >> 3;
  if (a2 <= v12)
  {
    if (a2 < v12)
    {
      *(this + 13) = v11 + 8 * a2;
    }
  }

  else
  {
    std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(this + 96, a2 - v12);
  }

  v13 = *(this + 6);
  v14 = (*(this + 7) - v13) >> 2;
  if (a2 <= v14)
  {
    if (a2 < v14)
    {
      *(this + 7) = v13 + 4 * a2;
    }
  }

  else
  {
    std::vector<int>::__append(this + 2, a2 - v14);
  }

  v15 = *(this + 25);
  v16 = (*(this + 26) - v15) >> 4;
  if (a2 <= v16)
  {
    if (a2 < v16)
    {
      *(this + 26) = v15 + 16 * a2;
    }
  }

  else
  {
    std::vector<absl::lts_20240722::Span<operations_research::sat::Literal const>>::__append(this + 200, a2 - v16);
  }

  v17 = *(this + 28);
  v18 = (*(this + 29) - v17) >> 2;
  if (a2 <= v18)
  {
    if (a2 < v18)
    {
      *(this + 29) = v17 + 4 * a2;
    }
  }

  else
  {
    std::vector<int>::__append((this + 224), a2 - v18);
  }

  v19 = *(this + 16);
  v20 = (*(this + 17) - v19) >> 2;
  if (a2 <= v20)
  {
    if (a2 < v20)
    {
      *(this + 17) = v19 + 4 * a2;
    }
  }

  else
  {
    std::vector<int>::__append((this + 128), a2 - v20);
  }
}

void operations_research::sat::CpModelPresolver::TransformIntoMaxCliques(operations_research::sat::CpModelPresolver *this)
{
  v104 = *MEMORY[0x277D85DE8];
  v1 = *(this + 1);
  if ((*(v1 + 416) & 1) != 0 || *(*(v1 + 392) + 672) <= 0.0)
  {
    return;
  }

  v2 = this;
  v3 = *(*v1 + 56);
  v94 = 0;
  v95 = 0;
  v96 = 0;
  if (v3 < 1)
  {
    v32 = 0;
  }

  else
  {
    v4 = 0;
    v81 = v3;
    do
    {
      v5 = **(v2 + 1);
      v7 = *(v5 + 48);
      v6 = v5 + 48;
      v8 = v7 + 8 * v4 + 7;
      if (v7)
      {
        v6 = v8;
      }

      v9 = *v6;
      v10 = *(*v6 + 60);
      if (v10 == 4)
      {
        if (*(v9 + 16) == 1)
        {
          v26 = *(v9 + 48);
          v27 = *(v26 + 16);
          if (v27)
          {
            v28 = *(v26 + 24);
            v29 = 4 * v27;
            do
            {
              if (*v28 != **(v9 + 24))
              {
                operator new();
              }

              ++v28;
              v29 -= 4;
            }

            while (v29);
          }

          operations_research::sat::ConstraintProto::Clear(v9);
          v3 = v81;
          v2 = this;
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v4);
        }
      }

      else if (v10 == 26)
      {
        v88 = 0;
        v89 = 0;
        __p = 0;
        v11 = *(v9 + 48);
        v12 = *(v11 + 16);
        if (v12)
        {
          v13 = 0;
          v14 = *(v11 + 24);
          v15 = 4 * v12;
          do
          {
            if (*v14 < 0)
            {
              v16 = 2 * ~*v14 + 1;
            }

            else
            {
              v16 = 2 * *v14;
            }

            if (v13 < v89)
            {
              *v13++ = v16;
            }

            else
            {
              v17 = __p;
              v18 = v13 - __p;
              v19 = (v13 - __p) >> 2;
              v20 = v19 + 1;
              if ((v19 + 1) >> 62)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v21 = v89 - __p;
              if ((v89 - __p) >> 1 > v20)
              {
                v20 = v21 >> 1;
              }

              if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v22 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v22 = v20;
              }

              if (v22)
              {
                if (!(v22 >> 62))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v23 = (v13 - __p) >> 2;
              v24 = (4 * v19);
              v25 = (4 * v19 - 4 * v23);
              *v24 = v16;
              v13 = v24 + 1;
              memcpy(v25, v17, v18);
              __p = v25;
              v88 = v13;
              v89 = 0;
              if (v17)
              {
                operator delete(v17);
              }
            }

            v88 = v13;
            ++v14;
            v15 -= 4;
          }

          while (v15);
        }

        v30 = v95;
        if (v95 >= v96)
        {
          v31 = std::vector<std::vector<operations_research::sat::Literal>>::__emplace_back_slow_path<std::vector<operations_research::sat::Literal> const&>(&v94, &__p);
          v3 = v81;
          v2 = this;
        }

        else
        {
          *v95 = 0;
          *(v30 + 1) = 0;
          *(v30 + 2) = 0;
          if (v88 != __p)
          {
            if (((v88 - __p) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v31 = v30 + 24;
          v3 = v81;
          v2 = this;
        }

        v95 = v31;
        operations_research::sat::ConstraintProto::Clear(v9);
        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(v2 + 1), v4);
        if (__p)
        {
          v88 = __p;
          operator delete(__p);
        }
      }

      v4 = (v4 + 1);
    }

    while (v4 != v3);
    v1 = *(v2 + 1);
    v32 = -1431655765 * ((v95 - v94) >> 3);
  }

  __p = 0;
  v88 = 0;
  v89 = 0;
  v90 = xmmword_23CE306D0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  v33 = *(*v1 + 32);
  v34 = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(&__p);
  operations_research::sat::Trail::Resize(v34, v33);
  v35 = operations_research::sat::Model::GetOrCreate<operations_research::sat::BinaryImplicationGraph>(&__p);
  operations_research::sat::BinaryImplicationGraph::Resize(v35, v33);
  v36 = v94;
  v37 = v95;
  if (v94 != v95)
  {
    v38 = 0;
    while (1)
    {
      v39 = (*(v36 + 1) - *v36) >> 2;
      if ((operations_research::sat::BinaryImplicationGraph::AddAtMostOne(v35, *v36, v39) & 1) == 0)
      {
        break;
      }

      v38 += v39;
      v36 += 24;
      if (v36 == v37)
      {
        goto LABEL_52;
      }
    }

    operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(*(this + 1), &byte_23CE7F131, 0);
    goto LABEL_99;
  }

  v38 = 0;
LABEL_52:
  v40 = operations_research::sat::BinaryImplicationGraph::DetectEquivalences(v35, 0);
  v41 = *(this + 1);
  if (v40)
  {
    v42 = *(*(v41 + 392) + 672);
    if (v42 >= 9.22337204e18)
    {
      v43 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else if (v42 <= -9.22337204e18)
    {
      v43 = 0x8000000000000000;
    }

    else
    {
      v43 = v42;
    }

    operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(v35, &v94, v43);
    v82 = v32;
    if (v33 >= 1)
    {
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 2 * v33;
      do
      {
        begin = v35[29].__begin_;
        if (v44 < ((v35[29].__end_ - begin) >> 2))
        {
          v49 = *(begin + (v46 >> 30));
          if (v49 != -1 && v44 != v49)
          {
            operations_research::sat::PresolveContext::StoreBooleanEqualityRelation(*(this + 1), v45, -(v49 & 1) ^ (v49 >> 1));
          }
        }

        v46 += 0x200000000;
        v45 = (v45 + 1);
        v44 += 2;
      }

      while (v47 != v44);
    }

    v86 = 0;
    v85 = 0;
    v51 = v94;
    v52 = v95;
    v53 = this;
    if (v94 != v95)
    {
      while (1)
      {
        v54 = *v51;
        v55 = *(v51 + 1);
        if (*v51 != v55)
        {
          break;
        }

LABEL_72:
        v51 += 24;
        if (v51 == v52)
        {
          goto LABEL_92;
        }
      }

      ++v86;
      v85 += (v55 - v54) >> 2;
      v56 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(v53 + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      v58 = *v51;
      v57 = *(v51 + 1);
      while (1)
      {
        if (v58 == v57)
        {
          v53 = this;
          operations_research::sat::CpModelPresolver::PresolveAtMostOne(this, v56);
          goto LABEL_72;
        }

        v66 = *v58;
        v67 = *(v56 + 60);
        if (*v58)
        {
          if (v67 == 26)
          {
            v59 = *(v56 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v56);
            *(v56 + 60) = 26;
            v69 = *(v56 + 8);
            if (v69)
            {
              v69 = *(v69 & 0xFFFFFFFFFFFFFFFELL);
            }

            v59 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v69);
            *(v56 + 48) = v59;
          }

          v60 = ~(v66 >> 1);
          v61 = (v59 + 2);
          v62 = v59[2];
          v63 = HIDWORD(v62);
          v64 = v62;
          if (v62 == HIDWORD(v62))
          {
LABEL_91:
            google::protobuf::RepeatedField<int>::Grow(v61, v63, (HIDWORD(v62) + 1));
            v64 = *(v59 + 4);
          }
        }

        else
        {
          if (v67 == 26)
          {
            v59 = *(v56 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v56);
            *(v56 + 60) = 26;
            v68 = *(v56 + 8);
            if (v68)
            {
              v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
            }

            v59 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v68);
            *(v56 + 48) = v59;
          }

          v60 = v66 >> 1;
          v61 = (v59 + 2);
          v62 = v59[2];
          v63 = HIDWORD(v62);
          v64 = v62;
          if (v62 == HIDWORD(v62))
          {
            goto LABEL_91;
          }
        }

        v65 = v59[3];
        *(v59 + 4) = v64 + 1;
        *(v65 + 4 * v64) = v60;
        ++v58;
      }
    }

LABEL_92:
    operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(v53 + 1));
    if (v86 != v82)
    {
      operator new();
    }

    if (v38 != v85)
    {
      v71 = *(v53 + 2);
      if (*v71 == 1)
      {
        *&v103 = "[MaxClique] Merged ";
        *(&v103 + 1) = 19;
        v72 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v82, v102, v70);
        *&v101 = v102;
        *(&v101 + 1) = v72 - v102;
        v100[0] = "(";
        v100[1] = 1;
        v74 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v38, v99, v73);
        *&v98 = v99;
        *(&v98 + 1) = v74 - v99;
        *&v97 = " literals) into ";
        *(&v97 + 1) = 16;
        absl::lts_20240722::StrCat<int,char [2],long long,char [25]>(&v103, &v101, v100, &v98, &v97, &v86, "(", &v85, &v84, " literals) at_most_ones.");
        operations_research::SolverLogger::LogInfo(v71, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 7937, &v84);
        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  else
  {
    operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(v41, &byte_23CE7F131, 0);
  }

LABEL_99:
  operations_research::sat::Model::~Model(&__p);
  v75 = v94;
  if (v94)
  {
    v76 = v95;
    v77 = v94;
    if (v95 != v94)
    {
      v78 = v95;
      do
      {
        v80 = *(v78 - 3);
        v78 -= 24;
        v79 = v80;
        if (v80)
        {
          *(v76 - 2) = v79;
          operator delete(v79);
        }

        v76 = v78;
      }

      while (v78 != v75);
      v77 = v94;
    }

    v95 = v75;
    operator delete(v77);
  }
}

void sub_23CAA217C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  operations_research::sat::Model::~Model(&a21);
  std::vector<std::vector<int>>::~vector[abi:ne200100](&a31);
  _Unwind_Resume(a1);
}

char *absl::lts_20240722::StrCat<int,char [2],long long,char [25]>@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, unsigned int *a6@<X5>, const char *a7@<X6>, unint64_t *a8@<X7>, std::string *a9@<X8>, const char *a10)
{
  v34 = *MEMORY[0x277D85DE8];
  v13 = *a2;
  v25[0] = *a1;
  v25[1] = v13;
  v14 = *a4;
  v25[2] = *a3;
  v25[3] = v14;
  v25[4] = *a5;
  v15 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a6, v24, a3);
  v22 = v24;
  v23 = v15 - v24;
  v26 = v24;
  v27 = v15 - v24;
  v16 = strlen(a7);
  v28 = a7;
  v29 = v16;
  v20 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a8, v21, v17) - v21;
  v30 = v21;
  v31 = v20;
  v18 = strlen(a10);
  v32 = a10;
  v33 = v18;
  return absl::lts_20240722::strings_internal::CatPieces(v25, 9, a9);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveOneConstraint(operations_research::sat::CpModelPresolver *this, int a2)
{
  v2 = *(this + 1);
  if (v2[52])
  {
    return 0;
  }

  v6 = *v2;
  v8 = *(v6 + 48);
  v7 = (v6 + 48);
  v9 = v8 + 8 * a2 + 7;
  if (v8)
  {
    v7 = v9;
  }

  v10 = *v7;
  if (!operations_research::sat::CpModelPresolver::ExploitEquivalenceRelations(this, a2, *v7))
  {
    if (!operations_research::sat::CpModelPresolver::PresolveEnforcementLiteral(this, v10))
    {
      goto LABEL_7;
    }

LABEL_10:
    operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
    v15 = *(v10 + 15) - 3;
    goto LABEL_11;
  }

  operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
  if (operations_research::sat::CpModelPresolver::PresolveEnforcementLiteral(this, v10))
  {
    goto LABEL_10;
  }

LABEL_7:
  v15 = *(v10 + 15) - 3;
  if (v15 <= 0x1A)
  {
LABEL_11:
    switch(v15)
    {
      case 0u:

        return operations_research::sat::CpModelPresolver::PresolveBoolOr(this, v10, v12, v13, v14);
      case 1u:

        return operations_research::sat::CpModelPresolver::PresolveBoolAnd(this, v10, v12, v13, v14);
      case 2u:

        return operations_research::sat::CpModelPresolver::PresolveBoolXor(this, v10);
      case 4u:
        if (operations_research::sat::CpModelPresolver::CanonicalizeLinearArgument(this, v10, *(v10 + 6)))
        {
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        }

        return operations_research::sat::CpModelPresolver::PresolveIntDiv(this, a2, v10);
      case 5u:
        if (operations_research::sat::CpModelPresolver::CanonicalizeLinearArgument(this, v10, *(v10 + 6)))
        {
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        }

        return operations_research::sat::CpModelPresolver::PresolveIntMod(this, a2, v10);
      case 8u:
        if (operations_research::sat::CpModelPresolver::CanonicalizeLinearArgument(this, v10, *(v10 + 6)))
        {
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        }

        return operations_research::sat::CpModelPresolver::PresolveIntProd(this, v10);
      case 9u:
        if (operations_research::sat::CpModelPresolver::CanonicalizeLinear(this, v10, v12, v13, v14))
        {
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
          if (!operations_research::sat::CpModelPresolver::PropagateDomainsInLinear(this, a2, v10))
          {
LABEL_49:
            if (!operations_research::sat::CpModelPresolver::PresolveSmallLinear(this, v10, v16, v17, v18, v19))
            {
              goto LABEL_50;
            }

            goto LABEL_121;
          }
        }

        else if (!operations_research::sat::CpModelPresolver::PropagateDomainsInLinear(this, a2, v10))
        {
          goto LABEL_49;
        }

        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        if (!operations_research::sat::CpModelPresolver::PresolveSmallLinear(this, v10, v47, v48, v49, v50))
        {
LABEL_50:
          if (!operations_research::sat::CpModelPresolver::PresolveLinearEqualityWithModulo(this, v10))
          {
            goto LABEL_51;
          }

          goto LABEL_122;
        }

LABEL_121:
        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        if (!operations_research::sat::CpModelPresolver::PresolveLinearEqualityWithModulo(this, v10))
        {
LABEL_51:
          if (!operations_research::sat::CpModelPresolver::RemoveSingletonInLinear(this, v10, v20))
          {
            goto LABEL_125;
          }

          goto LABEL_123;
        }

LABEL_122:
        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        if (!operations_research::sat::CpModelPresolver::RemoveSingletonInLinear(this, v10, v51))
        {
          goto LABEL_125;
        }

LABEL_123:
        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        if (operations_research::sat::CpModelPresolver::PresolveSmallLinear(this, v10, v52, v53, v54, v55))
        {
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        }

LABEL_125:
        if (operations_research::sat::CpModelPresolver::PresolveSmallLinear(this, v10, v21, v22, v23, v24))
        {
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        }

        if (operations_research::sat::CpModelPresolver::PresolveLinearOnBooleans(this, v10))
        {
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        }

        v56 = *(v10 + 4);
        operations_research::sat::CpModelPresolver::ExtractEnforcementLiteralFromLinearConstraint(this, a2, v10);
        if ((*(*(this + 1) + 416) & 1) == 0)
        {
          if (*(v10 + 4) > v56)
          {
            if (operations_research::sat::CpModelPresolver::DivideLinearByGcd(this, v10, v57, v58, v59))
            {
              operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
            }

            if (operations_research::sat::CpModelPresolver::PresolveSmallLinear(this, v10, v60, v61, v62, v63))
            {
              operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
            }
          }

          if (operations_research::sat::CpModelPresolver::PresolveDiophantine(this, v10))
          {
            operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
          }

          operations_research::sat::CpModelPresolver::TryToReduceCoefficientsOfLinearConstraint(this, a2, v10, v64);
        }

        return 0;
      case 0xAu:

        return operations_research::sat::CpModelPresolver::PresolveAllDiff(this, v10);
      case 0xBu:

        return operations_research::sat::CpModelPresolver::PresolveElement(this, v10, v12, v13, v14);
      case 0xCu:

        return operations_research::sat::CpModelPresolver::PresolveCircuit(this, v10);
      case 0xDu:

        return operations_research::sat::CpModelPresolver::PresolveTable(this, v10);
      case 0xEu:

        return operations_research::sat::CpModelPresolver::PresolveAutomaton(this, v10);
      case 0xFu:

        return operations_research::sat::CpModelPresolver::PresolveInverse(this, v10);
      case 0x10u:

        return operations_research::sat::CpModelPresolver::PresolveInterval(this, a2, v10);
      case 0x11u:
        v25 = *(v10 + 6);
        v26 = *(v25 + 16);
        if (v26 < 1)
        {
          goto LABEL_107;
        }

        v27 = 0;
        v28 = 0;
        do
        {
          while (1)
          {
            v29 = *(*(v25 + 24) + 4 * v27);
            IntervalRepresentative = operations_research::sat::PresolveContext::GetIntervalRepresentative(*(this + 1), v29);
            if (v29 == IntervalRepresentative)
            {
              break;
            }

            *(*(v25 + 24) + 4 * v27) = IntervalRepresentative;
            v28 = 1;
            v31 = v26 - 1 == v27++;
            if (v31)
            {
              goto LABEL_106;
            }
          }

          ++v27;
        }

        while (v26 != v27);
        if ((v28 & 1) == 0)
        {
          goto LABEL_107;
        }

LABEL_106:
        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
LABEL_107:

        return operations_research::sat::CpModelPresolver::PresolveNoOverlap(this, v10);
      case 0x12u:
        v32 = *(v10 + 6);
        v33 = *(v32 + 16);
        if (v33 < 1)
        {
          goto LABEL_112;
        }

        v34 = 0;
        v35 = 0;
        do
        {
          while (1)
          {
            v36 = *(*(v32 + 24) + 4 * v34);
            v37 = operations_research::sat::PresolveContext::GetIntervalRepresentative(*(this + 1), v36);
            if (v36 == v37)
            {
              break;
            }

            *(*(v32 + 24) + 4 * v34) = v37;
            v35 = 1;
            v31 = v33 - 1 == v34++;
            if (v31)
            {
              goto LABEL_111;
            }
          }

          ++v34;
        }

        while (v33 != v34);
        if ((v35 & 1) == 0)
        {
          goto LABEL_112;
        }

LABEL_111:
        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
LABEL_112:
        if (*(v10 + 15) == 21)
        {
          v46 = *(v10 + 6);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v10);
          *(v10 + 15) = 21;
          v65 = *(v10 + 1);
          if (v65)
          {
            v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
          }

          v46 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlap2DConstraintProto>(v65);
          *(v10 + 6) = v46;
        }

        v66 = *(v46 + 10);
        if (v66 >= 1)
        {
          v67 = 0;
          v68 = 0;
          do
          {
            while (1)
            {
              v69 = *(v46[6] + 4 * v67);
              v70 = operations_research::sat::PresolveContext::GetIntervalRepresentative(*(this + 1), v69);
              if (v69 == v70)
              {
                break;
              }

              *(v46[6] + 4 * v67) = v70;
              v68 = 1;
              v31 = v66 - 1 == v67++;
              if (v31)
              {
                goto LABEL_150;
              }
            }

            ++v67;
          }

          while (v66 != v67);
          if ((v68 & 1) == 0)
          {
            goto LABEL_151;
          }

LABEL_150:
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        }

LABEL_151:

        return operations_research::sat::CpModelPresolver::PresolveNoOverlap2D(this, v11, v10);
      case 0x13u:
        v38 = *(v10 + 6);
        v39 = *(v38 + 24);
        if (v39 < 1)
        {
          goto LABEL_116;
        }

        v40 = 0;
        v41 = 0;
        do
        {
          while (1)
          {
            v42 = *(*(v38 + 32) + 4 * v40);
            v43 = operations_research::sat::PresolveContext::GetIntervalRepresentative(*(this + 1), v42);
            if (v42 == v43)
            {
              break;
            }

            *(*(v38 + 32) + 4 * v40) = v43;
            v41 = 1;
            v31 = v39 - 1 == v40++;
            if (v31)
            {
              goto LABEL_115;
            }
          }

          ++v40;
        }

        while (v39 != v40);
        if ((v41 & 1) == 0)
        {
          goto LABEL_116;
        }

LABEL_115:
        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
LABEL_116:

        return operations_research::sat::CpModelPresolver::PresolveCumulative(this, v10);
      case 0x14u:

        return operations_research::sat::CpModelPresolver::PresolveRoutes(this, v10, v12);
      case 0x15u:

        return operations_research::sat::CpModelPresolver::PresolveReservoir(this, v10);
      case 0x17u:

        return operations_research::sat::CpModelPresolver::PresolveAtMostOne(this, v10);
      case 0x18u:
        if (operations_research::sat::CpModelPresolver::CanonicalizeLinearArgument(this, v10, *(v10 + 6)))
        {
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        }

        if (!operations_research::sat::CpModelPresolver::DivideLinMaxByGcd(this, a2, v10))
        {
          return 0;
        }

        return operations_research::sat::CpModelPresolver::PresolveLinMax(this, v10, v44, v45);
      case 0x1Au:

        return operations_research::sat::CpModelPresolver::PresolveExactlyOne(this, v10);
      default:
        return 0;
    }
  }

  return 0;
}

uint64_t operations_research::sat::CpModelPresolver::ProcessSetPPCSubset(uint64_t a1, int a2, int a3, unint64_t *a4, _BYTE *a5, _BYTE *a6, _BYTE *a7)
{
  v7 = *(a1 + 8);
  v8 = (*v7 + 48);
  if (*v8)
  {
    v9 = (*v8 + 7 + 8 * a2);
  }

  else
  {
    v9 = (*v7 + 48);
  }

  v10 = *v9;
  if (*v8)
  {
    v8 = (*v8 + 7 + 8 * a3);
  }

  v11 = *v8;
  v12 = *(v10 + 60);
  if (v12 != 3 && v12 != 29)
  {
    if (v12 == 26)
    {
      v16 = *(v11 + 60);
LABEL_19:
      if (v16 == 29 || v16 == 26)
      {
        operator new();
      }

      return 1;
    }

    return 1;
  }

  v16 = *(v11 + 60);
  if (v16 == 29 || v16 == 26)
  {
    operator new();
  }

  if (v12 != 29)
  {
    if (v12 == 26)
    {
      goto LABEL_19;
    }

    if (v12 != 3)
    {
      return 1;
    }
  }

  if (v16 == 3)
  {
    operator new();
  }

  if (v12 != 29 || v16 != 12)
  {
    return 1;
  }

  if (*a4 > 1)
  {
    v22 = a6;
    absl::lts_20240722::container_internal::ClearBackingArray(a4, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value, *a4 < 0x80, 1u);
    a6 = v22;
  }

  else
  {
    a4[1] = 0;
  }

  v138 = a6;
  if (*(v10 + 60) == 29)
  {
    v23 = *(v10 + 48);
  }

  else
  {
    v23 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  }

  v24 = 4 * *(v23 + 4);
  if (v24)
  {
    v25 = v23[3];
    v26 = (v25 + v24);
    do
    {
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(a4, v25, &v153);
      if (BYTE8(v154) == 1)
      {
        *v154 = *v25;
      }

      v25 = (v25 + 4);
    }

    while (v25 != v26);
  }

  v137 = a7;
  operations_research::sat::ConstraintProto::Clear((a1 + 168));
  operations_research::Domain::Domain(&v153, 0);
  v27 = 0;
  v141 = 0;
  v150 = 0;
  v151 = 0;
  v152 = 0;
  v139 = 0x7FFFFFFFFFFFFFFFLL;
  v140 = 0x8000000000000000;
  v28 = *(v11 + 60);
  if (v28 == 12)
  {
    goto LABEL_47;
  }

LABEL_46:
  for (i = &operations_research::sat::_LinearConstraintProto_default_instance_; v27 < *(i + 4); i = *(v11 + 48))
  {
    v30 = v11;
    v31 = *(i[3] + v27);
    v32 = i[6][v27];
    v33 = *a4;
    if (*a4 > 1)
    {
      v40 = 0;
      _X11 = a4[2];
      __asm { PRFM            #4, [X11] }

      v46 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v31) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v31));
      v47 = vdup_n_s8(v46 & 0x7F);
      v48 = ((v46 >> 7) ^ (_X11 >> 12)) & v33;
      v49 = *(_X11 + v48);
      v50 = vceq_s8(v49, v47);
      if (!v50)
      {
        goto LABEL_64;
      }

LABEL_62:
      while (*(a4[3] + 4 * ((v48 + (__clz(__rbit64(v50)) >> 3)) & v33)) != v31)
      {
        v50 &= ((v50 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v50)
        {
LABEL_64:
          while (!*&vceq_s8(v49, 0x8080808080808080))
          {
            v40 += 8;
            v48 = (v40 + v48) & v33;
            v49 = *(_X11 + v48);
            v50 = vceq_s8(v49, v47);
            if (v50)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_67;
        }
      }

LABEL_52:
      v34 = v140;
      if (v32 >= v139)
      {
        v35 = v139;
      }

      else
      {
        v35 = v32;
      }

      if (v140 <= v32)
      {
        v34 = v32;
      }

      v139 = v35;
      v140 = v34;
      v36 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      v11 = v30;
      if (v28 == 12)
      {
        v36 = *(v30 + 48);
      }

      v37 = v36[6][v27];
      v38 = v151;
      if (v151 >= v152)
      {
        v62 = v150;
        v63 = v151 - v150;
        v64 = (v151 - v150) >> 4;
        v65 = v64 + 1;
        if ((v64 + 1) >> 60)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v66 = v152 - v150;
        if ((v152 - v150) >> 3 > v65)
        {
          v65 = v66 >> 3;
        }

        if (v66 >= 0x7FFFFFFFFFFFFFF0)
        {
          v67 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v67 = v65;
        }

        if (v67)
        {
          if (!(v67 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v68 = (v151 - v150) >> 4;
        v69 = 16 * v64;
        *v69 = v37;
        *(v69 + 8) = 1;
        v39 = (16 * v64 + 16);
        v70 = (16 * v64 - 16 * v68);
        memcpy((v69 - 16 * v68), v62, v63);
        v150 = v70;
        v151 = v39;
        v152 = 0;
        if (v62)
        {
          operator delete(v62);
        }
      }

      else
      {
        *v151 = v37;
        *(v38 + 2) = 1;
        v39 = (v38 + 16);
      }

      ++v141;
      v151 = v39;
      ++v27;
      v28 = *(v11 + 60);
      if (v28 != 12)
      {
        goto LABEL_46;
      }

      continue;
    }

    if (a4[1] >= 2 && *(a4 + 4) == v31)
    {
      goto LABEL_52;
    }

LABEL_67:
    operations_research::sat::PresolveContext::DomainOf(&v142, *(a1 + 8), v31);
    operations_research::Domain::ContinuousMultiplicationBy(&v144, &v142, v32);
    operations_research::Domain::AdditionWith(v146, &v153, &v144, v51);
    operations_research::Domain::RelaxIfTooComplex(&v148, v146);
    if (v153)
    {
      operator delete(v154);
    }

    v153 = v148;
    v154 = *v149;
    v148 = 0;
    if (v146[0])
    {
      operator delete(v146[1]);
      if ((v144 & 1) == 0)
      {
LABEL_71:
        if ((v142 & 1) == 0)
        {
          goto LABEL_72;
        }

        goto LABEL_76;
      }
    }

    else if ((v144 & 1) == 0)
    {
      goto LABEL_71;
    }

    operator delete(v145);
    if ((v142 & 1) == 0)
    {
LABEL_72:
      if (*(a1 + 228) == 12)
      {
        goto LABEL_73;
      }

      goto LABEL_77;
    }

LABEL_76:
    operator delete(v143);
    if (*(a1 + 228) == 12)
    {
LABEL_73:
      v52 = *(a1 + 216);
      goto LABEL_80;
    }

LABEL_77:
    operations_research::sat::ConstraintProto::clear_constraint(a1 + 168);
    *(a1 + 228) = 12;
    v53 = *(a1 + 176);
    if (v53)
    {
      v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
    }

    v52 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v53);
    *(a1 + 216) = v52;
LABEL_80:
    v55 = *(v52 + 4);
    v54 = *(v52 + 5);
    if (v55 == v54)
    {
      google::protobuf::RepeatedField<int>::Grow((v52 + 2), v54, (v54 + 1));
      v55 = *(v52 + 4);
    }

    v56 = v52[3];
    *(v52 + 4) = v55 + 1;
    *(v56 + 4 * v55) = v31;
    if (*(a1 + 228) == 12)
    {
      v57 = *(a1 + 216);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(a1 + 168);
      *(a1 + 228) = 12;
      v58 = *(a1 + 176);
      if (v58)
      {
        v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
      }

      v57 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v58);
      *(a1 + 216) = v57;
    }

    v60 = *(v57 + 10);
    v59 = *(v57 + 11);
    if (v60 == v59)
    {
      google::protobuf::RepeatedField<long long>::Grow((v57 + 5), v59, (v59 + 1));
      v60 = *(v57 + 10);
    }

    v61 = v57[6];
    *(v57 + 10) = v60 + 1;
    *(v61 + 8 * v60) = v32;
    v11 = v30;
    ++v27;
    v28 = *(v30 + 60);
    if (v28 != 12)
    {
      goto LABEL_46;
    }

LABEL_47:
    ;
  }

  v71 = a4[1] >> 1;
  if (v71 != v141)
  {
    result = 1;
    goto LABEL_196;
  }

  v72 = *(a1 + 8);
  if (*(v10 + 60) == 29)
  {
    std::string::basic_string[abi:ne200100]<0>(&v148, "setppc: exactly_one included in linear");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v148, "setppc: at_most_one included in linear");
  }

  operations_research::sat::PresolveContext::UpdateRuleStats(v72, &v148, 1, v73, v74);
  if (SHIBYTE(v149[1]) < 0)
  {
    operator delete(v148);
  }

  operations_research::Domain::Domain(v146, v139, v140);
  operations_research::Domain::AdditionWith(&v148, &v153, v146, v75);
  if (v153)
  {
    operator delete(v154);
  }

  v153 = v148;
  v76 = *v149;
  v154 = *v149;
  v148 = 0;
  if (v146[0])
  {
    operator delete(v146[1]);
  }

  v77 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  if (*(v11 + 60) == 12)
  {
    v77 = *(v11 + 48);
  }

  operations_research::Domain::FromFlatSpanOfIntervals(v77[9], *(v77 + 16), &v148, v76);
  if (operations_research::Domain::IsIncludedIn(&v153, &v148))
  {
    v78 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(v146, "setppc: removed trivial linear constraint");
    operations_research::sat::PresolveContext::UpdateRuleStats(v78, v146, 1, v79, v80);
    if (v147 < 0)
    {
      operator delete(v146[0]);
    }

    result = 1;
    *v138 = 1;
    goto LABEL_194;
  }

  operations_research::Domain::IntersectionWith(v146, &v153, &v148);
  IsEmpty = operations_research::Domain::IsEmpty(v146);
  if (v146[0])
  {
    operator delete(v146[1]);
  }

  if (IsEmpty)
  {
    v83 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(v146, "setppc: removed infeasible linear constraint");
    operations_research::sat::PresolveContext::UpdateRuleStats(v83, v146, 1, v84, v85);
    if (v147 < 0)
    {
      operator delete(v146[0]);
    }

    *v137 = 1;
    result = operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(a1, v11, v86, v87, v88);
    goto LABEL_194;
  }

  if (!*(v11 + 16))
  {
    if (v141 <= 0)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v71, 0, "num_matches > 0");
    }

    if (*(v11 + 60) == 12)
    {
      v89 = *(v11 + 48);
    }

    else
    {
      v89 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    }

    operations_research::Domain::FromFlatSpanOfIntervals(v89[9], *(v89 + 16), &v144, v82);
    operations_research::Domain::Domain(&v142, -v140, -v139);
    operations_research::Domain::AdditionWith(v146, &v144, &v142, v90);
    v91 = operations_research::sat::ConstraintProto::mutable_linear((a1 + 168));
    operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(v146, v91);
    if ((v146[0] & 1) == 0)
    {
      if ((v142 & 1) == 0)
      {
        goto LABEL_134;
      }

LABEL_204:
      operator delete(v143);
      if ((v144 & 1) == 0)
      {
        goto LABEL_136;
      }

LABEL_135:
      operator delete(v145);
      goto LABEL_136;
    }

    operator delete(v146[1]);
    if (v142)
    {
      goto LABEL_204;
    }

LABEL_134:
    if (v144)
    {
      goto LABEL_135;
    }

LABEL_136:
    operations_research::sat::CpModelPresolver::PropagateDomainsInLinear(a1, -1, (a1 + 168));
  }

  std::sort[abi:ne200100]<std::__wrap_iter<std::pair<long long,int> *>>(v150, v151);
  v92 = v150;
  if (v151 == v150)
  {
    v100 = 0;
  }

  else
  {
    v93 = 0;
    v94 = 0;
    v95 = (v151 - v150) >> 4;
    v96 = 1;
    do
    {
      while (1)
      {
        v98 = v92[2 * v93];
        if (v94 >= 1)
        {
          v99 = &v92[2 * v94];
          if (v98 == *(v99 - 2))
          {
            break;
          }
        }

        v97 = &v92[2 * v94++];
        *v97 = v98;
        *(v97 + 2) = v92[2 * v93 + 1];
        v93 = v96++;
        if (v95 <= v93)
        {
          goto LABEL_143;
        }
      }

      ++*(v99 - 2);
      v93 = v96++;
    }

    while (v95 > v93);
LABEL_143:
    v100 = v94;
  }

  std::vector<std::pair<long long,int>>::resize(&v150, v100);
  v101 = v150;
  if (v150 == v151)
  {
    goto LABEL_193;
  }

  v102 = 0;
  v103 = 0;
  do
  {
    v104 = *(v101 + 2);
    if (v102 < v104)
    {
      v103 = *v101;
    }

    if (v102 <= v104)
    {
      v102 = *(v101 + 2);
    }

    v101 += 2;
  }

  while (v101 != v151);
  if (!v103)
  {
    goto LABEL_193;
  }

  v105 = 0;
  v106 = 0;
  while (2)
  {
    v108 = *(v11 + 60);
    if (v108 == 12)
    {
      v109 = *(v11 + 48);
    }

    else
    {
      v109 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    }

    if (v106 < *(v109 + 4))
    {
      v110 = *(v109[3] + v106);
      v111 = v109[6][v106];
      v112 = *a4;
      if (*a4 <= 1)
      {
        if (a4[1] >= 2 && *(a4 + 4) == v110)
        {
          goto LABEL_164;
        }

        goto LABEL_165;
      }

      v115 = 0;
      _X11 = a4[2];
      __asm { PRFM            #4, [X11] }

      v118 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v110) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v110));
      v119 = vdup_n_s8(v118 & 0x7F);
      v120 = ((v118 >> 7) ^ (_X11 >> 12)) & v112;
      v121 = *(_X11 + v120);
      v122 = vceq_s8(v121, v119);
      if (!v122)
      {
        goto LABEL_170;
      }

LABEL_168:
      while (*(a4[3] + 4 * ((v120 + (__clz(__rbit64(v122)) >> 3)) & v112)) != v110)
      {
        v122 &= ((v122 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v122)
        {
LABEL_170:
          while (!*&vceq_s8(v121, 0x8080808080808080))
          {
            v115 += 8;
            v120 = (v115 + v120) & v112;
            v121 = *(_X11 + v120);
            v122 = vceq_s8(v121, v119);
            if (v122)
            {
              goto LABEL_168;
            }
          }

          goto LABEL_165;
        }
      }

LABEL_164:
      v111 = (v111 - v103);
      if (v111)
      {
LABEL_165:
        if (v108 == 12)
        {
          v113 = v11;
          v114 = *(v11 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v11);
          *(v11 + 60) = 12;
          v123 = *(v11 + 8);
          if (v123)
          {
            v123 = *(v123 & 0xFFFFFFFFFFFFFFFELL);
          }

          v114 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v123);
          v113 = v11;
          *(v11 + 48) = v114;
        }

        *(v114[3] + 4 * v105) = v110;
        if (*(v113 + 60) == 12)
        {
          v107 = *(v113 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v113);
          *(v113 + 60) = 12;
          v124 = *(v113 + 8);
          if (v124)
          {
            v124 = *(v124 & 0xFFFFFFFFFFFFFFFELL);
          }

          v107 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v124);
          *(v11 + 48) = v107;
        }

        *(v107[6] + 8 * v105++) = v111;
      }

      ++v106;
      continue;
    }

    break;
  }

  v125 = operations_research::sat::ConstraintProto::mutable_linear(v11);
  if (*(v125 + 4) > v105)
  {
    *(v125 + 4) = v105;
  }

  v126 = operations_research::sat::ConstraintProto::mutable_linear(v11);
  if (*(v126 + 10) > v105)
  {
    *(v126 + 10) = v105;
  }

  if (*(v11 + 60) == 12)
  {
    v128 = *(v11 + 48);
  }

  else
  {
    v128 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  operations_research::Domain::FromFlatSpanOfIntervals(v128[9], *(v128 + 16), &v144, v127);
  operations_research::Domain::Domain(&v142, -v103);
  operations_research::Domain::AdditionWith(v146, &v144, &v142, v129);
  v130 = operations_research::sat::ConstraintProto::mutable_linear(v11);
  operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(v146, v130);
  if ((v146[0] & 1) == 0)
  {
    if ((v142 & 1) == 0)
    {
      goto LABEL_189;
    }

LABEL_201:
    operator delete(v143);
    if ((v144 & 1) == 0)
    {
      goto LABEL_191;
    }

LABEL_190:
    operator delete(v145);
    goto LABEL_191;
  }

  operator delete(v146[1]);
  if (v142)
  {
    goto LABEL_201;
  }

LABEL_189:
  if (v144)
  {
    goto LABEL_190;
  }

LABEL_191:
  operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(a1 + 8), a3);
  v131 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(v146, "setppc: reduced linear coefficients");
  operations_research::sat::PresolveContext::UpdateRuleStats(v131, v146, 1, v132, v133);
  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

LABEL_193:
  result = 1;
LABEL_194:
  if (v148)
  {
    v134 = result;
    operator delete(v149[0]);
    result = v134;
  }

LABEL_196:
  if (v150)
  {
    v151 = v150;
    v135 = result;
    operator delete(v150);
    result = v135;
  }

  if (v153)
  {
    v136 = result;
    operator delete(v154);
    return v136;
  }

  return result;
}