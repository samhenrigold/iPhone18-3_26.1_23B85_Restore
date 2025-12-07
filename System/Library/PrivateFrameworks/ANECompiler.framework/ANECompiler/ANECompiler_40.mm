void sub_23CB2DA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a55 < 0)
  {
    operator delete(__p);
  }

  operations_research::sat::Model::~Model((v55 - 184));
  if (a41)
  {
    operator delete(a41);
    v57 = a44;
    if (!a44)
    {
LABEL_5:
      v58 = a25;
      if (!a25)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v57 = a44;
    if (!a44)
    {
      goto LABEL_5;
    }
  }

  operator delete(v57);
  v58 = a25;
  if (!a25)
  {
LABEL_6:
    if (!a30)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v58);
  if (!a30)
  {
LABEL_7:
    std::vector<std::unique_ptr<operations_research::SparsePermutation>>::~vector[abi:ne200100](&a47);
    _Unwind_Resume(a1);
  }

LABEL_11:
  operator delete(a30);
  std::vector<std::unique_ptr<operations_research::SparsePermutation>>::~vector[abi:ne200100](&a47);
  _Unwind_Resume(a1);
}

void sub_23CB2DF70()
{
  if (v0)
  {
    JUMPOUT(0x23CB2DF90);
  }

  JUMPOUT(0x23CB2DED4);
}

double google::protobuf::Arena::DefaultConstruct<operations_research::sat::SparsePermutationProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x40uLL);
    v3 = 0;
  }

  return operations_research::sat::SparsePermutationProto::SparsePermutationProto(v2, v3);
}

void *google::protobuf::Arena::DefaultConstruct<operations_research::sat::DenseMatrixProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x30uLL);
    v3 = 0;
  }

  return operations_research::sat::DenseMatrixProto::DenseMatrixProto(v2, v3);
}

