void std::vector<absl::lts_20240722::InlinedVector<operations_research::sat::IntegerLiteral,2ul,std::allocator<operations_research::sat::IntegerLiteral>>>::__append(void ***a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * (v4 - v3) >= a2)
  {
    if (!(40 * a2))
    {
LABEL_27:
      a1[1] = v3;
      return;
    }

    v16 = &v3[5 * a2];
    v17 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v17)
    {
      v18 = v17 + 1;
      v19 = (v17 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v20 = &v3[5 * v19];
      v21 = v19;
      do
      {
        *v3 = 0;
        v3[5] = 0;
        v3 += 10;
        v21 -= 2;
      }

      while (v21);
      if (v18 == v19)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v20 = a1[1];
    }

    do
    {
      *v20 = 0;
      v20 += 5;
    }

    while (v20 != v16);
LABEL_26:
    v3 = v16;
    goto LABEL_27;
  }

  v5 = 0xCCCCCCCCCCCCCCCDLL * (v3 - *a1);
  v6 = v5 + a2;
  if (v5 + a2 > 0x666666666666666)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = 0xCCCCCCCCCCCCCCCDLL * (v4 - *a1);
  if (2 * v7 > v6)
  {
    v6 = 2 * v7;
  }

  if (v7 >= 0x333333333333333)
  {
    v8 = 0x666666666666666;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x666666666666666)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v22 = 40 * v5;
  if (40 * a2)
  {
    v9 = v22 + 40 * a2;
    v10 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v10)
    {
      v11 = v10 + 1;
      v12 = (v10 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v13 = (v22 + 40 * v12);
      v14 = v22;
      v15 = v12;
      do
      {
        *v14 = 0;
        v14[5] = 0;
        v14 += 10;
        v15 -= 2;
      }

      while (v15);
      if (v11 == v12)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v13 = v22;
    }

    do
    {
      *v13 = 0;
      v13 += 5;
    }

    while (v13 != v9);
  }

  else
  {
    v9 = 40 * v5;
  }

LABEL_30:
  v23 = *a1;
  v24 = a1[1];
  v25 = (v22 + *a1 - v24);
  if (v24 != *a1)
  {
    v26 = *a1;
    v27 = v25;
    do
    {
      *v27 = 0;
      *v27 = *v26;
      v28 = *(v26 + 1);
      *(v27 + 3) = *(v26 + 3);
      *(v27 + 1) = v28;
      *v26 = 0;
      v26 += 5;
      v27 += 5;
    }

    while (v26 != v24);
    do
    {
      if (*v23)
      {
        operator delete(v23[1]);
      }

      v23 += 5;
    }

    while (v23 != v24);
    v23 = *a1;
  }

  *a1 = v25;
  a1[1] = v9;
  a1[2] = 0;
  if (v23)
  {

    operator delete(v23);
  }
}

void absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::IntegerLiteral,2ul,std::allocator<operations_research::sat::IntegerLiteral>>::EmplaceBackSlow<operations_research::sat::IntegerLiteral const&>(void *a1, _OWORD *a2)
{
  if ((*a1 & 1) != 0 && ((a1[2] >> 59) & 0xFLL) != 0)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  operator new();
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const,operations_research::sat::Literal>>>::EmplaceDecomposable::operator()<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::piecewise_construct_t const&,std::tuple<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>&&>,std::tuple<operations_research::sat::Literal&&>>@<Q0>(unint64_t **a1@<X0>, unsigned int *a2@<X1>, __n128 **a3@<X3>, unsigned __int32 **a4@<X4>, uint64_t a5@<X8>)
{
  v5 = 0;
  v6 = *a1;
  _X10 = (*a1)[2];
  __asm { PRFM            #4, [X10] }

  v12 = *a2;
  v13 = *(a2 + 1);
  v14 = v13 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12)));
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
      v22 = v6[3] + 24 * v21;
      if (*v22 == v12 && *(v22 + 8) == v13)
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

    inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(v6, v15, (v18 + (__clz(__rbit64(v24)) >> 3)) & v16, v5, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const,operations_research::sat::Literal>>>::GetPolicyFunctions(void)::value);
    v29 = (v6[3] + 24 * inserted);
    *a5 = v6[2] + inserted;
    *(a5 + 8) = v29;
    *(a5 + 16) = 1;
    v30 = *a4;
    result = **a3;
    *v29 = result;
    v29[1].n128_u32[0] = *v30;
  }

  return result;
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const,operations_research::sat::Literal>>>::transfer_slot_fn(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

void absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::ValueLiteralPair,2ul,std::allocator<operations_research::sat::ValueLiteralPair>>::EmplaceBackSlow<operations_research::sat::ValueLiteralPair>(void *a1, _OWORD *a2)
{
  if ((*a1 & 1) != 0 && ((a1[2] >> 59) & 0xFLL) != 0)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  operator new();
}

void std::vector<absl::lts_20240722::InlinedVector<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,2ul,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>>::__append(void ***a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * (v4 - v3) >= a2)
  {
    if (!(40 * a2))
    {
LABEL_27:
      a1[1] = v3;
      return;
    }

    v16 = &v3[5 * a2];
    v17 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v17)
    {
      v18 = v17 + 1;
      v19 = (v17 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v20 = &v3[5 * v19];
      v21 = v19;
      do
      {
        *v3 = 0;
        v3[5] = 0;
        v3 += 10;
        v21 -= 2;
      }

      while (v21);
      if (v18 == v19)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v20 = a1[1];
    }

    do
    {
      *v20 = 0;
      v20 += 5;
    }

    while (v20 != v16);
LABEL_26:
    v3 = v16;
    goto LABEL_27;
  }

  v5 = 0xCCCCCCCCCCCCCCCDLL * (v3 - *a1);
  v6 = v5 + a2;
  if (v5 + a2 > 0x666666666666666)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = 0xCCCCCCCCCCCCCCCDLL * (v4 - *a1);
  if (2 * v7 > v6)
  {
    v6 = 2 * v7;
  }

  if (v7 >= 0x333333333333333)
  {
    v8 = 0x666666666666666;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x666666666666666)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v22 = 40 * v5;
  if (40 * a2)
  {
    v9 = v22 + 40 * a2;
    v10 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v10)
    {
      v11 = v10 + 1;
      v12 = (v10 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v13 = (v22 + 40 * v12);
      v14 = v22;
      v15 = v12;
      do
      {
        *v14 = 0;
        v14[5] = 0;
        v14 += 10;
        v15 -= 2;
      }

      while (v15);
      if (v11 == v12)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v13 = v22;
    }

    do
    {
      *v13 = 0;
      v13 += 5;
    }

    while (v13 != v9);
  }

  else
  {
    v9 = 40 * v5;
  }

LABEL_30:
  v23 = *a1;
  v24 = a1[1];
  v25 = (v22 + *a1 - v24);
  if (v24 != *a1)
  {
    v26 = *a1;
    v27 = v25;
    do
    {
      while (1)
      {
        *v27 = 0;
        v29 = *v26;
        if ((*v26 & 1) == 0)
        {
          break;
        }

        v28 = v26[2];
        v27[1] = v26[1];
        v27[2] = v28;
        *v27 = *v26 | 1;
        v27 += 5;
        *v26 = 0;
        v26 += 5;
        if (v26 == v24)
        {
          goto LABEL_41;
        }
      }

      v30 = 0;
      if (v29)
      {
        v31 = v29 >> 1;
        do
        {
          *(v27 + v30 + 8) = *(v26 + v30 + 8);
          v30 += 16;
          --v31;
        }

        while (v31);
        v30 = *v26 & 0xFFFFFFFFFFFFFFFELL;
      }

      *v27 = v30;
      v27 += 5;
      v26 += 5;
    }

    while (v26 != v24);
    do
    {
LABEL_41:
      if (*v23)
      {
        operator delete(v23[1]);
      }

      v23 += 5;
    }

    while (v23 != v24);
    v23 = *a1;
  }

  *a1 = v25;
  a1[1] = v9;
  a1[2] = 0;
  if (v23)
  {

    operator delete(v23);
  }
}

