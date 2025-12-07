uint64_t operations_research::sat::ActivityBoundHelper::RemoveEnforcementThatMakesConstraintTrivial(void *a1, uint64_t a2, uint64_t a3, const operations_research::Domain *a4, const operations_research::Domain *a5, uint64_t a6)
{
  v9 = a1[40];
  if (v9 > 1)
  {
    absl::lts_20240722::container_internal::ClearBackingArray(a1 + 40, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value, v9 < 0x80, 1u);
    v103 = a6;
    v10 = *(a6 + 16);
    if (!v10)
    {
      goto LABEL_89;
    }

    goto LABEL_5;
  }

  a1[41] = 0;
  v103 = a6;
  v10 = *(a6 + 16);
  if (v10)
  {
LABEL_5:
    v11 = *(v103 + 24);
    v108 = &v11[v10];
    v12 = a1 + 38;
    v13 = a2 + 16 * a3;
    v105 = a3 & 0xFFFFFFFFFFFFFFFLL;
    do
    {
      v114 = *v11;
      v14 = (2 * ~v114) ^ (~v114 >> 31);
      v15 = a1[1];
      if (v14 >= (-1431655765 * ((a1[2] - v15) >> 3)))
      {
        goto LABEL_6;
      }

      v16 = v15 + 24 * v14;
      v17 = *v16;
      v18 = *(v16 + 8);
      if (*v16 == v18)
      {
        goto LABEL_6;
      }

      v19 = a1[36];
      if (v19 > 1)
      {
        absl::lts_20240722::container_internal::ClearBackingArray(a1 + 36, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value, v19 < 0x80, 1u);
        v20 = a1[1] + 24 * v14;
        v17 = *v20;
        v18 = *(v20 + 8);
      }

      else
      {
        a1[37] = 0;
      }

      while (v17 != v18)
      {
        v27 = a1[36];
        if (v27 > 1)
        {
          v25 = 0;
          _X9 = *v12;
          __asm { PRFM            #4, [X9] }

          v33 = *v17;
          v34 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v33) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v33));
          v26 = (v34 >> 7) ^ (*v12 >> 12);
          v35 = vdup_n_s8(v34 & 0x7F);
          while (1)
          {
            v21 = v26 & v27;
            v22 = *(_X9 + v21);
            v23 = vceq_s8(v22, v35);
            if (v23)
            {
              break;
            }

LABEL_15:
            v24 = vceq_s8(v22, 0x8080808080808080);
            if (v24)
            {
              v36 = (a1[39] + 4 * absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1 + 36, v34, (v21 + (__clz(__rbit64(v24)) >> 3)) & v27, v25, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value));
              goto LABEL_25;
            }

            v25 += 8;
            v26 = v25 + v21;
          }

          while (*(a1[39] + 4 * ((v21 + (__clz(__rbit64(v23)) >> 3)) & v27)) != v33)
          {
            v23 &= ((v23 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v23)
            {
              goto LABEL_15;
            }
          }
        }

        else if (a1[37] > 1uLL)
        {
          if (*v12 != *v17)
          {
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::resize_impl(a1 + 36, 3uLL);
          }
        }

        else
        {
          a1[37] = 2;
          v36 = a1 + 38;
LABEL_25:
          *v36 = *v17;
        }

        ++v17;
      }

      if (v105)
      {
        v37 = 0;
        v38 = 0;
        v39 = a2;
        while (1)
        {
          v44 = *v39;
          if (*v39 == v114 || (v114 ^ *v39) == -1)
          {
            goto LABEL_81;
          }

          v46 = *(v39 + 8);
          v47 = (2 * ~v44) ^ (~v44 >> 31);
          v48 = a1[1];
          v49 = -1431655765 * ((a1[2] - v48) >> 3);
          if (v47 >= v49)
          {
            break;
          }

          v50 = (v48 + 24 * v47);
          v52 = *v50;
          v51 = v50[1];
          if (*v50 == v51)
          {
            break;
          }

          v53 = a1[36];
          if (v53 > 1)
          {
            _X0 = *v12;
            do
            {
              v61 = 0;
              v62 = *v52;
              __asm { PRFM            #4, [X0] }

              v64 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v62) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v62));
              v65 = vdup_n_s8(v64 & 0x7F);
              v66 = ((*v12 >> 12) ^ (v64 >> 7)) & v53;
              v67 = *(_X0 + v66);
              v68 = vceq_s8(v67, v65);
              if (!v68)
              {
                goto LABEL_56;
              }

              do
              {
LABEL_54:
                if (*(a1[39] + 4 * ((v66 + (__clz(__rbit64(v68)) >> 3)) & v53)) == v62)
                {
                  v54 = 1;
                  goto LABEL_45;
                }

                v68 &= ((v68 & 0x8080808080808080) - 1) & 0x8080808080808080;
              }

              while (v68);
LABEL_56:
              while (!*&vceq_s8(v67, 0x8080808080808080))
              {
                v61 += 8;
                v66 = (v61 + v66) & v53;
                v67 = *(_X0 + v66);
                v68 = vceq_s8(v67, v65);
                if (v68)
                {
                  goto LABEL_54;
                }
              }

              v54 = 0;
              ++v52;
            }

            while (v52 != v51);
          }

          else
          {
            if (a1[37] < 2uLL)
            {
              break;
            }

            v78 = *v12;
            v79 = v52 + 1;
            do
            {
              v54 = v78 == *(v79 - 1);
              v80 = v78 == *(v79 - 1) || v79 == v51;
              ++v79;
            }

            while (!v80);
          }

LABEL_45:
          v55 = (2 * v44) ^ (v44 >> 31);
          if (v55 >= v49 || (v56 = v48 + 24 * v55, v57 = *v56, v58 = *(v56 + 8), v57 == v58))
          {
LABEL_29:
            v40 = (v46 & ~(v46 >> 63)) + v38;
            v41 = (v46 & (v46 >> 63)) + v37;
            v42 = v46 + v37;
            v43 = v46 + v38;
            if (v54)
            {
              v37 = v42;
            }

            else
            {
              v37 = v41;
            }

            if (v54)
            {
              v38 = v43;
            }

            else
            {
              v38 = v40;
            }

            goto LABEL_35;
          }

          v59 = a1[36];
          if (v59 > 1)
          {
            _X15 = *v12;
LABEL_62:
            v70 = 0;
            v71 = *v57;
            __asm { PRFM            #4, [X15] }

            v73 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v71) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v71));
            v74 = vdup_n_s8(v73 & 0x7F);
            v75 = ((*v12 >> 12) ^ (v73 >> 7)) & v59;
            v76 = *(_X15 + v75);
            v77 = vceq_s8(v76, v74);
            if (!v77)
            {
              goto LABEL_65;
            }

LABEL_63:
            while (*(a1[39] + 4 * ((v75 + (__clz(__rbit64(v77)) >> 3)) & v59)) != v71)
            {
              v77 &= ((v77 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v77)
              {
LABEL_65:
                while (!*&vceq_s8(v76, 0x8080808080808080))
                {
                  v70 += 8;
                  v75 = (v70 + v75) & v59;
                  v76 = *(_X15 + v75);
                  v77 = vceq_s8(v76, v74);
                  if (v77)
                  {
                    goto LABEL_63;
                  }
                }

                if (++v57 != v58)
                {
                  goto LABEL_62;
                }

                goto LABEL_29;
              }
            }
          }

          else
          {
            if (a1[37] < 2uLL)
            {
              goto LABEL_29;
            }

            while (*v12 != *v57)
            {
              if (++v57 == v58)
              {
                goto LABEL_29;
              }
            }
          }

          if (v54)
          {
            goto LABEL_81;
          }

LABEL_35:
          v39 += 16;
          if (v39 == v13)
          {
            goto LABEL_81;
          }
        }

        v54 = 0;
        goto LABEL_45;
      }

      v38 = 0;
      v37 = 0;
LABEL_81:
      operations_research::Domain::Domain(v109, v37, v38);
      operations_research::Domain::AdditionWith(&v111, v109, a4, v81);
      IsIncludedIn = operations_research::Domain::IsIncludedIn(&v111, a5);
      if (v111)
      {
        operator delete(__p);
        if ((v109[0] & 1) == 0)
        {
LABEL_83:
          if (IsIncludedIn)
          {
            goto LABEL_87;
          }

          goto LABEL_6;
        }
      }

      else if ((v109[0] & 1) == 0)
      {
        goto LABEL_83;
      }

      operator delete(v110);
      if (IsIncludedIn)
      {
LABEL_87:
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(a1 + 40, &v114, &v111);
        if (v113 == 1)
        {
          *__p = v114;
        }
      }

LABEL_6:
      ++v11;
    }

    while (v11 != v108);
  }

LABEL_89:
  if (a1[41] < 2uLL)
  {
    return 0;
  }

  v84 = *(v103 + 16);
  if (v84)
  {
    v85 = *(v103 + 24);
    v86 = a1[40];
    if (v86 >= 2)
    {
      v87 = 0;
      v91 = (v85 + 4 * v84);
      v92 = *(v103 + 24);
      do
      {
        v96 = 0;
        v98 = *v92;
        _X17 = a1[42];
        __asm { PRFM            #4, [X17] }

        v101 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v98) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v98));
        v97 = (v101 >> 7) ^ (_X17 >> 12);
        v102 = vdup_n_s8(v101 & 0x7F);
        while (1)
        {
          v93 = v97 & v86;
          v94 = *(_X17 + v93);
          v95 = vceq_s8(v94, v102);
          if (v95)
          {
            break;
          }

LABEL_105:
          if (vceq_s8(v94, 0x8080808080808080))
          {
            *(v85 + 4 * v87++) = v98;
            goto LABEL_108;
          }

          v96 += 8;
          v97 = v96 + v93;
        }

        while (*(a1[43] + 4 * ((v93 + (__clz(__rbit64(v95)) >> 3)) & v86)) != v98)
        {
          v95 &= ((v95 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v95)
          {
            goto LABEL_105;
          }
        }

LABEL_108:
        ++v92;
      }

      while (v92 != v91);
    }

    else
    {
      v87 = 0;
      v88 = 4 * v84;
      v89 = *(v103 + 24);
      do
      {
        if (*(a1 + 84) != *v89)
        {
          *(v85 + 4 * v87++) = *v89;
        }

        ++v89;
        v88 -= 4;
      }

      while (v88);
    }
  }

  else
  {
    v87 = 0;
  }

  v90 = *(v103 + 16);
  result = (v90 - v87);
  if (v90 > v87)
  {
    *(v103 + 16) = v87;
  }

  return result;
}