uint64_t operations_research::sat::anonymous namespace::GenerateGraphForSymmetryDetection<util::StaticGraph<int,int>>(operations_research::sat::CpModelProto const&,std::vector<int> *,operations_research::SolverLogger *)::{lambda(std::vector<long long> const&)#1}::operator()(uint64_t **a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a1[2];
  v33 = **a1;
  if (a3 != a2)
  {
    if (((a3 - a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  _X28 = v3[2];
  __asm { PRFM            #4, [X28] }

  v10 = 0;
  v11 = (*(**a1 + 8) - ***a1) >> 2;
  v32 = v3[1] >> 1;
  v12 = *v3;
  v13 = vdup_n_s8(0);
  v14 = (_X28 >> 12) & *v3;
  v15 = *(_X28 + v14);
  v16 = vceq_s8(v15, v13);
  if (v16)
  {
LABEL_5:
    v17 = v3[3];
    v30 = v10;
    v31 = v11;
    while (1)
    {
      v18 = v17 + 32 * ((v14 + (__clz(__rbit64(v16)) >> 3)) & v12);
      if (*(v18 + 8) == *v18 && !memcmp(*v18, 0, 0))
      {
        break;
      }

      v16 &= ((v16 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v10 = v30;
      v11 = v31;
      if (!v16)
      {
        goto LABEL_9;
      }
    }

    v20 = *(v18 + 24);
    v21 = v33;
    v22 = a1;
    v11 = v31;
  }

  else
  {
LABEL_9:
    while (1)
    {
      v19 = vceq_s8(v15, 0x8080808080808080);
      if (v19)
      {
        break;
      }

      v10 += 8;
      v14 = (v10 + v14) & v12;
      v15 = *(_X28 + v14);
      v16 = vceq_s8(v15, v13);
      if (v16)
      {
        goto LABEL_5;
      }
    }

    v22 = a1;
    *v23 = 0;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    v20 = v32;
    v21 = v33;
    *(v23 + 24) = v32;
  }

  v35 = v20;
  std::vector<int>::push_back[abi:ne200100](v21, &v35);
  v24 = **(v22 + 8);
  if (*(v24 + 8) <= v11)
  {
    *(v24 + 8) = v11 + 1;
    v25 = *(v24 + 32);
    v26 = *(v24 + 40);
    v27 = v11 + 1;
    __x = 0;
    v28 = (v26 - v25) >> 2;
    if (v27 <= v28)
    {
      if (v27 < v28)
      {
        *(v24 + 40) = v25 + 4 * v27;
      }
    }

    else
    {
      std::vector<int>::__append((v24 + 32), v27 - v28, &__x);
    }
  }

  return v11;
}

void sub_23CB2E3B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t operations_research::sat::anonymous namespace::GenerateGraphForSymmetryDetection<util::StaticGraph<int,int>>(operations_research::sat::CpModelProto const&,std::vector<int> *,operations_research::SolverLogger *)::{lambda(int,int)#1}::operator()(uint64_t *a1, int a2, int a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a1[2];
  v34 = __PAIR64__(a3, a2);
  result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<int,int>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<int,int>>>::find_or_prepare_insert<std::pair<int,int>>(v6, &v34, v31);
  if (v33 == 1)
  {
    *v32 = v34;
    if (v33)
    {
      v8 = *a1;
      v30 = *a1[1];
      if (~a2 <= a2)
      {
        v9 = a2;
      }

      else
      {
        v9 = ~a2;
      }

      if (a2 >= 0)
      {
        v10 = 1;
      }

      else
      {
        v10 = -1;
      }

      v11 = *(v8 + 16);
      v12 = v9;
      __src = v9;
      v41 = v10;
      *v42 = 0;
      v37 = v11;
      p_src = &__src;
      v39 = v42;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<long long,long long>,int>,absl::lts_20240722::hash_internal::Hash<std::pair<long long,long long>>,std::equal_to<std::pair<long long,long long>>,std::allocator<std::pair<std::pair<long long,long long> const,int>>>::EmplaceDecomposable::operator()<std::pair<long long,long long>,std::piecewise_construct_t const&,std::tuple<std::pair<long long,long long>&&>,std::tuple<int &&>>(&v37, &__src, &p_src, &v39, &v34);
      if (v36)
      {
        __src = 1;
        v41 = v10;
        std::vector<long long>::__assign_with_size[abi:ne200100]<long long const*,long long const*>(*(v8 + 24), &__src, v42, 2uLL);
        util::StaticGraph<int,int>::AddArc(**(v8 + 8), v12, v13);
        *(v35 + 16) = v13;
      }

      else
      {
        v13 = *(v35 + 16);
      }

      v14 = *a1;
      if (~a3 <= a3)
      {
        v15 = a3;
      }

      else
      {
        v15 = ~a3;
      }

      v16 = *(v14 + 16);
      if (a3 >= 0)
      {
        v17 = 1;
      }

      else
      {
        v17 = -1;
      }

      v18 = v15;
      __src = v15;
      v41 = v17;
      *v42 = 0;
      v37 = v16;
      p_src = &__src;
      v39 = v42;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<long long,long long>,int>,absl::lts_20240722::hash_internal::Hash<std::pair<long long,long long>>,std::equal_to<std::pair<long long,long long>>,std::allocator<std::pair<std::pair<long long,long long> const,int>>>::EmplaceDecomposable::operator()<std::pair<long long,long long>,std::piecewise_construct_t const&,std::tuple<std::pair<long long,long long>&&>,std::tuple<int &&>>(&v37, &__src, &p_src, &v39, &v34);
      if (v36)
      {
        __src = 1;
        v41 = v17;
        std::vector<long long>::__assign_with_size[abi:ne200100]<long long const*,long long const*>(*(v14 + 24), &__src, v42, 2uLL);
        util::StaticGraph<int,int>::AddArc(**(v14 + 8), v18, v19);
        *(v35 + 16) = v19;
      }

      else
      {
        v19 = *(v35 + 16);
      }

      util::StaticGraph<int,int>::AddArc(v30, v13, v19);
      v20 = a1[2];
      LODWORD(__src) = ~a3;
      HIDWORD(__src) = ~a2;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<int,int>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<int,int>>>::find_or_prepare_insert<std::pair<int,int>>(v20, &__src, &v34);
      if (v36 == 1)
      {
        *v35 = __src;
      }

      v21 = *a1;
      v22 = *a1[1];
      if (a3 < 0)
      {
        v23 = 1;
      }

      else
      {
        v23 = -1;
      }

      v24 = *(v21 + 16);
      __src = v18;
      v41 = v23;
      *v42 = 0;
      v37 = v24;
      p_src = &__src;
      v39 = v42;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<long long,long long>,int>,absl::lts_20240722::hash_internal::Hash<std::pair<long long,long long>>,std::equal_to<std::pair<long long,long long>>,std::allocator<std::pair<std::pair<long long,long long> const,int>>>::EmplaceDecomposable::operator()<std::pair<long long,long long>,std::piecewise_construct_t const&,std::tuple<std::pair<long long,long long>&&>,std::tuple<int &&>>(&v37, &__src, &p_src, &v39, &v34);
      if (v36)
      {
        __src = 1;
        v41 = v23;
        std::vector<long long>::__assign_with_size[abi:ne200100]<long long const*,long long const*>(*(v21 + 24), &__src, v42, 2uLL);
        util::StaticGraph<int,int>::AddArc(**(v21 + 8), v18, v25);
        *(v35 + 16) = v25;
      }

      else
      {
        v25 = *(v35 + 16);
      }

      v26 = *a1;
      if (a2 < 0)
      {
        v27 = 1;
      }

      else
      {
        v27 = -1;
      }

      v28 = *(v26 + 16);
      __src = v12;
      v41 = v27;
      *v42 = 0;
      v37 = v28;
      p_src = &__src;
      v39 = v42;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<long long,long long>,int>,absl::lts_20240722::hash_internal::Hash<std::pair<long long,long long>>,std::equal_to<std::pair<long long,long long>>,std::allocator<std::pair<std::pair<long long,long long> const,int>>>::EmplaceDecomposable::operator()<std::pair<long long,long long>,std::piecewise_construct_t const&,std::tuple<std::pair<long long,long long>&&>,std::tuple<int &&>>(&v37, &__src, &p_src, &v39, &v34);
      if (v36)
      {
        __src = 1;
        v41 = v27;
        std::vector<long long>::__assign_with_size[abi:ne200100]<long long const*,long long const*>(*(v26 + 24), &__src, v42, 2uLL);
        util::StaticGraph<int,int>::AddArc(**(v26 + 8), v12, v29);
        *(v35 + 16) = v29;
      }

      else
      {
        v29 = *(v35 + 16);
      }

      return util::StaticGraph<int,int>::AddArc(v22, v25, v29);
    }
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<long long>,int>,operations_research::sat::anonymous namespace::VectorHash,std::equal_to<std::vector<long long>>,std::allocator<std::pair<std::vector<long long> const,int>>>::resize_impl(unint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1] & 1;
  v5 = 0;
  v2 = *(a1 + 1);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,false,false,8ul>(&v2, a1);
}

uint64_t absl::lts_20240722::container_internal::TypeErasedApplyToSlotFn<operations_research::sat::anonymous namespace::VectorHash,std::vector<long long>>(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3 == *a2)
  {
    return 0;
  }

  v4 = 0;
  result = 0;
  do
  {
    v6 = *v2++;
    v7 = (v4 + 0x1F73E299748A907ELL + v6) ^ (result >> 43);
    v8 = (v4 - v7 - 0x1F73E299748A907ELL) ^ (v7 << 9);
    v9 = (result - v7 - v8) ^ (v8 >> 8);
    v10 = (v7 - v8 - v9) ^ (v9 >> 38);
    v11 = (v8 - v9 - v10) ^ (v10 << 23);
    v12 = (v9 - v10 - v11) ^ (v11 >> 5);
    v13 = (v10 - v11 - v12) ^ (v12 >> 35);
    v14 = (v11 - v12 - v13) ^ (v13 << 49);
    v15 = (v12 - v13 - v14) ^ (v14 >> 11);
    v16 = (v13 - v14 - v15) ^ (v15 >> 12);
    result = (v15 - v16 - ((v14 - v15 - v16) ^ (v16 << 18))) ^ (((v14 - v15 - v16) ^ (v16 << 18)) >> 22);
    v4 = -result;
  }

  while (v2 != v3);
  return result;
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<long long>,int>,operations_research::sat::anonymous namespace::VectorHash,std::equal_to<std::vector<long long>>,std::allocator<std::pair<std::vector<long long> const,int>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, __n128 *a3)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = *a3;
  *a2 = *a3;
  *(a2 + 16) = a3[1].n128_u64[0];
  *a3 = 0uLL;
  a3[1].n128_u64[0] = 0;
  *(a2 + 24) = a3[1].n128_u32[2];
  return result;
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<long long,long long>,int>,absl::lts_20240722::hash_internal::Hash<std::pair<long long,long long>>,std::equal_to<std::pair<long long,long long>>,std::allocator<std::pair<std::pair<long long,long long> const,int>>>::EmplaceDecomposable::operator()<std::pair<long long,long long>,std::piecewise_construct_t const&,std::tuple<std::pair<long long,long long>&&>,std::tuple<int &&>>@<Q0>(unint64_t **a1@<X0>, uint64_t *a2@<X1>, __n128 **a3@<X3>, unsigned __int32 **a4@<X4>, uint64_t a5@<X8>)
{
  v5 = 0;
  v6 = *a1;
  _X10 = (*a1)[2];
  __asm { PRFM            #4, [X10] }

  v12 = *a2;
  v13 = a2[1];
  v14 = v13 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2)));
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
      v22 = (v6[3] + 24 * v21);
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

    inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(v6, v15, (v18 + (__clz(__rbit64(v24)) >> 3)) & v16, v5, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<long long,long long>,int>,absl::lts_20240722::hash_internal::Hash<std::pair<long long,long long>>,std::equal_to<std::pair<long long,long long>>,std::allocator<std::pair<std::pair<long long,long long> const,int>>>::GetPolicyFunctions(void)::value);
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

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<long long,long long>,int>,absl::lts_20240722::hash_internal::Hash<std::pair<long long,long long>>,std::equal_to<std::pair<long long,long long>>,std::allocator<std::pair<std::pair<long long,long long> const,int>>>::resize_impl(unint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1] & 1;
  v5 = 0;
  v2 = *(a1 + 1);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,24ul,false,false,8ul>(&v2, a1);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<long long,long long>,int>,absl::lts_20240722::hash_internal::Hash<std::pair<long long,long long>>,std::equal_to<std::pair<long long,long long>>,std::allocator<std::pair<std::pair<long long,long long> const,int>>>::transfer_slot_fn(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t operations_research::sat::LinearExpressionGcd(operations_research::sat *this, uint64_t a2)
{
  v3 = *(this + 8);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v3 = -v3;
  }

  if (a2 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = -a2;
  }

  if (v4 >= v3)
  {
    result = v3;
  }

  else
  {
    result = v4;
  }

  if (v4 > v3)
  {
    v3 = v4;
  }

  if (!result)
  {
    result = v3;
    v10 = *(this + 10);
    if (!v10)
    {
      return result;
    }

    goto LABEL_23;
  }

  v6 = v3 % result;
  if (v6)
  {
    v7 = v6 >> __clz(__rbit64(v6));
    v8 = result;
    do
    {
      v9 = v8 >> __clz(__rbit64(v8));
      v8 = v9 - v7;
      if (v7 > v9)
      {
        v8 = v7 - v9;
      }

      if (v7 >= v9)
      {
        v7 = v9;
      }
    }

    while (v8);
    result = v7 << __clz(__rbit64(v6 | result));
  }

  v10 = *(this + 10);
  if (v10)
  {
LABEL_23:
    v11 = *(this + 6);
    v12 = &v11[v10];
    do
    {
      v13 = *v11;
      if ((*v11 & 0x8000000000000000) != 0)
      {
        v13 = -v13;
      }

      if (result >= 0)
      {
        v14 = result;
      }

      else
      {
        v14 = -result;
      }

      if (v14 >= v13)
      {
        result = v13;
      }

      else
      {
        result = v14;
      }

      if (v14 > v13)
      {
        v13 = v14;
      }

      if (result)
      {
        v15 = v13 % result;
        if (v15)
        {
          v16 = v15 >> __clz(__rbit64(v15));
          v17 = result;
          do
          {
            v18 = v17 >> __clz(__rbit64(v17));
            v17 = v18 - v16;
            if (v16 > v18)
            {
              v17 = v16 - v18;
            }

            if (v16 >= v18)
            {
              v16 = v18;
            }
          }

          while (v17);
          result = v16 << __clz(__rbit64(v15 | result));
        }
      }

      else
      {
        result = v13;
      }

      ++v11;
    }

    while (v11 != v12);
  }

  return result;
}

uint64_t operations_research::sat::DivideLinearExpression(uint64_t this, uint64_t a2, operations_research::sat::LinearExpressionProto *a3)
{
  if (this != 1)
  {
    if (!this)
    {
      operations_research::sat::DivideLinearExpression(&v11);
    }

    *(a2 + 64) /= this;
    v3 = *(a2 + 16);
    if (v3 >= 1)
    {
      v4 = *(a2 + 48);
      if (v3 == 1)
      {
        v5 = 0;
LABEL_9:
        v9 = (v4 + 8 * v5);
        v10 = v3 - v5;
        do
        {
          *v9++ /= this;
          --v10;
        }

        while (v10);
        return this;
      }

      v5 = v3 & 0x7FFFFFFE;
      v6 = (v4 + 8);
      v7 = v5;
      do
      {
        v8 = *v6 / this;
        *(v6 - 1) /= this;
        *v6 = v8;
        v6 += 2;
        v7 -= 2;
      }

      while (v7);
      if (v5 != v3)
      {
        goto LABEL_9;
      }
    }
  }

  return this;
}

char *operations_research::sat::GetReferencesUsedByConstraint@<X0>(void *__return_ptr a1@<X8>, operations_research::sat *this@<X0>)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  return operations_research::sat::GetReferencesUsedByConstraint(this, a1, a1 + 3);
}

char *operations_research::sat::GetReferencesUsedByConstraint(char *result, uint64_t a2, char **a3)
{
  *(a2 + 8) = *a2;
  v4 = *a3;
  a3[1] = *a3;
  switch(*(result + 15))
  {
    case 3:
    case 4:
    case 5:
    case 0x1A:
    case 0x1D:
      v5 = *(result + 6);
      v6 = *(v5 + 16);
      v7 = *(v5 + 24);
      goto LABEL_119;
    case 7:
      v33 = *(*(result + 6) + 48);
      if (!v33)
      {
        v33 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v34 = result;
      result = std::vector<int>::__insert_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<int const>,google::protobuf::internal::RepeatedIterator<int const>>(a2, *(a2 + 8), v33[3], v33[3] + *(v33 + 4), *(v33 + 4));
      if (*(v34 + 15) == 7)
      {
        v35 = *(v34 + 6);
      }

      else
      {
        v35 = &operations_research::sat::_LinearArgumentProto_default_instance_;
      }

      v37 = v35[3];
      v36 = v35 + 3;
      v38 = (v37 + 7);
      if (v37)
      {
        v39 = v38;
      }

      else
      {
        v39 = v36;
      }

      v40 = *(v36 + 2);
      if (v40)
      {
        v41 = 8 * v40;
        do
        {
          v42 = *v39++;
          result = std::vector<int>::__insert_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<int const>,google::protobuf::internal::RepeatedIterator<int const>>(a2, *(a2 + 8), *(v42 + 24), (*(v42 + 24) + 4 * *(v42 + 16)), *(v42 + 16));
          v41 -= 8;
        }

        while (v41);
      }

      return result;
    case 8:
      v43 = *(*(result + 6) + 48);
      if (!v43)
      {
        v43 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v44 = result;
      result = std::vector<int>::__insert_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<int const>,google::protobuf::internal::RepeatedIterator<int const>>(a2, *(a2 + 8), v43[3], v43[3] + *(v43 + 4), *(v43 + 4));
      if (*(v44 + 15) == 8)
      {
        v45 = *(v44 + 6);
      }

      else
      {
        v45 = &operations_research::sat::_LinearArgumentProto_default_instance_;
      }

      v47 = v45[3];
      v46 = v45 + 3;
      v48 = (v47 + 7);
      if (v47)
      {
        v49 = v48;
      }

      else
      {
        v49 = v46;
      }

      v50 = *(v46 + 2);
      if (v50)
      {
        v51 = 8 * v50;
        do
        {
          v52 = *v49++;
          result = std::vector<int>::__insert_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<int const>,google::protobuf::internal::RepeatedIterator<int const>>(a2, *(a2 + 8), *(v52 + 24), (*(v52 + 24) + 4 * *(v52 + 16)), *(v52 + 16));
          v51 -= 8;
        }

        while (v51);
      }

      return result;
    case 0xB:
      v53 = *(*(result + 6) + 48);
      if (!v53)
      {
        v53 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v54 = result;
      result = std::vector<int>::__insert_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<int const>,google::protobuf::internal::RepeatedIterator<int const>>(a2, *(a2 + 8), v53[3], v53[3] + *(v53 + 4), *(v53 + 4));
      if (*(v54 + 15) == 11)
      {
        v55 = *(v54 + 6);
      }

      else
      {
        v55 = &operations_research::sat::_LinearArgumentProto_default_instance_;
      }

      v57 = v55[3];
      v56 = v55 + 3;
      v58 = (v57 + 7);
      if (v57)
      {
        v59 = v58;
      }

      else
      {
        v59 = v56;
      }

      v60 = *(v56 + 2);
      if (v60)
      {
        v61 = 8 * v60;
        do
        {
          v62 = *v59++;
          result = std::vector<int>::__insert_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<int const>,google::protobuf::internal::RepeatedIterator<int const>>(a2, *(a2 + 8), *(v62 + 24), (*(v62 + 24) + 4 * *(v62 + 16)), *(v62 + 16));
          v61 -= 8;
        }

        while (v61);
      }

      return result;
    case 0xC:
    case 0x10:
    case 0x1E:
      v8 = *(result + 6);
      goto LABEL_80;
    case 0xD:
      v25 = *(result + 6);
      v27 = *(v25 + 16);
      v26 = v25 + 16;
      v28 = (v27 + 7);
      if (v27)
      {
        v29 = v28;
      }

      else
      {
        v29 = v26;
      }

      v30 = *(v26 + 8);
      if (v30)
      {
        v31 = 8 * v30;
        do
        {
          v32 = *v29++;
          result = std::vector<int>::__insert_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<int const>,google::protobuf::internal::RepeatedIterator<int const>>(a2, *(a2 + 8), *(v32 + 24), (*(v32 + 24) + 4 * *(v32 + 16)), *(v32 + 16));
          v31 -= 8;
        }

        while (v31);
      }

      return result;
    case 0xE:
      v103 = *(*(result + 6) + 36);
      v12 = result;
      std::vector<int>::push_back[abi:ne200100](a2, &v103);
      if (*(v12 + 15) == 14)
      {
        v13 = *(v12 + 6);
      }

      else
      {
        v13 = &operations_research::sat::_ElementConstraintProto_default_instance_;
      }

      v102 = *(v13 + 10);
      std::vector<int>::push_back[abi:ne200100](a2, &v102);
      if (*(v12 + 15) == 14)
      {
        v14 = *(v12 + 6);
      }

      else
      {
        v14 = &operations_research::sat::_ElementConstraintProto_default_instance_;
      }

      return std::vector<int>::__insert_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<int const>,google::protobuf::internal::RepeatedIterator<int const>>(a2, *(a2 + 8), v14[3], v14[3] + *(v14 + 4), *(v14 + 4));
    case 0xF:
    case 0x17:
      v9 = *(result + 6);
      v6 = *(v9 + 64);
      v7 = *(v9 + 72);
      goto LABEL_119;
    case 0x11:
      v10 = *(result + 6);
      v6 = *(v10 + 112);
      v11 = *(v10 + 120);
      goto LABEL_81;
    case 0x12:
      v63 = result;
      std::vector<int>::__insert_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<int const>,google::protobuf::internal::RepeatedIterator<int const>>(a2, *(a2 + 8), *(*(result + 6) + 24), (*(*(result + 6) + 24) + 4 * *(*(result + 6) + 16)), *(*(result + 6) + 16));
      if (*(v63 + 15) == 18)
      {
        v64 = *(v63 + 6);
      }

      else
      {
        v64 = &operations_research::sat::_InverseConstraintProto_default_instance_;
      }

      v6 = *(v64 + 10);
      v11 = v64[6];
      goto LABEL_81;
    case 0x13:
      v65 = *(*(result + 6) + 24);
      if (!v65)
      {
        v65 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v66 = result;
      std::vector<int>::__insert_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<int const>,google::protobuf::internal::RepeatedIterator<int const>>(a2, *(a2 + 8), v65[3], v65[3] + *(v65 + 4), *(v65 + 4));
      if (*(v66 + 15) == 19)
      {
        v67 = *(v66 + 6);
      }

      else
      {
        v67 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
      }

      v68 = v67[5];
      if (!v68)
      {
        v68 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      std::vector<int>::__insert_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<int const>,google::protobuf::internal::RepeatedIterator<int const>>(a2, *(a2 + 8), v68[3], v68[3] + *(v68 + 4), *(v68 + 4));
      if (*(v66 + 15) == 19)
      {
        v69 = *(v66 + 6);
      }

      else
      {
        v69 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
      }

      v8 = v69[4];
      if (!v8)
      {
        v8 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

LABEL_80:
      v6 = *(v8 + 4);
      v11 = v8[3];
LABEL_81:
      v4 = *(a2 + 8);
      v70 = (v11 + 4 * v6);
      v71 = a2;
      goto LABEL_120;
    case 0x16:
      v72 = *(*(result + 6) + 72);
      if (!v72)
      {
        v72 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v73 = result;
      result = std::vector<int>::__insert_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<int const>,google::protobuf::internal::RepeatedIterator<int const>>(a2, *(a2 + 8), v72[3], v72[3] + *(v72 + 4), *(v72 + 4));
      if (*(v73 + 15) == 22)
      {
        v74 = *(v73 + 6);
      }

      else
      {
        v74 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
      }

      v76 = v74[6];
      v75 = v74 + 6;
      v77 = (v76 + 7);
      if (v76)
      {
        v78 = v77;
      }

      else
      {
        v78 = v75;
      }

      v79 = *(v75 + 2);
      if (v79)
      {
        v80 = 8 * v79;
        do
        {
          v81 = *v78++;
          result = std::vector<int>::__insert_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<int const>,google::protobuf::internal::RepeatedIterator<int const>>(a2, *(a2 + 8), *(v81 + 24), (*(v81 + 24) + 4 * *(v81 + 16)), *(v81 + 16));
          v80 -= 8;
        }

        while (v80);
      }

      return result;
    case 0x18:
      v15 = *(result + 6);
      v16 = v15[2];
      v17 = (v16 + 7);
      if (v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = (v15 + 2);
      }

      v19 = *(v15 + 6);
      if (!v19)
      {
        v24 = 24;
        goto LABEL_107;
      }

      v20 = a3;
      v21 = result;
      v22 = 8 * v19;
      do
      {
        v23 = *v18++;
        std::vector<int>::__insert_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<int const>,google::protobuf::internal::RepeatedIterator<int const>>(a2, *(a2 + 8), *(v23 + 24), (*(v23 + 24) + 4 * *(v23 + 16)), *(v23 + 16));
        v22 -= 8;
      }

      while (v22);
      result = v21;
      v24 = *(v21 + 15);
      v15 = *(v21 + 6);
      if (v24 == 24)
      {
        a3 = v20;
LABEL_107:
        v92 = v15;
        goto LABEL_109;
      }

      v92 = &operations_research::sat::_ReservoirConstraintProto_default_instance_;
      a3 = v20;
LABEL_109:
      v94 = v92[8];
      v93 = v92 + 8;
      v95 = (v94 + 7);
      if (v94)
      {
        v96 = v95;
      }

      else
      {
        v96 = v93;
      }

      v97 = *(v93 + 2);
      if (v97)
      {
        v98 = a3;
        v99 = result;
        v100 = 8 * v97;
        do
        {
          v101 = *v96++;
          std::vector<int>::__insert_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<int const>,google::protobuf::internal::RepeatedIterator<int const>>(a2, *(a2 + 8), *(v101 + 24), (*(v101 + 24) + 4 * *(v101 + 16)), *(v101 + 16));
          v100 -= 8;
        }

        while (v100);
        v24 = *(v99 + 15);
        v15 = *(v99 + 6);
        a3 = v98;
      }

      if (v24 != 24)
      {
        v15 = &operations_research::sat::_ReservoirConstraintProto_default_instance_;
      }

      v6 = *(v15 + 10);
      v7 = v15[6];
      v4 = a3[1];
LABEL_119:
      v70 = v7 + v6;
      v71 = a3;
      v11 = v7;
LABEL_120:

      return std::vector<int>::__insert_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<int const>,google::protobuf::internal::RepeatedIterator<int const>>(v71, v4, v11, v70, v6);
    case 0x1B:
      v82 = *(*(result + 6) + 48);
      if (!v82)
      {
        v82 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v83 = result;
      result = std::vector<int>::__insert_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<int const>,google::protobuf::internal::RepeatedIterator<int const>>(a2, *(a2 + 8), v82[3], v82[3] + *(v82 + 4), *(v82 + 4));
      if (*(v83 + 15) == 27)
      {
        v84 = *(v83 + 6);
      }

      else
      {
        v84 = &operations_research::sat::_LinearArgumentProto_default_instance_;
      }

      v86 = v84[3];
      v85 = v84 + 3;
      v87 = (v86 + 7);
      if (v86)
      {
        v88 = v87;
      }

      else
      {
        v88 = v85;
      }

      v89 = *(v85 + 2);
      if (v89)
      {
        v90 = 8 * v89;
        do
        {
          v91 = *v88++;
          result = std::vector<int>::__insert_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<int const>,google::protobuf::internal::RepeatedIterator<int const>>(a2, *(a2 + 8), *(v91 + 24), (*(v91 + 24) + 4 * *(v91 + 16)), *(v91 + 16));
          v90 -= 8;
        }

        while (v90);
      }

      return result;
    default:
      return result;
  }
}

uint64_t operations_research::sat::ApplyToAllLiteralIndices(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *(a2 + 24);
    v6 = 4 * v4;
    while (1)
    {
      v49 = v5;
      v7 = *(v3 + 24);
      if (!v7)
      {
        break;
      }

      result = (*(*v7 + 48))(v7, &v49);
      v5 += 4;
      v6 -= 4;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_56:
    std::__throw_bad_function_call[abi:ne200100]();
  }

LABEL_5:
  v8 = *(a2 + 60);
  if (v8 > 22)
  {
    if (v8 > 25)
    {
      if (v8 == 26)
      {
        v44 = *(a2 + 48);
        v45 = *(v44 + 16);
        if (v45)
        {
          v46 = *(v44 + 24);
          v47 = 4 * v45;
          while (1)
          {
            v49 = v46;
            v48 = *(v3 + 24);
            if (!v48)
            {
              break;
            }

            result = (*(*v48 + 48))(v48, &v49);
            v46 += 4;
            v47 -= 4;
            if (!v47)
            {
              return result;
            }
          }

          goto LABEL_56;
        }
      }

      else if (v8 == 29)
      {
        v24 = *(a2 + 48);
        v25 = *(v24 + 16);
        if (v25)
        {
          v26 = *(v24 + 24);
          v27 = 4 * v25;
          while (1)
          {
            v49 = v26;
            v28 = *(v3 + 24);
            if (!v28)
            {
              break;
            }

            result = (*(*v28 + 48))(v28, &v49);
            v26 += 4;
            v27 -= 4;
            if (!v27)
            {
              return result;
            }
          }

          goto LABEL_56;
        }
      }
    }

    else if (v8 == 23)
    {
      v34 = *(a2 + 48);
      v35 = *(v34 + 64);
      if (v35)
      {
        v36 = *(v34 + 72);
        v37 = 4 * v35;
        while (1)
        {
          v49 = v36;
          v38 = *(v3 + 24);
          if (!v38)
          {
            break;
          }

          result = (*(*v38 + 48))(v38, &v49);
          v36 += 4;
          v37 -= 4;
          if (!v37)
          {
            return result;
          }
        }

        goto LABEL_56;
      }
    }

    else if (v8 == 24)
    {
      v14 = *(a2 + 48);
      v15 = *(v14 + 40);
      if (v15)
      {
        v16 = *(v14 + 48);
        v17 = 4 * v15;
        while (1)
        {
          v49 = v16;
          v18 = *(v3 + 24);
          if (!v18)
          {
            break;
          }

          result = (*(*v18 + 48))(v18, &v49);
          v16 += 4;
          v17 -= 4;
          if (!v17)
          {
            return result;
          }
        }

        goto LABEL_56;
      }
    }
  }

  else if (v8 > 4)
  {
    if (v8 == 5)
    {
      v39 = *(a2 + 48);
      v40 = *(v39 + 16);
      if (v40)
      {
        v41 = *(v39 + 24);
        v42 = 4 * v40;
        while (1)
        {
          v49 = v41;
          v43 = *(v3 + 24);
          if (!v43)
          {
            break;
          }

          result = (*(*v43 + 48))(v43, &v49);
          v41 += 4;
          v42 -= 4;
          if (!v42)
          {
            return result;
          }
        }

        goto LABEL_56;
      }
    }

    else if (v8 == 15)
    {
      v19 = *(a2 + 48);
      v20 = *(v19 + 64);
      if (v20)
      {
        v21 = *(v19 + 72);
        v22 = 4 * v20;
        while (1)
        {
          v49 = v21;
          v23 = *(v3 + 24);
          if (!v23)
          {
            break;
          }

          result = (*(*v23 + 48))(v23, &v49);
          v21 += 4;
          v22 -= 4;
          if (!v22)
          {
            return result;
          }
        }

        goto LABEL_56;
      }
    }
  }

  else if (v8 == 3)
  {
    v29 = *(a2 + 48);
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = *(v29 + 24);
      v32 = 4 * v30;
      while (1)
      {
        v49 = v31;
        v33 = *(v3 + 24);
        if (!v33)
        {
          break;
        }

        result = (*(*v33 + 48))(v33, &v49);
        v31 += 4;
        v32 -= 4;
        if (!v32)
        {
          return result;
        }
      }

      goto LABEL_56;
    }
  }

  else if (v8 == 4)
  {
    v9 = *(a2 + 48);
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = *(v9 + 24);
      v12 = 4 * v10;
      while (1)
      {
        v49 = v11;
        v13 = *(v3 + 24);
        if (!v13)
        {
          break;
        }

        result = (*(*v13 + 48))(v13, &v49);
        v11 += 4;
        v12 -= 4;
        if (!v12)
        {
          return result;
        }
      }

      goto LABEL_56;
    }
  }

  return result;
}

void operations_research::sat::ApplyToAllVariableIndices(uint64_t a1, operations_research::sat::ConstraintProto *this, __n128 a3)
{
  switch(*(this + 15))
  {
    case 7:
      v5 = *(this + 6);
      *(v5 + 16) |= 1u;
      v6 = *(v5 + 48);
      if (!v6)
      {
        v7 = *(v5 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        a3.n128_f64[0] = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v7);
        *(v5 + 48) = v6;
      }

      v8 = *(v6 + 16);
      if (!v8)
      {
        goto LABEL_10;
      }

      v9 = *(v6 + 24);
      v10 = 4 * v8;
      do
      {
        v211 = v9;
        v11 = *(a1 + 24);
        if (!v11)
        {
          goto LABEL_270;
        }

        (*(*v11 + 48))(v11, &v211, a3);
        ++v9;
        v10 -= 4;
      }

      while (v10);
LABEL_10:
      for (i = 0; ; ++i)
      {
        if (*(this + 15) == 7)
        {
          v13 = *(this + 6);
          if (i >= *(v13 + 32))
          {
            return;
          }
        }

        else
        {
          if (i >= dword_2810BEFF8)
          {
            return;
          }

          operations_research::sat::ConstraintProto::clear_constraint(this);
          *(this + 15) = 7;
          v14 = *(this + 1);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          a3.n128_f64[0] = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearArgumentProto>(v14);
          *(this + 6) = v13;
        }

        v16 = *(v13 + 24);
        v15 = v13 + 24;
        v17 = v16 + 8 * i + 7;
        v18 = (v16 & 1) != 0 ? v17 : v15;
        v19 = *v18;
        v20 = *(*v18 + 16);
        if (v20)
        {
          break;
        }

LABEL_11:
        ;
      }

      v21 = *(v19 + 24);
      v22 = 4 * v20;
      while (1)
      {
        v211 = v21;
        v23 = *(a1 + 24);
        if (!v23)
        {
          goto LABEL_270;
        }

        (*(*v23 + 48))(v23, &v211, a3);
        ++v21;
        v22 -= 4;
        if (!v22)
        {
          goto LABEL_11;
        }
      }

    case 8:
      v121 = *(this + 6);
      *(v121 + 16) |= 1u;
      v122 = *(v121 + 48);
      if (!v122)
      {
        v123 = *(v121 + 8);
        if (v123)
        {
          v123 = *(v123 & 0xFFFFFFFFFFFFFFFELL);
        }

        a3.n128_f64[0] = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v123);
        *(v121 + 48) = v122;
      }

      v124 = *(v122 + 16);
      if (!v124)
      {
        goto LABEL_160;
      }

      v125 = *(v122 + 24);
      v126 = 4 * v124;
      do
      {
        v211 = v125;
        v127 = *(a1 + 24);
        if (!v127)
        {
          goto LABEL_270;
        }

        (*(*v127 + 48))(v127, &v211, a3);
        ++v125;
        v126 -= 4;
      }

      while (v126);
LABEL_160:
      for (j = 0; ; ++j)
      {
        if (*(this + 15) == 8)
        {
          v129 = *(this + 6);
          if (j >= *(v129 + 32))
          {
            return;
          }
        }

        else
        {
          if (j >= dword_2810BEFF8)
          {
            return;
          }

          operations_research::sat::ConstraintProto::clear_constraint(this);
          *(this + 15) = 8;
          v130 = *(this + 1);
          if (v130)
          {
            v130 = *(v130 & 0xFFFFFFFFFFFFFFFELL);
          }

          a3.n128_f64[0] = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearArgumentProto>(v130);
          *(this + 6) = v129;
        }

        v132 = *(v129 + 24);
        v131 = v129 + 24;
        v133 = v132 + 8 * j + 7;
        v134 = (v132 & 1) != 0 ? v133 : v131;
        v135 = *v134;
        v136 = *(*v134 + 16);
        if (v136)
        {
          break;
        }

LABEL_161:
        ;
      }

      v137 = *(v135 + 24);
      v138 = 4 * v136;
      while (1)
      {
        v211 = v137;
        v139 = *(a1 + 24);
        if (!v139)
        {
          goto LABEL_270;
        }

        (*(*v139 + 48))(v139, &v211, a3);
        ++v137;
        v138 -= 4;
        if (!v138)
        {
          goto LABEL_161;
        }
      }

    case 0xB:
      v102 = *(this + 6);
      *(v102 + 16) |= 1u;
      v103 = *(v102 + 48);
      if (!v103)
      {
        v104 = *(v102 + 8);
        if (v104)
        {
          v104 = *(v104 & 0xFFFFFFFFFFFFFFFELL);
        }

        a3.n128_f64[0] = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v104);
        *(v102 + 48) = v103;
      }

      v105 = *(v103 + 16);
      if (!v105)
      {
        goto LABEL_135;
      }

      v106 = *(v103 + 24);
      v107 = 4 * v105;
      do
      {
        v211 = v106;
        v108 = *(a1 + 24);
        if (!v108)
        {
          goto LABEL_270;
        }

        (*(*v108 + 48))(v108, &v211, a3);
        ++v106;
        v107 -= 4;
      }

      while (v107);
LABEL_135:
      for (k = 0; ; ++k)
      {
        if (*(this + 15) == 11)
        {
          v110 = *(this + 6);
          if (k >= *(v110 + 32))
          {
            return;
          }
        }

        else
        {
          if (k >= dword_2810BEFF8)
          {
            return;
          }

          operations_research::sat::ConstraintProto::clear_constraint(this);
          *(this + 15) = 11;
          v111 = *(this + 1);
          if (v111)
          {
            v111 = *(v111 & 0xFFFFFFFFFFFFFFFELL);
          }

          a3.n128_f64[0] = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearArgumentProto>(v111);
          *(this + 6) = v110;
        }

        v113 = *(v110 + 24);
        v112 = v110 + 24;
        v114 = v113 + 8 * k + 7;
        v115 = (v113 & 1) != 0 ? v114 : v112;
        v116 = *v115;
        v117 = *(*v115 + 16);
        if (v117)
        {
          break;
        }

LABEL_136:
        ;
      }

      v118 = *(v116 + 24);
      v119 = 4 * v117;
      while (1)
      {
        v211 = v118;
        v120 = *(a1 + 24);
        if (!v120)
        {
          goto LABEL_270;
        }

        (*(*v120 + 48))(v120, &v211, a3);
        ++v118;
        v119 -= 4;
        if (!v119)
        {
          goto LABEL_136;
        }
      }

    case 0xC:
      v97 = *(this + 6);
      v98 = *(v97 + 16);
      if (!v98)
      {
        return;
      }

      v99 = *(v97 + 24);
      v100 = 4 * v98;
      while (1)
      {
        v211 = v99;
        v101 = *(a1 + 24);
        if (!v101)
        {
          break;
        }

        (*(*v101 + 48))(v101, &v211, a3);
        ++v99;
        v100 -= 4;
        if (!v100)
        {
          return;
        }
      }

      goto LABEL_270;
    case 0xD:
      v48 = 0;
      v49 = 13;
      while (2)
      {
        if (v49 == 13)
        {
          v50 = *(this + 6);
          if (v48 >= *(v50 + 6))
          {
            return;
          }

          goto LABEL_66;
        }

        if (v48 < dword_2810BEA18)
        {
          operations_research::sat::ConstraintProto::clear_constraint(this);
          *(this + 15) = 13;
          v51 = *(this + 1);
          if (v51)
          {
            v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
          }

          v50 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::AllDifferentConstraintProto>(v51);
          *(this + 6) = v50;
LABEL_66:
          v53 = v50[2];
          v52 = v50 + 2;
          v54 = v53 + 8 * v48 + 7;
          if (v53)
          {
            v55 = v54;
          }

          else
          {
            v55 = v52;
          }

          v56 = *v55;
          v57 = *(*v55 + 16);
          if (!v57)
          {
LABEL_58:
            ++v48;
            v49 = *(this + 15);
            continue;
          }

          v58 = *(v56 + 24);
          v59 = 4 * v57;
          while (1)
          {
            v211 = v58;
            v60 = *(a1 + 24);
            if (!v60)
            {
              goto LABEL_270;
            }

            (*(*v60 + 48))(v60, &v211);
            ++v58;
            v59 -= 4;
            if (!v59)
            {
              goto LABEL_58;
            }
          }
        }

        return;
      }

    case 0xE:
      v210 = *(*(this + 6) + 36);
      v211 = &v210;
      v80 = *(a1 + 24);
      if (!v80)
      {
        goto LABEL_270;
      }

      (*(*v80 + 48))(v80, &v211, a3);
      if (*(this + 15) != 14)
      {
        operations_research::sat::ConstraintProto::clear_constraint(this);
        *(this + 15) = 14;
        v178 = *(this + 1);
        if (v178)
        {
          v178 = *(v178 & 0xFFFFFFFFFFFFFFFELL);
        }

        v81.n128_f64[0] = google::protobuf::Arena::DefaultConstruct<operations_research::sat::ElementConstraintProto>(v178);
        *(this + 6) = v179;
        *(v179 + 36) = v210;
        if (*(this + 15) != 14)
        {
          goto LABEL_102;
        }

LABEL_225:
        v83 = *(this + 6);
        goto LABEL_226;
      }

      *(*(this + 6) + 36) = v210;
      if (*(this + 15) == 14)
      {
        goto LABEL_225;
      }

LABEL_102:
      operations_research::sat::ConstraintProto::clear_constraint(this);
      *(this + 15) = 14;
      v82 = *(this + 1);
      if (v82)
      {
        v82 = *(v82 & 0xFFFFFFFFFFFFFFFELL);
      }

      v81.n128_f64[0] = google::protobuf::Arena::DefaultConstruct<operations_research::sat::ElementConstraintProto>(v82);
      *(this + 6) = v83;
LABEL_226:
      v210 = *(v83 + 40);
      v211 = &v210;
      v180 = *(a1 + 24);
      if (!v180)
      {
        goto LABEL_270;
      }

      (*(*v180 + 48))(v180, &v211, v81);
      if (*(this + 15) == 14)
      {
        *(*(this + 6) + 40) = v210;
        if (*(this + 15) != 14)
        {
          goto LABEL_229;
        }

LABEL_235:
        v183 = *(this + 6);
        v184 = *(v183 + 16);
        if (!v184)
        {
          return;
        }

LABEL_236:
        v187 = *(v183 + 24);
        v188 = 4 * v184;
        while (1)
        {
          v211 = v187;
          v189 = *(a1 + 24);
          if (!v189)
          {
            break;
          }

          (*(*v189 + 48))(v189, &v211, v181);
          ++v187;
          v188 -= 4;
          if (!v188)
          {
            return;
          }
        }

        goto LABEL_270;
      }

      operations_research::sat::ConstraintProto::clear_constraint(this);
      *(this + 15) = 14;
      v185 = *(this + 1);
      if (v185)
      {
        v185 = *(v185 & 0xFFFFFFFFFFFFFFFELL);
      }

      v181.n128_f64[0] = google::protobuf::Arena::DefaultConstruct<operations_research::sat::ElementConstraintProto>(v185);
      *(this + 6) = v186;
      *(v186 + 40) = v210;
      if (*(this + 15) == 14)
      {
        goto LABEL_235;
      }

LABEL_229:
      operations_research::sat::ConstraintProto::clear_constraint(this);
      *(this + 15) = 14;
      v182 = *(this + 1);
      if ((v182 & 1) == 0)
      {
        v181.n128_f64[0] = google::protobuf::Arena::DefaultConstruct<operations_research::sat::ElementConstraintProto>(v182);
        *(this + 6) = v183;
        v184 = *(v183 + 16);
        if (!v184)
        {
          return;
        }

        goto LABEL_236;
      }

      v181.n128_f64[0] = google::protobuf::Arena::DefaultConstruct<operations_research::sat::ElementConstraintProto>(*(v182 & 0xFFFFFFFFFFFFFFFELL));
      *(this + 6) = v183;
      v184 = *(v183 + 16);
      if (v184)
      {
        goto LABEL_236;
      }

      return;
    case 0x10:
      v140 = *(this + 6);
      v141 = *(v140 + 16);
      if (!v141)
      {
        return;
      }

      v142 = *(v140 + 24);
      v143 = 4 * v141;
      while (1)
      {
        v211 = v142;
        v144 = *(a1 + 24);
        if (!v144)
        {
          break;
        }

        (*(*v144 + 48))(v144, &v211, a3);
        ++v142;
        v143 -= 4;
        if (!v143)
        {
          return;
        }
      }

      goto LABEL_270;
    case 0x11:
      v145 = *(this + 6);
      v146 = *(v145 + 112);
      if (!v146)
      {
        return;
      }

      v147 = *(v145 + 120);
      v148 = 4 * v146;
      while (1)
      {
        v211 = v147;
        v149 = *(a1 + 24);
        if (!v149)
        {
          break;
        }

        (*(*v149 + 48))(v149, &v211, a3);
        ++v147;
        v148 -= 4;
        if (!v148)
        {
          return;
        }
      }

      goto LABEL_270;
    case 0x12:
      v159 = *(this + 6);
      v160 = *(v159 + 16);
      if (!v160)
      {
        goto LABEL_203;
      }

      v161 = *(v159 + 24);
      v162 = 4 * v160;
      do
      {
        v211 = v161;
        v163 = *(a1 + 24);
        if (!v163)
        {
          goto LABEL_270;
        }

        (*(*v163 + 48))(v163, &v211, a3);
        ++v161;
        v162 -= 4;
      }

      while (v162);
      if (*(this + 15) == 18)
      {
LABEL_203:
        v164 = *(this + 6);
        v165 = *(v164 + 10);
        if (!v165)
        {
          return;
        }
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(this);
        *(this + 15) = 18;
        v206 = *(this + 1);
        if (v206)
        {
          v164 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::InverseConstraintProto>(*(v206 & 0xFFFFFFFFFFFFFFFELL));
          *(this + 6) = v164;
          v165 = *(v164 + 10);
          if (!v165)
          {
            return;
          }
        }

        else
        {
          v164 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::InverseConstraintProto>(v206);
          *(this + 6) = v164;
          v165 = *(v164 + 10);
          if (!v165)
          {
            return;
          }
        }
      }

      v207 = v164[6];
      v208 = 4 * v165;
      while (1)
      {
        v211 = v207;
        v209 = *(a1 + 24);
        if (!v209)
        {
          break;
        }

        (*(*v209 + 48))(v209, &v211, a3);
        ++v207;
        v208 -= 4;
        if (!v208)
        {
          return;
        }
      }

      goto LABEL_270;
    case 0x13:
      v150 = *(this + 6);
      *(v150 + 16) |= 1u;
      v151 = *(v150 + 24);
      if (!v151)
      {
        v152 = *(v150 + 8);
        if (v152)
        {
          v152 = *(v152 & 0xFFFFFFFFFFFFFFFELL);
        }

        a3.n128_f64[0] = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v152);
        *(v150 + 24) = v151;
      }

      v153 = *(v151 + 16);
      if (!v153)
      {
        goto LABEL_195;
      }

      v154 = *(v151 + 24);
      v155 = 4 * v153;
      do
      {
        v211 = v154;
        v156 = *(a1 + 24);
        if (!v156)
        {
          goto LABEL_270;
        }

        (*(*v156 + 48))(v156, &v211, a3);
        ++v154;
        v155 -= 4;
      }

      while (v155);
LABEL_195:
      if (*(this + 15) == 19)
      {
        v157 = *(this + 6);
        *(v157 + 16) |= 4u;
        v158 = *(v157 + 40);
        if (v158)
        {
          goto LABEL_246;
        }

        goto LABEL_243;
      }

      operations_research::sat::ConstraintProto::clear_constraint(this);
      *(this + 15) = 19;
      v190 = *(this + 1);
      if (v190)
      {
        v190 = *(v190 & 0xFFFFFFFFFFFFFFFELL);
      }

      a3.n128_f64[0] = google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntervalConstraintProto>(v190);
      v157 = v191;
      *(this + 6) = v191;
      *(v191 + 16) |= 4u;
      v158 = *(v191 + 40);
      if (!v158)
      {
LABEL_243:
        v192 = *(v157 + 8);
        if (v192)
        {
          v192 = *(v192 & 0xFFFFFFFFFFFFFFFELL);
        }

        a3.n128_f64[0] = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v192);
        *(v157 + 40) = v158;
      }

LABEL_246:
      v193 = *(v158 + 16);
      if (v193)
      {
        v194 = *(v158 + 24);
        v195 = 4 * v193;
        do
        {
          v211 = v194;
          v196 = *(a1 + 24);
          if (!v196)
          {
            goto LABEL_270;
          }

          (*(*v196 + 48))(v196, &v211, a3);
          ++v194;
          v195 -= 4;
        }

        while (v195);
      }

      if (*(this + 15) == 19)
      {
        v197 = *(this + 6);
        *(v197 + 16) |= 2u;
        v198 = *(v197 + 32);
        if (v198)
        {
LABEL_259:
          v202 = *(v198 + 16);
          if (!v202)
          {
            return;
          }

          v203 = *(v198 + 24);
          v204 = 4 * v202;
          while (1)
          {
            v211 = v203;
            v205 = *(a1 + 24);
            if (!v205)
            {
              break;
            }

            (*(*v205 + 48))(v205, &v211, a3);
            ++v203;
            v204 -= 4;
            if (!v204)
            {
              return;
            }
          }

LABEL_270:
          std::__throw_bad_function_call[abi:ne200100]();
        }
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(this);
        *(this + 15) = 19;
        v199 = *(this + 1);
        if (v199)
        {
          v199 = *(v199 & 0xFFFFFFFFFFFFFFFELL);
        }

        a3.n128_f64[0] = google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntervalConstraintProto>(v199);
        v197 = v200;
        *(this + 6) = v200;
        *(v200 + 16) |= 2u;
        v198 = *(v200 + 32);
        if (v198)
        {
          goto LABEL_259;
        }
      }

      v201 = *(v197 + 8);
      if (v201)
      {
        v201 = *(v201 & 0xFFFFFFFFFFFFFFFELL);
      }

      a3.n128_f64[0] = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v201);
      *(v197 + 32) = v198;
      goto LABEL_259;
    case 0x16:
      v29 = *(this + 6);
      *(v29 + 16) |= 1u;
      v30 = *(v29 + 72);
      if (!v30)
      {
        v31 = *(v29 + 8);
        if (v31)
        {
          v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
        }

        a3.n128_f64[0] = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v31);
        *(v29 + 72) = v30;
      }

      v32 = *(v30 + 16);
      if (!v32)
      {
        goto LABEL_40;
      }

      v33 = *(v30 + 24);
      v34 = 4 * v32;
      do
      {
        v211 = v33;
        v35 = *(a1 + 24);
        if (!v35)
        {
          goto LABEL_270;
        }

        (*(*v35 + 48))(v35, &v211, a3);
        ++v33;
        v34 -= 4;
      }

      while (v34);
LABEL_40:
      for (m = 0; ; ++m)
      {
        if (*(this + 15) == 22)
        {
          v37 = *(this + 6);
          if (m >= *(v37 + 56))
          {
            return;
          }
        }

        else
        {
          if (m >= dword_2810BEAE8)
          {
            return;
          }

          operations_research::sat::ConstraintProto::clear_constraint(this);
          *(this + 15) = 22;
          v38 = *(this + 1);
          if (v38)
          {
            v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
          }

          a3.n128_f64[0] = google::protobuf::Arena::DefaultConstruct<operations_research::sat::CumulativeConstraintProto>(v38);
          *(this + 6) = v37;
        }

        v40 = *(v37 + 48);
        v39 = v37 + 48;
        v41 = v40 + 8 * m + 7;
        v42 = (v40 & 1) != 0 ? v41 : v39;
        v43 = *v42;
        v44 = *(*v42 + 16);
        if (v44)
        {
          break;
        }

LABEL_41:
        ;
      }

      v45 = *(v43 + 24);
      v46 = 4 * v44;
      while (1)
      {
        v211 = v45;
        v47 = *(a1 + 24);
        if (!v47)
        {
          goto LABEL_270;
        }

        (*(*v47 + 48))(v47, &v211, a3);
        ++v45;
        v46 -= 4;
        if (!v46)
        {
          goto LABEL_41;
        }
      }

    case 0x18:
      v84 = 0;
      v85 = 24;
      while (2)
      {
        if (v85 == 24)
        {
          v86 = *(this + 6);
          if (v84 >= *(v86 + 24))
          {
LABEL_205:
            for (n = 0; ; ++n)
            {
              if (v85 == 24)
              {
                v167 = *(this + 6);
                if (n >= *(v167 + 72))
                {
                  return;
                }
              }

              else
              {
                if (n >= dword_2810BEB48)
                {
                  return;
                }

                operations_research::sat::ConstraintProto::clear_constraint(this);
                *(this + 15) = 24;
                v168 = *(this + 1);
                if (v168)
                {
                  v168 = *(v168 & 0xFFFFFFFFFFFFFFFELL);
                }

                a3.n128_f64[0] = google::protobuf::Arena::DefaultConstruct<operations_research::sat::ReservoirConstraintProto>(v168);
                *(this + 6) = v167;
              }

              v170 = *(v167 + 64);
              v169 = v167 + 64;
              v171 = v170 + 8 * n + 7;
              v172 = (v170 & 1) != 0 ? v171 : v169;
              v173 = *v172;
              v174 = *(*v172 + 16);
              if (v174)
              {
                break;
              }

LABEL_206:
              v85 = *(this + 15);
            }

            v175 = *(v173 + 24);
            v176 = 4 * v174;
            while (1)
            {
              v211 = v175;
              v177 = *(a1 + 24);
              if (!v177)
              {
                goto LABEL_270;
              }

              (*(*v177 + 48))(v177, &v211, a3);
              ++v175;
              v176 -= 4;
              if (!v176)
              {
                goto LABEL_206;
              }
            }
          }
        }

        else
        {
          if (v84 >= dword_2810BEB18)
          {
            goto LABEL_205;
          }

          operations_research::sat::ConstraintProto::clear_constraint(this);
          *(this + 15) = 24;
          v87 = *(this + 1);
          if (v87)
          {
            v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
          }

          a3.n128_f64[0] = google::protobuf::Arena::DefaultConstruct<operations_research::sat::ReservoirConstraintProto>(v87);
          *(this + 6) = v86;
        }

        v89 = *(v86 + 16);
        v88 = v86 + 16;
        v90 = v89 + 8 * v84 + 7;
        if (v89)
        {
          v91 = v90;
        }

        else
        {
          v91 = v88;
        }

        v92 = *v91;
        v93 = *(*v91 + 16);
        if (!v93)
        {
LABEL_106:
          ++v84;
          v85 = *(this + 15);
          continue;
        }

        break;
      }

      v94 = *(v92 + 24);
      v95 = 4 * v93;
      while (1)
      {
        v211 = v94;
        v96 = *(a1 + 24);
        if (!v96)
        {
          goto LABEL_270;
        }

        (*(*v96 + 48))(v96, &v211, a3);
        ++v94;
        v95 -= 4;
        if (!v95)
        {
          goto LABEL_106;
        }
      }

    case 0x1B:
      v61 = *(this + 6);
      *(v61 + 16) |= 1u;
      v62 = *(v61 + 48);
      if (!v62)
      {
        v63 = *(v61 + 8);
        if (v63)
        {
          v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
        }

        a3.n128_f64[0] = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v63);
        *(v61 + 48) = v62;
      }

      v64 = *(v62 + 16);
      if (!v64)
      {
        goto LABEL_82;
      }

      v65 = *(v62 + 24);
      v66 = 4 * v64;
      do
      {
        v211 = v65;
        v67 = *(a1 + 24);
        if (!v67)
        {
          goto LABEL_270;
        }

        (*(*v67 + 48))(v67, &v211, a3);
        ++v65;
        v66 -= 4;
      }

      while (v66);
LABEL_82:
      for (ii = 0; ; ++ii)
      {
        if (*(this + 15) == 27)
        {
          v69 = *(this + 6);
          if (ii >= *(v69 + 32))
          {
            return;
          }
        }

        else
        {
          if (ii >= dword_2810BEFF8)
          {
            return;
          }

          operations_research::sat::ConstraintProto::clear_constraint(this);
          *(this + 15) = 27;
          v70 = *(this + 1);
          if (v70)
          {
            v70 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
          }

          a3.n128_f64[0] = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearArgumentProto>(v70);
          *(this + 6) = v69;
        }

        v72 = *(v69 + 24);
        v71 = v69 + 24;
        v73 = v72 + 8 * ii + 7;
        v74 = (v72 & 1) != 0 ? v73 : v71;
        v75 = *v74;
        v76 = *(*v74 + 16);
        if (v76)
        {
          break;
        }

LABEL_83:
        ;
      }

      v77 = *(v75 + 24);
      v78 = 4 * v76;
      while (1)
      {
        v211 = v77;
        v79 = *(a1 + 24);
        if (!v79)
        {
          goto LABEL_270;
        }

        (*(*v79 + 48))(v79, &v211, a3);
        ++v77;
        v78 -= 4;
        if (!v78)
        {
          goto LABEL_83;
        }
      }

    case 0x1E:
      v24 = *(this + 6);
      v25 = *(v24 + 16);
      if (!v25)
      {
        return;
      }

      v26 = *(v24 + 24);
      v27 = 4 * v25;
      while (1)
      {
        v211 = v26;
        v28 = *(a1 + 24);
        if (!v28)
        {
          break;
        }

        (*(*v28 + 48))(v28, &v211, a3);
        ++v26;
        v27 -= 4;
        if (!v27)
        {
          return;
        }
      }

      goto LABEL_270;
    default:
      return;
  }
}

void *operations_research::sat::ApplyToAllIntervalIndices(void *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 60);
  switch(v3)
  {
    case 22:
      v16 = *(a2 + 48);
      v17 = *(v16 + 24);
      if (!v17)
      {
        return result;
      }

      v18 = *(v16 + 32);
      v19 = 4 * v17;
      while (1)
      {
        v25 = v18;
        v20 = v2[3];
        if (!v20)
        {
          break;
        }

        result = (*(*v20 + 48))(v20, &v25);
        v18 += 4;
        v19 -= 4;
        if (!v19)
        {
          return result;
        }
      }

      goto LABEL_29;
    case 21:
      v9 = *(a2 + 48);
      v10 = *(v9 + 16);
      if (!v10)
      {
        goto LABEL_14;
      }

      v11 = a2;
      v12 = *(v9 + 24);
      v13 = 4 * v10;
      do
      {
        v25 = v12;
        v14 = v2[3];
        if (!v14)
        {
          goto LABEL_29;
        }

        (*(*v14 + 48))(v14, &v25);
        v12 += 4;
        v13 -= 4;
      }

      while (v13);
      a2 = v11;
      if (*(v11 + 60) != 21)
      {
        operations_research::sat::ConstraintProto::clear_constraint(v11);
        *(v11 + 60) = 21;
        v21 = *(v11 + 8);
        if (v21)
        {
          result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlap2DConstraintProto>(*(v21 & 0xFFFFFFFFFFFFFFFELL));
          *(v11 + 48) = result;
          v15 = *(result + 10);
          if (!v15)
          {
            return result;
          }
        }

        else
        {
          result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlap2DConstraintProto>(v21);
          *(v11 + 48) = result;
          v15 = *(result + 10);
          if (!v15)
          {
            return result;
          }
        }
      }

      else
      {
LABEL_14:
        result = *(a2 + 48);
        v15 = *(result + 10);
        if (!v15)
        {
          return result;
        }
      }

      v22 = result[6];
      v23 = 4 * v15;
      while (1)
      {
        v25 = v22;
        v24 = v2[3];
        if (!v24)
        {
          break;
        }

        result = (*(*v24 + 48))(v24, &v25);
        v22 += 4;
        v23 -= 4;
        if (!v23)
        {
          return result;
        }
      }

LABEL_29:
      std::__throw_bad_function_call[abi:ne200100]();
    case 20:
      v4 = *(a2 + 48);
      v5 = *(v4 + 16);
      if (v5)
      {
        v6 = *(v4 + 24);
        v7 = 4 * v5;
        while (1)
        {
          v25 = v6;
          v8 = v2[3];
          if (!v8)
          {
            break;
          }

          result = (*(*v8 + 48))(v8, &v25);
          v6 += 4;
          v7 -= 4;
          if (!v7)
          {
            return result;
          }
        }

        goto LABEL_29;
      }

      break;
  }

  return result;
}

const char *operations_research::sat::ConstraintCaseName(unsigned int a1)
{
  if (a1 > 0x1E)
  {
    return "kBoolOr";
  }

  else
  {
    return off_278BC3C60[a1];
  }
}

void *operations_research::sat::UsedVariables@<X0>(int8x16_t **__return_ptr a1@<X8>, operations_research::sat *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operations_research::sat::GetReferencesUsedByConstraint(this, a1, a1);
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v6 = v5 - v4 - 4;
    v7 = *a1;
    if (v6 <= 0x1B)
    {
      goto LABEL_27;
    }

    v8 = (v6 >> 2) + 1;
    v7 = &v4[4 * (v8 & 0x7FFFFFFFFFFFFFF8)];
    v9 = (v4 + 16);
    v10 = v8 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v11 = vmaxq_s32(vmvnq_s8(*v9), *v9);
      v9[-1] = vmaxq_s32(vmvnq_s8(v9[-1]), v9[-1]);
      *v9 = v11;
      v9 += 2;
      v10 -= 8;
    }

    while (v10);
    if (v8 != (v8 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_27:
      do
      {
        v12 = *v7;
        if (~*v7 > *v7)
        {
          v12 = ~v12;
        }

        *v7 = v12;
        v7 += 4;
      }

      while (v7 != v5);
    }
  }

  v13 = *(this + 4);
  if (v13)
  {
    v14 = *(this + 3);
    v15 = 4 * v13;
    do
    {
      v16 = *v14;
      if (~*v14 > *v14)
      {
        v16 = ~v16;
      }

      v24 = v16;
      std::vector<int>::push_back[abi:ne200100](a1, &v24);
      ++v14;
      v15 -= 4;
    }

    while (v15);
  }

  result = std::__sort<std::__less<int,int> &,int *>();
  v18 = a1[1];
  if (*a1 != v18)
  {
    v19 = ((*a1)->i64 + 4);
    while (v19 != v18)
    {
      v20 = v19[-1].i32[3];
      v21 = v19->i32[0];
      v19 = (v19 + 4);
      if (v20 == v21)
      {
        v22 = &v19[-1].i32[2];
        while (v19 != v18)
        {
          v23 = v20;
          v20 = v19->i32[0];
          if (v23 != v19->i32[0])
          {
            v22[1] = v20;
            ++v22;
          }

          v19 = (v19 + 4);
        }

        if (v22 + 1 != v18)
        {
          a1[1] = (v22 + 1);
        }

        return result;
      }
    }
  }

  return result;
}

void sub_23CB30F60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *operations_research::sat::UsedIntervals@<X0>(uint64_t *__return_ptr a1@<X8>, operations_research::sat *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = *(this + 15);
  switch(v3)
  {
    case 20:
      v4 = 0;
      v10 = *(this + 6);
      v6 = (v10 + 16);
      v7 = (v10 + 24);
      break;
    case 21:
      std::vector<int>::__insert_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<int const>,google::protobuf::internal::RepeatedIterator<int const>>(a1, 0, *(*(this + 6) + 24), (*(*(this + 6) + 24) + 4 * *(*(this + 6) + 16)), *(*(this + 6) + 16));
      if (*(this + 15) == 21)
      {
        v9 = *(this + 6);
      }

      else
      {
        v9 = &operations_research::sat::_NoOverlap2DConstraintProto_default_instance_;
      }

      v6 = (v9 + 5);
      v7 = (v9 + 6);
      v4 = a1[1];
      break;
    case 22:
      v4 = 0;
      v5 = *(this + 6);
      v6 = (v5 + 24);
      v7 = (v5 + 32);
      break;
    default:
      goto LABEL_11;
  }

  std::vector<int>::__insert_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<int const>,google::protobuf::internal::RepeatedIterator<int const>>(a1, v4, *v7, (*v7 + 4 * *v6), *v6);
LABEL_11:
  result = std::__sort<std::__less<int,int> &,int *>();
  v12 = a1[1];
  if (*a1 != v12)
  {
    v13 = (*a1 + 4);
    while (v13 != v12)
    {
      v14 = *(v13 - 1);
      v15 = *v13++;
      if (v14 == v15)
      {
        v16 = v13 - 2;
        while (v13 != v12)
        {
          v17 = v14;
          v14 = *v13;
          if (v17 != *v13)
          {
            v16[1] = v14;
            ++v16;
          }

          ++v13;
        }

        if (v16 + 1 != v12)
        {
          a1[1] = (v16 + 1);
        }

        return result;
      }
    }
  }

  return result;
}

void sub_23CB310E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::ComputeInnerObjective(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 < 1)
  {
    return 0;
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 24);
  if (v2 == 1)
  {
    v5 = 0;
    result = 0;
LABEL_12:
    v17 = (v4 + 4 * v5);
    v18 = v2 - v5;
    v19 = (v3 + 8 * v5);
    do
    {
      v21 = *v19++;
      v20 = v21;
      LODWORD(v21) = *v17++;
      v22 = v21;
      if (~v21 <= v21)
      {
        v23 = v22;
      }

      else
      {
        v23 = ~v22;
      }

      if (v22 < 0)
      {
        v20 = -v20;
      }

      result += v20 * *(a2 + 8 * v23);
      --v18;
    }

    while (v18);
    return result;
  }

  v7 = 0;
  v8 = 0;
  v5 = v2 & 0x7FFFFFFE;
  v9 = (v3 + 8);
  v10 = v5;
  v11 = *(a1 + 24);
  do
  {
    v13 = *(v9 - 1);
    v12 = *v9;
    v14 = *v11++;
    v15 = vmax_s32(vmvn_s8(v14), v14);
    v16 = v14.i32[1];
    if (v14.i32[0] < 0)
    {
      v13 = -v13;
    }

    if (v16 < 0)
    {
      v12 = -v12;
    }

    v7 += v13 * *(a2 + 8 * v15.i32[0]);
    v8 += v12 * *(a2 + 8 * v15.i32[1]);
    v9 += 2;
    v10 -= 2;
  }

  while (v10);
  result = v8 + v7;
  if (v5 != v2)
  {
    goto LABEL_12;
  }

  return result;
}

BOOL operations_research::sat::ExpressionContainsSingleRef(operations_research::sat *this, const operations_research::sat::LinearExpressionProto *a2)
{
  if (*(this + 8))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 4) == 1;
  }

  if (!v2)
  {
    return 0;
  }

  v4 = **(this + 6);
  if (v4 < 0)
  {
    v4 = -v4;
  }

  return v4 == 1;
}