void std::vector<operations_research::sat::IntegerLiteral>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v4 + 16 * a2;
      if (((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_36;
      }

      v15 = ((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v16 = v4 + 16 * (v15 & 0x1FFFFFFFFFFFFFFELL);
      v17 = v4 + 16;
      v18 = v15 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v17 - 16) = -1;
        *v17 = -1;
        *(v17 - 8) = 0;
        *(v17 + 8) = 0;
        v17 += 32;
        v18 -= 2;
      }

      while (v18);
      v4 = v16;
      if (v15 != (v15 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_36:
        do
        {
          *v4 = -1;
          *(v4 + 8) = 0;
          v4 += 16;
        }

        while (v4 != v14);
      }

      v4 = v14;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 4;
    v6 = v5 + a2;
    if ((v5 + a2) >> 60)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    if (v7 >> 3 > v6)
    {
      v6 = v7 >> 3;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v8 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v19 = 16 * v5;
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v19 + 16 * a2;
      v10 = 16 * v5;
      if (((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_37;
      }

      v11 = ((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = v19 + 16 * (v11 & 0x1FFFFFFFFFFFFFFELL);
      v12 = v19 + 16;
      v13 = v11 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v12 - 16) = -1;
        *v12 = -1;
        *(v12 - 8) = 0;
        *(v12 + 8) = 0;
        v12 += 32;
        v13 -= 2;
      }

      while (v13);
      if (v11 != (v11 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_37:
        do
        {
          *v10 = -1;
          *(v10 + 8) = 0;
          v10 += 16;
        }

        while (v10 != v9);
      }
    }

    else
    {
      v9 = 16 * v5;
    }

    v20 = *a1;
    v21 = *(a1 + 8) - *a1;
    v22 = v19 - v21;
    memcpy((v19 - v21), *a1, v21);
    *a1 = v22;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {

      operator delete(v20);
    }
  }
}

void std::vector<operations_research::Domain>::reserve(void ***a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::find_or_prepare_insert<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>@<X0>(unint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::GetPolicyFunctions(void)::value);
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
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::resize_impl(result, 3uLL);
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

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::resize_impl(unint64_t *a1, unint64_t a2)
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

void std::vector<std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>>::__append(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (a2 > (v5 - v6) >> 5)
  {
    v7 = (v6 - *a1) >> 5;
    if ((v7 + a2) >> 59)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v5 - *a1;
    v9 = v8 >> 4;
    if (v8 >> 4 <= v7 + a2)
    {
      v9 = v7 + a2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v25 = a1;
    if (v10)
    {
      if (!(v10 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = 32 * v7;
    __p = 0;
    v22 = v14;
    v23 = v14;
    v24 = 0;
    if ((a2 & 0x7FFFFFFFFFFFFFFLL) == 0)
    {
LABEL_31:
      v23 = v14;
      std::vector<std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>>::__swap_out_circular_buffer(a1, &__p);
      v18 = v22;
      while (1)
      {
        v19 = v23;
        if (v23 == v18)
        {
          break;
        }

        v23 -= 32;
        v20 = *(v19 - 8);
        if (v20 == v19 - 32)
        {
          (*(*v20 + 32))(v20);
        }

        else if (v20)
        {
          (*(*v20 + 40))(v20);
        }
      }

      if (__p)
      {
        operator delete(__p);
      }

      return;
    }

    v15 = 32 * a2;
    v16 = v14 + 32 * a2;
    while (1)
    {
      v17 = *(a3 + 24);
      if (v17)
      {
        if (v17 == a3)
        {
          *(v14 + 24) = v14;
          (*(**(a3 + 24) + 24))(*(a3 + 24), v14);
          goto LABEL_26;
        }

        v17 = (*(*v17 + 16))(v17);
      }

      *(v14 + 24) = v17;
LABEL_26:
      v14 += 32;
      v15 -= 32;
      if (!v15)
      {
        v14 = v16;
        goto LABEL_31;
      }
    }
  }

  if ((a2 & 0x7FFFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_20;
  }

  v11 = 32 * a2;
  v12 = v6 + 32 * a2;
  do
  {
    v13 = *(a3 + 24);
    if (!v13)
    {
      goto LABEL_14;
    }

    if (v13 != a3)
    {
      v13 = (*(*v13 + 16))(v13);
LABEL_14:
      *(v6 + 24) = v13;
      goto LABEL_15;
    }

    *(v6 + 24) = v6;
    (*(**(a3 + 24) + 24))(*(a3 + 24), v6);
LABEL_15:
    v6 += 32;
    v11 -= 32;
  }

  while (v11);
  v6 = v12;
LABEL_20:
  a1[1] = v6;
}

void sub_23CBFD180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_23CBFD194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v6 = *result;
  v5 = result[1];
  v7 = v5 - *result;
  if (v5 == *result)
  {
    goto LABEL_15;
  }

  v8 = (v4 - 32 * ((v5 - *result) >> 5) + 24);
  v9 = *result;
  do
  {
    v11 = *(v9 + 24);
    v10 = v8;
    if (!v11)
    {
      goto LABEL_4;
    }

    if (v9 != v11)
    {
      *v8 = v11;
      v10 = (v9 + 24);
LABEL_4:
      *v10 = 0;
      goto LABEL_5;
    }

    *v8 = v8 - 3;
    (*(**(v9 + 24) + 24))();
LABEL_5:
    v9 += 32;
    v8 += 4;
  }

  while (v9 != v5);
  v12 = v6;
  do
  {
    result = v6[3];
    if (v6 == result)
    {
      result = (*(*result + 32))(result);
    }

    else if (result)
    {
      result = (*(*result + 40))(result);
    }

    v6 += 4;
    v12 += 4;
  }

  while (v6 != v5);
LABEL_15:
  a2[1] = v4 - v7;
  v13 = *v3;
  *v3 = v4 - v7;
  v3[1] = v13;
  a2[1] = v13;
  v14 = v3[1];
  v3[1] = a2[2];
  a2[2] = v14;
  v15 = v3[2];
  v3[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    while (1)
    {
      *(a1 + 16) = i - 32;
      v4 = *(i - 8);
      if (v4 != i - 32)
      {
        break;
      }

      (*(*v4 + 32))(v4);
      i = *(a1 + 16);
      if (i == v3)
      {
        goto LABEL_8;
      }
    }

    if (v4)
    {
      (*(*v4 + 40))(v4);
    }
  }

LABEL_8:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__function::__value_func<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_23CBFD670(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

char *std::vector<operations_research::sat::IntegerLiteral>::__insert_with_size[abi:ne200100]<operations_research::sat::IntegerLiteral const*,operations_research::sat::IntegerLiteral const*>(uint64_t *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __dst;
  }

  v6 = __src;
  v8 = a1[1];
  v7 = a1[2];
  if (a5 <= (v7 - v8) >> 4)
  {
    v13 = v8 - __dst;
    v14 = (v8 - __dst) >> 4;
    if (v14 >= a5)
    {
      v13 = 16 * a5;
      v24 = &__dst[16 * a5];
      v25 = &v8[-16 * a5];
      for (i = a1[1]; v25 < v8; ++i)
      {
        v27 = *v25;
        v25 += 16;
        *i = v27;
      }

      a1[1] = i;
      if (v8 != v24)
      {
        v28 = v8 - v24;
        v29 = a5;
        memmove(&__dst[16 * a5], __dst, v28);
        a5 = v29;
      }

      if ((a5 & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        return __dst;
      }
    }

    else
    {
      v15 = &__src[v13];
      v16 = a1[1];
      for (j = v16; v15 != a4; v16 += 16)
      {
        v18 = *v15;
        v15 += 16;
        *j = v18;
        j += 16;
      }

      a1[1] = v16;
      if (v14 < 1)
      {
        return __dst;
      }

      v19 = &__dst[16 * a5];
      v20 = &v16[-16 * a5];
      for (k = v16; v20 < v8; k += 16)
      {
        v22 = *v20;
        v20 += 16;
        *k = v22;
      }

      a1[1] = k;
      if (j != v19)
      {
        memmove(&__dst[16 * a5], __dst, v16 - v19);
      }

      if (v8 == __dst)
      {
        return __dst;
      }
    }

    memmove(__dst, v6, v13);
    return __dst;
  }

  v9 = *a1;
  v10 = a5 + (&v8[-*a1] >> 4);
  if (v10 >> 60)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v11 = v7 - v9;
  if (v11 >> 3 > v10)
  {
    v10 = v11 >> 3;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF0)
  {
    v12 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v30 = 16 * ((__dst - v9) >> 4);
  v31 = v30;
  if ((a5 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    v32 = 16 * a5;
    v33 = v30;
    v31 = (v30 + 16 * a5);
    do
    {
      v34 = *v6;
      v6 += 16;
      *v33++ = v34;
      v32 -= 16;
    }

    while (v32);
  }

  v35 = a1[1] - __dst;
  memcpy(v31, __dst, v35);
  v37 = &v31[v35];
  a1[1] = __dst;
  v38 = *a1;
  v39 = &__dst[-*a1];
  v40 = v30 - v39;
  memcpy((v30 - v39), *a1, v39);
  *a1 = v40;
  a1[1] = v37;
  a1[2] = 0;
  if (v38)
  {
    operator delete(v38);
  }

  return v30;
}

void *operations_research::RevRepository<int>::~RevRepository(void *a1)
{
  *a1 = &unk_284F42178;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void operations_research::sat::RevIntRepository::~RevIntRepository(operations_research::sat::RevIntRepository *this)
{
  *this = &unk_284F42178;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::RevRepository<int>::SetLevel(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) - v2;
  if ((v3 >> 2) != a2)
  {
    ++*(a1 + 8);
    v4 = a2;
    if ((v3 >> 2) <= a2)
    {
      __x = (*(a1 + 48) - *(a1 + 40)) >> 4;
      v10 = v3 >> 2;
      v11 = a2 - v10;
      if (v4 <= v10)
      {
        if (v4 < v10)
        {
          *(a1 + 24) = v2 + 4 * v4;
        }
      }

      else
      {
        std::vector<int>::__append((a1 + 16), v11, &__x);
      }
    }

    else
    {
      v5 = (v2 + 4 * a2);
      v6 = *v5;
      v7 = v3 >> 2;
      v8 = a2 - v7;
      if (v4 <= v7)
      {
        if (v4 < v7)
        {
          *(a1 + 24) = v5;
        }
      }

      else
      {
        v9 = a1;
        std::vector<int>::__append((a1 + 16), v8);
        a1 = v9;
      }

      v12 = *(a1 + 40);
      v13 = (*(a1 + 48) - v12) >> 4;
      for (i = v13 - 1; i >= v6; --i)
      {
        **(v12 + 16 * i) = *(v12 + 16 * i + 8);
      }

      if (v6 <= v13)
      {
        if (v6 < v13)
        {
          *(a1 + 48) = v12 + 16 * v6;
        }
      }

      else
      {
        v15 = a1 + 40;

        std::vector<std::pair<int *,int>>::__append(v15, v6 - v13);
      }
    }
  }
}

void std::vector<std::pair<int *,int>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v4 + 16 * a2;
      if (((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_36;
      }

      v15 = ((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v16 = v4 + 16 * (v15 & 0x1FFFFFFFFFFFFFFELL);
      v17 = v4 + 16;
      v18 = v15 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v17 - 16) = 0;
        *v17 = 0;
        *(v17 - 8) = 0;
        *(v17 + 8) = 0;
        v17 += 32;
        v18 -= 2;
      }

      while (v18);
      v4 = v16;
      if (v15 != (v15 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_36:
        do
        {
          *v4 = 0;
          *(v4 + 8) = 0;
          v4 += 16;
        }

        while (v4 != v14);
      }

      v4 = v14;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 4;
    v6 = v5 + a2;
    if ((v5 + a2) >> 60)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    if (v7 >> 3 > v6)
    {
      v6 = v7 >> 3;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v8 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v19 = 16 * v5;
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v19 + 16 * a2;
      v10 = 16 * v5;
      if (((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_37;
      }

      v11 = ((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = v19 + 16 * (v11 & 0x1FFFFFFFFFFFFFFELL);
      v12 = v19 + 16;
      v13 = v11 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v12 - 16) = 0;
        *v12 = 0;
        *(v12 - 8) = 0;
        *(v12 + 8) = 0;
        v12 += 32;
        v13 -= 2;
      }

      while (v13);
      if (v11 != (v11 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_37:
        do
        {
          *v10 = 0;
          *(v10 + 8) = 0;
          v10 += 16;
        }

        while (v10 != v9);
      }
    }

    else
    {
      v9 = 16 * v5;
    }

    v20 = *a1;
    v21 = *(a1 + 8) - *a1;
    v22 = v19 - v21;
    memcpy((v19 - v21), *a1, v21);
    *a1 = v22;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {

      operator delete(v20);
    }
  }
}

void *operations_research::sat::Model::Delete<operations_research::sat::RevIntRepository>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F421A0;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::RevIntRepository>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F421A0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void std::vector<std::deque<int>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 4) >= a2)
  {
    v10 = 48 * a2;
    if (48 * a2)
    {
      bzero(*(a1 + 8), 48 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v6 = v5 + a2;
    if (v5 + a2 > 0x555555555555555)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x2AAAAAAAAAAAAAALL)
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

    v11 = 48 * v5;
    v12 = 48 * a2;
    if (48 * a2)
    {
      bzero(v11, v12);
      v9 = v11 + v12;
    }

    else
    {
      v9 = v11;
    }

    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = (v11 - v14);
    memcpy(v15, *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearConstraintPropagator<true>::Shared>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::LinearConstraintPropagator<true>::Shared>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::LinearConstraintPropagator<true>::Shared>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::LinearConstraintPropagator<true>::Shared>(void)::d)
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
        operations_research::sat::Model::MyNew<operations_research::sat::LinearConstraintPropagator<true>::Shared>(a1);
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::LinearConstraintPropagator<true>::Shared>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::LinearConstraintPropagator<true>::Shared>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void operations_research::sat::LinearConstraintPropagator<true>::LinearConstraintPropagator(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a2 + 8);
  *a1 = &unk_284F421D8;
  *(a1 + 8) = v5;
  *(a1 + 16) = operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearConstraintPropagator<true>::Shared>(a3);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = *(a2 + 16);
  v6 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a1 + 48) = v6;
  operator new[]();
}

void sub_23CBFE410(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  *(v1 + 56) = 0;
  if (v3)
  {
    MEMORY[0x23EED9440](v3, 0x1000C8000313F17);
    v4 = *(v1 + 48);
    *(v1 + 48) = 0;
    if (!v4)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v4 = *(v1 + 48);
    *(v1 + 48) = 0;
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  MEMORY[0x23EED9440](v4, 0x1000C8052888210);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::LinearConstraintPropagator<true>::Propagate(uint64_t a1)
{
  v84 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  if (v2 != v3)
  {
    v4 = 0;
    v5 = -1;
    while (1)
    {
      v6 = *v2;
      v7 = v6 ^ 1;
      v8 = *(*(**(a1 + 16) + 8) + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8));
      if ((v8 >> (v7 & 0x3F ^ 1u)))
      {
        return 1;
      }

      if ((v8 & (1 << (v7 & 0x3F))) == 0)
      {
        v5 = v7;
        ++v4;
      }

      if (++v2 == v3)
      {
        if (v4 > 1)
        {
          return 1;
        }

        v9 = v5 ^ 1;
        v10 = *(a1 + 44);
        v11 = *(a1 + 40);
        if (v11 < v10)
        {
          goto LABEL_11;
        }

        goto LABEL_9;
      }
    }
  }

  v4 = 0;
  v9 = -2;
  v10 = *(a1 + 44);
  v11 = *(a1 + 40);
  if (v11 >= v10)
  {
LABEL_9:
    v12 = 0;
    v13 = 0;
    v14 = *(a1 + 16);
    goto LABEL_18;
  }

LABEL_11:
  v16 = *(a1 + 48);
  v15 = *(a1 + 56);
  v14 = *(a1 + 16);
  v17 = *(*(v14 + 8) + 40);
  v18 = v10 - v11;
  if (v18 <= 1)
  {
    v12 = 0;
    v13 = 0;
    v19 = v11;
LABEL_16:
    v35 = (v16 + 4 * v19);
    v36 = v10 - v19;
    v37 = (v15 + 8 * v19);
    do
    {
      v39 = *v37++;
      v38 = v39;
      LODWORD(v39) = *v35++;
      v40 = *(v17 + 8 * v39);
      v41 = (v40 * v38) >> 64;
      v42 = v40 * v38;
      v33 = __CFADD__(v42, v12);
      v12 += v42;
      v13 += v33 + v41;
      --v36;
    }

    while (v36);
    goto LABEL_18;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v19 = (v18 & 0xFFFFFFFFFFFFFFFELL) + v11;
  v24 = (v15 + 8 * v11 + 8);
  v25 = (v16 + 4 * v11);
  v26 = v18 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    v27 = *(v24 - 1);
    v28 = *v25++;
    v29 = vshrq_n_s64(vshll_n_s32(v28, 0x20uLL), 0x1DuLL);
    v30 = *(v17 + v29.i64[0]);
    v31 = (v30 * v27) >> 64;
    v32 = v30 * v27;
    v33 = __CFADD__(v32, v20);
    v20 += v32;
    v21 += v33 + v31;
    v34 = *(v17 + v29.i64[1]) * *v24 + v22;
    v23 = (*(v17 + v29.i64[1]) * *v24 + __PAIR128__(v23, v22)) >> 64;
    v22 = v34;
    v24 += 2;
    v26 -= 2;
  }

  while (v26);
  v33 = __CFADD__(v34, v20);
  v12 = v34 + v20;
  v13 = v21 + v33 + v23;
  if (v18 != (v18 & 0xFFFFFFFFFFFFFFFELL))
  {
    goto LABEL_16;
  }

LABEL_18:
  *(*(v14 + 16) + 112) = (v10 - v11) * 0.000000005 + *(*(v14 + 16) + 112);
  v43 = *(a1 + 8) - __PAIR128__(v13, v12);
  if ((*(&v43 + 1) & 0x8000000000000000) != 0)
  {
    if (v43 <= 0x8000000000000002)
    {
      v57 = 0x8000000000000002;
    }

    else
    {
      v57 = *(a1 + 8) - v12;
    }

    if (*(&v43 + 1) == -1)
    {
      v58 = v57;
    }

    else
    {
      v58 = 0x8000000000000002;
    }

    *(v14 + 48) = *(v14 + 40);
    v59 = *(v14 + 64);
    *(v14 + 72) = v59;
    if (v10 < 1)
    {
      v69 = v59;
    }

    else
    {
      v60 = 0;
      for (i = 0; i < v10; ++i)
      {
        v62 = *(*(a1 + 48) + 4 * i);
        v63 = *(a1 + 16);
        v64 = *(v63 + 8);
        v65 = *(*(v64 + 64) + 4 * v62);
        v67 = v64 + 40;
        v66 = *(v64 + 40);
        if (v65 >= (*(v67 + 8) - v66) >> 3)
        {
          v68 = *(v66 + 8 * v62);
          *&v81 = *(*(a1 + 48) + 4 * i);
          *(&v81 + 1) = v68;
          std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v63 + 40, &v81);
          std::vector<long long>::push_back[abi:ne200100](*(a1 + 16) + 64, (*(a1 + 56) + v60));
          v10 = *(a1 + 44);
        }

        v60 += 8;
      }

      v14 = *(a1 + 16);
      v69 = *(v14 + 64);
      v59 = *(v14 + 72);
    }

    operations_research::sat::IntegerTrail::RelaxLinearReason(*(v14 + 8), ~v58, v69, (v59 - v69) >> 3, (v14 + 40));
    if (v4 == 1)
    {
      v71 = *(a1 + 72);
      v70 = *(a1 + 80);
      v72 = v70 - v71;
      if (v70 != v71)
      {
        if ((v72 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (4 != v72)
      {
        memmove((v71 - v70), (4 - (v70 - v71)), v70 - v71 - 4);
      }

      operations_research::sat::IntegerTrail::EnqueueLiteral(*(*(a1 + 16) + 8), v9, v72, (-v72 - 4) >> 2, *(*(a1 + 16) + 40), (*(*(a1 + 16) + 48) - *(*(a1 + 16) + 40)) >> 4);
      return 1;
    }

    v73 = *(a1 + 16);
    v74 = v73[1];
    v75 = *(a1 + 72);
    v76 = *(a1 + 80);
    v77 = v73[5];
    v78 = v73[6];
    v79 = *(v74 + 840);
    *(v79 + 120) = 0;
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((v79 + 72), v75, v76, (v76 - v75) >> 2);
    operations_research::sat::IntegerTrail::MergeReasonInto(v74, v77, (v78 - v77) >> 4, (v79 + 72));
    return 0;
  }

  else
  {
    result = 1;
    if (v4 != 1 && v11 < v10)
    {
      while (1)
      {
        v45 = *(*(a1 + 56) + 8 * v11);
        v46 = *(*(a1 + 16) + 8);
        v47 = *(v46 + 40);
        v80 = *(*(a1 + 48) + 4 * v11);
        v48 = 8 * v80;
        v49 = *(v47 + v48);
        v50 = __divti3();
        if ((__PAIR128__(v51, v50) + v49) < -*(v47 + (v48 ^ 8)))
        {
          v52 = v49 + v50;
          if (v50 == -1)
          {
            v53 = v51 + 1;
          }

          else
          {
            v53 = v51;
          }

          v54 = (v50 + 1) * v45 + ~v43;
          if ((__PAIR128__(v53, v50 + 1) * v45 + ~v43) >= 0x7FFFFFFFFFFFFFFELL)
          {
            v54 = 0x7FFFFFFFFFFFFFFELL;
          }

          v82[0] = &unk_284F424A8;
          v82[1] = a1;
          if (v52 >= 0x8000000000000002)
          {
            v55 = -v52;
          }

          else
          {
            v55 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v82[2] = v54;
          v83 = v82;
          v56 = operations_research::sat::IntegerTrail::Enqueue(v46, v80 ^ 1, v55, v82);
          if (v83 == v82)
          {
            (*(*v83 + 32))(v83);
            if (!v56)
            {
              return 0;
            }
          }

          else
          {
            if (v83)
            {
              (*(*v83 + 40))();
            }

            if (!v56)
            {
              return 0;
            }
          }

          v10 = *(a1 + 44);
        }

        if (++v11 >= v10)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

void sub_23CBFEAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (v16)
  {
    operator delete(v16);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::LinearConstraintPropagator<true>::PropagateAtLevelZero(uint64_t a1)
{
  if (*(a1 + 72) != *(a1 + 80))
  {
    return 1;
  }

  v3 = *(a1 + 44);
  if (v3 <= 0)
  {
    v9 = 0;
    v10 = 0;
    v6 = *(a1 + 16);
    goto LABEL_12;
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 16);
  v7 = *(*(v6 + 8) + 152);
  if (v3 == 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
LABEL_10:
    v26 = (v5 + 8 * v8);
    v27 = v3 - v8;
    v28 = (v4 + 4 * v8);
    do
    {
      v30 = *v28++;
      v29 = v30;
      v31 = *v26++;
      v32 = *(v7 + 24 * v29);
      v33 = (v32 * v31) >> 64;
      v34 = v32 * v31;
      v25 = __CFADD__(v34, v9);
      v9 += v34;
      v10 += v25 + v33;
      --v27;
    }

    while (v27);
    goto LABEL_12;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v8 = v3 & 0x7FFFFFFE;
  v15 = (v4 + 4);
  v16 = (v5 + 8);
  v17 = v8;
  do
  {
    v18 = *(v7 + 24 * *(v15 - 1));
    v19 = *(v7 + 24 * *v15);
    v20 = *(v16 - 1);
    v21 = (v18 * v20) >> 64;
    v22 = v18 * v20;
    v23 = (v19 * *v16) >> 64;
    v24 = v19 * *v16;
    v25 = __CFADD__(v22, v11);
    v11 += v22;
    v12 += v25 + v21;
    v25 = __CFADD__(v24, v13);
    v13 += v24;
    v14 += v25 + v23;
    v15 += 2;
    v16 += 2;
    v17 -= 2;
  }

  while (v17);
  v25 = __CFADD__(v13, v11);
  v9 = v13 + v11;
  v10 = v12 + v25 + v14;
  if (v8 != v3)
  {
    goto LABEL_10;
  }

LABEL_12:
  *(*(v6 + 16) + 112) = v3 * 0.000000001 + *(*(v6 + 16) + 112);
  if ((((*(a1 + 8) - __PAIR128__(v10, v9)) >> 64) & 0x8000000000000000) != 0)
  {
    v44 = *(v6 + 8);
    v45 = *(v44 + 840);
    *(v45 + 120) = 0;
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((v45 + 72), 0, 0, 0);
    operations_research::sat::IntegerTrail::MergeReasonInto(v44, 0, 0, (v45 + 72));
    return 0;
  }

  else
  {
    if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        v36 = *(*(a1 + 48) + 4 * i);
        v37 = *(*(a1 + 16) + 8);
        v38 = *(v37 + 152);
        v39 = *(v38 + 24 * v36);
        v40 = -*(v38 + 24 * (v36 ^ 1));
        v41 = __divti3();
        if ((__PAIR128__(v42, v41) + v39) < v40)
        {
          if (v39 + v41 >= 0x8000000000000002)
          {
            v43 = -(v39 + v41);
          }

          else
          {
            v43 = 0x7FFFFFFFFFFFFFFFLL;
          }

          result = operations_research::sat::IntegerTrail::Enqueue(v37, v36 ^ 1, v43, 0, 0, 0, 0);
          if (!result)
          {
            return result;
          }

          LODWORD(v3) = *(a1 + 44);
        }
      }
    }

    return 1;
  }
}

unint64_t operations_research::sat::LinearConstraintPropagator<true>::ConditionalLb(uint64_t a1, int a2, uint64_t a3, int a4)
{
  result = 0x8000000000000002;
  v6 = a2 & 0xFFFFFFFE;
  if (v6 == (a4 & 0xFFFFFFFE))
  {
    if (a2 != a4)
    {
      return 1 - a3;
    }
  }

  else
  {
    v7 = *(a1 + 44);
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        v10 |= (a4 ^ v15) == 1;
        v18 = *(*(*(*(a1 + 16) + 8) + 40) + 8 * v15);
        v19 = (v18 * v17) >> 64;
        v20 = v18 * v17;
        v21 = __CFADD__(v20, v11);
        v11 += v20;
        v12 += v21 + v19;
        v22 = v15 & 0xFFFFFFFE;
        v23 = v15 == a2;
        v24 = v6 == v22;
        v25 = v6 == v22;
        if (v24)
        {
          v9 = v23;
        }

        v8 |= v25;
        --v7;
      }

      while (v7);
      if (v8 & v10)
      {
        v26 = *(a1 + 8) - __PAIR128__(v12, v11);
        v27 = *(*(*(a1 + 16) + 8) + 40);
        v28 = 8 * a4;
        result = -*(v27 + (v28 ^ 8));
        if (v26 >= 1)
        {
          v38 = -*(v27 + (v28 ^ 8));
          v29 = result - *(v27 + 8 * a4);
          v30 = __divti3();
          if (__PAIR128__(v31, v30) >= v29)
          {
            v32 = v29;
          }

          else
          {
            v32 = v30;
          }

          v37 = v32;
          if (v9)
          {
            __divti3();
            v33 = v38;
            v34 = v37;
          }

          else
          {
            v35 = __divti3();
            if (__PAIR128__(v36, v35) >= v29)
            {
              v34 = v29;
            }

            else
            {
              v34 = v35;
            }

            v33 = v38;
          }

          return v33 - v34;
        }
      }
    }
  }

  return result;
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::RevIntegerValueRepository>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::RevIntegerValueRepository>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::RevIntegerValueRepository>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::RevIntegerValueRepository>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::RevIntegerValueRepository>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::RevIntegerValueRepository>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void sub_23CBFF224(_Unwind_Exception *a1)
{
  v4 = operations_research::RevRepository<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::~RevRepository(v1);
  MEMORY[0x23EED9460](v4, v2);
  _Unwind_Resume(a1);
}

void operations_research::sat::LinearConstraintPropagator<false>::LinearConstraintPropagator(uint64_t a1, _DWORD *a2, unint64_t a3, const void *a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v9 = a5;
  *a1 = &unk_284F42208;
  *(a1 + 8) = a8;
  *(a1 + 16) = operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearConstraintPropagator<false>::Shared>(a9);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = v9;
  operator new[]();
}

{
  operations_research::sat::LinearConstraintPropagator<false>::LinearConstraintPropagator(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_23CBFF4E8(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    v2[10] = v5;
    operator delete(v5);
    v6 = v2[8];
    v2[8] = 0;
    if (!v6)
    {
LABEL_3:
      v7 = v2[7];
      v2[7] = 0;
      if (!v7)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v6 = v2[8];
    v2[8] = 0;
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  MEMORY[0x23EED9440](v6, 0x1000C8000313F17);
  v7 = v2[7];
  v2[7] = 0;
  if (!v7)
  {
LABEL_4:
    v8 = v2[6];
    v2[6] = 0;
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  MEMORY[0x23EED9440](v7, 0x1000C8000313F17);
  v8 = v2[6];
  v2[6] = 0;
  if (!v8)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  MEMORY[0x23EED9440](v8, v1);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearConstraintPropagator<false>::Shared>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::LinearConstraintPropagator<false>::Shared>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::LinearConstraintPropagator<false>::Shared>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::LinearConstraintPropagator<false>::Shared>(void)::d)
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
        operations_research::sat::Model::MyNew<operations_research::sat::LinearConstraintPropagator<true>::Shared>(a1);
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::LinearConstraintPropagator<false>::Shared>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::LinearConstraintPropagator<false>::Shared>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

uint64_t operations_research::sat::LinearConstraintPropagator<false>::Propagate(uint64_t a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  if (v2 != v3)
  {
    v4 = 0;
    v5 = -1;
    while (1)
    {
      v6 = *v2;
      v7 = v6 ^ 1;
      v8 = *(*(**(a1 + 16) + 8) + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8));
      if ((v8 >> (v7 & 0x3F ^ 1u)))
      {
        return 1;
      }

      if ((v8 & (1 << (v7 & 0x3F))) == 0)
      {
        v5 = v7;
        ++v4;
      }

      if (++v2 == v3)
      {
        if (v4 > 1)
        {
          return 1;
        }

        v9 = v5 ^ 1;
        goto LABEL_10;
      }
    }
  }

  v4 = 0;
  v9 = -2;
LABEL_10:
  v11 = (a1 + 40);
  LODWORD(v10) = *(a1 + 40);
  v13 = (a1 + 32);
  v12 = *(a1 + 32);
  v14 = *(a1 + 44);
  if (v10 >= v14)
  {
    v15 = 0;
    v19 = *(a1 + 16);
  }

  else
  {
    v15 = 0;
    v16 = v10;
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v19 = *(a1 + 16);
    v20 = *(v19[1] + 40);
    do
    {
      while (1)
      {
        v23 = *(v17 + 4 * v16);
        v24 = *(v18 + 8 * v16);
        v25 = 8 * v23;
        v26 = *(v20 + v25);
        v27 = *(v20 + (v25 ^ 8));
        if (v26 + v27)
        {
          break;
        }

        *(v17 + 4 * v16) = *(v17 + 4 * v10);
        *(v17 + 4 * v10) = v23;
        *(v18 + 8 * v16) = *(v18 + 8 * v10);
        *(v18 + 8 * v10) = v24;
        v21 = *(a1 + 64);
        v22 = *(v21 + 8 * v16);
        *(v21 + 8 * v16) = *(v21 + 8 * v10);
        *(v21 + 8 * v10) = v22;
        LODWORD(v10) = v10 + 1;
        v12 += v26 * v24;
        v14 = *(a1 + 44);
        if (++v16 >= v14)
        {
          goto LABEL_17;
        }
      }

      *(*(a1 + 64) + 8 * v16) = (-v27 - v26) * v24;
      v15 += v26 * v24;
      ++v16;
    }

    while (v16 < v14);
  }

LABEL_17:
  *(v19[2] + 112) = (v14 - v10) * 0.000000005 + *(v19[2] + 112);
  if ((*(a1 + 24) & 1) != 0 && v10 != *v11)
  {
    v28 = v19[4];
    if (*(v28 + 16) != *(v28 + 24))
    {
      v29 = *(a1 + 32);
      *&v64 = a1 + 32;
      *(&v64 + 1) = v29;
      std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> *,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::push_back[abi:ne200100](v28 + 40, &v64);
      v19 = *(a1 + 16);
    }

    v30 = v19[3];
    if (*(v30 + 16) != *(v30 + 24))
    {
      *&v64 = a1 + 40;
      DWORD2(v64) = *v11;
      std::vector<std::pair<int *,int>>::push_back[abi:ne200100](v30 + 40, &v64);
    }

    *v11 = v10;
    *v13 = v12;
  }

  v31 = *(a1 + 8) - v15 - v12;
  if (v31 >= 0)
  {
    if (v4 != 1)
    {
      v32 = *(a1 + 44);
      if (v10 < v32)
      {
        v10 = v10;
        while (1)
        {
          if (*(*(a1 + 64) + 8 * v10) > v31)
          {
            v33 = *(*(a1 + 48) + 4 * v10);
            v34 = *(*(a1 + 56) + 8 * v10);
            v35 = *(*(a1 + 16) + 8);
            v36 = v31 / v34 + *(*(v35 + 40) + 8 * v33);
            v37 = v34 + v34 * (v31 / v34) + ~v31;
            v65[0] = &unk_284F42628;
            v65[1] = a1;
            if (v36 >= 0x8000000000000002)
            {
              v38 = -v36;
            }

            else
            {
              v38 = 0x7FFFFFFFFFFFFFFFLL;
            }

            v65[2] = v37;
            v66 = v65;
            v39 = operations_research::sat::IntegerTrail::Enqueue(v35, v33 ^ 1, v38, v65);
            if (v66 == v65)
            {
              (*(*v66 + 32))(v66);
              if (!v39)
              {
                return 0;
              }
            }

            else
            {
              if (v66)
              {
                (*(*v66 + 40))();
              }

              if (!v39)
              {
                return 0;
              }
            }

            v32 = *(a1 + 44);
          }

          if (++v10 >= v32)
          {
            return 1;
          }
        }
      }
    }

    return 1;
  }

  v40 = *(a1 + 16);
  *(v40 + 48) = *(v40 + 40);
  v41 = *(v40 + 64);
  *(v40 + 72) = v41;
  v42 = *(a1 + 44);
  if (v42 < 1)
  {
    v52 = v41;
  }

  else
  {
    v43 = 0;
    for (i = 0; i < v42; ++i)
    {
      v45 = *(*(a1 + 48) + 4 * i);
      v46 = *(a1 + 16);
      v47 = *(v46 + 8);
      v48 = *(*(v47 + 64) + 4 * v45);
      v50 = v47 + 40;
      v49 = *(v47 + 40);
      if (v48 >= (*(v50 + 8) - v49) >> 3)
      {
        v51 = *(v49 + 8 * v45);
        *&v64 = *(*(a1 + 48) + 4 * i);
        *(&v64 + 1) = v51;
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v46 + 40, &v64);
        std::vector<long long>::push_back[abi:ne200100](*(a1 + 16) + 64, (*(a1 + 56) + v43));
        v42 = *(a1 + 44);
      }

      v43 += 8;
    }

    v40 = *(a1 + 16);
    v52 = *(v40 + 64);
    v41 = *(v40 + 72);
  }

  operations_research::sat::IntegerTrail::RelaxLinearReason(*(v40 + 8), ~v31, v52, (v41 - v52) >> 3, (v40 + 40));
  if (v4 == 1)
  {
    v54 = *(a1 + 72);
    v53 = *(a1 + 80);
    v55 = v53 - v54;
    if (v53 != v54)
    {
      if ((v55 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (4 != v55)
    {
      memmove((v54 - v53), (4 - (v53 - v54)), v53 - v54 - 4);
    }

    operations_research::sat::IntegerTrail::EnqueueLiteral(*(*(a1 + 16) + 8), v9, v55, (-v55 - 4) >> 2, *(*(a1 + 16) + 40), (*(*(a1 + 16) + 48) - *(*(a1 + 16) + 40)) >> 4);
    return 1;
  }

  v56 = *(a1 + 16);
  v57 = v56[1];
  v58 = *(a1 + 72);
  v59 = *(a1 + 80);
  v60 = v56[5];
  v61 = v56[6];
  v62 = *(v57 + 840);
  *(v62 + 120) = 0;
  std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((v62 + 72), v58, v59, (v59 - v58) >> 2);
  operations_research::sat::IntegerTrail::MergeReasonInto(v57, v60, (v61 - v60) >> 4, (v62 + 72));
  return 0;
}

void sub_23CBFFD10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    operator delete(v12);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::LinearConstraintPropagator<false>::RegisterWith(uint64_t a1, void *a2)
{
  *(a1 + 24) = 1;
  v4 = operations_research::sat::GenericLiteralWatcher::Register(a2, a1);
  v5 = *(a1 + 44);
  if (v5 >= 1)
  {
    for (i = 0; i < v5; ++i)
    {
      v7 = *(*(a1 + 48) + 4 * i);
      if (v7 != -1)
      {
        v9 = a2[11];
        v8 = a2[12];
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3);
        if (v10 <= v7)
        {
          v11 = v7 + 1;
          if (v11 <= v10)
          {
            if (v11 < v10)
            {
              v12 = v9 + 24 * v11;
              if (v8 != v12)
              {
                v13 = a2[12];
                do
                {
                  v15 = *(v13 - 24);
                  v13 -= 24;
                  v14 = v15;
                  if (v15)
                  {
                    *(v8 - 16) = v14;
                    operator delete(v14);
                  }

                  v8 = v13;
                }

                while (v13 != v12);
              }

              a2[12] = v12;
            }
          }

          else
          {
            std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append((a2 + 11), v11 - v10);
          }
        }

        v31 = v4 | 0xFFFFFFFF00000000;
        v16 = (a2[11] + 24 * v7);
        v17 = v16[1];
        if (*v16 == v17 || *(v17 - 8) != v4 || *(v17 - 4) != -1)
        {
          std::vector<long long>::push_back[abi:ne200100](v16, &v31);
        }

        v5 = *(a1 + 44);
      }
    }
  }

  v19 = *(a1 + 72);
  for (j = *(a1 + 80); v19 != j; ++v19)
  {
    v21 = *v19 ^ 1;
    v23 = a2[8];
    v22 = a2[9];
    v24 = (v22 - v23) >> 3;
    v25 = 0xAAAAAAAAAAAAAAABLL * v24;
    if (v21 >= -1431655765 * v24)
    {
      v26 = v21 + 1;
      if (v26 > v25)
      {
        std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append((a2 + 8), v26 - v25);
      }

      else if (v26 < v25)
      {
        v27 = v23 + 24 * v26;
        if (v22 != v27)
        {
          v28 = a2[9];
          do
          {
            v30 = *(v28 - 24);
            v28 -= 24;
            v29 = v30;
            if (v30)
            {
              *(v22 - 16) = v29;
              operator delete(v29);
            }

            v22 = v28;
          }

          while (v28 != v27);
        }

        a2[9] = v27;
      }
    }

    v20 = a2[8] + 24 * v21;
    v31 = v4 | 0xFFFFFFFF00000000;
    std::vector<long long>::push_back[abi:ne200100](v20, &v31);
  }
}

uint64_t operations_research::sat::LevelZeroEquality::LevelZeroEquality(uint64_t a1, unsigned int a2, void *a3, void *a4, void *a5)
{
  *a1 = &unk_284F42238;
  *(a1 + 16) = 0;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v8 = a3[1];
  if (v8 != *a3)
  {
    if (((v8 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v9 = a4[1] - *a4;
  if (v9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 64) = 1;
  *(a1 + 72) = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a5);
  *(a1 + 80) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a5);
  v10 = operations_research::sat::Model::GetOrCreate<operations_research::sat::GenericLiteralWatcher>(a5);
  v11 = operations_research::sat::GenericLiteralWatcher::Register(v10, a1);
  operations_research::sat::GenericLiteralWatcher::SetPropagatorPriority(v10, v11, 2);
  operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(v10, a2, v11, 0xFFFFFFFF);
  v12 = *(a1 + 16);
  for (i = *(a1 + 24); v12 != i; ++v12)
  {
    operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(v10, *v12, v11, 0xFFFFFFFF);
  }

  return a1;
}

{
  return operations_research::sat::LevelZeroEquality::LevelZeroEquality(a1, a2, a3, a4, a5);
}

void sub_23CC000F4(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 24) = v6;
  operator delete(v6);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::LevelZeroEquality::Propagate(operations_research::sat::LevelZeroEquality *this)
{
  if ((*(*(this + 9) + 8) & 0xFFFFFFF) != 0)
  {
    return 1;
  }

  v2 = *(this + 2);
  v3 = *(this + 3);
  v4 = v3 - v2;
  if (v3 == v2)
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = v4 >> 2;
  v10 = *(*(this + 10) + 40);
  do
  {
    while (1)
    {
      v11 = 8 * *(v2 + 4 * v5);
      v12 = *(v10 + v11);
      v13 = *(*(this + 5) + 8 * v5);
      if (v12 + *(v10 + (v11 ^ 8)))
      {
        break;
      }

      v8 += v13 * v12;
      v5 = ++v7;
      if (v9 <= v7)
      {
        goto LABEL_17;
      }
    }

    if (v13)
    {
      if (v13 >= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = -v13;
      }

      do
      {
        v15 = v14;
        v14 = v6 % v14;
        v6 = v15;
      }

      while (v14);
      if (v15 == 1)
      {
        v6 = 1;
        if (*(this + 8) >= 1)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v15 = v6;
    }

    v6 = v15;
    v5 = ++v7;
  }

  while (v9 > v7);
LABEL_17:
  if (!v6)
  {
    return 1;
  }

  if (*(this + 8) < v6)
  {
LABEL_21:
    if (dword_27E25D018 >= 1)
    {
      v30 = this;
      IsEnabled1 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::LevelZeroEquality::Propagate(void)::$_0::operator() const(void)::site, dword_27E25D018);
      this = v30;
      if (IsEnabled1)
      {
        v29 = v8;
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v31, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/integer_expr.cc", 529);
        v28 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v31, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v28, "Objective gcd: ", 0xFuLL);
        v32 = v6;
        absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v28, &v32);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v31);
        v8 = v29;
        this = v30;
      }
    }
  }

LABEL_22:
  if (*(this + 8) > v6)
  {
    operations_research::sat::LevelZeroEquality::Propagate(v6, this + 8, v31);
  }

  *(this + 8) = v6;
  v16 = *(this + 10);
  v17 = *(this + 2);
  v18 = *(v16 + 40);
  v19 = 8 * v17;
  v20 = *(v18 + v19);
  v21 = (v6 & (((v20 - v8) % v6) >> 63)) + (v20 - v8) % v6;
  if (v21)
  {
    v22 = this;
    result = operations_research::sat::IntegerTrail::Enqueue(*(this + 10), v17, v20 + v6 - v21, 0, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    v16 = *(v22 + 10);
    v17 = *(v22 + 2);
    v18 = *(v16 + 40);
    v19 = 8 * v17;
  }

  v23 = -*(v18 + (v19 ^ 8));
  v24 = (v6 & (((v23 - v8) % v6) >> 63)) + (v23 - v8) % v6;
  if (!v24)
  {
    return 1;
  }

  v25 = v23 - v24;
  v26 = v25 >= 0x8000000000000002 ? -v25 : 0x7FFFFFFFFFFFFFFFLL;
  result = operations_research::sat::IntegerTrail::Enqueue(v16, v17 ^ 1, v26, 0, 0, 0, 0);
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_23CC003D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::LinMinPropagator::LinMinPropagator(uint64_t a1, const operations_research::sat::LinearExpression **a2, int a3, void *a4)
{
  *a1 = &unk_284F42268;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<operations_research::sat::LinearExpression>::__init_with_size[abi:ne200100]<operations_research::sat::LinearExpression*,operations_research::sat::LinearExpression*>((a1 + 8), *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
  *(a1 + 40) = 0;
  *(a1 + 32) = a3;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a4;
  *(a1 + 72) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a4);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  return a1;
}

void sub_23CC004B0(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  std::vector<operations_research::sat::LinearExpression>::~vector[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::LinMinPropagator::PropagateLinearUpperBound(uint64_t a1, void *a2, uint64_t **a3, uint64_t a4)
{
  v7 = a1;
  v50 = *MEMORY[0x277D85DE8];
  v8 = a2[1] - *a2;
  v9 = *(a1 + 80);
  v10 = (a1 + 80);
  v11 = v8 >> 2;
  v12 = (v8 >> 2);
  v13 = (*(a1 + 88) - v9) >> 3;
  if (v12 <= v13)
  {
    if (v12 < v13)
    {
      *(a1 + 88) = v9 + 8 * v12;
    }
  }

  else
  {
    std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(a1 + 80, v12 - v13);
  }

  v14 = (v8 >> 2) & 0x7FFFFFFF;
  if (v11 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    v16 = *a2;
    v17 = *a3;
    v18 = *(v7 + 80);
    v19 = *(*(v7 + 72) + 40);
    v20 = v14;
    do
    {
      v22 = *v17++;
      v21 = v22;
      LODWORD(v22) = *v16++;
      v23 = 8 * v22;
      v24 = *(v19 + v23);
      *v18++ = -(v21 * (*(v19 + (v23 ^ 8)) + v24));
      v15 += v24 * v21;
      --v20;
    }

    while (v20);
  }

  v25 = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(*(v7 + 64));
  *(v25 + 14) = v11 * 0.000000001 + *(v25 + 14);
  v26 = a4 - v15;
  v46 = v14;
  v47 = v7;
  if (a4 - v15 < 0)
  {
    v29 = a3;
    v30 = (v7 + 128);
    *(v7 + 136) = *(v7 + 128);
    v32 = v7 + 104;
    v31 = *(v7 + 104);
    *(v7 + 112) = v31;
    if (v11 < 1)
    {
      v41 = v31;
    }

    else
    {
      v33 = 0;
      v34 = 0;
      do
      {
        v35 = *(*a2 + 4 * v34);
        v36 = *(v7 + 72);
        v37 = *(*(v36 + 64) + 4 * v35);
        v39 = v36 + 40;
        v38 = *(v36 + 40);
        if (v37 >= (*(v39 + 8) - v38) >> 3)
        {
          v40 = *(v38 + 8 * v35);
          *&v48 = *(*a2 + 4 * v34);
          *(&v48 + 1) = v40;
          std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v30, &v48);
          std::vector<long long>::push_back[abi:ne200100](v32, &(*v29)[v33]);
          v14 = v46;
          v7 = v47;
        }

        ++v34;
        ++v33;
      }

      while (v14 != v34);
      v41 = *(v7 + 104);
      v31 = *(v7 + 112);
    }

    operations_research::sat::IntegerTrail::RelaxLinearReason(*(v7 + 72), ~v26, v41, (v31 - v41) >> 3, v30);
    std::vector<operations_research::sat::IntegerLiteral>::__insert_with_size[abi:ne200100]<std::__wrap_iter<operations_research::sat::IntegerLiteral*>,std::__wrap_iter<operations_research::sat::IntegerLiteral*>>(v30, *(v47 + 136), *(v47 + 152), *(v47 + 160), (*(v47 + 160) - *(v47 + 152)) >> 4);
    v42 = *(v7 + 72);
    v43 = *(v47 + 128);
    v44 = *(v47 + 136);
    v45 = *(v42 + 840);
    *(v45 + 120) = 0;
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((v45 + 72), 0, 0, 0);
    operations_research::sat::IntegerTrail::MergeReasonInto(v42, v43, (v44 - v43) >> 4, (v45 + 72));
    return 0;
  }

  else
  {
    if (v11 >= 1)
    {
      v27 = 0;
      do
      {
        if (*(*v10 + 8 * v27) > v26)
        {
          v49 = 0;
          operator new();
        }

        ++v27;
      }

      while (v14 != v27);
    }

    return 1;
  }
}

void sub_23CC008C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::LinMinPropagator::Propagate(operations_research::sat::LinMinPropagator *this)
{
  v3 = *(this + 1);
  if (v3 == *(this + 2))
  {
    return 1;
  }

  v32 = v1;
  v33 = v2;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = this + 40;
  v30 = *(*(*(this + 9) + 40) + ((8 * *(this + 8)) ^ 8));
  v9 = -v30;
  *(this + 6) = *(this + 5);
  v10 = 0x7FFFFFFFFFFFFFFELL;
  v11 = 1;
  do
  {
    *&v31 = operations_research::sat::LinearExpression::Min((v3 + 56 * v5), *(this + 9));
    std::vector<long long>::push_back[abi:ne200100](v8, &v31);
    if (v31 < v10)
    {
      v10 = v31;
    }

    if (v31 <= v9)
    {
      v7 = v11 - 1;
      ++v6;
    }

    v5 = v11;
    v3 = *(this + 1);
    v12 = *(this + 2);
    ++v11;
  }

  while (0x6DB6DB6DB6DB6DB7 * ((v12 - v3) >> 3) > v5);
  v13 = *(this + 9);
  v14 = *(this + 8);
  if (v10 <= v9)
  {
    v15 = v10;
  }

  else
  {
    v15 = 1 - v30;
  }

  if (v15 > *(*(v13 + 40) + 8 * v14))
  {
    v16 = *(this + 16);
    *(this + 17) = v16;
    if (v12 == v3)
    {
      v20 = v16;
    }

    else
    {
      v17 = 0;
      v18 = 1;
      do
      {
        v19 = v3 + 56 * v17;
        operations_research::sat::IntegerTrail::AppendRelaxedLinearReason(*(this + 9), *(*(this + 5) + 8 * v17) - v15, *(v19 + 24), (*(v19 + 32) - *(v19 + 24)) >> 3, *v19, (*(v19 + 8) - *v19) >> 2, this + 128);
        v17 = v18;
        v3 = *(this + 1);
        ++v18;
      }

      while (0x6DB6DB6DB6DB6DB7 * ((*(this + 2) - v3) >> 3) > v17);
      v13 = *(this + 9);
      v14 = *(this + 8);
      v20 = *(this + 16);
      v16 = *(this + 17);
    }

    if ((operations_research::sat::IntegerTrail::Enqueue(v13, v14, v15, 0, 0, v20, (v16 - v20) >> 4) & 1) == 0)
    {
      return 0;
    }
  }

  if (v6 != 1 || operations_research::sat::LinearExpression::Max((*(this + 1) + 56 * v7), *(this + 9)) <= v9)
  {
    return 1;
  }

  if (*(this + 44))
  {
    v22 = *(this + 1);
  }

  else
  {
    *(this + 20) = *(this + 19);
    v23 = *(this + 8);
    v24 = *(*(*(this + 9) + 40) + ((8 * v23) ^ 8));
    if (v24 - 1 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v24 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *&v31 = v23 ^ 1;
    *(&v31 + 1) = v24;
    std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 152, &v31);
    v22 = *(this + 1);
    v25 = *(this + 2);
    if (v25 != v22)
    {
      v26 = 0;
      v27 = 1;
      v28 = v7;
      do
      {
        if (v28)
        {
          v29 = v22 + 56 * v26;
          operations_research::sat::IntegerTrail::AppendRelaxedLinearReason(*(this + 9), v30 - 1 + *(*(this + 5) + 8 * v26), *(v29 + 24), (*(v29 + 32) - *(v29 + 24)) >> 3, *v29, (*(v29 + 8) - *v29) >> 2, this + 152);
          v22 = *(this + 1);
          v25 = *(this + 2);
        }

        v26 = v27;
        --v28;
        ++v27;
      }

      while (0x6DB6DB6DB6DB6DB7 * ((v25 - v22) >> 3) > v26);
    }

    *(this + 44) = 1;
  }

  return operations_research::sat::LinMinPropagator::PropagateLinearUpperBound(this, (v22 + 56 * v7), (v22 + 56 * v7 + 24), v9 - *(v22 + 56 * v7 + 48));
}

void operations_research::sat::LinMinPropagator::RegisterWith(operations_research::sat::LinMinPropagator *this, operations_research::sat::GenericLiteralWatcher *a2)
{
  v4 = operations_research::sat::GenericLiteralWatcher::Register(a2, this);
  v5 = *(this + 1);
  v54 = this;
  v55 = *(this + 2);
  v56 = v4;
  if (v5 != v55)
  {
    v6 = *&v4 | 0xFFFFFFFF00000000;
    while (1)
    {
      v7 = *v5;
      if (v5[1] != *v5)
      {
        break;
      }

LABEL_3:
      v5 += 7;
      if (v5 == v55)
      {
        goto LABEL_59;
      }
    }

    v8 = 0;
    v9 = 0;
    while (1)
    {
      v11 = *(v7 + 4 * v8);
      if (*(v5[3] + 8 * v8) < 1)
      {
        if ((~v11 & 0xFFFFFFFE) == 0)
        {
          goto LABEL_8;
        }

        v18 = (v11 << 32) ^ 0x100000000;
        v11 = v18 >> 32;
        v12 = *(a2 + 11);
        v13 = *(a2 + 12);
        v19 = 0xAAAAAAAAAAAAAAABLL * (&v13[-v12] >> 3);
        if (v19 > v18 >> 32)
        {
          goto LABEL_44;
        }

        v15 = (v18 + 0x100000000) >> 32;
        v16 = v15 - v19;
        if (v15 > v19)
        {
          v17 = *(a2 + 13);
          if (0xAAAAAAAAAAAAAAABLL * ((v17 - v13) >> 3) < v16)
          {
            if (v15 <= 0xAAAAAAAAAAAAAAALL)
            {
              goto LABEL_21;
            }

            goto LABEL_77;
          }

          goto LABEL_34;
        }

        if (v15 < v19)
        {
          v22 = (v12 + 24 * v15);
          if (v13 != v22)
          {
            v26 = *(a2 + 12);
            do
            {
              v28 = *(v26 - 3);
              v26 -= 24;
              v27 = v28;
              if (v28)
              {
                *(v13 - 2) = v27;
                operator delete(v27);
              }

              v13 = v26;
            }

            while (v26 != v22);
          }

          goto LABEL_43;
        }
      }

      else
      {
        if (v11 == -1)
        {
          goto LABEL_8;
        }

        v12 = *(a2 + 11);
        v13 = *(a2 + 12);
        v14 = 0xAAAAAAAAAAAAAAABLL * (&v13[-v12] >> 3);
        if (v14 <= v11)
        {
          v15 = v11 + 1;
          v16 = v15 - v14;
          if (v15 > v14)
          {
            v17 = *(a2 + 13);
            if (0xAAAAAAAAAAAAAAABLL * ((v17 - v13) >> 3) < v16)
            {
              if (v15 <= 0xAAAAAAAAAAAAAAALL)
              {
LABEL_21:
                v20 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v12) >> 3);
                if (2 * v20 > v15)
                {
                  v15 = 2 * v20;
                }

                if (v20 >= 0x555555555555555)
                {
                  v21 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v21 = v15;
                }

                if (v21 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                goto LABEL_76;
              }

LABEL_77:
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

LABEL_34:
            if (24 * v16)
            {
              bzero(v13, 24 * v16);
              v13 += 24 * v16;
            }

            *(a2 + 12) = v13;
            goto LABEL_44;
          }

          if (v15 < v14)
          {
            v22 = (v12 + 24 * v15);
            if (v13 != v22)
            {
              v23 = *(a2 + 12);
              do
              {
                v25 = *(v23 - 3);
                v23 -= 24;
                v24 = v25;
                if (v25)
                {
                  *(v13 - 2) = v24;
                  operator delete(v24);
                }

                v13 = v23;
              }

              while (v23 != v22);
            }

LABEL_43:
            *(a2 + 12) = v22;
          }
        }
      }

LABEL_44:
      v29 = *(a2 + 11) + 24 * v11;
      v30 = *v29;
      v31 = *(v29 + 8);
      if (*v29 == v31 || *(v31 - 2) != v56 || *(v31 - 1) != -1)
      {
        v32 = *(v29 + 16);
        if (v31 < v32)
        {
          *v31 = v6;
          v10 = v31 + 1;
        }

        else
        {
          v33 = v31 - v30;
          v34 = (v31 - v30) >> 3;
          v35 = v34 + 1;
          if ((v34 + 1) >> 61)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v36 = v32 - v30;
          if (v36 >> 2 > v35)
          {
            v35 = v36 >> 2;
          }

          if (v36 >= 0x7FFFFFFFFFFFFFF8)
          {
            v37 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v37 = v35;
          }

          if (v37)
          {
            if (!(v37 >> 61))
            {
              operator new();
            }

LABEL_76:
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v38 = (v31 - v30) >> 3;
          v39 = (8 * v34);
          v40 = (8 * v34 - 8 * v38);
          *v39 = v6;
          v10 = v39 + 1;
          memcpy(v40, v30, v33);
          *v29 = v40;
          *(v29 + 8) = v10;
          *(v29 + 16) = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        *(v29 + 8) = v10;
      }

LABEL_8:
      v8 = ++v9;
      v7 = *v5;
      if (v9 >= ((v5[1] - *v5) >> 2))
      {
        goto LABEL_3;
      }
    }
  }

LABEL_59:
  v41 = *(v54 + 8);
  if ((~v41 & 0xFFFFFFFE) != 0)
  {
    v42 = (v41 << 32) ^ 0x100000000;
    v43 = v42 >> 32;
    v45 = *(a2 + 11);
    v44 = *(a2 + 12);
    v46 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v45) >> 3);
    if (v46 <= v42 >> 32)
    {
      v47 = (v42 + 0x100000000) >> 32;
      if (v47 <= v46)
      {
        if (v47 < v46)
        {
          v48 = v45 + 24 * v47;
          if (v44 != v48)
          {
            v49 = *(a2 + 12);
            do
            {
              v51 = *(v49 - 24);
              v49 -= 24;
              v50 = v51;
              if (v51)
              {
                *(v44 - 16) = v50;
                operator delete(v50);
              }

              v44 = v49;
            }

            while (v49 != v48);
          }

          *(a2 + 12) = v48;
        }
      }

      else
      {
        std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(a2 + 88, v47 - v46);
      }
    }

    v57 = v56 | 0xFFFFFFFF00000000;
    v52 = (*(a2 + 11) + 24 * v43);
    v53 = v52[1];
    if (*v52 == v53 || *(v53 - 8) != v56 || *(v53 - 4) != -1)
    {
      std::vector<long long>::push_back[abi:ne200100](v52, &v57);
    }
  }

  operations_research::sat::GenericLiteralWatcher::RegisterReversibleInt(a2, v56, v54 + 44);
}

__n128 operations_research::sat::ProductPropagator::ProductPropagator(uint64_t a1, __int128 *a2, __int128 *a3, __n128 *a4, uint64_t a5)
{
  *a1 = &unk_284F42298;
  v5 = *a2;
  *(a1 + 24) = *(a2 + 2);
  *(a1 + 8) = v5;
  v6 = *a3;
  *(a1 + 48) = *(a3 + 2);
  *(a1 + 32) = v6;
  result = *a4;
  v8 = a4[1].n128_u64[0];
  *(a1 + 56) = *a4;
  *(a1 + 72) = v8;
  *(a1 + 80) = a5;
  return result;
}

uint64_t operations_research::sat::ProductPropagator::CanonicalizeCases(operations_research::sat::ProductPropagator *this)
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = *(this + 10);
  v2 = *(this + 2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v2 == -1)
  {
    v2 = -1;
    if (v3 >= 1)
    {
      goto LABEL_13;
    }

    v4 = 0;
    v3 = -v3;
    *(this + 2) = -1;
    *(this + 2) = 0;
    *(this + 3) = v3;
    v5 = *(this + 14);
    if (v5 != -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (v3 - *(v1[5] + ((8 * v2) ^ 8)) * v4 > 0)
    {
      goto LABEL_13;
    }

    v2 ^= (v4 >> 63) ^ 1;
    if (v4 < 0)
    {
      v4 = -v4;
    }

    v3 = -v3;
    *(this + 2) = v2;
    *(this + 2) = v4;
    *(this + 3) = v3;
    v5 = *(this + 14);
    if (v5 != -1)
    {
LABEL_6:
      v6 = *(this + 8);
      v5 ^= (v6 >> 63) ^ 1;
      if (v6 < 0)
      {
        v6 = -v6;
      }

      goto LABEL_12;
    }
  }

  v6 = 0;
LABEL_12:
  v7 = -*(this + 9);
  *(this + 14) = v5;
  *(this + 8) = v6;
  *(this + 9) = v7;
LABEL_13:
  v8 = *(this + 8);
  v10 = *(this + 5);
  v9 = *(this + 6);
  if (v8 == -1)
  {
    v8 = -1;
    if (v9 >= 1)
    {
      goto LABEL_25;
    }

    v10 = 0;
    v9 = -v9;
    *(this + 8) = -1;
    *(this + 5) = 0;
    *(this + 6) = v9;
    v11 = *(this + 14);
    if (v11 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v9 - *(v1[5] + ((8 * v8) ^ 8)) * v10 > 0)
    {
      goto LABEL_25;
    }

    v8 ^= (v10 >> 63) ^ 1;
    if (v10 < 0)
    {
      v10 = -v10;
    }

    v9 = -v9;
    *(this + 8) = v8;
    *(this + 5) = v10;
    *(this + 6) = v9;
    v11 = *(this + 14);
    if (v11 != -1)
    {
LABEL_18:
      v12 = *(this + 8);
      v11 ^= (v12 >> 63) ^ 1;
      if (v12 < 0)
      {
        v12 = -v12;
      }

      goto LABEL_24;
    }
  }

  v12 = 0;
LABEL_24:
  v13 = -*(this + 9);
  *(this + 14) = v11;
  *(this + 8) = v12;
  *(this + 9) = v13;
LABEL_25:
  v14 = v3;
  if (v2 != -1)
  {
    v14 = v3 + *(v1[5] + 8 * v2) * v4;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = v9;
    if (v8 != -1)
    {
      v15 = v9 + *(v1[5] + 8 * v8) * v10;
    }

    if ((v15 & 0x8000000000000000) == 0)
    {
      v16 = *(this + 14);
      if (v16 == -1)
      {
        if (*(this + 9) < 0)
        {
          v19 = 1;
        }

        else
        {
          v19 = -1;
        }

        v16 = 0xFFFFFFFFLL;
        if (v2 != -1)
        {
LABEL_36:
          v20 = -v3;
          if (v20 / v4 * v4 >= v20)
          {
            v21 = v20 / v4;
          }

          else
          {
            v21 = v20 / v4 + 1;
          }

          *&v36 = v2;
          *(&v36 + 1) = v21;
          if (v8 != -1)
          {
LABEL_40:
            v22 = v8;
            v23 = -v9 / v10;
            if (v23 * v10 >= -v9)
            {
              v24 = -v9 / v10;
            }

            else
            {
              v24 = v23 + 1;
            }

LABEL_63:
            v37 = v22;
            v38 = v24;
            return operations_research::sat::IntegerTrail::SafeEnqueue(v1, v16, v19, &v36, 2);
          }

LABEL_59:
          if (v9 < 0)
          {
            v24 = 1;
          }

          else
          {
            v24 = -1;
          }

          v22 = 0xFFFFFFFFLL;
          goto LABEL_63;
        }
      }

      else
      {
        v17 = *(this + 8);
        v18 = -*(this + 9);
        if (v18 / v17 * v17 >= v18)
        {
          v19 = v18 / v17;
        }

        else
        {
          v19 = v18 / v17 + 1;
        }

        if (v2 != -1)
        {
          goto LABEL_36;
        }
      }

      v30 = v3 < 0;
      v31 = 1;
      if (!v30)
      {
        v31 = -1;
      }

      *&v36 = 0xFFFFFFFFLL;
      *(&v36 + 1) = v31;
      if (v8 != -1)
      {
        goto LABEL_40;
      }

      goto LABEL_59;
    }
  }

  v25 = *(this + 14);
  v27 = *(this + 8);
  v26 = *(this + 9);
  if (v25 == -1)
  {
    if (v26 <= 0)
    {
      goto LABEL_47;
    }
  }

  else if (v26 - *(v1[5] + ((8 * v25) ^ 8)) * v27 <= 0)
  {
LABEL_47:
    if (v2 == -1)
    {
      if (v3 < 0)
      {
        v29 = 0;
        v28 = -1;
        goto LABEL_74;
      }
    }

    else if (v3 + *(v1[5] + 8 * v2) * v4 < 0)
    {
      v28 = v2 ^ (v4 >> 63) ^ 1;
      if (v4 >= 0)
      {
        v29 = v4;
      }

      else
      {
        v29 = -v4;
      }

LABEL_74:
      *(this + 2) = v28;
      *(this + 2) = v29;
      *(this + 3) = -v3;
      if (v25 != -1)
      {
LABEL_75:
        v35 = v25 ^ (v27 >> 63) ^ 1;
        if (v27 >= 0)
        {
          v34 = v27;
        }

        else
        {
          v34 = -v27;
        }

        goto LABEL_78;
      }

LABEL_72:
      v34 = 0;
      v35 = -1;
LABEL_78:
      *(this + 14) = v35;
      *(this + 8) = v34;
      *(this + 9) = -v26;
      return 1;
    }

    if (v8 == -1)
    {
      *(this + 8) = -1;
      *(this + 5) = 0;
      *(this + 6) = -v9;
      if (v25 != -1)
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (v10 >= 0)
      {
        v33 = v10;
      }

      else
      {
        v33 = -v10;
      }

      *(this + 8) = v8 ^ (v10 >> 63) ^ 1;
      *(this + 5) = v33;
      *(this + 6) = -v9;
      if (v25 != -1)
      {
        goto LABEL_75;
      }
    }

    goto LABEL_72;
  }

  return 1;
}

uint64_t operations_research::sat::ProductPropagator::PropagateWhenAllNonNegative(operations_research::sat::ProductPropagator *this)
{
  v96 = *MEMORY[0x277D85DE8];
  v3 = this + 8;
  v2 = *(this + 2);
  v4 = *(this + 10);
  v6 = *(v3 + 1);
  v5 = *(v3 + 2);
  v7 = v5;
  if (v2 != -1)
  {
    v7 = v5 - *(v4[5] + ((8 * v2) ^ 8)) * v6;
  }

  v8 = *(this + 8);
  v9 = *(this + 5);
  v10 = *(this + 6);
  if (v8 == -1)
  {
    v11 = *(this + 6);
  }

  else
  {
    v11 = v10 - *(v4[5] + ((8 * v8) ^ 8)) * v9;
  }

  if ((v7 * v11) >> 64 == (v7 * v11) >> 63)
  {
    v12 = v7 * v11;
  }

  else
  {
    v12 = ((v11 ^ v7) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = *(this + 14);
  v14 = *(this + 9);
  if (v13 != -1)
  {
    v15 = *(this + 8);
    if (v12 >= v14 - *(v4[5] + ((8 * v13) ^ 8)) * v15)
    {
      goto LABEL_41;
    }

    v16 = (v12 - v14) / v15 - ((v12 - v14) / v15 * v15 > v12 - v14);
    if (v16 >= 0x8000000000000002)
    {
      v17 = -v16;
    }

    else
    {
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v18 = v13 ^ 1u;
    if (v2 != -1)
    {
      goto LABEL_15;
    }

LABEL_30:
    *&v90 = 0xFFFFFFFFLL;
    *(&v90 + 1) = -1;
    if (v8 != -1)
    {
      goto LABEL_18;
    }

LABEL_31:
    *&v91 = 0xFFFFFFFFLL;
    *(&v91 + 1) = -1;
    if (v2 != -1)
    {
      goto LABEL_21;
    }

LABEL_32:
    if (v5 < 0)
    {
      v25 = 1;
    }

    else
    {
      v25 = -1;
    }

    v92 = 0xFFFFFFFFLL;
    v93 = v25;
    if (v8 != -1)
    {
      goto LABEL_25;
    }

LABEL_36:
    v24 = 1;
    if (v10 >= 0)
    {
      v24 = -1;
    }

    v8 = 0xFFFFFFFFLL;
    goto LABEL_39;
  }

  if (v12 >= v14)
  {
    goto LABEL_41;
  }

  v17 = 1;
  v18 = 0xFFFFFFFFLL;
  if (v2 == -1)
  {
    goto LABEL_30;
  }

LABEL_15:
  v19 = *(v4[5] + ((8 * v2) ^ 8));
  if (v19 - 1 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *&v90 = v2 ^ 1;
  *(&v90 + 1) = v19;
  if (v8 == -1)
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = *(v4[5] + ((8 * v8) ^ 8));
  if (v20 - 1 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *&v91 = v8 ^ 1;
  *(&v91 + 1) = v20;
  if (v2 == -1)
  {
    goto LABEL_32;
  }

LABEL_21:
  v21 = -v5;
  if (v21 / v6 * v6 >= v21)
  {
    v22 = v21 / v6;
  }

  else
  {
    v22 = v21 / v6 + 1;
  }

  v92 = v2;
  v93 = v22;
  if (v8 == -1)
  {
    goto LABEL_36;
  }

LABEL_25:
  v23 = -v10 / v9;
  if (v23 * v9 >= -v10)
  {
    v24 = -v10 / v9;
  }

  else
  {
    v24 = v23 + 1;
  }

LABEL_39:
  v94 = v8;
  v95 = v24;
  result = operations_research::sat::IntegerTrail::SafeEnqueue(v4, v18, v17, &v90, 4);
  if (!result)
  {
    return result;
  }

  v4 = *(this + 10);
  LODWORD(v2) = *(this + 2);
  v5 = *(this + 3);
LABEL_41:
  if (v2 != -1)
  {
    v5 += *(v4[5] + 8 * v2) * *(this + 2);
  }

  v27 = *(this + 8);
  v28 = *(this + 6);
  if (v27 != -1)
  {
    v28 += *(v4[5] + 8 * v27) * *(this + 5);
  }

  if ((v5 * v28) >> 64 == (v5 * v28) >> 63)
  {
    v29 = v5 * v28;
  }

  else
  {
    v29 = ((v28 ^ v5) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  }

  v30 = *(this + 14);
  v31 = *(this + 9);
  if (v30 == -1)
  {
    if (v29 > v31)
    {
      *&v90 = 0xFFFFFFFFLL;
      *(&v90 + 1) = -1;
      if (v2 != -1)
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    }

    goto LABEL_70;
  }

  v32 = *(this + 8);
  v33 = v4[5];
  v34 = *(v33 + ((8 * v30) ^ 8));
  if (v29 > v31 - v34 * v32)
  {
    v35 = 0x7FFFFFFFFFFFFFFFLL;
    if (v34 - 1 <= 0x7FFFFFFFFFFFFFFDLL)
    {
      v35 = v34;
    }

    *&v90 = v30 ^ 1;
    *(&v90 + 1) = v35;
    if (v2 != -1)
    {
LABEL_53:
      v36 = *(v4[5] + 8 * v2);
      *&v91 = v2;
      *(&v91 + 1) = v36;
      if (v27 != -1)
      {
LABEL_54:
        v37 = *(v4[5] + 8 * v27);
LABEL_59:
        v92 = v27;
        v93 = v37;
        v38 = v4[105];
        v39 = *(v38 + 72);
        v38 += 72;
        *(v38 + 48) = 0;
        *(v38 + 8) = v39;
        operations_research::sat::IntegerTrail::MergeReasonInto(v4, &v90, 3, v38);
        return 0;
      }

LABEL_58:
      v37 = -1;
      v27 = 0xFFFFFFFFLL;
      goto LABEL_59;
    }

LABEL_57:
    *&v91 = 0xFFFFFFFFLL;
    *(&v91 + 1) = -1;
    if (v27 != -1)
    {
      goto LABEL_54;
    }

    goto LABEL_58;
  }

  if (v29 <= v31 + *(v33 + 8 * v30) * v32)
  {
LABEL_70:
    v44 = 1;
    while (1)
    {
      v45 = v44;
      v46 = (v44 & 1) == 0;
      if (v44)
      {
        v47 = 8;
      }

      else
      {
        v47 = 32;
      }

      if (v46)
      {
        v48 = this + 32;
      }

      else
      {
        v48 = v3;
      }

      v49 = *(this + v47);
      v51 = *(v48 + 1);
      v50 = *(v48 + 2);
      if (v46)
      {
        v52 = 8;
      }

      else
      {
        v52 = 32;
      }

      if (v46)
      {
        v53 = v3;
      }

      else
      {
        v53 = this + 32;
      }

      v54 = *(this + 10);
      if (v49 == -1)
      {
        v55 = v50;
        v56 = *(this + v52);
        v58 = *(v53 + 1);
        v57 = *(v53 + 2);
        if (v56 != -1)
        {
LABEL_86:
          v59 = v57 + *(v54[5] + 8 * v56) * v58;
          v60 = *(this + 14);
          v61 = *(this + 8);
          v62 = *(this + 9);
          if (v60 == -1)
          {
            goto LABEL_90;
          }

          goto LABEL_87;
        }
      }

      else
      {
        v55 = v50 - *(v54[5] + ((8 * v49) ^ 8)) * v51;
        v56 = *(this + v52);
        v58 = *(v53 + 1);
        v57 = *(v53 + 2);
        if (v56 != -1)
        {
          goto LABEL_86;
        }
      }

      v59 = v57;
      v60 = *(this + 14);
      v61 = *(this + 8);
      v62 = *(this + 9);
      if (v60 == -1)
      {
LABEL_90:
        v65 = v62;
        v66 = v62;
        goto LABEL_91;
      }

LABEL_87:
      v63 = v54[5];
      v64 = 8 * v60;
      v65 = v62 + *(v63 + v64) * v61;
      v66 = v62 - *(v63 + (v64 ^ 8)) * v61;
LABEL_91:
      v67 = ((v59 ^ v55) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      if ((v55 * v59) >> 64 == (v55 * v59) >> 63)
      {
        v67 = v55 * v59;
      }

      if (v67 <= v66)
      {
        if (v67 < v65 && v55 != 0)
        {
          v79 = v65 / v55;
          if (v65 / v55 * v55 < v65)
          {
            ++v79;
          }

          v80 = (v79 - v57) / v58;
          if (v80 * v58 >= v79 - v57)
          {
            v81 = (v79 - v57) / v58;
          }

          else
          {
            v81 = v80 + 1;
          }

          if (v79 > v57)
          {
            v82 = 1;
          }

          else
          {
            v82 = -1;
          }

          if (v56 == -1)
          {
            v83 = 0xFFFFFFFFLL;
          }

          else
          {
            v83 = v56;
          }

          if (v56 == -1)
          {
            v84 = v82;
          }

          else
          {
            v84 = v81;
          }

          if (v49 == -1)
          {
            *&v90 = 0xFFFFFFFFLL;
            *(&v90 + 1) = -1;
            if (v60 != -1)
            {
              goto LABEL_135;
            }
          }

          else
          {
            v85 = *(v54[5] + ((8 * v49) ^ 8));
            if (v85 - 1 > 0x7FFFFFFFFFFFFFFDLL)
            {
              v85 = 0x7FFFFFFFFFFFFFFFLL;
            }

            *&v90 = v49 ^ 1;
            *(&v90 + 1) = v85;
            if (v60 != -1)
            {
LABEL_135:
              v86 = *(v54[5] + 8 * v60);
              *&v91 = v60;
              *(&v91 + 1) = v86;
              if (v49 != -1)
              {
LABEL_136:
                v87 = -v50;
                v88 = -v50 / v51;
                if (v88 * v51 >= v87)
                {
                  v89 = v88;
                }

                else
                {
                  v89 = v88 + 1;
                }

LABEL_151:
                v92 = v49;
                v93 = v89;
                result = operations_research::sat::IntegerTrail::SafeEnqueue(v54, v83, v84, &v90, 3);
                goto LABEL_152;
              }

LABEL_147:
              if (v50 < 0)
              {
                v89 = 1;
              }

              else
              {
                v89 = -1;
              }

              v49 = 0xFFFFFFFFLL;
              goto LABEL_151;
            }
          }

          *&v91 = 0xFFFFFFFFLL;
          *(&v91 + 1) = -1;
          if (v49 != -1)
          {
            goto LABEL_136;
          }

          goto LABEL_147;
        }

        v44 = 0;
        if ((v45 & 1) == 0)
        {
          return 1;
        }
      }

      else
      {
        v68 = v66 / v59 - (v66 / v59 * v59 > v66);
        v69 = (v68 - v50) / v51 - ((v68 - v50) / v51 * v51 > v68 - v50);
        if (v69 >= 0x8000000000000002)
        {
          v70 = -v69;
        }

        else
        {
          v70 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v68 < v50)
        {
          v71 = 1;
        }

        else
        {
          v71 = -1;
        }

        if (v49 == -1)
        {
          v72 = 0xFFFFFFFFLL;
        }

        else
        {
          v72 = v49 ^ 1;
        }

        if (v49 == -1)
        {
          v73 = v71;
        }

        else
        {
          v73 = v70;
        }

        if (v56 == -1)
        {
          *&v90 = 0xFFFFFFFFLL;
          *(&v90 + 1) = -1;
          if (v60 != -1)
          {
LABEL_108:
            v75 = *(v54[5] + ((8 * v60) ^ 8));
            if (v75 - 1 > 0x7FFFFFFFFFFFFFFDLL)
            {
              v75 = 0x7FFFFFFFFFFFFFFFLL;
            }

            *&v91 = v60 ^ 1;
            *(&v91 + 1) = v75;
            v76 = -v62 / v61;
            if (v76 * v61 >= -v62)
            {
              v77 = -v62 / v61;
            }

            else
            {
              v77 = v76 + 1;
            }

            goto LABEL_144;
          }
        }

        else
        {
          v74 = *(v54[5] + 8 * v56);
          *&v90 = v56;
          *(&v90 + 1) = v74;
          if (v60 != -1)
          {
            goto LABEL_108;
          }
        }

        v91 = xmmword_23CE49C10;
        if (v62 < 0)
        {
          v77 = 1;
        }

        else
        {
          v77 = -1;
        }

        v60 = 0xFFFFFFFFLL;
LABEL_144:
        v92 = v60;
        v93 = v77;
        result = operations_research::sat::IntegerTrail::SafeEnqueue(v54, v72, v73, &v90, 3);
LABEL_152:
        v44 = 0;
        if ((result & v45 & 1) == 0)
        {
          return result;
        }
      }
    }
  }

  v40 = v29 - v31;
  if (v40 / v32 * v32 >= v40)
  {
    v41 = v40 / v32;
  }

  else
  {
    v41 = v40 / v32 + 1;
  }

  if (v2 == -1)
  {
    *&v90 = 0xFFFFFFFFLL;
    *(&v90 + 1) = -1;
    if (v27 != -1)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v42 = *(v33 + 8 * v2);
    *&v90 = v2;
    *(&v90 + 1) = v42;
    if (v27 != -1)
    {
LABEL_66:
      v43 = *(v33 + 8 * v27);
      goto LABEL_69;
    }
  }

  v43 = -1;
  v27 = 0xFFFFFFFFLL;
LABEL_69:
  *&v91 = v27;
  *(&v91 + 1) = v43;
  result = operations_research::sat::IntegerTrail::SafeEnqueue(v4, v30, v41, &v90, 2);
  if (result)
  {
    goto LABEL_70;
  }

  return result;
}

uint64_t operations_research::sat::ProductPropagator::PropagateMaxOnPositiveProduct(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 80);
  v7 = *a2;
  v9 = *(a2 + 1);
  v8 = *(a2 + 2);
  if (v7 == -1)
  {
    v10 = *(a2 + 2);
    if (v8 < 1)
    {
      return 1;
    }
  }

  else
  {
    v10 = v8 - *(v6[5] + ((8 * v7) ^ 8)) * v9;
    if (v10 < 1)
    {
      return 1;
    }
  }

  if (v10 < a4)
  {
    v11 = a4 / v10;
    if ((a4 / v10 * v10) < a4)
    {
      ++v11;
    }

    v12 = *a3;
    v13 = *(a3 + 2);
    if (v12 == -1)
    {
      if (v11 > v13)
      {
        if (v13 > 0)
        {
          v15 = 1;
        }

        else
        {
          v15 = -1;
        }

        v16 = 0xFFFFFFFFLL;
        v17 = *(a1 + 56);
        if (v17 != -1)
        {
LABEL_14:
          v18 = *(v6[5] + 8 * v17);
          *&v46 = v17;
          *(&v46 + 1) = v18;
          if (v7 != -1)
          {
            goto LABEL_15;
          }

          goto LABEL_46;
        }

LABEL_45:
        *&v46 = 0xFFFFFFFFLL;
        *(&v46 + 1) = -1;
        if (v7 != -1)
        {
LABEL_15:
          v19 = *(v6[5] + ((8 * v7) ^ 8));
          if (v19 - 1 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v19 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v47 = v7 ^ 1;
          v48 = v19;
          if (v12 != -1)
          {
            goto LABEL_18;
          }

          goto LABEL_47;
        }

LABEL_46:
        v47 = 0xFFFFFFFFLL;
        v48 = -1;
        if (v12 != -1)
        {
LABEL_18:
          v20 = *(v6[5] + ((8 * v12) ^ 8));
          if (v20 - 1 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v20 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v21 = v12 ^ 1;
          goto LABEL_48;
        }

LABEL_47:
        v20 = -1;
        v21 = 0xFFFFFFFFLL;
LABEL_48:
        v49 = v21;
        v50 = v20;
        return operations_research::sat::IntegerTrail::SafeEnqueue(v6, v16, v15, &v46, 3);
      }
    }

    else
    {
      v14 = *(a3 + 1);
      if (v11 > v13 - *(v6[5] + ((8 * v12) ^ 8)) * v14)
      {
        if (-v13 / v14 - (-v13 / v14 * v14 > -v13) >= 0x8000000000000002)
        {
          v15 = (-v13 / v14 * v14 > -v13) - -v13 / v14;
        }

        else
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v16 = v12 ^ 1;
        v17 = *(a1 + 56);
        if (v17 != -1)
        {
          goto LABEL_14;
        }

        goto LABEL_45;
      }
    }

    v37 = a5 / v11 - (a5 / v11 * v11 > a5);
    if (v7 == -1)
    {
      if (v37 < v8)
      {
        v39 = 1;
        v40 = 0xFFFFFFFFLL;
        v41 = *(a1 + 56);
        if (v41 != -1)
        {
          goto LABEL_55;
        }

        goto LABEL_73;
      }
    }

    else if (v37 < v8 - *(v6[5] + ((8 * v7) ^ 8)) * v9)
    {
      v38 = (v37 - v8) / v9 - ((v37 - v8) / v9 * v9 > v37 - v8);
      if (v38 >= 0x8000000000000002)
      {
        v39 = -v38;
      }

      else
      {
        v39 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v40 = v7 ^ 1;
      v41 = *(a1 + 56);
      if (v41 != -1)
      {
LABEL_55:
        v42 = *(v6[5] + 8 * v41);
        *&v46 = v41;
        *(&v46 + 1) = v42;
        if (v7 != -1)
        {
          goto LABEL_56;
        }

        goto LABEL_74;
      }

LABEL_73:
      *&v46 = 0xFFFFFFFFLL;
      *(&v46 + 1) = -1;
      if (v7 != -1)
      {
LABEL_56:
        v43 = *(v6[5] + ((8 * v7) ^ 8));
        if (v43 - 1 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v43 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v47 = v7 ^ 1;
        v48 = v43;
        if (v41 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_75;
      }

LABEL_74:
      v47 = 0xFFFFFFFFLL;
      v48 = -1;
      if (v41 != -1)
      {
LABEL_59:
        v44 = *(v6[5] + ((8 * v41) ^ 8));
        if (v44 - 1 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v44 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v45 = v41 ^ 1;
LABEL_76:
        v49 = v45;
        v50 = v44;
        result = operations_research::sat::IntegerTrail::SafeEnqueue(v6, v40, v39, &v46, 3);
        if (!result)
        {
          return result;
        }

        return 1;
      }

LABEL_75:
      v44 = -1;
      v45 = 0xFFFFFFFFLL;
      goto LABEL_76;
    }

    return 1;
  }

  if (v10 <= a5)
  {
    return 1;
  }

  v22 = (a5 - v8) / v9 - ((a5 - v8) / v9 * v9 > a5 - v8);
  if (v22 >= 0x8000000000000002)
  {
    v23 = -v22;
  }

  else
  {
    v23 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v24 = a5 < v8;
  v25 = 1;
  if (!v24)
  {
    v25 = -1;
  }

  v26 = v7 == -1 ? 0xFFFFFFFFLL : v7 ^ 1;
  v27 = v7 == -1 ? v25 : v23;
  v28 = *(a1 + 56);
  v29 = *(a1 + 72);
  if (v28 == -1)
  {
    v31 = a5 < v29 ? 1 : -1;
    v35 = v29 < 1 ? 1 : -1;
    v32 = 0xFFFFFFFFLL;
    v28 = 0xFFFFFFFFLL;
  }

  else
  {
    v30 = *(a1 + 64);
    v31 = (a5 - v29) / v30 - ((a5 - v29) / v30 * v30 > a5 - v29) >= 0x8000000000000002 ? ((a5 - v29) / v30 * v30 > a5 - v29) - (a5 - v29) / v30 : 0x7FFFFFFFFFFFFFFFLL;
    v32 = v28 ^ 1;
    v33 = 1 - v29;
    v34 = (1 - v29) / v30;
    v35 = v34 * v30 >= v33 ? v34 : v34 + 1;
  }

  *&v46 = v32;
  *(&v46 + 1) = v31;
  v47 = v28;
  v48 = v35;
  result = operations_research::sat::IntegerTrail::SafeEnqueue(v6, v26, v27, &v46, 2);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t operations_research::sat::ProductPropagator::Propagate(operations_research::sat::ProductPropagator *this)
{
  v167 = *MEMORY[0x277D85DE8];
  result = operations_research::sat::ProductPropagator::CanonicalizeCases(this);
  if (!result)
  {
    return result;
  }

  v3 = *(this + 2);
  v4 = *(this + 10);
  v6 = *(this + 2);
  v5 = *(this + 3);
  v155 = (this + 8);
  v7 = v5;
  if (v3 != -1)
  {
    v7 = v5 + *(v4[5] + 8 * v3) * v6;
  }

  v8 = *(this + 8);
  v154 = (this + 32);
  v10 = *(this + 5);
  v9 = *(this + 6);
  v11 = v9;
  if (v8 != -1)
  {
    v11 = v9 + *(v4[5] + 8 * v8) * v10;
  }

  if ((v7 & 0x8000000000000000) == 0 && (v11 & 0x8000000000000000) == 0)
  {

    return operations_research::sat::ProductPropagator::PropagateWhenAllNonNegative(this);
  }

  if (v3 != -1)
  {
    v5 -= *(v4[5] + ((8 * v3) ^ 8)) * v6;
  }

  if (v8 != -1)
  {
    v9 -= *(v4[5] + ((8 * v8) ^ 8)) * v10;
  }

  if ((v5 * v9) >> 64 == (v5 * v9) >> 63)
  {
    v12 = v5 * v9;
  }

  else
  {
    v12 = ((v9 ^ v5) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((v5 * v11) >> 64 == (v5 * v11) >> 63)
  {
    v13 = v5 * v11;
  }

  else
  {
    v13 = ((v5 ^ v11) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((v7 * v9) >> 64 == (v7 * v9) >> 63)
  {
    v14 = v7 * v9;
  }

  else
  {
    v14 = ((v9 ^ v7) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((v7 * v11) >> 64 == (v7 * v11) >> 63)
  {
    v15 = v7 * v11;
  }

  else
  {
    v15 = ((v11 ^ v7) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v12 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = v12;
  }

  if (v16 <= v14)
  {
    v16 = v14;
  }

  if (v16 <= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(this + 14);
  v19 = *(this + 8);
  v20 = *(this + 9);
  if (v18 == -1)
  {
    v23 = 0xFFFFFFFFLL;
    if (v17 >= v20)
    {
      LODWORD(v18) = -1;
      goto LABEL_58;
    }

    v22 = 1;
    if (v3 != -1)
    {
LABEL_41:
      v24 = *(v4[5] + 8 * v3);
      *&v160 = *(this + 2);
      *(&v160 + 1) = v24;
      if (v8 != -1)
      {
        goto LABEL_42;
      }

      goto LABEL_52;
    }
  }

  else
  {
    if (v17 >= v20 - *(v4[5] + ((8 * v18) ^ 8)) * v19)
    {
      goto LABEL_58;
    }

    v21 = (v17 - v20) / v19 - ((v17 - v20) / v19 * v19 > v17 - v20);
    if (v21 >= 0x8000000000000002)
    {
      v22 = -v21;
    }

    else
    {
      v22 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v23 = v18 ^ 1;
    if (v3 != -1)
    {
      goto LABEL_41;
    }
  }

  *&v160 = 0xFFFFFFFFLL;
  *(&v160 + 1) = -1;
  if (v8 != -1)
  {
LABEL_42:
    v25 = *(v4[5] + 8 * v8);
    v161 = v8;
    v162 = v25;
    if (v3 != -1)
    {
      goto LABEL_43;
    }

    goto LABEL_53;
  }

LABEL_52:
  v161 = 0xFFFFFFFFLL;
  v162 = -1;
  if (v3 != -1)
  {
LABEL_43:
    v26 = *(v4[5] + ((8 * v3) ^ 8));
    if (v26 - 1 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v26 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v163 = v3 ^ 1;
    v164 = v26;
    if (v8 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_54;
  }

LABEL_53:
  v163 = 0xFFFFFFFFLL;
  v164 = -1;
  if (v8 != -1)
  {
LABEL_46:
    v27 = *(v4[5] + ((8 * v8) ^ 8));
    if (v27 - 1 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v27 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v28 = v8 ^ 1;
    goto LABEL_55;
  }

LABEL_54:
  v27 = -1;
  v28 = 0xFFFFFFFFLL;
LABEL_55:
  v165 = v28;
  v166 = v27;
  result = operations_research::sat::IntegerTrail::SafeEnqueue(v4, v23, v22, &v160, 4);
  if (!result)
  {
    return result;
  }

  v20 = *(this + 9);
  v4 = *(this + 10);
  LODWORD(v18) = *(this + 14);
  v19 = *(this + 8);
LABEL_58:
  if (v13 >= v12)
  {
    v29 = v12;
  }

  else
  {
    v29 = v13;
  }

  if (v14 < v29)
  {
    v29 = v14;
  }

  if (v15 < v29)
  {
    v29 = v15;
  }

  if (v18 == -1)
  {
    if (v29 <= v20)
    {
      goto LABEL_89;
    }

    v32 = 1;
    v30 = 0xFFFFFFFFLL;
    v33 = *v155;
    if (v33 != -1)
    {
LABEL_71:
      v34 = *(v4[5] + 8 * v33);
      *&v160 = v33;
      *(&v160 + 1) = v34;
      v35 = *v154;
      if (v35 != -1)
      {
        goto LABEL_72;
      }

      goto LABEL_82;
    }
  }

  else
  {
    v30 = v18;
    if (v29 <= v20 + *(v4[5] + 8 * v18) * v19)
    {
      goto LABEL_87;
    }

    v31 = v29 - v20;
    if (v31 / v19 * v19 >= v31)
    {
      v32 = v31 / v19;
    }

    else
    {
      v32 = v31 / v19 + 1;
    }

    v33 = *v155;
    if (v33 != -1)
    {
      goto LABEL_71;
    }
  }

  *&v160 = 0xFFFFFFFFLL;
  *(&v160 + 1) = -1;
  v35 = *v154;
  if (v35 != -1)
  {
LABEL_72:
    v36 = *(v4[5] + 8 * v35);
    v161 = v35;
    v162 = v36;
    if (v33 != -1)
    {
      goto LABEL_73;
    }

    goto LABEL_83;
  }

LABEL_82:
  v161 = 0xFFFFFFFFLL;
  v162 = -1;
  if (v33 != -1)
  {
LABEL_73:
    v37 = *(v4[5] + ((8 * v33) ^ 8));
    if (v37 - 1 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v37 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v163 = v33 ^ 1;
    v164 = v37;
    if (v35 != -1)
    {
      goto LABEL_76;
    }

LABEL_84:
    v38 = -1;
    v39 = 0xFFFFFFFFLL;
    goto LABEL_85;
  }

LABEL_83:
  v163 = 0xFFFFFFFFLL;
  v164 = -1;
  if (v35 == -1)
  {
    goto LABEL_84;
  }

LABEL_76:
  v38 = *(v4[5] + ((8 * v35) ^ 8));
  if (v38 - 1 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v38 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v39 = v35 ^ 1;
LABEL_85:
  v165 = v39;
  v166 = v38;
  result = operations_research::sat::IntegerTrail::SafeEnqueue(v4, v30, v32, &v160, 4);
  if (!result)
  {
    return result;
  }

  v20 = *(this + 9);
  v4 = *(this + 10);
  LODWORD(v18) = *(this + 14);
  v19 = *(this + 8);
  if (v18 != -1)
  {
LABEL_87:
    v40 = 0;
    v41 = v18;
    v42 = v4[5];
    v43 = 8 * v18;
    v44 = v20 + *(v42 + v43) * v19;
    v159 = v44;
    v45 = v20 - *(v42 + (v43 ^ 8)) * v19;
    v152 = v44;
    v153 = v45;
    if (v44 < 1)
    {
      goto LABEL_164;
    }

    goto LABEL_90;
  }

LABEL_89:
  v159 = v20;
  v40 = 1;
  v41 = 0xFFFFFFFFLL;
  v44 = v20;
  v45 = v20;
  v152 = v20;
  v153 = v20;
  if (v20 < 1)
  {
    goto LABEL_164;
  }

LABEL_90:
  v46 = *(this + 2);
  v47 = *(this + 2);
  v48 = *(this + 3);
  if (v46 == -1)
  {
    if (v48)
    {
      goto LABEL_114;
    }

    v50 = 1;
    v51 = 0xFFFFFFFFLL;
    if (v40)
    {
      goto LABEL_96;
    }

LABEL_102:
    v53 = 1 - v20;
    if (v53 / v19 * v19 >= v53)
    {
      v52 = v53 / v19;
    }

    else
    {
      v52 = v53 / v19 + 1;
    }

    goto LABEL_105;
  }

  if (v48 + v47 * *(v4[5] + 8 * v46))
  {
    goto LABEL_114;
  }

  v49 = (1 - v48) / v47;
  if (v49 * v47 >= 1 - v48)
  {
    v50 = (1 - v48) / v47;
  }

  else
  {
    v50 = v49 + 1;
  }

  v51 = *(this + 2);
  if (!v40)
  {
    goto LABEL_102;
  }

LABEL_96:
  if (v20 < 1)
  {
    v52 = 1;
  }

  else
  {
    v52 = -1;
  }

  v41 = 0xFFFFFFFFLL;
LABEL_105:
  *&v160 = v41;
  *(&v160 + 1) = v52;
  if (v46 == -1)
  {
    v55 = 1;
    if (v48 >= 0)
    {
      v55 = -1;
    }

    v46 = 0xFFFFFFFFLL;
  }

  else
  {
    v54 = -v48 / v47;
    if (v54 * v47 >= -v48)
    {
      v55 = -v48 / v47;
    }

    else
    {
      v55 = v54 + 1;
    }
  }

  v161 = v46;
  v162 = v55;
  result = operations_research::sat::IntegerTrail::SafeEnqueue(v4, v51, v50, &v160, 2);
  if (result)
  {
    v4 = *(this + 10);
    v44 = v152;
    v45 = v153;
LABEL_114:
    v56 = *(this + 8);
    v57 = *(this + 5);
    v58 = *(this + 6);
    if (v56 == -1)
    {
      if (v58)
      {
        goto LABEL_140;
      }

      v60 = 1;
      v61 = 0xFFFFFFFFLL;
    }

    else
    {
      if (v58 + v57 * *(v4[5] + 8 * v56))
      {
        goto LABEL_140;
      }

      v59 = (1 - v58) / v57;
      if (v59 * v57 >= 1 - v58)
      {
        v60 = (1 - v58) / v57;
      }

      else
      {
        v60 = v59 + 1;
      }

      v61 = *(this + 8);
    }

    v62 = *(this + 14);
    if (v62 == -1)
    {
      if (*(this + 9) < 1)
      {
        v65 = 1;
      }

      else
      {
        v65 = -1;
      }

      v62 = 0xFFFFFFFFLL;
    }

    else
    {
      v63 = *(this + 8);
      v64 = 1 - *(this + 9);
      if (v64 / v63 * v63 >= v64)
      {
        v65 = v64 / v63;
      }

      else
      {
        v65 = v64 / v63 + 1;
      }
    }

    *&v160 = v62;
    *(&v160 + 1) = v65;
    if (v56 == -1)
    {
      if (v58 < 0)
      {
        v67 = 1;
      }

      else
      {
        v67 = -1;
      }

      v56 = 0xFFFFFFFFLL;
    }

    else
    {
      v66 = -v58;
      if (v66 / v57 * v57 >= v66)
      {
        v67 = v66 / v57;
      }

      else
      {
        v67 = v66 / v57 + 1;
      }
    }

    v161 = v56;
    v162 = v67;
    result = operations_research::sat::IntegerTrail::SafeEnqueue(v4, v61, v60, &v160, 2);
    if (!result)
    {
      return result;
    }

    v4 = *(this + 10);
    v44 = v152;
    v45 = v153;
LABEL_140:
    v68 = *(this + 2);
    v69 = *(this + 2);
    v70 = *(this + 3);
    if (v68 == -1)
    {
      v71 = *(this + 8);
      v72 = *(this + 5);
      v73 = *(this + 6);
      v74 = v71 == -1;
      if ((v70 & 0x8000000000000000) == 0)
      {
        goto LABEL_142;
      }
    }

    else
    {
      v71 = *(this + 8);
      v72 = *(this + 5);
      v73 = *(this + 6);
      v74 = v71 == -1;
      if (((v70 + *(v4[5] + 8 * v68) * v69) & 0x8000000000000000) == 0)
      {
LABEL_142:
        if (v74)
        {
          v76 = 1;
          if (v73 < 1)
          {
            v71 = 0xFFFFFFFFLL;
LABEL_153:
            if (v68 == -1)
            {
              v78 = 1;
              if (v70 >= 0)
              {
                v78 = -1;
              }

              v68 = 0xFFFFFFFFLL;
            }

            else
            {
              v77 = -v70;
              if (v77 / v69 * v69 >= v77)
              {
                v78 = v77 / v69;
              }

              else
              {
                v78 = v77 / v69 + 1;
              }
            }

            *&v160 = v68;
            *(&v160 + 1) = v78;
            v140 = *(this + 14);
            if (v140 == -1)
            {
              if (*(this + 9) < 1)
              {
                v143 = 1;
              }

              else
              {
                v143 = -1;
              }

              v140 = 0xFFFFFFFFLL;
            }

            else
            {
              v141 = *(this + 8);
              v142 = 1 - *(this + 9);
              if (v142 / v141 * v141 >= v142)
              {
                v143 = v142 / v141;
              }

              else
              {
                v143 = v142 / v141 + 1;
              }
            }

            v161 = v140;
            v162 = v143;
            return operations_research::sat::IntegerTrail::SafeEnqueue(v4, v71, v76, &v160, 2);
          }

LABEL_158:
          if (v68 == -1)
          {
            if (v70 < 1)
            {
              v80 = 1;
              v68 = 0xFFFFFFFFLL;
LABEL_305:
              if (v76)
              {
                if (v73 < 0)
                {
                  v144 = 1;
                }

                else
                {
                  v144 = -1;
                }

                v71 = 0xFFFFFFFFLL;
              }

              else
              {
                v145 = -v73;
                v146 = -v73 / v72;
                if (v146 * v72 >= v145)
                {
                  v144 = v146;
                }

                else
                {
                  v144 = v146 + 1;
                }
              }

              *&v160 = v71;
              *(&v160 + 1) = v144;
              v147 = *(this + 14);
              if (v147 == -1)
              {
                if (*(this + 9) < 1)
                {
                  v150 = 1;
                }

                else
                {
                  v150 = -1;
                }

                v147 = 0xFFFFFFFFLL;
              }

              else
              {
                v148 = *(this + 8);
                v149 = 1 - *(this + 9);
                if (v149 / v148 * v148 >= v149)
                {
                  v150 = v149 / v148;
                }

                else
                {
                  v150 = v149 / v148 + 1;
                }
              }

              v161 = v147;
              v162 = v150;
              return operations_research::sat::IntegerTrail::SafeEnqueue(v4, v68, v80, &v160, 2);
            }
          }

          else if (v70 + *(v4[5] + 8 * v68) * v69 <= 0)
          {
            v79 = 1 - v70;
            if (v79 / v69 * v69 >= v79)
            {
              v80 = v79 / v69;
            }

            else
            {
              v80 = v79 / v69 + 1;
            }

            goto LABEL_305;
          }

LABEL_164:
          v81 = 1;
          while (1)
          {
            while (1)
            {
              v82 = v81;
              v83 = (v81 & 1) == 0;
              v84 = 32;
              if (v81)
              {
                v85 = 8;
              }

              else
              {
                v85 = 32;
              }

              v86 = this + 8;
              if (v81)
              {
                v87 = this + 8;
              }

              else
              {
                v87 = this + 32;
              }

              if (v83)
              {
                v84 = 8;
              }

              if (!v83)
              {
                v86 = this + 32;
              }

              v88 = *(this + v84);
              v90 = *(v86 + 1);
              v89 = *(v86 + 2);
              v91 = *(this + 10);
              v92 = v88;
              v93 = v89;
              v94 = v89;
              if (v88 != -1)
              {
                v95 = v91[5];
                v96 = 8 * v88;
                v93 = v89 - *(v95 + (v96 ^ 8)) * v90;
                v94 = v89 + *(v95 + v96) * v90;
              }

              v97 = *(this + v85);
              v99 = *(v87 + 1);
              v98 = *(v87 + 2);
              if (v44 > 0)
              {
                break;
              }

              if (v94 < 1)
              {
                goto LABEL_165;
              }

LABEL_184:
              v100 = v159;
              if ((v159 & 0x8000000000000000) == 0)
              {
                v123 = -v98 / v99;
                if (v123 * v99 >= -v98)
                {
                  v124 = -v98 / v99;
                }

                else
                {
                  v124 = v123 + 1;
                }

                v125 = 1;
                if (v98 >= 0)
                {
                  v125 = -1;
                }

                if (v97 == -1)
                {
                  v126 = 0xFFFFFFFFLL;
                }

                else
                {
                  v126 = v97;
                }

                if (v97 == -1)
                {
                  v127 = v125;
                }

                else
                {
                  v127 = v124;
                }

                v128 = *(this + 14);
                if (v128 == -1)
                {
                  if (*(this + 9) < 0)
                  {
                    v131 = 1;
                  }

                  else
                  {
                    v131 = -1;
                  }

                  v128 = 0xFFFFFFFFLL;
                }

                else
                {
                  v129 = *(this + 8);
                  v130 = -*(this + 9);
                  if (v130 / v129 * v129 >= v130)
                  {
                    v131 = v130 / v129;
                  }

                  else
                  {
                    v131 = v130 / v129 + 1;
                  }
                }

                *&v160 = v128;
                *(&v160 + 1) = v131;
                if (v88 == -1)
                {
                  v133 = 1;
                  if (v89 >= 1)
                  {
                    v133 = -1;
                  }

                  v92 = 0xFFFFFFFFLL;
                }

                else
                {
                  v132 = (1 - v89) / v90;
                  if (v132 * v90 >= 1 - v89)
                  {
                    v133 = (1 - v89) / v90;
                  }

                  else
                  {
                    v133 = v132 + 1;
                  }
                }

                goto LABEL_270;
              }

              if (v45 <= 0)
              {
                if (v97 == -1)
                {
                  if (v98 > 0)
                  {
                    v127 = 1;
                  }

                  else
                  {
                    v127 = -1;
                  }

                  v126 = 0xFFFFFFFFLL;
                }

                else
                {
                  if (-v98 / v99 - (-v98 / v99 * v99 > -v98) >= 0x8000000000000002)
                  {
                    v127 = (-v98 / v99 * v99 > -v98) - -v98 / v99;
                  }

                  else
                  {
                    v127 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  v126 = v97 ^ 1;
                }

                v134 = *(this + 14);
                v135 = *(this + 9);
                if (v134 == -1)
                {
                  if (v135 > 0)
                  {
                    v137 = 1;
                  }

                  else
                  {
                    v137 = -1;
                  }

                  v138 = 0xFFFFFFFFLL;
                }

                else
                {
                  v136 = -v135 / *(this + 8) - (-v135 / *(this + 8) * *(this + 8) > -v135);
                  if (v136 >= 0x8000000000000002)
                  {
                    v137 = -v136;
                  }

                  else
                  {
                    v137 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  v138 = v134 ^ 1;
                }

                *&v160 = v138;
                *(&v160 + 1) = v137;
                if (v88 == -1)
                {
                  v133 = 1;
                  if (v89 >= 1)
                  {
                    v133 = -1;
                  }

                  v92 = 0xFFFFFFFFLL;
                }

                else
                {
                  v139 = (1 - v89) / v90;
                  if (v139 * v90 >= 1 - v89)
                  {
                    v133 = (1 - v89) / v90;
                  }

                  else
                  {
                    v133 = v139 + 1;
                  }
                }

LABEL_270:
                v161 = v92;
                v162 = v133;
                return operations_research::sat::IntegerTrail::SafeEnqueue(v91, v126, v127, &v160, 2);
              }

              v101 = v45 / v94 - ((v45 / v94 * v94) > v45);
              v102 = v97;
              if (v97 == -1)
              {
                if (v101 >= v98)
                {
                  if (((v159 > -(-v159 / v94 * v94)) - -v159 / v94) > v98)
                  {
                    goto LABEL_232;
                  }

                  goto LABEL_165;
                }

                v106 = 0xFFFFFFFFLL;
                v105 = 1;
                v107 = *(this + 14);
                if (v107 == -1)
                {
LABEL_216:
                  *&v160 = 0xFFFFFFFFLL;
                  *(&v160 + 1) = -1;
                  if (v88 == -1)
                  {
                    goto LABEL_217;
                  }

LABEL_195:
                  v109 = *(v91[5] + 8 * v88);
                  v110 = v88;
LABEL_218:
                  v161 = v110;
                  v162 = v109;
                  result = operations_research::sat::IntegerTrail::SafeEnqueue(v91, v106, v105, &v160, 2);
                  if (!result)
                  {
                    return result;
                  }

                  v91 = *(this + 10);
                  v117 = (v100 > -(-v100 / v94 * v94)) - -v100 / v94;
                  v44 = v152;
                  if (v102 == -1)
                  {
                    v45 = v153;
                    if (v117 > v98)
                    {
LABEL_232:
                      v102 = 0xFFFFFFFFLL;
                      v119 = 1;
                      v120 = *(this + 14);
                      if (v120 == -1)
                      {
                        goto LABEL_233;
                      }

LABEL_227:
                      v121 = *(v91[5] + 8 * v120);
                      *&v160 = v120;
                      *(&v160 + 1) = v121;
                      if (v92 != -1)
                      {
                        goto LABEL_228;
                      }

LABEL_234:
                      v122 = -1;
                      v92 = 0xFFFFFFFFLL;
                      goto LABEL_235;
                    }
                  }

                  else
                  {
                    v45 = v153;
                    if (v117 > v98 + *(v91[5] + 8 * v102) * v99)
                    {
                      goto LABEL_223;
                    }
                  }

                  goto LABEL_165;
                }

LABEL_192:
                v108 = *(v91[5] + ((8 * v107) ^ 8));
                if (v108 - 1 > 0x7FFFFFFFFFFFFFFDLL)
                {
                  v108 = 0x7FFFFFFFFFFFFFFFLL;
                }

                *&v160 = v107 ^ 1;
                *(&v160 + 1) = v108;
                if (v88 != -1)
                {
                  goto LABEL_195;
                }

LABEL_217:
                v109 = -1;
                v110 = 0xFFFFFFFFLL;
                goto LABEL_218;
              }

              v103 = v91[5];
              if (v101 < v98 - *(v103 + ((8 * v97) ^ 8)) * v99)
              {
                v104 = (v101 - v98) / v99 - ((v101 - v98) / v99 * v99 > v101 - v98);
                if (v104 >= 0x8000000000000002)
                {
                  v105 = -v104;
                }

                else
                {
                  v105 = 0x7FFFFFFFFFFFFFFFLL;
                }

                v106 = v97 ^ 1;
                v107 = *(this + 14);
                if (v107 == -1)
                {
                  goto LABEL_216;
                }

                goto LABEL_192;
              }

              v117 = (v159 > -(-v159 / v94 * v94)) - -v159 / v94;
              if (v117 > v98 + *(v103 + 8 * v97) * v99)
              {
LABEL_223:
                v118 = v117 - v98;
                if (v118 / v99 * v99 >= v118)
                {
                  v119 = v118 / v99;
                }

                else
                {
                  v119 = v118 / v99 + 1;
                }

                v120 = *(this + 14);
                if (v120 != -1)
                {
                  goto LABEL_227;
                }

LABEL_233:
                *&v160 = 0xFFFFFFFFLL;
                *(&v160 + 1) = -1;
                if (v92 == -1)
                {
                  goto LABEL_234;
                }

LABEL_228:
                v122 = *(v91[5] + 8 * v92);
LABEL_235:
                v161 = v92;
                v162 = v122;
                result = operations_research::sat::IntegerTrail::SafeEnqueue(v91, v102, v119, &v160, 2);
                goto LABEL_236;
              }

LABEL_165:
              v81 = 0;
              if ((v82 & 1) == 0)
              {
                return 1;
              }
            }

            if ((v94 & 0x8000000000000000) == 0)
            {
              if (!v94)
              {
                goto LABEL_165;
              }

              goto LABEL_184;
            }

            if (v93 < 1)
            {
              goto LABEL_165;
            }

            v111 = v159;
            if (v159 < 1)
            {
              operations_research::sat::ProductPropagator::Propagate(&v159, &v160);
            }

            v151 = *(this + v85);
            *&v160 = *(this + v85);
            *(&v160 + 1) = v99;
            v161 = v98;
            v156 = v88;
            v157 = v90;
            v158 = v89;
            if ((operations_research::sat::ProductPropagator::PropagateMaxOnPositiveProduct(this, &v160, &v156, v159, v45) & 1) == 0)
            {
              return 0;
            }

            if (v99 >= 0)
            {
              v112 = v99;
            }

            else
            {
              v112 = -v99;
            }

            if (v151 == -1)
            {
              v113 = -1;
            }

            else
            {
              v113 = v151 ^ (v99 >> 63) ^ 1;
            }

            if (v151 == -1)
            {
              v114 = 0;
            }

            else
            {
              v114 = v112;
            }

            LODWORD(v160) = v113;
            *(&v160 + 1) = v114;
            v161 = -v98;
            v115 = v92 ^ (v90 >> 63) ^ 1;
            if (v90 >= 0)
            {
              v116 = v90;
            }

            else
            {
              v116 = -v90;
            }

            if (v92 == -1)
            {
              v115 = -1;
              v116 = 0;
            }

            LODWORD(v156) = v115;
            v157 = v116;
            v158 = -v89;
            result = operations_research::sat::ProductPropagator::PropagateMaxOnPositiveProduct(this, &v160, &v156, v111, v153);
LABEL_236:
            v81 = 0;
            v44 = v152;
            v45 = v153;
            if ((result & v82 & 1) == 0)
            {
              return result;
            }
          }
        }

        if (v73 + *(v4[5] + 8 * v71) * v72 <= 0)
        {
          v75 = 1 - v73;
          if (v75 / v72 * v72 >= v75)
          {
            v76 = v75 / v72;
          }

          else
          {
            v76 = v75 / v72 + 1;
          }

          goto LABEL_153;
        }

LABEL_149:
        LODWORD(v76) = 0;
        if (v73 + *(v4[5] + 8 * v71) * v72 < 0)
        {
          goto LABEL_164;
        }

        goto LABEL_158;
      }
    }

    if (v74)
    {
      LODWORD(v76) = 1;
      if (v73 < 0)
      {
        goto LABEL_164;
      }

      goto LABEL_158;
    }

    goto LABEL_149;
  }

  return result;
}

uint64_t operations_research::sat::ProductPropagator::RegisterWith(operations_research::sat::ProductPropagator *this, operations_research::sat::GenericLiteralWatcher *a2)
{
  v4 = operations_research::sat::GenericLiteralWatcher::Register(a2, this);
  operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(a2, *(this + 2), v4, 0xFFFFFFFF);
  operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(a2, *(this + 8), v4, 0xFFFFFFFF);
  operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(a2, *(this + 14), v4, 0xFFFFFFFF);

  return operations_research::sat::GenericLiteralWatcher::NotifyThatPropagatorMayNotReachFixedPointInOnePass(a2, v4);
}

uint64_t operations_research::sat::SquarePropagator::SquarePropagator(uint64_t result, int *a2, uint64_t a3, uint64_t a4)
{
  *result = &unk_284F422C8;
  v4 = *a2;
  *(result + 24) = *(a2 + 2);
  *(result + 8) = v4;
  v5 = *(a3 + 16);
  *(result + 32) = *a3;
  *(result + 48) = v5;
  *(result + 56) = a4;
  v6 = *(a2 + 2);
  if (*a2 != -1)
  {
    v6 += *(*(a4 + 152) + 24 * *a2) * *(a2 + 1);
  }

  v8 = v6;
  if (v6 < 0)
  {
    operations_research::sat::SquarePropagator::SquarePropagator(&v8, v7);
  }

  return result;
}

uint64_t operations_research::sat::SquarePropagator::Propagate(operations_research::sat::SquarePropagator *this)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = *(this + 7);
  v3 = *(this + 2);
  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v3 == -1)
  {
    v6 = *(this + 3);
    v7 = *(this + 8);
    v8 = *(this + 6);
    v9 = v4 * v4;
    v10 = (v4 * v4) >> 64;
    if (v7 != -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = v4 + *(v2[5] + 8 * v3) * v5;
    v7 = *(this + 8);
    v8 = *(this + 6);
    v9 = v6 * v6;
    v10 = (v6 * v6) >> 64;
    if (v7 != -1)
    {
LABEL_3:
      v11 = *(this + 5);
      if (v10 != v9 >> 63)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v9 > v8 + *(v2[5] + 8 * v7) * v11)
      {
        v12 = v9 - v8;
        if (v12 / v11 * v11 >= v12)
        {
          v13 = v12 / v11;
        }

        else
        {
          v13 = v12 / v11 + 1;
        }

        goto LABEL_14;
      }

      v8 = (v8 + *(v2[5] + 8 * v7) * v11);
      goto LABEL_27;
    }
  }

  if (v10 != v9 >> 63)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v9 > v8)
  {
    v13 = 1;
    v7 = 0xFFFFFFFFLL;
LABEL_14:
    v14 = (v6 - v4) / v5;
    if (v14 * v5 >= v6 - v4)
    {
      v15 = (v6 - v4) / v5;
    }

    else
    {
      v15 = v14 + 1;
    }

    v17 = __OFSUB__(v6, v4);
    v19 = v6 == v4;
    v16 = v6 - v4 < 0;
    v18 = 1;
    if (v16 ^ v17 | v19)
    {
      v18 = -1;
    }

    v19 = v3 == -1;
    if (v3 == -1)
    {
      v3 = 0xFFFFFFFFLL;
    }

    if (v19)
    {
      v15 = v18;
    }

    *&v63 = v3;
    *(&v63 + 1) = v15;
    if ((operations_research::sat::IntegerTrail::SafeEnqueue(v2, v7, v13, &v63, 1) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_46;
  }

LABEL_27:
  if (v9 >= v8)
  {
    goto LABEL_46;
  }

  v20 = operations_research::sat::CeilSquareRoot(v8);
  v21 = *(this + 7);
  v22 = *(this + 2);
  if (v22 == -1)
  {
    if (*(this + 3) < v20)
    {
      v25 = 1;
    }

    else
    {
      v25 = -1;
    }

    v22 = 0xFFFFFFFFLL;
    v26 = (v20 - 1) * (v20 - 1) + 1;
    v27 = *(this + 8);
    if (v27 != -1)
    {
LABEL_33:
      v28 = *(this + 5);
      v29 = v26 - *(this + 6);
      if (v29 / v28 * v28 >= v29)
      {
        v30 = v29 / v28;
      }

      else
      {
        v30 = v29 / v28 + 1;
      }

      *&v63 = v27;
      *(&v63 + 1) = v30;
      result = operations_research::sat::IntegerTrail::SafeEnqueue(v21, v22, v25, &v63, 1);
      if (!result)
      {
        return result;
      }

      goto LABEL_46;
    }
  }

  else
  {
    v23 = *(this + 2);
    v24 = v20 - *(this + 3);
    if (v24 / v23 * v23 >= v24)
    {
      v25 = v24 / v23;
    }

    else
    {
      v25 = v24 / v23 + 1;
    }

    v26 = (v20 - 1) * (v20 - 1) + 1;
    v27 = *(this + 8);
    if (v27 != -1)
    {
      goto LABEL_33;
    }
  }

  if (*(this + 6) < v26)
  {
    v32 = 1;
  }

  else
  {
    v32 = -1;
  }

  *&v63 = 0xFFFFFFFFLL;
  *(&v63 + 1) = v32;
  result = operations_research::sat::IntegerTrail::SafeEnqueue(v21, v22, v25, &v63, 1);
  if (!result)
  {
    return result;
  }

LABEL_46:
  v33 = *(this + 7);
  v34 = *(this + 2);
  v35 = *(this + 2);
  v36 = *(this + 3);
  if (v34 == -1)
  {
    v37 = *(this + 3);
    v38 = *(this + 8);
    v39 = *(this + 6);
    if (v38 != -1)
    {
      goto LABEL_48;
    }

LABEL_61:
    v41 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v37 * v37) >> 64 == (v37 * v37) >> 63)
    {
      v41 = v37 * v37;
    }

    if (v41 < v39)
    {
      if (v39 > v37 * v37)
      {
        v43 = 1;
      }

      else
      {
        v43 = -1;
      }

      v44 = 0xFFFFFFFFLL;
      if (v34 != -1)
      {
LABEL_55:
        if ((v37 - v36) / v35 - ((v37 - v36) / v35 * v35 > v37 - v36) >= 0x8000000000000002)
        {
          v45 = ((v37 - v36) / v35 * v35 > v37 - v36) - (v37 - v36) / v35;
        }

        else
        {
          v45 = 0x7FFFFFFFFFFFFFFFLL;
        }

        *&v63 = v34 ^ 1;
        *(&v63 + 1) = v45;
        return (operations_research::sat::IntegerTrail::SafeEnqueue(v33, v44, v43, &v63, 1) & 1) != 0;
      }

LABEL_68:
      v46 = 1;
      if (v37 >= v36)
      {
        v46 = -1;
      }

      *&v63 = 0xFFFFFFFFLL;
      *(&v63 + 1) = v46;
      return (operations_research::sat::IntegerTrail::SafeEnqueue(v33, v44, v43, &v63, 1) & 1) != 0;
    }

    goto LABEL_73;
  }

  v37 = v36 - *(v33[5] + ((8 * v34) ^ 8)) * v35;
  v38 = *(this + 8);
  v39 = *(this + 6);
  if (v38 == -1)
  {
    goto LABEL_61;
  }

LABEL_48:
  v40 = *(this + 5);
  v41 = v37 * v37;
  if ((v37 * v37) >> 64 != (v37 * v37) >> 63)
  {
    v41 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v41 < v39 - *(v33[5] + ((8 * v38) ^ 8)) * v40)
  {
    v42 = (v41 - v39) / v40 - ((v41 - v39) / v40 * v40 > v41 - v39);
    if (v42 >= 0x8000000000000002)
    {
      v43 = -v42;
    }

    else
    {
      v43 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v44 = v38 ^ 1u;
    if (v34 != -1)
    {
      goto LABEL_55;
    }

    goto LABEL_68;
  }

  v39 = (v39 - *(v33[5] + ((8 * v38) ^ 8)) * v40);
LABEL_73:
  if (v41 <= v39)
  {
    return 1;
  }

  v47 = operations_research::sat::FloorSquareRoot(v39);
  v48 = *(this + 7);
  v49 = *(this + 2);
  v50 = *(this + 3);
  if (v49 == -1)
  {
    if (v47 < v50)
    {
      v52 = 1;
    }

    else
    {
      v52 = -1;
    }

    v53 = 0xFFFFFFFFLL;
  }

  else
  {
    v51 = (v47 - v50) / *(this + 2) - ((v47 - v50) / *(this + 2) * *(this + 2) > v47 - v50);
    if (v51 >= 0x8000000000000002)
    {
      v52 = -v51;
    }

    else
    {
      v52 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v53 = v49 ^ 1;
  }

  v54 = v47 + 1;
  v55 = (v54 * v54) >> 64;
  v56 = v54 * v54;
  if (v55 == v56 >> 63)
  {
    v57 = v56 - 1;
  }

  else
  {
    v57 = 0x7FFFFFFFFFFFFFFELL;
  }

  v58 = *(this + 8);
  v59 = *(this + 6);
  if (v58 == -1)
  {
    if (v57 < v59)
    {
      v62 = 1;
    }

    else
    {
      v62 = -1;
    }

    *&v63 = 0xFFFFFFFFLL;
    *(&v63 + 1) = v62;
    result = operations_research::sat::IntegerTrail::SafeEnqueue(v48, v53, v52, &v63, 1);
    if (result)
    {
      return 1;
    }
  }

  else
  {
    v60 = (v57 - v59) / *(this + 5) - ((v57 - v59) / *(this + 5) * *(this + 5) > v57 - v59);
    if (v60 >= 0x8000000000000002)
    {
      v61 = -v60;
    }

    else
    {
      v61 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *&v63 = v58 ^ 1;
    *(&v63 + 1) = v61;
    result = operations_research::sat::IntegerTrail::SafeEnqueue(v48, v53, v52, &v63, 1);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t operations_research::sat::SquarePropagator::RegisterWith(operations_research::sat::SquarePropagator *this, operations_research::sat::GenericLiteralWatcher *a2)
{
  v4 = operations_research::sat::GenericLiteralWatcher::Register(a2, this);
  operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(a2, *(this + 2), v4, 0xFFFFFFFF);
  operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(a2, *(this + 8), v4, 0xFFFFFFFF);

  return operations_research::sat::GenericLiteralWatcher::NotifyThatPropagatorMayNotReachFixedPointInOnePass(a2, v4);
}

uint64_t operations_research::sat::DivisionPropagator::DivisionPropagator(uint64_t result, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  *result = &unk_284F422F8;
  v5 = *a2;
  *(result + 24) = *(a2 + 2);
  *(result + 8) = v5;
  v6 = *a3;
  *(result + 48) = *(a3 + 2);
  *(result + 32) = v6;
  v7 = *a4;
  *(result + 72) = *(a4 + 2);
  *(result + 56) = v7;
  if (*a3 == -1)
  {
    v10 = 0;
    v9 = -1;
  }

  else
  {
    v8 = *(a3 + 1);
    v9 = *a3 ^ (v8 >> 63) ^ 1;
    if (v8 >= 0)
    {
      v10 = *(a3 + 1);
    }

    else
    {
      v10 = -v8;
    }
  }

  v11 = -*(a3 + 2);
  *(result + 80) = v9;
  *(result + 88) = v10;
  *(result + 96) = v11;
  v12 = *a2;
  if (*a2 == -1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a2 + 1);
    v12 ^= (v13 >> 63) ^ 1;
    if (v13 < 0)
    {
      v13 = -v13;
    }
  }

  v14 = -*(a2 + 2);
  *(result + 104) = v12;
  *(result + 112) = v13;
  *(result + 120) = v14;
  if (*a4 == -1)
  {
    v18 = -*(a4 + 2);
    *(result + 128) = -1;
    *(result + 136) = 0;
    *(result + 144) = v18;
    *(result + 152) = a5;
  }

  else
  {
    v15 = *(a4 + 1);
    v16 = *a4 ^ (v15 >> 63) ^ 1;
    if (v15 < 0)
    {
      v15 = -v15;
    }

    v17 = -*(a4 + 2);
    *(result + 128) = v16;
    *(result + 136) = v15;
    *(result + 144) = v17;
    *(result + 152) = a5;
  }

  return result;
}

uint64_t operations_research::sat::DivisionPropagator::Propagate(operations_research::sat::DivisionPropagator *this)
{
  v2 = *(this + 19);
  v3 = *(this + 8);
  v4 = *(this + 5);
  v5 = *(this + 6);
  if (v3 != -1)
  {
    v6 = *(v2 + 40);
    v7 = 8 * v3;
    if (v5 + *(v6 + v7) * v4 < 0 && v5 - *(v6 + (v7 ^ 8)) * v4 > 0)
    {
      return 1;
    }
  }

  v9 = *(this + 2);
  v8 = *(this + 3);
  v10 = *(this + 2);
  v11 = *(this + 3);
  v12 = *(this + 6);
  if (v3 != -1)
  {
    v12 = v5 - *(*(v2 + 40) + ((8 * v3) ^ 8)) * v4;
  }

  if (v12 < 0)
  {
    v3 = *(this + 20);
    v13 = *(this + 21);
    v33 = *(this + 2);
    v34 = *(this + 2);
    v32 = *(this + 3);
    v14 = *(this + 3);
    v9 = *(this + 26);
    v8 = *(this + 27);
    v10 = *(this + 14);
    v4 = *(this + 11);
    v5 = *(this + 12);
    v11 = *(this + 15);
  }

  else
  {
    v13 = *(this + 9);
    v33 = *(this + 14);
    v34 = *(this + 26);
    v32 = *(this + 27);
    v14 = *(this + 15);
  }

  v41 = v9;
  v42 = v8;
  v43 = v10;
  v44 = v11;
  v37 = v3;
  v38 = v13;
  v39 = v4;
  v40 = v5;
  v35 = *(this + 56);
  v36 = *(this + 9);
  result = operations_research::sat::DivisionPropagator::PropagateSigns(this, &v41, &v37, &v35);
  if (result)
  {
    v16 = *(this + 19);
    v17 = v11;
    if (v9 != -1)
    {
      v17 = v11 - *(*(v16 + 40) + ((8 * v9) ^ 8)) * v10;
    }

    v18 = v34;
    v19 = v14;
    if ((v17 & 0x8000000000000000) == 0)
    {
      v20 = *(this + 14);
      v21 = *(this + 9);
      if (v20 != -1)
      {
        v21 -= *(*(v16 + 40) + ((8 * v20) ^ 8)) * *(this + 8);
      }

      if ((v21 & 0x8000000000000000) == 0)
      {
        v41 = v9;
        v42 = v8;
        v43 = v10;
        v44 = v11;
        v37 = v3;
        v38 = v13;
        v39 = v4;
        v40 = v5;
        v35 = *(this + 56);
        v36 = *(this + 9);
        result = operations_research::sat::DivisionPropagator::PropagateUpperBounds(this, &v41, &v37, &v35);
        if (!result)
        {
          return result;
        }

        v16 = *(this + 19);
        v18 = v34;
        v19 = v14;
      }
    }

    v22 = v19;
    if (v18 != -1)
    {
      v22 = v19 - *(*(v16 + 40) + ((8 * v18) ^ 8)) * v33;
    }

    if ((v22 & 0x8000000000000000) == 0)
    {
      v23 = *(this + 32);
      v24 = *(this + 18);
      if (v23 != -1)
      {
        v24 -= *(*(v16 + 40) + ((8 * v23) ^ 8)) * *(this + 17);
      }

      if ((v24 & 0x8000000000000000) == 0)
      {
        v41 = v18;
        v42 = v32;
        v43 = v33;
        v44 = v19;
        v37 = v3;
        v38 = v13;
        v39 = v4;
        v40 = v5;
        v35 = *(this + 8);
        v36 = *(this + 18);
        result = operations_research::sat::DivisionPropagator::PropagateUpperBounds(this, &v41, &v37, &v35);
        if (!result)
        {
          return result;
        }

        v16 = *(this + 19);
        v18 = v34;
        v19 = v14;
      }
    }

    v25 = v11;
    if (v9 != -1)
    {
      v25 = v11 + *(*(v16 + 40) + 8 * v9) * v10;
    }

    if ((v25 & 0x8000000000000000) == 0)
    {
      v26 = *(this + 14);
      v27 = *(this + 9);
      if (v26 != -1)
      {
        v27 += *(*(v16 + 40) + 8 * v26) * *(this + 8);
      }

      if ((v27 & 0x8000000000000000) == 0)
      {
        v41 = v9;
        v42 = v8;
        v43 = v10;
        v44 = v11;
        v37 = v3;
        v38 = v13;
        v39 = v4;
        v40 = v5;
        v35 = *(this + 56);
        v28 = *(this + 9);
LABEL_41:
        v36 = v28;
        return operations_research::sat::DivisionPropagator::PropagatePositiveDomains(this, &v41, &v37, &v35);
      }
    }

    v29 = v19;
    if (v18 != -1)
    {
      v29 = v19 + *(*(v16 + 40) + 8 * v18) * v33;
    }

    if ((v29 & 0x8000000000000000) == 0)
    {
      v30 = *(this + 32);
      v31 = *(this + 18);
      if (v30 != -1)
      {
        v31 += *(*(v16 + 40) + 8 * v30) * *(this + 17);
      }

      if ((v31 & 0x8000000000000000) == 0)
      {
        v41 = v18;
        v42 = v32;
        v43 = v33;
        v44 = v19;
        v37 = v3;
        v38 = v13;
        v39 = v4;
        v40 = v5;
        v35 = *(this + 8);
        v28 = *(this + 18);
        goto LABEL_41;
      }
    }

    return 1;
  }

  return result;
}

uint64_t operations_research::sat::DivisionPropagator::PropagateSigns(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v86 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 152);
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  if (v9 == -1)
  {
    v14 = *(a2 + 2);
    v15 = v14;
    v16 = *a4;
    v18 = *(a4 + 1);
    v17 = *(a4 + 2);
    if (v16 != -1)
    {
LABEL_3:
      v19 = v8[5];
      v20 = 8 * v16;
      v21 = v17 + *(v19 + v20) * v18;
      v22 = v17 - *(v19 + (v20 ^ 8)) * v18;
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      if (v21 < 1)
      {
        goto LABEL_67;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v12 = v8[5];
    v13 = 8 * v9;
    v14 = v11 + *(v12 + v13) * v10;
    v15 = v11 - *(v12 + (v13 ^ 8)) * v10;
    v16 = *a4;
    v18 = *(a4 + 1);
    v17 = *(a4 + 2);
    if (v16 != -1)
    {
      goto LABEL_3;
    }
  }

  v21 = v17;
  v22 = v17;
  if (v14 < 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v21 < 0)
  {
    v36 = -v17 / v18;
    if (v36 * v18 >= -v17)
    {
      v37 = -v17 / v18;
    }

    else
    {
      v37 = v36 + 1;
    }

    v38 = v17 < 0;
    v39 = 1;
    if (!v38)
    {
      v39 = -1;
    }

    if (v16 == -1)
    {
      v40 = 0xFFFFFFFFLL;
    }

    else
    {
      v40 = v16;
    }

    if (v16 == -1)
    {
      v41 = v39;
    }

    else
    {
      v41 = v37;
    }

    if (v9 == -1)
    {
      if (v11 < 0)
      {
        v50 = 1;
      }

      else
      {
        v50 = -1;
      }

      *&v83 = 0xFFFFFFFFLL;
      *(&v83 + 1) = v50;
      v44 = *a3;
      if (v44 != -1)
      {
LABEL_41:
        v45 = *(a3 + 1);
        v46 = 1 - *(a3 + 2);
        if (v46 / v45 * v45 >= v46)
        {
          v47 = v46 / v45;
        }

        else
        {
          v47 = v46 / v45 + 1;
        }

        v84 = v44;
        v85 = v47;
        if ((operations_research::sat::IntegerTrail::SafeEnqueue(v8, v40, v41, &v83, 2) & 1) == 0)
        {
          return 0;
        }

LABEL_67:
        if (v15 > 0)
        {
          if ((v22 & 0x8000000000000000) == 0)
          {
            return 1;
          }

LABEL_86:
          v66 = *a2;
          v67 = *(a2 + 2);
          if (v66 == -1)
          {
            v69 = (v67 >> 63) | 1;
            v70 = 0xFFFFFFFFLL;
            v71 = *(a1 + 152);
            v72 = *a4;
            v73 = *(a4 + 2);
            if (v72 != -1)
            {
              goto LABEL_91;
            }
          }

          else
          {
            v68 = ~v67 / *(a2 + 1) - (~v67 / *(a2 + 1) * *(a2 + 1) > ~v67);
            if (v68 >= 0x8000000000000002)
            {
              v69 = -v68;
            }

            else
            {
              v69 = 0x7FFFFFFFFFFFFFFFLL;
            }

            v70 = v66 ^ 1;
            v71 = *(a1 + 152);
            v72 = *a4;
            v73 = *(a4 + 2);
            if (v72 != -1)
            {
LABEL_91:
              v74 = ~v73 / *(a4 + 1) - (~v73 / *(a4 + 1) * *(a4 + 1) > ~v73);
              v75 = 0x7FFFFFFFFFFFFFFFLL;
              if (v74 >= 0x8000000000000002)
              {
                v75 = -v74;
              }

              *&v83 = v72 ^ 1;
              *(&v83 + 1) = v75;
              v76 = *a3;
              if (v76 != -1)
              {
LABEL_94:
                v77 = *(a3 + 1);
                v78 = 1 - *(a3 + 2);
                if (v78 / v77 * v77 >= v78)
                {
                  v79 = v78 / v77;
                }

                else
                {
                  v79 = v78 / v77 + 1;
                }

                v84 = v76;
                v85 = v79;
                result = operations_research::sat::IntegerTrail::SafeEnqueue(v71, v70, v69, &v83, 2);
                if (!result)
                {
                  return result;
                }

                return 1;
              }

LABEL_101:
              if (*(a3 + 2) < 1)
              {
                v80 = 1;
              }

              else
              {
                v80 = -1;
              }

              v84 = 0xFFFFFFFFLL;
              v85 = v80;
              result = operations_research::sat::IntegerTrail::SafeEnqueue(v71, v70, v69, &v83, 2);
              if (!result)
              {
                return result;
              }

              return 1;
            }
          }

          *&v83 = 0xFFFFFFFFLL;
          *(&v83 + 1) = (v73 >> 63) | 1;
          v76 = *a3;
          if (v76 != -1)
          {
            goto LABEL_94;
          }

          goto LABEL_101;
        }

        if (v22 < 1)
        {
          if (v15 || !v22)
          {
            return 1;
          }

          goto LABEL_86;
        }

        v52 = *a4;
        v53 = *(a4 + 2);
        if (v52 == -1)
        {
          if (v53 > 0)
          {
            v55 = 1;
          }

          else
          {
            v55 = -1;
          }

          v56 = 0xFFFFFFFFLL;
          v57 = *(a1 + 152);
          v58 = *a2;
          v59 = *(a2 + 2);
          if (v58 != -1)
          {
LABEL_76:
            v60 = -v59 / *(a2 + 1) - (-v59 / *(a2 + 1) * *(a2 + 1) > -v59);
            v61 = 0x7FFFFFFFFFFFFFFFLL;
            if (v60 >= 0x8000000000000002)
            {
              v61 = -v60;
            }

            *&v83 = v58 ^ 1;
            *(&v83 + 1) = v61;
            v62 = *a3;
            if (v62 != -1)
            {
              goto LABEL_79;
            }

            goto LABEL_113;
          }
        }

        else
        {
          v54 = -v53 / *(a4 + 1) - (-v53 / *(a4 + 1) * *(a4 + 1) > -v53);
          if (v54 >= 0x8000000000000002)
          {
            v55 = -v54;
          }

          else
          {
            v55 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v56 = v52 ^ 1;
          v57 = *(a1 + 152);
          v58 = *a2;
          v59 = *(a2 + 2);
          if (v58 != -1)
          {
            goto LABEL_76;
          }
        }

        v81 = 1;
        if (v59 <= 0)
        {
          v81 = -1;
        }

        *&v83 = 0xFFFFFFFFLL;
        *(&v83 + 1) = v81;
        v62 = *a3;
        if (v62 != -1)
        {
LABEL_79:
          v63 = *(a3 + 1);
          v64 = 1 - *(a3 + 2);
          if (v64 / v63 * v63 >= v64)
          {
            v65 = v64 / v63;
          }

          else
          {
            v65 = v64 / v63 + 1;
          }

          v84 = v62;
          v85 = v65;
          return (operations_research::sat::IntegerTrail::SafeEnqueue(v57, v56, v55, &v83, 2) & 1) != 0;
        }

LABEL_113:
        if (*(a3 + 2) < 1)
        {
          v82 = 1;
        }

        else
        {
          v82 = -1;
        }

        v84 = 0xFFFFFFFFLL;
        v85 = v82;
        return (operations_research::sat::IntegerTrail::SafeEnqueue(v57, v56, v55, &v83, 2) & 1) != 0;
      }
    }

    else
    {
      v42 = -v11;
      if (v42 / v10 * v10 >= v42)
      {
        v43 = v42 / v10;
      }

      else
      {
        v43 = v42 / v10 + 1;
      }

      *&v83 = v9;
      *(&v83 + 1) = v43;
      v44 = *a3;
      if (v44 != -1)
      {
        goto LABEL_41;
      }
    }

    if (*(a3 + 2) < 1)
    {
      v51 = 1;
    }

    else
    {
      v51 = -1;
    }

    v84 = 0xFFFFFFFFLL;
    v85 = v51;
    if ((operations_research::sat::IntegerTrail::SafeEnqueue(v8, v40, v41, &v83, 2) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_67;
  }

  if (v14 || !v21)
  {
    goto LABEL_67;
  }

  v8 = *(a1 + 152);
  LODWORD(v9) = *a2;
LABEL_11:
  if (v9 == -1)
  {
    if (*(a2 + 2) < 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = -1;
    }

    v23 = 0xFFFFFFFFLL;
    v27 = *a4;
    if (v27 != -1)
    {
LABEL_16:
      v28 = *(a4 + 1);
      v29 = 1 - *(a4 + 2);
      if (v29 / v28 * v28 >= v29)
      {
        v30 = v29 / v28;
      }

      else
      {
        v30 = v29 / v28 + 1;
      }

      *&v83 = v27;
      *(&v83 + 1) = v30;
      v31 = *a3;
      if (v31 != -1)
      {
        goto LABEL_20;
      }

      goto LABEL_54;
    }
  }

  else
  {
    v23 = v9;
    v24 = *(a2 + 1);
    v25 = 1 - *(a2 + 2);
    if (v25 / v24 * v24 >= v25)
    {
      v26 = v25 / v24;
    }

    else
    {
      v26 = v25 / v24 + 1;
    }

    v27 = *a4;
    if (v27 != -1)
    {
      goto LABEL_16;
    }
  }

  if (*(a4 + 2) < 1)
  {
    v48 = 1;
  }

  else
  {
    v48 = -1;
  }

  *&v83 = 0xFFFFFFFFLL;
  *(&v83 + 1) = v48;
  v31 = *a3;
  if (v31 != -1)
  {
LABEL_20:
    v32 = *(a3 + 1);
    v33 = 1 - *(a3 + 2);
    if (v33 / v32 * v32 >= v33)
    {
      v34 = v33 / v32;
    }

    else
    {
      v34 = v33 / v32 + 1;
    }

    v84 = v31;
    v85 = v34;
    result = operations_research::sat::IntegerTrail::SafeEnqueue(v8, v23, v26, &v83, 2);
    if (!result)
    {
      return result;
    }

    goto LABEL_67;
  }

LABEL_54:
  if (*(a3 + 2) < 1)
  {
    v49 = 1;
  }

  else
  {
    v49 = -1;
  }

  v84 = 0xFFFFFFFFLL;
  v85 = v49;
  result = operations_research::sat::IntegerTrail::SafeEnqueue(v8, v23, v26, &v83, 2);
  if (result)
  {
    goto LABEL_67;
  }

  return result;
}

uint64_t operations_research::sat::DivisionPropagator::PropagateUpperBounds(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 152);
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  if (v9 == -1)
  {
    v12 = *(a2 + 2);
    v13 = *a3;
    v14 = *(a3 + 1);
    v15 = *(a3 + 2);
    if (v13 != -1)
    {
LABEL_3:
      v16 = v8[5];
      v17 = 8 * v13;
      v18 = v15 + *(v16 + v17) * v14;
      v19 = v15 - *(v16 + (v17 ^ 8)) * v14;
      v20 = *a4;
      v21 = *(a4 + 2);
      if (*a4 != -1)
      {
        goto LABEL_4;
      }

LABEL_20:
      if (v21 <= v12 / v18)
      {
        goto LABEL_32;
      }

      v25 = 1;
      v26 = 0xFFFFFFFFLL;
      if (v9 != -1)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v12 = v11 - *(v8[5] + ((8 * v9) ^ 8)) * v10;
    v13 = *a3;
    v14 = *(a3 + 1);
    v15 = *(a3 + 2);
    if (v13 != -1)
    {
      goto LABEL_3;
    }
  }

  v18 = v15;
  v19 = v15;
  v20 = *a4;
  v21 = *(a4 + 2);
  if (*a4 == -1)
  {
    goto LABEL_20;
  }

LABEL_4:
  v22 = *(a4 + 1);
  v23 = v21 - *(v8[5] + ((8 * v20) ^ 8)) * v22;
  if (v23 <= v12 / v18)
  {
    v21 -= *(v8[5] + ((8 * v20) ^ 8)) * v22;
    goto LABEL_32;
  }

  v24 = (v12 / v18 - v21) / v22 - ((v12 / v18 - v21) / v22 * v22 > v12 / v18 - v21);
  if (v24 >= 0x8000000000000002)
  {
    v25 = -v24;
  }

  else
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v26 = v20 ^ 1u;
  v21 = v23;
  if (v9 != -1)
  {
LABEL_9:
    v27 = (v12 - v11) / v10 - ((v12 - v11) / v10 * v10 > v12 - v11);
    if (v27 >= 0x8000000000000002)
    {
      v28 = -v27;
    }

    else
    {
      v28 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *&v57 = v9 ^ 1;
    *(&v57 + 1) = v28;
    if (v13 != -1)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_22:
  if (v12 < v11)
  {
    v32 = 1;
  }

  else
  {
    v32 = -1;
  }

  *&v57 = 0xFFFFFFFFLL;
  *(&v57 + 1) = v32;
  if (v13 != -1)
  {
LABEL_13:
    v29 = v18 - v15;
    if (v29 / v14 * v14 >= v29)
    {
      v30 = v29 / v14;
    }

    else
    {
      v30 = v29 / v14 + 1;
    }

    v58 = v13;
    v59 = v30;
    result = operations_research::sat::IntegerTrail::SafeEnqueue(v8, v26, v25, &v57, 2);
    if (!result)
    {
      return result;
    }

LABEL_32:
    if (((v21 + 1) * v19) >> 64 == ((v21 + 1) * v19) >> 63)
    {
      v34 = (v21 + 1) * v19;
    }

    else
    {
      v34 = (((v21 + 1) ^ v19) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    }

    v35 = (v34 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    v36 = __OFSUB__(v34, 1);
    v37 = v34 - 1;
    if (!v36)
    {
      v35 = v37;
    }

    if (v12 <= v35)
    {
      return 1;
    }

    v38 = *a2;
    v39 = *(a2 + 2);
    if (v38 == -1)
    {
      if (v35 < v39)
      {
        v41 = 1;
      }

      else
      {
        v41 = -1;
      }

      v42 = 0xFFFFFFFFLL;
      v43 = *(a1 + 152);
      v44 = *a3;
      v45 = *(a3 + 2);
      if (v44 != -1)
      {
LABEL_43:
        v46 = *(a3 + 1);
        if ((v19 - v45) / v46 - ((v19 - v45) / v46 * v46 > v19 - v45) >= 0x8000000000000002)
        {
          v47 = ((v19 - v45) / v46 * v46 > v19 - v45) - (v19 - v45) / v46;
        }

        else
        {
          v47 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v48 = 1 - v45;
        if (v48 / v46 * v46 >= v48)
        {
          v49 = v48 / v46;
        }

        else
        {
          v49 = v48 / v46 + 1;
        }

        *&v57 = v44 ^ 1;
        *(&v57 + 1) = v47;
        v58 = v44;
        v59 = v49;
        v50 = *a4;
        v51 = *(a4 + 2);
        if (v50 != -1)
        {
          goto LABEL_50;
        }

        goto LABEL_67;
      }
    }

    else
    {
      v40 = (v35 - v39) / *(a2 + 1) - ((v35 - v39) / *(a2 + 1) * *(a2 + 1) > v35 - v39);
      if (v40 >= 0x8000000000000002)
      {
        v41 = -v40;
      }

      else
      {
        v41 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v42 = v38 ^ 1;
      v43 = *(a1 + 152);
      v44 = *a3;
      v45 = *(a3 + 2);
      if (v44 != -1)
      {
        goto LABEL_43;
      }
    }

    if (v19 < v45)
    {
      v54 = 1;
    }

    else
    {
      v54 = -1;
    }

    if (v45 < 1)
    {
      v55 = 1;
    }

    else
    {
      v55 = -1;
    }

    *&v57 = 0xFFFFFFFFLL;
    *(&v57 + 1) = v54;
    v58 = 0xFFFFFFFFLL;
    v59 = v55;
    v50 = *a4;
    v51 = *(a4 + 2);
    if (v50 != -1)
    {
LABEL_50:
      v52 = (v21 - v51) / *(a4 + 1) - ((v21 - v51) / *(a4 + 1) * *(a4 + 1) > v21 - v51);
      if (v52 >= 0x8000000000000002)
      {
        v53 = -v52;
      }

      else
      {
        v53 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v60 = v50 ^ 1;
      v61 = v53;
      result = operations_research::sat::IntegerTrail::SafeEnqueue(v43, v42, v41, &v57, 3);
      if (!result)
      {
        return result;
      }

      return 1;
    }

LABEL_67:
    if (v21 < v51)
    {
      v56 = 1;
    }

    else
    {
      v56 = -1;
    }

    v60 = 0xFFFFFFFFLL;
    v61 = v56;
    result = operations_research::sat::IntegerTrail::SafeEnqueue(v43, v42, v41, &v57, 3);
    if (!result)
    {
      return result;
    }

    return 1;
  }

LABEL_26:
  if (v18 > v15)
  {
    v33 = 1;
  }

  else
  {
    v33 = -1;
  }

  v58 = 0xFFFFFFFFLL;
  v59 = v33;
  result = operations_research::sat::IntegerTrail::SafeEnqueue(v8, v26, v25, &v57, 2);
  if (result)
  {
    goto LABEL_32;
  }

  return result;
}

uint64_t operations_research::sat::DivisionPropagator::PropagatePositiveDomains(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v115 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 152);
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  if (v9 == -1)
  {
    v14 = *(a2 + 2);
    v15 = v14;
    v16 = *a3;
    v18 = *(a3 + 1);
    v17 = *(a3 + 2);
    if (v16 != -1)
    {
LABEL_3:
      v19 = v8[5];
      v20 = 8 * v16;
      v21 = v17 + *(v19 + v20) * v18;
      v22 = v17 - *(v19 + (v20 ^ 8)) * v18;
      v23 = *a4;
      v24 = *(a4 + 2);
      v25 = v14 / v22;
      if (v23 != -1)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v12 = v8[5];
    v13 = 8 * v9;
    v14 = v11 + *(v12 + v13) * v10;
    v15 = v11 - *(v12 + (v13 ^ 8)) * v10;
    v16 = *a3;
    v18 = *(a3 + 1);
    v17 = *(a3 + 2);
    if (v16 != -1)
    {
      goto LABEL_3;
    }
  }

  v21 = v17;
  v22 = v17;
  v23 = *a4;
  v24 = *(a4 + 2);
  v25 = v14 / v17;
  if (v23 != -1)
  {
LABEL_4:
    v26 = *(a4 + 1);
    v27 = v8[5];
    v28 = 8 * v23;
    v29 = v24 + *(v27 + v28) * v26;
    v30 = v24 - *(v27 + (v28 ^ 8)) * v26;
    if (v29 >= v25)
    {
      v24 += *(v27 + 8 * v23) * v26;
      goto LABEL_39;
    }

    v31 = v25 - v24;
    if (v31 / v26 * v26 >= v31)
    {
      v32 = v31 / v26;
    }

    else
    {
      v32 = v31 / v26 + 1;
    }

    v24 = v29;
    if (v9 != -1)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_23:
  if (v24 >= v25)
  {
    v30 = v24;
    goto LABEL_39;
  }

  v32 = 1;
  v23 = 0xFFFFFFFFLL;
  v30 = v24;
  if (v9 != -1)
  {
LABEL_9:
    v33 = v14 - v11;
    if (v33 / v10 * v10 >= v33)
    {
      v34 = v33 / v10;
    }

    else
    {
      v34 = v33 / v10 + 1;
    }

    *&v108 = v9;
    *(&v108 + 1) = v34;
    if (v16 != -1)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_25:
  if (v14 > v11)
  {
    v39 = 1;
  }

  else
  {
    v39 = -1;
  }

  *&v108 = 0xFFFFFFFFLL;
  *(&v108 + 1) = v39;
  if (v16 != -1)
  {
LABEL_13:
    if ((v22 - v17) / v18 - ((v22 - v17) / v18 * v18 > v22 - v17) >= 0x8000000000000002)
    {
      v35 = ((v22 - v17) / v18 * v18 > v22 - v17) - (v22 - v17) / v18;
    }

    else
    {
      v35 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v36 = 1 - v17;
    if (v36 / v18 * v18 >= v36)
    {
      v37 = v36 / v18;
    }

    else
    {
      v37 = v36 / v18 + 1;
    }

    v109 = v16 ^ 1;
    v110 = v35;
    v111 = v16;
    v112 = v37;
    result = operations_research::sat::IntegerTrail::SafeEnqueue(v8, v23, v32, &v108, 3);
    if (!result)
    {
      return result;
    }

LABEL_39:
    v42 = ((v24 ^ v21) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    if ((v21 * v24) >> 64 == (v21 * v24) >> 63)
    {
      v42 = v21 * v24;
    }

    if (v14 >= v42)
    {
      goto LABEL_68;
    }

    v43 = *a2;
    if (v43 == -1)
    {
      if (*(a2 + 2) < v42)
      {
        v46 = 1;
      }

      else
      {
        v46 = -1;
      }

      v43 = 0xFFFFFFFFLL;
      v47 = *(a1 + 152);
      v48 = *a3;
      if (v48 != -1)
      {
LABEL_47:
        v49 = *(a3 + 1);
        v50 = v21 - *(a3 + 2);
        if (v50 / v49 * v49 >= v50)
        {
          v51 = v50 / v49;
        }

        else
        {
          v51 = v50 / v49 + 1;
        }

        *&v108 = v48;
        *(&v108 + 1) = v51;
        v52 = *a4;
        if (v52 != -1)
        {
          goto LABEL_51;
        }

        goto LABEL_64;
      }
    }

    else
    {
      v44 = *(a2 + 1);
      v45 = v42 - *(a2 + 2);
      if (v45 / v44 * v44 >= v45)
      {
        v46 = v45 / v44;
      }

      else
      {
        v46 = v45 / v44 + 1;
      }

      v47 = *(a1 + 152);
      v48 = *a3;
      if (v48 != -1)
      {
        goto LABEL_47;
      }
    }

    if (*(a3 + 2) < v21)
    {
      v56 = 1;
    }

    else
    {
      v56 = -1;
    }

    *&v108 = 0xFFFFFFFFLL;
    *(&v108 + 1) = v56;
    v52 = *a4;
    if (v52 != -1)
    {
LABEL_51:
      v53 = *(a4 + 1);
      v54 = v24 - *(a4 + 2);
      if (v54 / v53 * v53 >= v54)
      {
        v55 = v54 / v53;
      }

      else
      {
        v55 = v54 / v53 + 1;
      }

      v109 = v52;
      v110 = v55;
      result = operations_research::sat::IntegerTrail::SafeEnqueue(v47, v43, v46, &v108, 2);
      if (!result)
      {
        return result;
      }

      goto LABEL_68;
    }

LABEL_64:
    if (*(a4 + 2) < v24)
    {
      v57 = 1;
    }

    else
    {
      v57 = -1;
    }

    v109 = 0xFFFFFFFFLL;
    v110 = v57;
    result = operations_research::sat::IntegerTrail::SafeEnqueue(v47, v43, v46, &v108, 2);
    if (!result)
    {
      return result;
    }

LABEL_68:
    if (v24 < 1)
    {
      goto LABEL_109;
    }

    v58 = v15 / v24;
    if (v22 <= v15 / v24)
    {
      goto LABEL_109;
    }

    v59 = *a3;
    v60 = *(a3 + 2);
    if (v59 == -1)
    {
      if (v58 < v60)
      {
        v62 = 1;
      }

      else
      {
        v62 = -1;
      }

      v63 = 0xFFFFFFFFLL;
      v64 = *a2;
      v65 = *(a2 + 2);
      if (v64 != -1)
      {
LABEL_75:
        v66 = *(a2 + 1);
        v67 = (v15 - v65) / v66;
        v68 = 0x7FFFFFFFFFFFFFFFLL;
        if (v67 - (v67 * v66 > v15 - v65) >= 0x8000000000000002)
        {
          v68 = (v67 * v66 > v15 - v65) - v67;
        }

        v69 = -v65;
        if (v69 / v66 * v66 >= v69)
        {
          v70 = v69 / v66;
        }

        else
        {
          v70 = v69 / v66 + 1;
        }

        v71 = *(a1 + 152);
        *&v108 = v64 ^ 1;
        *(&v108 + 1) = v68;
        v109 = v64;
        v110 = v70;
        v72 = *a4;
        if (v72 != -1)
        {
LABEL_81:
          v73 = *(a4 + 1);
          v74 = v24 - *(a4 + 2);
          if (v74 / v73 * v73 >= v74)
          {
            v75 = v74 / v73;
          }

          else
          {
            v75 = v74 / v73 + 1;
          }

          v111 = v72;
          v112 = v75;
          if (v59 != -1)
          {
            goto LABEL_85;
          }

          goto LABEL_105;
        }

LABEL_101:
        if (*(a4 + 2) < v24)
        {
          v81 = 1;
        }

        else
        {
          v81 = -1;
        }

        v111 = 0xFFFFFFFFLL;
        v112 = v81;
        if (v59 != -1)
        {
LABEL_85:
          v76 = 1 - v60;
          v77 = *(a3 + 1);
          if (v76 / v77 * v77 >= v76)
          {
            v78 = v76 / v77;
          }

          else
          {
            v78 = v76 / v77 + 1;
          }

          v113 = v59;
          v114 = v78;
          result = operations_research::sat::IntegerTrail::SafeEnqueue(v71, v63, v62, &v108, 4);
          if (!result)
          {
            return result;
          }

          goto LABEL_109;
        }

LABEL_105:
        if (v60 < 1)
        {
          v82 = 1;
        }

        else
        {
          v82 = -1;
        }

        v113 = 0xFFFFFFFFLL;
        v114 = v82;
        result = operations_research::sat::IntegerTrail::SafeEnqueue(v71, v63, v62, &v108, 4);
        if (!result)
        {
          return result;
        }

LABEL_109:
        v83 = (v14 + 1) / (v30 + 1);
        if (v83 * (v30 + 1) < v14 + 1)
        {
          ++v83;
        }

        if (v21 >= v83)
        {
          return 1;
        }

        v84 = *a3;
        if (v84 == -1)
        {
          v85 = *(a3 + 2);
          if (v85 < v83)
          {
            v88 = 1;
          }

          else
          {
            v88 = -1;
          }

          v89 = 0xFFFFFFFFLL;
          v90 = *a2;
          if (v90 != -1)
          {
LABEL_117:
            v91 = *(a2 + 1);
            v92 = v14 - *(a2 + 2);
            if (v92 / v91 * v91 >= v92)
            {
              v93 = v92 / v91;
            }

            else
            {
              v93 = v92 / v91 + 1;
            }

            v94 = *(a1 + 152);
            *&v108 = v90;
            *(&v108 + 1) = v93;
            v95 = *a4;
            v96 = *(a4 + 2);
            if (v95 != -1)
            {
              goto LABEL_121;
            }

            goto LABEL_142;
          }
        }

        else
        {
          v86 = *(a3 + 1);
          v85 = *(a3 + 2);
          v87 = v83 - v85;
          if (v87 / v86 * v86 >= v87)
          {
            v88 = v87 / v86;
          }

          else
          {
            v88 = v87 / v86 + 1;
          }

          v89 = *a3;
          v90 = *a2;
          if (v90 != -1)
          {
            goto LABEL_117;
          }
        }

        if (*(a2 + 2) < v14)
        {
          v104 = 1;
        }

        else
        {
          v104 = -1;
        }

        v94 = *(a1 + 152);
        *&v108 = 0xFFFFFFFFLL;
        *(&v108 + 1) = v104;
        v95 = *a4;
        v96 = *(a4 + 2);
        if (v95 != -1)
        {
LABEL_121:
          v97 = *(a4 + 1);
          if ((v30 - v96) / v97 - ((v30 - v96) / v97 * v97 > v30 - v96) >= 0x8000000000000002)
          {
            v98 = ((v30 - v96) / v97 * v97 > v30 - v96) - (v30 - v96) / v97;
          }

          else
          {
            v98 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v99 = -v96;
          if (v99 / v97 * v97 >= v99)
          {
            v100 = v99 / v97;
          }

          else
          {
            v100 = v99 / v97 + 1;
          }

          v109 = v95 ^ 1;
          v110 = v98;
          v111 = v95;
          v112 = v100;
          if (v84 != -1)
          {
            goto LABEL_128;
          }

          goto LABEL_149;
        }

LABEL_142:
        if (v30 < v96)
        {
          v105 = 1;
        }

        else
        {
          v105 = -1;
        }

        if (v96 < 0)
        {
          v106 = 1;
        }

        else
        {
          v106 = -1;
        }

        v109 = 0xFFFFFFFFLL;
        v110 = v105;
        v111 = 0xFFFFFFFFLL;
        v112 = v106;
        if (v84 != -1)
        {
LABEL_128:
          v101 = 1 - v85;
          v102 = *(a3 + 1);
          if (v101 / v102 * v102 >= v101)
          {
            v103 = v101 / v102;
          }

          else
          {
            v103 = v101 / v102 + 1;
          }

          v113 = v84;
          v114 = v103;
          result = operations_research::sat::IntegerTrail::SafeEnqueue(v94, v89, v88, &v108, 4);
          if (!result)
          {
            return result;
          }

          return 1;
        }

LABEL_149:
        if (v85 < 1)
        {
          v107 = 1;
        }

        else
        {
          v107 = -1;
        }

        v113 = 0xFFFFFFFFLL;
        v114 = v107;
        result = operations_research::sat::IntegerTrail::SafeEnqueue(v94, v89, v88, &v108, 4);
        if (!result)
        {
          return result;
        }

        return 1;
      }
    }

    else
    {
      v61 = (v58 - v60) / *(a3 + 1) - ((v58 - v60) / *(a3 + 1) * *(a3 + 1) > v58 - v60);
      if (v61 >= 0x8000000000000002)
      {
        v62 = -v61;
      }

      else
      {
        v62 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v63 = v59 ^ 1;
      v64 = *a2;
      v65 = *(a2 + 2);
      if (v64 != -1)
      {
        goto LABEL_75;
      }
    }

    if (v15 < v65)
    {
      v79 = 1;
    }

    else
    {
      v79 = -1;
    }

    if (v65 < 0)
    {
      v80 = 1;
    }

    else
    {
      v80 = -1;
    }

    v71 = *(a1 + 152);
    *&v108 = 0xFFFFFFFFLL;
    *(&v108 + 1) = v79;
    v109 = 0xFFFFFFFFLL;
    v110 = v80;
    v72 = *a4;
    if (v72 != -1)
    {
      goto LABEL_81;
    }

    goto LABEL_101;
  }

LABEL_29:
  if (v22 < v17)
  {
    v40 = 1;
  }

  else
  {
    v40 = -1;
  }

  if (v17 < 1)
  {
    v41 = 1;
  }

  else
  {
    v41 = -1;
  }

  v109 = 0xFFFFFFFFLL;
  v110 = v40;
  v111 = 0xFFFFFFFFLL;
  v112 = v41;
  result = operations_research::sat::IntegerTrail::SafeEnqueue(v8, v23, v32, &v108, 3);
  if (result)
  {
    goto LABEL_39;
  }

  return result;
}

__n128 operations_research::sat::FixedDivisionPropagator::FixedDivisionPropagator(uint64_t result, uint64_t a2, uint64_t a3, __n128 *a4, uint64_t a5)
{
  *result = &unk_284F42328;
  v7 = *(a2 + 16);
  *(result + 8) = *a2;
  *(result + 24) = v7;
  *(result + 32) = a3;
  v8 = *a4;
  v9 = a4[1].n128_u64[0];
  *(result + 40) = *a4;
  *(result + 56) = v9;
  *(result + 64) = a5;
  if (a3 <= 0)
  {
    v10[2] = v5;
    v10[3] = v6;
    operations_research::sat::FixedDivisionPropagator::FixedDivisionPropagator((result + 32), v10);
  }

  return v8;
}

BOOL operations_research::sat::FixedDivisionPropagator::Propagate(operations_research::sat::FixedDivisionPropagator *this)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = *(this + 8);
  v3 = *(this + 2);
  v4 = *(this + 3);
  if (v3 == -1)
  {
    v8 = *(this + 3);
    v9 = v8;
    v47 = v8;
    v48 = v4;
    v10 = *(this + 10);
    v11 = *(this + 7);
    if (v10 != -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *(this + 2);
    v6 = v2[5];
    v7 = 8 * v3;
    v8 = v4 + *(v6 + v7) * v5;
    v48 = v8;
    v9 = v4 - *(v6 + (v7 ^ 8)) * v5;
    v47 = v9;
    v10 = *(this + 10);
    v11 = *(this + 7);
    if (v10 != -1)
    {
LABEL_3:
      v12 = *(this + 6);
      v13 = v2[5];
      v14 = 8 * v10;
      v15 = v11 + *(v13 + v14) * v12;
      v16 = v11 - *(v13 + (v14 ^ 8)) * v12;
      v18 = (this + 32);
      v17 = *(this + 4);
      v19 = v9 / v17;
      if (v9 / v17 < v16)
      {
        if ((v19 - v11) / v12 - ((v19 - v11) / v12 * v12 > v19 - v11) >= 0x8000000000000002)
        {
          v20 = ((v19 - v11) / v12 * v12 > v19 - v11) - (v19 - v11) / v12;
        }

        else
        {
          v20 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v21 = v10 ^ 1;
        if (v3 != -1)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }

      v11 = v16;
      if (v19 <= v16)
      {
        goto LABEL_40;
      }

      goto LABEL_20;
    }
  }

  v18 = (this + 32);
  v17 = *(this + 4);
  if (v9 / v17 < v11)
  {
    v20 = 1;
    v21 = 0xFFFFFFFFLL;
    v15 = v11;
    if (v3 != -1)
    {
LABEL_8:
      v22 = *(v2[5] + ((8 * v3) ^ 8));
      if (v22 - 1 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v22 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v23 = v3 ^ 1;
LABEL_15:
      *&v49 = v23;
      *(&v49 + 1) = v22;
      if ((operations_research::sat::IntegerTrail::SafeEnqueue(v2, v21, v20, &v49, 1) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_40;
    }

LABEL_14:
    v22 = -1;
    v23 = 0xFFFFFFFFLL;
    goto LABEL_15;
  }

  v15 = v11;
  if (v9 / v17 <= v11)
  {
    goto LABEL_40;
  }

LABEL_20:
  v24 = (v17 >> 63) ^ 0x8000000000000000;
  if ((v11 * v17) >> 64 == (v11 * v17) >> 63)
  {
    v24 = v11 * v17;
  }

  v25 = v17 + v17 * v11 - 1;
  if (v11 >= 0)
  {
    v26 = v25;
  }

  else
  {
    v26 = v24;
  }

  v46 = v26;
  if (v26 >= v9)
  {
    operations_research::sat::FixedDivisionPropagator::Propagate(&v46, &v47, &v49);
  }

  if (v3 == -1)
  {
    if (v26 < v4)
    {
      v28 = 1;
    }

    else
    {
      v28 = -1;
    }

    v29 = 0xFFFFFFFFLL;
    if (v10 != -1)
    {
      goto LABEL_31;
    }

LABEL_38:
    v30 = -1;
    v31 = 0xFFFFFFFFLL;
    goto LABEL_39;
  }

  v27 = (v26 - v4) / *(this + 2) - ((v26 - v4) / *(this + 2) * *(this + 2) > v26 - v4);
  if (v27 >= 0x8000000000000002)
  {
    v28 = -v27;
  }

  else
  {
    v28 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v29 = v3 ^ 1;
  if (v10 == -1)
  {
    goto LABEL_38;
  }

LABEL_31:
  v30 = *(v2[5] + ((8 * v10) ^ 8));
  if (v30 - 1 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v30 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v31 = v10 ^ 1;
LABEL_39:
  *&v49 = v31;
  *(&v49 + 1) = v30;
  if ((operations_research::sat::IntegerTrail::SafeEnqueue(v2, v29, v28, &v49, 1) & 1) == 0)
  {
    return 0;
  }

LABEL_40:
  v32 = *v18;
  v33 = v8 / *v18;
  if (v33 <= v15)
  {
    if (v33 >= v15)
    {
      return 1;
    }

    v41 = v32 * (v15 - 1) + 1;
    if ((v15 * v32) >> 64 == (v15 * v32) >> 63)
    {
      v42 = v15 * v32;
    }

    else
    {
      v42 = (v32 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v15 >= 1)
    {
      v41 = v42;
    }

    v46 = v41;
    if (v41 <= v8)
    {
      operations_research::sat::FixedDivisionPropagator::Propagate(&v46, &v48, &v49);
    }

    v34 = *(this + 8);
    v35 = *(this + 2);
    if (v35 == -1)
    {
      if (*(this + 3) < v41)
      {
        v38 = 1;
      }

      else
      {
        v38 = -1;
      }

      v35 = 0xFFFFFFFFLL;
      v39 = *(this + 10);
      if (v39 != -1)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v43 = *(this + 2);
      v44 = v41 - *(this + 3);
      if (v44 / v43 * v43 >= v44)
      {
        v38 = v44 / v43;
      }

      else
      {
        v38 = v44 / v43 + 1;
      }

      v39 = *(this + 10);
      if (v39 != -1)
      {
LABEL_59:
        v40 = *(v34[5] + 8 * v39);
        goto LABEL_70;
      }
    }

    v40 = -1;
    v39 = 0xFFFFFFFFLL;
    goto LABEL_70;
  }

  v34 = *(this + 8);
  v35 = *(this + 10);
  if (v35 == -1)
  {
    if (*(this + 7) < v33)
    {
      v38 = 1;
    }

    else
    {
      v38 = -1;
    }

    v35 = 0xFFFFFFFFLL;
    v39 = *(this + 2);
    if (v39 != -1)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v36 = *(this + 6);
    v37 = v33 - *(this + 7);
    if (v37 / v36 * v36 >= v37)
    {
      v38 = v37 / v36;
    }

    else
    {
      v38 = v37 / v36 + 1;
    }

    v39 = *(this + 2);
    if (v39 != -1)
    {
LABEL_46:
      v40 = *(v34[5] + 8 * v39);
      goto LABEL_70;
    }
  }

  v40 = -1;
  v39 = 0xFFFFFFFFLL;
LABEL_70:
  *&v49 = v39;
  *(&v49 + 1) = v40;
  return (operations_research::sat::IntegerTrail::SafeEnqueue(v34, v35, v38, &v49, 1) & 1) != 0;
}

void operations_research::sat::FixedDivisionPropagator::RegisterWith(operations_research::sat::FixedDivisionPropagator *this, operations_research::sat::GenericLiteralWatcher *a2)
{
  v4 = operations_research::sat::GenericLiteralWatcher::Register(a2, this);
  operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(a2, *(this + 2), v4, 0xFFFFFFFF);
  v5 = *(this + 10);

  operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(a2, v5, v4, 0xFFFFFFFF);
}

__n128 operations_research::sat::FixedModuloPropagator::FixedModuloPropagator(uint64_t result, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  *result = &unk_284F42358;
  v7 = *(a2 + 16);
  *(result + 8) = *a2;
  *(result + 24) = v7;
  *(result + 32) = a3;
  v8 = *a4;
  *(result + 56) = *(a4 + 2);
  *(result + 40) = v8;
  *(result + 64) = -1;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = -1;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = a5;
  if (a3 <= 0)
  {
    v9[2] = v5;
    v9[3] = v6;
    operations_research::sat::FixedModuloPropagator::FixedModuloPropagator((result + 32), v9);
  }

  return v8;
}

uint64_t operations_research::sat::FixedModuloPropagator::Propagate(operations_research::sat::FixedModuloPropagator *this)
{
  result = operations_research::sat::FixedModuloPropagator::PropagateSignsAndTargetRange(this);
  if (!result)
  {
    return result;
  }

  result = operations_research::sat::FixedModuloPropagator::PropagateOuterBounds(this);
  if (!result)
  {
    return result;
  }

  v3 = *(this + 2);
  v4 = *(this + 3);
  if (v3 != -1)
  {
    v5 = *(this + 2);
    v6 = *(*(this + 14) + 40);
    v7 = 8 * v3;
    if (v4 + *(v6 + v7) * v5 < 0)
    {
      if (v4 - *(v6 + (v7 ^ 8)) * v5 < 1)
      {
        v8 = v3 ^ (v5 >> 63) ^ 1;
        if (v5 >= 0)
        {
          v9 = *(this + 2);
        }

        else
        {
          v9 = -v5;
        }

        goto LABEL_14;
      }

      return 1;
    }

LABEL_10:
    v15 = *(this + 8);
    v16 = *(this + 3);
    v13 = *(this + 40);
    v14 = *(this + 7);
    return (operations_research::sat::FixedModuloPropagator::PropagateBoundsWhenExprIsPositive(this, &v15, &v13) & 1) != 0;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

  v9 = 0;
  v8 = -1;
LABEL_14:
  LODWORD(v15) = v8;
  *(&v15 + 1) = v9;
  v16 = -v4;
  v10 = *(this + 10);
  if (v10 == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(this + 6);
    v10 ^= (v11 >> 63) ^ 1;
    if (v11 < 0)
    {
      v11 = -v11;
    }
  }

  v12 = -*(this + 7);
  LODWORD(v13) = v10;
  *(&v13 + 1) = v11;
  v14 = v12;
  result = operations_research::sat::FixedModuloPropagator::PropagateBoundsWhenExprIsPositive(this, &v15, &v13);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t operations_research::sat::FixedModuloPropagator::PropagateSignsAndTargetRange(operations_research::sat::FixedModuloPropagator *this)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = *(this + 14);
  v3 = *(this + 10);
  v4 = *(this + 7);
  if (v3 == -1)
  {
    v7 = (this + 32);
    v11 = *(this + 4);
    if (v4 < v11)
    {
      goto LABEL_21;
    }

    if (v4 > v11 - 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }

    result = operations_research::sat::IntegerTrail::SafeEnqueue(v2, 0xFFFFFFFFLL, v12, 0, 0);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *(this + 6);
    v7 = (this + 32);
    v6 = *(this + 4);
    if (v4 - *(v2[5] + ((8 * v3) ^ 8)) * v5 < v6)
    {
      goto LABEL_15;
    }

    v8 = (v6 + ~v4) / v5 - ((v6 + ~v4) / v5 * v5 > v6 + ~v4);
    if (v8 >= 0x8000000000000002)
    {
      v9 = -v8;
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = operations_research::sat::IntegerTrail::SafeEnqueue(v2, v3 ^ 1, v9, 0, 0);
    if (!result)
    {
      return result;
    }
  }

  v2 = *(this + 14);
  LODWORD(v3) = *(this + 10);
  v4 = *(this + 7);
  if (v3 != -1)
  {
    v5 = *(this + 6);
LABEL_15:
    if (v4 + *(v2[5] + 8 * v3) * v5 <= -*v7)
    {
      v13 = 1 - v4 - *v7;
      if (v13 / v5 * v5 >= v13)
      {
        v14 = v13 / v5;
      }

      else
      {
        v14 = v13 / v5 + 1;
      }

      result = operations_research::sat::IntegerTrail::SafeEnqueue(v2, v3, v14, 0, 0);
      if (!result)
      {
        return result;
      }

LABEL_26:
      v2 = *(this + 14);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

LABEL_21:
  if (v4 <= -*v7)
  {
    if (v4 < 1 - *v7)
    {
      v15 = 1;
    }

    else
    {
      v15 = -1;
    }

    result = operations_research::sat::IntegerTrail::SafeEnqueue(v2, 0xFFFFFFFFLL, v15, 0, 0);
    if (!result)
    {
      return result;
    }

    goto LABEL_26;
  }

LABEL_27:
  v16 = *(this + 2);
  v17 = *(this + 2);
  v18 = *(this + 3);
  v19 = v18;
  if (v16 != -1)
  {
    v19 = v18 + *(v2[5] + 8 * v16) * v17;
  }

  if (v19 < 0)
  {
LABEL_49:
    v30 = v18;
    if (v16 != -1)
    {
      v30 = v18 - *(v2[5] + ((8 * v16) ^ 8)) * v17;
    }

    if (v30 > 0)
    {
      return 1;
    }

    v31 = *(this + 10);
    v32 = *(this + 7);
    if (v31 == -1)
    {
      if (v32 <= 0)
      {
        return 1;
      }

      v35 = 1;
      v36 = 0xFFFFFFFFLL;
      if (v16 != -1)
      {
LABEL_60:
        v37 = -v18 / v17 - (-v18 / v17 * v17 > -v18);
        if (v37 >= 0x8000000000000002)
        {
          v38 = -v37;
        }

        else
        {
          v38 = 0x7FFFFFFFFFFFFFFFLL;
        }

        *&v40 = v16 ^ 1;
        *(&v40 + 1) = v38;
        result = operations_research::sat::IntegerTrail::SafeEnqueue(v2, v36, v35, &v40, 1);
        if (!result)
        {
          return result;
        }

        return 1;
      }
    }

    else
    {
      v33 = *(this + 6);
      if (v32 - *(v2[5] + ((8 * v31) ^ 8)) * v33 < 1)
      {
        return 1;
      }

      v34 = -v32 / v33 - (-v32 / v33 * v33 > -v32);
      if (v34 >= 0x8000000000000002)
      {
        v35 = -v34;
      }

      else
      {
        v35 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v36 = v31 ^ 1u;
      if (v16 != -1)
      {
        goto LABEL_60;
      }
    }

    if (v18 > 0)
    {
      v39 = 1;
    }

    else
    {
      v39 = -1;
    }

    *&v40 = 0xFFFFFFFFLL;
    *(&v40 + 1) = v39;
    result = operations_research::sat::IntegerTrail::SafeEnqueue(v2, v36, v35, &v40, 1);
    if (!result)
    {
      return result;
    }

    return 1;
  }

  v20 = *(this + 10);
  v21 = *(this + 7);
  if (v20 == -1)
  {
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_49;
    }

    v24 = 1;
    v20 = 0xFFFFFFFFLL;
  }

  else
  {
    v22 = *(this + 6);
    if (((v21 + *(v2[5] + 8 * v20) * v22) & 0x8000000000000000) == 0)
    {
      goto LABEL_49;
    }

    v23 = -v21;
    if (v23 / v22 * v22 >= v23)
    {
      v24 = v23 / v22;
    }

    else
    {
      v24 = v23 / v22 + 1;
    }
  }

  v25 = -v18 / v17;
  if (v25 * v17 >= -v18)
  {
    v26 = -v18 / v17;
  }

  else
  {
    v26 = v25 + 1;
  }

  v27 = v18 < 0;
  v28 = 1;
  if (!v27)
  {
    v28 = -1;
  }

  v29 = v16 == -1;
  if (v16 == -1)
  {
    v16 = 0xFFFFFFFFLL;
  }

  if (v29)
  {
    v26 = v28;
  }

  *&v40 = v16;
  *(&v40 + 1) = v26;
  result = operations_research::sat::IntegerTrail::SafeEnqueue(v2, v20, v24, &v40, 1);
  if (result)
  {
    v2 = *(this + 14);
    LODWORD(v16) = *(this + 2);
    v17 = *(this + 2);
    v18 = *(this + 3);
    goto LABEL_49;
  }

  return result;
}

uint64_t operations_research::sat::FixedModuloPropagator::PropagateOuterBounds(operations_research::sat::FixedModuloPropagator *this)
{
  v96 = *MEMORY[0x277D85DE8];
  v2 = *(this + 14);
  v3 = *(this + 2);
  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v3 == -1)
  {
    v8 = *(this + 3);
    v9 = v8;
    v10 = *(this + 10);
    v11 = *(this + 7);
    if (v10 != -1)
    {
LABEL_3:
      v12 = *(this + 6);
      v13 = v2[5];
      v14 = 8 * v10;
      v15 = v11 - *(v13 + (v14 ^ 8)) * v12;
      v11 += *(v13 + v14) * v12;
      v16 = *(this + 4);
      v17 = v9 % v16;
      if (v9 % v16 > v15)
      {
        goto LABEL_4;
      }

LABEL_25:
      v27 = v8 % v16;
      if (v8 % v16 >= v11)
      {
        goto LABEL_36;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v6 = v2[5];
    v7 = 8 * v3;
    v8 = v4 + *(v6 + v7) * v5;
    v9 = v4 - *(v6 + (v7 ^ 8)) * v5;
    v10 = *(this + 10);
    v11 = *(this + 7);
    if (v10 != -1)
    {
      goto LABEL_3;
    }
  }

  v15 = v11;
  v16 = *(this + 4);
  v17 = v9 % v16;
  if (v9 % v16 <= v11)
  {
    goto LABEL_25;
  }

LABEL_4:
  v18 = v9 - v17 + v15;
  if ((v18 - v4) / v5 - ((v18 - v4) / v5 * v5 > v18 - v4) >= 0x8000000000000002)
  {
    v19 = ((v18 - v4) / v5 * v5 > v18 - v4) - (v18 - v4) / v5;
  }

  else
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v20 = v18 < v4;
  v21 = 1;
  if (!v20)
  {
    v21 = -1;
  }

  if (v3 == -1)
  {
    v22 = 0xFFFFFFFFLL;
  }

  else
  {
    v22 = v3 ^ 1;
  }

  if (v3 == -1)
  {
    v23 = v21;
  }

  else
  {
    v23 = v19;
  }

  if (v10 == -1)
  {
    *&v90 = 0xFFFFFFFFLL;
    *(&v90 + 1) = -1;
    if (v3 != -1)
    {
      goto LABEL_19;
    }

LABEL_34:
    v91 = 0xFFFFFFFFLL;
    v92 = -1;
    result = operations_research::sat::IntegerTrail::SafeEnqueue(v2, v22, v23, &v90, 2);
    if (!result)
    {
      return result;
    }

LABEL_35:
    v16 = *(this + 4);
    v27 = v8 % v16;
    if (v8 % v16 >= v11)
    {
LABEL_36:
      v37 = v8 / v16;
      v38 = v9 / v16;
      if (v8 / v16 == v9 / v16)
      {
        goto LABEL_37;
      }

      goto LABEL_55;
    }

LABEL_26:
    v28 = *(this + 14);
    v29 = v8 - v27 + v11;
    v30 = *(this + 2);
    if (v30 == -1)
    {
      if (*(this + 3) < v29)
      {
        v33 = 1;
      }

      else
      {
        v33 = -1;
      }

      v30 = 0xFFFFFFFFLL;
      *&v90 = 0xFFFFFFFFLL;
      *(&v90 + 1) = -1;
      v35 = *(this + 10);
      if (v35 != -1)
      {
LABEL_31:
        v36 = *(v28[5] + 8 * v35);
        v91 = v35;
        v92 = v36;
        result = operations_research::sat::IntegerTrail::SafeEnqueue(v28, v30, v33, &v90, 2);
        if (!result)
        {
          return result;
        }

        goto LABEL_54;
      }
    }

    else
    {
      v31 = *(this + 2);
      v32 = v29 - *(this + 3);
      if (v32 / v31 * v31 >= v32)
      {
        v33 = v32 / v31;
      }

      else
      {
        v33 = v32 / v31 + 1;
      }

      v34 = *(v28[5] + 8 * v30);
      *&v90 = *(this + 2);
      *(&v90 + 1) = v34;
      v35 = *(this + 10);
      if (v35 != -1)
      {
        goto LABEL_31;
      }
    }

    v91 = 0xFFFFFFFFLL;
    v92 = -1;
    result = operations_research::sat::IntegerTrail::SafeEnqueue(v28, v30, v33, &v90, 2);
    if (!result)
    {
      return result;
    }

LABEL_54:
    v16 = *(this + 4);
    v37 = v8 / v16;
    v38 = v9 / v16;
    if (v8 / v16 == v9 / v16)
    {
LABEL_37:
      v39 = v8 - v37 * v16;
      if (v11 >= v39)
      {
        goto LABEL_85;
      }

      v40 = *(this + 14);
      v41 = *(this + 10);
      if (v41 == -1)
      {
        if (*(this + 7) < v39)
        {
          v49 = 1;
        }

        else
        {
          v49 = -1;
        }

        v41 = 0xFFFFFFFFLL;
        v90 = xmmword_23CE49C10;
        v91 = 0xFFFFFFFFLL;
        v92 = -1;
        v50 = *(this + 2);
        if (v50 != -1)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v42 = *(this + 6);
        v43 = v39 - *(this + 7);
        v44 = v43 / v42;
        v45 = v40[5];
        v46 = 8 * v41;
        v47 = *(v45 + v46);
        v20 = v43 / v42 * v42 < v43;
        *&v90 = *(this + 10);
        *(&v90 + 1) = v47;
        v48 = *(v45 + (v46 ^ 8));
        if (v20)
        {
          v49 = v44 + 1;
        }

        else
        {
          v49 = v44;
        }

        if (v48 - 1 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v48 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v91 = v41 ^ 1;
        v92 = v48;
        v50 = *(this + 2);
        if (v50 != -1)
        {
LABEL_45:
          v51 = v40[5];
          v52 = 8 * v50;
          v53 = *(v51 + v52);
          *&v93 = v50;
          *(&v93 + 1) = v53;
          v54 = *(v51 + (v52 ^ 8));
          v55 = 0x7FFFFFFFFFFFFFFFLL;
          if (v54 - 1 <= 0x7FFFFFFFFFFFFFFDLL)
          {
            v55 = v54;
          }

          v94 = v50 ^ 1;
          v95 = v55;
          result = operations_research::sat::IntegerTrail::SafeEnqueue(v40, v41, v49, &v90, 4);
          if (!result)
          {
            return result;
          }

          goto LABEL_84;
        }
      }

      v93 = xmmword_23CE49C10;
      v94 = 0xFFFFFFFFLL;
      v95 = -1;
      result = operations_research::sat::IntegerTrail::SafeEnqueue(v40, v41, v49, &v90, 4);
      if (!result)
      {
        return result;
      }

LABEL_84:
      v16 = *(this + 4);
LABEL_85:
      v73 = v9 % v16;
      if (v15 > v9 % v16)
      {
        v74 = *(this + 14);
        v75 = *(this + 10);
        v76 = *(this + 7);
        if (v75 == -1)
        {
          if (v73 < v76)
          {
            v78 = 1;
          }

          else
          {
            v78 = -1;
          }

          v79 = 0xFFFFFFFFLL;
          v90 = xmmword_23CE49C10;
          v91 = 0xFFFFFFFFLL;
          v92 = -1;
          v84 = *(this + 2);
          if (v84 != -1)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v77 = (v73 - v76) / *(this + 6) - ((v73 - v76) / *(this + 6) * *(this + 6) > v73 - v76);
          if (v77 >= 0x8000000000000002)
          {
            v78 = -v77;
          }

          else
          {
            v78 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v79 = v75 ^ 1;
          v80 = v74[5];
          v81 = 8 * v75;
          v82 = *(v80 + v81);
          *&v90 = *(this + 10);
          *(&v90 + 1) = v82;
          v83 = *(v80 + (v81 ^ 8));
          if (v83 - 1 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v83 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v91 = v79;
          v92 = v83;
          v84 = *(this + 2);
          if (v84 != -1)
          {
LABEL_93:
            v85 = v74[5];
            v86 = 8 * v84;
            v87 = *(v85 + v86);
            *&v93 = v84;
            *(&v93 + 1) = v87;
            v88 = *(v85 + (v86 ^ 8));
            v89 = 0x7FFFFFFFFFFFFFFFLL;
            if (v88 - 1 <= 0x7FFFFFFFFFFFFFFDLL)
            {
              v89 = v88;
            }

            v94 = v84 ^ 1;
            v95 = v89;
            return (operations_research::sat::IntegerTrail::SafeEnqueue(v74, v79, v78, &v90, 4) & 1) != 0;
          }
        }

        v93 = xmmword_23CE49C10;
        v94 = 0xFFFFFFFFLL;
        v95 = -1;
        if ((operations_research::sat::IntegerTrail::SafeEnqueue(v74, v79, v78, &v90, 4) & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

LABEL_55:
    if (!v37 && v11 < 0)
    {
      if (v11 >= v8)
      {
        return 1;
      }

      v56 = *(this + 14);
      v57 = *(this + 10);
      if (v57 == -1)
      {
        if (*(this + 7) < v8)
        {
          v60 = 1;
        }

        else
        {
          v60 = -1;
        }

        v57 = 0xFFFFFFFFLL;
        *&v90 = 0xFFFFFFFFLL;
        *(&v90 + 1) = -1;
        v62 = *(this + 2);
        if (v62 != -1)
        {
LABEL_63:
          v63 = *(v56[5] + 8 * v62);
          v91 = v62;
          v92 = v63;
          return (operations_research::sat::IntegerTrail::SafeEnqueue(v56, v57, v60, &v90, 2) & 1) != 0;
        }
      }

      else
      {
        v58 = *(this + 6);
        v59 = v8 - *(this + 7);
        if (v59 / v58 * v58 >= v59)
        {
          v60 = v59 / v58;
        }

        else
        {
          v60 = v59 / v58 + 1;
        }

        v61 = *(v56[5] + 8 * v57);
        *&v90 = *(this + 10);
        *(&v90 + 1) = v61;
        v62 = *(this + 2);
        if (v62 != -1)
        {
          goto LABEL_63;
        }
      }

      v91 = 0xFFFFFFFFLL;
      v92 = -1;
      return (operations_research::sat::IntegerTrail::SafeEnqueue(v56, v57, v60, &v90, 2) & 1) != 0;
    }

    if (v15 <= v9 || v15 < 1 || v38)
    {
      return 1;
    }

    v64 = *(this + 14);
    v65 = *(this + 10);
    v66 = *(this + 7);
    if (v65 == -1)
    {
      if (v9 < v66)
      {
        v68 = 1;
      }

      else
      {
        v68 = -1;
      }

      v69 = 0xFFFFFFFFLL;
      *&v90 = 0xFFFFFFFFLL;
      *(&v90 + 1) = -1;
      v71 = *(this + 2);
      if (v71 != -1)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v67 = (v9 - v66) / *(this + 6) - ((v9 - v66) / *(this + 6) * *(this + 6) > v9 - v66);
      if (v67 >= 0x8000000000000002)
      {
        v68 = -v67;
      }

      else
      {
        v68 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v69 = v65 ^ 1;
      v70 = *(v64[5] + ((8 * v65) ^ 8));
      if (v70 - 1 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v70 = 0x7FFFFFFFFFFFFFFFLL;
      }

      *&v90 = v69;
      *(&v90 + 1) = v70;
      v71 = *(this + 2);
      if (v71 != -1)
      {
LABEL_75:
        v72 = 0x7FFFFFFFFFFFFFFFLL;
        if (*(v64[5] + ((8 * v71) ^ 8)) - 1 <= 0x7FFFFFFFFFFFFFFDLL)
        {
          v72 = *(v64[5] + ((8 * v71) ^ 8));
        }

        v91 = v71 ^ 1;
        v92 = v72;
        result = operations_research::sat::IntegerTrail::SafeEnqueue(v64, v69, v68, &v90, 2);
        if (!result)
        {
          return result;
        }

        return 1;
      }
    }

    v91 = 0xFFFFFFFFLL;
    v92 = -1;
    result = operations_research::sat::IntegerTrail::SafeEnqueue(v64, v69, v68, &v90, 2);
    if (!result)
    {
      return result;
    }

    return 1;
  }

  v24 = *(v2[5] + ((8 * v10) ^ 8));
  if (v24 - 1 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v24 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *&v90 = v10 ^ 1;
  *(&v90 + 1) = v24;
  if (v3 == -1)
  {
    goto LABEL_34;
  }

LABEL_19:
  v25 = *(v2[5] + ((8 * v3) ^ 8));
  if (v25 - 1 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v91 = v3 ^ 1;
  v92 = v25;
  result = operations_research::sat::IntegerTrail::SafeEnqueue(v2, v22, v23, &v90, 2);
  if (result)
  {
    goto LABEL_35;
  }

  return result;
}