void sub_23CCA90C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *a17, uint64_t a18, char a19, void *__p)
{
  if (a19)
  {
    operator delete(__p);
    if ((a16 & 1) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a16 & 1) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::ClauseWithOneMissingHasher::RegisterClause(void *a1, int a2, int *a3, uint64_t a4)
{
  if ((a4 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = a3;
    v6 = 0;
    v7 = a1[3];
    v8 = a1[4];
    v27 = &a3[a4];
    while (1)
    {
      v9 = (2 * *v5) ^ (*v5 >> 31);
      while (v9 >= ((v8 - v7) >> 3))
      {
        v29 = 0;
        v28 = 0;
        v10 = a1[1];
        if (v10 == absl::lts_20240722::BitGenRef::NotAMock || !(v10)(*a1, &_ZN4absl12lts_2024072213base_internal11FastTypeTagIFyNS0_15random_internal26UniformDistributionWrapperIyEENSt3__15tupleIJEEEEE9dummy_varE, &v29, &v28))
        {
          v11 = (a1[2])(*a1);
          v13 = a1[4];
          v12 = a1[5];
          if (v13 < v12)
          {
LABEL_5:
            *v13 = v11;
            v8 = v13 + 1;
            goto LABEL_6;
          }
        }

        else
        {
          v11 = v28;
          v13 = a1[4];
          v12 = a1[5];
          if (v13 < v12)
          {
            goto LABEL_5;
          }
        }

        v14 = a1[3];
        v15 = v13 - v14;
        v16 = (v13 - v14) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v18 = v12 - v14;
        if (v18 >> 2 > v17)
        {
          v17 = v18 >> 2;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (!(v19 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v20 = (v13 - v14) >> 3;
        v21 = (8 * v16);
        v22 = (8 * v16 - 8 * v20);
        *v21 = v11;
        v8 = v21 + 1;
        memcpy(v22, v14, v15);
        a1[3] = v22;
        a1[4] = v8;
        a1[5] = 0;
        if (v14)
        {
          operator delete(v14);
        }

LABEL_6:
        a1[4] = v8;
        v7 = a1[3];
      }

      v6 ^= *(v7 + 8 * v9);
      if (++v5 == v27)
      {
        goto LABEL_25;
      }
    }
  }

  v6 = 0;
LABEL_25:
  v23 = a1[6];
  v24 = (a1[7] - v23) >> 3;
  if (v24 <= a2)
  {
    v25 = a2 + 1;
    v28 = 0;
    if (v25 <= v24)
    {
      if (v25 < v24)
      {
        a1[7] = v23 + 8 * v25;
      }
    }

    else
    {
      std::vector<unsigned long long>::__append((a1 + 6), v25 - v24, &v28);
      v23 = a1[6];
    }
  }

  *(v23 + 8 * a2) = v6;
}

uint64_t operations_research::sat::ClauseWithOneMissingHasher::HashOfNegatedLiterals(void *a1, _DWORD *a2, uint64_t a3)
{
  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = a2;
    v5 = 0;
    v6 = a1[3];
    v7 = a1[4];
    v23 = &a2[a3];
    while (1)
    {
      v8 = (2 * ~*v3) ^ (~*v3 >> 31);
      while (v8 >= ((v7 - v6) >> 3))
      {
        v25 = 0;
        v24 = 0;
        v9 = a1[1];
        if (v9 == absl::lts_20240722::BitGenRef::NotAMock || !(v9)(*a1, &_ZN4absl12lts_2024072213base_internal11FastTypeTagIFyNS0_15random_internal26UniformDistributionWrapperIyEENSt3__15tupleIJEEEEE9dummy_varE, &v25, &v24))
        {
          v10 = (a1[2])(*a1);
          v12 = a1[4];
          v11 = a1[5];
          if (v12 < v11)
          {
LABEL_5:
            *v12 = v10;
            v7 = v12 + 1;
            goto LABEL_6;
          }
        }

        else
        {
          v10 = v24;
          v12 = a1[4];
          v11 = a1[5];
          if (v12 < v11)
          {
            goto LABEL_5;
          }
        }

        v13 = a1[3];
        v14 = v12 - v13;
        v15 = (v12 - v13) >> 3;
        v16 = v15 + 1;
        if ((v15 + 1) >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v17 = v11 - v13;
        if (v17 >> 2 > v16)
        {
          v16 = v17 >> 2;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF8)
        {
          v18 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          if (!(v18 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v19 = (v12 - v13) >> 3;
        v20 = (8 * v15);
        v21 = (8 * v15 - 8 * v19);
        *v20 = v10;
        v7 = v20 + 1;
        memcpy(v21, v13, v14);
        a1[3] = v21;
        a1[4] = v7;
        a1[5] = 0;
        if (v13)
        {
          operator delete(v13);
        }

LABEL_6:
        a1[4] = v7;
        v6 = a1[3];
      }

      v5 ^= *(v6 + 8 * v8);
      if (++v3 == v23)
      {
        return v5;
      }
    }
  }

  return 0;
}

BOOL operations_research::sat::FindSingleLinearDifference(operations_research::sat *this, const operations_research::sat::LinearConstraintProto *a2, const operations_research::sat::LinearConstraintProto *a3, int *a4, uint64_t *a5, int *a6, uint64_t *a7)
{
  v8 = *(this + 4);
  if (v8 != *(a2 + 4))
  {
    operations_research::sat::FindSingleLinearDifference(v8, *(a2 + 4), &v19);
  }

  *a4 = 0;
  *a6 = 0;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = *(this + 3);
    v12 = *(a2 + 3);
    v13 = *(this + 6);
    v14 = 1;
    LOBYTE(v15) = 1;
    v16 = *(a2 + 6);
    while (1)
    {
      if (v15)
      {
        LODWORD(v15) = *(v11 + 4 * v9);
        if (!v14)
        {
          goto LABEL_7;
        }

LABEL_10:
        v17 = *(v12 + 4 * v10);
        if (v15 == v17)
        {
          goto LABEL_11;
        }

LABEL_12:
        if (v15 >= v17)
        {
          if (v15 <= v17)
          {
            if (*a4 || *a6)
            {
              return 0;
            }

            *a3 = v15;
            *a5 = v17;
            *a4 = *(v13 + 8 * v9);
            *a6 = *(v16 + 8 * v10);
            goto LABEL_23;
          }

          if (*a6)
          {
            return 0;
          }

          *a5 = v17;
          *a6 = *(v16 + 8 * v10++);
          v14 = v10 < v8;
          v15 = v9 < v8;
          if (v9 >= v8)
          {
LABEL_4:
            if (v10 >= v8)
            {
              break;
            }
          }
        }

        else
        {
          if (*a4)
          {
            return 0;
          }

          *a3 = v15;
          *a4 = *(v13 + 8 * v9++);
          v14 = v10 < v8;
          LOBYTE(v15) = v9 < v8;
          if (v9 >= v8)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        LODWORD(v15) = 0x7FFFFFFF;
        if (v14)
        {
          goto LABEL_10;
        }

LABEL_7:
        v17 = 0x7FFFFFFF;
        if (v15 != 0x7FFFFFFF)
        {
          goto LABEL_12;
        }

LABEL_11:
        if (*(v13 + 8 * v9) != *(v16 + 8 * v10))
        {
          goto LABEL_12;
        }

LABEL_23:
        ++v9;
        v14 = ++v10 < v8;
        LOBYTE(v15) = v9 < v8;
        if (v9 >= v8)
        {
          goto LABEL_4;
        }
      }
    }
  }

  return *a4 && *a6 != 0;
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>,operations_research::Domain>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int> const,operations_research::Domain>>>::EmplaceDecomposable::operator()<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>,std::piecewise_construct_t const&,std::tuple<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>&&>,std::tuple<operations_research::Domain&&>>@<Q0>(unint64_t **a1@<X0>, unsigned int *a2@<X1>, unint64_t **a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v5 = 0;
  v6 = *a1;
  _X10 = (*a1)[2];
  __asm { PRFM            #4, [X10] }

  v12 = *a2;
  v13 = a2[1];
  v14 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12))) + v13;
  v15 = ((v14 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v14);
  v16 = **a1;
  result.n128_u64[0] = vdup_n_s8(v15 & 0x7F);
  v18 = ((v15 >> 7) ^ (_X10 >> 12)) & v16;
  v19 = *(_X10 + v18);
  v20 = vceq_s8(v19, result.n128_u64[0]);
  if (v20)
  {
LABEL_2:
    while (1)
    {
      v21 = (v18 + (__clz(__rbit64(v20)) >> 3)) & v16;
      v22 = (v6[3] + 32 * v21);
      if (*v22 == v12 && v22[1] == v13)
      {
        break;
      }

      v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v20)
      {
        goto LABEL_7;
      }
    }

    *a5 = _X10 + v21;
    *(a5 + 8) = v22;
    *(a5 + 16) = 0;
  }

  else
  {
LABEL_7:
    while (1)
    {
      v24 = vceq_s8(v19, 0x8080808080808080);
      if (v24)
      {
        break;
      }

      v5 += 8;
      v18 = (v5 + v18) & v16;
      v19 = *(_X10 + v18);
      v20 = vceq_s8(v19, result.n128_u64[0]);
      if (v20)
      {
        goto LABEL_2;
      }
    }

    inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(v6, v15, (v18 + (__clz(__rbit64(v24)) >> 3)) & v16, v5, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>,operations_research::Domain>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int> const,operations_research::Domain>>>::GetPolicyFunctions(void)::value);
    v29 = (v6[3] + 32 * inserted);
    *a5 = v6[2] + inserted;
    *(a5 + 8) = v29;
    *(a5 + 16) = 1;
    v30 = *a4;
    v29->n128_u64[0] = **a3;
    v29->n128_u64[1] = 0;
    v29->n128_u64[1] = *v30;
    result = *(v30 + 8);
    v29[1] = result;
    *v30 = 0;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>,operations_research::Domain>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int> const,operations_research::Domain>>>::resize_impl(unint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1] & 1;
  v5 = 0;
  v2 = *(a1 + 1);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,false,false,8ul>(&v2, a1);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>,operations_research::Domain>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int> const,operations_research::Domain>>>::transfer_slot_fn(uint64_t a1, __n128 *a2, __n128 *a3)
{
  *a2 = a3->n128_u64[0];
  a2->n128_u64[1] = a3->n128_u64[1];
  result = a3[1];
  a2[1] = result;
  a3->n128_u64[1] = 0;
  return result;
}

uint64_t std::vector<std::pair<int,operations_research::Domain>>::__emplace_back_slow_path<std::pair<int,operations_research::Domain>>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v3 - *a1) >> 5;
  v5 = v4 + 1;
  if ((v4 + 1) >> 59)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = a1[2] - v2;
  if (v7 >> 4 > v5)
  {
    v5 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (!(v8 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v9 = (v3 - *a1) >> 5;
  v10 = 32 * v4;
  *v10 = *a2;
  *(v10 + 8) = *(a2 + 8);
  *(v10 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  v11 = 32 * v4 - 32 * v9;
  if (v2 != v3)
  {
    v12 = v2;
    v13 = v11;
    do
    {
      *v13 = *v12;
      *(v13 + 8) = *(v12 + 8);
      *(v13 + 16) = *(v12 + 16);
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v3);
    do
    {
      if (*(v2 + 8))
      {
        operator delete(*(v2 + 16));
      }

      v2 += 32;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v11;
  a1[1] = 32 * v4 + 32;
  a1[2] = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return 32 * v4 + 32;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,false>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3uLL:

        return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,0>(v9, (v9 + 16), a2 - 2);
      case 4uLL:
        result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,0>(v9, (v9 + 16), (v9 + 32));
        v26 = *(v9 + 32);
        v27 = *(a2 - 2);
        if (v26 >= v27)
        {
          if (v27 < v26)
          {
            return result;
          }

          v28 = *(v9 + 40);
          v29 = *(a2 - 2);
          if (v28 >= v29)
          {
            return result;
          }
        }

        else
        {
          v28 = *(v9 + 40);
          v29 = *(a2 - 2);
        }

        *(v9 + 32) = v27;
        *(a2 - 2) = v26;
        *(v9 + 40) = v29;
        *(a2 - 2) = v28;
        v30 = *(v9 + 16);
        v31 = *(v9 + 32);
        if (v30 >= v31)
        {
          if (v31 < v30)
          {
            return result;
          }

          v32 = *(v9 + 24);
          v33 = *(v9 + 40);
          if (v32 >= v33)
          {
            return result;
          }
        }

        else
        {
          v32 = *(v9 + 24);
          v33 = *(v9 + 40);
        }

        *(v9 + 16) = v31;
        *(v9 + 32) = v30;
        *(v9 + 24) = v33;
        *(v9 + 40) = v32;
        v34 = *v9;
        if (*v9 >= v31)
        {
          if (v31 < v34)
          {
            return result;
          }

          v35 = *(v9 + 8);
          if (v35 >= v33)
          {
            return result;
          }
        }

        else
        {
          v35 = *(v9 + 8);
        }

        *v9 = v31;
        *(v9 + 16) = v34;
        *(v9 + 8) = v33;
        *(v9 + 24) = v35;
        return result;
      case 5uLL:

        return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,0>(v9, v9 + 16, v9 + 32, v9 + 48, a2 - 2);
    }

LABEL_11:
    if (v12 <= 23)
    {
      v36 = (v9 + 16);
      v38 = v9 == a2 || v36 == a2;
      if (a5)
      {
        if (v38)
        {
          return result;
        }

        v39 = 0;
        v40 = v9;
LABEL_56:
        v42 = v40;
        v40 = v36;
        v43 = *v42;
        v44 = *(v42 + 16);
        if (*v42 >= v44)
        {
          if (v44 < v43)
          {
            goto LABEL_55;
          }

          v46 = *(v42 + 8);
          v45 = *(v42 + 24);
          if (v46 >= v45)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v45 = *(v42 + 24);
          v46 = *(v42 + 8);
        }

        *(v42 + 16) = v43;
        *(v40 + 8) = v46;
        v41 = v9;
        if (v42 == v9)
        {
          goto LABEL_54;
        }

        v47 = v39;
        while (1)
        {
          v50 = *(v9 + v47 - 16);
          if (v50 < v44)
          {
            v48 = *(v9 + v47 - 8);
          }

          else
          {
            if (v44 < v50)
            {
              v41 = v9 + v47;
LABEL_54:
              *v41 = v44;
              *(v41 + 8) = v45;
LABEL_55:
              v36 = (v40 + 16);
              v39 += 16;
              if ((v40 + 16) == a2)
              {
                return result;
              }

              goto LABEL_56;
            }

            v48 = *(v9 + v47 - 8);
            if (v48 >= v45)
            {
              v41 = v42;
              goto LABEL_54;
            }
          }

          v42 -= 16;
          v49 = v9 + v47;
          *v49 = v50;
          *(v49 + 8) = v48;
          v47 -= 16;
          if (!v47)
          {
            v41 = v9;
            goto LABEL_54;
          }
        }
      }

      if (v38)
      {
        return result;
      }

      for (i = v9 + 8; ; i += 16)
      {
        v56 = v8;
        v8 = v36;
        v57 = *v56;
        v58 = *(v56 + 16);
        if (*v56 < v58)
        {
          break;
        }

        if (v58 >= v57)
        {
          v61 = *(v56 + 8);
          v59 = *(v56 + 24);
          if (v61 < v59)
          {
            goto LABEL_87;
          }
        }

LABEL_84:
        v36 = (v8 + 16);
        if ((v8 + 16) == a2)
        {
          return result;
        }
      }

      v59 = *(v56 + 24);
LABEL_87:
      for (j = i; ; j -= 16)
      {
        *(j + 8) = v57;
        *(j + 16) = *j;
        v57 = *(j - 24);
        if (v57 >= v58 && (v58 < v57 || *(j - 16) >= v59))
        {
          break;
        }
      }

      *(j - 8) = v58;
      *j = v59;
      goto LABEL_84;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {
        v51 = (v12 - 2) >> 1;
        v52 = v51 + 1;
        v53 = (v9 + 16 * v51);
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *>(v9, a3, (a2 - v9) >> 4, v53);
          v53 -= 2;
          --v52;
        }

        while (v52);
        do
        {
          result = std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void>,std::pair<long long,int> *>(v9, a2, a3, v12);
          a2 -= 2;
        }

        while (v12-- > 2);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = v9 + 16 * (v12 >> 1);
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,0>((v8 + 16 * (v12 >> 1)), v8, a2 - 2);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,0>(v8, (v8 + 16 * (v12 >> 1)), a2 - 2);
      v15 = 16 * v13;
      v16 = (16 * v13 + v8 - 16);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,0>((v8 + 16), v16, a2 - 4);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,0>((v8 + 32), (v8 + 16 + v15), a2 - 6);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,0>(v16, v14, (v8 + 16 + v15));
      v17 = *v8;
      *v8 = *v14;
      *v14 = v17;
      LODWORD(v17) = *(v8 + 8);
      *(v8 + 8) = *(v14 + 8);
      *(v14 + 8) = v17;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v18 = *(v8 - 16);
    if (*v8 >= v18 && (v18 < *v8 || *(v8 + 8) >= *(v8 - 8)))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<long long,int> *,std::greater<void> &>(v8, a2);
      v9 = result;
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }

LABEL_20:
    v19 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<long long,int> *,std::greater<void> &>(v8, a2);
    if ((v20 & 1) == 0)
    {
      goto LABEL_23;
    }

    v21 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *>(v8, v19);
    v9 = (v19 + 2);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *>((v19 + 2), a2);
    if (result)
    {
      a4 = -v11;
      a2 = v19;
      if (v21)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v21)
    {
LABEL_23:
      result = std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,false>(v8, v19, a3, -v11, a5 & 1);
      v9 = (v19 + 2);
      goto LABEL_25;
    }
  }

  if (v12 < 2)
  {
    return result;
  }

  if (v12 != 2)
  {
    goto LABEL_11;
  }

  v22 = *v9;
  v23 = *(a2 - 2);
  if (*v9 < v23)
  {
    v24 = *(v9 + 8);
    v25 = *(a2 - 2);
LABEL_30:
    *v9 = v23;
    *(a2 - 2) = v22;
    *(v9 + 8) = v25;
    *(a2 - 2) = v24;
    return result;
  }

  if (v23 >= v22)
  {
    v24 = *(v9 + 8);
    v25 = *(a2 - 2);
    if (v24 < v25)
    {
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 < *a2 || v4 >= v3 && *(a1 + 2) < *(a2 + 2))
  {
    v5 = *a3;
    if (v4 < *a3)
    {
      v6 = *(a3 + 2);
LABEL_4:
      *a1 = v5;
      *a3 = v3;
      v7 = *(a1 + 2);
      *(a1 + 2) = v6;
      *(a3 + 2) = v7;
      return 1;
    }

    if (v5 >= v4)
    {
      v16 = *(a2 + 2);
      v6 = *(a3 + 2);
      if (v16 < v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v16 = *(a2 + 2);
    }

    *a1 = v4;
    *a2 = v3;
    v17 = *(a1 + 2);
    *(a1 + 2) = v16;
    *(a2 + 2) = v17;
    v18 = *a3;
    if (v3 >= *a3)
    {
      if (v18 < v3)
      {
        return 1;
      }

      v19 = *(a3 + 2);
      if (v17 >= v19)
      {
        return 1;
      }
    }

    else
    {
      v19 = *(a3 + 2);
    }

    *a2 = v18;
    *a3 = v3;
    *(a2 + 2) = v19;
    result = 1;
    *(a3 + 2) = v17;
    return result;
  }

  v9 = *a3;
  if (v4 < *a3)
  {
    v10 = *(a2 + 2);
    v11 = *(a3 + 2);
LABEL_9:
    *a2 = v9;
    *a3 = v4;
    *(a2 + 2) = v11;
    *(a3 + 2) = v10;
    v12 = *a1;
    v13 = *a2;
    if (*a1 < *a2)
    {
      v14 = *(a1 + 2);
      v15 = *(a2 + 2);
LABEL_11:
      *a1 = v13;
      *a2 = v12;
      *(a1 + 2) = v15;
      result = 1;
      *(a2 + 2) = v14;
      return result;
    }

    if (v13 >= v12)
    {
      v14 = *(a1 + 2);
      v15 = *(a2 + 2);
      if (v14 < v15)
      {
        goto LABEL_11;
      }
    }

    return 1;
  }

  if (v9 < v4)
  {
    return 0;
  }

  v10 = *(a2 + 2);
  v11 = *(a3 + 2);
  if (v10 < v11)
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,0>(a1, a2, a3);
  v11 = *a3;
  v12 = *a4;
  if (*a3 >= *a4)
  {
    if (v12 < v11)
    {
      goto LABEL_16;
    }

    v13 = *(a3 + 8);
    v14 = *(a4 + 8);
    if (v13 >= v14)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(a3 + 8);
    v14 = *(a4 + 8);
  }

  *a3 = v12;
  *a4 = v11;
  *(a3 + 8) = v14;
  *(a4 + 8) = v13;
  v15 = *a2;
  v16 = *a3;
  if (*a2 >= *a3)
  {
    if (v16 < v15)
    {
      goto LABEL_16;
    }

    v17 = *(a2 + 8);
    v18 = *(a3 + 8);
    if (v17 >= v18)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = *(a3 + 8);
  }

  *a2 = v16;
  *a3 = v15;
  *(a2 + 8) = v18;
  *(a3 + 8) = v17;
  v19 = *a1;
  v20 = *a2;
  if (*a1 < *a2)
  {
    v21 = *(a1 + 8);
    v22 = *(a2 + 8);
LABEL_7:
    *a1 = v20;
    *a2 = v19;
    *(a1 + 8) = v22;
    *(a2 + 8) = v21;
    goto LABEL_16;
  }

  if (v20 >= v19)
  {
    v21 = *(a1 + 8);
    v22 = *(a2 + 8);
    if (v21 < v22)
    {
      goto LABEL_7;
    }
  }

LABEL_16:
  v23 = *a4;
  v24 = *a5;
  if (*a4 >= *a5)
  {
    if (v24 < v23)
    {
      return result;
    }

    v25 = *(a4 + 8);
    v26 = *(a5 + 2);
    if (v25 >= v26)
    {
      return result;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    v26 = *(a5 + 2);
  }

  *a4 = v24;
  *a5 = v23;
  *(a4 + 8) = v26;
  *(a5 + 2) = v25;
  v27 = *a3;
  v28 = *a4;
  if (*a3 >= *a4)
  {
    if (v28 < v27)
    {
      return result;
    }

    v29 = *(a3 + 8);
    v30 = *(a4 + 8);
    if (v29 >= v30)
    {
      return result;
    }
  }

  else
  {
    v29 = *(a3 + 8);
    v30 = *(a4 + 8);
  }

  *a3 = v28;
  *a4 = v27;
  *(a3 + 8) = v30;
  *(a4 + 8) = v29;
  v31 = *a2;
  v32 = *a3;
  if (*a2 >= *a3)
  {
    if (v32 < v31)
    {
      return result;
    }

    v33 = *(a2 + 8);
    v34 = *(a3 + 8);
    if (v33 >= v34)
    {
      return result;
    }
  }

  else
  {
    v33 = *(a2 + 8);
    v34 = *(a3 + 8);
  }

  *a2 = v32;
  *a3 = v31;
  *(a2 + 8) = v34;
  *(a3 + 8) = v33;
  v35 = *a1;
  v36 = *a2;
  if (*a1 < *a2)
  {
    v37 = *(a1 + 8);
    v38 = *(a2 + 8);
LABEL_24:
    *a1 = v36;
    *a2 = v35;
    *(a1 + 8) = v38;
    *(a2 + 8) = v37;
    return result;
  }

  if (v36 >= v35)
  {
    v37 = *(a1 + 8);
    v38 = *(a2 + 8);
    if (v37 < v38)
    {
      goto LABEL_24;
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<long long,int> *,std::greater<void> &>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a2 - 2);
  if (v4 < *a1 || v2 >= v4 && *(a2 - 2) < v3)
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v7 >= v2 && (v2 < v6 || *(i + 2) >= v3));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v4 < v2 || v2 >= v4 && *(a2 + 2) < v3; a2 -= 2)
    {
      v8 = *(a2 - 2);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = i[2];
      i += 2;
      v9 = v11;
      v12 = *(i - 2);
      *(i - 2) = *(a2 + 2);
      *(a2 + 2) = v12;
      while (v9 >= v2 && (v2 < v9 || *(i + 2) >= v3))
      {
        v13 = i[2];
        i += 2;
        v9 = v13;
      }

      do
      {
        do
        {
          v14 = *(a2 - 2);
          a2 -= 2;
          v10 = v14;
        }

        while (v14 < v2);
      }

      while (v2 >= v10 && *(a2 + 2) < v3);
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    *(a1 + 2) = *(i - 2);
  }

  *(i - 2) = v2;
  *(i - 2) = v3;
  return i;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<long long,int> *,std::greater<void> &>(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 2);
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v3 >= v5 && (v5 < v3 || v4 >= SLODWORD(a1[v2 + 3])))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 8)
  {
    do
    {
      v8 = *(a2 - 16);
      a2 -= 16;
      v7 = v8;
    }

    while (v3 >= v8 && (v7 < v3 || v4 >= *(a2 + 8)));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 16);
        a2 -= 16;
        v9 = v10;
        if (v3 < v10)
        {
          break;
        }

        if (v9 < v3)
        {
          goto LABEL_19;
        }
      }

      while (v4 >= *(a2 + 8) && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    v12 = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = *(v13 + 2);
      *(v13 + 2) = *(v14 + 8);
      *(v14 + 8) = v15;
      do
      {
        do
        {
          v16 = v13[2];
          v13 += 2;
          v5 = v16;
        }

        while (v3 < v16);
      }

      while (v5 >= v3 && v4 < *(v13 + 2));
      do
      {
        v17 = *(v14 - 16);
        v14 -= 16;
        v12 = v17;
      }

      while (v3 >= v17 && (v12 < v3 || v4 >= *(v14 + 8)));
    }

    while (v13 < v14);
  }

  if (v13 - 2 != a1)
  {
    *a1 = *(v13 - 2);
    *(a1 + 2) = *(v13 - 2);
  }

  *(v13 - 2) = v3;
  *(v13 - 2) = v4;
  return v13 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,0>(a1, (a1 + 16), (a2 - 16));
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,0>(a1, (a1 + 16), (a1 + 32));
        v25 = *(a1 + 32);
        v26 = *(a2 - 16);
        if (v25 >= v26)
        {
          if (v26 < v25)
          {
            return 1;
          }

          v27 = *(a1 + 40);
          v28 = *(a2 - 8);
          if (v27 >= v28)
          {
            return 1;
          }
        }

        else
        {
          v27 = *(a1 + 40);
          v28 = *(a2 - 8);
        }

        *(a1 + 32) = v26;
        *(a2 - 16) = v25;
        *(a1 + 40) = v28;
        *(a2 - 8) = v27;
        v29 = *(a1 + 16);
        v30 = *(a1 + 32);
        if (v29 >= v30)
        {
          if (v30 < v29)
          {
            return 1;
          }

          v31 = *(a1 + 24);
          v32 = *(a1 + 40);
          if (v31 >= v32)
          {
            return 1;
          }
        }

        else
        {
          v31 = *(a1 + 24);
          v32 = *(a1 + 40);
        }

        *(a1 + 16) = v30;
        *(a1 + 32) = v29;
        *(a1 + 24) = v32;
        *(a1 + 40) = v31;
        v33 = *a1;
        if (*a1 >= v30)
        {
          if (v30 < v33)
          {
            return 1;
          }

          v34 = *(a1 + 8);
          if (v34 >= v32)
          {
            return 1;
          }
        }

        else
        {
          v34 = *(a1 + 8);
        }

        *a1 = v30;
        *(a1 + 16) = v33;
        *(a1 + 8) = v32;
        *(a1 + 24) = v34;
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, (a2 - 16));
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v4 = *a1;
      v5 = *(a2 - 16);
      if (*a1 >= v5)
      {
        if (v5 < v4)
        {
          return 1;
        }

        v6 = *(a1 + 8);
        v7 = *(a2 - 8);
        if (v6 >= v7)
        {
          return 1;
        }
      }

      else
      {
        v6 = *(a1 + 8);
        v7 = *(a2 - 8);
      }

      *a1 = v5;
      *(a2 - 16) = v4;
      *(a1 + 8) = v7;
      *(a2 - 8) = v6;
      return 1;
    }
  }

  v8 = a1 + 32;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,0>(a1, (a1 + 16), (a1 + 32));
  v11 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v15 = *v8;
    v16 = *v11;
    if (*v8 >= *v11)
    {
      if (v16 < v15)
      {
        goto LABEL_17;
      }

      v18 = *(v8 + 8);
      v17 = *(v11 + 8);
      if (v18 >= v17)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v17 = *(v11 + 8);
      v18 = *(v8 + 8);
    }

    *v11 = v15;
    *(v11 + 8) = v18;
    v14 = a1;
    if (v8 == a1)
    {
      goto LABEL_16;
    }

    v19 = v12;
    while (1)
    {
      v21 = a1 + v19;
      v22 = *(a1 + v19 + 16);
      if (v22 < v16)
      {
        v20 = *(v21 + 24);
        goto LABEL_23;
      }

      if (v16 < v22)
      {
        break;
      }

      v20 = *(a1 + v19 + 24);
      if (v20 >= v17)
      {
        v14 = a1 + v19 + 32;
        goto LABEL_16;
      }

LABEL_23:
      v8 -= 16;
      *(v21 + 32) = v22;
      *(a1 + v19 + 40) = v20;
      v19 -= 16;
      if (v19 == -32)
      {
        v14 = a1;
        goto LABEL_16;
      }
    }

    v14 = v8;
LABEL_16:
    *v14 = v16;
    *(v14 + 8) = v17;
    if (++v13 != 8)
    {
LABEL_17:
      v8 = v11;
      v12 += 16;
      v11 += 16;
      if (v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 16 == a2;
  }
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = result + 16 * v7;
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = *(v8 + 16);
        if (v10 < *v8 || *v8 >= v10 && *(v8 + 24) < *(v8 + 8))
        {
          v8 += 16;
          v7 = v9;
        }
      }

      v11 = *a4;
      v12 = *v8;
      if (*a4 >= *v8)
      {
        v13 = *(a4 + 2);
        if (v12 >= v11)
        {
          v14 = *(v8 + 8);
          if (v13 < v14)
          {
            return result;
          }
        }

        else
        {
          v14 = *(v8 + 8);
        }

        *a4 = v12;
        *(a4 + 2) = v14;
        if (v5 >= v7)
        {
          while (1)
          {
            v17 = 2 * v7;
            v7 = (2 * v7) | 1;
            v15 = result + 16 * v7;
            v18 = v17 + 2;
            if (v18 < a3)
            {
              v19 = *(v15 + 16);
              if (v19 < *v15 || *v15 >= v19 && *(v15 + 24) < *(v15 + 8))
              {
                v15 += 16;
                v7 = v18;
              }
            }

            v20 = *v15;
            if (v11 < *v15)
            {
              break;
            }

            if (v20 < v11)
            {
              v16 = *(v15 + 8);
            }

            else
            {
              v16 = *(v15 + 8);
              if (v13 < v16)
              {
                break;
              }
            }

            *v8 = v20;
            *(v8 + 8) = v16;
            v8 = v15;
            if (v5 < v7)
            {
              goto LABEL_14;
            }
          }
        }

        v15 = v8;
LABEL_14:
        *v15 = v11;
        *(v15 + 8) = v13;
      }
    }
  }

  return result;
}

uint64_t *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void>,std::pair<long long,int> *>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v5 = *result;
    v6 = *(result + 2);
    v7 = result;
    do
    {
      v8 = v7;
      v9 = &v7[2 * v4];
      v7 = v9 + 2;
      v10 = 2 * v4;
      v4 = (2 * v4) | 1;
      v11 = v10 + 2;
      if (v11 < a4)
      {
        v12 = v9[4];
        v13 = v9[2];
        if (v12 < v13 || v13 >= v12 && *(v9 + 10) < *(v9 + 6))
        {
          v7 = v9 + 4;
          v4 = v11;
        }
      }

      *v8 = *v7;
      *(v8 + 2) = *(v7 + 2);
    }

    while (v4 <= ((a4 - 2) >> 1));
    if (v7 == (a2 - 16))
    {
      *v7 = v5;
      *(v7 + 2) = v6;
      return result;
    }

    *v7 = *(a2 - 16);
    *(v7 + 2) = *(a2 - 8);
    *(a2 - 16) = v5;
    *(a2 - 8) = v6;
    v14 = (v7 - result + 16) >> 4;
    v15 = v14 - 2;
    if (v14 < 2)
    {
      return result;
    }

    v16 = v15 >> 1;
    v17 = &result[2 * (v15 >> 1)];
    v18 = *v7;
    v19 = *v17;
    if (*v7 >= *v17)
    {
      if (v19 < v18)
      {
        return result;
      }

      v20 = *(v7 + 2);
      v21 = *(v17 + 2);
      if (v20 >= v21)
      {
        return result;
      }
    }

    else
    {
      v20 = *(v7 + 2);
      v21 = *(v17 + 2);
    }

    *v7 = v19;
    *(v7 + 2) = v21;
    if (v15 >= 2)
    {
      while (1)
      {
        v24 = v16 - 1;
        v16 = (v16 - 1) >> 1;
        v22 = &result[2 * v16];
        v25 = *v22;
        if (v18 < *v22)
        {
          v23 = *(v22 + 2);
        }

        else
        {
          if (v25 < v18)
          {
            break;
          }

          v23 = *(v22 + 2);
          if (v20 >= v23)
          {
            break;
          }
        }

        *v17 = v25;
        *(v17 + 2) = v23;
        v17 = &result[2 * v16];
        if (v24 <= 1)
        {
          goto LABEL_16;
        }
      }
    }

    v22 = v17;
LABEL_16:
    *v22 = v18;
    *(v22 + 2) = v20;
  }

  return result;
}

void std::vector<std::array<long long,2ul>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 4;
    if ((v5 + a2) >> 60)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v6 = v3 - *a1;
    v7 = v6 >> 3;
    if (v6 >> 3 <= v5 + a2)
    {
      v7 = v5 + a2;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFF0)
    {
      v8 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      if (!(v8 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (16 * v5);
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = 16 * a2;
      bzero(v12, 16 * a2);
      v10 = &v12[v9];
    }

    else
    {
      v10 = v12;
    }

    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(v15, *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

operations_research::sat::Prober *operations_research::sat::Prober::Prober(operations_research::sat::Prober *this, operations_research::sat::Model *a2)
{
  *this = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a2);
  *(this + 1) = *(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2) + 27) + 16;
  *(this + 2) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  *(this + 3) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ImpliedBounds>(a2);
  *(this + 4) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ProductDetector>(a2);
  *(this + 5) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  *(this + 6) = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a2);
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::BinaryImplicationGraph>(a2);
  *(this + 24) = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 7) = v4;
  *(this + 16) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 23) = 0;
  *(this + 25) = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 26) = 0;
  *(this + 27) = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 30) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 28) = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 29) = 0;
  *(this + 31) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 32) = 0;
  *(this + 33) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 42) = 0;
  *(this + 34) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 35) = 0;
  *(this + 76) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 43) = operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(a2);
  return this;
}