void operations_research::sat::AddLinearExpressionToLinearConstraint(operations_research::sat *this, const operations_research::sat::LinearExpressionProto *a2, uint64_t a3, operations_research::sat::LinearConstraintProto *a4, __n128 a5)
{
  if (*(this + 4) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 3) + 4 * v6);
      a5.n128_u64[0] = *(a3 + 16);
      v8 = a5.n128_u32[0];
      if (a5.n128_u32[0] == a5.n128_u32[1])
      {
        v14 = this;
        v15 = a2;
        google::protobuf::RepeatedField<int>::Grow(a3 + 16, a5.n128_u32[1], a5.n128_u32[1] + 1);
        this = v14;
        a2 = v15;
        v8 = *(a3 + 16);
      }

      v9 = *(a3 + 24);
      *(a3 + 16) = v8 + 1;
      *(v9 + 4 * v8) = v7;
      v10 = *(*(this + 6) + 8 * v6);
      v12 = *(a3 + 40);
      v11 = *(a3 + 44);
      if (v12 == v11)
      {
        v16 = this;
        v17 = a2;
        google::protobuf::RepeatedField<long long>::Grow(a3 + 40, *(a3 + 44), (v11 + 1));
        this = v16;
        a2 = v17;
        v12 = *(a3 + 40);
      }

      v13 = *(a3 + 48);
      *(a3 + 40) = v12 + 1;
      *(v13 + 8 * v12) = v10 * a2;
      ++v6;
    }

    while (v6 < *(this + 4));
  }

  v18 = *(this + 8) * a2;
  if (v18)
  {
    operations_research::Domain::FromFlatSpanOfIntervals(*(a3 + 72), *(a3 + 64), v21, a5);
    operations_research::Domain::Domain(v20, -v18);
    operations_research::Domain::AdditionWith(v22, v21, v20, v19);
    operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(v22, a3);
    if (v22[0])
    {
      operator delete(v22[1]);
      if ((v20[0] & 1) == 0)
      {
LABEL_11:
        if ((v21[0] & 1) == 0)
        {
          return;
        }

        goto LABEL_12;
      }
    }

    else if ((v20[0] & 1) == 0)
    {
      goto LABEL_11;
    }

    operator delete(v20[1]);
    if ((v21[0] & 1) == 0)
    {
      return;
    }

LABEL_12:
    operator delete(v21[1]);
  }
}

void sub_23CB3139C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, char a13, void *a14, uint64_t a15, char a16, void *__p)
{
  if (a16)
  {
    operator delete(__p);
    if ((a10 & 1) == 0)
    {
LABEL_3:
      if ((a13 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a10 & 1) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a11);
  if ((a13 & 1) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a14);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::SafeAddLinearExpressionToLinearConstraint(operations_research::sat *this, unint64_t a2, uint64_t a3, operations_research::sat::LinearConstraintProto *a4, __n128 a5)
{
  if (*(this + 4) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 3) + 4 * v6);
      a5.n128_u64[0] = *(a3 + 16);
      v8 = a5.n128_u32[0];
      if (a5.n128_u32[0] == a5.n128_u32[1])
      {
        v15 = this;
        v16 = a2;
        google::protobuf::RepeatedField<int>::Grow(a3 + 16, a5.n128_u32[1], a5.n128_u32[1] + 1);
        this = v15;
        a2 = v16;
        v8 = *(a3 + 16);
      }

      v9 = *(a3 + 24);
      *(a3 + 16) = v8 + 1;
      *(v9 + 4 * v8) = v7;
      v10 = *(*(this + 6) + 8 * v6);
      v11 = (v10 * a2) >> 64 == (v10 * a2) >> 63 ? v10 * a2 : ((v10 ^ a2) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL < 2)
      {
        return 0;
      }

      v13 = *(a3 + 40);
      v12 = *(a3 + 44);
      if (v13 == v12)
      {
        v17 = this;
        v18 = a2;
        google::protobuf::RepeatedField<long long>::Grow(a3 + 40, *(a3 + 44), (v12 + 1));
        this = v17;
        a2 = v18;
        v13 = *(a3 + 40);
      }

      v14 = *(a3 + 48);
      *(a3 + 40) = v13 + 1;
      *(v14 + 8 * v13) = v11;
    }

    while (++v6 < *(this + 4));
  }

  v19 = *(this + 8);
  if ((a2 * v19) >> 64 == (a2 * v19) >> 63)
  {
    v20 = a2 * v19;
  }

  else
  {
    v20 = ((v19 ^ a2) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v20 - 0x7FFFFFFFFFFFFFFFLL < 2)
  {
    return 0;
  }

  operations_research::Domain::FromFlatSpanOfIntervals(*(a3 + 72), *(a3 + 64), v25, a5);
  operations_research::Domain::Domain(v24, -v20);
  operations_research::Domain::AdditionWith(v26, v25, v24, v22);
  if (v24[0])
  {
    operator delete(v24[1]);
  }

  if (v25[0])
  {
    operator delete(v25[1]);
  }

  if ((operations_research::Domain::Min(v26) - 0x7FFFFFFFFFFFFFFFLL) >= 2 && (operations_research::Domain::Max(v26) - 0x7FFFFFFFFFFFFFFFLL) >= 2)
  {
    operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(v26, a3);
    result = 1;
    if ((v26[0] & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if ((v26[0] & 1) == 0)
    {
      return result;
    }
  }

  v23 = result;
  operator delete(v26[1]);
  return v23;
}

void sub_23CB31630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, char a13, void *a14, uint64_t a15, char a16, uint64_t a17)
{
  if (a10)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

BOOL operations_research::sat::LinearExpressionProtosAreEqual(operations_research::sat *this, const operations_research::sat::LinearExpressionProto *a2, const operations_research::sat::LinearExpressionProto *a3)
{
  v3 = *(this + 4);
  if (v3 != *(a2 + 4) || *(this + 8) != *(a2 + 8) * a3)
  {
    return 0;
  }

  *v14 = xmmword_23CE306D0;
  if (v3 < 1)
  {
    return 1;
  }

  v8 = 0;
  do
  {
    v9 = *(*(this + 6) + 8 * v8);
    v13 = *(*(this + 3) + 4 * v8);
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::find_or_prepare_insert<int>(v14, &v13, v15);
    if (v17 == 1)
    {
      v10 = v16;
      *v16 = v13;
      *(v10 + 8) = 0;
    }

    *(v16 + 8) += v9;
    v11 = *(*(a2 + 6) + 8 * v8);
    v13 = *(*(a2 + 3) + 4 * v8);
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::find_or_prepare_insert<int>(v14, &v13, v15);
    if (v17 == 1)
    {
      v12 = v16;
      *v16 = v13;
      *(v12 + 8) = 0;
    }

    *(v16 + 8) -= v11 * a3;
    ++v8;
  }

  while (v8 < *(this + 4));
  operations_research::sat::LinearExpressionProtosAreEqual(&v14[1], v14, v15);
  return v15[0];
}

void sub_23CB31800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a11 >= 2)
  {
    operator delete((a13 - (a12 & 1) - 8));
  }

  _Unwind_Resume(exception_object);
}

const operations_research::sat::CpModelProto *operations_research::sat::FingerprintModel(operations_research::sat *this, const operations_research::sat::CpModelProto *a2)
{
  v3 = this;
  v4 = *(this + 3);
  if (v4)
  {
    v5 = (v4 + 7);
  }

  else
  {
    v5 = this + 24;
  }

  v6 = *(this + 8);
  if (v6)
  {
    v7 = 8 * v6;
    do
    {
      v8 = *(*v5 + 16);
      if (v8)
      {
        a2 = operations_research::fasthash64(*(*v5 + 24), 8 * v8, a2);
      }

      v5 += 8;
      v7 -= 8;
    }

    while (v7);
  }

  v9 = *(v3 + 6);
  if (v9)
  {
    v10 = (v9 + 7);
  }

  else
  {
    v10 = v3 + 48;
  }

  v11 = *(v3 + 14);
  if (v11)
  {
    v12 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    v13 = &operations_research::sat::_LinearArgumentProto_default_instance_;
    v14 = &v10[8 * v11];
    v15 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    v16 = &operations_research::sat::_ElementConstraintProto_default_instance_;
    while (1)
    {
      v18 = *v10;
      v19 = *(*v10 + 16);
      if (v19)
      {
        a2 = operations_research::fasthash64(*(v18 + 24), 4 * v19, a2);
      }

      switch(*(v18 + 60))
      {
        case 3:
        case 4:
        case 5:
        case 0x14:
        case 0x1A:
        case 0x1D:
          goto LABEL_20;
        case 7:
          if (*(*(v18 + 48) + 48))
          {
            v83 = *(*(v18 + 48) + 48);
          }

          else
          {
            v83 = v12;
          }

          v84 = *(v83 + 4);
          if (v84)
          {
            a2 = operations_research::fasthash64(v83[3], 4 * v84, a2);
            v85 = *(v83 + 10);
            if (v85)
            {
              a2 = operations_research::fasthash64(v83[6], 8 * v85, a2);
            }
          }

          v208 = v83[8];
          a2 = operations_research::fasthash64(&v208, 8uLL, a2);
          v86 = v13;
          if (*(v18 + 60) == 7)
          {
            v86 = *(v18 + 48);
          }

          v88 = v86[3];
          v87 = v86 + 3;
          v89 = (v88 + 7);
          if (v88)
          {
            v90 = v89;
          }

          else
          {
            v90 = v87;
          }

          v91 = *(v87 + 2);
          if (v91)
          {
            v92 = 8 * v91;
            do
            {
              v93 = *v90;
              v94 = *(*v90 + 4);
              if (v94)
              {
                a2 = operations_research::fasthash64(v93[3], 4 * v94, a2);
                v95 = *(v93 + 10);
                if (v95)
                {
                  a2 = operations_research::fasthash64(v93[6], 8 * v95, a2);
                }
              }

              v208 = v93[8];
              a2 = operations_research::fasthash64(&v208, 8uLL, a2);
              ++v90;
              v92 -= 8;
            }

            while (v92);
          }

          goto LABEL_16;
        case 8:
          if (*(*(v18 + 48) + 48))
          {
            v96 = *(*(v18 + 48) + 48);
          }

          else
          {
            v96 = v12;
          }

          v97 = *(v96 + 4);
          if (v97)
          {
            a2 = operations_research::fasthash64(v96[3], 4 * v97, a2);
            v98 = *(v96 + 10);
            if (v98)
            {
              a2 = operations_research::fasthash64(v96[6], 8 * v98, a2);
            }
          }

          v208 = v96[8];
          a2 = operations_research::fasthash64(&v208, 8uLL, a2);
          v99 = v13;
          if (*(v18 + 60) == 8)
          {
            v99 = *(v18 + 48);
          }

          v101 = v99[3];
          v100 = v99 + 3;
          v102 = (v101 + 7);
          if (v101)
          {
            v103 = v102;
          }

          else
          {
            v103 = v100;
          }

          v104 = *(v100 + 2);
          if (v104)
          {
            v105 = 8 * v104;
            do
            {
              v106 = *v103;
              v107 = *(*v103 + 4);
              if (v107)
              {
                a2 = operations_research::fasthash64(v106[3], 4 * v107, a2);
                v108 = *(v106 + 10);
                if (v108)
                {
                  a2 = operations_research::fasthash64(v106[6], 8 * v108, a2);
                }
              }

              v208 = v106[8];
              a2 = operations_research::fasthash64(&v208, 8uLL, a2);
              ++v103;
              v105 -= 8;
            }

            while (v105);
          }

          goto LABEL_16;
        case 0xB:
          if (*(*(v18 + 48) + 48))
          {
            v130 = *(*(v18 + 48) + 48);
          }

          else
          {
            v130 = v12;
          }

          v131 = *(v130 + 4);
          if (v131)
          {
            a2 = operations_research::fasthash64(v130[3], 4 * v131, a2);
            v132 = *(v130 + 10);
            if (v132)
            {
              a2 = operations_research::fasthash64(v130[6], 8 * v132, a2);
            }
          }

          v208 = v130[8];
          a2 = operations_research::fasthash64(&v208, 8uLL, a2);
          v133 = v13;
          if (*(v18 + 60) == 11)
          {
            v133 = *(v18 + 48);
          }

          v135 = v133[3];
          v134 = v133 + 3;
          v136 = (v135 + 7);
          if (v135)
          {
            v137 = v136;
          }

          else
          {
            v137 = v134;
          }

          v138 = *(v134 + 2);
          if (v138)
          {
            v139 = 8 * v138;
            do
            {
              v140 = *v137;
              v141 = *(*v137 + 4);
              if (v141)
              {
                a2 = operations_research::fasthash64(v140[3], 4 * v141, a2);
                v142 = *(v140 + 10);
                if (v142)
                {
                  a2 = operations_research::fasthash64(v140[6], 8 * v142, a2);
                }
              }

              v208 = v140[8];
              a2 = operations_research::fasthash64(&v208, 8uLL, a2);
              ++v137;
              v139 -= 8;
            }

            while (v139);
          }

          goto LABEL_16;
        case 0xC:
          v123 = *(v18 + 48);
          v124 = *(v123 + 16);
          if (!v124 || (a2 = operations_research::fasthash64(*(v123 + 24), 4 * v124, a2), v125 = *(v18 + 60), v125 == 12))
          {
            v126 = *(v18 + 48);
            v125 = 12;
            v127 = *(v126 + 10);
            if (!v127)
            {
              goto LABEL_155;
            }

LABEL_154:
            a2 = operations_research::fasthash64(v126[6], 8 * v127, a2);
            v125 = *(v18 + 60);
            goto LABEL_155;
          }

          v126 = v15;
          v127 = *(v15 + 10);
          if (v127)
          {
            goto LABEL_154;
          }

LABEL_155:
          v128 = v15;
          if (v125 == 12)
          {
            v128 = *(v18 + 48);
          }

          v129 = *(v128 + 16);
          if (v129)
          {
            v22 = v128[9];
            v17 = 8 * v129;
LABEL_15:
            a2 = operations_research::fasthash64(v22, v17, a2);
          }

LABEL_16:
          v10 += 8;
          if (v10 == v14)
          {
            goto LABEL_237;
          }

          break;
        case 0xD:
          v59 = *(v18 + 48);
          v61 = *(v59 + 16);
          v60 = (v59 + 16);
          v62 = (v61 + 7);
          if (v61)
          {
            v63 = v62;
          }

          else
          {
            v63 = v60;
          }

          v64 = *(v60 + 2);
          if (v64)
          {
            v65 = 8 * v64;
            do
            {
              v66 = *v63;
              v67 = *(*v63 + 16);
              if (v67)
              {
                a2 = operations_research::fasthash64(*(v66 + 24), 4 * v67, a2);
                v68 = *(v66 + 40);
                if (v68)
                {
                  a2 = operations_research::fasthash64(*(v66 + 48), 8 * v68, a2);
                }
              }

              v208 = *(v66 + 64);
              a2 = operations_research::fasthash64(&v208, 8uLL, a2);
              ++v63;
              v65 -= 8;
            }

            while (v65);
          }

          goto LABEL_16;
        case 0xE:
          LODWORD(v208) = *(*(v18 + 48) + 36);
          v81 = operations_research::fasthash64(&v208, 4uLL, a2);
          v82 = v16;
          if (*(v18 + 60) == 14)
          {
            v82 = *(v18 + 48);
          }

          LODWORD(v208) = *(v82 + 10);
          a2 = operations_research::fasthash64(&v208, 4uLL, v81);
          v20 = v16;
          if (*(v18 + 60) == 14)
          {
LABEL_20:
            v20 = *(v18 + 48);
          }

          v21 = *(v20 + 4);
          if (!v21)
          {
            goto LABEL_16;
          }

          v22 = v20[3];
          goto LABEL_14;
        case 0xF:
          v69 = *(v18 + 48);
          v70 = *(v69 + 40);
          if (!v70 || (a2 = operations_research::fasthash64(*(v69 + 48), 4 * v70, a2), v71 = *(v18 + 60), v71 == 15))
          {
            v72 = *(v18 + 48);
            v71 = 15;
            v73 = *(v72 + 4);
            if (!v73)
            {
              goto LABEL_80;
            }

LABEL_79:
            a2 = operations_research::fasthash64(v72[3], 4 * v73, a2);
            v71 = *(v18 + 60);
            goto LABEL_80;
          }

          v72 = &operations_research::sat::_CircuitConstraintProto_default_instance_;
          v73 = dword_2810BED30;
          if (dword_2810BED30)
          {
            goto LABEL_79;
          }

LABEL_80:
          v74 = &operations_research::sat::_CircuitConstraintProto_default_instance_;
          if (v71 == 15)
          {
            goto LABEL_81;
          }

          goto LABEL_82;
        case 0x10:
          v53 = *(v18 + 48);
          v54 = *(v53 + 16);
          if (!v54 || (a2 = operations_research::fasthash64(*(v53 + 24), 4 * v54, a2), v55 = *(v18 + 60), v55 == 16))
          {
            v56 = *(v18 + 48);
            v55 = 16;
            v57 = *(v56 + 10);
            if (!v57)
            {
              goto LABEL_64;
            }

LABEL_63:
            a2 = operations_research::fasthash64(v56[6], 8 * v57, a2);
            v55 = *(v18 + 60);
            goto LABEL_64;
          }

          v56 = &operations_research::sat::_TableConstraintProto_default_instance_;
          v57 = dword_2810BEF18;
          if (dword_2810BEF18)
          {
            goto LABEL_63;
          }

LABEL_64:
          v58 = &operations_research::sat::_TableConstraintProto_default_instance_;
          if (v55 == 16)
          {
            v58 = *(v18 + 48);
          }

          LOBYTE(v208) = *(v58 + 60);
          v22 = &v208;
          v17 = 1;
          goto LABEL_15;
        case 0x11:
          v208 = *(*(v18 + 48) + 136);
          a2 = operations_research::fasthash64(&v208, 8uLL, a2);
          v109 = *(v18 + 60);
          v110 = &operations_research::sat::_AutomatonConstraintProto_default_instance_;
          if (v109 == 17)
          {
            v110 = *(v18 + 48);
          }

          v111 = *(v110 + 4);
          if (v111)
          {
            a2 = operations_research::fasthash64(v110[3], 8 * v111, a2);
            v109 = *(v18 + 60);
          }

          v112 = &operations_research::sat::_AutomatonConstraintProto_default_instance_;
          if (v109 == 17)
          {
            v112 = *(v18 + 48);
          }

          v113 = *(v112 + 10);
          if (v113)
          {
            a2 = operations_research::fasthash64(v112[6], 8 * v113, a2);
            v109 = *(v18 + 60);
          }

          v114 = &operations_research::sat::_AutomatonConstraintProto_default_instance_;
          if (v109 == 17)
          {
            v114 = *(v18 + 48);
          }

          v115 = *(v114 + 16);
          if (v115)
          {
            a2 = operations_research::fasthash64(v114[9], 8 * v115, a2);
            v109 = *(v18 + 60);
          }

          v116 = &operations_research::sat::_AutomatonConstraintProto_default_instance_;
          if (v109 == 17)
          {
            v116 = *(v18 + 48);
          }

          v117 = *(v116 + 22);
          if (v117)
          {
            a2 = operations_research::fasthash64(v116[12], 8 * v117, a2);
            v109 = *(v18 + 60);
          }

          v118 = &operations_research::sat::_AutomatonConstraintProto_default_instance_;
          if (v109 == 17)
          {
            v118 = *(v18 + 48);
          }

          v119 = *(v118 + 28);
          if (!v119)
          {
            goto LABEL_16;
          }

          v22 = v118[15];
          v17 = 4 * v119;
          goto LABEL_15;
        case 0x12:
          v120 = *(v18 + 48);
          v121 = *(v120 + 16);
          if (v121)
          {
            a2 = operations_research::fasthash64(*(v120 + 24), 4 * v121, a2);
            v122 = &operations_research::sat::_InverseConstraintProto_default_instance_;
            if (*(v18 + 60) != 18)
            {
              goto LABEL_179;
            }
          }

          goto LABEL_178;
        case 0x13:
          if (*(*(v18 + 48) + 24))
          {
            v145 = *(*(v18 + 48) + 24);
          }

          else
          {
            v145 = v12;
          }

          v146 = *(v145 + 4);
          if (v146)
          {
            a2 = operations_research::fasthash64(v145[3], 4 * v146, a2);
            v147 = *(v145 + 10);
            if (v147)
            {
              a2 = operations_research::fasthash64(v145[6], 8 * v147, a2);
            }
          }

          v208 = v145[8];
          v148 = operations_research::fasthash64(&v208, 8uLL, a2);
          v149 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
          if (*(v18 + 60) == 19)
          {
            v149 = *(v18 + 48);
          }

          v150 = v149[5];
          if (v150)
          {
            v151 = v150;
          }

          else
          {
            v151 = v12;
          }

          v152 = *(v151 + 4);
          if (v152)
          {
            v148 = operations_research::fasthash64(v151[3], 4 * v152, v148);
            v153 = *(v151 + 10);
            if (v153)
            {
              v148 = operations_research::fasthash64(v151[6], 8 * v153, v148);
            }
          }

          v208 = v151[8];
          a2 = operations_research::fasthash64(&v208, 8uLL, v148);
          v154 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
          if (*(v18 + 60) == 19)
          {
            v154 = *(v18 + 48);
          }

          v155 = v154[4];
          if (v155)
          {
            v156 = v155;
          }

          else
          {
            v156 = v12;
          }

          v157 = *(v156 + 4);
          if (v157)
          {
            a2 = operations_research::fasthash64(v156[3], 4 * v157, a2);
            v158 = *(v156 + 10);
            if (v158)
            {
              a2 = operations_research::fasthash64(v156[6], 8 * v158, a2);
            }
          }

          v208 = v156[8];
          v22 = &v208;
          v17 = 8;
          goto LABEL_15;
        case 0x15:
          v143 = *(v18 + 48);
          v144 = *(v143 + 16);
          if (!v144 || (a2 = operations_research::fasthash64(*(v143 + 24), 4 * v144, a2), v122 = &operations_research::sat::_NoOverlap2DConstraintProto_default_instance_, *(v18 + 60) == 21))
          {
LABEL_178:
            v122 = *(v18 + 48);
          }

LABEL_179:
          v21 = *(v122 + 10);
          if (!v21)
          {
            goto LABEL_16;
          }

          v22 = v122[6];
LABEL_14:
          v17 = 4 * v21;
          goto LABEL_15;
        case 0x16:
          v23 = *(v18 + 48);
          v24 = *(v23 + 24);
          if (!v24 || (a2 = operations_research::fasthash64(*(v23 + 32), 4 * v24, a2), v25 = &operations_research::sat::_CumulativeConstraintProto_default_instance_, *(v18 + 60) == 22))
          {
            v25 = *(v18 + 48);
          }

          v26 = v25[9];
          if (v26)
          {
            v27 = v26;
          }

          else
          {
            v27 = v12;
          }

          v28 = *(v27 + 4);
          if (v28)
          {
            a2 = operations_research::fasthash64(v27[3], 4 * v28, a2);
            v29 = *(v27 + 10);
            if (v29)
            {
              a2 = operations_research::fasthash64(v27[6], 8 * v29, a2);
            }
          }

          v208 = v27[8];
          a2 = operations_research::fasthash64(&v208, 8uLL, a2);
          v30 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
          if (*(v18 + 60) == 22)
          {
            v30 = *(v18 + 48);
          }

          v32 = v30[6];
          v31 = v30 + 6;
          v33 = (v32 + 7);
          if (v32)
          {
            v34 = v33;
          }

          else
          {
            v34 = v31;
          }

          v35 = *(v31 + 2);
          if (v35)
          {
            v36 = 8 * v35;
            do
            {
              v37 = *v34;
              v38 = *(*v34 + 4);
              if (v38)
              {
                a2 = operations_research::fasthash64(v37[3], 4 * v38, a2);
                v39 = *(v37 + 10);
                if (v39)
                {
                  a2 = operations_research::fasthash64(v37[6], 8 * v39, a2);
                }
              }

              v208 = v37[8];
              a2 = operations_research::fasthash64(&v208, 8uLL, a2);
              ++v34;
              v36 -= 8;
            }

            while (v36);
          }

          goto LABEL_16;
        case 0x17:
          v76 = *(v18 + 48);
          v77 = *(v76 + 40);
          if (!v77 || (a2 = operations_research::fasthash64(*(v76 + 48), 4 * v77, a2), v78 = *(v18 + 60), v78 == 23))
          {
            v79 = *(v18 + 48);
            v78 = 23;
            v80 = *(v79 + 4);
            if (!v80)
            {
              goto LABEL_88;
            }

LABEL_87:
            a2 = operations_research::fasthash64(v79[3], 4 * v80, a2);
            v78 = *(v18 + 60);
            goto LABEL_88;
          }

          v79 = &operations_research::sat::_RoutesConstraintProto_default_instance_;
          v80 = dword_2810BED88;
          if (dword_2810BED88)
          {
            goto LABEL_87;
          }

LABEL_88:
          v74 = &operations_research::sat::_RoutesConstraintProto_default_instance_;
          if (v78 == 23)
          {
LABEL_81:
            v74 = *(v18 + 48);
          }

LABEL_82:
          v75 = *(v74 + 16);
          if (!v75)
          {
            goto LABEL_16;
          }

          v22 = v74[9];
          v17 = 4 * v75;
          goto LABEL_15;
        case 0x18:
          v208 = *(*(v18 + 48) + 88);
          v159 = operations_research::fasthash64(&v208, 8uLL, a2);
          v160 = &operations_research::sat::_ReservoirConstraintProto_default_instance_;
          if (*(v18 + 60) == 24)
          {
            v160 = *(v18 + 48);
          }

          v208 = v160[12];
          a2 = operations_research::fasthash64(&v208, 8uLL, v159);
          v161 = *(v18 + 60);
          v162 = &operations_research::sat::_ReservoirConstraintProto_default_instance_;
          if (v161 == 24)
          {
            v162 = *(v18 + 48);
          }

          v164 = v162[2];
          v163 = v162 + 2;
          v165 = (v164 + 7);
          if (v164)
          {
            v166 = v165;
          }

          else
          {
            v166 = v163;
          }

          v167 = *(v163 + 2);
          if (v167)
          {
            v207 = v14;
            v168 = v3;
            v169 = v12;
            v170 = v16;
            v171 = v13;
            v172 = v15;
            v173 = 8 * v167;
            do
            {
              v174 = *v166;
              v175 = *(*v166 + 4);
              if (v175)
              {
                a2 = operations_research::fasthash64(v174[3], 4 * v175, a2);
                v176 = *(v174 + 10);
                if (v176)
                {
                  a2 = operations_research::fasthash64(v174[6], 8 * v176, a2);
                }
              }

              v208 = v174[8];
              a2 = operations_research::fasthash64(&v208, 8uLL, a2);
              ++v166;
              v173 -= 8;
            }

            while (v173);
            v161 = *(v18 + 60);
            v15 = v172;
            v13 = v171;
            v16 = v170;
            v12 = v169;
            v3 = v168;
            v14 = v207;
          }

          v177 = &operations_research::sat::_ReservoirConstraintProto_default_instance_;
          if (v161 == 24)
          {
            v177 = *(v18 + 48);
          }

          v179 = v177[8];
          v178 = v177 + 8;
          v180 = (v179 + 7);
          if (v179)
          {
            v181 = v180;
          }

          else
          {
            v181 = v178;
          }

          v182 = *(v178 + 2);
          if (v182)
          {
            v183 = 8 * v182;
            do
            {
              v184 = *v181;
              v185 = *(*v181 + 4);
              if (v185)
              {
                a2 = operations_research::fasthash64(v184[3], 4 * v185, a2);
                v186 = *(v184 + 10);
                if (v186)
                {
                  a2 = operations_research::fasthash64(v184[6], 8 * v186, a2);
                }
              }

              v208 = v184[8];
              a2 = operations_research::fasthash64(&v208, 8uLL, a2);
              ++v181;
              v183 -= 8;
            }

            while (v183);
          }

          goto LABEL_16;
        case 0x1B:
          if (*(*(v18 + 48) + 48))
          {
            v40 = *(*(v18 + 48) + 48);
          }

          else
          {
            v40 = v12;
          }

          v41 = *(v40 + 4);
          if (v41)
          {
            a2 = operations_research::fasthash64(v40[3], 4 * v41, a2);
            v42 = *(v40 + 10);
            if (v42)
            {
              a2 = operations_research::fasthash64(v40[6], 8 * v42, a2);
            }
          }

          v208 = v40[8];
          a2 = operations_research::fasthash64(&v208, 8uLL, a2);
          v43 = v13;
          if (*(v18 + 60) == 27)
          {
            v43 = *(v18 + 48);
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
          if (v48)
          {
            v49 = 8 * v48;
            do
            {
              v50 = *v47;
              v51 = *(*v47 + 4);
              if (v51)
              {
                a2 = operations_research::fasthash64(v50[3], 4 * v51, a2);
                v52 = *(v50 + 10);
                if (v52)
                {
                  a2 = operations_research::fasthash64(v50[6], 8 * v52, a2);
                }
              }

              v208 = v50[8];
              a2 = operations_research::fasthash64(&v208, 8uLL, a2);
              ++v47;
              v49 -= 8;
            }

            while (v49);
          }

          goto LABEL_16;
        default:
          goto LABEL_16;
      }
    }
  }

LABEL_237:
  v187 = *(v3 + 4);
  if ((v187 & 1) == 0)
  {
    if ((v187 & 8) == 0)
    {
      goto LABEL_267;
    }

    v188 = *(v3 + 19);
    v189 = *(v188 + 4);
    if (v189)
    {
      a2 = operations_research::fasthash64(v188[3], 4 * v189, a2);
      v188 = *(v3 + 19);
    }

    if (v188)
    {
      v190 = v188;
    }

    else
    {
      v190 = &operations_research::sat::_FloatObjectiveProto_default_instance_;
    }

    v191 = *(v190 + 10);
    if (v191)
    {
      a2 = operations_research::fasthash64(v190[6], 8 * v191, a2);
      v188 = *(v3 + 19);
    }

    if (!v188)
    {
      v188 = &operations_research::sat::_FloatObjectiveProto_default_instance_;
    }

    v208 = v188[7];
    a2 = operations_research::fasthash64(&v208, 8uLL, a2);
    v192 = *(v3 + 19);
    if (!v192)
    {
      v192 = &operations_research::sat::_FloatObjectiveProto_default_instance_;
    }

    LOBYTE(v208) = *(v192 + 64);
    v193 = &v208;
    v194 = 1;
    goto LABEL_266;
  }

  v195 = *(v3 + 16);
  v196 = *(v195 + 4);
  if (v196)
  {
    a2 = operations_research::fasthash64(v195[3], 4 * v196, a2);
    v195 = *(v3 + 16);
  }

  if (v195)
  {
    v197 = v195;
  }

  else
  {
    v197 = &operations_research::sat::_CpObjectiveProto_default_instance_;
  }

  v198 = *(v197 + 10);
  if (v198)
  {
    a2 = operations_research::fasthash64(v197[6], 8 * v198, a2);
    v195 = *(v3 + 16);
  }

  if (!v195)
  {
    v195 = &operations_research::sat::_CpObjectiveProto_default_instance_;
  }

  v208 = v195[11];
  v199 = operations_research::fasthash64(&v208, 8uLL, a2);
  v200 = *(v3 + 16);
  if (!v200)
  {
    v200 = &operations_research::sat::_CpObjectiveProto_default_instance_;
  }

  v208 = v200[12];
  a2 = operations_research::fasthash64(&v208, 8uLL, v199);
  v201 = *(v3 + 16);
  if (!v201)
  {
    v201 = &operations_research::sat::_CpObjectiveProto_default_instance_;
  }

  v202 = *(v201 + 16);
  if (v202)
  {
    v193 = v201[9];
    v194 = 8 * v202;
LABEL_266:
    a2 = operations_research::fasthash64(v193, v194, a2);
  }

LABEL_267:
  if ((*(v3 + 16) & 2) != 0)
  {
    v203 = *(v3 + 17);
    v204 = *(v203 + 4);
    if (v204)
    {
      a2 = operations_research::fasthash64(v203[3], 4 * v204, a2);
      v203 = *(v3 + 17);
    }

    if (!v203)
    {
      v203 = &operations_research::sat::_PartialVariableAssignment_default_instance_;
    }

    v205 = *(v203 + 10);
    if (v205)
    {
      return operations_research::fasthash64(v203[6], 8 * v205, a2);
    }
  }

  return a2;
}

void operations_research::sat::SetupTextFormatPrinter(operations_research::sat *this, google::protobuf::TextFormat::Printer *a2)
{
  *(this + 6) = 1;
  v4 = xmmword_23CE306D0;
  Metadata = operations_research::sat::CpModelProto::GetMetadata(&operations_research::sat::_CpModelProto_default_instance_);
  operations_research::sat::IntegerVariableProto::GetMetadata(&operations_research::sat::_IntegerVariableProto_default_instance_);
  operator new();
}

void sub_23CB32870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, char a10, uint64_t a11)
{
  MEMORY[0x23EED9460](v11, 0x10F3C409AB1E090, a3, a4, a5, a6, a7, a8);
  if (a9 >= 2)
  {
    operator delete((a11 - (a10 & 1) - 8));
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::anonymous namespace::RegisterFieldPrinters(uint64_t a1, unint64_t *a2, google::protobuf::TextFormat::Printer *a3)
{
  v16 = a1;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::Descriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<google::protobuf::Descriptor const*>>::find_or_prepare_insert<google::protobuf::Descriptor const*>(a2, &v16, v14);
  if (v15)
  {
    v5 = v16;
    *v14[1] = v16;
    if (*(v5 + 4) >= 1)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v9 = *(v5 + 56);
        v10 = (v9 + v6);
        v11 = *(v9 + v6 + 24);
        if (v11 && (v14[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v17 = v9 + v6, atomic_load_explicit(v11, memory_order_acquire) != 221))
        {
          absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v11, 1, v14, &v17);
          if (*(v10 + 2) == 11)
          {
LABEL_9:
            v12 = google::protobuf::FieldDescriptor::message_type(v10);
            if (v12 == operations_research::sat::IntegerVariableProto::GetMetadata(&operations_research::sat::_IntegerVariableProto_default_instance_) || (v13 = google::protobuf::FieldDescriptor::message_type(v10), v13 == operations_research::sat::LinearExpressionProto::GetMetadata(&operations_research::sat::_LinearExpressionProto_default_instance_)))
            {
              operator new();
            }

            v8 = google::protobuf::FieldDescriptor::message_type(v10);
          }
        }

        else if (*(v10 + 2) == 11)
        {
          goto LABEL_9;
        }

        ++v7;
        v5 = v16;
        v6 += 88;
      }

      while (v7 < *(v16 + 4));
    }
  }
}

uint64_t operations_research::sat::ConvertCpModelProtoToCnf(uint64_t a1, uint64_t a2, char *a3)
{
  v70 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
    if (*(a1 + 16))
    {
      return 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
    if (*(a1 + 16))
    {
      return 0;
    }
  }

  v4 = *(a1 + 32);
  if (v4 >= 1)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v8 = v5 + 7;
      v9 = *(a1 + 32);
      while (*(*v8 + 16) == 2)
      {
        v10 = *(*v8 + 24);
        if (*v10 || v10[1] != 1)
        {
          break;
        }

        v8 += 8;
        if (!--v9)
        {
          goto LABEL_16;
        }
      }

      return 0;
    }

    if (*(v5 + 16) != 2)
    {
      return 0;
    }

    v6 = *(v5 + 24);
    if (*v6 || v6[1] != 1)
    {
      return 0;
    }
  }

LABEL_16:
  v12 = (a1 + 48);
  v11 = *(a1 + 48);
  if (v11)
  {
    v13 = v11 + 7;
  }

  else
  {
    v13 = a1 + 48;
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    LODWORD(v15) = 0;
    v16 = 8 * v14;
    while (1)
    {
      while (1)
      {
        v17 = *(*v13 + 60);
        if (v17 != 3)
        {
          break;
        }

        v15 = (v15 + 1);
        v13 += 8;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_27;
        }
      }

      if (v17 != 4)
      {
        return 0;
      }

      v15 = (*(*(*v13 + 48) + 16) + v15);
      v13 += 8;
      v16 -= 8;
      if (!v16)
      {
        goto LABEL_27;
      }
    }
  }

  v15 = 0;
LABEL_27:
  memset(&__p, 0, sizeof(__p));
  *&v59 = v60;
  *(&v59 + 1) = absl::lts_20240722::numbers_internal::FastIntToBuffer(v4, v60, a3) - v60;
  v56 = v58;
  v57 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v15, v58, v19) - v58;
  v61 = "p cnf ";
  v62 = 6;
  v63 = v59;
  v64 = " ";
  v65 = 1;
  v66 = v58;
  v67 = v57;
  v68 = "\n";
  v69 = 1;
  absl::lts_20240722::strings_internal::AppendPieces(a2, &v61, 5);
  v21 = *(a1 + 48);
  if (v21)
  {
    v12 = (v21 + 7);
  }

  v22 = *(a1 + 56);
  if (v22)
  {
    v23 = &v12[v22];
    v54 = v23;
    while (1)
    {
      v24 = *v12;
      v25 = *(*v12 + 60);
      if (v25 == 4)
      {
        break;
      }

      if (v25 == 3)
      {
        if (*(v24 + 16))
        {
          absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v61, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_utils.cc", 909);
          goto LABEL_78;
        }

        v26 = *(v24 + 48);
        v27 = *(v26 + 16);
        if (v27)
        {
          v28 = *(v26 + 24);
          v29 = 4 * v27;
          do
          {
            v30 = *v28;
            if (~*v28 <= *v28)
            {
              v31 = *v28;
            }

            else
            {
              v31 = ~v30;
            }

            v32 = __PAIR64__(v31, v30) >> 31;
            if (v32)
            {
              v33 = ~(v32 >> 1);
            }

            else
            {
              v33 = ((v32 >> 1) + 1);
            }

            v34 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v33, &v63, v20);
            v61 = &v63;
            v62 = v34 - &v63;
            *&v59 = " ";
            *(&v59 + 1) = 1;
            absl::lts_20240722::StrAppend(a2, &v61, &v59);
            ++v28;
            v29 -= 4;
          }

          while (v29);
        }

        v61 = "0\n";
        v62 = 2;
        absl::lts_20240722::StrAppend(a2, &v61);
      }

LABEL_32:
      if (++v12 == v23)
      {
        goto LABEL_73;
      }
    }

    if (!*(v24 + 16))
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v61, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_utils.cc", 918);
LABEL_78:
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v61);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      v35 = *(v24 + 16);
      if (!v35)
      {
LABEL_59:
        v43 = &operations_research::sat::_BoolArgumentProto_default_instance_;
        if (*(v24 + 60) == 4)
        {
          v43 = *(v24 + 48);
        }

        v44 = *(v43 + 4);
        v23 = v54;
        if (v44)
        {
          v45 = v43[3];
          v46 = 4 * v44;
          do
          {
            v47 = *v45;
            if (~*v45 <= *v45)
            {
              v48 = *v45;
            }

            else
            {
              v48 = ~v47;
            }

            v49 = __PAIR64__(v48, v47) >> 31;
            if (v49)
            {
              v50 = ~(v49 >> 1);
            }

            else
            {
              v50 = ((v49 >> 1) + 1);
            }

            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = __p.__r_.__value_.__l.__size_;
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            v61 = p_p;
            v62 = size;
            v53 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v50, v60, v20);
            *&v59 = v60;
            *(&v59 + 1) = v53 - v60;
            v56 = " 0\n";
            v57 = 3;
            absl::lts_20240722::StrAppend(a2, &v61, &v59, &v56);
            ++v45;
            v46 -= 4;
          }

          while (v46);
        }

        goto LABEL_32;
      }
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      v35 = *(v24 + 16);
      if (!v35)
      {
        goto LABEL_59;
      }
    }

    v36 = *(v24 + 24);
    v37 = 4 * v35;
    do
    {
      v38 = *v36;
      if (~*v36 <= *v36)
      {
        v39 = *v36;
      }

      else
      {
        v39 = ~v38;
      }

      v40 = __PAIR64__(v39, v38) >> 31;
      if (v40)
      {
        v41 = ((v40 >> 1) + 1);
      }

      else
      {
        v41 = ~(v40 >> 1);
      }

      v42 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v41, &v63, v20);
      v61 = &v63;
      v62 = v42 - &v63;
      *&v59 = " ";
      *(&v59 + 1) = 1;
      absl::lts_20240722::StrAppend(&__p, &v61, &v59);
      ++v36;
      v37 -= 4;
    }

    while (v37);
    goto LABEL_59;
  }

LABEL_73:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_23CB32F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v15 = a1;
    operator delete(__p);
    a1 = v15;
  }

  _Unwind_Resume(a1);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::Descriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<google::protobuf::Descriptor const*>>::resize_impl(unint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1 < 2 && v3 > 1;
  v5 = v4;
  v7 = a1[2];
  if (v4)
  {
    v6 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v7) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v7))) + v7;
    v8 = (((v6 * 0x9DDFEA08EB382D69) >> 64) ^ (105 * v6)) & 0x7F;
  }

  else
  {
    v8 = 0x80;
  }

  v11 = v3 & 1;
  v12 = v2 < 2;
  v13 = v5;
  v9 = a1[3];
  v10[0] = v7;
  v10[1] = v9;
  v10[2] = v2;
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,8ul,true,true,8ul>(v10, a1, v8);
}

void operations_research::sat::anonymous namespace::InlineFieldPrinter::~InlineFieldPrinter(operations_research::sat::_anonymous_namespace_::InlineFieldPrinter *this)
{
  ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(this);

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::anonymous namespace::InlineMessagePrinter::~InlineMessagePrinter(void **this)
{
  *this = &unk_284F40050;
  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,std::unique_ptr<google::protobuf::TextFormat::MessagePrinter const>>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,std::unique_ptr<google::protobuf::TextFormat::MessagePrinter const>>>>::destructor_impl(this + 10);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::FieldDescriptor const*,std::unique_ptr<google::protobuf::TextFormat::FastFieldValuePrinter const>>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FieldDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FieldDescriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::FieldDescriptor const* const,std::unique_ptr<google::protobuf::TextFormat::FastFieldValuePrinter const>>>>::destructor_impl(this + 6);
  v2 = this[5];
  this[5] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_284F40050;
  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,std::unique_ptr<google::protobuf::TextFormat::MessagePrinter const>>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,std::unique_ptr<google::protobuf::TextFormat::MessagePrinter const>>>>::destructor_impl(this + 10);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::FieldDescriptor const*,std::unique_ptr<google::protobuf::TextFormat::FastFieldValuePrinter const>>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FieldDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FieldDescriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::FieldDescriptor const* const,std::unique_ptr<google::protobuf::TextFormat::FastFieldValuePrinter const>>>>::destructor_impl(this + 6);
  v2 = this[5];
  this[5] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x23EED9460);
}