void sub_23CCAB150(_Unwind_Exception *a1)
{
  std::function<void ()(operations_research::sat::Literal)>::~function(v1 + 312);
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::clear(v6);
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::clear(v5);
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear(v4);
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear(v3);
  operations_research::sat::Prober::Prober((v1 + 168), (v1 + 120), (v1 + 144), v1);
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(v2);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::Prober::ProbeBooleanVariables(operations_research::sat::Prober *this, long double a2)
{
  v2 = *(this + 5);
  v3 = *(v2 + 16);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = *(v2 + 216);
    v8 = 2 * v3;
    do
    {
      if (((*(*(v7 + 24) + (((v5 >> 32) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v6 & 0x3E)) & 3) == 0)
      {
        v9 = *(this + 7);
        v10 = *(v9 + 704);
        v11 = *(v9 + 696);
        if (v6 >= ((v10 - v11) >> 2) || ((v12 = *(v11 + (v5 >> 30)), v12 != -1) ? (v13 = v6 == v12) : (v13 = 1), v13))
        {
          operator new();
        }
      }

      v6 += 2;
      v5 += 0x200000000;
      ++v4;
    }

    while (v8 != v6);
  }

  return operations_research::sat::Prober::ProbeBooleanVariables(this, 0, 0, a2);
}

void sub_23CCAB390(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::Prober::ProbeBooleanVariables(uint64_t a1, unsigned int *a2, unint64_t a3, long double a4)
{
  v72 = *MEMORY[0x277D85DE8];
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(a1);
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(a1 + 64, 2 * *(*(a1 + 40) + 16));
  v10 = operations_research::sat::SatSolver::ResetToLevelZero(*(a1 + 40));
  result = 0;
  if (v10)
  {
    v12 = *(*(*(a1 + 40) + 216) + 12);
    v13 = *(*(a1 + 48) + 112);
    v53 = 0;
    if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = 0;
      v15 = 4 * a3;
      v16 = "Aborted ";
      do
      {
        v17 = *a2;
        v18 = 2 * *a2;
        v19 = *(a1 + 56);
        v20 = *(v19 + 704);
        v21 = *(v19 + 696);
        if (v18 >= ((v20 - v21) >> 2) || ((v22 = *(v21 + 4 * v18), v22 != -1) ? (v23 = v22 == v18) : (v23 = 1), v23))
        {
          if (operations_research::TimeLimit::LimitReached(*(a1 + 48)))
          {
            goto LABEL_18;
          }

          v26.n128_u64[0] = *(*(a1 + 48) + 112);
          if (v26.n128_f64[0] > v13 + a4)
          {
            goto LABEL_18;
          }

          v53 = ++v14;
          result = operations_research::sat::Prober::ProbeOneVariableInternal(a1, v17, v24, v25, v26);
          if (!result)
          {
            return result;
          }
        }

        ++a2;
        v15 -= 4;
      }

      while (v15);
      v16 = &byte_23CE7F131;
LABEL_18:
      v27 = *(*(*(a1 + 40) + 216) + 12);
      *(a1 + 304) = v27 - v12;
      v28 = *(a1 + 344);
      if (*v28 != 1)
      {
        return 1;
      }
    }

    else
    {
      v16 = &byte_23CE7F131;
      v27 = v12;
      *(a1 + 304) = 0;
      v28 = *(a1 + 344);
      if (*v28 != 1)
      {
        return 1;
      }
    }

    v29 = *(*(a1 + 48) + 112) - v13;
    *&v61[0] = "[Probing] deterministic_time: ";
    *(&v61[0] + 1) = 30;
    v58 = v60;
    v59 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v60, v29, v9);
    v57[0].__r_.__value_.__r.__words[0] = " (limit: ";
    v57[0].__r_.__value_.__l.__size_ = 9;
    *&v55 = v56;
    *(&v55 + 1) = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v56, a4, v30);
    v54[0].__r_.__value_.__r.__words[0] = ") wall_time: ";
    v54[0].__r_.__value_.__l.__size_ = 13;
    v51 = (absl::lts_20240722::GetCurrentTimeNanos(*(&v55 + 1)) - CurrentTimeNanos) * 0.000000001;
    v49 = a3;
    v50 = v16;
    absl::lts_20240722::StrCat<double,char [3],char const*,int,char [2],unsigned long,char [2]>(v61, &v58, v57, &v55, v54, &v51, " (", &v50, &__p, &v53, "/", &v49, ")");
    operations_research::SolverLogger::LogInfo(v28, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/probing.cc", 282, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      v32 = *(a1 + 304);
      if (v32 < 1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v32 = *(a1 + 304);
      if (v32 < 1)
      {
LABEL_26:
        v40 = *(a1 + 292);
        if (v40 >= 1)
        {
          v41 = *(a1 + 344);
          if (*v41 == 1)
          {
            *&v61[0] = "[Probing]  - new integer holes: ";
            *(&v61[0] + 1) = 32;
            v42 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v40, v60, v31);
            v58 = v60;
            v59 = v42 - v60;
            absl::lts_20240722::StrCat(v61, &v58, v57);
            operations_research::SolverLogger::LogInfo(v41, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/probing.cc", 289, v57);
            if (SHIBYTE(v57[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v57[0].__r_.__value_.__l.__data_);
            }
          }
        }

        v43 = *(a1 + 300);
        if (v43 >= 1)
        {
          v44 = *(a1 + 344);
          if (*v44 == 1)
          {
            *&v61[0] = "[Probing]  - new integer bounds: ";
            *(&v61[0] + 1) = 33;
            v45 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v43, v60, v31);
            v58 = v60;
            v59 = v45 - v60;
            absl::lts_20240722::StrCat(v61, &v58, v57);
            operations_research::SolverLogger::LogInfo(v44, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/probing.cc", 293, v57);
            if (SHIBYTE(v57[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v57[0].__r_.__value_.__l.__data_);
            }
          }
        }

        v46 = *(a1 + 296);
        if (v46 >= 1)
        {
          v47 = *(a1 + 344);
          if (*v47 == 1)
          {
            *&v61[0] = "[Probing]  - new binary clause: ";
            *(&v61[0] + 1) = 32;
            v48 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v46, v60, v31);
            v58 = v60;
            v59 = v48 - v60;
            absl::lts_20240722::StrCat(v61, &v58, v57);
            operations_research::SolverLogger::LogInfo(v47, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/probing.cc", 296, v57);
            if (SHIBYTE(v57[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v57[0].__r_.__value_.__l.__data_);
            }
          }
        }

        return 1;
      }
    }

    v33 = *(a1 + 344);
    if (*v33 == 1)
    {
      v34 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v32, &v57[0].__r_.__value_.__s.__data_[16], v31);
      v57[0].__r_.__value_.__r.__words[0] = &v57[0].__r_.__value_.__r.__words[2];
      v57[0].__r_.__value_.__l.__size_ = v34 - &v57[0].__r_.__value_.__r.__words[2];
      v36 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v27, v56, v35) - v56;
      *&v55 = v56;
      *(&v55 + 1) = v36;
      v37 = *(*(a1 + 40) + 16);
      *&v61[0] = "[Probing]  - new fixed Boolean: ";
      *(&v61[0] + 1) = 32;
      v61[1] = *&v57[0].__r_.__value_.__l.__data_;
      v62 = " (";
      v63 = 2;
      v64 = v56;
      v65 = v36;
      v66 = "/";
      v67 = 1;
      v39 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v37, v60, v38);
      v58 = v60;
      v59 = v39 - v60;
      v68 = v60;
      v69 = v39 - v60;
      v70 = ")";
      v71 = 1;
      absl::lts_20240722::strings_internal::CatPieces(v61, 7, v54);
      operations_research::SolverLogger::LogInfo(v33, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/probing.cc", 286, v54);
      if (SHIBYTE(v54[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54[0].__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_26;
  }

  return result;
}

void sub_23CCAB8F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::Prober::ProbeOneVariableInternal(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v79[2] = *MEMORY[0x277D85DE8];
  a1[19] = a1[18];
  v6 = a1[12];
  v69 = a1 + 12;
  v70 = a1 + 18;
  v7 = a1[13];
  if (v6 != v7)
  {
    v8 = a1[9];
    v9 = a1[12];
    if (v7 - 4 == v6)
    {
      goto LABEL_115;
    }

    v10 = ((v7 - 4 - v6) >> 2) + 1;
    v9 = (v6 + 4 * (v10 & 0x7FFFFFFFFFFFFFFELL));
    v11 = (v6 + 4);
    v12 = v10 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v13 = (*v11 >> 3) & 0x1FFFFFFFFFFFFFF8;
      *(v8 + ((*(v11 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) = 0;
      *(v8 + v13) = 0;
      v11 += 2;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x7FFFFFFFFFFFFFFELL))
    {
LABEL_115:
      do
      {
        v14 = *v9++;
        *(v8 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) = 0;
      }

      while (v9 != v7);
    }
  }

  a1[13] = v6;
  LODWORD(v78) = 2 * a2;
  HIDWORD(v78) = (2 * a2) | 1;
  v15 = &v78;
  while (1)
  {
    v16 = *v15;
    if (((*(*(a1[1] + 8) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v16 & 0x3E)) & 3) == 0)
    {
      ++*(a1 + 72);
      v17 = a1[5];
      if (*(v17 + 296))
      {
        operations_research::sat::Prober::ProbeOneVariableInternal(*(v17 + 296), &v76);
      }

      v18 = *(*a1 + 12);
      operations_research::sat::SatSolver::EnqueueDecisionAndBackjumpOnConflict(v17, v16, a3, a4);
      v20 = a1[5];
      v19 = a1[6];
      a5.n128_f64[0] = operations_research::sat::SatSolver::deterministic_time(v20);
      *(v19 + 112) = *(v19 + 112) + a5.n128_f64[0] - v20[147];
      v20[147] = a5.n128_f64[0];
      if (*(a1[5] + 528))
      {
        return 0;
      }

      if (*(a1[5] + 296))
      {
        if (*(*a1 + 12) > v18)
        {
          v21 = a1[42];
          if (v21)
          {
            LODWORD(v76) = v16;
            (*(*v21 + 48))(v21, &v76);
          }
        }

        if (!operations_research::sat::ImpliedBounds::ProcessIntegerTrail(a1[3], v16))
        {
          return 0;
        }

        operations_research::sat::ProductDetector::ProcessTrailAtLevelOne(a1[4]);
        operations_research::sat::IntegerTrail::AppendNewBounds(a1[2], v70);
        v22 = *a1;
        if (v18 + 1 < *(*a1 + 12))
        {
          for (i = v18 + 1; i < *(v22 + 12); ++i)
          {
            v24 = *(*(v22 + 48) + 4 * i);
            LODWORD(v75[0]) = v24;
            if (v16)
            {
              if ((*(a1[9] + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24))
              {
                std::vector<int>::push_back[abi:ne200100]((a1 + 15), v75);
              }
            }

            else
            {
              LODWORD(v76) = v24;
              v25 = v24 >> 6;
              v26 = a1[9];
              v27 = *(v26 + 8 * v25);
              v28 = 1 << v24;
              if ((v27 & v28) == 0)
              {
                *(v26 + 8 * v25) = v27 | v28;
                std::vector<int>::push_back[abi:ne200100](v69, &v76);
              }
            }

            v22 = *a1;
            v29 = (SLODWORD(v75[0]) >> 1);
            v30 = v29 << 32;
            v31 = *(*a1 + 96);
            v32 = 8 * v29;
            if (*(v31 + v32) >> 28 == 3)
            {
              v34 = *(*(v22 + 128) + (v30 >> 30));
              v30 = v34 << 32;
              v33 = *(v31 + 8 * v34) >> 28;
              if (v33)
              {
LABEL_27:
                if (v33 != *(a1[7] + 32))
                {
                  goto LABEL_31;
                }

                continue;
              }
            }

            else
            {
              v33 = *(v31 + v32) >> 28;
              if (v33)
              {
                goto LABEL_27;
              }
            }

            if (*(*(v22 + 224) + (v30 >> 30)) != *(a1[7] + 32))
            {
LABEL_31:
              LODWORD(v76) = v16 ^ 1;
              HIDWORD(v76) = v75[0];
              std::vector<long long>::push_back[abi:ne200100]((a1 + 21), &v76);
              v22 = *a1;
            }
          }
        }

        if ((operations_research::sat::SatSolver::ResetToLevelZero(a1[5]) & 1) == 0)
        {
          return 0;
        }

        v35 = a1[15];
        v36 = a1[16];
        if (v35 != v36)
        {
          do
          {
            if ((operations_research::sat::SatSolver::AddUnitClause(a1[5], *v35) & 1) == 0)
            {
              return 0;
            }

            ++v35;
          }

          while (v35 != v36);
          v35 = a1[15];
        }

        a1[16] = v35;
        if (!operations_research::sat::SatSolver::FinishPropagation(a1[5]))
        {
          return 0;
        }

        v37 = a1[21];
        v38 = a1[22];
        *(a1 + 74) += (v38 - v37) >> 3;
        if (v38 != v37)
        {
          do
          {
            operations_research::sat::SatSolver::AddBinaryClause(a1[5], *v37, v37[1]);
            v37 += 2;
          }

          while (v37 != v38);
          v37 = a1[21];
        }

        a1[22] = v37;
        if ((operations_research::sat::SatSolver::FinishPropagation(a1[5]) & 1) == 0)
        {
          return 0;
        }
      }
    }

    v15 = (v15 + 4);
    if (v15 == v79)
    {
      v40 = a1[19];
      v41 = a1[18];
      v42 = 126 - 2 * __clz((v40 - v41) >> 4);
      if (v40 == v41)
      {
        v43 = 0;
      }

      else
      {
        v43 = v42;
      }

      std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::Prober::ProbeOneVariableInternal(operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>)::$_0 &,operations_research::sat::IntegerLiteral *,false>(v41, v40, v43, 1, a5);
      LODWORD(v76) = -1;
      *&v77 = 0;
      std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v70, &v76);
      v44 = a1[18];
      if (a1[19] == v44)
      {
        return operations_research::sat::SatSolver::FinishPropagation(a1[5]);
      }

      v45 = 0;
      v46 = 0;
      v47 = 0x8000000000000002;
      v48 = 0x7FFFFFFFFFFFFFFELL;
      v49 = 0xFFFFFFFFLL;
      while (2)
      {
        v50 = *(v44 + 16 * v45);
        if (v46 >= 1 && (v50 & 0xFFFFFFFE) != v49)
        {
          v51 = v48 + 1;
          if (v51 < v47)
          {
            v52 = operations_research::sat::IntegerTrail::InitialVariableDomain(a1[2], v49);
            v76 = 0;
            if (*v52 >= 2uLL)
            {
              if (*v52)
              {
                absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(&v76, v52);
              }

              else
              {
                v76 = *v52;
                v77 = *(v52 + 8);
              }
            }

            operations_research::Domain::Domain(v73, v51, v47 - 1);
            operations_research::Domain::Complement(v75, v73);
            operations_research::Domain::IntersectionWith(&v78, &v76, v75);
            if (v75[0])
            {
              operator delete(v75[1]);
            }

            if (v73[0])
            {
              operator delete(v74);
            }

            v53 = v78;
            v54 = v79[0];
            v55 = v78 & 1;
            if ((v78 & 1) == 0)
            {
              v54 = v79;
            }

            v56 = v77;
            if ((v76 & 1) == 0)
            {
              v56 = &v77;
            }

            if ((((v76 >> 1) ^ (v78 >> 1)) & 0xFFFFFFFFFFFFFFFLL) != 0)
            {
              goto LABEL_66;
            }

            v58 = &v54[2 * (v78 >> 1)];
            v59 = &v56[2 * (v76 >> 1)];
            if ((v78 & 0x1FFFFFFFFFFFFFFELL) != 0 && (v76 & 0x1FFFFFFFFFFFFFFELL) != 0)
            {
              while (*v54 == *v56 && v54[1] == v56[1])
              {
                v54 += 2;
                v56 += 2;
                if (v54 == v58 || v56 == v59)
                {
                  goto LABEL_78;
                }
              }

              goto LABEL_66;
            }

LABEL_78:
            if (v56 != v59 || v54 != v58)
            {
LABEL_66:
              ++*(a1 + 73);
              v57 = a1[2];
              v71 = 0;
              if (v53 >= 2)
              {
                if (v55)
                {
                  absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(&v71, &v78);
                }

                else
                {
                  v71 = v53;
                  v72 = *v79;
                }
              }

              updated = operations_research::sat::IntegerTrail::UpdateInitialDomain(v57, v49, &v71);
              if (v71)
              {
                operator delete(v72);
              }

              v55 = v78 & 1;
              if ((updated & 1) == 0)
              {
                if (v78)
                {
                  operator delete(v79[0]);
                }

                if (v76)
                {
                  operator delete(v77);
                }

                return 0;
              }
            }

            if (v55)
            {
              operator delete(v79[0]);
            }

            if (v76)
            {
              operator delete(v77);
            }
          }

          v48 = 0x7FFFFFFFFFFFFFFELL;
          v47 = 0x8000000000000002;
        }

        v44 = *v70;
        v62 = *(*v70 + 16 * v45 + 8);
        if (v48 >= -v62)
        {
          v63 = -v62;
        }

        else
        {
          v63 = v48;
        }

        if (v47 <= v62)
        {
          v64 = *(*v70 + 16 * v45 + 8);
        }

        else
        {
          v64 = v47;
        }

        if (v50)
        {
          v48 = v63;
        }

        else
        {
          v47 = v64;
        }

        if (v46)
        {
          v65 = v44 + 16 * (v46 - 1);
          if (*v65 == v50)
          {
            v66 = *(v65 + 8);
            v67 = v62 >= v66 ? v66 : *(*v70 + 16 * v45 + 8);
            v68 = a1[2];
            if (v67 > *(*(v68 + 40) + 8 * v50))
            {
              ++*(a1 + 75);
              result = operations_research::sat::IntegerTrail::Enqueue(v68, v50, v67, 0, 0, 0, 0);
              if (!result)
              {
                return result;
              }

              v44 = *v70;
            }
          }
        }

        v45 = ++v46;
        v49 = v50 & 0xFFFFFFFE;
        if (v46 >= ((a1[19] - v44) >> 4))
        {
          return operations_research::sat::SatSolver::FinishPropagation(a1[5]);
        }

        continue;
      }
    }
  }
}

void sub_23CCAC0A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, char a14, void *a15, uint64_t a16, char a17, void *a18, uint64_t a19, char a20, void *a21, uint64_t a22, char a23, void *a24)
{
  if (a11)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a24);
  }

  if (a20)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::Prober::ProbeOneVariable(uint64_t a1, int a2)
{
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(a1 + 64, 2 * *(*(a1 + 40) + 16));
  result = operations_research::sat::SatSolver::ResetToLevelZero(*(a1 + 40));
  if (result)
  {
    v8 = *(*(*(a1 + 40) + 216) + 12);
    result = operations_research::sat::Prober::ProbeOneVariableInternal(a1, a2, v5, v6, v7);
    if (result)
    {
      *(a1 + 304) += *(*(*(a1 + 40) + 216) + 12) - v8;
      return 1;
    }
  }

  return result;
}

char *absl::lts_20240722::StrCat<double,char [3],char const*,int,char [2],unsigned long,char [2]>@<X0>(_OWORD *a1@<X0>, char *a2@<X1>, _OWORD *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, long double *a6@<X5>, const char *a7@<X6>, const char **a8@<X7>, std::string *a9@<X8>, unsigned int *a10, const char *a11, unint64_t *a12, const char *a13)
{
  v51 = *MEMORY[0x277D85DE8];
  v16 = *a2;
  v36[0] = *a1;
  v36[1] = v16;
  v17 = *a4;
  v36[2] = *a3;
  v36[3] = v17;
  v36[4] = *a5;
  v18 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v35, *a6, a2);
  v33 = v35;
  v34 = v18;
  v37 = v35;
  v38 = v18;
  v19 = strlen(a7);
  v39 = a7;
  v40 = v19;
  v21 = *a8;
  if (v21)
  {
    v22 = strlen(v21);
  }

  else
  {
    v22 = 0;
  }

  v41 = v21;
  v42 = v22;
  v23 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a10, v32, v20);
  v30 = v32;
  v31 = v23 - v32;
  v43 = v32;
  v44 = v23 - v32;
  v24 = strlen(a11);
  v45 = a11;
  v46 = v24;
  v28 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a12, v29, v25) - v29;
  v47 = v29;
  v48 = v28;
  v26 = strlen(a13);
  v49 = a13;
  v50 = v26;
  return absl::lts_20240722::strings_internal::CatPieces(v36, 12, a9);
}

uint64_t operations_research::sat::Prober::ProbeDnf(unsigned __int8 ***a1, const void *a2, size_t a3, unsigned int **a4, unint64_t a5)
{
  if (a5 < 2)
  {
    return 1;
  }

  result = operations_research::sat::SatSolver::ResetToLevelZero(a1[5]);
  if (!result)
  {
    return result;
  }

  v9 = (a1 + 33);
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::clear(a1 + 33);
  v97 = (a1 + 27);
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear(a1 + 27);
  v90 = a5;
  v10 = 0;
  if (!(24 * a5))
  {
    goto LABEL_86;
  }

  v93 = &a4[3 * a5];
  v11 = (a1 + 24);
  while (2)
  {
    result = operations_research::sat::SatSolver::ResetToLevelZero(a1[5]);
    if (!result || v10 >= 1 && !a1[35] && !a1[29])
    {
      return result;
    }

    v14 = *(*a1 + 3);
    v94 = a1[2][19];
    v95 = a1[2][20];
    v16 = *a4;
    v15 = a4[1];
    v96 = a4;
    while (1)
    {
      if (v16 == v15)
      {
        absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear(a1 + 24);
        v27 = *a1;
        if (v14 < *(*a1 + 3))
        {
          do
          {
            v30 = *&v27[6][4 * v14];
            LODWORD(v99) = v30;
            if (!v10)
            {
              goto LABEL_132;
            }

            v31 = *v97;
            v32 = *(*v97 + 10);
            if (!*(*v97 + 10))
            {
              goto LABEL_31;
            }

LABEL_26:
            v33 = 0;
            do
            {
              v34 = (v32 + v33) >> 1;
              if (*(v31 + v34 + 3) < v30)
              {
                v33 = v34 + 1;
              }

              else
              {
                v32 = (v32 + v33) >> 1;
              }
            }

            while (v33 != v32);
LABEL_31:
            while (!*(v31 + 11))
            {
              v31 = v31[v32 + 32];
              v32 = *(v31 + 10);
              if (*(v31 + 10))
              {
                goto LABEL_26;
              }
            }

            while (v32 == *(v31 + 10))
            {
              LODWORD(v32) = *(v31 + 8);
              v31 = *v31;
              if (*(v31 + 11))
              {
                goto LABEL_23;
              }
            }

            v35 = a1[28];
            if (v30 >= *(v31 + v32 + 3) && (v31 != v35 || v32 != *(v35 + 10)))
            {
LABEL_132:
              if (!a1[26])
              {
                operator new();
              }

              v37 = *v11;
              v38 = *(*v11 + 10);
              if (*(*v11 + 10))
              {
LABEL_45:
                v39 = 0;
                do
                {
                  v40 = (v38 + v39) >> 1;
                  if (*&v37[4 * v40 + 12] < v30)
                  {
                    v39 = v40 + 1;
                  }

                  else
                  {
                    v38 = (v38 + v39) >> 1;
                  }
                }

                while (v39 != v38);
              }

              while (!v37[11])
              {
                v37 = *&v37[8 * v38 + 256];
                v38 = v37[10];
                if (v37[10])
                {
                  goto LABEL_45;
                }
              }

              v41 = v38;
              v42 = v37;
              while (v38 == v42[10])
              {
                LODWORD(v38) = v42[8];
                v42 = *v42;
                if (v42[11])
                {
                  goto LABEL_22;
                }
              }

              if (v30 < *&v42[4 * v38 + 12])
              {
LABEL_22:
                absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::internal_emplace<operations_research::sat::Literal&>(a1 + 24, v37, v41, &v99);
              }
            }

LABEL_23:
            ++v14;
            v27 = *a1;
          }

          while (v14 < *(*a1 + 3));
        }

        std::swap[abi:ne200100]<absl::lts_20240722::btree_set<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>((a1 + 24), v97);
        a1[19] = a1[18];
        operations_research::sat::IntegerTrail::AppendNewBoundsFrom(a1[2], -1431655765 * ((v95 - v94) >> 3), (a1 + 18));
        absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::clear(a1 + 30);
        v28 = a1[18];
        v29 = a1[19];
        while (1)
        {
          if (v28 == v29)
          {
            ++v10;
            std::swap[abi:ne200100]<absl::lts_20240722::btree_map<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>>((a1 + 30), (a1 + 33));
            goto LABEL_7;
          }

          v98 = *v28;
          v45 = *v9;
          v46 = *(*v9 + 10);
          if (!*(*v9 + 10))
          {
            goto LABEL_69;
          }

LABEL_64:
          v47 = 0;
          do
          {
            v48 = (v46 + v47) >> 1;
            if (*(v45 + 16 + 16 * v48) < v98)
            {
              v47 = v48 + 1;
            }

            else
            {
              v46 = (v46 + v47) >> 1;
            }
          }

          while (v47 != v46);
LABEL_69:
          while (!*(v45 + 11))
          {
            v45 = *(v45 + 8 * v46 + 256);
            v46 = *(v45 + 10);
            if (*(v45 + 10))
            {
              goto LABEL_64;
            }
          }

          while (v46 == *(v45 + 10))
          {
            LODWORD(v46) = *(v45 + 8);
            v45 = *v45;
            if (*(v45 + 11))
            {
              goto LABEL_76;
            }
          }

          if (v98 >= *(v45 + 16 * v46 + 16))
          {
            goto LABEL_77;
          }

LABEL_76:
          v45 = a1[34];
          LODWORD(v46) = *(v45 + 10);
LABEL_77:
          if (!v10)
          {
            break;
          }

          v49 = a1[34];
          if (v45 != v49 || v46 != *(v49 + 10))
          {
            v51 = v45 + 16 * v46;
            v53 = *(v51 + 24);
            v52 = (v51 + 24);
            v54 = *(&v98 + 1);
            v101 = &v98;
            absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::insert_unique<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::piecewise_construct_t const&,std::tuple<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const&>,std::tuple<>>(a1 + 30, &v98, &v99, &std::piecewise_construct, &v101);
            v43 = v99 + 16 * v100;
            if (v53 >= v54)
            {
              v55 = &v98 + 1;
            }

            else
            {
              v55 = v52;
            }

            v44 = *v55;
            goto LABEL_60;
          }

LABEL_61:
          v28 += 2;
        }

        v101 = &v98;
        absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::insert_unique<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::piecewise_construct_t const&,std::tuple<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const&>,std::tuple<>>(a1 + 30, &v98, &v99, &std::piecewise_construct, &v101);
        v43 = v99 + 16 * v100;
        v44 = *(&v98 + 1);
LABEL_60:
        *(v43 + 24) = v44;
        goto LABEL_61;
      }

      v17 = *v16;
      v18 = *v16;
      v19 = *&a1[1][1][(v17 >> 3) & 0x1FFFFFFFFFFFFFF8];
      if (((v19 >> (v17 & 0x3E)) & 3) != 0)
      {
        if (((v19 >> v18) & 1) == 0)
        {
          break;
        }

        goto LABEL_14;
      }

      v20 = a1[5];
      v21 = *(v20 + 296);
      operations_research::sat::SatSolver::EnqueueDecisionAndBackjumpOnConflict(v20, v18, v12, v13);
      v22 = a1[5];
      v23 = a1[6];
      v24 = operations_research::sat::SatSolver::deterministic_time(v22);
      *(v23 + 112) = *(v23 + 112) + v24 - v22[147];
      v22[147] = v24;
      v25 = a1[5];
      v26 = *(v25 + 296);
      ++*(a1 + 72);
      if (*(v25 + 528))
      {
        return 0;
      }

      if (v26 <= v21)
      {
        break;
      }

LABEL_14:
      ++v16;
    }

LABEL_7:
    a4 = v96 + 3;
    if (v96 + 3 != v93)
    {
      continue;
    }

    break;
  }

LABEL_86:
  result = operations_research::sat::SatSolver::ResetToLevelZero(a1[5]);
  if (result)
  {
    v56 = *(a1 + 76);
    v57 = a1[28];
    v58 = *a1[27];
    v59 = *(v57 + 10);
    if (v58 != v57 || v59 != 0)
    {
      v61 = 0;
      do
      {
        v62 = *&v58[4 * v61 + 12];
        if (((*&a1[1][1][(v62 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v62) & 1) == 0)
        {
          ++*(a1 + 76);
          result = operations_research::sat::SatSolver::AddUnitClause(a1[5], v62);
          if (!result)
          {
            return result;
          }
        }

        if (v58[11])
        {
          if (++v61 == v58[10])
          {
            v63 = v58;
            while (1)
            {
              v64 = *v63;
              if (*(*v63 + 11))
              {
                break;
              }

              v65 = v63[8];
              v63 = *v63;
              if (v65 != v64[10])
              {
                v58 = v64;
                v61 = v65;
                break;
              }
            }
          }
        }

        else
        {
          v66 = &v58[8 * (v61 + 1) + 256];
          do
          {
            v58 = *v66;
            v67 = *(*v66 + 11);
            v66 = *v66 + 256;
          }

          while (!v67);
          v61 = 0;
        }
      }

      while (v58 != v57 || v61 != v59);
    }

    v68 = *(a1 + 75);
    v69 = a1[34];
    v70 = *a1[33];
    v71 = *(v69 + 10);
    if (v70 != v69 || v71 != 0)
    {
      v73 = 0;
      do
      {
        v74 = &v70[16 * v73];
        v76 = *(v74 + 4);
        v75 = (v74 + 16);
        v77 = *(v75 + 1);
        v78 = a1[2];
        if (v77 > *(*(v78 + 40) + 8 * v76))
        {
          ++*(a1 + 75);
          result = operations_research::sat::IntegerTrail::Enqueue(v78, *v75, v77, 0, 0, 0, 0);
          if (!result)
          {
            return result;
          }
        }

        if (v70[11])
        {
          if (++v73 == v70[10])
          {
            v79 = v70;
            while (1)
            {
              v80 = *v79;
              if (*(*v79 + 11))
              {
                break;
              }

              v81 = v79[8];
              v79 = *v79;
              if (v81 != v80[10])
              {
                v70 = v80;
                v73 = v81;
                break;
              }
            }
          }
        }

        else
        {
          v82 = &v70[8 * (v73 + 1) + 256];
          do
          {
            v70 = *v82;
            v83 = *(*v82 + 11);
            v82 = *v82 + 256;
          }

          while (!v83);
          v73 = 0;
        }
      }

      while (v70 != v69 || v73 != v71);
    }

    result = operations_research::sat::SatSolver::FinishPropagation(a1[5]);
    if (!result)
    {
      return result;
    }

    if ((*(a1 + 75) > v68 || *(a1 + 76) > v56) && dword_27E25D258 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::Prober::ProbeDnf(std::string_view,absl::lts_20240722::Span<std::vector<operations_research::sat::Literal> const>)::$_0::operator() const(void)::site, dword_27E25D258))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(&v99, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/probing.cc", 408);
      v84 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v99, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v84, "ProbeDnf(", 9uLL);
      v85 = absl::lts_20240722::log_internal::LogMessage::operator<<(v84, a2, a3);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v85, ", num_fixed_literals=", 0x15uLL);
      LODWORD(v98) = *(a1 + 76) - v56;
      v86 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v85, &v98);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v86, ", num_fixed_integer_bounds=", 0x1BuLL);
      LODWORD(v98) = *(a1 + 75) - v68;
      v87 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v86, &v98);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v87, ", num_valid_conjunctions=", 0x19uLL);
      LODWORD(v98) = v10;
      v88 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v87, &v98);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v88, "/", 1uLL);
      *&v98 = v90;
      v89 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v88, &v98);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v89, ")", 1uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v99);
    }

    return 1;
  }

  return result;
}

void sub_23CCACB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void std::swap[abi:ne200100]<absl::lts_20240722::btree_set<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>(uint64_t a1, __int128 *a2)
{
  *v11 = *a1;
  v3 = *(a1 + 8);
  *(a1 + 8) = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  *(a1 + 16) = 0;
  *&v11[8] = v3;
  *a1 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  if (a1 != a2)
  {
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear(a1);
    v5 = *a1;
    *a1 = *a2;
    *a2 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 1);
    *(a2 + 1) = v6;
    v7 = *(a1 + 16);
    *(a1 + 16) = *(a2 + 2);
    *(a2 + 2) = v7;
  }

  if (v11 != a2)
  {
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear(a2);
    v8 = *(a2 + 2);
    v9 = *&v11[8];
    v10 = *a2;
    *a2 = *v11;
    *v11 = v10;
    *(a2 + 8) = v9;
    *&v11[16] = v8;
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear(v11);
}

void std::swap[abi:ne200100]<absl::lts_20240722::btree_map<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>>(uint64_t a1, __int128 *a2)
{
  *v11 = *a1;
  v3 = *(a1 + 8);
  *(a1 + 8) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::EmptyNode(void)::empty_node;
  *(a1 + 16) = 0;
  *&v11[8] = v3;
  *a1 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::EmptyNode(void)::empty_node;
  if (a1 != a2)
  {
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::clear(a1);
    v5 = *a1;
    *a1 = *a2;
    *a2 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 1);
    *(a2 + 1) = v6;
    v7 = *(a1 + 16);
    *(a1 + 16) = *(a2 + 2);
    *(a2 + 2) = v7;
  }

  if (v11 != a2)
  {
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::clear(a2);
    v8 = *(a2 + 2);
    v9 = *&v11[8];
    v10 = *a2;
    *a2 = *v11;
    *v11 = v10;
    *(a2 + 8) = v9;
    *&v11[16] = v8;
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::clear(v11);
}

uint64_t operations_research::sat::LookForTrivialSatSolution(operations_research::sat *this, double a2, operations_research::sat::Model *a3, operations_research::SolverLogger *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v40 = a2;
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(this);
  if (!a3)
  {
    a3 = operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(this);
    v8 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(this);
    if (operations_research::sat::SatSolver::ResetToLevelZero(v8))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v8 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(this);
  if (!operations_research::sat::SatSolver::ResetToLevelZero(v8))
  {
    return 0;
  }

LABEL_3:
  v9 = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(this);
  v26 = *(*(v8 + 27) + 12);
  v10 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(this);
  operations_research::sat::SatParameters::SatParameters(v39, 0, v10);
  operations_research::sat::SatParameters::SatParameters(v32, 0, v39);
  v35 = 0;
  v37 = 1;
  v38 = a2;
  v33 |= 0x80u;
  v34 |= 0x100040u;
  v31 = 0.0;
  v11 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelRandomGenerator>(this);
  v12 = 0;
  v13 = 0.0;
  v14 = " (Aborted)";
  do
  {
    v15 = operations_research::TimeLimit::LimitReached(v9);
    if (v13 > a2)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }

    if (v16)
    {
      goto LABEL_12;
    }

    operations_research::sat::SatSolver::SetParameters(v8, v32);
    operations_research::sat::SatDecisionPolicy::ResetDecisionHeuristic(*(v8 + 31));
    v17 = operations_research::sat::SatSolver::SolveWithTimeLimit(v8, v9);
    v18 = v9[14];
    v13 = v18 + v13;
    v31 = v13;
    v19 = v17 == 2;
    if (v17 == 2)
    {
      if (*a3 == 1)
      {
        operator new();
      }

      goto LABEL_25;
    }

    if ((operations_research::sat::SatSolver::ResetToLevelZero(v8) & 1) == 0)
    {
      if (*a3 == 1)
      {
        operator new();
      }

      v18 = v9[14];
LABEL_25:
      v9[14] = v13 + v18;
      goto LABEL_26;
    }

    *&v47 = v11;
    *(&v47 + 1) = absl::lts_20240722::BitGenRef::MockCall<operations_research::sat::ModelRandomGenerator>;
    v48 = absl::lts_20240722::BitGenRef::ImplFn<operations_research::sat::ModelRandomGenerator>;
    operations_research::sat::RandomizeDecisionHeuristic(&v47, v32);
    v38 = a2 - v13;
    v36 = v12;
    v34 |= 0x100010u;
    ++v12;
  }

  while (v12 != 1000);
  v14 = &byte_23CE7F131;
LABEL_12:
  operations_research::sat::SatSolver::SetParameters(v8, v39);
  operations_research::sat::SatDecisionPolicy::ResetDecisionHeuristic(*(v8 + 31));
  v9[14] = v13 + v9[14];
  if (operations_research::sat::SatSolver::ResetToLevelZero(v8))
  {
    if (*a3 == 1)
    {
      v21 = *(*(v8 + 27) + 12);
      v30 = *(v8 + 4);
      *&v47 = "[Random exploration]";
      *(&v47 + 1) = 20;
      *&v46 = " num_fixed: +";
      *(&v46 + 1) = 13;
      v22 = absl::lts_20240722::numbers_internal::FastIntToBuffer((v21 - v26), v45, v20);
      *&v44 = v45;
      *(&v44 + 1) = v22 - v45;
      *&v43 = " (";
      *(&v43 + 1) = 2;
      v24 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v21, v42, v23);
      *&v41 = v42;
      *(&v41 + 1) = v24 - v42;
      v28 = (absl::lts_20240722::GetCurrentTimeNanos(v24) - CurrentTimeNanos) * 0.000000001;
      v27 = v14;
      absl::lts_20240722::StrCat<char [2],int,char [2],char [9],double,char [2],double,char [9],double,char const*>(&__p, "/", &v47, &v46, &v44, &v43, &v41, &v30, ")", " dtime: ", &v31, "/", &v40, " wtime: ", &v28, &v27);
      operations_research::SolverLogger::LogInfo(a3, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/probing.cc", 494, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v19 = operations_research::sat::SatSolver::FinishPropagation(v8);
  }

  else
  {
    v19 = 0;
  }

LABEL_26:
  operations_research::sat::SatParameters::~SatParameters(v32);
  operations_research::sat::SatParameters::~SatParameters(v39);
  return v19;
}

void sub_23CCAD17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  if (*(v23 - 137) < 0)
  {
    operator delete(*(v23 - 160));
    operations_research::sat::SatParameters::~SatParameters(va);
    operations_research::sat::SatParameters::~SatParameters(&STACK[0x448]);
    _Unwind_Resume(a1);
  }

  operations_research::sat::SatParameters::~SatParameters(va);
  operations_research::sat::SatParameters::~SatParameters(&STACK[0x448]);
  _Unwind_Resume(a1);
}

char *absl::lts_20240722::StrCat<char [2],int,char [2],char [9],double,char [2],double,char [9],double,char const*>@<X0>(std::string *__return_ptr a1@<X8>, char *__s@<X5>, _OWORD *a3@<X0>, __int128 *a4@<X1>, _OWORD *a5@<X2>, __int128 *a6@<X3>, _OWORD *a7@<X4>, unsigned int *a8@<X6>, const char *a9@<X7>, const char *a10, long double *a11, const char *a12, long double *a13, const char *a14, long double *a15, const char **a16)
{
  v60 = *MEMORY[0x277D85DE8];
  v18 = *a4;
  v39[0] = *a3;
  v39[1] = v18;
  v19 = *a6;
  v39[2] = *a5;
  v39[3] = v19;
  v39[4] = *a7;
  v40 = __s;
  v41 = strlen(__s);
  v21 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a8, v38, v20);
  v37[4] = v38;
  v37[5] = v21 - v38;
  v42 = v38;
  v43 = v21 - v38;
  v22 = strlen(a9);
  v44 = a9;
  v45 = v22;
  v23 = strlen(a10);
  v46 = a10;
  v47 = v23;
  v25 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v37, *a11, v24);
  v36[4] = v37;
  v36[5] = v25;
  v48 = v37;
  v49 = v25;
  v26 = strlen(a12);
  v50 = a12;
  v51 = v26;
  v28 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v36, *a13, v27);
  v35[4] = v36;
  v35[5] = v28;
  v52 = v36;
  v53 = v28;
  v29 = strlen(a14);
  v54 = a14;
  v55 = v29;
  v34 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v35, *a15, v30);
  v56 = v35;
  v57 = v34;
  if (*a16)
  {
    v31 = strlen(*a16);
  }

  else
  {
    v31 = 0;
  }

  v58 = *a16;
  v59 = v31;
  return absl::lts_20240722::strings_internal::CatPieces(v39, 15, a1);
}

uint64_t operations_research::sat::FailedLiteralProbingRound(absl::lts_20240722 *a1, uint64_t a2, void *a3)
{
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(a1);
  if (dword_2810BD458 >= 1)
  {
    IsEnabled1 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::FailedLiteralProbingRound(operations_research::sat::ProbingOptions,operations_research::sat::Model *)::$_0::operator() const(void)::site, dword_2810BD458);
    v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a3);
    if (operations_research::sat::SatSolver::ResetToLevelZero(v7))
    {
      goto LABEL_3;
    }

    return 0;
  }

  IsEnabled1 = 0;
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a3);
  if (!operations_research::sat::SatSolver::ResetToLevelZero(v7))
  {
    return 0;
  }

LABEL_3:
  v246 = operations_research::sat::Model::GetOrCreate<operations_research::sat::BinaryImplicationGraph>(a3);
  if (!operations_research::sat::BinaryImplicationGraph::DetectEquivalences(v246, 0) || !operations_research::sat::SatSolver::FinishPropagation(v7))
  {
    return 0;
  }

  v8 = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a3);
  v232 = *(*(v7 + 27) + 12);
  v251 = v8;
  v9 = *(v8 + 14);
  v10 = *(v7 + 4);
  v11 = 2 * v10;
  if (2 * v10 > 0)
  {
    v263 = 2 * v10;
    operator new();
  }

  v263 = 0;
  v265 = 0;
  v266 = 0;
  v264 = 0;
  v267 = 0;
  v268 = 0;
  v269 = 0;
  v13 = a3[3];
  if (v13 <= 1)
  {
    if (a3[4] >= 2uLL)
    {
      v12 = a3 + 5;
      if (a3[5] == &gtl::FastTypeId<operations_research::sat::Trail>(void)::d)
      {
        if (&absl::lts_20240722::container_internal::kSooControl)
        {
LABEL_20:
          v256 = v12[1];
          goto LABEL_23;
        }
      }
    }
  }

  else
  {
    v14 = 0;
    _X11 = a3[5];
    __asm { PRFM            #4, [X11] }

    v21 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::Trail>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::Trail>(void)::d));
    v22 = vdup_n_s8(v21 & 0x7F);
    v23 = ((v21 >> 7) ^ (_X11 >> 12)) & v13;
    v24 = *(_X11 + v23);
    v25 = vceq_s8(v24, v22);
    if (!v25)
    {
      goto LABEL_16;
    }