uint64_t operations_research::sat::anonymous namespace::InlineMessagePrinter::Print(uint64_t a1, google::protobuf::MessageLite *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 + 120;
  if ((*(a1 + 143) & 0x80000000) == 0)
  {
    *(a1 + 120) = 0;
    *(a1 + 143) = 0;
    google::protobuf::TextFormat::Printer::PrintToString((a1 + 8), a2, v6);
    v7 = *(a1 + 143);
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  **(a1 + 120) = 0;
  *(a1 + 128) = 0;
  google::protobuf::TextFormat::Printer::PrintToString((a1 + 8), a2, v6);
  v7 = *(a1 + 143);
  if (v7 < 0)
  {
LABEL_3:
    v6 = *(a1 + 120);
    v7 = *(a1 + 128);
  }

LABEL_4:
  v8 = *(*a4 + 40);

  return v8(a4, v6, v7);
}

char *std::vector<int>::__insert_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<int const>,google::protobuf::internal::RepeatedIterator<int const>>(uint64_t *a1, char *__src, uint64_t a3, int *a4, uint64_t a5)
{
  v6 = a5 - 1;
  if (a5 < 1)
  {
    return __src;
  }

  v8 = a1[1];
  v7 = a1[2];
  if (a5 <= (v7 - v8) >> 2)
  {
    v13 = v8 - __src;
    v14 = (v8 - __src) >> 2;
    if (v14 >= a5)
    {
      v17 = 4 * a5;
      v18 = &__src[4 * a5];
      v19 = (v8 - 4 * a5);
      if (v19 >= v8)
      {
        v23 = a1[1];
      }

      else
      {
        v20 = v19 + 1;
        if (v8 > (v19 + 1))
        {
          v20 = a1[1];
        }

        v21 = &v20[v17 / 4] + ~v8;
        v22 = v21 < 0x1C || (a5 & 0x3FFFFFFFFFFFFFF8) == 0;
        v23 = a1[1];
        if (v22)
        {
          goto LABEL_90;
        }

        v24 = (v21 >> 2) + 1;
        v25 = 4 * (v24 & 0x7FFFFFFFFFFFFFF8);
        v19 = (v19 + v25);
        v23 = (v8 + v25);
        v26 = (v8 + 16);
        v27 = (v8 + 16 - v17);
        v28 = v24 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v29 = *v27;
          *(v26 - 1) = *(v27 - 1);
          *v26 = v29;
          v26 += 2;
          v27 += 2;
          v28 -= 8;
        }

        while (v28);
        if (v24 != (v24 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_90:
          do
          {
            v30 = *v19++;
            *v23++ = v30;
          }

          while (v19 < v8);
        }
      }

      a1[1] = v23;
      if (v8 != v18)
      {
        v51 = v8 - v18;
        v52 = (v8 - v51);
        v53 = a3;
        memmove(v52, __src, v51);
        a3 = v53;
      }

      if (!v17)
      {
        return __src;
      }

      if ((v6 & 0x3FFFFFFFFFFFFFFFuLL) < 7)
      {
        v54 = __src;
        v55 = a3;
      }

      else
      {
        v54 = __src;
        v55 = a3;
        if (&__src[-a3] >= 0x20)
        {
          v56 = (v6 & 0x3FFFFFFFFFFFFFFFLL) + 1;
          v57 = 4 * (v56 & 0x7FFFFFFFFFFFFFF8);
          v54 = &__src[v57];
          v55 = (a3 + v57);
          v58 = (a3 + 16);
          v59 = __src + 16;
          v60 = v56 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v61 = *v58;
            *(v59 - 1) = *(v58 - 1);
            *v59 = v61;
            v58 += 2;
            v59 += 32;
            v60 -= 8;
          }

          while (v60);
          if (v56 == (v56 & 0x7FFFFFFFFFFFFFF8))
          {
            return __src;
          }
        }
      }

      do
      {
        v93 = *v55++;
        *v54 = v93;
        v54 += 4;
      }

      while (v55 != (a3 + v17));
      return __src;
    }

    v15 = v13 + a3;
    if ((v13 + a3) == a4)
    {
      v16 = a1[1];
      goto LABEL_56;
    }

    v43 = (v13 + a3);
    v44 = a4 - v15 - 4;
    if (v44 < 0x1C)
    {
      v16 = a1[1];
    }

    else
    {
      v16 = a1[1];
      if (v8 - v15 >= 0x20)
      {
        v45 = (v44 >> 2) + 1;
        v46 = 4 * (v45 & 0x7FFFFFFFFFFFFFF8);
        v43 = (v15 + v46);
        v16 = v8 + v46;
        v47 = (v8 + 16);
        v48 = (v15 + 16);
        v49 = v45 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v50 = *v48;
          *(v47 - 1) = *(v48 - 1);
          *v47 = v50;
          v47 += 2;
          v48 += 2;
          v49 -= 8;
        }

        while (v49);
        if (v45 == (v45 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_56:
          a1[1] = v16;
          if (v14 < 1)
          {
            return __src;
          }

          v69 = a5;
          v70 = &__src[4 * a5];
          v71 = (v16 - 4 * a5);
          v72 = a3;
          if (v71 >= v8)
          {
            v76 = v16;
          }

          else
          {
            v73 = v71 + 1;
            if (v8 > (v71 + 1))
            {
              v73 = v8;
            }

            v74 = &v73[v69] + ~v16;
            v75 = v74 < 0x1C || (a5 & 0x3FFFFFFFFFFFFFF8) == 0;
            v76 = v16;
            if (v75)
            {
              goto LABEL_91;
            }

            v77 = (v74 >> 2) + 1;
            v78 = 4 * (v77 & 0x7FFFFFFFFFFFFFF8);
            v71 = (v71 + v78);
            v76 = (v16 + v78);
            v79 = (v16 + 16);
            v80 = (v16 + 16 - v69 * 4);
            v81 = v77 & 0x7FFFFFFFFFFFFFF8;
            do
            {
              v82 = *v80;
              *(v79 - 1) = *(v80 - 1);
              *v79 = v82;
              v79 += 2;
              v80 += 2;
              v81 -= 8;
            }

            while (v81);
            if (v77 != (v77 & 0x7FFFFFFFFFFFFFF8))
            {
LABEL_91:
              do
              {
                v83 = *v71++;
                *v76++ = v83;
              }

              while (v71 < v8);
            }
          }

          a1[1] = v76;
          if (v16 != v70)
          {
            memmove(&__src[4 * a5], __src, v16 - v70);
          }

          if (v8 == __src)
          {
            return __src;
          }

          v84 = v15 - v72 - 4;
          if (v84 < 0x1C)
          {
            v85 = __src;
          }

          else
          {
            v85 = __src;
            if (&__src[-v72] >= 0x20)
            {
              v86 = (v84 >> 2) + 1;
              v87 = 4 * (v86 & 0x7FFFFFFFFFFFFFF8);
              v85 = &__src[v87];
              v88 = v72 + v87;
              v89 = (v72 + 16);
              v90 = __src + 16;
              v91 = v86 & 0x7FFFFFFFFFFFFFF8;
              do
              {
                v92 = *v89;
                *(v90 - 1) = *(v89 - 1);
                *v90 = v92;
                v89 += 2;
                v90 += 32;
                v91 -= 8;
              }

              while (v91);
              v72 = v88;
              if (v86 == (v86 & 0x7FFFFFFFFFFFFFF8))
              {
                return __src;
              }
            }
          }

          do
          {
            v94 = *v72;
            v72 += 4;
            *v85 = v94;
            v85 += 4;
          }

          while (v72 != v15);
          return __src;
        }
      }
    }

    do
    {
      v68 = *v43++;
      *v16 = v68;
      v16 += 4;
    }

    while (v43 != a4);
    goto LABEL_56;
  }

  v9 = *a1;
  v10 = a5 + ((v8 - *a1) >> 2);
  if (v10 >> 62)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v11 = v7 - v9;
  if (v11 >> 1 > v10)
  {
    v10 = v11 >> 1;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v12 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v31 = (__src - v9);
  v32 = 4 * ((__src - v9) >> 2);
  v33 = v32;
  if ((a5 & 0x3FFFFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_32;
  }

  v33 = (v32 + 4 * a5);
  if ((v6 & 0x3FFFFFFFFFFFFFFFuLL) < 7 || &v31[-a3] < 0x20)
  {
    v34 = v32;
    v35 = a3;
    do
    {
LABEL_31:
      v36 = *v35++;
      *v34 = v36;
      v34 += 4;
    }

    while (v34 != v33);
    goto LABEL_32;
  }

  v62 = (v6 & 0x3FFFFFFFFFFFFFFFLL) + 1;
  v63 = 4 * (v62 & 0x7FFFFFFFFFFFFFF8);
  v34 = (v32 + v63);
  v35 = (a3 + v63);
  v64 = (a3 + 16);
  v65 = (v32 + 16);
  v66 = v62 & 0x7FFFFFFFFFFFFFF8;
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
  if (v62 != (v62 & 0x7FFFFFFFFFFFFFF8))
  {
    goto LABEL_31;
  }

LABEL_32:
  v37 = a1[1] - __src;
  memcpy(v33, __src, v37);
  v39 = &v33[v37];
  a1[1] = __src;
  v40 = *a1;
  v41 = &__src[-*a1];
  v42 = v32 - v41;
  memcpy((v32 - v41), *a1, v41);
  *a1 = v42;
  a1[1] = v39;
  a1[2] = 0;
  if (v40)
  {
    operator delete(v40);
  }

  return v32;
}

void operations_research::sat::Cumulative(void *a1@<X0>, void *a2@<X1>, uint64_t a5@<X8>)
{
  v6 = a1[1];
  if (v6 != *a1)
  {
    if (((v6 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = a2[1];
  if (v7 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a5 + 24) = 0;
  operator new();
}

void sub_23CB33D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *v11;
  if (*v11)
  {
    v9[5] = v13;
    operator delete(v13);
  }

  v14 = *v10;
  if (*v10)
  {
    v9[2] = v14;
    operator delete(v14);
  }

  operator delete(v9);
  operations_research::sat::LinearExpr::~LinearExpr(&a9);
  _Unwind_Resume(a1);
}

void sub_23CB33D64(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<operations_research::sat::Cumulative(std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const&,std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::AffineExpression,operations_research::sat::SchedulingConstraintHelper *)::$_0,std::allocator<operations_research::sat::Cumulative(std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const&,std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::AffineExpression,operations_research::sat::SchedulingConstraintHelper *)::$_0>,void ()(operations_research::sat::Model *)>::~__func(void *a1)
{
  *a1 = &unk_284F400A0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__function::__func<operations_research::sat::Cumulative(std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const&,std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::AffineExpression,operations_research::sat::SchedulingConstraintHelper *)::$_0,std::allocator<operations_research::sat::Cumulative(std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const&,std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::AffineExpression,operations_research::sat::SchedulingConstraintHelper *)::$_0>,void ()(operations_research::sat::Model *)>::~__func(void *a1)
{
  *a1 = &unk_284F400A0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x23EED9460);
}

void std::__function::__func<operations_research::sat::Cumulative(std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const&,std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::AffineExpression,operations_research::sat::SchedulingConstraintHelper *)::$_0,std::allocator<operations_research::sat::Cumulative(std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const&,std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::AffineExpression,operations_research::sat::SchedulingConstraintHelper *)::$_0>,void ()(operations_research::sat::Model *)>::destroy(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;

    operator delete(v3);
  }
}

void std::__function::__func<operations_research::sat::Cumulative(std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const&,std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::AffineExpression,operations_research::sat::SchedulingConstraintHelper *)::$_0,std::allocator<operations_research::sat::Cumulative(std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const&,std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::AffineExpression,operations_research::sat::SchedulingConstraintHelper *)::$_0>,void ()(operations_research::sat::Model *)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    __p[5] = v2;
    operator delete(v2);
  }

  v3 = __p[1];
  if (v3)
  {
    __p[2] = v3;
    operator delete(v3);
  }

  operator delete(__p);
}

void std::__function::__func<operations_research::sat::Cumulative(std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const&,std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::AffineExpression,operations_research::sat::SchedulingConstraintHelper *)::$_0,std::allocator<operations_research::sat::Cumulative(std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const&,std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::AffineExpression,operations_research::sat::SchedulingConstraintHelper *)::$_0>,void ()(operations_research::sat::Model *)>::operator()(uint64_t a1, void **a2)
{
  v2 = (a1 + 8);
  if (*(a1 + 8) == *(a1 + 16))
  {
    return;
  }

  v3 = a1;
  v4 = *a2;
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntervalsRepository>(*a2);
  v144 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(v4);
  v150 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(v4);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::GenericLiteralWatcher>(v4);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v149 = v4;
  v152 = v3;
  if (v7 != v6)
  {
    v8 = 0;
    v9 = 0;
    __src = (v4 + 5);
    v10 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v146 = v10 >> 7;
    v11 = vdup_n_s8(v10 & 0x7F);
    while (1)
    {
      v12 = (v5[14] + 24 * (*v2)[v8]);
      v13 = *(v12 + 2);
      if (*v12 != -1)
      {
        v13 -= *(*(v5[4] + 40) + ((8 * *v12) ^ 8)) * *(v12 + 1);
      }

      if (!v13)
      {
        goto LABEL_5;
      }

      v14 = v4[3];
      if (v14 > 1)
      {
        break;
      }

      if (v4[4] < 2uLL)
      {
        goto LABEL_21;
      }

      if (*__src == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        v28 = v4 + 5;
      }

      else
      {
        v28 = v6;
      }

      v38 = &absl::lts_20240722::container_internal::kSooControl;
      if (*__src != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        v38 = 0;
      }

      if (!v38)
      {
        goto LABEL_21;
      }

LABEL_12:
      v15 = v28[1];
LABEL_22:
      *&v166 = v15;
      *(&v166 + 1) = 0x8000000000000002;
      v167 = 0u;
      v168 = 0u;
      v169 = 0;
      v29 = &v6[3 * v8];
      v30 = *v29;
      v163 = *(v29 + 2);
      *v162 = v30;
      operations_research::sat::LinearConstraintBuilder::AddTerm(&v166, v162, 1);
      *v162 = *(v3 + 56);
      v163 = *(v3 + 72);
      operations_research::sat::LinearConstraintBuilder::AddTerm(&v166, v162, -1);
      operations_research::sat::LinearConstraintBuilder::Build(&v166, v162);
      v31 = (*v2)[v8];
      if (*(v5[5] + 4 * v31) != -1)
      {
        operator new();
      }

      v35 = v5[14] + 24 * v31;
      v36 = *v35;
      v37 = *(v35 + 16);
      if (*v35 == -1)
      {
        if (!v37)
        {
          v36 = -1;
          v34 = 1;
          goto LABEL_39;
        }
      }

      else
      {
        v32 = *(v35 + 8);
        if (!(*(*(v5[4] + 40) + 8 * v36) * v32 + v37))
        {
          v33 = 1 - v37;
          if (v33 / v32 * v32 >= v33)
          {
            v34 = v33 / v32;
          }

          else
          {
            v34 = v33 / v32 + 1;
          }

LABEL_39:
          operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(v144, v36, v34);
          operator new();
        }
      }

      operations_research::sat::LoadConditionalLinearConstraint(0, 0, v162, v4);
      v3 = v152;
      v39 = v165;
      v165 = 0;
      if (v39)
      {
        MEMORY[0x23EED9440](v39, 0x1000C8000313F17);
      }

      v40 = v164;
      v164 = 0;
      if (v40)
      {
        MEMORY[0x23EED9440](v40, 0x1000C8052888210);
      }

      if (v168)
      {
        *(&v168 + 1) = v168;
        operator delete(v168);
      }

      v6 = *(v152 + 32);
      v7 = *(v152 + 40);
LABEL_5:
      v8 = ++v9;
      if (0xAAAAAAAAAAAAAAABLL * (v7 - v6) <= v9)
      {
        goto LABEL_46;
      }
    }

    v16 = 0;
    _X10 = *__src;
    __asm { PRFM            #4, [X10] }

    v23 = (v146 ^ (*__src >> 12)) & v14;
    v24 = *(*__src + v23);
    v25 = vceq_s8(v24, v11);
    if (!v25)
    {
      goto LABEL_17;
    }

LABEL_14:
    v26 = v4[6];
    while (1)
    {
      v27 = (v23 + (__clz(__rbit64(v25)) >> 3)) & v14;
      if (*(v26 + 16 * v27) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        break;
      }

      v25 &= ((v25 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v25)
      {
LABEL_17:
        while (!*&vceq_s8(v24, 0x8080808080808080))
        {
          v16 += 8;
          v23 = (v16 + v23) & v14;
          v24 = *&_X10[v23];
          v25 = vceq_s8(v24, v11);
          if (v25)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_21;
      }
    }

    v28 = (v26 + 16 * v27);
    if (&_X10[v27])
    {
      goto LABEL_12;
    }

LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

LABEL_46:
  if (*(v3 + 16) - *(v3 + 8) == 4)
  {
    return;
  }

  v41 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(v4);
  v42 = v41;
  if (*(v41 + 772) == 1)
  {
    v166 = 0uLL;
    *&v167 = 0;
    v43 = *(v3 + 56);
    v44 = *(v3 + 72);
    if (v43 != -1)
    {
      v44 -= *(*(v150 + 5) + ((8 * v43) ^ 8)) * *(v3 + 64);
    }

    v47 = v3 + 8;
    v46 = *(v3 + 8);
    v45 = *(v47 + 8);
    if (v45 == v46)
    {
      v68 = 0;
      v3 = v152;
      v81 = 0;
      goto LABEL_114;
    }

    v145 = v41;
    v147 = v44;
    v48 = 0;
    v49 = 0;
    v50 = 0x7FFFFFFFFFFFFFFELL;
    v51 = 1;
    do
    {
      v54 = *(v46 + 4 * v49);
      v55 = (v5[14] + 24 * v54);
      v56 = *(v55 + 2);
      if (*v55 != -1)
      {
        v56 += *(*(v5[4] + 40) + 8 * *v55) * *(v55 + 1);
      }

      if (v56)
      {
        v57 = (*(v152 + 32) + 24 * v49);
        v58 = *(v57 + 2);
        if (*v57 != -1)
        {
          v58 += *(*(v150 + 5) + 8 * *v57) * *(v57 + 1);
        }

        if (v44 < 2 * v58)
        {
          if (v48 < v167)
          {
            *v48++ = v54;
            v52 = v152;
          }

          else
          {
            v59 = v166;
            v60 = v48 - v166;
            v61 = (v48 - v166) >> 2;
            v62 = v61 + 1;
            if ((v61 + 1) >> 62)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v63 = v167 - v166;
            if ((v167 - v166) >> 1 > v62)
            {
              v62 = v63 >> 1;
            }

            if (v63 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v64 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v64 = v62;
            }

            if (v64)
            {
              if (!(v64 >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v65 = v61;
            v66 = (4 * v61);
            v67 = &v66[-v65];
            *v66 = v54;
            v48 = v66 + 1;
            memcpy(v67, v59, v60);
            *&v166 = v67;
            *(&v166 + 1) = v48;
            *&v167 = 0;
            if (v59)
            {
              operator delete(v59);
            }

            v44 = v147;
            v4 = v149;
            v52 = v152;
          }

          *(&v166 + 1) = v48;
          if (v58 < v50)
          {
            v50 = v58;
          }

          v46 = *(v52 + 8);
          v45 = *(v52 + 16);
        }
      }

      v49 = v51;
      v53 = (v45 - v46) >> 2;
      ++v51;
    }

    while (v53 > v49);
    v68 = v166;
    if (v45 == v46 || v166 == v48)
    {
      goto LABEL_97;
    }

    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 1;
    do
    {
      v76 = *(v46 + 4 * v69);
      v77 = (v5[14] + 24 * v76);
      v78 = *(v77 + 2);
      if (*v77 != -1)
      {
        v78 += *(*(v5[4] + 40) + 8 * *v77) * *(v77 + 1);
      }

      if (v78)
      {
        v79 = (*(v152 + 32) + 24 * v69);
        v80 = *(v79 + 2);
        if (*v79 != -1)
        {
          v80 += *(*(v150 + 5) + 8 * *v79) * *(v79 + 1);
        }

        v73 = v44 >= 2 * v80;
        v74 = v80 + v50 <= v44 || v78 <= v71;
        v75 = !v74;
        if ((v75 & v73) != 0)
        {
          v71 = v78;
          v70 = v76;
        }
      }

      v69 = v72++;
    }

    while (v53 > v69);
    if (v71 <= 0)
    {
LABEL_97:
      v3 = v152;
      v42 = v145;
      v81 = v48 - v166;
      if ((v48 - v166) >= 5)
      {
LABEL_113:
        operations_research::sat::AddDisjunctive(&v166, v4);
        v68 = v166;
        v81 = (*(&v166 + 1) - v166);
      }
    }

    else
    {
      v3 = v152;
      if (v48 >= v167)
      {
        v83 = v48 - v166;
        v84 = (v48 - v166) >> 2;
        v85 = v84 + 1;
        if ((v84 + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v86 = v167 - v166;
        if ((v167 - v166) >> 1 > v85)
        {
          v85 = v86 >> 1;
        }

        if (v86 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v87 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v87 = v85;
        }

        if (v87)
        {
          if (!(v87 >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v88 = v166;
        *(4 * v84) = v70;
        v82 = 4 * v84 + 4;
        memcpy(0, v88, v83);
        *&v166 = 0;
        *(&v166 + 1) = v82;
        *&v167 = 0;
        if (v88)
        {
          operator delete(v88);
          v68 = v166;
        }

        else
        {
          v68 = 0;
        }

        v3 = v152;
      }

      else
      {
        *v48 = v70;
        v82 = (v48 + 1);
      }

      v42 = v145;
      *(&v166 + 1) = v82;
      v81 = (v82 - v68);
      if ((v82 - v68) >= 5)
      {
        goto LABEL_113;
      }
    }

LABEL_114:
    v89 = (*(v3 + 16) - *(v3 + 8));
    if (v68)
    {
      *(&v166 + 1) = v68;
      operator delete(v68);
    }

    if (v81 == v89)
    {
      return;
    }
  }

  Helper = *(v3 + 80);
  if (!Helper)
  {
    Helper = operations_research::sat::IntervalsRepository::GetOrCreateHelper(v5, v2, 0);
    *(v3 + 80) = Helper;
  }

  DemandHelper = operations_research::sat::IntervalsRepository::GetOrCreateDemandHelper(v5, Helper, *(v3 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 40) - *(v3 + 32)) >> 3));
  v166 = *(v3 + 56);
  v92 = *(v3 + 80);
  *&v167 = *(v3 + 72);
  *(&v167 + 1) = v92;
  *&v168 = DemandHelper;
  std::vector<operations_research::sat::IntervalsRepository::CumulativeHelper>::push_back[abi:ne200100]((v5 + 36), &v166);
  if (*(v42 + 309) != 1)
  {
    goto LABEL_208;
  }

  if (operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(v3 + 80), 1))
  {
    v166 = 0uLL;
    *&v167 = 0;
    v93 = *(v3 + 80);
    if ((-1431655765 * ((v93[11] - v93[10]) >> 3)) >= 1)
    {
      v94 = 0;
      v95 = 0;
      v96 = 0;
      do
      {
        v97 = v93[13];
        v98 = *(v97 + v94);
        if (v98 != -1 && *(v97 + v94 + 8) == 1)
        {
          v99 = *(&v166 + 1);
          if (*(&v166 + 1) >= v167)
          {
            v100 = v166;
            v101 = *(&v166 + 1) - v166;
            v102 = (*(&v166 + 1) - v166) >> 2;
            v103 = v102 + 1;
            if ((v102 + 1) >> 62)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v104 = v167 - v166;
            if ((v167 - v166) >> 1 > v103)
            {
              v103 = v104 >> 1;
            }

            if (v104 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v105 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v105 = v103;
            }

            if (v105)
            {
              if (!(v105 >> 62))
              {
                operator new();
              }

LABEL_216:
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(4 * v102) = v98;
            memcpy(0, v100, v101);
            *&v166 = 0;
            *(&v166 + 1) = 4 * v102 + 4;
            *&v167 = 0;
            if (v100)
            {
              operator delete(v100);
            }

            *(&v166 + 1) = 4 * v102 + 4;
          }

          else
          {
            **(&v166 + 1) = v98;
            *(&v166 + 1) = v99 + 4;
          }

          v106 = v96;
          v107 = v96 >> 2;
          if (((v96 >> 2) + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (v96 >> 2 != -1)
          {
            if (!(((v96 >> 2) + 1) >> 62))
            {
              operator new();
            }

            goto LABEL_216;
          }

          *(4 * v107) = v95;
          v96 = 4 * v107 + 4;
          memcpy(0, 0, v106);
          v3 = v152;
        }

        ++v95;
        v93 = *(v3 + 80);
        v94 += 24;
      }

      while (v95 < (-1431655765 * ((v93[11] - v93[10]) >> 3)));
    }

    v162[0] = 0;
    v162[1] = 0;
    v163 = 0;
    if (*(v42 + 310) == 1)
    {
      v108 = operations_research::sat::Model::GetOrCreate<operations_research::sat::PrecedenceRelations>(v149);
      operations_research::sat::PrecedenceRelations::ComputeFullPrecedences(v108, &v166, v162);
      v110 = v162[0];
      v109 = v162[1];
      if (v162[0] != v162[1])
      {
        v148 = v162[1];
        do
        {
          v111 = *(v110 + 2) - *(v110 + 1);
          if ((v111 >> 2) >= 2)
          {
            v112 = 0;
            v113 = 0;
            v161 = *v110;
            v158 = 0;
            v159 = 0;
            v160 = 0;
            __p = 0;
            v156 = 0;
            v157 = 0;
            v114 = (v111 >> 2) & 0x7FFFFFFF;
            do
            {
              while (1)
              {
                v115 = *(4 * *(*(v110 + 1) + 4 * v112));
                v116 = v159;
                if (v159 >= v160)
                {
                  v118 = v158;
                  v119 = v159 - v158;
                  v120 = (v159 - v158) >> 2;
                  v121 = v120 + 1;
                  if ((v120 + 1) >> 62)
                  {
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  v122 = v160 - v158;
                  if ((v160 - v158) >> 1 > v121)
                  {
                    v121 = v122 >> 1;
                  }

                  if (v122 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v123 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v123 = v121;
                  }

                  if (v123)
                  {
                    if (!(v123 >> 62))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  *(4 * v120) = v115;
                  v117 = (4 * v120 + 4);
                  memcpy(0, v118, v119);
                  v158 = 0;
                  v159 = v117;
                  v160 = 0;
                  if (v118)
                  {
                    operator delete(v118);
                  }

                  v3 = v152;
                }

                else
                {
                  *v159 = v115;
                  v117 = (v116 + 4);
                }

                v124 = v115;
                v159 = v117;
                v125 = *(v3 + 32) + 24 * v115;
                v126 = *(v125 + 16);
                if (*v125 != -1)
                {
                  v126 -= *(*(v150 + 19) + 24 * (*v125 ^ 1)) * *(v125 + 8);
                }

                v127 = *(*(v110 + 4) + 8 * v112) - *(*(*(v3 + 80) + 104) + 24 * v124 + 16);
                v128 = v156;
                if (v156 >= v157)
                {
                  break;
                }

                *v156 = v127;
                v113 += v126;
                v156 = v128 + 8;
                if (v114 == ++v112)
                {
                  goto LABEL_182;
                }
              }

              v129 = __p;
              v130 = v156 - __p;
              v131 = (v156 - __p) >> 3;
              v132 = v131 + 1;
              if ((v131 + 1) >> 61)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v133 = v157 - __p;
              if ((v157 - __p) >> 2 > v132)
              {
                v132 = v133 >> 2;
              }

              if (v133 >= 0x7FFFFFFFFFFFFFF8)
              {
                v134 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v134 = v132;
              }

              if (v134)
              {
                if (!(v134 >> 61))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              *(8 * v131) = v127;
              v135 = 8 * v131 + 8;
              memcpy(0, v129, v130);
              __p = 0;
              v156 = v135;
              v157 = 0;
              if (v129)
              {
                operator delete(v129);
              }

              v3 = v152;
              v113 += v126;
              v156 = v135;
              ++v112;
            }

            while (v114 != v112);
LABEL_182:
            v136 = *(v3 + 56);
            v137 = *(v3 + 72);
            if (v136 != -1)
            {
              v137 += *(*(v150 + 19) + 24 * v136) * *(v3 + 64);
            }

            v74 = v113 <= v137;
            v109 = v148;
            if (!v74)
            {
              if (dword_27E25CCC8 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::sat::Cumulative(std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const&,std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::AffineExpression,operations_research::sat::SchedulingConstraintHelper *)::$_0::operator()(operations_research::sat::Model *)::{lambda(void)#1}::operator() const(void)::site, dword_27E25CCC8))
              {
                absl::lts_20240722::log_internal::LogMessage::LogMessage(v154, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cumulative.cc", 227);
                v138 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v154, 2);
                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v138, "Cumulative precedence constraint! var= ", 0x27uLL);
                v139 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v138, &v161);
                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v139, " #task: ", 8uLL);
                absl::lts_20240722::strings_internal::JoinAlgorithm<std::__wrap_iter<int const*>,absl::lts_20240722::strings_internal::AlphaNumFormatterImpl>(v158, v159, ",", 1uLL, &v153);
                absl::lts_20240722::log_internal::LogMessage::operator<<(v139, &v153);
                if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v153.__r_.__value_.__l.__data_);
                }

                absl::lts_20240722::log_internal::LogMessage::~LogMessage(v154);
              }

              operator new();
            }

            if (__p)
            {
              v156 = __p;
              operator delete(__p);
            }

            if (v158)
            {
              v159 = v158;
              operator delete(v158);
            }
          }

          v110 += 56;
        }

        while (v110 != v109);
        v110 = v162[0];
      }

      if (v110)
      {
        v140 = v162[1];
        v141 = v110;
        if (v162[1] != v110)
        {
          do
          {
            v142 = *(v140 - 3);
            if (v142)
            {
              *(v140 - 2) = v142;
              operator delete(v142);
            }

            v143 = *(v140 - 6);
            if (v143)
            {
              *(v140 - 5) = v143;
              operator delete(v143);
            }

            v140 -= 56;
          }

          while (v140 != v110);
          v141 = v162[0];
        }

        v162[1] = v110;
        operator delete(v141);
      }
    }

    if (v166)
    {
      *(&v166 + 1) = v166;
      operator delete(v166);
    }

LABEL_208:
    operator new();
  }

  *(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v4) + 528) = 1;
}

void sub_23CB35144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, char *a32)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a23);
  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  if (a28)
  {
    a29 = a28;
    operator delete(a28);
  }

  std::vector<operations_research::sat::FullIntegerPrecedence>::~vector[abi:ne200100](&a32);
  if (a15)
  {
    operator delete(a15);
  }

  v34 = *(v32 - 176);
  if (v34)
  {
    *(v32 - 168) = v34;
    operator delete(v34);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<operations_research::sat::Cumulative(std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const&,std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::AffineExpression,operations_research::sat::SchedulingConstraintHelper *)::$_0,std::allocator<operations_research::sat::Cumulative(std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const&,std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::AffineExpression,operations_research::sat::SchedulingConstraintHelper *)::$_0>,void ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat10CumulativeERKNSt3__16vectorINS_11StrongIndexINS0_27IntervalVariable_index_tag_EEENS1_9allocatorIS5_EEEERKNS2_INS0_16AffineExpressionENS6_ISB_EEEESB_PNS0_26SchedulingConstraintHelperEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat10CumulativeERKNSt3__16vectorINS_11StrongIndexINS0_27IntervalVariable_index_tag_EEENS1_9allocatorIS5_EEEERKNS2_INS0_16AffineExpressionENS6_ISB_EEEESB_PNS0_26SchedulingConstraintHelperEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat10CumulativeERKNSt3__16vectorINS_11StrongIndexINS0_27IntervalVariable_index_tag_EEENS1_9allocatorIS5_EEEERKNS2_INS0_16AffineExpressionENS6_ISB_EEEESB_PNS0_26SchedulingConstraintHelperEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat10CumulativeERKNSt3__16vectorINS_11StrongIndexINS0_27IntervalVariable_index_tag_EEENS1_9allocatorIS5_EEEERKNS2_INS0_16AffineExpressionENS6_ISB_EEEESB_PNS0_26SchedulingConstraintHelperEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t operations_research::sat::Cumulative(std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const&,std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::AffineExpression,operations_research::sat::SchedulingConstraintHelper *)::$_0::$_0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = *(a2 + 8);
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  if (v3 != v4)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  return a1;
}

void sub_23CB3543C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

char **std::vector<operations_research::sat::FullIntegerPrecedence>::~vector[abi:ne200100](char **a1)
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
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 6);
        if (v6)
        {
          *(v3 - 5) = v6;
          operator delete(v6);
        }

        v3 -= 56;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void std::vector<operations_research::sat::IntervalsRepository::CumulativeHelper>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
LABEL_3:
    *(a1 + 8) = v7;
    return;
  }

  v8 = *a1;
  v9 = v3 - *a1;
  v10 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 3) + 1;
  if (v10 > 0x666666666666666)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v11 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v8) >> 3);
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x333333333333333)
  {
    v12 = 0x666666666666666;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 <= 0x666666666666666)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v13 = 8 * (v9 >> 3);
  v14 = a2[1];
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a2 + 4);
  v7 = v13 + 40;
  v15 = v13 - v9;
  memcpy((v13 - v9), v8, v9);
  *a1 = v15;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  *(a1 + 8) = v7;
}

void *operations_research::sat::Model::Delete<operations_research::sat::CumulativeIsAfterSubsetConstraint>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F40110;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::CumulativeIsAfterSubsetConstraint>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F40110;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<operations_research::sat::TimeTablingPerTask>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F40148;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::TimeTablingPerTask>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F40148;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<operations_research::sat::TimeTableEdgeFinding>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F40180;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::TimeTableEdgeFinding>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F40180;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

uint64_t operations_research::sat::CumulativeEnergyConstraint::CumulativeEnergyConstraint(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a1 = &unk_284F401C8;
  v8 = *a2;
  *(a1 + 24) = *(a2 + 2);
  *(a1 + 8) = v8;
  *(a1 + 32) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a5);
  *(a1 + 40) = a3;
  *(a1 + 48) = a4;
  operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::ThetaLambdaTree(a1 + 56);
  *(a1 + 96) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  if (0xAAAAAAAB00000000 * ((*(*(a1 + 40) + 88) - *(*(a1 + 40) + 80)) >> 3))
  {
    std::vector<int>::__append((a1 + 96), (-1431655765 * ((*(*(a1 + 40) + 88) - *(*(a1 + 40) + 80)) >> 3)));
  }

  return a1;
}

void sub_23CB36004(_Unwind_Exception *a1)
{
  v3 = *(v1 + 144);
  if (v3)
  {
    operator delete(v3);
  }

  operations_research::sat::CumulativeEnergyConstraint::CumulativeEnergyConstraint((v1 + 120), (v1 + 96), v1, (v1 + 104));
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::CumulativeEnergyConstraint::Propagate(operations_research::sat::SchedulingConstraintHelper **this)
{
  v1 = this;
  v103 = *MEMORY[0x277D85DE8];
  result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(this[5], 1);
  if (!result)
  {
    return result;
  }

  operations_research::sat::SchedulingDemandHelper::CacheAllEnergyValues(v1[6]);
  v4 = *(v1 + 2);
  v5 = v1[3];
  if (v4 != -1)
  {
    v5 -= *(*(v1[4] + 5) + ((8 * v4) ^ 8)) * v1[2];
  }

  if (v5 < 1)
  {
    return 1;
  }

  v94 = v5;
  v1[16] = v1[15];
  started = operations_research::sat::SchedulingConstraintHelper::TaskByIncreasingStartMin(v1[5], v3);
  v99 = v1;
  if ((v7 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = started;
    v98 = 0;
    v9 = started + 16 * v7;
    do
    {
      while (1)
      {
        v10 = *v8;
        *&v102 = *(v8 + 4);
        DWORD2(v102) = *(v8 + 12);
        v11 = v1[5];
        v12 = *(*(v11 + 19) + 4 * v10);
        if (v12 == -1 || ((*(*(*(v11 + 3) + 24) + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v12 & 0x3F ^ 1)) & 1) == 0)
        {
          if (*(*(v1[6] + 11) + 8 * v10))
          {
            break;
          }
        }

        *(v1[12] + v10) = -1;
        v8 += 16;
        if (v8 == v9)
        {
          goto LABEL_28;
        }
      }

      v13 = v1[16];
      v14 = v1[17];
      if (v13 >= v14)
      {
        v16 = v1[15];
        v17 = v13 - v16;
        v18 = (v13 - v16) >> 4;
        v19 = v18 + 1;
        if ((v18 + 1) >> 60)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v20 = v14 - v16;
        if (v20 >> 3 > v19)
        {
          v19 = v20 >> 3;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF0)
        {
          v21 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          if (!(v21 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v22 = 16 * v18;
        *v22 = v10;
        *(v22 + 4) = v102;
        *(v22 + 12) = DWORD2(v102);
        v15 = 16 * v18 + 16;
        memcpy(0, v16, v17);
        v99[15] = 0;
        v99[16] = v15;
        v99[17] = 0;
        if (v16)
        {
          operator delete(v16);
        }

        v1 = v99;
      }

      else
      {
        *v13 = v10;
        *(v13 + 4) = v102;
        *(v13 + 3) = DWORD2(v102);
        v15 = v13 + 16;
      }

      v1[16] = v15;
      *(v1[12] + v10) = v98++;
      v8 += 16;
    }

    while (v8 != v9);
  }

  else
  {
    v98 = 0;
  }

LABEL_28:
  LOBYTE(v102) = 0;
  std::vector<BOOL>::assign((v1 + 18), v98, &v102);
  operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::Reset(v99 + 14, v98);
  v93 = operations_research::sat::SchedulingConstraintHelper::TaskByDecreasingEndMax(v99[5], v23);
  if ((v24 & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    return 1;
  }

  v91 = 0;
  v25 = v94;
  v26 = v93 + 16 * v24;
  v27 = v99;
  while (1)
  {
    v29 = *(v26 - 16);
    v26 -= 16;
    v28 = v29;
    v30 = *(v27[12] + v29);
    if (v30 == -1)
    {
      goto LABEL_31;
    }

    v97 = *(v26 + 8);
    v31 = *(v27[15] + 2 * v30 + 1);
    v32 = v27[5];
    v33 = *(*(v32 + 19) + 4 * v28);
    v34 = v30 >> 6;
    v92 = v26;
    if (v33 == -1)
    {
      v37 = (v27[18] + 8 * v34);
      v38 = 1 << v30;
LABEL_38:
      *v37 |= v38;
      operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::AddOrUpdateEvent((v27 + 7), v30, v31 * v25, *(*(v27[6] + 8) + 8 * v28), *(*(v27[6] + 11) + 8 * v28));
      goto LABEL_39;
    }

    v35 = *(*(v32 + 19) + 4 * v28);
    v36 = *(*(*(v32 + 3) + 24) + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8));
    v37 = (v27[18] + 8 * v34);
    v38 = 1 << v30;
    if ((v36 >> v35))
    {
      goto LABEL_38;
    }

    *v37 &= ~v38;
    operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::AddOrUpdateOptionalEvent((v27 + 7), v30, v31 * v25, *(*(v27[6] + 11) + 8 * v28));
    if ((v91 & 1) == 0)
    {
      v91 = 0;
      goto LABEL_60;
    }

LABEL_39:
    Envelope = operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetEnvelope((v99 + 7));
    MaxEventWithEnvelopeGreaterThan = operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetMaxEventWithEnvelopeGreaterThan((v99 + 7), Envelope - 1);
    v27 = v99;
    v41 = *(v99[15] + 2 * MaxEventWithEnvelopeGreaterThan + 1);
    v42 = v97 - v41;
    if (v97 == v41)
    {
      v91 = 1;
LABEL_93:
      v25 = v94;
      v26 = v92;
      goto LABEL_31;
    }

    v43 = Envelope - v41 * v94;
    if (v43 / v42 * v42 >= v43)
    {
      v44 = v43 / v42;
    }

    else
    {
      v44 = v43 / v42 + 1;
    }

    v45 = *(v99 + 2);
    v46 = v99[3];
    if (v45 != -1)
    {
      v46 += *(*(v99[4] + 5) + 8 * v45) * v99[2];
    }

    if (v44 > v46)
    {
      operations_research::sat::SchedulingConstraintHelper::ClearReason(v99[5]);
      v47 = MaxEventWithEnvelopeGreaterThan;
      if (MaxEventWithEnvelopeGreaterThan < v98)
      {
        v48 = 16 * MaxEventWithEnvelopeGreaterThan;
        v49 = v98 - MaxEventWithEnvelopeGreaterThan;
        do
        {
          if ((*(v99[18] + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v47))
          {
            v50 = *(v99[15] + v48);
            v51 = v99[5];
            operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v51, v50);
            v52 = *(*(v51 + 19) + 4 * v50);
            if (v52 != -1)
            {
              LODWORD(v102) = v52 ^ 1;
              std::vector<int>::push_back[abi:ne200100](v51 + 496, &v102);
            }

            operations_research::sat::SchedulingDemandHelper::AddEnergyMinReason(v99[6], v50);
            v53 = v99[5];
            operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v53, v50);
            operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v53, (*(v53 + 22) + 24 * v50), -v41, (*(v53 + 25) + 24 * v50), (*(v53 + 16) + 24 * v50));
            v54 = v99[5];
            operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v54, v50);
            operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v54, (*(v54 + 13) + 24 * v50), v97, (*(v54 + 10) + 24 * v50), (*(v54 + 16) + 24 * v50));
          }

          ++v47;
          v48 += 16;
          --v49;
        }

        while (v49);
      }

      v55 = *(v99 + 2);
      if (v55 == -1)
      {
        return operations_research::sat::SchedulingConstraintHelper::ReportConflict(v99[5]);
      }

      v56 = v99[2];
      v57 = v44 - v99[3];
      if (v57 / v56 * v56 >= v57)
      {
        v58 = v57 / v56;
      }

      else
      {
        v58 = v57 / v56 + 1;
      }

      result = operations_research::sat::SchedulingConstraintHelper::PushIntegerLiteral(v99[5], v55, v58);
      if (!result)
      {
        return result;
      }
    }

    v91 = 1;
LABEL_60:
    OptionalEnvelope = operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetOptionalEnvelope((v99 + 7));
    v25 = v94;
    v95 = v97 * v94;
    if (OptionalEnvelope > v97 * v94)
    {
      break;
    }

    v26 = v92;
    v27 = v99;
LABEL_31:
    if (v26 == v93)
    {
      return 1;
    }
  }

  v27 = v99;
  while (1)
  {
    operations_research::sat::SchedulingConstraintHelper::ClearReason(v27[5]);
    v100 = 0;
    v101 = 0;
    operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetEventsWithOptionalEnvelopeGreaterThan((v99 + 7), v95, &v101 + 1, &v101, &v100);
    v60 = SHIDWORD(v101);
    v61 = v99;
    v96 = *(v99[15] + 2 * SHIDWORD(v101) + 1);
    if (SHIDWORD(v101) < v98)
    {
      v62 = 16 * SHIDWORD(v101);
      do
      {
        if (((*(v61[18] + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v60) & 1) != 0 && v60 != v101)
        {
          v63 = *(v61[15] + v62);
          v64 = v61[5];
          operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v64, v63);
          v65 = *(*(v64 + 19) + 4 * v63);
          if (v65 != -1)
          {
            v66 = v65 ^ 1;
            v68 = *(v64 + 63);
            v67 = *(v64 + 64);
            if (v68 >= v67)
            {
              v70 = *(v64 + 62);
              v71 = v68 - v70;
              v72 = (v68 - v70) >> 2;
              v73 = v72 + 1;
              if ((v72 + 1) >> 62)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v74 = v67 - v70;
              if (v74 >> 1 > v73)
              {
                v73 = v74 >> 1;
              }

              if (v74 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v75 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v75 = v73;
              }

              if (v75)
              {
                if (!(v75 >> 62))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v76 = (v68 - v70) >> 2;
              v77 = (4 * v72);
              v78 = (4 * v72 - 4 * v76);
              *v77 = v66;
              v69 = v77 + 1;
              memcpy(v78, v70, v71);
              *(v64 + 62) = v78;
              *(v64 + 63) = v69;
              *(v64 + 64) = 0;
              if (v70)
              {
                operator delete(v70);
              }
            }

            else
            {
              *v68 = v66;
              v69 = v68 + 1;
            }

            *(v64 + 63) = v69;
          }

          v79 = v99[5];
          operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v79, v63);
          operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v79, (*(v79 + 22) + 24 * v63), -v96, (*(v79 + 25) + 24 * v63), (*(v79 + 16) + 24 * v63));
          v80 = v99[5];
          operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v80, v63);
          operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v80, (*(v80 + 13) + 24 * v63), v97, (*(v80 + 10) + 24 * v63), (*(v80 + 16) + 24 * v63));
          operations_research::sat::SchedulingDemandHelper::AddEnergyMinReason(v99[6], v63);
          v61 = v99;
        }

        ++v60;
        v62 += 16;
      }

      while (v98 != v60);
    }

    v81 = *(v61 + 2);
    if (v81 != -1)
    {
      v82 = v61[5];
      v83 = *(*(v61[4] + 5) + ((8 * v81) ^ 8));
      if (v83 - 1 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v83 = 0x7FFFFFFFFFFFFFFFLL;
      }

      *&v102 = v81 ^ 1;
      *(&v102 + 1) = v83;
      std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v82 + 520, &v102);
      v61 = v99;
    }

    v85 = v61[5];
    v84 = v61 + 5;
    v86 = *(v84[10] + 4 * v101);
    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v85, v86);
    operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v85, (*(v85 + 22) + 24 * v86), -v96, (*(v85 + 25) + 24 * v86), (*(v85 + 16) + 24 * v86));
    v87 = *v84;
    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(*v84, v86);
    operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v87, (*(v87 + 13) + 24 * v86), v97, (*(v87 + 10) + 24 * v86), (*(v87 + 16) + 24 * v86));
    if ((operations_research::sat::SchedulingDemandHelper::DecreaseEnergyMax(v99[6], v86, v100) & 1) == 0)
    {
      return 0;
    }

    v88 = v99[5];
    v89 = *(*(v88 + 19) + 4 * v86);
    if (v89 == -1 || ((*(*(*(v88 + 3) + 24) + ((v89 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(*(v88 + 19) + 4 * v86)) & 1) != 0)
    {
      operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::AddOrUpdateEvent((v99 + 7), *(v99[12] + v86), *(v99[15] + 2 * v101 + 1) * v94, *(*(v99[6] + 8) + 8 * v86), v100);
    }

    else
    {
      operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::RemoveEvent((v99 + 7), v101);
    }

    v90 = operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetOptionalEnvelope((v99 + 7));
    v27 = v99;
    if (v90 <= v95)
    {
      goto LABEL_93;
    }
  }
}

void operations_research::sat::SchedulingConstraintHelper::ClearReason(operations_research::sat::SchedulingConstraintHelper *this)
{
  *(this + 66) = *(this + 65);
  *(this + 63) = *(this + 62);
  v2 = *(this + 68);
  if (v2)
  {
    operations_research::sat::SchedulingConstraintHelper::ClearReason(v2);
    v3 = (-1431655765 * ((*(this + 11) - *(this + 10)) >> 3));
    v4 = 0;
    std::vector<BOOL>::assign(this + 576, v3, &v4);
  }
}

uint64_t operations_research::sat::CumulativeIsAfterSubsetConstraint::CumulativeIsAfterSubsetConstraint(uint64_t a1, int a2, __int128 *a3, char **a4, uint64_t *a5, uint64_t a6, uint64_t a7, void *a8)
{
  *a1 = &unk_284F401F8;
  *(a1 + 8) = a2;
  v14 = *a3;
  v15 = *(a3 + 2);
  *(a1 + 40) = 0;
  *(a1 + 32) = v15;
  *(a1 + 16) = v14;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v16 = a4[1];
  if (v16 != *a4)
  {
    if (((v16 - *a4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 64) = 0u;
  *(a1 + 112) = 50;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  operations_research::sat::MaxBoundedSubsetSum::Reset((a1 + 112), 0);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a8);
  *(a1 + 248) = a6;
  *(a1 + 256) = a7;
  v17 = (-1431655765 * ((*(a6 + 88) - *(a6 + 80)) >> 3));
  v30 = 0;
  std::vector<BOOL>::assign(a1 + 64, v17, &v30);
  v18 = -1431655765 * ((*(a6 + 88) - *(a6 + 80)) >> 3);
  v29 = 0;
  std::vector<long long>::assign((a1 + 88), v18, &v29);
  v19 = *a4;
  v20 = a4[1] - *a4;
  if (v20)
  {
    v21 = 0;
    v22 = v20 >> 2;
    v23 = *(a1 + 64);
    v24 = *a5;
    v25 = *(a1 + 88);
    v26 = 1;
    do
    {
      v27 = *&v19[4 * v21];
      *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      *(v25 + 8 * v27) = *(v24 + 8 * v21);
      v21 = v26++;
    }

    while (v22 > v21);
  }

  return a1;
}

{
  return operations_research::sat::CumulativeIsAfterSubsetConstraint::CumulativeIsAfterSubsetConstraint(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_23CB36C4C(_Unwind_Exception *a1)
{
  v7 = *v5;
  if (*v5)
  {
    v1[28] = v7;
    operator delete(v7);
  }

  operations_research::sat::MaxBoundedSubsetSum::~MaxBoundedSubsetSum(v3);
  v8 = *(v2 + 24);
  if (v8)
  {
    v1[12] = v8;
    operator delete(v8);
    v9 = *v2;
    if (!*v2)
    {
LABEL_5:
      v10 = *v4;
      if (!*v4)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v9 = *v2;
    if (!*v2)
    {
      goto LABEL_5;
    }
  }

  operator delete(v9);
  v10 = *v4;
  if (!*v4)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_9:
  v1[6] = v10;
  operator delete(v10);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::CumulativeIsAfterSubsetConstraint::Propagate(operations_research::sat::SchedulingConstraintHelper **this)
{
  result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(this[31], 1);
  if (result)
  {
    v3 = *(this + 4);
    v4 = this[4];
    if (v3 != -1)
    {
      v4 = (v4 - *(*(this[30] + 5) + ((8 * v3) ^ 8)) * this[3]);
    }

    operations_research::sat::MaxBoundedSubsetSum::Reset((this + 14), v4);
    EnergyProfile = operations_research::sat::SchedulingConstraintHelper::GetEnergyProfile(this[31], v5);
    v7 = ((EnergyProfile[1] - *EnergyProfile) >> 4) - 1;
    if (v7 < 0)
    {
      return 1;
    }

    v8 = EnergyProfile;
    v9 = 0;
    v10 = 0;
    v59 = 0x7FFFFFFFFFFFFFFELL;
    v60 = 0x8000000000000002;
    v11 = 0x7FFFFFFFFFFFFFFELL;
    v12 = 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v13 = v11;
      v14 = *v8;
      v15 = this[31];
      while (1)
      {
        v16 = *(v14 + 16 * v7 + 8);
        v17 = *(*(v15 + 19) + 4 * v16);
        if (v17 == -1 || ((*(*(*(v15 + 3) + 24) + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17)) && ((*(this[8] + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v16))
        {
          break;
        }

        v27 = v7-- <= 0;
        if (v27)
        {
          goto LABEL_37;
        }
      }

      v11 = *(v14 + 16 * v7);
      v18 = (v13 - v11) * v10;
      if (v10 <= 0)
      {
        v18 = 0;
      }

      v9 += v18;
      v57 = this[17];
      v58 = v12;
      while (1)
      {
        v19 = *v8 + 16 * v7;
        if (*v19 != v11)
        {
          break;
        }

        v20 = *(v19 + 8);
        v21 = this[31];
        v22 = *(*(v21 + 19) + 4 * v20);
        if (v22 == -1 || ((*(*(*(v21 + 3) + 24) + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(*(v21 + 19) + 4 * v20))) && ((*(this[8] + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v20))
        {
          if (*(this[11] + v20) < v12)
          {
            v12 = *(this[11] + v20);
          }

          v23 = operations_research::sat::SchedulingDemandHelper::DemandMin(this[32], v20);
          v24 = v23;
          if (*(*v8 + 16 * v7 + 12) == 1)
          {
            v10 -= v23;
          }

          else
          {
            v10 += v23;
            if (*(*(this[32] + 4) + 24 * v20) != -1)
            {
              v24 = v4;
            }

            operations_research::sat::MaxBoundedSubsetSum::Add(this + 14, v24);
          }
        }

        v27 = v7-- <= 0;
        if (v27)
        {
          v7 = -1;
          break;
        }
      }

      if (v9)
      {
        v25 = v11 + v58 + v9 / v57;
        if (v9 / v57 * v57 < v9)
        {
          ++v25;
        }

        v26 = v60;
        v27 = v25 <= v60;
        if (v25 > v60)
        {
          v26 = v25;
        }

        v28 = v59;
        if (!v27)
        {
          v28 = v11;
        }

        v59 = v28;
        v60 = v26;
      }
    }

    while ((v7 & 0x80000000) == 0);
LABEL_37:
    if (v60 == 0x8000000000000002 || v60 <= *(*(this[30] + 5) + 8 * *(this + 2)))
    {
      return 1;
    }

    operations_research::sat::SchedulingConstraintHelper::ClearReason(this[31]);
    v29 = this[31];
    if ((-1431655765 * ((*(v29 + 11) - *(v29 + 10)) >> 3)) >= 1)
    {
      v30 = 0;
      v31 = 16;
      do
      {
        if ((*(this[8] + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v30))
        {
          v32 = *(*(v29 + 19) + 4 * v30);
          if (v32 == -1 || ((*(*(*(v29 + 3) + 24) + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v32) & 1) != 0)
          {
            v33 = *(*(v29 + 29) + 8 * v30);
            if (v33)
            {
              v34 = operations_research::sat::SchedulingDemandHelper::DemandMin(this[32], v30);
              v29 = this[31];
              if (v34)
              {
                v35 = *(*(v29 + 31) + 8 * v30);
                if (v35 > v59)
                {
                  if (v35 >= v33 + v59)
                  {
                    v36 = v33 + v59;
                  }

                  else
                  {
                    v36 = *(*(v29 + 31) + 8 * v30);
                  }

                  operations_research::sat::SchedulingConstraintHelper::AddOtherReason(this[31], v30);
                  v37 = *(v29 + 16);
                  v38 = *(v37 + v31 - 16);
                  if (v38 == -1)
                  {
                    v41 = 0;
                    v40 = -1;
                  }

                  else
                  {
                    v39 = *(v37 + v31 - 8);
                    v40 = v38 ^ (v39 >> 63) ^ 1;
                    if (v39 >= 0)
                    {
                      v41 = *(v37 + v31 - 8);
                    }

                    else
                    {
                      v41 = -v39;
                    }
                  }

                  v42 = (*(v29 + 22) + v31 - 16);
                  v43 = (*(v29 + 25) + v31 - 16);
                  v44 = -*(v37 + v31);
                  LODWORD(v61) = v40;
                  *(&v61 + 1) = v41;
                  v62 = v44;
                  operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v29, v43, -v36, v42, &v61);
                  v45 = this[31];
                  v46 = *(*(v45 + 29) + 8 * v30);
                  operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v45, v30);
                  if (v46 >= 1)
                  {
                    v47 = *(v45 + 16);
                    v48 = *(v47 + v31 - 16);
                    if (v48 == -1)
                    {
                      v51 = 0;
                      v50 = -1;
                    }

                    else
                    {
                      v49 = *(v47 + v31 - 8);
                      v50 = v48 ^ (v49 >> 63) ^ 1;
                      if (v49 >= 0)
                      {
                        v51 = *(v47 + v31 - 8);
                      }

                      else
                      {
                        v51 = -v49;
                      }
                    }

                    v52 = -*(v47 + v31);
                    LODWORD(v61) = v50;
                    *(&v61 + 1) = v51;
                    v62 = v52;
                    operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v45, &v61, -v46, (*(v45 + 25) + v31 - 16), (*(v45 + 10) + v31 - 16));
                  }

                  v53 = this[31];
                  operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v53, v30);
                  v54 = *(*(v53 + 19) + 4 * v30);
                  if (v54 != -1)
                  {
                    LODWORD(v61) = v54 ^ 1;
                    std::vector<int>::push_back[abi:ne200100](v53 + 496, &v61);
                  }

                  operations_research::sat::SchedulingDemandHelper::AddDemandMinReason(this[32], v30);
                  v29 = this[31];
                }
              }
            }
          }
        }

        ++v30;
        v31 += 24;
      }

      while (v30 < (-1431655765 * ((*(v29 + 11) - *(v29 + 10)) >> 3)));
    }

    v55 = *(this + 4);
    if (v55 != -1)
    {
      v56 = *(*(this[30] + 5) + ((8 * v55) ^ 8));
      if (v56 - 1 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v56 = 0x7FFFFFFFFFFFFFFFLL;
      }

      *&v61 = v55 ^ 1;
      *(&v61 + 1) = v56;
      std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v29 + 520, &v61);
      v29 = this[31];
    }

    result = operations_research::sat::SchedulingConstraintHelper::PushIntegerLiteral(v29, *(this + 2), v60);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void operations_research::sat::CumulativeIsAfterSubsetConstraint::RegisterWith(operations_research::sat::SchedulingConstraintHelper **this, operations_research::sat::GenericLiteralWatcher *a2)
{
  operations_research::sat::SchedulingConstraintHelper::SetTimeDirection(this[31], 1);
  v4 = operations_research::sat::GenericLiteralWatcher::Register(a2, this);
  operations_research::sat::GenericLiteralWatcher::SetPropagatorPriority(a2, v4, 2);
  v28 = *(this + 1);
  v29 = this[4];
  operations_research::sat::GenericLiteralWatcher::WatchUpperBound(a2, &v28, v4);
  v5 = this[5];
  for (i = this[6]; v5 != i; v5 = (v5 + 4))
  {
    v8 = *v5;
    v9 = *(this[31] + 10) + 24 * v8;
    v10 = *(v9 + 16);
    v28 = *v9;
    v29 = v10;
    operations_research::sat::GenericLiteralWatcher::WatchLowerBound(a2, &v28, v4);
    v11 = *(this[31] + 13) + 24 * v8;
    v12 = *(v11 + 16);
    v28 = *v11;
    v29 = v12;
    operations_research::sat::GenericLiteralWatcher::WatchLowerBound(a2, &v28, v4);
    v13 = *(this[31] + 16) + 24 * v8;
    v14 = *(v13 + 16);
    v28 = *v13;
    v29 = v14;
    operations_research::sat::GenericLiteralWatcher::WatchLowerBound(a2, &v28, v4);
    v15 = *(this[32] + 4) + 24 * v8;
    v16 = *(v15 + 16);
    v28 = *v15;
    v29 = v16;
    operations_research::sat::GenericLiteralWatcher::WatchLowerBound(a2, &v28, v4);
    v17 = this[31];
    v18 = *(*(v17 + 19) + 4 * v8);
    if (v18 != -1)
    {
      v19 = *(*(*(v17 + 3) + 24) + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8));
      if (((v19 >> v18) & 1) == 0 && ((v19 >> (v18 & 0x3F ^ 1)) & 1) == 0)
      {
        v21 = *(a2 + 8);
        v20 = *(a2 + 9);
        v22 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v21) >> 3);
        if (v18 >= v22)
        {
          v23 = v18 + 1;
          if (v23 > v22)
          {
            std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(a2 + 64, v23 - v22);
          }

          else if (v23 < v22)
          {
            v24 = v21 + 24 * v23;
            if (v20 != v24)
            {
              v25 = *(a2 + 9);
              do
              {
                v27 = *(v25 - 24);
                v25 -= 24;
                v26 = v27;
                if (v27)
                {
                  *(v20 - 16) = v26;
                  operator delete(v26);
                }

                v20 = v25;
              }

              while (v25 != v24);
            }

            *(a2 + 9) = v24;
          }
        }

        v7 = *(a2 + 8) + 24 * v18;
        *&v28 = v4 | 0xFFFFFFFF00000000;
        std::vector<long long>::push_back[abi:ne200100](v7, &v28);
      }
    }
  }
}

void operations_research::sat::GenericLiteralWatcher::WatchUpperBound(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  v5 = *a2;
  if ((~v5 & 0xFFFFFFFE) != 0)
  {
    v21[7] = v3;
    v21[8] = v4;
    v8 = (v5 << 32) ^ 0x100000000;
    v9 = v8 >> 32;
    v11 = *(a1 + 88);
    v10 = *(a1 + 96);
    v12 = (a1 + 88);
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3);
    if (v13 <= v8 >> 32)
    {
      v14 = (v8 + 0x100000000) >> 32;
      if (v14 <= v13)
      {
        if (v14 < v13)
        {
          v15 = v11 + 24 * v14;
          if (v10 != v15)
          {
            v16 = *(a1 + 96);
            do
            {
              v18 = *(v16 - 24);
              v16 -= 24;
              v17 = v18;
              if (v18)
              {
                *(v10 - 16) = v17;
                operator delete(v17);
              }

              v10 = v16;
            }

            while (v16 != v15);
          }

          *(a1 + 96) = v15;
        }
      }

      else
      {
        std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(a1 + 88, v14 - v13);
      }
    }

    v21[0] = a3 | 0xFFFFFFFF00000000;
    v19 = (*v12 + 24 * v9);
    v20 = v19[1];
    if (*v19 == v20 || *(v20 - 8) != a3 || *(v20 - 4) != -1)
    {
      std::vector<long long>::push_back[abi:ne200100](v19, v21);
    }
  }
}

void operations_research::sat::CumulativeEnergyConstraint::~CumulativeEnergyConstraint(operations_research::sat::CumulativeEnergyConstraint *this)
{
  *this = &unk_284F401C8;
  v2 = *(this + 18);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 15);
  if (v3)
  {
    *(this + 16) = v3;
    operator delete(v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    *(this + 13) = v4;
    operator delete(v4);
  }

  v5 = *(this + 9);
  if (v5)
  {
    *(this + 10) = v5;
    operator delete(v5);
  }
}

{
  *this = &unk_284F401C8;
  v2 = *(this + 18);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 15);
  if (v3)
  {
    *(this + 16) = v3;
    operator delete(v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    *(this + 13) = v4;
    operator delete(v4);
  }

  v5 = *(this + 9);
  if (v5)
  {
    *(this + 10) = v5;
    operator delete(v5);
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::CumulativeIsAfterSubsetConstraint::~CumulativeIsAfterSubsetConstraint(operations_research::sat::CumulativeIsAfterSubsetConstraint *this)
{
  operations_research::sat::CumulativeIsAfterSubsetConstraint::~CumulativeIsAfterSubsetConstraint(this);

  JUMPOUT(0x23EED9460);
}

{
  *this = &unk_284F401F8;
  v2 = *(this + 27);
  if (v2)
  {
    *(this + 28) = v2;
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    *(this + 25) = v3;
    operator delete(v3);
  }

  v4 = *(this + 21);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 18);
  if (v5)
  {
    *(this + 19) = v5;
    operator delete(v5);
  }

  v6 = *(this + 11);
  if (v6)
  {
    *(this + 12) = v6;
    operator delete(v6);
  }

  v7 = *(this + 8);
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 5);
  if (v8)
  {
    *(this + 6) = v8;
    operator delete(v8);
  }
}

void operations_research::sat::SchedulingConstraintHelper::AddGenericReason(uint64_t a1, int *a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *(a2 + 2);
  if (*a2 != -1)
  {
    v7 = *(a2 + 1);
    v8 = *(a1 + 32);
    value = v8[1].__end_cap_.__value_;
    if (v6 - *(value + ((8 * v5) ^ 8)) * v7 <= a3)
    {
      if ((a3 - v6) / v7 - ((a3 - v6) / v7 * v7 > a3 - v6) >= 0x8000000000000002)
      {
        v17 = ((a3 - v6) / v7 * v7 > a3 - v6) - (a3 - v6) / v7;
      }

      else
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      *&v22 = v5 ^ 1u;
      *(&v22 + 1) = v17;
      std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a1 + 520, &v22);
      return;
    }

    v10 = *a4;
    v11 = *(a4 + 2);
    if (v10 == -1)
    {
      v12 = *(a4 + 2);
      v13 = *a5;
      v14 = *(a5 + 2);
      if (v13 != -1)
      {
LABEL_5:
        v15 = a3 - (v12 + v14 - *(value + ((8 * v13) ^ 8)) * *(a5 + 1));
        v20 = v15;
        if (v15 >= 0)
        {
          goto LABEL_6;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v12 = v11 - *(value + ((8 * v10) ^ 8)) * *(a4 + 1);
      v13 = *a5;
      v14 = *(a5 + 2);
      if (v13 != -1)
      {
        goto LABEL_5;
      }
    }

    v15 = a3 - (v12 + v14);
    v20 = v15;
    if (v15 >= 0)
    {
LABEL_6:
      if (v10 == -1)
      {
        if (v13 != -1)
        {
          if ((a3 - (v11 + v14)) / *(a5 + 1) - ((a3 - (v11 + v14)) / *(a5 + 1) * *(a5 + 1) > a3 - (v11 + v14)) >= 0x8000000000000002)
          {
            v18 = ((a3 - (v11 + v14)) / *(a5 + 1) * *(a5 + 1) > a3 - (v11 + v14)) - (a3 - (v11 + v14)) / *(a5 + 1);
          }

          else
          {
            v18 = 0x7FFFFFFFFFFFFFFFLL;
          }

          *&v22 = v13 ^ 1;
          *(&v22 + 1) = v18;
          std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a1 + 520, &v22);
        }
      }

      else if (v13 == -1)
      {
        if ((a3 - (v14 + v11)) / *(a4 + 1) - ((a3 - (v14 + v11)) / *(a4 + 1) * *(a4 + 1) > a3 - (v14 + v11)) >= 0x8000000000000002)
        {
          v19 = ((a3 - (v14 + v11)) / *(a4 + 1) * *(a4 + 1) > a3 - (v14 + v11)) - (a3 - (v14 + v11)) / *(a4 + 1);
        }

        else
        {
          v19 = 0x7FFFFFFFFFFFFFFFLL;
        }

        *&v22 = v10 ^ 1;
        *(&v22 + 1) = v19;
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a1 + 520, &v22);
      }

      else
      {
        v16 = *(a5 + 1);
        *&v22 = *(a4 + 1);
        *(&v22 + 1) = v16;
        v21[0] = v10 ^ 1;
        v21[1] = v13 ^ 1;
        operations_research::sat::IntegerTrail::AppendRelaxedLinearReason(v8, v15, &v22, 2, v21, 2, a1 + 520);
      }

      return;
    }

LABEL_18:
    operations_research::sat::SchedulingConstraintHelper::AddGenericReason(&v20, &v22);
  }

  if (a3 < v6)
  {
    operations_research::sat::SchedulingConstraintHelper::AddGenericReason(a2, &v22);
  }
}

void *operations_research::sat::Model::Delete<operations_research::sat::CumulativeEnergyConstraint>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F40258;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::CumulativeEnergyConstraint>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F40258;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

uint64_t operations_research::sat::CutTerm::GetUnderlyingLiteralOrNone(operations_research::sat::CutTerm *this)
{
  if (*(this + 6))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 2) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(this + 5);
  if (v2 >= 1)
  {
    if (v2 == 1 && !*(this + 3))
    {
      result = *(this + 8);
      if (result)
      {
        operations_research::sat::CutTerm::GetUnderlyingLiteralOrNone(v4);
      }

      return result;
    }

    return 0xFFFFFFFFLL;
  }

  if (v2 != -1 || *(this + 3) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(this + 8);
  if (v3)
  {
    operations_research::sat::CutTerm::GetUnderlyingLiteralOrNone(v4);
  }

  return v3 | 1u;
}

uint64_t operations_research::sat::CutData::AppendOneTerm(_OWORD *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  if (a3)
  {
    v8 = a3 >= 0 ? a4 : a5;
    *a1 -= v8 * a3;
    if (a5 != a4)
    {
      v23 = v6;
      v24 = v7;
      v9 = a4;
      if (a4 < 0x8000000000000003)
      {
        v9 = -INFINITY;
      }

      if (a4 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v9 = INFINITY;
      }

      v10 = -INFINITY;
      if (a5 >= 0x8000000000000003)
      {
        v10 = a5;
      }

      if (a5 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v10 = INFINITY;
      }

      if (a3 >= 0)
      {
        v11 = -a4;
      }

      else
      {
        v11 = a5;
      }

      v19 = v11;
      v20 = a2;
      v12 = a6 - v9;
      v13 = 1;
      v14 = v10 - a6;
      if (a3 >= 0)
      {
        v15 = a3;
      }

      else
      {
        v13 = -1;
        v15 = -a3;
      }

      v21 = v13;
      v22 = 0;
      if (a3 >= 0)
      {
        v14 = v12;
      }

      *(&v17 + 1) = v15;
      v18 = a5 - a4;
      *&v17 = v14;
      std::vector<operations_research::sat::CutTerm>::push_back[abi:ne200100]((a1 + 1), &v17);
    }
  }

  return 1;
}

void std::vector<operations_research::sat::CutTerm>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    *(v3 + 48) = *(a2 + 6);
    *(v3 + 16) = v6;
    *(v3 + 32) = v7;
    *v3 = v5;
    v8 = v3 + 56;
LABEL_3:
    *(a1 + 8) = v8;
    return;
  }

  v9 = *a1;
  v10 = v3 - *a1;
  v11 = 0x6DB6DB6DB6DB6DB7 * (v10 >> 3) + 1;
  if (v11 > 0x492492492492492)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v12 = 0x6DB6DB6DB6DB6DB7 * ((v4 - v9) >> 3);
  if (2 * v12 > v11)
  {
    v11 = 2 * v12;
  }

  if (v12 >= 0x249249249249249)
  {
    v13 = 0x492492492492492;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    if (v13 <= 0x492492492492492)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v14 = 8 * (v10 >> 3);
  v15 = a2[1];
  *v14 = *a2;
  *(v14 + 16) = v15;
  *(v14 + 32) = a2[2];
  *(v14 + 48) = *(a2 + 6);
  v8 = v14 + 56;
  v16 = v14 - v10;
  memcpy((v14 - v10), v9, v10);
  *a1 = v16;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  if (!v9)
  {
    goto LABEL_3;
  }

  operator delete(v9);
  *(a1 + 8) = v8;
}

uint64_t operations_research::sat::CutData::FillFromLinearConstraint(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  *a1 = *(a2 + 8);
  v4 = a1 + 16;
  *(a1 + 24) = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      v11 = *(*(a2 + 32) + 8 * i);
      if (v11)
      {
        v12 = *(*(a2 + 24) + 4 * i);
        v13 = *(*a3 + 8 * v12);
        v14 = *(a4 + 152);
        v15 = *(v14 + 24 * v12);
        v16 = *(v14 + 24 * (v12 ^ 1));
        v17 = -v16;
        v18 = v11 >= 0 ? v15 : -v16;
        *a1 -= v18 * v11;
        v19 = v17 - v15;
        if (v17 != v15)
        {
          v20 = v15;
          v21 = -INFINITY;
          if (v15 < 0x8000000000000003)
          {
            v20 = -INFINITY;
          }

          if (v15 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v20 = INFINITY;
          }

          if (v17 >= 0x8000000000000003)
          {
            v21 = v17;
          }

          if (v17 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v21 = INFINITY;
          }

          v22 = v11 >= 0;
          if (v11 >= 0)
          {
            v23 = -v15;
          }

          else
          {
            v23 = v17;
          }

          v30 = v23;
          v31 = v12;
          v24 = v13 - v20;
          v25 = v21 - v13;
          v26 = 1;
          if (v11 < 0)
          {
            v26 = -1;
            v11 = -v11;
          }

          v32 = v26;
          v33 = 0;
          if (v22)
          {
            v25 = v24;
          }

          *(&v28 + 1) = v11;
          v29 = v19;
          *&v28 = v25;
          std::vector<operations_research::sat::CutTerm>::push_back[abi:ne200100](v4, &v28);
        }
      }
    }
  }

  return 1;
}

uint64_t operations_research::sat::CutData::ComplementForPositiveCoefficients(uint64_t this)
{
  v1 = *(this + 16);
  for (i = *(this + 24); v1 != i; v1 += 56)
  {
    v3 = *(v1 + 8);
    if (v3 < 0)
    {
      v4 = *(v1 + 16);
      v5 = *(v1 + 24);
      *this -= v4 * v3;
      *(v1 + 40) = vnegq_s64(*(v1 + 40));
      v6 = v4;
      *(v1 + 24) = v4 - v5;
      if (v4 < 0x8000000000000003)
      {
        v6 = -INFINITY;
      }

      if (v4 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v6 = INFINITY;
      }

      *v1 = v6 - *v1;
      *(v1 + 8) = -v3;
    }
  }

  return this;
}

uint64_t operations_research::sat::CutData::ComplementForSmallerLpValues(uint64_t this)
{
  v1 = *(this + 16);
  for (i = *(this + 24); v1 != i; v1 += 56)
  {
    v3 = *v1;
    v4 = *(v1 + 16);
    v5 = v4;
    if (*v1 > v4 - *v1)
    {
      v6 = *(v1 + 8);
      *this -= v6 * v4;
      *(v1 + 40) = vnegq_s64(*(v1 + 40));
      *(v1 + 24) = v4 - *(v1 + 24);
      if (v4 < 0x8000000000000003)
      {
        v5 = -INFINITY;
      }

      if (v4 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v5 = INFINITY;
      }

      *v1 = v5 - v3;
      *(v1 + 8) = -v6;
    }
  }

  return this;
}

double operations_research::sat::CutData::ComputeViolation(operations_research::sat::CutData *this)
{
  v2 = *this;
  v3 = *(this + 1);
  result = -*&v2;
  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v6 != v5)
  {
    if (v5 - 56 == v6)
    {
      v7 = *(this + 2);
      do
      {
LABEL_7:
        v11 = *v7;
        v12 = *(v7 + 8);
        v7 += 56;
        result = result + v11 * v12;
      }

      while (v7 != v5);
      return result;
    }

    v8 = ((0xDB6DB6DB6DB6DB7 * (v5 - 56 - v6)) >> 3) + 1;
    v7 = v6 + 56 * (v8 & 0x3FFFFFFFFFFFFFFELL);
    v9 = (v6 + 64);
    v10 = v8 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      result = result + *(v9 - 8) * *(v9 - 7) + *(v9 - 1) * *v9;
      v9 += 14;
      v10 -= 2;
    }

    while (v10);
    if (v8 != (v8 & 0x3FFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

  return result;
}

void operations_research::sat::CutDataBuilder::AddOrMergeTerm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a1 + 4) & 1) == 0)
  {
    *(a1 + 4) = 1;
    v8 = 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 24) - *(a4 + 16)) >> 3);
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = 0;
      v11 = v8 & 0x7FFFFFFF;
      do
      {
        v12 = *(a4 + 16);
        if (*(v12 + v9 + 16) != 1 || *(v12 + v9 + 48))
        {
          goto LABEL_5;
        }

        v13 = v12 + v9;
        if (*(v12 + v9 + 40) < 1)
        {
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,int>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>((a1 + 40), (v13 + 32), &v32);
          if (v34 == 1)
          {
LABEL_12:
            *v33 = *(v13 + 32);
          }
        }

        else
        {
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,int>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>((a1 + 8), (v13 + 32), &v32);
          if (v34 == 1)
          {
            goto LABEL_12;
          }
        }

        *(v33 + 4) = v10;
LABEL_5:
        ++v10;
        v9 += 56;
      }

      while (v11 != v10);
    }
  }

  v14 = *(a4 + 16);
  v15 = *(a4 + 24);
  v16 = (a4 + 16);
  v17 = -1227133513 * ((v15 - v14) >> 3);
  if (*(a2 + 40) < 1)
  {
    v28 = *(a2 + 32);
    v29 = v17;
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,int>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>((a1 + 40), &v28, &v32);
    v18 = v34;
    if (v34 == 1)
    {
      v20 = v33;
      *v33 = v28;
      *(v20 + 4) = v29;
      goto LABEL_25;
    }
  }

  else
  {
    v30 = *(a2 + 32);
    v31 = v17;
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,int>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>((a1 + 8), &v30, &v32);
    v18 = v34;
    if (v34 == 1)
    {
      v19 = v33;
      *v33 = v30;
      *(v19 + 4) = v31;
      goto LABEL_25;
    }
  }

  if (!v18)
  {
    v21 = *v16 + 56 * *(v33 + 4);
    v23 = *(v21 + 8);
    v22 = (v21 + 8);
    v24 = *(a2 + 8);
    v25 = (v23 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    v26 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      v26 = v25;
    }

    if ((v26 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
    {
      v27 = ((v26 ^ a3) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      if ((a3 * v26) >> 64 == (a3 * v26) >> 63)
      {
        v27 = a3 * v26;
      }

      if (v27 - 0x7FFFFFFFFFFFFFFFLL > 1)
      {
        ++*a1;
        *v22 = v26;
        return;
      }
    }
  }

LABEL_25:
  std::vector<operations_research::sat::CutTerm>::push_back[abi:ne200100](v16, a2);
}

uint64_t operations_research::sat::LinearConstraint::resize(uint64_t this, int a2)
{
  if (*(this + 16) != a2)
  {
    operator new[]();
  }

  return this;
}

uint64_t operations_research::sat::GetSuperAdditiveRoundingFunction@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = a3 * result;
  if (0x7FFFFFFFFFFFFFFFLL / a2 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL / a2;
  }

  v7 = a2 - v5;
  if (v6 != 1 && v7 != 1)
  {
    if (v7 > v6)
    {
      if (v6 * v5 < a2)
      {
        operator new();
      }

      operator new();
    }

    operator new();
  }

  *a5 = &unk_284F40350;
  a5[1] = a3;
  a5[2] = a2;
  a5[3] = a5;
  return result;
}

uint64_t operations_research::sat::GetSuperAdditiveStrengtheningFunction@<X0>(uint64_t result@<X0>, int64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a2;
  v5 = result;
  if (result < 1)
  {
    operations_research::sat::GetSuperAdditiveStrengtheningFunction(&v5, v3);
  }

  if (a2 <= 0)
  {
    operations_research::sat::GetSuperAdditiveStrengtheningFunction(&v4, v3);
  }

  if ((result >> 1) + (result & 1) > a2)
  {
    operator new();
  }

  *a3 = &unk_284F40550;
  a3[1] = result;
  a3[3] = a3;
  return result;
}

void operations_research::sat::IntegerRoundingCutHelper::~IntegerRoundingCutHelper(operations_research::sat::IntegerRoundingCutHelper *this)
{
  if (dword_2810BD4A0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::IntegerRoundingCutHelper::~IntegerRoundingCutHelper()::$_0::operator() const(void)::site, dword_2810BD4A0) && *(this + 40))
  {
    operator new();
  }

  v2 = *(this + 37);
  if (v2)
  {
    *(this + 38) = v2;
    operator delete(v2);
  }

  v3 = *(this + 34);
  if (v3)
  {
    *(this + 35) = v3;
    operator delete(v3);
  }

  v4 = *(this + 28);
  if (v4)
  {
    *(this + 29) = v4;
    operator delete(v4);
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::clear(this + 22);
  if (*(this + 18) >= 2uLL)
  {
    operator delete((*(this + 20) - (*(this + 19) & 1) - 8));
    if (*(this + 14) < 2uLL)
    {
LABEL_10:
      v5 = *(this + 9);
      if (!v5)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if (*(this + 14) < 2uLL)
  {
    goto LABEL_10;
  }

  operator delete((*(this + 16) - (*(this + 15) & 1) - 8));
  v5 = *(this + 9);
  if (v5)
  {
LABEL_11:
    *(this + 10) = v5;
    operator delete(v5);
  }

LABEL_12:
  v6 = *(this + 6);
  if (v6)
  {
    *(this + 7) = v6;
    operator delete(v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    *(this + 4) = v7;
    operator delete(v7);
  }

  v8 = *this;
  if (*this)
  {
    *(this + 1) = v8;
    operator delete(v8);
  }
}

void std::vector<std::pair<std::string,long long>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    *(v3 + 24) = *(a2 + 3);
    v6 = v3 + 32;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = (v3 - *a1) >> 5;
  v8 = v7 + 1;
  if ((v7 + 1) >> 59)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v9 = v4 - *a1;
  if (v9 >> 4 > v8)
  {
    v8 = v9 >> 4;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFE0)
  {
    v10 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (!(v10 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v11 = 32 * v7;
  *v11 = *a2;
  v12 = *(a2 + 2);
  v13 = *(a2 + 3);
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  v6 = 32 * v7 + 32;
  v14 = *a1;
  v15 = *(a1 + 8) - *a1;
  v16 = v11 - v15;
  memcpy((v11 - v15), *a1, v15);
  *a1 = v16;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v14)
  {
    goto LABEL_3;
  }

  operator delete(v14);
  *(a1 + 8) = v6;
}

double operations_research::sat::IntegerRoundingCutHelper::GetScaledViolation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v71 = *MEMORY[0x277D85DE8];
  v10 = *a5;
  v67 = a5[5];
  v11 = __modti3();
  v12 = (a2 & (v11 >> 63)) + v11;
  v13 = 0.0;
  if (v12 < a4)
  {
    return v13;
  }

  *(a1 + 280) = *(a1 + 272);
  v14 = ~v12 + a2;
  v15 = *(a5 + 12);
  if (v15 <= 1000)
  {
    v16 = 1000;
  }

  else
  {
    v16 = v15;
  }

  v17 = v14 / v16;
  if (v14 / v16 >= 1 && v15 >= 1)
  {
    v66 = a3;
    v19 = 0;
    v20 = 0;
    v21 = v12;
    if (v12 < 0x8000000000000003)
    {
      v21 = -INFINITY;
    }

    if (v12 <= 0x7FFFFFFFFFFFFFFDLL)
    {
      v22 = v21;
    }

    else
    {
      v22 = INFINITY;
    }

    do
    {
      v24 = a5[2];
      v25 = *(v24 + v19 + 8);
      v26 = (a2 & ((v25 % a2) >> 63)) + v25 % a2;
      if (v26)
      {
        if (v26 <= v12)
        {
          v23 = -v26;
          if (v26 < 0x8000000000000003)
          {
            v23 = INFINITY;
          }

          if (v26 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v23 = -INFINITY;
          }

          v22 = v22 + v23 * *(v24 + v19);
          if (v22 <= 0.001)
          {
            return v13;
          }
        }

        else
        {
          v27 = a2 - v26;
          v28 = *(v24 + v19 + 16);
          if ((v27 * v28) >> 64 == (v27 * v28) >> 63)
          {
            v29 = v27 * v28;
          }

          else
          {
            v29 = ((v28 ^ v27) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v29 <= v17)
          {
            v10 += v29;
            v30 = v27 + v25;
            LODWORD(v69) = v20;
            *(&v69 + 1) = v27 + v25;
            std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a1 + 272, &v69);
            if (v30 >= 0)
            {
              v31 = v30;
            }

            else
            {
              v31 = -v30;
            }

            v32 = v67;
            if (v67 <= v31)
            {
              v32 = v31;
            }

            v67 = v32;
            v15 = *(a5 + 12);
          }
        }
      }

      ++v20;
      v19 += 56;
    }

    while (v20 < v15);
    v11 = __modti3();
    a3 = v66;
  }

  v33 = (a2 & (v11 >> 63)) + v11;
  v34 = 0x7FFFFFFFFFFFFFFFLL;
  if (v67)
  {
    v34 = 0x7FFFFFFFFFFFFFFFLL / v67;
  }

  if (v33)
  {
    v35 = a2 / 2 / v33;
    v36 = v35 * v33 >= a2 / 2 ? a2 / 2 / v33 : v35 + 1;
    if (v36 < v34)
    {
      v34 = v36;
    }
  }

  operations_research::sat::GetSuperAdditiveRoundingFunction((a2 & (v11 >> 63)) + v11, a2, v34, a3, &v69);
  v68 = a2;
  if (!v70)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v37 = (*(*v70 + 48))(v70, &v68);
  v38.n128_f64[0] = v37;
  if (v37 < 0x8000000000000003)
  {
    v38.n128_f64[0] = -INFINITY;
  }

  if (v37 <= 0x7FFFFFFFFFFFFFFDLL)
  {
    v39 = v38.n128_f64[0];
  }

  else
  {
    v39 = INFINITY;
  }

  v40 = a2;
  if (a2 < 0x8000000000000003)
  {
    v40 = -INFINITY;
  }

  if (a2 <= 0x7FFFFFFFFFFFFFFDLL)
  {
    v41 = v40;
  }

  else
  {
    v41 = INFINITY;
  }

  v38.n128_f64[0] = v33;
  if (v33 < 0x8000000000000003)
  {
    v38.n128_f64[0] = -INFINITY;
  }

  if (v33 <= 0x7FFFFFFFFFFFFFFDLL)
  {
    v42 = v38.n128_f64[0];
  }

  else
  {
    v42 = INFINITY;
  }

  v68 = a2;
  if (!v70 || (v43 = (*(*v70 + 48))(v70, &v68, v38), v68 = v33, !v70))
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v44 = (*(*v70 + 48))(v70, &v68);
  v45 = *(a5 + 12);
  if (v45 >= 1)
  {
    v46 = v44;
    v47 = v39 / v41;
    v48 = __divti3();
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = -(__PAIR128__(v49, v48) * v43 + v46);
    v54 = v42 * v47;
    v55 = 0.0;
    do
    {
      v56 = a5[2] + v50;
      v57 = *(v56 + 8);
      v58 = *(a1 + 272);
      if (v52 < ((*(a1 + 280) - v58) >> 4))
      {
        v59 = v58 + 16 * v52;
        if (v51 == *v59)
        {
          v57 = *(v59 + 8);
          ++v52;
        }
      }

      if (v57)
      {
        v68 = v57;
        if (!v70)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v60 = (*(*v70 + 48))(v70, &v68);
        v61 = v60;
        v62 = -INFINITY;
        if (v60 < 0x8000000000000003)
        {
          v61 = -INFINITY;
        }

        if (v60 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v61 = INFINITY;
        }

        v63 = *v56;
        if (v57 >= 0x8000000000000003)
        {
          v62 = v57;
        }

        if (v57 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v62 = INFINITY;
        }

        v54 = v54 - -(v61 - v47 * v62) * v63;
        if (v54 <= 0.001)
        {
          goto LABEL_77;
        }

        v53 = v53 + v61 * v63;
        v55 = v55 + v61 * v61;
        v45 = *(a5 + 12);
      }

      ++v51;
      v50 += 56;
    }

    while (v51 < v45);
    v13 = 0.0;
    if (v55 != 0.0)
    {
      v13 = v53 / sqrt(v55);
    }

    v64 = v70;
    if (v70 != &v69)
    {
      goto LABEL_82;
    }

LABEL_78:
    (*(*v64 + 32))(v64);
    return v13;
  }

LABEL_77:
  v13 = 0.0;
  v64 = v70;
  if (v70 == &v69)
  {
    goto LABEL_78;
  }

LABEL_82:
  if (v64)
  {
    (*(*v64 + 40))(v64);
  }

  return v13;
}

void sub_23CB39628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::function<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_23CB39640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::function<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_23CB39654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::function<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_23CB39668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::function<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t std::function<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::~function(uint64_t a1)
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

uint64_t operations_research::sat::IntegerRoundingCutHelper::ComputeCut(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, void *a5)
{
  v218 = *MEMORY[0x277D85DE8];
  v10 = a1 + 208;
  v11 = *a4;
  *(a1 + 208) = *a4;
  if (a1 + 208 != a4)
  {
    std::vector<operations_research::sat::CutTerm>::__assign_with_size[abi:ne200100]<operations_research::sat::CutTerm*,operations_research::sat::CutTerm*>((a1 + 224), *(a4 + 16), *(a4 + 24), 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 24) - *(a4 + 16)) >> 3));
  }

  v12 = *(a4 + 48);
  *(a1 + 248) = *(a4 + 40);
  v13 = (a1 + 248);
  *(a1 + 256) = v12;
  v201 = v10;
  if (!a5 || (a3 & 1) == 0)
  {
    goto LABEL_29;
  }

  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  v14 = *(a1 + 112);
  if (v14 > 1)
  {
    absl::lts_20240722::container_internal::ClearBackingArray((a1 + 112), &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,int>>>::GetPolicyFunctions(void)::value, v14 < 0x80, 1u);
    v15 = (a1 + 144);
    v16 = *(a1 + 144);
    if (v16 > 1)
    {
LABEL_7:
      absl::lts_20240722::container_internal::ClearBackingArray(v15, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,int>>>::GetPolicyFunctions(void)::value, v16 < 0x80, 1u);
      v17 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 232) - *(a1 + 224)) >> 3);
      if (v17 < 1)
      {
LABEL_8:
        result = 0;
        *(a1 + 408) += *(a1 + 104);
        return result;
      }

      goto LABEL_11;
    }
  }

  else
  {
    *(a1 + 120) = 0;
    v15 = (a1 + 144);
    v16 = *(a1 + 144);
    if (v16 > 1)
    {
      goto LABEL_7;
    }
  }

  *(a1 + 152) = 0;
  v17 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 232) - *(a1 + 224)) >> 3);
  if (v17 < 1)
  {
    goto LABEL_8;
  }