LABEL_13:
    v26 = a3[6];
    while (1)
    {
      v27 = (v23 + (__clz(__rbit64(v25)) >> 3)) & v13;
      if (*(v26 + 16 * v27) == &gtl::FastTypeId<operations_research::sat::Trail>(void)::d)
      {
        break;
      }

      v25 &= ((v25 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v25)
      {
LABEL_16:
        while (!*&vceq_s8(v24, 0x8080808080808080))
        {
          v14 += 8;
          v23 = (v14 + v23) & v13;
          v24 = *(_X11 + v23);
          v25 = vceq_s8(v24, v22);
          if (v25)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_22;
      }
    }

    v12 = (v26 + 16 * v27);
    if (_X11 + v27)
    {
      goto LABEL_20;
    }
  }

LABEL_22:
  v256 = 0;
LABEL_23:
  v28 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ClauseManager>(a3);
  v236 = *(v246 + 8);
  v234 = *(v28 + 8);
  memset(&v262, 0, sizeof(v262));
  memset(&v261, 0, sizeof(v261));
  if ((a2 & 0x10000) == 0)
  {
    __x[0] = 0;
    if (v11)
    {
      v29 = v28;
      std::vector<int>::__append(&v261, v11, __x);
      v28 = v29;
    }
  }

  v237 = v28;
  if ((*(v246 + 632) & 1) == 0)
  {
    v224 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/clause.h", 591);
    goto LABEL_295;
  }

  v30 = *(v246 + 80);
  v31 = *(v246 + 81);
  if (v31 != v30)
  {
    if (((v31 - v30) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v32 = v256;
  v230 = CurrentTimeNanos;
  v231 = v10;
  if ((a2 & 0x10000) != 0)
  {
    __x[0] = -1;
    std::vector<int>::assign(&v262, v11, __x);
  }

  v33 = v246;
  __src = 0;
  v34 = 0;
  __p = 0;
  v35 = 0;
  v238 = 0.0;
  v233 = 0.0;
  v239 = 0.0;
  v240 = 0.0;
  v241 = 0.0;
  v235 = IsEnabled1 | BYTE4(a2) & 1;
  v36 = v9 + *&a1;
  v244 = v7;
LABEL_33:
  v37 = v35;
  while (2)
  {
    v38 = __src;
    while (1)
    {
      if ((operations_research::TimeLimit::LimitReached(v251) & 1) != 0 || v251[14] > v36)
      {
        __srcb = v38;
        goto LABEL_273;
      }

      if ((a2 & 0x100) == 0)
      {
        operations_research::sat::SatSolver::Backtrack(v7, 0);
      }

      if ((a2 & 0x10000) != 0)
      {
        v40 = *(v7 + 74);
        if (v40 < 1)
        {
          v39 = -1;
          goto LABEL_101;
        }

        v41 = (*(v33 + 200) + 32 * (*(*(v7 + 38) + 8 * v40 - 4) ^ 1));
        v44 = *v41;
        v43 = (v41 + 1);
        v42 = v44;
        if (v44)
        {
          v43 = *v43;
        }

        if ((v42 & 0x7FFFFFFFFFFFFFFELL) != 0)
        {
          v45 = 4 * (v42 >> 1);
          v46 = __p;
          v252 = v37;
          do
          {
            v47 = *v43;
            v48 = v47 ^ 1;
            if (((v264[v47 >> 6] >> v48) & 1) == 0)
            {
              v49 = v262.__begin_[v48];
              if (v49 != -1)
              {
                v50 = *(*(v32 + 24) + 8 * (v47 >> 6));
                if (((v50 >> (v48 & 0x3E)) & 3) != 0)
                {
                  if ((v50 >> (v48 & 0x3F ^ 1)))
                  {
                    v51 = v34 - v38;
                    v52 = (v34 - v38) >> 2;
                    v53 = v52 + 1;
                    if ((v52 + 1) >> 62)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    if (-v38 >> 1 > v53)
                    {
                      v53 = -v38 >> 1;
                    }

                    v54 = v38;
                    if (-v38 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v55 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v55 = v53;
                    }

                    if (v55)
                    {
                      if (!(v55 >> 62))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v38 = 0;
                    *(4 * v52) = v47;
                    memcpy(0, v54, v51);
                    v32 = v256;
                    v34 = 4 * v52 + 4;
                  }
                }

                else
                {
                  *v247 = v34;
                  v56 = v37 - v46;
                  v57 = (v37->i64 - v46) >> 3;
                  v58 = v57 + 1;
                  if ((v57 + 1) >> 61)
                  {
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  if (-v46 >> 2 > v58)
                  {
                    v58 = -v46 >> 2;
                  }

                  if (-v46 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v59 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v59 = v58;
                  }

                  if (v59)
                  {
                    if (!(v59 >> 61))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  *(8 * v57) = v48 | (-v49 << 32);
                  v37 = (8 * v57 + 8);
                  memcpy(0, v46, v56);
                  v46 = 0;
                  v32 = v256;
                  v34 = *v247;
                }
              }
            }

            ++v43;
            v45 -= 4;
          }

          while (v45);
          v7 = v244;
          v60 = __p;
          v33 = v246;
          v61 = v252;
        }

        else
        {
          v61 = v37;
          v60 = __p;
          v46 = __p;
        }

        v62 = v46 + ((v61 - v60) << 29 >> 29);
        v63 = 126 - 2 * __clz((v37->i64 - v62) >> 3);
        if (v37 == v62)
        {
          v64 = 0;
        }

        else
        {
          v64 = v63;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::FailedLiteralProbingRound(operations_research::sat::ProbingOptions,operations_research::sat::Model *)::SavedNextLiteral *,false>(v62, v37, v64, 1);
        if (v46 != v37)
        {
          v65 = (v37 - 8);
          do
          {
            v37 = v65;
            v39 = v65->i32[0];
            if (v65->i32[0] == -1)
            {
              v74 = *(v7 + 74);
              if (v74 <= 0)
              {
                absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v74, 0, "sat_solver->CurrentDecisionLevel() > 0");
              }

              operations_research::sat::SatSolver::Backtrack(v7, v74 - 1);
            }

            else
            {
              v66 = v39 >> 6;
              if (((v264[v66] >> v39) & 1) == 0)
              {
                v67 = *(*(v32 + 24) + 8 * v66);
                if (((v67 >> (v39 & 0x3E)) & 3) == 0)
                {
                  goto LABEL_99;
                }

                if ((v67 >> (v39 & 0x3F ^ 1u)))
                {
                  v68 = v39 ^ 1;
                  v69 = v34 - v38;
                  v70 = (v34 - v38) >> 2;
                  v71 = v70 + 1;
                  if ((v70 + 1) >> 62)
                  {
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  if (-v38 >> 1 > v71)
                  {
                    v71 = -v38 >> 1;
                  }

                  v72 = v38;
                  if (-v38 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v73 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v73 = v71;
                  }

                  if (v73)
                  {
                    if (!(v73 >> 62))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  v38 = 0;
                  *(4 * v70) = v68;
                  v34 = 4 * v70 + 4;
                  memcpy(0, v72, v69);
                  v7 = v244;
                  v33 = v246;
                  v32 = v256;
                }
              }
            }

            v65 = (v37 - 8);
          }

          while (v37 != v46);
        }

        v39 = -1;
LABEL_99:
        __p = v46;
      }

      else
      {
        v39 = -1;
      }

      LODWORD(v40) = *(v7 + 74);
LABEL_101:
      v253 = v37;
      if (!v40)
      {
        break;
      }

      if (v39 != -1)
      {
        goto LABEL_124;
      }

      v248 = v40 - 1;
      v75 = *(*(v7 + 38) + 8 * (v40 - 1) + 4) ^ 1;
      v76 = (*(v33 + 200) + 32 * v75);
      v77 = *v76;
      if (*v76 < 2)
      {
        v37 = v253;
        goto LABEL_36;
      }

      v242 = v75;
      LODWORD(v78) = v261.__begin_[v242];
      v79 = v77 >> 1;
      v80 = 1;
      while (1)
      {
        v83 = v76 + 1;
        if (v77)
        {
          v83 = v76[1];
        }

        v78 = v78 % v79;
        v81 = *(v83 + v78);
        if (((1 << (v81 ^ 1u)) & v264[v81 >> 6]) != 0)
        {
          goto LABEL_106;
        }

        v84 = *(*(v32 + 24) + 8 * (v81 >> 6));
        if ((v84 >> ((v81 ^ 1) & 0x3F ^ 1)))
        {
          v85 = v34 - v38;
          v86 = (v34 - v38) >> 2;
          v87 = v86 + 1;
          __srca = v38;
          if ((v86 + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (-v38 >> 1 > v87)
          {
            v87 = -v38 >> 1;
          }

          if (-v38 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v88 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v88 = v87;
          }

          if (v88)
          {
            if (!(v88 >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v89 = (4 * v86);
          *v89 = v81;
          v34 = (v89 + 1);
          memcpy(0, __srca, v85);
          v38 = 0;
          v32 = v256;
          goto LABEL_106;
        }

        if ((v84 & (1 << (v81 ^ 1u))) == 0)
        {
          break;
        }

LABEL_106:
        LODWORD(v78) = v78 + 1;
        v77 = *v76;
        v79 = *v76 >> 1;
        if (v79 <= v80++)
        {
          goto LABEL_123;
        }
      }

      v39 = v81 ^ 1;
LABEL_123:
      v7 = v244;
      v261.__begin_[v242] = v78;
      v33 = v246;
      v37 = v253;
      if (v39 != -1)
      {
LABEL_124:
        v90 = v39;
        goto LABEL_133;
      }

LABEL_36:
      operations_research::sat::SatSolver::Backtrack(v7, v248);
    }

    __srcb = v38;
    if (v38 != v34)
    {
      for (i = v38; i != v34; ++i)
      {
        v92 = *i;
        if (((*(*(v256 + 24) + ((v92 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v92) & 1) == 0)
        {
          if ((operations_research::sat::SatSolver::AddUnitClause(v7, v92) & 1) == 0)
          {
            goto LABEL_285;
          }

          ++*&v241;
        }
      }
    }

    if (!operations_research::sat::SatSolver::FinishPropagation(v7))
    {
      goto LABEL_285;
    }

    v90 = v39;
    v34 = v38;
    if (v39 != -1)
    {
LABEL_133:
      __src = v38;
      v93 = v90 >> 6;
      v94 = v264[v93];
      if (((1 << v90) & v94) != 0)
      {
        v95 = v253;
      }

      else
      {
        v264[v93] = (1 << v90) | v94;
        v96 = v268;
        if (v268 >= v269)
        {
          v98 = v267;
          v99 = v268 - v267;
          v100 = (v268 - v267) >> 2;
          v101 = v100 + 1;
          if ((v100 + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v102 = v269 - v267;
          if ((v269 - v267) >> 1 > v101)
          {
            v101 = v102 >> 1;
          }

          if (v102 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v103 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v103 = v101;
          }

          if (v103)
          {
            if (!(v103 >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v104 = (4 * v100);
          *v104 = v90;
          v97 = v104 + 1;
          memcpy(0, v98, v99);
          v267 = 0;
          v269 = 0;
          if (v98)
          {
            operator delete(v98);
          }
        }

        else
        {
          *v268 = v90;
          v97 = v96 + 1;
        }

        v268 = v97;
        v95 = v253;
      }

      v105 = (v95->i64 - __p) >> 3;
      v106 = v105 + 1;
      if ((v105 + 1) >> 61)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (-__p >> 2 > v106)
      {
        v106 = -__p >> 2;
      }

      if (-__p >= 0x7FFFFFFFFFFFFFF8)
      {
        v107 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v107 = v106;
      }

      if (v107)
      {
        if (!(v107 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v105) = 0xFFFFFFFFLL;
      memcpy(0, __p, v95 - __p);
      __p = 0;
      v108 = *(v7 + 74);
      v111 = operations_research::sat::SatSolver::EnqueueDecisionAndBackjumpOnConflict(v7, v90, v109, v110);
      v112 = *(v7 + 74);
      v113 = operations_research::sat::SatSolver::deterministic_time(v7);
      v251[14] = v251[14] + v113 - *(v7 + 147);
      *(v7 + 147) = v113;
      if (*(v7 + 528))
      {
        goto LABEL_285;
      }

      if (v112 > v108)
      {
        v37 = (8 * v105 + 8);
        goto LABEL_179;
      }

      if ((a2 & 0x10000) != 0)
      {
        j = 0;
        if (v112)
        {
          v115 = v108 + 1;
          for (j = 8 * v105 + 8; v115 > v112; v115 -= v116 == -1)
          {
            if (!j)
            {
              v224 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/probing.cc", 709);
              goto LABEL_295;
            }

            v116 = *(j - 8);
            j -= 8;
          }
        }
      }

      else
      {
        j = 8 * v105 + 8;
      }

      ++*&v239;
      v32 = v256;
      if (!*(v7 + 74) && ((*(*(v256 + 24) + ((v90 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v90 & 0x3F ^ 1u)) & 1) == 0)
      {
        v37 = j;
        ++*&v240;
        if (v112)
        {
          goto LABEL_182;
        }

        continue;
      }

      v117 = v90 ^ 1;
      v118 = v34 - __src;
      v119 = (v34 - __src) >> 2;
      v120 = v119 + 1;
      if ((v119 + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v37 = j;
      if (-__src >> 1 > v120)
      {
        v120 = -__src >> 1;
      }

      if (-__src >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v121 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v121 = v120;
      }

      if (v121)
      {
        if (!(v121 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(4 * v119) = v117;
      v34 = 4 * v119 + 4;
      memcpy(0, __src, v118);
      __src = 0;
      v7 = v244;
      v33 = v246;
LABEL_179:
      v32 = v256;
      ++*&v240;
      if (v112)
      {
LABEL_182:
        v122 = *(*(v7 + 38) + 8 * (v112 - 1) + 4);
        v123 = *(*(v7 + 38) + 8 * (v112 - 1) + 4);
        v35 = v37;
        if (v111 < *(v32 + 12))
        {
          v254 = 0;
          v226 = 1 << v122;
          v227 = v122 >> 6;
          v124 = v111;
          v229 = v122 ^ 1;
          v225 = vdupq_n_s32(v122 ^ 1);
          v125 = v256;
          v249 = v122;
          v243 = v122;
          while (1)
          {
            v127 = *(*(v125 + 48) + 4 * v124);
            if (v127 == v123)
            {
              goto LABEL_186;
            }

            if ((a2 & 0x1000000) == 0)
            {
              goto LABEL_207;
            }

            v128 = (v127 >> 1);
            v129 = v128 << 32;
            v130 = *(v256 + 96);
            v131 = 8 * v128;
            v132 = *(v130 + v131) & 0xF0000000;
            v133 = v129;
            if (v132 == 805306368)
            {
              v135 = *(*(v256 + 128) + (v129 >> 30));
              v133 = v135 << 32;
              v134 = *(v130 + 8 * v135) >> 28;
              if (!v134)
              {
LABEL_194:
                if (*(*(v256 + 224) + (v133 >> 30)) != v234)
                {
                  goto LABEL_207;
                }

                goto LABEL_195;
              }
            }

            else
            {
              v134 = *(v130 + v131) >> 28;
              if (!v134)
              {
                goto LABEL_194;
              }
            }

            if (v134 != v234)
            {
              goto LABEL_207;
            }

LABEL_195:
            v136 = v131;
            if (v132 == 805306368)
            {
              v137 = *(*(v256 + 128) + (v129 >> 30));
              v129 = v137 << 32;
              v136 = 8 * v137;
            }

            v138 = (v130 + v136);
            v139 = *(v130 + v136);
            if (v139 >> 28)
            {
              v141 = v139 >> 28;
              if ((v141 - 1) > 1)
              {
                v144 = *(*(v256 + 248) + 8 * v141);
                v228 = v138;
                v145 = (*(*v144 + 32))(v144, v256, v138[1]);
                v142 = v129 >> 28;
                v146 = (*(v256 + 200) + (v129 >> 28));
                *v146 = v145;
                v146[1] = v147;
                v138 = v228;
              }

              else
              {
                v142 = v129 >> 28;
                v143 = (*(v256 + 200) + (v129 >> 28));
                *v143 = 0;
                v143[1] = 0;
              }

              *(*(v256 + 224) + (v129 >> 30)) = *v138 >> 28;
              *(*(v256 + 96) + v136) &= 0xFFFFFFFu;
              v140 = *(v256 + 200) + v142;
              v123 = v249;
              LODWORD(v122) = v243;
            }

            else
            {
              v140 = *(v256 + 200) + (v129 >> 28);
            }

            v148 = *(v140 + 8);
            v33 = v246;
            if ((v148 & 0x3FFFFFFFFFFFFFFFLL) != 0)
            {
              v149 = *v140;
              v150 = 4 * v148;
              while ((*v149 ^ v122) != 1)
              {
                ++v149;
                v150 -= 4;
                if (!v150)
                {
                  goto LABEL_207;
                }
              }

              if (!operations_research::sat::BinaryImplicationGraph::AddBinaryClause(v246, v229, v127))
              {
                v224 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/probing.cc", 765);
LABEL_295:
                absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v224);
              }

              v165 = *(*(v256 + 96) + v131 + 4);
              v166 = operations_research::sat::ClauseManager::ReasonClause(v237, v165);
              v167 = v166 + 1;
              v168 = *v166;
              if (!v168)
              {
                v170 = 0;
LABEL_324:
                absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v170, 2, "test == 2");
              }

              v169 = (v168 - 1) & 0x3FFFFFFFFFFFFFFFLL;
              if (v169 > 6)
              {
                v172 = v169 + 1;
                v173 = (v169 + 1) & 0x7FFFFFFFFFFFFFF8;
                v171 = &v167[v173];
                v174 = vdupq_n_s32(v127);
                v175 = (v166 + 5);
                v176 = 0uLL;
                v177 = v173;
                v178 = 0uLL;
                do
                {
                  v176 = vsubq_s32(vsubq_s32(v176, vceqq_s32(v175[-1], v174)), vceqq_s32(v175[-1], v225));
                  v178 = vsubq_s32(vsubq_s32(v178, vceqq_s32(*v175, v174)), vceqq_s32(*v175, v225));
                  v175 += 2;
                  v177 -= 8;
                }

                while (v177);
                v170 = vaddvq_s32(vaddq_s32(v178, v176));
                if (v172 != v173)
                {
                  goto LABEL_233;
                }
              }

              else
              {
                v170 = 0;
                v171 = v166 + 1;
LABEL_233:
                v179 = &v167[v168];
                do
                {
                  v181 = *v171++;
                  v180 = v181;
                  if (v181 == v127)
                  {
                    v182 = v170 + 1;
                  }

                  else
                  {
                    v182 = v170;
                  }

                  if (v180 == v229)
                  {
                    v170 = v182 + 1;
                  }

                  else
                  {
                    v170 = v182;
                  }
                }

                while (v171 != v179);
              }

              if (v170 != 2)
              {
                goto LABEL_324;
              }

              v183 = operations_research::sat::ClauseManager::ReasonClause(v237, v165);
              operations_research::sat::ClauseManager::LazyDetach(v237, v183);
              v184 = *(v246 + 17);
              v123 = v249;
              LODWORD(v122) = v243;
              if ((*(v184[3] + 8 * v227) & v226) == 0)
              {
LABEL_269:
                v224 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/clause.h", 725);
                goto LABEL_295;
              }

              ++v254;
              ++*&v238;
              *(*(*(v246 + 20) + (((*(v246 + 23) + v165) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v246 + 23) + v165) & 0x3FFLL)) = v229;
              v185 = *(v246 + 8);
              v186 = *(v184[6] + 4 * v165) >> 1;
              *(v184[12] + 8 * v186) = *(v184[12] + 8 * v186) & 0xFFFFFFF | (v185 << 28);
              *(v184[28] + 4 * v186) = v185;
              if ((a2 & 1) == 0)
              {
LABEL_212:
                v156 = v127 >> 6;
                v157 = v264[v156];
                if ((v157 & (1 << v127)) == 0)
                {
                  v264[v156] = v157 | (1 << v127);
                  v158 = v268;
                  if (v268 < v269)
                  {
                    *v268 = v127;
                    v126 = v158 + 1;
                  }

                  else
                  {
                    v159 = v267;
                    v160 = v268 - v267;
                    v161 = (v268 - v267) >> 2;
                    v162 = v161 + 1;
                    if ((v161 + 1) >> 62)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    v163 = v269 - v267;
                    if ((v269 - v267) >> 1 > v162)
                    {
                      v162 = v163 >> 1;
                    }

                    if (v163 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v162 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    if (v162)
                    {
                      if (!(v162 >> 62))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v187 = (4 * v161);
                    *v187 = v127;
                    v126 = v187 + 1;
                    memcpy(0, v159, v160);
                    v267 = 0;
                    v269 = 0;
                    if (v159)
                    {
                      operator delete(v159);
                    }

                    v123 = v249;
                    LODWORD(v122) = v243;
                  }

                  v268 = v126;
                }

                goto LABEL_186;
              }

              goto LABEL_186;
            }

LABEL_207:
            if ((a2 & 1) == 0)
            {
              goto LABEL_212;
            }

            v151 = (v127 >> 1);
            v152 = v151 << 32;
            v153 = *(v256 + 96);
            v154 = 8 * v151;
            if (*(v153 + v154) >> 28 == 3)
            {
              v164 = *(*(v256 + 128) + (v152 >> 30));
              v152 = v164 << 32;
              v155 = *(v153 + 8 * v164) >> 28;
              if (v155)
              {
LABEL_210:
                if (v155 != v236)
                {
                  goto LABEL_224;
                }

                goto LABEL_186;
              }
            }

            else
            {
              v155 = *(v153 + v154) >> 28;
              if (v155)
              {
                goto LABEL_210;
              }
            }

            if (*(*(v256 + 224) + (v152 >> 30)) != v236)
            {
LABEL_224:
              if (!operations_research::sat::BinaryImplicationGraph::AddBinaryClause(v33, v229, v127))
              {
                v224 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/probing.cc", 802);
                goto LABEL_295;
              }

              ++*&v238;
              v123 = v249;
              LODWORD(v122) = v243;
            }

LABEL_186:
            ++v124;
            v125 = v256;
            if (v124 >= *(v256 + 12))
            {
              goto LABEL_249;
            }
          }
        }

        v254 = 0;
LABEL_249:
        if ((a2 & 0x1000000) == 0 || (v188 = v123 ^ 1, v189 = *(v237 + 5) + 24 * (v123 ^ 1), v191 = *v189, v190 = *(v189 + 8), *v189 == v190))
        {
LABEL_270:
          v32 = v256;
          v37 = v35;
          if (v254 < 1)
          {
            continue;
          }

          operations_research::sat::ClauseManager::CleanUpWatchers(v237);
          *&v233 += v254;
          goto LABEL_33;
        }

        v250 = (*(v7 + 74) < 2) | a2;
        while (2)
        {
          v194 = *v191;
          if (((*(*(v256 + 24) + ((v194 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v194) & 1) != 0 && **(v191 + 1))
          {
            v195 = *v191;
            __x[0] = v188;
            if (v194 == v188)
            {
              absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::sat::Literal const&,operations_research::sat::Literal const&>(v191, __x, "w.blocking_literal != last_decision.Negated()");
            }

            v196 = *(v256 + 96);
            v197 = (v195 >> 1);
            v198 = 8 * v197;
            if ((v250 & 1) == 0)
            {
              goto LABEL_265;
            }

            v199 = v197 << 32;
            if (*(v196 + v198) >> 28 == 3)
            {
              v201 = *(*(v256 + 128) + (v199 >> 30));
              v199 = v201 << 32;
              v200 = *(v196 + 8 * v201) >> 28;
              if (!v200)
              {
                goto LABEL_264;
              }

LABEL_261:
              if (v200 != v236)
              {
LABEL_265:
                v202 = (v196 + v198);
                if ((*(v196 + v198) & 0xFFFFFFF) != 0)
                {
                  if (!operations_research::sat::BinaryImplicationGraph::AddBinaryClause(v33, v188, v195))
                  {
                    v224 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/probing.cc", 853);
                    goto LABEL_295;
                  }

                  ++*&v238;
                  v203 = *(*(v7 + 38) + 8 * (*v202 & 0xFFFFFFF) - 4);
                  if (v203 != *v191)
                  {
                    v204 = *(v33 + 136);
                    if (((*(v204[3] + ((v203 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v203) & 1) == 0)
                    {
                      goto LABEL_269;
                    }

                    v192 = v202[1];
                    *(*(*(v33 + 160) + (((*(v33 + 184) + v192) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v33 + 184) + v192) & 0x3FF)) = v203 ^ 1;
                    v193 = *(v33 + 32);
                    LODWORD(v192) = *(v204[6] + 4 * v192) >> 1;
                    *(v204[12] + 8 * v192) = *(v204[12] + 8 * v192) & 0xFFFFFFF | (v193 << 28);
                    *(v204[28] + 4 * v192) = v193;
                  }
                }
              }
            }

            else
            {
              v200 = *(v196 + v198) >> 28;
              if (v200)
              {
                goto LABEL_261;
              }

LABEL_264:
              if (*(*(v256 + 224) + (v199 >> 30)) != v236)
              {
                goto LABEL_265;
              }
            }

            operations_research::sat::ClauseManager::LazyDetach(v237, *(v191 + 1));
            ++v254;
          }

          v191 += 4;
          if (v191 == v190)
          {
            goto LABEL_270;
          }

          continue;
        }
      }

      continue;
    }

    break;
  }

  v34 = v38;
LABEL_273:
  v205 = v241;
  if (operations_research::sat::SatSolver::ResetToLevelZero(v7))
  {
    if (__srcb != v34)
    {
      v206 = __srcb;
      while ((operations_research::sat::SatSolver::AddUnitClause(v7, *v206) & 1) != 0)
      {
        ++*&v205;
        if (++v206 == v34)
        {
          goto LABEL_278;
        }
      }

      goto LABEL_285;
    }

LABEL_278:
    if (!operations_research::sat::SatSolver::FinishPropagation(v7))
    {
      goto LABEL_285;
    }

    v207 = *(*(v7 + 27) + 12);
    v208 = v251[14];
    v209 = " (Aborted)";
    if ((operations_research::TimeLimit::LimitReached(v251) & 1) == 0 && v251[14] <= v36)
    {
      v209 = &byte_23CE7F131;
    }

    if (v235)
    {
      v211 = absl::lts_20240722::log_internal::LogMessage::LogMessage(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/probing.cc", 892);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v211, "Probing. ", 9uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(__x, " num_probed: ", 0xDuLL);
      v271[0] = v240;
      v212 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(__x, v271);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v212, " num_fixed: +", 0xDuLL);
      LODWORD(v271[0]) = v207 - v232;
      v213 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v212, v271);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v213, " (", 2uLL);
      LODWORD(v271[0]) = v207;
      v214 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v213, v271);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v214, "/", 1uLL);
      LODWORD(v271[0]) = v231;
      v215 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v214, v271);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v215, ")", 1uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v215, " explicit_fix:", 0xEuLL);
      v271[0] = v205;
      v216 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v215, v271);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v216, " num_conflicts:", 0xFuLL);
      v271[0] = v239;
      v217 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v216, v271);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v217, " new_binary_clauses: ", 0x15uLL);
      v271[0] = v238;
      v218 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v217, v271);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v218, " subsumed: ", 0xBuLL);
      v271[0] = v233;
      v219 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v218, v271);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v219, " dtime: ", 8uLL);
      v271[0] = v208 - v9;
      v220 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v219, v271);
      v221 = absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v220, " wtime: ", 8uLL);
      v271[0] = (absl::lts_20240722::GetCurrentTimeNanos(v221) - v230) * 0.000000001;
      v222 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v220, v271);
      v260 = v209;
      absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v222, &v260);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(__x);
    }

    v210 = operations_research::sat::SatSolver::FinishPropagation(v7);
  }

  else
  {
LABEL_285:
    v210 = 0;
  }

  if (v261.__begin_)
  {
    v261.__end_ = v261.__begin_;
    operator delete(v261.__begin_);
  }

  if (v262.__begin_)
  {
    v262.__end_ = v262.__begin_;
    operator delete(v262.__begin_);
  }

  if (v267)
  {
    operator delete(v267);
  }

  if (v264)
  {
    operator delete(v264);
  }

  return v210;
}

void sub_23CCAEF94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p)
{
  if (v39)
  {
    operator delete(v39);
  }

  if (__p)
  {
    operator delete(__p);
  }

  v42 = *(v40 - 248);
  if (v42)
  {
    *(v40 - 240) = v42;
    operator delete(v42);
    v43 = *(v40 - 224);
    if (!v43)
    {
LABEL_7:
      if (!a31)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v43 = *(v40 - 224);
    if (!v43)
    {
      goto LABEL_7;
    }
  }

  *(v40 - 216) = v43;
  operator delete(v43);
  if (!a31)
  {
LABEL_8:
    operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset((v40 - 200));
    _Unwind_Resume(a1);
  }

LABEL_11:
  operator delete(a31);
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset((v40 - 200));
  _Unwind_Resume(a1);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::Prober::ProbeOneVariableInternal(operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>)::$_0 &,operations_research::sat::IntegerLiteral *,false>(unint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 4;
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      v52 = a2[-1].n128_i32[0];
      v51 = a2 - 1;
      if (v52 >= *v12)
      {
        return result;
      }

LABEL_108:
      v127 = *v12;
      *v12 = *v51;
LABEL_109:
      result = v127;
      *v51 = v127;
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v60 = (v12 + 16);
      v62 = v12 == a2 || v60 == a2;
      if (a4)
      {
        if (!v62)
        {
          v63 = 0;
          v64 = v12;
          do
          {
            v66 = v60;
            v67 = *(v64 + 16);
            if (v67 < *v64)
            {
              v68 = *(v64 + 24);
              v69 = v63;
              do
              {
                result = *(v12 + v69);
                *(v12 + v69 + 16) = result;
                if (!v69)
                {
                  v65 = v12;
                  goto LABEL_123;
                }

                v70 = *(v12 + v69 - 16);
                v69 -= 16;
              }

              while (v67 < v70);
              v65 = (v12 + v69 + 16);
LABEL_123:
              *v65 = v67;
              v65[1] = v68;
            }

            v60 = v66 + 1;
            v63 += 16;
            v64 = v66;
          }

          while (&v66[1] != a2);
        }
      }

      else if (!v62)
      {
        do
        {
          v99 = v60;
          v100 = *(a1 + 16);
          if (v100 < *a1)
          {
            v101 = *(a1 + 24);
            v102 = v99;
            do
            {
              result = v102[-1];
              *v102 = result;
              v103 = v102[-2].n128_i32[0];
              --v102;
            }

            while (v100 < v103);
            v102->n128_u64[0] = v100;
            v102->n128_u64[1] = v101;
          }

          v60 = v99 + 1;
          a1 = v99;
        }

        while (&v99[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v71 = (v13 - 2) >> 1;
        v72 = v71;
        do
        {
          v74 = 16 * v72;
          if (v71 >= (16 * v72) >> 4)
          {
            v75 = (v74 >> 3) | 1;
            v76 = (v12 + 16 * v75);
            v77 = *v76;
            if ((v74 >> 3) + 2 < v13 && v77 < v76[2])
            {
              v77 = v76[2];
              v76 += 2;
              v75 = (v74 >> 3) + 2;
            }

            v78 = (v12 + v74);
            v79 = *(v12 + 16 * v72);
            if (v79 <= v77)
            {
              do
              {
                v80 = v76;
                *v78 = *v76;
                if (v71 < v75)
                {
                  break;
                }

                v81 = (2 * v75) | 1;
                v76 = (v12 + 16 * v81);
                v82 = 2 * v75 + 2;
                v83 = *v76;
                if (v82 < v13 && v83 < v76[2])
                {
                  v83 = v76[2];
                  v76 += 2;
                  v81 = v82;
                }

                v78 = v80;
                v75 = v81;
              }

              while (v79 <= v83);
              *v80 = v79;
            }
          }

          v73 = v72-- <= 0;
        }

        while (!v73);
        do
        {
          v84 = 0;
          v129 = *v12;
          v85 = (v13 - 2) >> 1;
          n128_u64 = v12;
          do
          {
            while (1)
            {
              v90 = &n128_u64[v84];
              v89 = v90 + 1;
              v91 = (2 * v84) | 1;
              v84 = 2 * v84 + 2;
              if (v84 < v13)
              {
                break;
              }

              v84 = v91;
              *n128_u64 = *v89;
              n128_u64 = v90[1].n128_u64;
              if (v91 > v85)
              {
                goto LABEL_155;
              }
            }

            v88 = v90[2].n128_i32[0];
            v87 = v90 + 2;
            if (v87[-1].n128_u32[0] >= v88)
            {
              v84 = v91;
            }

            else
            {
              v89 = v87;
            }

            *n128_u64 = *v89;
            n128_u64 = v89;
          }

          while (v84 <= v85);
LABEL_155:
          if (v89 == --a2)
          {
            result = v129;
            *v89 = v129;
          }

          else
          {
            *v89 = *a2;
            result = v129;
            *a2 = v129;
            v92 = (&v89[1] - v12) >> 4;
            v73 = v92 < 2;
            v93 = v92 - 2;
            if (!v73)
            {
              v94 = v93 >> 1;
              v95 = (v12 + 16 * v94);
              v96 = v89->n128_u64[0];
              if (v95->n128_u32[0] < v89->n128_u64[0])
              {
                v97 = v89->n128_u64[1];
                do
                {
                  v98 = v95;
                  result = *v95;
                  *v89 = *v95;
                  if (!v94)
                  {
                    break;
                  }

                  v94 = (v94 - 1) >> 1;
                  v95 = (v12 + 16 * v94);
                  v89 = v98;
                }

                while (v95->n128_u32[0] < v96);
                v98->n128_u64[0] = v96;
                v98->n128_u64[1] = v97;
              }
            }
          }

          v73 = v13-- <= 2;
        }

        while (!v73);
      }

      return result;
    }

    v14 = v12 + 16 * (v13 >> 1);
    v15 = v14;
    v16 = v9->n128_u32[0];
    if (v13 < 0x81)
    {
      v18 = *v12;
      if (*v12 < *v14)
      {
        if (v16 < v18)
        {
          v105 = *v14;
          *v14 = *v9;
          goto LABEL_36;
        }

        v114 = *v14;
        *v14 = *v12;
        result = v114;
        *v12 = v114;
        if (v9->n128_u32[0] < *v12)
        {
          v105 = *v12;
          *v12 = *v9;
LABEL_36:
          result = v105;
          *v9 = v105;
        }

LABEL_37:
        --a3;
        v19 = *v12;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_38;
      }

      if (v16 >= v18)
      {
        goto LABEL_37;
      }

      v108 = *v12;
      *v12 = *v9;
      result = v108;
      *v9 = v108;
      if (*v12 >= *v14)
      {
        goto LABEL_37;
      }

      v109 = *v14;
      *v14 = *v12;
      result = v109;
      *v12 = v109;
      --a3;
      v19 = *v12;
      if (a4)
      {
        goto LABEL_38;
      }

LABEL_61:
      v24 = *(v12 + 8);
      if (*(v12 - 16) < v19)
      {
        goto LABEL_62;
      }

      if (v19 >= v9->n128_u32[0])
      {
        v45 = v12 + 16;
        do
        {
          v12 = v45;
          if (v45 >= a2)
          {
            break;
          }

          v45 += 16;
        }

        while (v19 >= *v12);
      }

      else
      {
        do
        {
          v44 = *(v12 + 16);
          v12 += 16;
        }

        while (v19 >= v44);
      }

      v46 = a2;
      if (v12 < a2)
      {
        v46 = a2;
        do
        {
          v47 = v46[-1].n128_i32[0];
          --v46;
        }

        while (v19 < v47);
      }

      while (v12 < v46)
      {
        v126 = *v12;
        *v12 = *v46;
        result = v126;
        *v46 = v126;
        do
        {
          v48 = *(v12 + 16);
          v12 += 16;
        }

        while (v19 >= v48);
        do
        {
          v49 = v46[-1].n128_i32[0];
          --v46;
        }

        while (v19 < v49);
      }

      v50 = (v12 - 16);
      if (v12 - 16 != a1)
      {
        result = *v50;
        *a1 = *v50;
      }

      a4 = 0;
      *(v12 - 16) = v19;
      *(v12 - 8) = v24;
    }

    else
    {
      v17 = *v14;
      if (*v14 >= *v12)
      {
        if (v16 < v17)
        {
          v106 = *v14;
          *v14 = *v9;
          *v9 = v106;
          if (*v14 < *v12)
          {
            v107 = *v12;
            *v12 = *v14;
            *v14 = v107;
          }
        }
      }

      else
      {
        if (v16 >= v17)
        {
          v110 = *v12;
          *v12 = *v14;
          *v14 = v110;
          if (v9->n128_u32[0] >= *v14)
          {
            goto LABEL_28;
          }

          v104 = *v14;
          *v14 = *v9;
        }

        else
        {
          v104 = *v12;
          *v12 = *v9;
        }

        *v9 = v104;
      }

LABEL_28:
      v20 = (v12 + 16);
      v21 = (v14 - 16);
      v22 = *(v14 - 16);
      v23 = v10->n128_u32[0];
      if (v22 >= *(v12 + 16))
      {
        if (v23 < v22)
        {
          v112 = *v21;
          *v21 = *v10;
          *v10 = v112;
          if (v21->n128_u32[0] < v20->n128_u32[0])
          {
            v113 = *v20;
            *v20 = *v21;
            *v21 = v113;
          }
        }
      }

      else
      {
        if (v23 >= v22)
        {
          v115 = *v20;
          *v20 = *v21;
          *v21 = v115;
          if (v10->n128_u32[0] >= v21->n128_u32[0])
          {
            goto LABEL_42;
          }

          v111 = *v21;
          *v21 = *v10;
        }

        else
        {
          v111 = *v20;
          *v20 = *v10;
        }

        *v10 = v111;
      }

LABEL_42:
      v25 = (v12 + 32);
      v28 = *(v14 + 16);
      v26 = (v14 + 16);
      v27 = v28;
      v29 = v11->n128_u32[0];
      if (v28 >= *(v12 + 32))
      {
        if (v29 < v27)
        {
          v117 = *v26;
          *v26 = *v11;
          *v11 = v117;
          if (v26->n128_u32[0] < v25->n128_u32[0])
          {
            v118 = *v25;
            *v25 = *v26;
            *v26 = v118;
          }
        }
      }

      else
      {
        if (v29 >= v27)
        {
          v119 = *v25;
          *v25 = *v26;
          *v26 = v119;
          if (v11->n128_u32[0] >= v26->n128_u32[0])
          {
            goto LABEL_51;
          }

          v116 = *v26;
          *v26 = *v11;
        }

        else
        {
          v116 = *v25;
          *v25 = *v11;
        }

        *v11 = v116;
      }

LABEL_51:
      v30 = v15->n128_u32[0];
      v31 = v26->n128_u32[0];
      if (v15->n128_u32[0] >= v21->n128_u32[0])
      {
        if (v31 < v30)
        {
          v121 = *v15;
          *v15 = *v26;
          *v26 = v121;
          if (v15->n128_u32[0] < v21->n128_u32[0])
          {
            v122 = *v21;
            *v21 = *v15;
            *v15 = v122;
          }
        }
      }

      else
      {
        if (v31 >= v30)
        {
          v123 = *v21;
          *v21 = *v15;
          *v15 = v123;
          if (v26->n128_u32[0] >= v15->n128_u32[0])
          {
            goto LABEL_60;
          }

          v120 = *v15;
          *v15 = *v26;
        }

        else
        {
          v120 = *v21;
          *v21 = *v26;
        }

        *v26 = v120;
      }

LABEL_60:
      v124 = *v12;
      *v12 = *v15;
      result = v124;
      *v15 = v124;
      --a3;
      v19 = *v12;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_38:
      v24 = *(v12 + 8);
LABEL_62:
      v32 = 0;
      do
      {
        v33 = *(v12 + v32 + 16);
        v32 += 16;
      }

      while (v19 > v33);
      v34 = v12 + v32;
      v35 = a2;
      if (v32 == 16)
      {
        v35 = a2;
        do
        {
          if (v34 >= v35)
          {
            break;
          }

          v37 = v35[-1].n128_i32[0];
          --v35;
        }

        while (v19 <= v37);
      }

      else
      {
        do
        {
          v36 = v35[-1].n128_i32[0];
          --v35;
        }

        while (v19 <= v36);
      }

      v12 += v32;
      if (v34 < v35)
      {
        v38 = v35;
        do
        {
          v125 = *v12;
          *v12 = *v38;
          result = v125;
          *v38 = v125;
          do
          {
            v39 = *(v12 + 16);
            v12 += 16;
          }

          while (v19 > v39);
          do
          {
            v40 = v38[-1].n128_i32[0];
            --v38;
          }

          while (v19 <= v40);
        }

        while (v12 < v38);
      }

      v41 = (v12 - 16);
      if (v12 - 16 != a1)
      {
        result = *v41;
        *a1 = *v41;
      }

      *(v12 - 16) = v19;
      *(v12 - 8) = v24;
      if (v34 < v35)
      {
        goto LABEL_81;
      }

      v42 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::Prober::ProbeOneVariableInternal(operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>)::$_0 &,operations_research::sat::IntegerLiteral *>(a1, (v12 - 16), result);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::Prober::ProbeOneVariableInternal(operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>)::$_0 &,operations_research::sat::IntegerLiteral *>(v12, a2, v43))
      {
        a2 = (v12 - 16);
        if (!v42)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v42)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::Prober::ProbeOneVariableInternal(operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>)::$_0 &,operations_research::sat::IntegerLiteral *,false>(a1, (v12 - 16), a3, a4 & 1, result);
        a4 = 0;
      }
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {
      v53 = (v12 + 16);
      v57 = *(v12 + 16);
      v58 = (v12 + 32);
      v59 = *(v12 + 32);
      if (v57 >= *v12)
      {
        if (v59 < v57)
        {
          v131 = *v53;
          *v53 = *v58;
          result = v131;
          *v58 = v131;
          if (*(v12 + 16) < *v12)
          {
            v132 = *v12;
            *v12 = *v53;
            result = v132;
            *v53 = v132;
          }
        }
      }

      else
      {
        if (v59 < v57)
        {
          v128 = *v12;
          *v12 = *v58;
          goto LABEL_178;
        }

        v134 = *v12;
        *v12 = *v53;
        result = v134;
        *v53 = v134;
        if (*(v12 + 32) < *(v12 + 16))
        {
          v128 = *v53;
          *v53 = *v58;
LABEL_178:
          result = v128;
          *v58 = v128;
        }
      }

      if (v9->n128_u32[0] >= v58->n128_u32[0])
      {
        return result;
      }

      v135 = *v58;
      *v58 = *v9;
      result = v135;
      *v9 = v135;
      if (v58->n128_u32[0] >= v53->n128_u32[0])
      {
        return result;
      }

      v136 = *v53;
      *v53 = *v58;
      result = v136;
      *v58 = v136;
LABEL_182:
      if (*(v12 + 16) < *v12)
      {
        v137 = *v12;
        *v12 = *v53;
        result = v137;
        *v53 = v137;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::LinearPropagator::ReportConflictingCycle(void)::$_0 &,operations_research::sat::IntegerLiteral *,0>(v12, (v12 + 16), (v12 + 32), (v12 + 48), a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v53 = (v12 + 16);
  v54 = *(v12 + 16);
  v56 = a2[-1].n128_u32[0];
  v51 = a2 - 1;
  v55 = v56;
  if (v54 >= *v12)
  {
    if (v55 >= v54)
    {
      return result;
    }

    v130 = *v53;
    *v53 = *v51;
    result = v130;
    *v51 = v130;
    goto LABEL_182;
  }

  if (v55 < v54)
  {
    goto LABEL_108;
  }

  v133 = *v12;
  *v12 = *v53;
  result = v133;
  *v53 = v133;
  if (v51->n128_u32[0] < *(v12 + 16))
  {
    v127 = *v53;
    *v53 = *v51;
    goto LABEL_109;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::Prober::ProbeOneVariableInternal(operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>)::$_0 &,operations_research::sat::IntegerLiteral *>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a1 + 16);
      v8 = *(a1 + 16);
      v10 = a2[-1].n128_u32[0];
      v5 = a2 - 1;
      v9 = v10;
      if (v8 < *a1)
      {
        if (v9 >= v8)
        {
          v29 = *a1;
          *a1 = *v7;
          *v7 = v29;
          if (v5->n128_u32[0] >= *(a1 + 16))
          {
            return 1;
          }

          v11 = *v7;
          *v7 = *v5;
          goto LABEL_14;
        }

LABEL_13:
        v11 = *a1;
        *a1 = *v5;
LABEL_14:
        *v5 = v11;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v24 = *v7;
      *v7 = *v5;
      *v5 = v24;
      if (*(a1 + 16) >= *a1)
      {
        return 1;
      }

      goto LABEL_52;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::LinearPropagator::ReportConflictingCycle(void)::$_0 &,operations_research::sat::IntegerLiteral *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
        return 1;
      }

      goto LABEL_15;
    }

    v7 = (a1 + 16);
    v18 = *(a1 + 16);
    v19 = (a1 + 32);
    v20 = *(a1 + 32);
    v21 = a2 - 1;
    v22 = *a1;
    if (v18 >= *a1)
    {
      if (v20 < v18)
      {
        v27 = *v7;
        *v7 = *v19;
        *v19 = v27;
        if (v7->n128_u32[0] < v22)
        {
          v28 = *a1;
          *a1 = *v7;
          *v7 = v28;
        }
      }
    }

    else
    {
      if (v20 < v18)
      {
        v23 = *a1;
        *a1 = *v19;
LABEL_48:
        *v19 = v23;
        goto LABEL_49;
      }

      v39 = *a1;
      *a1 = *v7;
      *v7 = v39;
      if (v20 < *(a1 + 16))
      {
        v23 = *v7;
        *v7 = *v19;
        goto LABEL_48;
      }
    }

LABEL_49:
    if (v21->n128_u32[0] >= v19->n128_u32[0])
    {
      return 1;
    }

    v40 = *v19;
    *v19 = *v21;
    *v21 = v40;
    if (v19->n128_u32[0] >= v7->n128_u32[0])
    {
      return 1;
    }

    v41 = *v7;
    *v7 = *v19;
    *v19 = v41;
    if (*(a1 + 16) >= *a1)
    {
      return 1;
    }

LABEL_52:
    v42 = *a1;
    *a1 = *v7;
    *v7 = v42;
    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v6 = a2[-1].n128_i32[0];
    v5 = a2 - 1;
    if (v6 >= *a1)
    {
      return 1;
    }

    goto LABEL_13;
  }

LABEL_15:
  v12 = (a1 + 32);
  v13 = *(a1 + 32);
  v14 = (a1 + 16);
  v15 = *(a1 + 16);
  v16 = *a1;
  if (v15 >= *a1)
  {
    if (v13 < v15)
    {
      v25 = *v14;
      *v14 = *v12;
      *v12 = v25;
      if (v14->n128_u32[0] < v16)
      {
        v26 = *a1;
        *a1 = *v14;
        *v14 = v26;
      }
    }
  }

  else
  {
    if (v13 >= v15)
    {
      v30 = *a1;
      *a1 = *v14;
      *v14 = v30;
      if (v13 >= *(a1 + 16))
      {
        goto LABEL_35;
      }

      v17 = *v14;
      *v14 = *v12;
    }

    else
    {
      v17 = *a1;
      *a1 = *v12;
    }

    *v12 = v17;
  }

LABEL_35:
  v31 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v32 = 0;
  v33 = 0;
  while (1)
  {
    v34 = *v31;
    v35 = v12->n128_u32[0];
    v36 = *v31;
    if (v36 < v35)
    {
      break;
    }

LABEL_38:
    v12 = v31;
    v32 += 16;
    if (++v31 == a2)
    {
      return 1;
    }
  }

  v37 = v32;
  do
  {
    *(a1 + v37 + 48) = *(a1 + v37 + 32);
    if (v37 == -32)
    {
      *a1 = v34;
      if (++v33 != 8)
      {
        goto LABEL_38;
      }

      return &v31[1] == a2;
    }

    v38 = *(a1 + v37 + 16);
    v37 -= 16;
  }

  while (v36 < v38);
  *(a1 + v37 + 48) = v34;
  if (++v33 != 8)
  {
    goto LABEL_38;
  }

  return &v31[1] == a2;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::FailedLiteralProbingRound(operations_research::sat::ProbingOptions,operations_research::sat::Model *)::SavedNextLiteral *,false>(uint64_t result, int8x16_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 3;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        if (a2[-1].i32[3] >= v8->i32[1])
        {
          return result;
        }

        v69 = v8->i64[0];
        goto LABEL_116;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v72 = v8->i32[3];
      v73 = v8->i32[1];
      LODWORD(v74) = v8[1].i32[1];
      if (v72 >= v73)
      {
        if (v74 < v72)
        {
          v119 = v8->u64[1];
          v120 = v8[1].i64[0];
          v8->i64[1] = v120;
          v8[1].i64[0] = v119;
          v74 = HIDWORD(v119);
          if (v73 > SHIDWORD(v120))
          {
            v121 = v8->i64[0];
            v8->i64[0] = v120;
            v8->i64[1] = v121;
          }
        }
      }

      else
      {
        v75 = v8->i64[0];
        v76 = HIDWORD(v8->i64[0]);
        if (v74 < v72)
        {
          v8->i64[0] = v8[1].i64[0];
          goto LABEL_187;
        }

        v8->i64[0] = v8->i64[1];
        v8->i64[1] = v75;
        if (v74 < v76)
        {
          v8->i64[1] = v8[1].i64[0];
LABEL_187:
          v8[1].i64[0] = v75;
          LODWORD(v74) = v76;
        }
      }

      if (a2[-1].i32[3] < v74)
      {
        v129 = v8[1].i64[0];
        v8[1].i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v129;
        if (v8[1].i32[1] < v8->i32[3])
        {
          v131 = v8->i64[1];
          v130 = v8[1].i64[0];
          v8->i64[1] = v130;
          v8[1].i64[0] = v131;
          if (v8->i32[1] > SHIDWORD(v130))
          {
            v132 = v8->i64[0];
            v8->i64[0] = v130;
            v8->i64[1] = v132;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::FailedLiteralProbingRound(operations_research::sat::ProbingOptions,operations_research::sat::Model *)::SavedNextLiteral *,0>(v8, &v8->u64[1], &v8[1], &v8[1].u64[1], &a2[-1].u64[1]);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v77 = &v8->u64[1];
      v79 = v8 == a2 || v77 == a2;
      if (a4)
      {
        if (!v79)
        {
          v80 = 0;
          v81 = v8;
          do
          {
            v83 = v81->i32[3];
            v84 = v81->i32[1];
            v81 = v77;
            if (v83 < v84)
            {
              v85 = v77->i64[0];
              v86 = HIDWORD(v81->i64[0]);
              v87 = v80;
              do
              {
                *(&v8->i64[1] + v87) = *(v8->i64 + v87);
                if (!v87)
                {
                  v82 = v8;
                  goto LABEL_131;
                }

                v88 = *(&v8->i32[-1] + v87);
                v87 -= 8;
              }

              while (v88 > v86);
              v82 = (&v8->i64[1] + v87);
LABEL_131:
              *v82 = v85;
            }

            v77 = &v81->u64[1];
            v80 += 8;
          }

          while (&v81->u64[1] != a2);
        }
      }

      else if (!v79)
      {
        do
        {
          v122 = *(v7 + 12);
          v123 = *(v7 + 4);
          v7 = v77;
          if (v122 < v123)
          {
            v124 = v77->i64[0];
            v125 = HIDWORD(v77->i64[0]);
            v126 = v7;
            do
            {
              v127 = v126;
              v128 = *--v126;
              *v127 = v128;
            }

            while (*(v127 - 3) > v125);
            *v126 = v124;
          }

          v77 = (v7 + 8);
        }

        while ((v7 + 8) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v89 = (v9 - 2) >> 1;
        v90 = v89;
        do
        {
          v92 = 8 * v90;
          if (v89 >= (8 * v90) >> 3)
          {
            v93 = (v92 >> 2) | 1;
            v94 = &v8->i8[8 * v93];
            if ((v92 >> 2) + 2 < v9)
            {
              v91 = *(v94 + 1) < *(v94 + 3);
              v94 += 8 * v91;
              if (v91)
              {
                v93 = (v92 >> 2) + 2;
              }
            }

            v95 = &v8->i8[v92];
            if (*(v94 + 1) >= *(v95 + 1))
            {
              v96 = *v95;
              v97 = HIDWORD(*v95);
              do
              {
                v98 = v95;
                v95 = v94;
                *v98 = *v94;
                if (v89 < v93)
                {
                  break;
                }

                v99 = (2 * v93) | 1;
                v94 = &v8->i8[8 * v99];
                v100 = 2 * v93 + 2;
                if (v100 < v9)
                {
                  result = *(v94 + 3);
                  v91 = *(v94 + 1) < result;
                  v94 += 8 * v91;
                  if (v91)
                  {
                    v99 = v100;
                  }
                }

                v93 = v99;
              }

              while (*(v94 + 1) >= v97);
              *v95 = v96;
            }
          }

          v91 = v90-- <= 0;
        }

        while (!v91);
        do
        {
          v101 = 0;
          v102 = v8->i64[0];
          v103 = (v9 - 2) >> 1;
          v104 = v8;
          do
          {
            while (1)
            {
              v109 = &v104[v101];
              v108 = (v109 + 1);
              v110 = (2 * v101) | 1;
              v101 = 2 * v101 + 2;
              if (v101 < v9)
              {
                break;
              }

              v101 = v110;
              *v104 = v108->i64[0];
              v104 = v109 + 1;
              if (v110 > v103)
              {
                goto LABEL_163;
              }
            }

            v105 = *(v109 + 3);
            v106 = *(v109 + 5);
            v107 = (v109 + 2);
            if (v105 >= v106)
            {
              v101 = v110;
            }

            else
            {
              v108 = v107;
            }

            *v104 = v108->i64[0];
            v104 = v108;
          }

          while (v101 <= v103);
LABEL_163:
          a2 = (a2 - 8);
          if (v108 == a2)
          {
            v108->i64[0] = v102;
          }

          else
          {
            v108->i64[0] = a2->i64[0];
            a2->i64[0] = v102;
            v111 = (v108 - v8 + 8) >> 3;
            v91 = v111 < 2;
            v112 = v111 - 2;
            if (!v91)
            {
              v113 = v112 >> 1;
              v114 = (v8 + 8 * v113);
              if (v114->i32[1] < v108->i32[1])
              {
                v115 = v108->i64[0];
                v116 = HIDWORD(v108->i64[0]);
                do
                {
                  v117 = v108;
                  v108 = v114;
                  *v117 = v114->i64[0];
                  if (!v113)
                  {
                    break;
                  }

                  v113 = (v113 - 1) >> 1;
                  v114 = (v8 + 8 * v113);
                }

                while (v114->i32[1] < v116);
                v108->i64[0] = v115;
              }
            }
          }

          v91 = v9-- <= 2;
        }

        while (!v91);
      }

      return result;
    }

    v10 = &v8->i8[8 * (v9 >> 1)];
    v11 = a2[-1].i32[3];
    if (v9 < 0x81)
    {
      v14 = v8->i32[1];
      if (v14 < *(v10 + 1))
      {
        v15 = *v10;
        if (v11 < v14)
        {
          *v10 = a2[-1].i64[1];
          goto LABEL_37;
        }

        *v10 = v8->i64[0];
        v8->i64[0] = v15;
        if (a2[-1].i32[3] < SHIDWORD(v15))
        {
          v8->i64[0] = a2[-1].i64[1];
LABEL_37:
          a2[-1].i64[1] = v15;
        }

LABEL_38:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }

      if (v11 >= v14)
      {
        goto LABEL_38;
      }

      v18 = v8->i64[0];
      v8->i64[0] = a2[-1].i64[1];
      a2[-1].i64[1] = v18;
      if (v8->i32[1] >= *(v10 + 1))
      {
        goto LABEL_38;
      }

      v19 = *v10;
      *v10 = v8->i64[0];
      v8->i64[0] = v19;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_39;
    }

    v12 = *(v10 + 1);
    if (v12 >= v8->i32[1])
    {
      if (v11 < v12)
      {
        v16 = *v10;
        *v10 = a2[-1].i64[1];
        a2[-1].i64[1] = v16;
        if (*(v10 + 1) < v8->i32[1])
        {
          v17 = v8->i64[0];
          v8->i64[0] = *v10;
          *v10 = v17;
        }
      }
    }

    else
    {
      v13 = v8->i64[0];
      if (v11 >= v12)
      {
        v8->i64[0] = *v10;
        *v10 = v13;
        if (a2[-1].i32[3] >= SHIDWORD(v13))
        {
          goto LABEL_29;
        }

        *v10 = a2[-1].i64[1];
      }

      else
      {
        v8->i64[0] = a2[-1].i64[1];
      }

      a2[-1].i64[1] = v13;
    }

LABEL_29:
    v20 = (v10 - 8);
    v21 = *(v10 - 1);
    v22 = a2[-1].i32[1];
    if (v21 >= v8->i32[3])
    {
      if (v22 < v21)
      {
        v24 = *v20;
        *v20 = a2[-1].i64[0];
        a2[-1].i64[0] = v24;
        if (*(v10 - 1) < v8->i32[3])
        {
          v25 = v8->i64[1];
          v8->i64[1] = *v20;
          *v20 = v25;
        }
      }
    }

    else
    {
      v23 = v8->i64[1];
      if (v22 >= v21)
      {
        v8->i64[1] = *v20;
        *v20 = v23;
        if (a2[-1].i32[1] >= SHIDWORD(v23))
        {
          goto LABEL_43;
        }

        *v20 = a2[-1].i64[0];
      }

      else
      {
        v8->i64[1] = a2[-1].i64[0];
      }

      a2[-1].i64[0] = v23;
    }

LABEL_43:
    v27 = *(v10 + 3);
    v28 = a2[-2].i32[3];
    if (v27 >= v8[1].i32[1])
    {
      if (v28 < v27)
      {
        v30 = *(v10 + 1);
        *(v10 + 1) = a2[-2].i64[1];
        a2[-2].i64[1] = v30;
        if (*(v10 + 3) < v8[1].i32[1])
        {
          v31 = v8[1].i64[0];
          v8[1].i64[0] = *(v10 + 1);
          *(v10 + 1) = v31;
        }
      }

      goto LABEL_52;
    }

    v29 = v8[1].i64[0];
    if (v28 < v27)
    {
      v8[1].i64[0] = a2[-2].i64[1];
LABEL_51:
      a2[-2].i64[1] = v29;
      goto LABEL_52;
    }

    v8[1].i64[0] = *(v10 + 1);
    *(v10 + 1) = v29;
    if (a2[-2].i32[3] < SHIDWORD(v29))
    {
      *(v10 + 1) = a2[-2].i64[1];
      goto LABEL_51;
    }

LABEL_52:
    v32 = *(v10 + 1);
    v33 = *(v10 - 1);
    v34 = *(v10 + 3);
    if (v32 >= v33)
    {
      v35 = *v10;
      if (v34 >= v32)
      {
        goto LABEL_62;
      }

      v37 = *(v10 + 1);
      *v10 = v37;
      *(v10 + 1) = v35;
      if (v33 <= SHIDWORD(v37))
      {
        v57 = v8->i64[0];
        v8->i64[0] = v37;
        *v10 = v57;
        --a3;
        if (a4)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v38 = *v20;
        *v20 = v37;
        *v10 = v38;
        v39 = v8->i64[0];
        v8->i64[0] = v38;
        *v10 = v39;
        --a3;
        if (a4)
        {
          goto LABEL_39;
        }
      }

LABEL_63:
      v26 = v8->i64[0];
      if (v8[-1].i32[3] < v8->i32[1])
      {
        goto LABEL_64;
      }

      if (a2[-1].i32[3] <= SHIDWORD(v26))
      {
        v60 = &v8->u64[1];
        do
        {
          v8 = v60;
          if (v60 >= a2)
          {
            break;
          }

          v61 = *(v60 + 4);
          v60 += 8;
        }

        while (v61 <= SHIDWORD(v26));
      }

      else
      {
        v58 = v8;
        do
        {
          v8 = &v58->u64[1];
          v59 = v58->i32[3];
          v58 = (v58 + 8);
        }

        while (v59 <= SHIDWORD(v26));
      }

      v62 = a2;
      if (v8 < a2)
      {
        v63 = a2;
        do
        {
          v62 = (v63 - 8);
          v64 = v63[-1].i32[3];
          v63 = (v63 - 8);
        }

        while (v64 > SHIDWORD(v26));
      }

      while (v8 < v62)
      {
        v65 = v8->i64[0];
        v8->i64[0] = v62->i64[0];
        v62->i64[0] = v65;
        do
        {
          v66 = v8->i32[3];
          v8 = (v8 + 8);
        }

        while (v66 <= SHIDWORD(v26));
        do
        {
          v67 = v62[-1].i32[3];
          v62 = (v62 - 8);
        }

        while (v67 > SHIDWORD(v26));
      }

      v68 = &v8[-1].i64[1];
      if (&v8[-1].u64[1] != v7)
      {
        *v7 = *v68;
      }

      a4 = 0;
      *v68 = v26;
    }

    else
    {
      v35 = *v20;
      if (v34 >= v32)
      {
        *v20 = *v10;
        *v10 = v35;
        if (v34 < SHIDWORD(v35))
        {
          v40 = *(v10 + 1);
          *v10 = v40;
          *(v10 + 1) = v35;
          v35 = v40;
        }

LABEL_62:
        v41 = v8->i64[0];
        v8->i64[0] = v35;
        *v10 = v41;
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }

      *v20 = *(v10 + 1);
      *(v10 + 1) = v35;
      v36 = v8->i64[0];
      v8->i64[0] = *v10;
      *v10 = v36;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_39:
      v26 = v8->i64[0];
LABEL_64:
      v42 = 0;
      do
      {
        v43 = v8->i32[v42 + 3];
        v42 += 2;
      }

      while (v43 < SHIDWORD(v26));
      v44 = &v8->i8[v42 * 4];
      v45 = a2;
      if (v42 == 2)
      {
        v48 = a2;
        while (v44 < v48)
        {
          v46 = (v48 - 8);
          v49 = v48[-1].i32[3];
          v48 = (v48 - 8);
          if (v49 < SHIDWORD(v26))
          {
            goto LABEL_72;
          }
        }

        v46 = v48;
LABEL_81:
        v55 = v44 - 8;
        if (v44 - 8 == v8)
        {
          goto LABEL_83;
        }

LABEL_82:
        v8->i64[0] = *v55;
        goto LABEL_83;
      }

      do
      {
        v46 = (v45 - 8);
        v47 = v45[-1].i32[3];
        v45 = (v45 - 8);
      }

      while (v47 >= SHIDWORD(v26));
LABEL_72:
      if (v44 >= v46)
      {
        goto LABEL_81;
      }

      v50 = v44;
      v51 = v46;
      do
      {
        v52 = *v50;
        *v50 = *v51;
        *v51 = v52;
        do
        {
          v53 = *(v50 + 12);
          v50 += 8;
        }

        while (v53 < SHIDWORD(v26));
        do
        {
          v54 = *(v51-- - 1);
        }

        while (v54 >= SHIDWORD(v26));
      }

      while (v50 < v51);
      v55 = (v50 - 8);
      if ((v50 - 8) != v8)
      {
        goto LABEL_82;
      }

LABEL_83:
      *v55 = v26;
      if (v44 < v46)
      {
        goto LABEL_86;
      }

      v56 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::FailedLiteralProbingRound(operations_research::sat::ProbingOptions,operations_research::sat::Model *)::SavedNextLiteral *>(v8, v55);
      v8 = (v55 + 8);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::FailedLiteralProbingRound(operations_research::sat::ProbingOptions,operations_research::sat::Model *)::SavedNextLiteral *>((v55 + 8), a2);
      if (result)
      {
        a2 = v55;
        if (!v56)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v56)
      {
LABEL_86:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::FailedLiteralProbingRound(operations_research::sat::ProbingOptions,operations_research::sat::Model *)::SavedNextLiteral *,false>(v7, v55, a3, a4 & 1);
        a4 = 0;
        v8 = (v55 + 8);
      }
    }
  }

  v70 = v8->i32[3];
  v71 = a2[-1].i32[3];
  if (v70 >= v8->i32[1])
  {
    if (v71 < v70)
    {
      v118 = v8->i64[1];
      v8->i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v118;
      if (v8->i32[3] < v8->i32[1])
      {
        *v8 = vextq_s8(*v8, *v8, 8uLL);
      }
    }
  }

  else
  {
    v69 = v8->i64[0];
    if (v71 < v70)
    {
LABEL_116:
      v8->i64[0] = a2[-1].i64[1];
      a2[-1].i64[1] = v69;
      return result;
    }

    v8->i64[0] = v8->i64[1];
    v8->i64[1] = v69;
    if (a2[-1].i32[3] < SHIDWORD(v69))
    {
      v8->i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v69;
    }
  }

  return result;
}

unint64_t *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::FailedLiteralProbingRound(operations_research::sat::ProbingOptions,operations_research::sat::Model *)::SavedNextLiteral *,0>(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = *(a2 + 1);
  LODWORD(v6) = *(a3 + 1);
  if (v5 >= *(result + 1))
  {
    if (v6 < v5)
    {
      v8 = *a2;
      *a2 = *a3;
      *a3 = v8;
      if (*(a2 + 1) >= *(result + 1))
      {
        if (*(a4 + 1) >= SHIDWORD(v8))
        {
          goto LABEL_16;
        }
      }

      else
      {
        v9 = *result;
        *result = *a2;
        *a2 = v9;
        if (*(a4 + 1) >= *(a3 + 1))
        {
          goto LABEL_16;
        }
      }

      goto LABEL_12;
    }

LABEL_11:
    if (*(a4 + 1) >= v6)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v7 = *result;
  if (v6 >= v5)
  {
    *result = *a2;
    *a2 = v7;
    LODWORD(v6) = *(a3 + 1);
    if (v6 < SHIDWORD(v7))
    {
      *a2 = *a3;
      *a3 = v7;
      v6 = HIDWORD(v7);
    }

    goto LABEL_11;
  }

  *result = *a3;
  *a3 = v7;
  if (*(a4 + 1) >= SHIDWORD(v7))
  {
    goto LABEL_16;
  }

LABEL_12:
  v10 = *a3;
  *a3 = *a4;
  *a4 = v10;
  if (*(a3 + 1) < *(a2 + 1))
  {
    v11 = *a2;
    *a2 = *a3;
    *a3 = v11;
    if (*(a2 + 1) < *(result + 1))
    {
      v12 = *result;
      *result = *a2;
      *a2 = v12;
    }
  }

LABEL_16:
  if (*(a5 + 1) < *(a4 + 1))
  {
    v13 = *a4;
    *a4 = *a5;
    *a5 = v13;
    if (*(a4 + 1) < *(a3 + 1))
    {
      v14 = *a3;
      *a3 = *a4;
      *a4 = v14;
      if (*(a3 + 1) < *(a2 + 1))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
        if (*(a2 + 1) < *(result + 1))
        {
          v16 = *result;
          *result = *a2;
          *a2 = v16;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::FailedLiteralProbingRound(operations_research::sat::ProbingOptions,operations_research::sat::Model *)::SavedNextLiteral *>(int8x16_t *a1, int8x16_t *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 <= 2)
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      if (a2[-1].i32[3] >= a1->i32[1])
      {
        return 1;
      }

      v4 = a1->i64[0];
      goto LABEL_13;
    }

LABEL_14:
    v7 = a1->i32[3];
    v8 = a1->i32[1];
    v9 = a1[1].i32[1];
    if (v7 >= v8)
    {
      if (v9 < v7)
      {
        v18 = a1->i64[1];
        v17 = a1[1].i64[0];
        a1->i64[1] = v17;
        a1[1].i64[0] = v18;
        if (v8 > SHIDWORD(v17))
        {
          v19 = a1->i64[0];
          a1->i64[0] = v17;
          a1->i64[1] = v19;
        }
      }
    }

    else
    {
      v10 = a1->i64[0];
      if (v9 >= v7)
      {
        a1->i64[0] = a1->i64[1];
        a1->i64[1] = v10;
        if (v9 >= SHIDWORD(v10))
        {
          goto LABEL_34;
        }

        a1->i64[1] = a1[1].i64[0];
      }

      else
      {
        a1->i64[0] = a1[1].i64[0];
      }

      a1[1].i64[0] = v10;
    }

LABEL_34:
    v23 = (a1 + 24);
    if (&a1[1].u64[1] == a2)
    {
      return 1;
    }

    v24 = 0;
    v25 = 0;
    v26 = a1 + 1;
    while (v23->i32[1] >= v26->i32[1])
    {
LABEL_37:
      v26 = v23;
      v24 += 8;
      v23 = (v23 + 8);
      if (v23 == a2)
      {
        return 1;
      }
    }

    v27 = v23->i64[0];
    v28 = HIDWORD(v23->i64[0]);
    v29 = v24;
    do
    {
      *(&a1[1].i64[1] + v29) = *(a1[1].i64 + v29);
      if (v29 == -16)
      {
        a1->i64[0] = v27;
        if (++v25 != 8)
        {
          goto LABEL_37;
        }

        return &v23->u64[1] == a2;
      }

      v30 = *(&a1->i32[3] + v29);
      v29 -= 8;
    }

    while (v30 > v28);
    *(&a1[1].i64[1] + v29) = v27;
    if (++v25 != 8)
    {
      goto LABEL_37;
    }

    return &v23->u64[1] == a2;
  }

  if (v2 != 3)
  {
    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::FailedLiteralProbingRound(operations_research::sat::ProbingOptions,operations_research::sat::Model *)::SavedNextLiteral *,0>(a1, &a1->u64[1], &a1[1], &a1[1].u64[1], &a2[-1].u64[1]);
        return 1;
      }

      goto LABEL_14;
    }

    v11 = a1->i32[3];
    v12 = a1->i32[1];
    LODWORD(v13) = a1[1].i32[1];
    if (v11 >= v12)
    {
      if (v13 < v11)
      {
        v20 = a1->u64[1];
        v21 = a1[1].i64[0];
        a1->i64[1] = v21;
        a1[1].i64[0] = v20;
        v13 = HIDWORD(v20);
        if (v12 > SHIDWORD(v21))
        {
          v22 = a1->i64[0];
          a1->i64[0] = v21;
          a1->i64[1] = v22;
        }
      }

      goto LABEL_48;
    }

    v14 = a1->i64[0];
    v15 = HIDWORD(a1->i64[0]);
    if (v13 >= v11)
    {
      a1->i64[0] = a1->i64[1];
      a1->i64[1] = v14;
      if (v13 >= v15)
      {
        goto LABEL_48;
      }

      a1->i64[1] = a1[1].i64[0];
    }

    else
    {
      a1->i64[0] = a1[1].i64[0];
    }

    a1[1].i64[0] = v14;
    LODWORD(v13) = v15;
LABEL_48:
    if (a2[-1].i32[3] >= v13)
    {
      return 1;
    }

    v31 = a1[1].i64[0];
    a1[1].i64[0] = a2[-1].i64[1];
    a2[-1].i64[1] = v31;
    if (a1[1].i32[1] >= a1->i32[3])
    {
      return 1;
    }

    v33 = a1->i64[1];
    v32 = a1[1].i64[0];
    a1->i64[1] = v32;
    a1[1].i64[0] = v33;
    if (a1->i32[1] <= SHIDWORD(v32))
    {
      return 1;
    }

    v34 = a1->i64[0];
    a1->i64[0] = v32;
    a1->i64[1] = v34;
    return 1;
  }

  v5 = a1->i32[3];
  v6 = a2[-1].i32[3];
  if (v5 >= a1->i32[1])
  {
    if (v6 >= v5)
    {
      return 1;
    }

    v16 = a1->i64[1];
    a1->i64[1] = a2[-1].i64[1];
    a2[-1].i64[1] = v16;
    if (a1->i32[3] >= a1->i32[1])
    {
      return 1;
    }

    *a1 = vextq_s8(*a1, *a1, 8uLL);
    return 1;
  }

  else
  {
    v4 = a1->i64[0];
    if (v6 < v5)
    {
LABEL_13:
      a1->i64[0] = a2[-1].i64[1];
      a2[-1].i64[1] = v4;
      return 1;
    }

    a1->i64[0] = a1->i64[1];
    a1->i64[1] = v4;
    if (a2[-1].i32[3] >= SHIDWORD(v4))
    {
      return 1;
    }

    a1->i64[1] = a2[-1].i64[1];
    a2[-1].i64[1] = v4;
    return 1;
  }
}

operations_research::sat::PseudoCosts *operations_research::sat::PseudoCosts::PseudoCosts(operations_research::sat::PseudoCosts *this, operations_research::sat::Model *a2)
{
  *this = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  *(this + 1) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  *(this + 2) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
  *(this + 3) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelLpValues>(a2);
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearProgrammingConstraintCollection>(a2);
  *(this + 11) = 0u;
  *(this + 4) = v4;
  *(this + 10) = -1;
  *(this + 3) = xmmword_23CE4D810;
  *(this + 8) = 0xFFF0000000000000;
  *(this + 72) = 0;
  *(this + 5) = 0u;
  *(this + 8) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 30) = 0;
  v5 = *(*(this + 1) + 48) - *(*(this + 1) + 40);
  v6 = (v5 >> 3);
  if ((v5 >> 3))
  {
    std::vector<std::array<long long,2ul>>::__append(this + 176, v6);
  }

  std::vector<BOOL>::resize(this + 128, v6, 0);
  v28 = 0;
  v7 = *(this + 19);
  v8 = (*(this + 20) - v7) >> 3;
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      *(this + 20) = v7 + 8 * v6;
    }
  }

  else
  {
    std::vector<double>::__append(this + 152, v6 - v8, &v28);
  }

  v9 = *(a2 + 3);
  if (v9 > 1)
  {
    v12 = 0;
    _X11 = *(a2 + 5);
    __asm { PRFM            #4, [X11] }

    v19 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d));
    v20 = vdup_n_s8(v19 & 0x7F);
    v21 = ((v19 >> 7) ^ (_X11 >> 12)) & v9;
    v22 = *(_X11 + v21);
    v23 = vceq_s8(v22, v20);
    if (!v23)
    {
      goto LABEL_16;
    }

LABEL_13:
    v24 = *(a2 + 6);
    while (1)
    {
      v25 = (v21 + (__clz(__rbit64(v23)) >> 3)) & v9;
      if (*(v24 + 16 * v25) == &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d)
      {
        break;
      }

      v23 &= ((v23 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v23)
      {
LABEL_16:
        while (!*&vceq_s8(v22, 0x8080808080808080))
        {
          v12 += 8;
          v21 = (v12 + v21) & v9;
          v22 = *(_X11 + v21);
          v23 = vceq_s8(v22, v20);
          if (v23)
          {
            goto LABEL_13;
          }
        }

        return this;
      }
    }

    v10 = (v24 + 16 * v25);
    if (!(_X11 + v25))
    {
      return this;
    }
  }

  else
  {
    if (*(a2 + 4) < 2uLL)
    {
      return this;
    }

    v11 = *(a2 + 5);
    v10 = a2 + 40;
    if (v11 != &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d || !&absl::lts_20240722::container_internal::kSooControl)
    {
      return this;
    }
  }

  v26 = *(v10 + 1);
  if (v26)
  {
    *(this + 10) = *(v26 + 16);
  }

  return this;
}

void sub_23CCB12A4(_Unwind_Exception *exception_object)
{
  v7 = v1[28];
  if (v7)
  {
    v1[29] = v7;
    operator delete(v7);
    v8 = v1[25];
    if (!v8)
    {
LABEL_3:
      v9 = *v3;
      if (!*v3)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v8 = v1[25];
    if (!v8)
    {
      goto LABEL_3;
    }
  }

  v1[26] = v8;
  operator delete(v8);
  v9 = *v3;
  if (!*v3)
  {
LABEL_4:
    v10 = *v4;
    if (!*v4)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v1[23] = v9;
  operator delete(v9);
  v10 = *v4;
  if (!*v4)
  {
LABEL_5:
    v11 = *v2;
    if (!*v2)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v1[20] = v10;
  operator delete(v10);
  v11 = *v2;
  if (!*v2)
  {
LABEL_6:
    v12 = v1[13];
    if (!v12)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v11);
  v12 = v1[13];
  if (!v12)
  {
LABEL_7:
    v13 = *v5;
    if (!*v5)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v1[14] = v12;
  operator delete(v12);
  v13 = *v5;
  if (!*v5)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  v1[11] = v13;
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::PseudoCosts::GetBoundChanges(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v9 = *(a1 + 16);
  v10 = v9[14];
  v11 = -858993459 * ((v9[15] - v10) >> 3);
  v12 = (v10 + 40 * a2);
  if (a2 >= v11)
  {
    v13 = v9 + 9;
  }

  else
  {
    v13 = v12;
  }

  v16 = *v13;
  v15 = v13 + 1;
  v14 = v16;
  if (v16)
  {
    v15 = *v15;
  }

  if ((v14 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v32 = a2;
    v17 = &v15[2 * (v14 >> 1)];
    do
    {
      v18 = *v15;
      v19 = v15[1];
      *(&v33 + 1) = 0;
      v34 = 0.0;
      LODWORD(v33) = v18;
      *(&v33 + 1) = v19 - *(*(*(a1 + 8) + 40) + 8 * v18);
      if (v18 < a4)
      {
        v20 = v19;
        if (v19 < 0x8000000000000003)
        {
          v20 = -INFINITY;
        }

        if (v19 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v20 = INFINITY;
        }

        v34 = fmax(v20 - *(a3 + 8 * v18), 0.0);
      }

      std::vector<operations_research::sat::OrthogonalPackingResult::Item>::push_back[abi:ne200100](a5, &v33);
      v15 += 2;
    }

    while (v15 != v17);
    v9 = *(a1 + 16);
    a2 = v32;
  }

  v21 = v9[22];
  v22 = -858993459 * ((v9[23] - v21) >> 3);
  v23 = v9 + 17;
  v24 = (v21 + 40 * a2);
  if (a2 >= v22)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  v28 = *v25;
  v27 = v25 + 1;
  v26 = v28;
  if (v28)
  {
    v27 = *v27;
  }

  if ((v26 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v29 = &v27[2 * (v26 >> 1)];
    do
    {
      v30 = *v27;
      v31 = v27[1];
      *(&v33 + 1) = 0;
      v34 = 0.0;
      LODWORD(v33) = v30;
      *(&v33 + 1) = v31 - *(*(*(a1 + 8) + 40) + 8 * v30);
      std::vector<operations_research::sat::OrthogonalPackingResult::Item>::push_back[abi:ne200100](a5, &v33);
      *(&v33 + 1) = 0;
      v34 = 0.0;
      LODWORD(v33) = v30 ^ 1;
      *(&v33 + 1) = -v31 - *(*(*(a1 + 8) + 40) + ((v30 ^ 1) << 32 >> 29));
      std::vector<operations_research::sat::OrthogonalPackingResult::Item>::push_back[abi:ne200100](a5, &v33);
      v27 += 2;
    }

    while (v27 != v29);
  }
}

void sub_23CCB156C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double operations_research::sat::PseudoCosts::BeforeTakingDecision(uint64_t a1, int a2, double result)
{
  v5 = *(a1 + 40);
  if (v5 != -1)
  {
    v21 = v3;
    v22 = v4;
    v7 = *(*(a1 + 8) + 40);
    v8 = 8 * v5;
    v9 = *(v7 + v8);
    v10 = -*(v7 + (v8 ^ 8));
    v11 = *(a1 + 32);
    v12 = *v11;
    v13 = v11[1];
    v14 = 0.0;
    for (i = 1; v12 != v13; v14 = v14 + *(v16 + 24320))
    {
      v17 = *v12++;
      v16 = v17;
      if (!*(v17 + 24316))
      {
        i = 0;
      }
    }

    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
    *(a1 + 64) = v14;
    *(a1 + 72) = i;
    operations_research::sat::PseudoCosts::GetBoundChanges(a1, a2, **(a1 + 24), (*(*(a1 + 24) + 8) - **(a1 + 24)) >> 3, &v19);
    v18 = *(a1 + 80);
    if (v18)
    {
      *(a1 + 88) = v18;
      operator delete(v18);
    }

    result = *&v19;
    *(a1 + 80) = v19;
    *(a1 + 96) = v20;
  }

  return result;
}

void operations_research::sat::PseudoCosts::UpdateBoolPseudoCosts(uint64_t result, int *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a4 < 0x8000000000000003)
  {
    v4 = -INFINITY;
  }

  if (a4 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v4 = INFINITY;
  }

  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v4 / a3;
    v8 = 4 * a3;
    do
    {
      v10 = *a2;
      v9 = *(result + 224);
      v11 = (*(result + 232) - v9) >> 4;
      if (*a2 >= v11)
      {
        v12 = v10 + 1;
        if (v12 > v11)
        {
          std::vector<std::array<long long,2ul>>::__append(result + 224, v12 - v11);
          v9 = *(result + 224);
        }

        else if (v12 < v11)
        {
          *(result + 232) = v9 + 16 * v12;
        }
      }

      operations_research::sat::IncrementalAverage::AddData((v9 + 16 * v10), v7);
      ++a2;
      v8 -= 4;
    }

    while (v8);
  }
}

void operations_research::sat::PseudoCosts::AfterTakingDecision(operations_research::sat::PseudoCosts *this, int a2)
{
  v2 = *(this + 10);
  if (v2 == -1)
  {
    return;
  }

  v3 = a2;
  v5 = *(*(this + 1) + 40);
  v6 = 8 * v2;
  v7 = *(v5 + v6);
  v8 = *(v5 + (v6 ^ 8));
  v9 = *(this + 4);
  v11 = *v9;
  v10 = v9[1];
  if (v11 == v10)
  {
    v12 = 0.0;
    if (*(this + 72))
    {
      goto LABEL_12;
    }
  }

  else if (*(this + 72))
  {
    if (v10 - 1 == v11)
    {
      v12 = 0.0;
      v13 = v11;
    }

    else
    {
      v14 = (((v10 - 1) - v11) >> 3) + 1;
      v13 = &v11[v14 & 0x3FFFFFFFFFFFFFFELL];
      v15 = v11 + 1;
      v12 = 0.0;
      v16 = v14 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        v12 = v12 + *(*(v15 - 1) + 24320) + *(*v15 + 24320);
        v15 += 2;
        v16 -= 2;
      }

      while (v16);
      if (v14 == (v14 & 0x3FFFFFFFFFFFFFFELL))
      {
LABEL_12:
        v18 = v12 - *(this + 8);
        v19 = *(this + 6);
        if (v18 <= 0.0)
        {
          v22 = (v7 - v19);
          if (v7 - v19 < 0x8000000000000003)
          {
            v22 = -INFINITY;
          }

          if (v7 - v19 <= 0x7FFFFFFFFFFFFFFDLL)
          {
            v18 = v22;
          }

          else
          {
            v18 = INFINITY;
          }

          if (!a2)
          {
LABEL_14:
            v20 = *(this + 10);
            v21 = *(this + 11);
            if (v20 == v21)
            {
              goto LABEL_40;
            }

            do
            {
LABEL_35:
              v27 = v20[2];
              if (v27 >= 0.000001)
              {
                v28 = *v20;
                v26 = *(this + 25);
                v29 = (*(this + 26) - v26) >> 4;
                if (*v20 >= v29)
                {
                  v30 = v28 + 1;
                  if (v30 > v29)
                  {
                    std::vector<std::array<long long,2ul>>::__append(this + 200, v30 - v29);
                    v26 = *(this + 25);
                  }

                  else if (v30 < v29)
                  {
                    *(this + 26) = v26 + 16 * v30;
                  }
                }

                operations_research::sat::IncrementalAverage::AddData((v26 + 16 * v28), v18 / v27);
              }

              v20 += 3;
            }

            while (v20 != v21);
            goto LABEL_40;
          }
        }

        else if (!a2)
        {
          goto LABEL_14;
        }

        v23 = *(this + 7);
        v24 = v23;
        v25 = -INFINITY;
        if (v23 < 0x8000000000000003)
        {
          v24 = -INFINITY;
        }

        if (v23 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v24 = INFINITY;
        }

        if (v19 >= 0x8000000000000003)
        {
          v25 = v19;
        }

        if (v19 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v25 = INFINITY;
        }

        v18 = v24 - v25 + 1.0;
        v20 = *(this + 10);
        v21 = *(this + 11);
        if (v20 == v21)
        {
          goto LABEL_40;
        }

        goto LABEL_35;
      }
    }

    do
    {
      v17 = *v13++;
      v12 = v12 + *(v17 + 24320);
    }

    while (v13 != v10);
    goto LABEL_12;
  }

LABEL_40:
  if ((v3 & 1) == 0)
  {
    v31 = *(this + 7) + v8 + v7 - *(this + 6);
    if (v31)
    {
      v32 = *(this + 10);
      v33 = *(this + 11);
      if (v32 != v33)
      {
        v34 = v31;
        if (v31 < 0x8000000000000003)
        {
          v34 = -INFINITY;
        }

        if (v31 <= 0x7FFFFFFFFFFFFFFDLL)
        {
          v35 = v34;
        }

        else
        {
          v35 = INFINITY;
        }

        do
        {
          v36 = *(v32 + 1);
          if (v36)
          {
            v37 = *v32;
            v38 = *(this + 22);
            v39 = *v32 | 1;
            if (*v32 >= ((*(this + 23) - v38) >> 4))
            {
              v40 = v39 + 1;
              std::vector<BOOL>::resize(this + 128, v40, 0);
              *&v55 = 0;
              v41 = *(this + 19);
              v42 = (*(this + 20) - v41) >> 3;
              if (v40 <= v42)
              {
                if (v40 < v42)
                {
                  *(this + 20) = v41 + 8 * v40;
                }
              }

              else
              {
                std::vector<double>::__append(this + 152, v40 - v42, &v55);
              }

              v55 = 0uLL;
              v38 = *(this + 22);
              v43 = (*(this + 23) - v38) >> 4;
              if (v40 <= v43)
              {
                if (v40 < v43)
                {
                  *(this + 23) = v38 + 16 * v40;
                }
              }

              else
              {
                std::vector<operations_research::sat::IncrementalAverage>::__append(this + 176, v40 - v43, &v55);
                v38 = *(this + 22);
              }
            }

            v44 = v36;
            if (v36 < 0x8000000000000003)
            {
              v44 = -INFINITY;
            }

            if (v36 > 0x7FFFFFFFFFFFFFFDLL)
            {
              v44 = INFINITY;
            }

            operations_research::sat::IncrementalAverage::AddData((v38 + 16 * v37), v35 / v44);
            v54 = v37 & 0xFFFFFFFE;
            v45 = *(this + 22);
            v46 = (v45 + 16 * (v37 & 0xFFFFFFFE));
            v47 = v45 + 16 * v39;
            if (*(v47 + 8) + *(v46 + 1) >= *(*this + 608))
            {
              v56 = v37 & 0xFFFFFFFE;
              v48 = (*(this + 23) - v45) >> 4;
              if ((v37 & 0xFFFFFFFE) >= v48)
              {
                operations_research::sat::PseudoCosts::AfterTakingDecision(&v56, v48);
              }

              v49 = *v46;
              v56 = v37 | 1;
              if (v39 >= v48)
              {
                operations_research::sat::PseudoCosts::AfterTakingDecision(&v56, v48);
              }

              *(*(this + 19) + 8 * (v37 & 0xFFFFFFFE)) = fmax(v49, 0.000001) * fmax(*v47, 0.000001);
              v50 = *(this + 16);
              v51 = v37 >> 6;
              v52 = 1 << (v37 & 0x3E);
              v53 = *(v50 + 8 * v51);
              if ((v53 & v52) == 0)
              {
                *(v50 + 8 * v51) = v53 | v52;
                std::vector<int>::push_back[abi:ne200100](this + 104, &v54);
              }
            }
          }

          v32 += 6;
        }

        while (v32 != v33);
      }
    }
  }
}

uint64_t operations_research::sat::PseudoCosts::GetBestDecisionVar(operations_research::sat::PseudoCosts *this)
{
  v1 = *(this + 13);
  v2 = *(this + 14);
  if (v1 == v2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(*(this + 1) + 40);
  result = 0xFFFFFFFFLL;
  v6 = -INFINITY;
  do
  {
    if (*(v4 + 8 * *v1) < -*(v4 + ((8 * *v1) ^ 8)) && *(*(this + 19) + 8 * *v1) > v6)
    {
      v6 = *(*(this + 19) + 8 * *v1);
      result = *v1;
    }

    ++v1;
  }

  while (v1 != v2);
  if (result != -1)
  {
    v11 = result;
    v8 = this + 176;
    v7 = *(this + 22);
    v9 = (*(v8 + 1) - v7) >> 4;
    if (result >= v9)
    {
      operations_research::sat::PseudoCosts::AfterTakingDecision(&v11, v9);
    }

    v10 = *(v7 + 16 * result);
    v11 = result ^ 1;
    if ((result ^ 1) >= v9)
    {
      operations_research::sat::PseudoCosts::AfterTakingDecision(&v11, v9);
    }

    if (v10 < *(v7 + 16 * (result ^ 1)))
    {
      return result ^ 1;
    }
  }

  return result;
}

void std::vector<operations_research::sat::IncrementalAverage>::__append(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 4)
  {
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v13 = 16 * a2;
      v14 = &v4[a2];
      do
      {
        *v4++ = *a3;
        v13 -= 16;
      }

      while (v13);
      v4 = v14;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + a2;
    if ((v6 + a2) >> 60)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v5 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15 = 16 * v6;
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = 16 * a2;
      v11 = (16 * v6);
      v12 = v15 + 16 * a2;
      do
      {
        *v11++ = *a3;
        v10 -= 16;
      }

      while (v10);
    }

    else
    {
      v12 = 16 * v6;
    }

    v16 = *a1;
    v17 = *(a1 + 8) - *a1;
    v18 = v15 - v17;
    memcpy((v15 - v17), *a1, v17);
    *a1 = v18;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v5, a2, 58);
}

unint64_t operations_research::RationalApproximation(operations_research *this, double a2, double a3)
{
  v3 = fabs(a2);
  v4 = vcvtmd_s64_f64(v3);
  if ((v4 & 0x8000000000000000) != 0)
  {
    if (a2 >= 0.0)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    v7 = v4;
    v8 = v3;
    v9 = 1;
    do
    {
      v10 = v4;
      v11 = v6;
      if (vabdd_f64(v3 * v6, v4) <= v3 * v6 * a3)
      {
        break;
      }

      v8 = 1.0 / (v8 - v7);
      v7 = vcvtmd_s64_f64(v8);
      v4 = v9 + v4 * v7;
      v6 = v5 + v6 * v7;
      v9 = v10;
      v5 = v11;
    }

    while (((v4 | v6) & 0x8000000000000000) == 0);
    if (a2 >= 0.0)
    {
      return v10;
    }

    else
    {
      return -v10;
    }
  }
}

void operations_research::sat::RestartPolicy::Reset(operations_research::sat::RestartPolicy *this, uint64_t a2)
{
  *(this + 4) = 0;
  *(this + 7) = 0;
  v3 = *this;
  v4 = *(*this + 228);
  *(this + 5) = v4;
  *(this + 6) = v4;
  *(this + 14) = 0;
  *(this + 15) = *(v3 + 440);
  *(this + 16) = *(v3 + 516);
  *(this + 21) = 0;
  *(this + 68) = 0;
  *(this + 76) = 0;
  v5 = *(this + 12);
  v6 = *(this + 13);
  *(this + 16) = 0;
  v7 = (v6 - v5) >> 3;
  if (v7 >= 3)
  {
    do
    {
      operator delete(*v5);
      v8 = *(this + 13);
      v5 = (*(this + 12) + 8);
      *(this + 12) = v5;
      v7 = (v8 - v5) >> 3;
    }

    while (v7 > 2);
  }

  if (v7 == 1)
  {
    v9 = 512;
  }

  else
  {
    if (v7 != 2)
    {
      goto LABEL_8;
    }

    v9 = 1024;
  }

  *(this + 15) = v9;
LABEL_8:
  *(this + 34) = *(*this + 516);
  *(this + 148) = 0;
  *(this + 140) = 0;
  *(this + 39) = 0;
  v10 = *(this + 21);
  v11 = *(this + 22);
  *(this + 25) = 0;
  v12 = (v11 - v10) >> 3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v10);
      v13 = *(this + 22);
      v10 = (*(this + 21) + 8);
      *(this + 21) = v10;
      v12 = (v13 - v10) >> 3;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v14 = 512;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_15;
    }

    v14 = 1024;
  }

  *(this + 24) = v14;
LABEL_15:
  *(this + 52) = *(*this + 544);
  *(this + 220) = 0;
  *(this + 212) = 0;
  *(this + 57) = 0;
  v15 = *(this + 30);
  v16 = *(this + 31);
  *(this + 34) = 0;
  v17 = (v16 - v15) >> 3;
  if (v17 >= 3)
  {
    do
    {
      operator delete(*v15);
      v18 = *(this + 31);
      v15 = (*(this + 30) + 8);
      *(this + 30) = v15;
      v17 = (v18 - v15) >> 3;
    }

    while (v17 > 2);
  }

  if (v17 == 1)
  {
    v19 = 512;
    goto LABEL_21;
  }

  if (v17 == 2)
  {
    v19 = 1024;
LABEL_21:
    *(this + 33) = v19;
  }

  *(this + 5) = *(this + 4);
  v20 = *this;
  if (*(*this + 56) < 1)
  {
    goto LABEL_26;
  }

  v21 = 0;
  do
  {
    LODWORD(__p) = *(*(v20 + 64) + 4 * v21);
    std::vector<int>::push_back[abi:ne200100](this + 32, &__p);
    ++v21;
    v20 = *this;
  }

  while (v21 < *(*this + 56));
  v22 = *(this + 4);
  v23 = *(this + 5);
  if (v22 == v23)
  {
LABEL_26:
    v24 = *(v20 + 168);
    if ((v24 & 3) != 0)
    {
      explicit = v24 & 0xFFFFFFFFFFFFFFFCLL;
    }

    else
    {
      explicit = atomic_load_explicit(&qword_2810BD798, memory_order_acquire);
      if (!explicit)
      {
        explicit = google::protobuf::internal::LazyString::Init(&operations_research::sat::SatParameters::Impl_::_i_give_permission_to_break_this_code_default_default_restart_algorithms_, a2);
      }
    }

    v26 = *(explicit + 23);
    if ((v26 & 0x80u) == 0)
    {
      v27 = explicit;
    }

    else
    {
      v27 = *explicit;
    }

    if ((v26 & 0x80u) != 0)
    {
      v26 = *(explicit + 8);
    }

    v40[0] = v27;
    v40[1] = v26;
    v41 = 44;
    absl::lts_20240722::strings_internal::Splitter<absl::lts_20240722::ByChar,absl::lts_20240722::SkipEmpty,std::string_view>::ConvertToContainer<std::vector<std::string>,std::string,false>::operator()(&__p, v40);
    v29 = __p;
    v30 = v43;
    if (__p != v43)
    {
      do
      {
        while (1)
        {
          v39 = 0;
          v31 = *(v29 + 23);
          if ((v31 & 0x8000000000000000) != 0)
          {
            v32 = *v29;
            v31 = v29[1];
          }

          else
          {
            v32 = v29;
          }

          restarted = operations_research::sat::SatParameters_RestartAlgorithm_descriptor(v28);
          LODWORD(v40[0]) = 0;
          if (!google::protobuf::internal::ParseNamedEnum(restarted, v32, v31, v40, v34))
          {
            break;
          }

          v39 = v40[0];
          std::vector<int>::push_back[abi:ne200100](this + 32, &v39);
          v29 += 3;
          if (v29 == v30)
          {
            goto LABEL_43;
          }
        }

        absl::lts_20240722::log_internal::LogMessage::LogMessage(v40, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/restart.cc", 75);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v40, "Couldn't parse the RestartAlgorithm name: '", 0x2BuLL);
        v35 = absl::lts_20240722::log_internal::LogMessage::operator<<(v40, v29);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v35, "'.", 2uLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v40);
        v29 += 3;
      }

      while (v29 != v30);
LABEL_43:
      v29 = __p;
    }

    if (v29)
    {
      v36 = v43;
      v37 = v29;
      if (v43 != v29)
      {
        do
        {
          v38 = *(v36 - 1);
          v36 -= 3;
          if (v38 < 0)
          {
            operator delete(*v36);
          }
        }

        while (v36 != v29);
        v37 = __p;
      }

      v43 = v29;
      operator delete(v37);
    }

    v22 = *(this + 4);
    v23 = *(this + 5);
  }

  if (v22 == v23)
  {
    std::vector<int>::push_back[abi:ne200100](this + 32, operations_research::sat::SatParameters::NO_RESTART);
  }
}

void sub_23CCB2270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CCB2284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  std::vector<std::string>::~vector[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_23CCB22A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::RestartPolicy::ShouldRestart(operations_research::sat::RestartPolicy *this)
{
  result = 0;
  v3 = *(this + 7);
  v4 = *(this + 4);
  v5 = (*(this + 5) - v4) >> 2;
  v6 = *(v4 + 4 * (v3 % v5));
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v11 = *(this + 25);
      if (*(this + 34) == v11)
      {
        v12 = *(this + 35);
        v13 = 0.0;
        v14 = 0.0;
        if (v12)
        {
          v14 = *(this + 18) / v12;
        }

        if (v11)
        {
          v13 = *(this + 19) / v11;
        }

        if (v14 < *(*this + 552) * v13)
        {
          goto LABEL_25;
        }
      }

      return 0;
    }

    if (v6 != 4)
    {
      return result;
    }

    if (*(this + 15))
    {
      return 0;
    }
  }

  else
  {
    if (v6 != 1)
    {
      if (v6 != 2)
      {
        return result;
      }

      v7 = *(this + 16);
      if (*(this + 16) == v7)
      {
        v8 = *(this + 17);
        v9 = 0.0;
        v10 = 0.0;
        if (v8)
        {
          v10 = *(this + 9) / v8;
        }

        if (v7)
        {
          v9 = *(this + 10) / v7;
        }

        if (v10 >= *(*this + 520) * v9)
        {
          return 0;
        }

        goto LABEL_25;
      }

      return 0;
    }

    if (*(this + 15))
    {
      return 0;
    }

    ++*(this + 14);
  }

LABEL_25:
  v15 = *(this + 5);
  ++*(this + 4);
  if (!v15)
  {
    v16 = v3 + 1;
    *(this + 7) = v16;
    v17 = *(this + 1);
    v18 = *(this + 6) + (*(*this + 232) * *(this + 6));
    *(this + 5) = v18;
    *(this + 6) = v18;
    *(v17 + 280) = *(v4 + 4 * (v16 % v5)) == 1;
  }

  *(this + 10) = 0;
  v19 = *(this + 12);
  v20 = *(this + 13);
  *(this + 16) = 0;
  v21 = (v20 - v19) >> 3;
  if (v21 >= 3)
  {
    do
    {
      operator delete(*v19);
      v22 = *(this + 13);
      v19 = (*(this + 12) + 8);
      *(this + 12) = v19;
      v21 = (v22 - v19) >> 3;
    }

    while (v21 > 2);
  }

  if (v21 == 1)
  {
    v23 = 512;
  }

  else
  {
    if (v21 != 2)
    {
      goto LABEL_34;
    }

    v23 = 1024;
  }

  *(this + 15) = v23;
LABEL_34:
  *(this + 19) = 0;
  v24 = *(this + 21);
  v25 = *(this + 22);
  *(this + 25) = 0;
  v26 = (v25 - v24) >> 3;
  if (v26 >= 3)
  {
    do
    {
      operator delete(*v24);
      v27 = *(this + 22);
      v24 = (*(this + 21) + 8);
      *(this + 21) = v24;
      v26 = (v27 - v24) >> 3;
    }

    while (v26 > 2);
  }

  if (v26 == 1)
  {
    v28 = 512;
  }

  else
  {
    if (v26 != 2)
    {
      goto LABEL_41;
    }

    v28 = 1024;
  }

  *(this + 24) = v28;
LABEL_41:
  v29 = *(*this + 440);
  *(this + 15) = v29;
  result = 1;
  if (*(*(this + 4) + 4 * (*(this + 7) % ((*(this + 5) - *(this + 4)) >> 2))) == 1)
  {
    v30 = *(this + 14) + 1;
    while (v30 >= 3)
    {
      v31 = v30 + 1;
      v32 = __clz(v31);
      v30 = v31 - (1 << (v32 ^ 0x3F));
      if (!v30)
      {
        *(this + 15) = (1 << (62 - v32)) * v29;
        return 1;
      }
    }

    *(this + 15) = v29;
    return 1;
  }

  return result;
}

void operations_research::sat::RestartPolicy::OnConflict(operations_research::sat::RestartPolicy *this, int a2, int a3, int a4)
{
  v8 = *(this + 15);
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v10 < 0 == v9)
  {
    *(this + 15) = v10;
  }

  v11 = *(this + 5);
  v9 = __OFSUB__(v11, 1);
  v12 = v11 - 1;
  if (v12 < 0 == v9)
  {
    *(this + 5) = v12;
  }

  v13 = *(this + 31);
  v14 = *(this + 30);
  ++*(this + 53);
  v46 = a2;
  *(this + 216) = vaddq_f64(*(this + 216), vdupq_lane_s64(COERCE__INT64(a2), 0));
  if (v13 == v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = ((v13 - v14) << 7) - 1;
  }

  v17 = *(this + 33);
  v16 = *(this + 34);
  v18 = v16 + v17;
  if (v15 == v16 + v17)
  {
    std::deque<int>::__add_back_capacity(this + 29);
    v14 = *(this + 30);
    v17 = *(this + 33);
    v16 = *(this + 34);
    v18 = v17 + v16;
  }

  (*(v14 + ((v18 >> 7) & 0x1FFFFFFFFFFFFF8)))[v18 & 0x3FF] = a2;
  *(this + 34) = v16 + 1;
  if (*(this + 52) < v16 + 1)
  {
    *(this + 28) = *(this + 28) - (*(v14 + ((v17 >> 7) & 0x1FFFFFFFFFFFFF8)))[v17 & 0x3FF];
    v19 = v17 + 1;
    *(this + 33) = v19;
    *(this + 34) = v16;
    if (v19 >= 0x800)
    {
      operator delete(*v14);
      *(this + 30) += 8;
      *(this + 33) -= 1024;
    }
  }

  v20 = *(this + 13);
  v21 = *(this + 12);
  ++*(this + 17);
  *(this + 72) = vaddq_f64(*(this + 72), vdupq_lane_s64(COERCE__INT64(a3), 0));
  if (v20 == v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = ((v20 - v21) << 7) - 1;
  }

  v24 = *(this + 15);
  v23 = *(this + 16);
  v25 = v23 + v24;
  if (v22 == v23 + v24)
  {
    std::deque<int>::__add_back_capacity(this + 11);
    v21 = *(this + 12);
    v24 = *(this + 15);
    v23 = *(this + 16);
    v25 = v24 + v23;
  }

  (*(v21 + ((v25 >> 7) & 0x1FFFFFFFFFFFFF8)))[v25 & 0x3FF] = a3;
  *(this + 16) = v23 + 1;
  if (*(this + 16) < v23 + 1)
  {
    *(this + 10) = *(this + 10) - (*(v21 + ((v24 >> 7) & 0x1FFFFFFFFFFFFF8)))[v24 & 0x3FF];
    v26 = v24 + 1;
    *(this + 15) = v26;
    *(this + 16) = v23;
    if (v26 >= 0x800)
    {
      operator delete(*v21);
      *(this + 12) += 8;
      *(this + 15) -= 1024;
    }
  }

  v27 = *(this + 22);
  v28 = *(this + 21);
  ++*(this + 35);
  *(this + 9) = vaddq_f64(*(this + 9), vdupq_lane_s64(COERCE__INT64(a4), 0));
  if (v27 == v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = ((v27 - v28) << 7) - 1;
  }

  v31 = *(this + 24);
  v30 = *(this + 25);
  v32 = v30 + v31;
  if (v29 == v30 + v31)
  {
    std::deque<int>::__add_back_capacity(this + 20);
    v28 = *(this + 21);
    v31 = *(this + 24);
    v30 = *(this + 25);
    v32 = v31 + v30;
  }

  (*(v28 + ((v32 >> 7) & 0x1FFFFFFFFFFFFF8)))[v32 & 0x3FF] = a4;
  *(this + 25) = v30 + 1;
  if (*(this + 34) < v30 + 1)
  {
    *(this + 19) = *(this + 19) - (*(v28 + ((v31 >> 7) & 0x1FFFFFFFFFFFFF8)))[v31 & 0x3FF];
    v33 = v31 + 1;
    *(this + 24) = v33;
    *(this + 25) = v30;
    if (v33 >= 0x800)
    {
      operator delete(*v28);
      *(this + 21) += 8;
      *(this + 24) -= 1024;
    }
  }

  if (*(*this + 254) != 1)
  {
    return;
  }

  if (*(this + 34) != *(this + 50))
  {
    return;
  }

  if (*(this + 16) != *(this + 32))
  {
    return;
  }

  v34 = *(this + 34);
  if (*(this + 52) != v34)
  {
    return;
  }

  v35 = *(*this + 528);
  if (v34)
  {
    if (v35 * (*(this + 28) / v34) >= v46)
    {
      return;
    }
  }

  else if (v35 * 0.0 >= v46)
  {
    return;
  }

  *(this + 10) = 0;
  v36 = *(this + 12);
  v37 = *(this + 13);
  *(this + 16) = 0;
  v38 = (v37 - v36) >> 3;
  if (v38 >= 3)
  {
    do
    {
      operator delete(*v36);
      v39 = *(this + 13);
      v36 = (*(this + 12) + 8);
      *(this + 12) = v36;
      v38 = (v39 - v36) >> 3;
    }

    while (v38 > 2);
  }

  if (v38 == 1)
  {
    v40 = 512;
    goto LABEL_43;
  }

  if (v38 == 2)
  {
    v40 = 1024;
LABEL_43:
    *(this + 15) = v40;
  }

  *(this + 19) = 0;
  v41 = *(this + 21);
  v42 = *(this + 22);
  *(this + 25) = 0;
  v43 = (v42 - v41) >> 3;
  if (v43 >= 3)
  {
    do
    {
      operator delete(*v41);
      v44 = *(this + 22);
      v41 = (*(this + 21) + 8);
      *(this + 21) = v41;
      v43 = (v44 - v41) >> 3;
    }

    while (v43 > 2);
  }

  if (v43 == 1)
  {
    v45 = 512;
  }

  else
  {
    if (v43 != 2)
    {
      return;
    }

    v45 = 1024;
  }

  *(this + 24) = v45;
}

void operations_research::sat::RestartPolicy::InfoString(operations_research::sat::RestartPolicy *this@<X0>, std::string *a2@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  *&v41 = *(this + 4);
  v42 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  absl::lts_20240722::str_format_internal::FormatPack("  num restarts: %d\n", 19, &v41, 1uLL, &v37);
  operations_research::ProtoEnumToString<operations_research::sat::SatParameters_RestartAlgorithm>(*(*(this + 4) + 4 * (*(this + 7) % ((*(this + 5) - *(this + 4)) >> 2))), &v34);
  v41 = COERCE_DOUBLE(&v34);
  v42 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  absl::lts_20240722::str_format_internal::FormatPack("  current_strategy: %s\n", 23, &v41, 1uLL, v35);
  if ((v36 & 0x80u) == 0)
  {
    v4 = v35;
  }

  else
  {
    v4 = v35[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v5 = v36;
  }

  else
  {
    v5 = v35[1];
  }

  v6 = std::string::append(&v37, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = *(this + 17);
  if (v8)
  {
    v9 = *(this + 9) / v8;
    v10 = *(this + 16);
    if (v10 == 0.0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = 0.0;
  v10 = *(this + 16);
  if (v10 != 0.0)
  {
LABEL_9:
    v10 = *(this + 10) / *&v10;
  }

LABEL_10:
  v41 = v9;
  v42 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  v43 = v10;
  v44 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  absl::lts_20240722::str_format_internal::FormatPack("  conflict decision level avg: %f window: %f\n", 45, &v41, 2uLL, v32);
  if ((v33 & 0x80u) == 0)
  {
    v11 = v32;
  }

  else
  {
    v11 = v32[0];
  }

  if ((v33 & 0x80u) == 0)
  {
    v12 = v33;
  }

  else
  {
    v12 = v32[1];
  }

  v13 = std::string::append(&v38, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = *(this + 35);
  if (v15)
  {
    v16 = *(this + 18) / v15;
    v17 = *(this + 25);
    if (v17 == 0.0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v16 = 0.0;
  v17 = *(this + 25);
  if (v17 != 0.0)
  {
LABEL_18:
    v17 = *(this + 19) / *&v17;
  }

LABEL_19:
  v41 = v16;
  v42 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  v43 = v17;
  v44 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  absl::lts_20240722::str_format_internal::FormatPack("  conflict lbd avg: %f window: %f\n", 34, &v41, 2uLL, v30);
  if ((v31 & 0x80u) == 0)
  {
    v18 = v30;
  }

  else
  {
    v18 = v30[0];
  }

  if ((v31 & 0x80u) == 0)
  {
    v19 = v31;
  }

  else
  {
    v19 = v30[1];
  }

  v20 = std::string::append(&v39, v18, v19);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = *(this + 53);
  if (v22)
  {
    v23 = *(this + 27) / v22;
    v24 = *(this + 34);
    if (v24 == 0.0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v23 = 0.0;
  v24 = *(this + 34);
  if (v24 != 0.0)
  {
LABEL_27:
    v24 = *(this + 28) / *&v24;
  }

LABEL_28:
  v41 = v23;
  v42 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  v43 = v24;
  v44 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  absl::lts_20240722::str_format_internal::FormatPack("  conflict trail size avg: %f window: %f\n", 41, &v41, 2uLL, __p);
  if ((v29 & 0x80u) == 0)
  {
    v25 = __p;
  }

  else
  {
    v25 = __p[0];
  }

  if ((v29 & 0x80u) == 0)
  {
    v26 = v29;
  }

  else
  {
    v26 = __p[1];
  }

  v27 = std::string::append(&v40, v25, v26);
  *a2 = *v27;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (v29 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_36:
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_52;
    }
  }

  else if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(v40.__r_.__value_.__l.__data_);
  if ((v31 & 0x80000000) == 0)
  {
LABEL_37:
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_53;
  }

LABEL_52:
  operator delete(v30[0]);
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_38:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_54;
  }

LABEL_53:
  operator delete(v39.__r_.__value_.__l.__data_);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_39:
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_55;
  }

LABEL_54:
  operator delete(v32[0]);
  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_40:
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_56;
  }

LABEL_55:
  operator delete(v38.__r_.__value_.__l.__data_);
  if ((v36 & 0x80000000) == 0)
  {
LABEL_41:
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_57;
  }

LABEL_56:
  operator delete(v35[0]);
  if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_42:
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_58:
    operator delete(v37.__r_.__value_.__l.__data_);
    return;
  }

LABEL_57:
  operator delete(v34.__r_.__value_.__l.__data_);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_58;
  }
}