LABEL_11:
  v198 = a2;
  v19 = a5;
  v20 = 0;
  v21 = 0;
  v22 = v17 & 0x7FFFFFFF;
  v23 = 1;
  do
  {
    v24 = *(a1 + 224);
    v25 = (v24 + v20);
    v26 = *(v24 + v20 + 16);
    if (v26 >= 2)
    {
      v11.n128_u64[0] = *v25;
      if (*v25 > 0.01)
      {
        if ((a3 & 0x100) != 0)
        {
          v27 = v24 + v20;
          v28 = *(v27 + 8);
          if (v28 < 0)
          {
            *v10 -= v28 * v26;
            *(v27 + 40) = vnegq_s64(*(v27 + 40));
            *(v27 + 24) = v26 - *(v27 + 24);
            v29 = v26;
            if (v26 > 0x7FFFFFFFFFFFFFFDLL)
            {
              v29 = INFINITY;
            }

            *v27 = v29 - v11.n128_f64[0];
            *(v27 + 8) = -v28;
            operations_research::sat::ImpliedBoundsProcessor::TryToExpandWithLowerImpliedbound(v19, 1, v21, 1, v10, a1 + 104);
            if (v30)
            {
LABEL_12:
              v23 = 0;
              ++*(a1 + 400);
              goto LABEL_13;
            }

            v31 = *(a1 + 224) + v20;
            v32 = *(v31 + 8);
            v33 = *(v31 + 16);
            *(a1 + 208) -= v33 * v32;
            *(v31 + 40) = vnegq_s64(*(v31 + 40));
            v34 = v33;
            *(v31 + 24) = v33 - *(v31 + 24);
            if (v33 < 0x8000000000000003)
            {
              v34 = -INFINITY;
            }

            if (v33 > 0x7FFFFFFFFFFFFFFDLL)
            {
              v34 = INFINITY;
            }

            *v31 = v34 - *v31;
            *(v31 + 8) = -v32;
          }
        }

        operations_research::sat::ImpliedBoundsProcessor::TryToExpandWithLowerImpliedbound(v19, 1, v21, 1, v10, a1 + 104);
        if (v35)
        {
          goto LABEL_12;
        }
      }
    }

LABEL_13:
    ++v21;
    v20 += 56;
  }

  while (v22 != v21);
  *(a1 + 408) += *(a1 + 104);
  a5 = v19;
  a2 = v198;
  if (v23)
  {
    return 0;
  }

LABEL_29:
  *(a1 + 256) = 0;
  *(a1 + 248) = 0;
  v36 = *(a1 + 224);
  v37 = *(a1 + 232);
  v194 = a5;
  v38 = 0;
  if (v37 != v36)
  {
    v39 = 0;
    v40 = 1;
    v11.n128_u64[0] = 0x3F847AE147AE147BLL;
    do
    {
      v41 = v36 + 56 * v39;
      v42 = *(v41 + 8);
      if (v42 < 0)
      {
        v42 = -v42;
      }

      if (*v13 > v42)
      {
        v42 = *v13;
      }

      *v13 = v42;
      if (*v41 > 0.01)
      {
        v43 = v36 + 56 * v38;
        v44 = *v43;
        v45 = *(v43 + 16);
        v46 = *(v43 + 32);
        v217 = *(v43 + 48);
        v215 = v45;
        v216 = v46;
        v214 = v44;
        v47 = *v41;
        v48 = *(v41 + 16);
        v49 = *(v41 + 32);
        *(v43 + 48) = *(v41 + 48);
        *(v43 + 16) = v48;
        *(v43 + 32) = v49;
        *v43 = v47;
        v50 = v214;
        v51 = v215;
        v52 = v216;
        *(v41 + 48) = v217;
        *(v41 + 16) = v51;
        *(v41 + 32) = v52;
        *v41 = v50;
        v38 = *(a1 + 256) + 1;
        *(a1 + 256) = v38;
        v36 = *(a1 + 224);
        v37 = *(a1 + 232);
      }

      v39 = v40++;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((v37 - v36) >> 3) > v39);
  }

  v53 = 126 - 2 * __clz(v38);
  if (v38)
  {
    v54 = v53;
  }

  else
  {
    v54 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CutData::Canonicalize(void)::$_0 &,operations_research::sat::CutTerm *,false>(v36, v36 + 56 * v38, v54, 1, v11);
  if (*v13 / 1000 <= 1)
  {
    v55 = 1;
  }

  else
  {
    v55 = *v13 / 1000;
  }

  if ((*(v10 + 8) & 0x8000000000000000) == 0 && *v10 < v55)
  {
    return 0;
  }

  v56 = *a1;
  *(a1 + 8) = *a1;
  v57 = *(a1 + 224);
  v58 = *(a1 + 232);
  if (v57 == v58)
  {
    return 0;
  }

  v59 = v56;
  do
  {
    v60 = *(v57 + 8);
    if (v60 < 0)
    {
      v60 = -v60;
    }

    *&v214 = v60;
    if (v60 > v55)
    {
      std::vector<long long>::push_back[abi:ne200100](a1, &v214);
      v59 = *a1;
      v56 = *(a1 + 8);
      if (v56 - *a1 >= 0x191)
      {
        break;
      }
    }

    v57 += 56;
  }

  while (v57 != v58);
  if (v59 == v56)
  {
    return 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> &,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>*,false>(v59, v56, &v214, 126 - 2 * __clz((v56 - v59) >> 3), 1);
  v62 = *a1;
  v61 = *(a1 + 8);
  if (*a1 != v61)
  {
    v63 = v62 + 1;
    while (v63 != v61)
    {
      v65 = *(v63 - 1);
      v64 = *v63++;
      if (v65 == v64)
      {
        v66 = v63 - 2;
        while (v63 != v61)
        {
          v67 = v64;
          v64 = *v63;
          if (v67 != *v63)
          {
            v66[1] = v64;
            ++v66;
          }

          ++v63;
        }

        if (v66 + 1 != v61)
        {
          v61 = v66 + 1;
          *(a1 + 8) = v66 + 1;
        }

        break;
      }
    }
  }

  if (v62 == v61)
  {
    return 0;
  }

  v205 = 0;
  v68 = 0.001;
  do
  {
    v69 = *v62;
    ScaledViolation = operations_research::sat::IntegerRoundingCutHelper::GetScaledViolation(a1, *v62, a2, v55, v201);
    if (ScaledViolation > v68)
    {
      std::vector<std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::__assign_with_size[abi:ne200100]<std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*>(a1 + 296, *(a1 + 272), *(a1 + 280), (*(a1 + 280) - *(a1 + 272)) >> 4);
      v205 = v69;
      v68 = ScaledViolation;
    }

    ++v62;
  }

  while (v62 != v61);
  if (!v205)
  {
    return 0;
  }

  if (v205 >= 4)
  {
    v71 = operations_research::sat::IntegerRoundingCutHelper::GetScaledViolation(a1, v205 / 2, a2, v55, v201);
    v72 = v205;
    if (v71 > v68)
    {
      std::vector<std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::__assign_with_size[abi:ne200100]<std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*>(a1 + 296, *(a1 + 272), *(a1 + 280), (*(a1 + 280) - *(a1 + 272)) >> 4);
      v72 = v205 / 2;
      v68 = v71;
    }

    if (v72 >= 6)
    {
      v73 = v72;
      v74 = v72 / 3;
      v75 = operations_research::sat::IntegerRoundingCutHelper::GetScaledViolation(a1, v72 / 3, a2, v55, v201);
      if (v75 > v68)
      {
        std::vector<std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::__assign_with_size[abi:ne200100]<std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*>(a1 + 296, *(a1 + 272), *(a1 + 280), (*(a1 + 280) - *(a1 + 272)) >> 4);
        v73 = v74;
        v68 = v75;
      }

      v76 = v73 + 3;
      if (v73 >= 0)
      {
        v76 = v73;
      }

      v205 = v73;
      if (v73 >= 8)
      {
        v180 = v76 >> 2;
        v181 = operations_research::sat::IntegerRoundingCutHelper::GetScaledViolation(a1, v76 >> 2, a2, v55, v201);
        v72 = v73;
        if (v181 > v68)
        {
          std::vector<std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::__assign_with_size[abi:ne200100]<std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*>(a1 + 296, *(a1 + 272), *(a1 + 280), (*(a1 + 280) - *(a1 + 272)) >> 4);
          v72 = v180;
          v68 = v181;
        }

        if (v72 < 10)
        {
          goto LABEL_75;
        }

        v182 = v72;
        v183 = v72;
        v184 = operations_research::sat::IntegerRoundingCutHelper::GetScaledViolation(a1, v72 / 5, a2, v55, v201);
        v72 = v182;
        if (v184 > v68)
        {
          std::vector<std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::__assign_with_size[abi:ne200100]<std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*>(a1 + 296, *(a1 + 272), *(a1 + 280), (*(a1 + 280) - *(a1 + 272)) >> 4);
          v72 = v183 / 5;
          v68 = v184;
        }

        if (v72 < 12)
        {
          goto LABEL_75;
        }

        v185 = v72;
        v186 = v72 / 6;
        v187 = operations_research::sat::IntegerRoundingCutHelper::GetScaledViolation(a1, v72 / 6, a2, v55, v201);
        v72 = v185;
        if (v187 > v68)
        {
          std::vector<std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::__assign_with_size[abi:ne200100]<std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*>(a1 + 296, *(a1 + 272), *(a1 + 280), (*(a1 + 280) - *(a1 + 272)) >> 4);
          v72 = v186;
          v68 = v187;
        }

        if (v72 < 14)
        {
          goto LABEL_75;
        }

        v188 = v72;
        v189 = v72;
        v190 = operations_research::sat::IntegerRoundingCutHelper::GetScaledViolation(a1, v72 / 7, a2, v55, v201);
        if (v190 > v68)
        {
          std::vector<std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::__assign_with_size[abi:ne200100]<std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*>(a1 + 296, *(a1 + 272), *(a1 + 280), (*(a1 + 280) - *(a1 + 272)) >> 4);
          v188 = v189 / 7;
          v68 = v190;
        }

        v191 = v188 + 7;
        if (v188 >= 0)
        {
          v191 = v188;
        }

        v205 = v188;
        if (v188 >= 16)
        {
          v192 = v191 >> 3;
          v193 = operations_research::sat::IntegerRoundingCutHelper::GetScaledViolation(a1, v191 >> 3, a2, v55, v201);
          if (v193 > v68)
          {
            std::vector<std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::__assign_with_size[abi:ne200100]<std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*>(a1 + 296, *(a1 + 272), *(a1 + 280), (*(a1 + 280) - *(a1 + 272)) >> 4);
            v205 = v192;
            v68 = v193;
          }
        }
      }
    }

    else
    {
LABEL_75:
      v205 = v72;
    }
  }

  v77 = *(a1 + 224);
  for (i = *(a1 + 232); v77 != i; v77 += 56)
  {
    v82 = *v77;
    if (*v77 <= 0.01)
    {
      break;
    }

    v83 = *(v77 + 8);
    if (v83 % v205)
    {
      v84 = *(v77 + 16);
      *(a1 + 208) -= v84 * v83;
      *(v77 + 40) = vnegq_s64(*(v77 + 40));
      *(v77 + 24) = v84 - *(v77 + 24);
      v85 = v84;
      if (v84 < 0x8000000000000003)
      {
        v85 = -INFINITY;
      }

      if (v84 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v85 = INFINITY;
      }

      *v77 = v85 - v82;
      *(v77 + 8) = -v83;
      v86 = operations_research::sat::IntegerRoundingCutHelper::GetScaledViolation(a1, v205, a2, v55, v201);
      if (v86 <= v68)
      {
        v79 = *(v77 + 8);
        v80 = *(v77 + 16);
        *v201 -= v80 * v79;
        *(v77 + 40) = vnegq_s64(*(v77 + 40));
        v81 = v80;
        *(v77 + 24) = v80 - *(v77 + 24);
        if (v80 < 0x8000000000000003)
        {
          v81 = -INFINITY;
        }

        if (v80 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v81 = INFINITY;
        }

        *v77 = v81 - *v77;
        *(v77 + 8) = -v79;
      }

      else
      {
        ++*(a1 + 352);
        std::vector<std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::__assign_with_size[abi:ne200100]<std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*>(a1 + 296, *(a1 + 272), *(a1 + 280), (*(a1 + 280) - *(a1 + 272)) >> 4);
        v68 = v86;
      }
    }
  }

  v87 = *(a1 + 296);
  v88 = *(a1 + 304);
  if (v87 == v88)
  {
    v95 = *v13;
    v90 = v205;
  }

  else
  {
    v89 = *(a1 + 224);
    v90 = v205;
    do
    {
      v91 = *v87;
      v92 = *(v87 + 1);
      ++*(a1 + 368);
      v93 = v89 + 56 * v91;
      v94 = v92 - *(v93 + 8);
      v212[0] = v94;
      if (v94 < 1)
      {
        operations_research::sat::IntegerRoundingCutHelper::ComputeCut(v212, &v214);
      }

      *(v93 + 8) = v92;
      *v201 += *(v93 + 16) * v94;
      if (v92 < 0)
      {
        v92 = -v92;
      }

      if (*v13 <= v92)
      {
        v95 = v92;
      }

      else
      {
        v95 = *v13;
      }

      *v13 = v95;
      v87 += 4;
    }

    while (v87 != v88);
  }

  v96 = __modti3();
  v97 = (v90 & (v96 >> 63)) + v96;
  v98 = 0x7FFFFFFFFFFFFFFFLL;
  if (v95)
  {
    v98 = 0x7FFFFFFFFFFFFFFFLL / v95;
  }

  if (v97)
  {
    v99 = v90 / 2 / v97;
    v100 = v99 * v97 >= v90 / 2 ? v90 / 2 / v97 : v99 + 1;
    if (v100 < v98)
    {
      v98 = v100;
    }
  }

  operations_research::sat::GetSuperAdditiveRoundingFunction(v97, v90, v98, a2, v212);
  v196 = v97;
  v202 = v98;
  v102 = *(a1 + 24);
  *(a1 + 32) = v102;
  v103 = *(a1 + 224);
  v104 = *(a1 + 232);
  v206 = (a1 + 24);
  if (v103 == v104)
  {
    v106 = v102;
    v105 = v201;
  }

  else
  {
    v105 = v201;
    do
    {
      v101.n128_u64[0] = *v103;
      if (*v103 <= 0.01)
      {
        break;
      }

      *&v214 = (v205 & ((v103[1] % v205) >> 63)) + v103[1] % v205;
      if (v214 > v196)
      {
        std::vector<long long>::push_back[abi:ne200100](v206, &v214);
      }

      v103 += 7;
    }

    while (v103 != v104);
    v106 = *(a1 + 24);
    v102 = *(a1 + 32);
  }

  v107 = 126 - 2 * __clz((v102 - v106) >> 3);
  if (v102 == v106)
  {
    v108 = 0;
  }

  else
  {
    v108 = v107;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> *,false>(v106, v102, &v214, v108, 1, v101);
  v110 = *(a1 + 24);
  v109 = *(a1 + 32);
  if (v110 != v109)
  {
    v111 = v110 + 8;
    while (v111 != v109)
    {
      v112 = *(v111 - 1);
      v113 = *v111;
      v111 += 8;
      if (v112 == v113)
      {
        v114 = v111 - 16;
        while (v111 != v109)
        {
          v115 = v112;
          v112 = *v111;
          if (v115 != *v111)
          {
            *(v114 + 1) = v112;
            v114 += 8;
          }

          v111 += 8;
        }

        if (v114 + 8 != v109)
        {
          v109 = v114 + 8;
          *(a1 + 32) = v114 + 8;
        }

        break;
      }
    }
  }

  if ((v109 - v110) <= 0x327)
  {
    v207 = (a1 + 72);
    for (*(a1 + 80) = *(a1 + 72); v110 != v109; v110 += 8)
    {
      *&v214 = *v110;
      if (!v213)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v209[0] = (*(*v213 + 48))(v213, &v214);
      std::vector<long long>::push_back[abi:ne200100](v207, v209);
    }

    v116 = v205;
    *&v214 = v205;
    if (!v213)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v117 = (*(*v213 + 48))(v213, &v214);
    v211[0] = 1;
    v118 = 0x7FFFFFFFFFFFFFFFLL;
    if (*v13)
    {
      v118 = 0x7FFFFFFFFFFFFFFFLL / *v13;
    }

    if (v196)
    {
      v119 = v205 / 2 / v196;
      v120 = v119 * v196 >= v205 / 2 ? v205 / 2 / v196 : v119 + 1;
      if (v120 < v118)
      {
        v118 = v120;
      }
    }

    v211[1] = v118;
    if (a2 < 2)
    {
LABEL_153:
      v105 = v201;
      goto LABEL_154;
    }

    v199 = a2;
    v152 = v211;
    while (2)
    {
      v195 = v152;
      v203 = *v152;
      v197 = *v152 * v196;
      v153 = v116 - v197;
      v154 = 2;
      v200 = v116 - v197;
LABEL_215:
      v204 = v154;
      if (0x7FFFFFFFFFFFFFFFLL / v205 < v154)
      {
        v154 = 0x7FFFFFFFFFFFFFFFLL / v205;
      }

      if (v154 != 1 && v153 != 1)
      {
        if (v153 > v154)
        {
          if (v154 * v197 < v116)
          {
            operator new();
          }

          operator new();
        }

        operator new();
      }

      v209[0] = &unk_284F40350;
      v209[1] = v203;
      v209[2] = v116;
      v210 = v209;
      *(a1 + 56) = *(a1 + 48);
      *&v214 = v116;
      v156 = unk_284F40380();
      v157 = v204;
      if (*(a1 + 80) != *(a1 + 72))
      {
        v158 = v156;
        v159 = 0;
        v160 = 0;
        v161 = 1;
        while (1)
        {
          *&v214 = *(*v206 + 8 * v159);
          if (!v210)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          v165 = (*(*v210 + 48))(v210, &v214);
          v163 = *v207;
          v166 = *&(*v207)[8 * v159] * v158;
          if (v165 * v117 < v166)
          {
            break;
          }

          if (v165 * v117 > v166)
          {
            ++v160;
          }

          v168 = *(a1 + 56);
          v167 = *(a1 + 64);
          if (v168 < v167)
          {
            *v168 = v165;
            v162 = v168 + 1;
          }

          else
          {
            v169 = *(a1 + 48);
            v170 = v168 - v169;
            v171 = (v168 - v169) >> 3;
            v172 = v171 + 1;
            if ((v171 + 1) >> 61)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v173 = v167 - v169;
            if (v173 >> 2 > v172)
            {
              v172 = v173 >> 2;
            }

            if (v173 >= 0x7FFFFFFFFFFFFFF8)
            {
              v174 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v174 = v172;
            }

            if (v174)
            {
              if (!(v174 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v175 = (v168 - v169) >> 3;
            v176 = (8 * v171);
            v177 = (8 * v171 - 8 * v175);
            *v176 = v165;
            v162 = v176 + 1;
            memcpy(v177, v169, v170);
            *(a1 + 48) = v177;
            *(a1 + 56) = v162;
            *(a1 + 64) = 0;
            if (v169)
            {
              operator delete(v169);
            }
          }

          *(a1 + 56) = v162;
          v159 = v161;
          v163 = *(a1 + 72);
          v164 = *(a1 + 80);
          ++v161;
          if (v159 >= (v164 - v163) >> 3)
          {
            goto LABEL_249;
          }
        }

        v164 = *(a1 + 80);
LABEL_249:
        v178 = *(a1 + 56) - *(a1 + 48) != v164 - v163 || v160 < 1;
        a2 = v199;
        v157 = v204;
        v116 = v205;
        if (!v178)
        {
          ++*(a1 + 328);
          v179 = v210;
          if (!v210)
          {
            goto LABEL_256;
          }

          if (v210 == v209)
          {
            *(&v215 + 1) = &v214;
            (*(*v210 + 24))();
          }

          else
          {
            v179 = (*(*v210 + 16))();
LABEL_256:
            *(&v215 + 1) = v179;
          }

          std::__function::__value_func<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::swap[abi:ne200100](&v214, v212);
          if (*(&v215 + 1) == &v214)
          {
            (*(**(&v215 + 1) + 32))(*(&v215 + 1));
          }

          else if (*(&v215 + 1))
          {
            (*(**(&v215 + 1) + 40))();
          }

          std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v207, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 3);
          v117 = v158;
          v202 = v203;
        }
      }

      if (v210 == v209)
      {
        (*(*v210 + 32))(v210);
        v153 = v200;
      }

      else
      {
        v153 = v200;
        if (v210)
        {
          (*(*v210 + 40))();
        }
      }

      v154 = v157 + 1;
      if (v154 > a2)
      {
        v152 = v195 + 1;
        if (v195 + 1 == v212)
        {
          goto LABEL_153;
        }

        continue;
      }

      goto LABEL_215;
    }
  }

LABEL_154:
  *(a1 + 96) = 0;
  if (v194)
  {
    v121 = operations_research::sat::ImpliedBoundsProcessor::PostprocessWithImpliedBound(v194, v212, v202, v105, a1 + 104);
    v122 = *(a1 + 344) + (v121 >> 32);
    *(a1 + 336) += v121;
    *(a1 + 344) = v122;
    *(a1 + 376) += *(a1 + 104);
    *(a1 + 96) = (0x100000001 * v121) >> 32;
  }

  v123 = 0;
  v208 = *(a1 + 392);
  do
  {
    v124 = *(a1 + 224);
    v125 = *(a1 + 232);
    if (v124 == v125)
    {
      break;
    }

    do
    {
      v126 = *(v124 + 8);
      if (v126 % v205 && *v124 > 0.01)
      {
        v127 = *(v124 + 16);
        if ((v127 * v126) >> 64 == (v127 * v126) >> 63)
        {
          v128 = v127 * v126;
        }

        else
        {
          v128 = ((v127 ^ v126) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        v129 = __modti3();
        v130 = ((v128 ^ v202) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        if ((v202 * v128) >> 64 == (v202 * v128) >> 63)
        {
          v130 = v202 * v128;
        }

        if ((v130 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
        {
          v131 = (v205 & (v129 >> 63)) + v129;
          v132 = (v131 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          v133 = __OFSUB__(v131, v128);
          v134 = v131 - v128;
          if (!v133)
          {
            v132 = v134;
          }

          if ((v202 * v132) >> 64 == (v202 * v132) >> 63)
          {
            v135 = v202 * v132;
          }

          else
          {
            v135 = ((v132 ^ v202) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          }

          if ((v135 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
          {
            *&v214 = (v205 & (v129 >> 63)) + v129;
            if (!v213)
            {
              goto LABEL_287;
            }

            v136 = (*(*v213 + 48))(v213, &v214);
            v137.n128_f64[0] = v136;
            if (v136 < 0x8000000000000003)
            {
              v137.n128_f64[0] = -INFINITY;
            }

            v138 = v136 <= 0x7FFFFFFFFFFFFFFDLL ? v137.n128_f64[0] : INFINITY;
            *&v214 = *(v124 + 8);
            if (!v213)
            {
LABEL_287:
              std::__throw_bad_function_call[abi:ne200100]();
            }

            v139 = (*(*v213 + 48))(v213, &v214, v137);
            v140 = *v124;
            v141.n128_f64[0] = -v139;
            if (v139 < 0x8000000000000003)
            {
              v141.n128_f64[0] = INFINITY;
            }

            if (v139 <= 0x7FFFFFFFFFFFFFFDLL)
            {
              v142 = v141.n128_f64[0];
            }

            else
            {
              v142 = -INFINITY;
            }

            *&v214 = v134;
            if (!v213)
            {
              goto LABEL_286;
            }

            v143 = (*(*v213 + 48))(v213, &v214, v141);
            v144.n128_f64[0] = v143;
            if (v143 < 0x8000000000000003)
            {
              v144.n128_f64[0] = -INFINITY;
            }

            v145 = v143 <= 0x7FFFFFFFFFFFFFFDLL ? v144.n128_f64[0] : INFINITY;
            *&v214 = -*(v124 + 8);
            if (!v213)
            {
LABEL_286:
              std::__throw_bad_function_call[abi:ne200100]();
            }

            v146 = (*(*v213 + 48))(v213, &v214, v144);
            v147 = *(v124 + 16);
            v148 = v147;
            if (v147 < 0x8000000000000003)
            {
              v148 = -INFINITY;
            }

            if (v147 > 0x7FFFFFFFFFFFFFFDLL)
            {
              v148 = INFINITY;
            }

            v149 = v148 - *v124;
            v150 = -v146;
            if (v146 < 0x8000000000000003)
            {
              v150 = INFINITY;
            }

            if (v146 > 0x7FFFFFFFFFFFFFFDLL)
            {
              v150 = -INFINITY;
            }

            if (v145 + v150 * v149 + 0.01 < v138 + v142 * v140)
            {
              v151 = *(v124 + 8);
              *(a1 + 208) -= v151 * v147;
              *(v124 + 40) = vnegq_s64(*(v124 + 40));
              *(v124 + 24) = v147 - *(v124 + 24);
              *v124 = v149;
              *(v124 + 8) = -v151;
              ++*(a1 + 392);
            }
          }
        }
      }

      v124 += 56;
    }

    while (v124 != v125);
    if (*(a1 + 392) == v208)
    {
      break;
    }

    ++v123;
    v208 = *(a1 + 392);
  }

  while (v123 != 3);
  if (v213 == v212)
  {
    (*(*v213 + 32))(v213);
  }

  else if (v213)
  {
    (*(*v213 + 40))();
  }

  return 1;
}